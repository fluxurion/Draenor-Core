////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef LOGGER_H
#define LOGGER_H

#include "Appender.h"

class Logger
{
public:
    Logger();

    void Create(std::string const& name, LogLevel level);
    void addAppender(uint8 type, Appender*);
    void delAppender(uint8 type);

    std::string const& getName() const;
    LogLevel getLogLevel() const;
    void setLogLevel(LogLevel level);
    void write(LogMessage& message) const;

private:
    std::string name;
    LogLevel level;
    AppenderMap appenders;
};

#endif
