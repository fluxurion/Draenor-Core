/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/**
* @file main.cpp
* @brief Authentication Server main program
*
* This file contains the main program for the
* authentication server
*/

#include <openssl/opensslv.h>
#include <openssl/crypto.h>
#include <thread>
#include <iostream>
#include <cstdlib>
#include <boost/bind.hpp>
#include <boost/asio.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

//#include <Reporting/Reporter.hpp>

#include "Common.h"
#include "GitRevision.h"
#include "Database/DatabaseEnv.h"
#include "Configuration/Config.h"
#include "Log.h"
#include "Util.h"
#include "RealmList.h"
#include "Bnet2/WoWModules/PasswordAuth.hpp"
#include "Bnet2/WoWModules/RiskFingerprintAuth.hpp"
#include "Bnet2/WoWModules/ThumbprintAuth.hpp"
#include "Bnet2/WoWModules/SelectGameAccountAuth.hpp"
#include "Bnet2/Session.hpp"
#include "AuthServer.h"

#ifndef _TRINITY_REALM_CONFIG
# define _TRINITY_REALM_CONFIG  "authserver.conf"
#endif

bool StartDB();
void StopDB();
void SetProcessPriority();

boost::asio::io_service _ioService;
boost::asio::deadline_timer _dbPingTimer(_ioService);
uint32 _dbPingInterval;

LoginDatabaseWorkerPool LoginDatabase;                      // Accessor to the auth server database

using boost::asio::ip::tcp;

void SignalHandler(const boost::system::error_code& error, int signalNumber)
{
	//TC_LOG_ERROR("server.authserver", "SIGNAL HANDLER WORKING");
	if (!error)
	{
		switch (signalNumber)
		{
		case SIGINT:
		case SIGTERM:
			_ioService.stop();
			break;
		}
	}
}

void KeepDatabaseAliveHandler(const boost::system::error_code& error)
{
	if (!error)
	{
		TC_LOG_INFO("server.authserver", "Ping MySQL to keep connection alive");
		LoginDatabase.KeepAlive();

		_dbPingTimer.expires_from_now(boost::posix_time::minutes(_dbPingInterval));
	}
}

/// Print out the usage string for this program on the console.
void usage(const char *prog)
{
    sLog->outInfo(LOG_FILTER_AUTHSERVER, "Usage: \n %s [<options>]\n"
        "    -c config_file           use config_file as configuration file\n\r",
        prog);
}

void RegisterBNet2Components()
{
    BNet2::AuthComponentManager::GetSingleton()->Allow(37165, BNet2::BATTLENET2_PROGRAM_BNET, BNet2::BATTLENET2_PROGRAM_ALL, BNet2::BATTLENET2_LOCALE_NONE);

    QueryResult l_Result = LoginDatabase.PQuery("SELECT build, version FROM bnet_allowed_build");
    if (l_Result)
    {
        do
        {
            Field* l_Fields = l_Result->Fetch();
            uint32 l_AllowedBuild = l_Fields[0].GetUInt32();

            BNet2::g_VersionStrByBuild[l_AllowedBuild] = l_Fields[1].GetString();

            BNet2::AuthComponentManager::GetSingleton()->Allow(l_AllowedBuild, BNet2::BATTLENET2_PROGRAM_ALL_CLIENTS, BNet2::BATTLENET2_PLATFORM_ALL, BNet2::BATTLENET2_LOCALE_ALL);
        }
        while (l_Result->NextRow());
    }
}

void RegisterBNet2WoWModules()
{
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::PasswordAuthWin32));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::PasswordAuthWin64));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::PasswordAuthMac64));

    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::RiskFingerprintAuthWin32));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::RiskFingerprintAuthWin64));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::RiskFingerprintAuthMac64));

    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::ThumbprintAuthWin32));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::ThumbprintAuthWin64));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::ThumbprintAuthMac64));

    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::SelectGameAccountAuthWin32));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::SelectGameAccountAuthWin64));
    BNet2::ModuleManager::GetSingleton()->RegisterModule(BNet2::Module::Ptr(new BNet2::WoWModules::SelectGameAccountAuthMac64));
}

