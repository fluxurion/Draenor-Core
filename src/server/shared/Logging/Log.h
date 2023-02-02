////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef TRINITYCORE_LOG_H
#define TRINITYCORE_LOG_H

#include "Common.h"
#include "Define.h"
#include "Appender.h"
#include "LogWorker.h"
#include "Logger.h"
#include "LogOperation.h"

// TODO: Replace all defines in core
#define LOG_FILTER_ACHIEVEMENTSYS "achievement"
#define LOG_FILTER_AUCTIONHOUSE   "auctionHouse"
#define LOG_FILTER_ARENAS         "bg.arena"
#define LOG_FILTER_BATTLEFIELD    "bg.battlefield"
#define LOG_FILTER_BATTLEGROUND   "bg.battleground"
#define LOG_FILTER_PLAYER_CHATLOG "chat.log"
#define LOG_FILTER_CALENDAR       "calendar"
#define LOG_FILTER_CHATSYS        "chat.system"
#define LOG_FILTER_CHEAT          "cheat"
#define LOG_FILTER_REMOTECOMMAND  "commands.ra"
#define LOG_FILTER_GMCOMMAND      "commands.gm"
#define LOG_FILTER_CONDITIONSYS   "condition"
#define LOG_FILTER_PETS           "entities.pet"
#define LOG_FILTER_CHARACTER      "entities.player.character"
#define LOG_FILTER_PLAYER_DUMP    "entities.player.dump"
#define LOG_FILTER_PLAYER         "entities.player"
#define LOG_FILTER_PLAYER_ITEMS   "entities.player.items"
#define LOG_FILTER_PLAYER_LOADING "entities.player.loading"
#define LOG_FILTER_PLAYER_SKILLS  "entities.player.skills"
#define LOG_FILTER_TRANSPORTS     "entities.transport"
#define LOG_FILTER_UNITS          "entities.unit"
#define LOG_FILTER_VEHICLES       "entities.vehicle"
#define LOG_FILTER_GAMEEVENTS     "gameevent"
#define LOG_FILTER_GUILD          "guild"
#define LOG_FILTER_LFG            "lfg"
#define LOG_FILTER_LOOT           "loot"
#define LOG_FILTER_MAPSCRIPTS     "maps.script"
#define LOG_FILTER_MAPS           "maps"
#define LOG_FILTER_GENERAL        "misc"
#define LOG_FILTER_NETWORKIO      "network"
#define LOG_FILTER_OPCODES        "network.opcode"
#define LOG_FILTER_SOAP           "network.soap"
#define LOG_FILTER_OUTDOORPVP     "outdoorpvp"
#define LOG_FILTER_POOLSYS        "pool"
#define LOG_FILTER_RBAC           "rbac"
#define LOG_FILTER_TSCR           "scripts"
#define LOG_FILTER_DATABASE_AI    "scripts.ai"
#define LOG_FILTER_SERVER_LOADING "server.loading"
#define LOG_FILTER_AUTHSERVER     "server.authserver"
#define LOG_FILTER_WORLDSERVER    "server.worldserver"
#define LOG_FILTER_SPELLS_AURAS   "spells"
#define LOG_FILTER_SQL_DEV        "sql.dev"
#define LOG_FILTER_SQL_DRIVER     "sql.driver"
#define LOG_FILTER_SQL            "sql.sql"
#define LOG_FILTER_WARDEN         "warden"
#define LOG_FILTER_INTERREALM     "interrealm"
#define LOG_FILTER_PROFILING      "entities.profiling"

#define LOGGER_ROOT "root"

#include <cstdarg>
#include <cstdio>

class Log
{
    friend class ACE_Singleton<Log, ACE_Thread_Mutex>;

    typedef UNORDERED_MAP<std::string, Logger> LoggerMap;

    private:
        Log();
        ~Log();

    public:
        void LoadFromConfig();
        void Close();
        bool ShouldLog(std::string const& type, LogLevel level) const;
        bool SetLogLevel(std::string const& name, char const* level, bool isLogger = true);

