////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef APPENDERFILE_H
#define APPENDERFILE_H

#include "Appender.h"
#include <atomic>

class AppenderFile : public Appender
{
public:
    AppenderFile(uint8 _id, std::string const& _name, LogLevel level, const char* filename, const char* logDir, const char* mode, AppenderFlags flags, uint64 maxSize);
    ~AppenderFile();
    FILE* OpenFile(std::string const& _name, std::string const& _mode, bool _backup);

private:
    void CloseFile();
    void _write(LogMessage const& message);
    FILE* logfile;
    std::string filename;
    std::string logDir;
    std::string mode;
    bool dynamicName;
    bool backup;
    uint64 maxFileSize;
    std::atomic<uint64> fileSize;
};

#endif