/// Launch the auth server
int main(int argc, char** argv)
{
    ACE_Based::Thread::current()->setName("MainThread");

    // Command line parsing to get the configuration file name
    char const* cfg_file = _TRINITY_REALM_CONFIG;
    int c = 1;
    while (c < argc)
    {
        if (strcmp(argv[c], "-c") == 0)
        {
            if (++c >= argc)
            {
                printf("Runtime-Error: -c option requires an input argument");
                usage(argv[0]);
                return 1;
            }
            else
                cfg_file = argv[c];
        }
        ++c;
    }

    if (!ConfigMgr::Load(cfg_file))
    {
        printf("Invalid or missing configuration file : %s", cfg_file);
        printf("Verify that the file exists and has \'[authserver]\' written in the top of the file!");
        return 1;
    }

    sLog->outInfo(LOG_FILTER_AUTHSERVER, "%s (authserver)", GitRevision::GetFullVersion());
    sLog->outInfo(LOG_FILTER_AUTHSERVER, "<Ctrl-C> to stop.\n");
    sLog->outInfo(LOG_FILTER_AUTHSERVER, "Using configuration file %s.", cfg_file);

    sLog->outWarn(LOG_FILTER_AUTHSERVER, "%s (Library: %s)", OPENSSL_VERSION_TEXT, SSLeay_version(SSLEAY_VERSION));

    // authserver PID file creation
    std::string pidfile = ConfigMgr::GetStringDefault("PidFile", "");
    if (!pidfile.empty())
    {
        uint32 pid = CreatePIDFile(pidfile);
        if (!pid)
        {
            sLog->outError(LOG_FILTER_AUTHSERVER, "Cannot create PID file %s.\n", pidfile.c_str());
            return 1;
        }
        sLog->outInfo(LOG_FILTER_AUTHSERVER, "Daemon PID: %u\n", pid);
    }

    // Initialize the database connection
    if (!StartDB())
        return 1;

    RegisterBNet2Components();
    RegisterBNet2WoWModules();
	
    sLog->SetRealmID(0);                                               // ensure we've set realm to 0 (authserver realmid)

    // Get the list of realms for the server
    sRealmList->Initialize(ConfigMgr::GetIntDefault("RealmsStateUpdateDelay", 20));
    if (sRealmList->size() == 0)
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "No valid realms specified.");
        return 1;
    }

    // Launch the listening network socket

    int32 rmport = sConfigMgr->GetIntDefault("RealmServerPort", 3724);
    if (rmport < 0 || port > 0xFFFF)
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "Specified port out of allowed range (1-65535)");
        return 1;
    }

    std::string bindIp = sConfigMgr->GetStringDefault("BindIP", "0.0.0.0");

    ACE_INET_Addr bind_addr(uint16(rmport), bind_ip.c_str());

    if (acceptor.open(bind_addr, ACE_Reactor::instance(), ACE_NONBLOCK) == -1)
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "Auth server can not bind to %s:%d", bind_ip.c_str(), rmport);
        return 1;
    }

    ///- Initializing the Reporter.
    //sLog->outInfo(LOG_FILTER_WORLDSERVER, "REPORTER: Creating instance.");
    //sReporter->SetAddresses({ ConfigMgr::GetStringDefault("ReporterAddress", "localhost:3000") });

    std::string bindIp = sConfigMgr->GetStringDefault("BindIP", "0.0.0.0");

	AuthServer authServer(_ioService, bindIp, port);

	// Set signal handlers
	boost::asio::signal_set signals(_ioService, SIGINT, SIGTERM);
	signals.async_wait(SignalHandler);

	SetProcessPriority();


	_dbPingInterval = sConfigMgr->GetIntDefault("MaxPingTime", 30);

	_dbPingTimer.expires_from_now(boost::posix_time::seconds(_dbPingInterval));
	_dbPingTimer.async_wait(KeepDatabaseAliveHandler);

	// Start the io service
	_ioService.run();

    // Close the Database Pool and library
    StopDB();

    sLog->outInfo(LOG_FILTER_AUTHSERVER, "Halting process...");
    return 0;
}

