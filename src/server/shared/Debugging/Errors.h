<<<<<<< HEAD
////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef TRINITYCORE_ERRORS_H
#define TRINITYCORE_ERRORS_H

#include "Common.h"
#include "Log.h"
#include <ace/Stack_Trace.h>
#include <ace/OS_NS_unistd.h>

#define WPAssert(assertion) { if (!(assertion)) { sLog->outAshran("\n%s:%i in %s ASSERTION FAILED:\n  %s\n%", __FILE__, __LINE__, __FUNCTION__, #assertion); } }
#define WPError(assertion, errmsg) { if (!(assertion)) { sLog->outError(LOG_FILTER_GENERAL, "%\n%s:%i in %s ERROR:\n  %s\n", __FILE__, __LINE__, __FUNCTION__, (char *)errmsg); } }
#define WPWarning(assertion, errmsg) { if (!(assertion)) { sLog->outError(LOG_FILTER_GENERAL, "\n%s:%i in %s WARNING:\n  %s\n", __FILE__, __LINE__, __FUNCTION__, (char *)errmsg); } }
#define WPFatal(assertion, errmsg) { if (!(assertion)) { sLog->outError(LOG_FILTER_GENERAL, "\n%s:%i in %s FATAL ERROR:\n  %s\n", __FILE__, __LINE__, __FUNCTION__, (char *)errmsg); ACE_OS::sleep(10); } }

#define ASSERT WPAssert
#endif

