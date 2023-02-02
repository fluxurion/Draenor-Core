////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#include "Logger.h"

Logger::Logger(): name(""), level(LOG_LEVEL_DISABLED)
{
}

void Logger::Create(std::string const& _name, LogLevel _level)
{
    name = _name;
    level = _level;
}

Logger::~Logger()
{
    for (AppenderMap::iterator it = appenders.begin(); it != appenders.end(); ++it)
        it->second = NULL;
    appenders.clear();
}

std::string const& Logger::getName() const
{
    return name;
}

LogLevel Logger::getLogLevel() const
{
    return level;
}

void Logger::addAppender(uint8 id, Appender* appender)
{
    appenders[id] = appender;
}

void Logger::delAppender(uint8 id)
{
    AppenderMap::iterator it = appenders.find(id);
    if (it != appenders.end())
    {
        it->second = NULL;
        appenders.erase(it);
    }
}

void Logger::setLogLevel(LogLevel _level)
{
    level = _level;
}

void Logger::write(LogMessage& message) const
{
    if (!level || level > message.level || message.text.empty())
    {
        //fprintf(stderr, "Logger::write: Logger %s, Level %u. Msg %s Level %u WRONG LEVEL MASK OR EMPTY MSG\n", getName().c_str(), messge.level, message.text.c_str(), .message.level); // DEBUG - RemoveMe
        return;
    }

    for (AppenderMap::const_iterator it = appenders.begin(); it != appenders.end(); ++it)
        if (it->second)
            it->second->write(message);
}