        void outTrace(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outDebug(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outInfo(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outWarn(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outError(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outFatal(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outCharDump(char const* str, uint32 account_id, uint32 guid, char const* name);

        /// No filters
        void outArena(const char * str, ...) ATTR_PRINTF(2, 3);
        void outCommand(uint32 gm_account_id, std::string gm_account_name,
            uint32 gm_character_id, std::string gm_character_name,
            uint32 sc_account_id, std::string sc_account_name,
            uint32 sc_character_id, std::string sc_character_name,
            const char* str, ...) ATTR_PRINTF(10, 11);
        void outGmChat(uint32 message_type,
                       uint32 from_account_id, std::string from_account_name,
                       uint32 from_character_id, std::string from_character_name,
                       uint32 to_account_id, std::string to_account_name,
                       uint32 to_character_id, std::string to_character_name,
                       const char * str);
        void outAshran(const char* str, ...) ATTR_PRINTF(2, 3);
        
        void EnableDBAppenders();
        static std::string GetTimestampStr();
        
        void SetRealmID(uint32 id);
        uint32 GetRealmID() const { return realm; }

    private:
        void vlog(std::string const& f, LogLevel level, char const* str, va_list argptr);
        void write(LogMessage* msg) const;

        Logger const* GetLoggerByType(std::string const& type) const;
        Appender* GetAppenderByName(std::string const& name);
        uint8 NextAppenderId();
        void CreateAppenderFromConfig(std::string const& name);
        void CreateLoggerFromConfig(std::string const& name);
        void ReadAppendersFromConfig();
        void ReadLoggersFromConfig();

        AppenderMap appenders;
        LoggerMap loggers;
        uint8 AppenderId;
        LogLevel lowestLogLevel;

        std::string m_logsDir;
        std::string m_logsTimestamp;

        uint32 realm;
        LogWorker* worker;

        FILE* ashranLog;

        /// Slack
        bool        m_SlackEnable;
        std::string m_SlackApiUrl;
        std::string m_SlackAppName;

        //uint8 m_LogLevelTypeByFilterCache[MAX_LOG_FILTER];
        //uint8 m_LogTypePresentCache[MAX_LOG_FILTER];
};

inline Logger const* Log::GetLoggerByType(std::string const& type) const
{
    LoggerMap::const_iterator it = loggers.find(type);
    if (it != loggers.end())
        return &(it->second);

    if (type == LOGGER_ROOT)
        return NULL;

    std::string parentLogger = LOGGER_ROOT;
    size_t found = type.find_last_of(".");
    if (found != std::string::npos)
        parentLogger = type.substr(0, found);

    return GetLoggerByType(parentLogger);
}

inline bool Log::ShouldLog(std::string const& type, LogLevel level) const
{
    // TODO: Use cache to store "Type.sub1.sub2": "Type" equivalence, should
    // Speed up in cases where requesting "Type.sub1.sub2" but only configured
    // Logger "Type"

    Logger const* logger = GetLoggerByType(type);
    if (!logger)
        return false;

    LogLevel logLevel = logger->getLogLevel();
    return logLevel != LOG_LEVEL_DISABLED && logLevel <= level;
}

>>>>>>> f162376353 (logging system  evolotion)
#define sLog ACE_Singleton<Log, ACE_Thread_Mutex>::instance()

// Returns default logger if the requested logger is not found
inline Logger* Log::GetLoggerByType(std::string const& filter)
{
    return m_LogTypePresentCache[filter] ? &loggers[filter] : &(loggers[0]);
}

inline bool Log::ShouldLog(std::string const& type, LogLevel level)
{
    // Don't even look for a logger if the LogLevel is lower than lowest log levels across all loggers
    if (level < lowestLogLevel)
        return false;

    if (m_LogTypePresentCache[type])
    {
        LogLevel loggerLevel = (LogLevel)m_LogLevelTypeByFilterCache[type];
        return  loggerLevel != LOG_LEVEL_DISABLED && loggerLevel <= level;
    }

    if (type != LOG_FILTER_GENERAL)
        return ShouldLog(LOG_FILTER_GENERAL, level);

    return false;
}

#endif
