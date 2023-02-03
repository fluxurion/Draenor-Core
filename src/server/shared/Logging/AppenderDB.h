////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef APPENDERDB_H
#define APPENDERDB_H

#include "Appender.h"

class AppenderDB : public Appender
{
public:
    AppenderDB(uint8 _id, std::string const& _name, LogLevel level);
    ~AppenderDB();

    void setRealmId(uint32 realmId);

private:
    uint32 realmId;
    bool enabled;
    void _write(LogMessage const& message);
};

#endif