/// Initialize connection to the database
bool StartDB()
{
    MySQL::Library_Init();

    std::string dbstring = ConfigMgr::GetStringDefault("LoginDatabaseInfo", "");
    if (dbstring.empty())
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "Database not specified");
        return false;
    }

    int32 worker_threads = ConfigMgr::GetIntDefault("LoginDatabase.WorkerThreads", 1);
    if (worker_threads < 1 || worker_threads > 32)
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "Improper value specified for LoginDatabase.WorkerThreads, defaulting to 1.");
        worker_threads = 1;
    }

    int32 synch_threads = ConfigMgr::GetIntDefault("LoginDatabase.SynchThreads", 1);
    if (synch_threads < 1 || synch_threads > 32)
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "Improper value specified for LoginDatabase.SynchThreads, defaulting to 1.");
        synch_threads = 1;
    }

    // NOTE: While authserver is singlethreaded you should keep synch_threads == 1. Increasing it is just silly since only 1 will be used ever.
    if (!LoginDatabase.Open(dbstring.c_str(), uint8(worker_threads), uint8(synch_threads)))
    {
        sLog->outError(LOG_FILTER_AUTHSERVER, "Cannot connect to database");
        return false;
    }

    sLog->outInfo(LOG_FILTER_AUTHSERVER, "Started auth database connection pool.");
    sLog->EnableDBAppenders();
    return true;
}

void StopDB()
{
    LoginDatabase.Close();
    MySQL::Library_End();
}

void SetProcessPriority()
{
#if defined(_WIN32) || defined(__linux__)

	///- Handle affinity for multiple processors and process priority
	uint32 affinity = sConfigMgr->GetIntDefault("UseProcessors", 0);
	bool highPriority = sConfigMgr->GetBoolDefault("ProcessPriority", false);

#ifdef _WIN32 // Windows

	HANDLE hProcess = GetCurrentProcess();
	if (affinity > 0)
	{
		ULONG_PTR appAff;
		ULONG_PTR sysAff;

		if (GetProcessAffinityMask(hProcess, &appAff, &sysAff))
		{
			// remove non accessible processors
			ULONG_PTR currentAffinity = affinity & appAff;

			if (!currentAffinity)
				TC_LOG_ERROR("server.authserver", "Processors marked in UseProcessors bitmask (hex) %x are not accessible for the authserver. Accessible processors bitmask (hex): %x", affinity, appAff);
			else if (SetProcessAffinityMask(hProcess, currentAffinity))
				TC_LOG_INFO("server.authserver", "Using processors (bitmask, hex): %x", currentAffinity);
			else
				TC_LOG_ERROR("server.authserver", "Can't set used processors (hex): %x", currentAffinity);
		}
	}

	if (highPriority)
	{
		if (SetPriorityClass(hProcess, HIGH_PRIORITY_CLASS))
			TC_LOG_INFO("server.authserver", "authserver process priority class set to HIGH");
		else
			TC_LOG_ERROR("server.authserver", "Can't set authserver process priority class.");
	}

#else // Linux

	if (affinity > 0)
	{
		cpu_set_t mask;
		CPU_ZERO(&mask);

		for (unsigned int i = 0; i < sizeof(affinity) * 8; ++i)
			if (affinity & (1 << i))
				CPU_SET(i, &mask);

		if (sched_setaffinity(0, sizeof(mask), &mask))
			TC_LOG_ERROR("server.authserver", "Can't set used processors (hex): %x, error: %s", affinity, strerror(errno));
		else
		{
			CPU_ZERO(&mask);
			sched_getaffinity(0, sizeof(mask), &mask);
			TC_LOG_INFO("server.authserver", "Using processors (bitmask, hex): %lx", *(__cpu_mask*)(&mask));
		}
	}

	if (highPriority)
	{
		if (setpriority(PRIO_PROCESS, 0, PROCESS_HIGH_PRIORITY))
			TC_LOG_ERROR("server.authserver", "Can't set authserver process priority class, error: %s", strerror(errno));
		else
			TC_LOG_INFO("server.authserver", "authserver process priority class set to %i", getpriority(PRIO_PROCESS, 0));
	}

#endif
#endif
}
