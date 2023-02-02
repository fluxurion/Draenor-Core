////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

/* ScriptData
SDName: Boss_Ossirian
SD%Complete: 0
SDComment: Place holder
SDCategory: Ruins of Ahn'Qiraj
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ruins_of_ahnqiraj.h"
#include "Player.h"
#include "SpellInfo.h"
#include "WorldPacket.h"
#include "Opcodes.h"

enum Yells
{
    SAY_SURPREME1               =    -1509018,
    SAY_SURPREME2               =    -1509019,
    SAY_SURPREME3               =    -1509020,
    SAY_RAND_INTRO1 = -1509021,
    SAY_RAND_INTRO2 = -1509022,
    SAY_RAND_INTRO3 = -1509023,
    SAY_RAND_INTRO4 = -1509024,                            //possibly old?
    SAY_AGGRO                   =    -1509025,
    SAY_SLAY                    =    -1509026,
    SAY_DEATH                   =    -1509027,
};

enum Texts //TC
{
    SAY_SUPREME = 0,
    SAY_INTRO = 1,
    //SAY_AGGRO = 2,
    //SAY_SLAY = 3,
    //SAY_DEATH = 4,
};

enum Spells
{
    SPELL_SILENCE = 25195,
    SPELL_CYCLONE = 25189,
    SPELL_STOMP = 25188,
    SPELL_SUPREME = 25176,
    SPELL_SUMMON = 20477,
    SPELL_SAND_STORM = 25160,
    SPELL_SUMMON_CRYSTAL = 25192,
};

enum Actions
{
    ACTION_TRIGGER_WEAKNESS = 1,
};

enum Events
{
    EVENT_SILENCE = 1,
    EVENT_CYCLONE = 2,
    EVENT_STOMP = 3
};

uint8 const NUM_CRYSTALS = 9;

// You spin me right round, baby
// right round like a record, baby
// right round round round
Position CrystalCoordinates[NUM_CRYSTALS] =
{
    { -9394.230469f, 1951.808594f, 85.97733f, 0.0f },
    { -9357.931641f, 1930.596802f, 85.556198f, 0.0f },
    { -9383.113281f, 2011.042725f, 85.556389f, 0.0f },
    { -9243.36f, 1979.04f, 85.556f, 0.0f },
    { -9281.68f, 1886.66f, 85.5558f, 0.0f },
    { -9241.8f, 1806.39f, 85.5557f, 0.0f },
    { -9366.78f, 1781.76f, 85.5561f, 0.0f },
    { -9430.37f, 1786.86f, 85.557f, 0.0f },
    { -9406.73f, 1863.13f, 85.5558f, 0.0f }
};

float RoomRadius = 165.0f;
uint8 const NUM_TORNADOS = 5; // TODO: This number is completly random!
uint8 const NUM_WEAKNESS = 5;
uint32 const SpellWeakness[NUM_WEAKNESS] = { 25177, 25178, 25180, 25181, 25183 };
Position const RoomCenter = { -9343.041992f, 1923.278198f, 85.555984f, 0.0 };

class boss_ossirian : public CreatureScript
{
public:
    boss_ossirian() : CreatureScript("boss_ossirian") { }

    struct boss_ossirianAI : public BossAI
    {
        boss_ossirianAI(Creature* creature) : BossAI(creature, BOSS_OSSIRIAN)
        {
            SaidIntro = false;
            Reset();
        }

        uint64 TriggerGUID;
        uint64 CrystalGUID;
        uint8 CrystalIterator;
        bool SaidIntro;

        void Reset()
        {
            _Reset();
            CrystalIterator = 0;
            TriggerGUID = 0;
            CrystalGUID = 0;
        }

        void SpellHit(Unit* caster, SpellInfo const* spell)
        {
            for (uint8 i = 0; i < NUM_WEAKNESS; ++i)
            {
                if (spell->Id == SpellWeakness[i])
                {
                    me->RemoveAurasDueToSpell(SPELL_SUPREME);
                    ((TempSummon*)caster)->UnSummon();
                    SpawnNextCrystal();
                }
            }
        }

        void DoAction(const int32 action)
        {
            if (action == ACTION_TRIGGER_WEAKNESS)
            {
                if (Creature* Trigger = me->GetMap()->GetCreature(TriggerGUID))
                {
                    if (!Trigger->HasUnitState(UNIT_STATE_CASTING))
                        Trigger->CastSpell(Trigger, SpellWeakness[urand(0, 4)], false);
                }
            }
        }

        void EnterCombat(Unit* /*who*/)
        {
            _EnterCombat();
            events.Reset();
            events.ScheduleEvent(EVENT_SILENCE, 30000);
            events.ScheduleEvent(EVENT_CYCLONE, 20000);
            events.ScheduleEvent(EVENT_STOMP, 30000);

            DoCast(me, SPELL_SUPREME);
            Talk(SAY_AGGRO);

            if (instance)
            {
                Map* map = me->GetMap();
                if (!map->IsDungeon())
                    return;

                WorldPacket data(SMSG_WEATHER, (4 + 4 + 4));
                data << uint32(WEATHER_STATE_HEAVY_SANDSTORM) << float(1) << uint8(0);
                map->SendToPlayers(&data);

                for (uint8 i = 0; i < NUM_TORNADOS; ++i)
                {
                    Position Point;
                    me->GetRandomPoint(RoomCenter, RoomRadius, Point);
                    if (Creature* Tornado = me->GetMap()->SummonCreature(NPC_SAND_VORTEX, Point))
                        Tornado->CastSpell(Tornado, SPELL_SAND_STORM, true);
                }

                SpawnNextCrystal();
            }
        }

        void KilledUnit(Unit* /*victim*/)
        {
            Talk(SAY_SLAY);
        }

        void EnterEvadeMode()
        {
            Cleanup();
            summons.DespawnAll();
            ScriptedAI::EnterEvadeMode();
        }

        void JustDied(Unit* /*killer*/)
        {
            Cleanup();
            _JustDied();
        }

        void Cleanup()
        {
            if (GameObject* Crystal = me->GetMap()->GetGameObject(CrystalGUID))
                Crystal->Use(me);
        }

        void SpawnNextCrystal()
        {
            if (CrystalIterator == NUM_CRYSTALS)
                CrystalIterator = 0;

            if (Creature* Trigger = me->GetMap()->SummonCreature(NPC_OSSIRIAN_TRIGGER, CrystalCoordinates[CrystalIterator]))
            {
                TriggerGUID = Trigger->GetGUID();
                if (GameObject* Crystal = Trigger->SummonGameObject(GO_OSSIRIAN_CRYSTAL,
                    CrystalCoordinates[CrystalIterator].GetPositionX(),
                    CrystalCoordinates[CrystalIterator].GetPositionY(),
                    CrystalCoordinates[CrystalIterator].GetPositionZ(),
                    0, 0, 0, 0, 0, uint32(-1)))
                {
                    CrystalGUID = Crystal->GetGUID();
                    ++CrystalIterator;
                }
            }
        }

        void MoveInLineOfSight(Unit* /*who*/)
        {
            if (!SaidIntro)
            {
                Talk(SAY_INTRO);
                SaidIntro = true;
            }
        }

        void UpdateAI(uint32 const diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            // No kiting!
            if (me->GetDistance(me->getVictim()) > 60.00f && me->GetDistance(me->getVictim()) < 120.00f)
                DoCast(me->getVictim(), SPELL_SUMMON);

            bool ApplySupreme = true;

            if (me->HasAura(SPELL_SUPREME))
                ApplySupreme = false;
            else
            {
                for (uint8 i = 0; i < NUM_WEAKNESS; ++i)
                {
                    if (me->HasAura(SpellWeakness[i]))
                    {
                        ApplySupreme = false;
                        break;
                    }
                }
            }

            if (ApplySupreme)
            {
                DoCast(me, SPELL_SUPREME);
                Talk(SAY_SUPREME);
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SILENCE:
                    DoCast(me, SPELL_SILENCE);
                    events.ScheduleEvent(EVENT_SILENCE, urand(20000, 30000));
                    break;
                case EVENT_CYCLONE:
                    DoCast(me->getVictim(), SPELL_CYCLONE);
                    events.ScheduleEvent(EVENT_CYCLONE, 20000);
                    break;
                case EVENT_STOMP:
                    DoCast(me, SPELL_STOMP);
                    events.ScheduleEvent(EVENT_STOMP, 30000);
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_ossirianAI(creature);
    }
};

class go_ossirian_crystal : public GameObjectScript
{
public:
    go_ossirian_crystal() : GameObjectScript("go_ossirian_crystal") { }

    bool OnGossipHello(Player* player, GameObject* /*go*/)
    {
        InstanceScript* Instance = player->GetInstanceScript();
        if (!Instance)
            return false;

        Creature* Ossirian = player->FindNearestCreature(NPC_OSSIRIAN, 30.0f);
        if (!Ossirian || Instance->GetBossState(BOSS_OSSIRIAN) != IN_PROGRESS)
            return false;

        Ossirian->AI()->DoAction(ACTION_TRIGGER_WEAKNESS);
        return true;
    }
};

#ifndef __clang_analyzer__
void AddSC_boss_ossirian()
{
    new boss_ossirian();
    new go_ossirian_crystal();
}
#endif
