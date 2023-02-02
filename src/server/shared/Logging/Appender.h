////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef APPENDER_H
#define APPENDER_H

#include "Define.h"

//#include "Common.h"

//const uint8 MaxLogFilter = uint8(LOG_FILTER_OPCODES) + 1;
//#define MAX_LOG_FILTER (LOG_FILTER_OPCODES + 1)

// Values assigned have their equivalent in enum ACE_Log_Priority
enum LogLevel
{
    LOG_LEVEL_DISABLED                           = 0,
    LOG_LEVEL_TRACE                              = 1,
    LOG_LEVEL_DEBUG                              = 2,
    LOG_LEVEL_INFO                               = 3,
    LOG_LEVEL_WARN                               = 4,
    LOG_LEVEL_ERROR                              = 5,
    LOG_LEVEL_FATAL                              = 6,
};

const uint8 MaxLogLevels = 6;

enum AppenderType
{
    APPENDER_NONE,
    APPENDER_CONSOLE,
    APPENDER_FILE,
    APPENDER_DB,
};

enum AppenderFlags
{
    APPENDER_FLAGS_NONE                 = 0x00,
    APPENDER_FLAGS_PREFIX_TIMESTAMP     = 0x01,
    APPENDER_FLAGS_PREFIX_LOGLEVEL      = 0x02,
    APPENDER_FLAGS_PREFIX_LOGFILTERTYPE = 0x04,
    APPENDER_FLAGS_USE_TIMESTAMP        = 0x08, // only used by FileAppender
    APPENDER_FLAGS_MAKE_FILE_BACKUP     = 0x10  // only used by FileAppender
};

struct LogMessage
{
    LogMessage(LogLevel _level, std::string const& _type, std::string const& _text)
        : level(_level), type(_type), text(_text), mtime(time(NULL))
    { }

    //LogMessage(LogMessage const& /*other*/) = delete;
    //LogMessage& operator=(LogMessage const& /*other*/) = delete;

    static std::string getTimeStr(time_t time);
    std::string getTimeStr();

    LogLevel level;
    std::string  type;
    std::string text;
    std::string prefix;
    std::string param1;
    time_t mtime;

    ///@ Returns size of the log message content in bytes
    uint32 Size() const
    {
        return prefix.size() + text.size();
    }
};

class Appender
{
    public:
        Appender(uint8 _id, std::string const& name, AppenderType type = APPENDER_NONE, LogLevel level = LOG_LEVEL_DISABLED, AppenderFlags flags = APPENDER_FLAGS_NONE);
        virtual ~Appender();

        uint8 getId() const;
        std::string const& getName() const;
        AppenderType getType() const;
        LogLevel getLogLevel() const;
        AppenderFlags getFlags() const;

        void setLogLevel(LogLevel);
        void write(LogMessage& message);
        static const char* getLogLevelString(LogLevel level);

    private:
        virtual void _write(LogMessage& /*message*/) = 0;

        uint8 id;
        std::string name;
        AppenderType type;
        LogLevel level;
        AppenderFlags flags;
};

typedef std::map<uint8, Appender*> AppenderMap;

#endif
