////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

/* ScriptData
SDName: Boss_Onyxia
SD%Complete: 95
Dev: Hazor https://hellscream.org
SDCategory: Onyxia's Lair 1-60 version
Spells: changed to classic spells values
Spawns: only whelps no lair guards.
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "onyxias_lair.h"

enum Yells
{
	// Say
	SAY_AGGRO = 0,
	SAY_KILL = 1,
	SAY_PHASE_2_TRANS = 2,
	SAY_PHASE_3_TRANS = 3,

	// Emote
	EMOTE_BREATH = 4
};

enum Spells
{
	// Phase 1 spells
	SPELL_WING_BUFFET = 23339,
	SPELL_FLAME_BREATH = 38974,
	SPELL_CLEAVE = 68868,

	//Disabled for 1-60 version
	//SPELL_TAIL_SWEEP          = 68867,

	SPELL_TAIL_SWEEP = 15847,

	// Phase 2 spells
	SPELL_DEEP_BREATH = 23461,
	SPELL_FIREBALL = 18392,

	//Not much choise about these. We have to make own defintion on the direction/start-end point
	SPELL_BREATH_NORTH_TO_SOUTH = 17086,                    // 20x in "array"
	SPELL_BREATH_SOUTH_TO_NORTH = 18351,                    // 11x in "array"

	SPELL_BREATH_EAST_TO_WEST = 18576,                    // 7x in "array"
	SPELL_BREATH_WEST_TO_EAST = 18609,                    // 7x in "array"

	SPELL_BREATH_SE_TO_NW = 18564,                    // 12x in "array"
	SPELL_BREATH_NW_TO_SE = 18584,                    // 12x in "array"
	SPELL_BREATH_SW_TO_NE = 18596,                    // 12x in "array"
	SPELL_BREATH_NE_TO_SW = 18617,                    // 12x in "array"

													  //SPELL_BREATH                = 21131,                  // 8x in "array", different initial cast than the other arrays

													  // Phase 3 spells
													  SPELL_BELLOWING_ROAR = 18431
};

enum Events
{
	EVENT_BELLOWING_ROAR = 1,
	EVENT_FLAME_BREATH = 2,
	EVENT_TAIL_SWEEP = 3,
	EVENT_CLEAVE = 4,
	EVENT_WING_BUFFET = 5,
	EVENT_DEEP_BREATH = 6,
	EVENT_MOVEMENT = 7,
	EVENT_FIREBALL = 8,
	//Disabled for 1-60 version.
	// EVENT_LAIR_GUARD     = 9,
	EVENT_WHELP_SPAWN = 9
};


struct OnyxMove
{
	uint8 LocId;
	uint8 LocIdEnd;
	uint32 SpellId;
	float fX, fY, fZ;
};

static OnyxMove MoveData[8] =
{
	{ 0, 1, SPELL_BREATH_WEST_TO_EAST,   -33.5561f, -182.682f, -56.9457f }, // West
	{ 1, 0, SPELL_BREATH_EAST_TO_WEST,   -31.4963f, -250.123f, -55.1278f }, // East
	{ 2, 4, SPELL_BREATH_NW_TO_SE,         6.8951f, -180.246f, -55.896f }, // North-west
	{ 3, 5, SPELL_BREATH_NE_TO_SW,        10.2191f, -247.912f, -55.896f }, // North-east
	{ 4, 2, SPELL_BREATH_SE_TO_NW,       -63.5156f, -240.096f, -55.477f }, // South-east
	{ 5, 3, SPELL_BREATH_SW_TO_NE,       -58.2509f, -189.020f, -55.790f }, // South-west
	{ 6, 7, SPELL_BREATH_SOUTH_TO_NORTH, -65.8444f, -213.809f, -55.2985f }, // South
	{ 7, 6, SPELL_BREATH_NORTH_TO_SOUTH,  22.8763f, -217.152f, -55.0548f }, // North
};

Position const MiddleRoomLocation = { -23.6155f, -215.357f, -55.7344f, 0.0f };

Position const Phase2Location = { -80.924f, -214.299f, -82.942f, 0.0f };

Position const SpawnLocations[3] =
{
	//Whelps
	{ -30.127f, -254.463f, -89.440f, 0.0f },
	{ -30.817f, -177.106f, -89.258f, 0.0f },
	//Lair Guard
	{ -145.950f, -212.831f, -68.659f, 0.0f }
};

class boss_onyxia_classic : public CreatureScript
{
public:
	boss_onyxia_classic() : CreatureScript("boss_onyxia_classic") { }

	struct boss_onyxia_classicAI : public BossAI
	{
		boss_onyxia_classicAI(Creature* creature) : BossAI(creature, DATA_ONYXIA), Summons(me)
		{
			Reset();
		}

		void Reset()
		{
			if (!IsCombatMovementAllowed())
				SetCombatMovement(true);

			Phase = PHASE_START;
			MovePoint = urand(0, 5);
			PointData = GetMoveData();
			Summons.DespawnAll();
			SummonWhelpCount = 0;
			IsMoving = false;

			if (instance)
			{
				instance->SetBossState(DATA_ONYXIA, NOT_STARTED);
				instance->SetData(DATA_ONYXIA_PHASE, Phase);
				instance->DoStopTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
			}
		}

		void EnterCombat(Unit* /*who*/)
		{
			Talk(SAY_AGGRO);
			//Disabled not Blizzlike 0.1.7
			//me->SetInCombatWithZone();

			events.ScheduleEvent(EVENT_FLAME_BREATH, urand(10000, 20000));
			events.ScheduleEvent(EVENT_TAIL_SWEEP, urand(15000, 20000));
			events.ScheduleEvent(EVENT_CLEAVE, urand(2000, 5000));
			events.ScheduleEvent(EVENT_WING_BUFFET, urand(10000, 20000));
			if (instance)
			{
				instance->SetBossState(DATA_ONYXIA, IN_PROGRESS);
				instance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
			}
		}

		void JustDied(Unit* /*killer*/)
		{
			if (instance)
				instance->SetBossState(DATA_ONYXIA, DONE);

			Summons.DespawnAll();
		}

		void JustSummoned(Creature* summoned)
		{

			summoned->SetInCombatWithZone();
			if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
				summoned->AI()->AttackStart(target);

			switch (summoned->GetEntry())
			{
			case NPC_WHELP:
				++SummonWhelpCount;
				break;
				//case NPC_LAIRGUARD:
				//    summoned->setActive(true);
				//    break;
			}
			Summons.Summon(summoned);
		}

		void SummonedCreatureDespawn(Creature* summon)
		{
			Summons.Despawn(summon);
		}

		void KilledUnit(Unit* /*victim*/)
		{
			Talk(SAY_KILL);
		}

		void SpellHit(Unit* /*pCaster*/, const SpellInfo* Spell)
		{
			if (Spell->Id == SPELL_BREATH_EAST_TO_WEST ||
				Spell->Id == SPELL_BREATH_WEST_TO_EAST ||
				Spell->Id == SPELL_BREATH_SE_TO_NW ||
				Spell->Id == SPELL_BREATH_NW_TO_SE ||
				Spell->Id == SPELL_BREATH_SW_TO_NE ||
				Spell->Id == SPELL_BREATH_NE_TO_SW)
			{
				PointData = GetMoveData();
				MovePoint = PointData->LocIdEnd;

				me->SetSpeed(MOVE_FLIGHT, 1.5f);
				me->GetMotionMaster()->MovePoint(8, MiddleRoomLocation);
			}
		}

		void MovementInform(uint32 type, uint32 id)
		{
			if (type == POINT_MOTION_TYPE)
			{
				switch (id)
				{
				case 8:
					PointData = GetMoveData();
					if (PointData)
					{
						me->SetSpeed(MOVE_FLIGHT, 1.0f);
						me->GetMotionMaster()->MovePoint(PointData->LocId, PointData->fX, PointData->fY, PointData->fZ);
					}
					break;
				case 9:
					me->GetMotionMaster()->MoveChase(me->getVictim());
					events.ScheduleEvent(EVENT_BELLOWING_ROAR, 1000);
					break;
				case 10:
					me->SetCanFly(true);
					me->GetMotionMaster()->MovePoint(11, Phase2Location.GetPositionX(), Phase2Location.GetPositionY(), Phase2Location.GetPositionZ() + 25);
					me->SetSpeed(MOVE_FLIGHT, 1.0f);
					Talk(SAY_PHASE_2_TRANS);
					if (instance)
						instance->SetData(DATA_ONYXIA_PHASE, Phase);
					events.ScheduleEvent(EVENT_WHELP_SPAWN, 5000);
					//events.ScheduleEvent(EVENT_LAIR_GUARD, 15000);
					break;
				case 11:
					if (PointData)
						me->GetMotionMaster()->MovePoint(PointData->LocId, PointData->fX, PointData->fY, PointData->fZ);
					me->GetMotionMaster()->Clear(false);
					me->GetMotionMaster()->MoveIdle();
					break;
				default:
					IsMoving = false;
					break;
				}
			}
		}

		void SpellHitTarget(Unit* target, const SpellInfo* Spell)
		{
			// Workaround - Couldn't find a way to group this spells (All Eruption)
			if (((Spell->Id >= 17086 && Spell->Id <= 17095) ||
				(Spell->Id == 17097) ||
				(Spell->Id >= 18351 && Spell->Id <= 18361) ||
				(Spell->Id >= 18564 && Spell->Id <= 18576) ||
				(Spell->Id >= 18578 && Spell->Id <= 18607) ||
				(Spell->Id == 18609) ||
				(Spell->Id >= 18611 && Spell->Id <= 18628) ||
				(Spell->Id >= 21132 && Spell->Id <= 21133) ||
				(Spell->Id >= 21135 && Spell->Id <= 21139) ||
				(Spell->Id >= 22191 && Spell->Id <= 22202) ||
				(Spell->Id >= 22267 && Spell->Id <= 22268)) &&
				(target->IsPlayer()))
			{
				if (instance)
				{
					instance->SetData(DATA_SHE_DEEP_BREATH_MORE, FAIL);
				}
			}
		}

		OnyxMove* GetMoveData()
		{
			uint8 MaxCount = sizeof(MoveData) / sizeof(OnyxMove);

			for (uint8 i = 0; i < MaxCount; ++i)
			{
				if (MoveData[i].LocId == MovePoint)
					return &MoveData[i];
			}

			return NULL;
		}

		void SetNextRandomPoint()
		{
			uint8 MaxCount = sizeof(MoveData) / sizeof(OnyxMove);

			uint8 iTemp = urand(0, MaxCount - 1);

			if (iTemp >= MovePoint)
				++iTemp;

			MovePoint = iTemp;
		}

		void UpdateAI(const uint32 Diff)
		{
			if (!UpdateVictim())
				return;

			// Common to PHASE_START && PHASE_END
			if (Phase == PHASE_START || Phase == PHASE_END)
			{
				// Specific to PHASE_START || PHASE_END
				if (Phase == PHASE_START)
				{
					if (HealthBelowPct(65))
					{
						SetCombatMovement(false);
						Phase = PHASE_BREATH;
						events.ScheduleEvent(EVENT_DEEP_BREATH, 85000);
						events.ScheduleEvent(EVENT_MOVEMENT, 14000);
						events.ScheduleEvent(EVENT_FIREBALL, 15000);
						// events.ScheduleEvent(EVENT_LAIR_GUARD,  60000);
						events.ScheduleEvent(EVENT_WHELP_SPAWN, 60000);
						me->GetMotionMaster()->MovePoint(10, Phase2Location);
						return;
					}
				}
				events.Update(Diff);

				while (uint32 eventId = events.ExecuteEvent())
				{
					switch (eventId)
					{
					case EVENT_BELLOWING_ROAR: // Phase PHASE_END
					{
						DoCastVictim(SPELL_BELLOWING_ROAR);
						// Eruption
						GameObject* Floor = NULL;
						JadeCore::GameObjectInRangeCheck check(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 15);
						JadeCore::GameObjectLastSearcher<JadeCore::GameObjectInRangeCheck> searcher(me, Floor, check);
						me->VisitNearbyGridObject(30, searcher);
						if (instance && Floor)
							instance->SetData64(DATA_FLOOR_ERUPTION_GUID, Floor->GetGUID());
						events.ScheduleEvent(EVENT_BELLOWING_ROAR, 30000);
						break;
					}
					case EVENT_FLAME_BREATH:   // Phase PHASE_START and PHASE_END
						DoCastVictim(SPELL_FLAME_BREATH);
						events.ScheduleEvent(EVENT_FLAME_BREATH, urand(10000, 20000));
						break;
					case EVENT_TAIL_SWEEP:     // Phase PHASE_START and PHASE_END
						DoCastAOE(SPELL_TAIL_SWEEP);
						events.ScheduleEvent(EVENT_TAIL_SWEEP, urand(15000, 20000));
						break;
					case EVENT_CLEAVE:         // Phase PHASE_START and PHASE_END
						DoCastVictim(SPELL_CLEAVE);
						events.ScheduleEvent(EVENT_CLEAVE, urand(2000, 5000));
						break;
					case EVENT_WING_BUFFET:    // Phase PHASE_START and PHASE_END
						DoCastVictim(SPELL_WING_BUFFET);
						events.ScheduleEvent(EVENT_WING_BUFFET, urand(15000, 30000));
						break;
					default:
						break;
					}
				}
				DoMeleeAttackIfReady();
			}
			else
			{
				if (HealthBelowPct(40))
				{
					Phase = PHASE_END;
					if (instance)
						instance->SetData(DATA_ONYXIA_PHASE, PHASE_END);
					Talk(SAY_PHASE_3_TRANS);

					SetCombatMovement(true);
					me->SetCanFly(false);
					IsMoving = false;
					me->GetMotionMaster()->MovePoint(9, me->GetHomePosition());
					events.ScheduleEvent(EVENT_BELLOWING_ROAR, 30000);
					events.ScheduleEvent(EVENT_WHELP_SPAWN, 5000);
					return;
				}
				events.Update(Diff);

				while (uint32 eventId = events.ExecuteEvent())
				{
					switch (eventId)
					{
					case EVENT_DEEP_BREATH:      // Phase PHASE_BREATH
						if (!IsMoving)
						{
							if (me->IsNonMeleeSpellCasted(false))
								me->InterruptNonMeleeSpells(false);
							Talk(EMOTE_BREATH);
							if (PointData) /// @todo: In what cases is this null? What should we do?
								DoCast(me, PointData->SpellId);
							events.ScheduleEvent(EVENT_DEEP_BREATH, 70000);
						}
						break;
					case EVENT_MOVEMENT:         // Phase PHASE_BREATH
						if (!IsMoving && !(me->HasUnitState(UNIT_STATE_CASTING)))
						{
							SetNextRandomPoint();
							PointData = GetMoveData();

							if (!PointData)
								return;

							me->GetMotionMaster()->MovePoint(PointData->LocId, PointData->fX, PointData->fY, PointData->fZ);
							IsMoving = true;
							events.ScheduleEvent(EVENT_MOVEMENT, 25000);
						}
						break;
					case EVENT_FIREBALL:         // Phase PHASE_BREATH
						if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() != POINT_MOTION_TYPE)
						{
							if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
								DoCast(target, SPELL_FIREBALL);

							events.ScheduleEvent(EVENT_FIREBALL, 8000);
						}
						break;
						//Disabled for 1-60 version.
						//case EVENT_LAIR_GUARD:       // Phase PHASE_BREATH
						//     me->SummonCreature(NPC_LAIRGUARD, SpawnLocations[2], TEMPSUMMON_CORPSE_DESPAWN);
						//    events.ScheduleEvent(EVENT_LAIR_GUARD, 30000);
						//    break;
					case EVENT_WHELP_SPAWN:      // Phase PHASE_BREATH
						me->SummonCreature(NPC_WHELP, SpawnLocations[0], TEMPSUMMON_CORPSE_DESPAWN);
						me->SummonCreature(NPC_WHELP, SpawnLocations[1], TEMPSUMMON_CORPSE_DESPAWN);
						if (SummonWhelpCount >= RAID_MODE(20, 40))
						{
							SummonWhelpCount = 0;
							events.ScheduleEvent(EVENT_WHELP_SPAWN, 90000);
						}
						else
							events.ScheduleEvent(EVENT_WHELP_SPAWN, 500);
						break;
					default:
						break;
					}
				}
			}
		}

	private:
		SummonList Summons;
		OnyxMove* PointData;
		uint8 Phase;
		uint8 MovePoint;
		uint8 SummonWhelpCount;
		bool IsMoving;
	};
	CreatureAI* GetAI(Creature* creature) const
	{
		return new boss_onyxia_classicAI(creature);
	}
};

#ifndef __clang_analyzer__
void AddSC_boss_onyxia_classic()
{
	new boss_onyxia_classic();
}
#endif