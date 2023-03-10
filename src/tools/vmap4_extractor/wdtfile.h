////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

#ifndef WDTFILE_H
#define WDTFILE_H

#include "mpqfile.h"
#include "wmo.h"
#include <string>
#include <vector>
#include <cstdlib>

class ADTFile;

class WDTFile
{
private:
    MPQFile WDT;
    std::string filename;
public:
    WDTFile(char* file_name, char* file_name1);
    ~WDTFile(void);
    bool init(char* map_id, unsigned int mapID);

    std::vector<std::string> gWmoInstansName;
    int gnWMO;

    ADTFile* GetMap(int x, int z);
};

#endif
