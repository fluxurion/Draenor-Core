////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#include "AppenderDB.h"
#include "Database/DatabaseEnv.h"

AppenderDB::AppenderDB(uint8 id, std::string const& name, LogLevel level, uint32 realmId)
    : Appender(id, name, APPENDER_DB, level), realm(realmId), enable(false)
{
}

AppenderDB::~AppenderDB()
{
}

void AppenderDB::_write(LogMessage& message)
{
    // Avoid infinite loop, PExecute triggers Logging with LOG_FILTER_SQL type
    if (!enabled || !message.type.find("sql"))
        return;
    PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_INS_LOG);
    stmt->setUInt64(0, message.mtime);
    stmt->setUInt32(1, realmId);
    stmt->setString(2, message.type);
    stmt->setUInt8(3, uint8(message.level));
    stmt->setString(4, message.text);
    LoginDatabase.Execute(stmt);
}

void AppenderDB::setEnable(bool _enable)
{
    enable = _enable;
}
