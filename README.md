Warlords of Draenor 6.2.3 is a core project based off TrinityCore 6.04TDB/6.2 (Firestorm Leak); a MMORPG Framework based mostly in C++.
For those scarce few interested in the continuation of WoD emulation development: feel free to cherrypick the commits. This core was sold for a high sum and the buyer was no longer interested in the project. A list of immediate things to fix in this core:
* Pathfinding and movement generators - must be updated to support smooth pathing.
* Areatrigger - outdated, should be updated to the system used in Legion cores.
* Scene system - partially missing. I'd rework it.
* Pet Battles - not working at all, luckily, it can easily be cherry picked from Trinitycore's commit history and so on...
* Phasing - phasing has yet to be reworked and updated, the old standard phasemask system is the one used in this core (Most current system is PhaseID and PhaseGroup).
* Low level content - in a sufficient state but the 'unpopular' zones are not blizzlike. I have fixed a lot of the low level zones up to a very close blizzlike standard.
* Database NPCs and duplicates. - Some NPCs have an incorrect blizzlike coordinates and/or duplicates. To the best of my knowledge, at least 95% of the NPCs in the database are blizzlike as per the sniffs that were used back from 6.1-6.2.3. The only missing NPCs are ought to be the Tanaan Jungle and HellFire Citadel ones.
* Draenor content - the draenor content is nowhere near blizzlike. My co-developers have developed some of the Shadowmoon Valley landing events leading up to the Garrison and before I had joined the project, they reworked introduction to Draenor questline entirely. Almost the entirety of the legendary questline was reworked and as it a blizzlike state. Some dungeons need optimizations and Hellfire Citadel has yet to be implemented.

Platform: Linux, Windows or Mac
Git ≥ 1.7+
ACE ≥ 7.0.0
MySQL ≥ 5.5.0+ (users of MySQL 5.7 and higher need to remove NO_ZERO_DATE, NO_ZERO_IN_DATE and ONLY_FULL_GROUP_BY from the global sql_mode)
CMake ≥ 3.2+
OpenSSL ≥ 1.1.1g
GCC ≥ 4.7.2 (Linux only)
MS Visual Studio ≥ 12 (2013) (Windows only, build with VS 2019 successfully)
Xcode 7 (Mac only)
