////////////////////////////////////////////////////////////////////////////////
//
// Project-Hellscream https://hellscream.org
// Copyright (C) 2018-2020 Project-Hellscream-6.2
// Discord https://discord.gg/CWCF3C9
//
////////////////////////////////////////////////////////////////////////////////

/* ScriptData
SDName: Boss_Firemaw
SD%Complete: 100
Dev: Hazor
SDCategory: Blackwing Lair
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "blackwing_lair.h"

enum Spells
{
	SPELL_SHADOWFLAME = 22539,
	SPELL_WINGBUFFET = 23339,
	SPELL_FLAMEBUFFET = 23341
};

enum Events
{
	EVENT_SHADOWFLAME = 1,
	EVENT_WINGBUFFET = 2,
	EVENT_FLAMEBUFFET = 3
};

class boss_firemaw : public CreatureScript
{
public:
	boss_firemaw() : CreatureScript("boss_firemaw") { }

	struct boss_firemawAI : public BossAI
	{
		boss_firemawAI(Creature* creature) : BossAI(creature, DATA_FIREMAW) { }

		void EnterCombat(Unit* /*who*/) override
		{
			if (instance && instance->GetBossState(DATA_BROODLORD_LASHLAYER) != DONE)
			{
				EnterEvadeMode();
				return;
			}
			_EnterCombat();

			events.ScheduleEvent(EVENT_SHADOWFLAME, urand(10000, 20000));
			events.ScheduleEvent(EVENT_WINGBUFFET, 30000);
			events.ScheduleEvent(EVENT_FLAMEBUFFET, 5000);
		}

		void UpdateAI(uint32 diff) override
		{
			if (!UpdateVictim())
				return;

			events.Update(diff);

			if (me->HasUnitState(UNIT_STATE_CASTING))
				return;

			while (uint32 eventId = events.ExecuteEvent())
			{
				switch (eventId)
				{
				case EVENT_SHADOWFLAME:
					DoCastVictim(SPELL_SHADOWFLAME);
					events.ScheduleEvent(EVENT_SHADOWFLAME, urand(10000, 20000));
					break;
				case EVENT_WINGBUFFET:
					DoCastVictim(SPELL_WINGBUFFET);
					if (DoGetThreat(me->getVictim()))
						DoModifyThreatPercent(me->getVictim(), -75);
					events.ScheduleEvent(EVENT_WINGBUFFET, 30000);
					break;
				case EVENT_FLAMEBUFFET:
					DoCastVictim(SPELL_FLAMEBUFFET);
					events.ScheduleEvent(EVENT_FLAMEBUFFET, 5000);
					break;
				}
			}

			DoMeleeAttackIfReady();
		}
	};

	CreatureAI* GetAI(Creature* creature) const override
	{
		return new boss_firemawAI(creature);
	}
};

void AddSC_boss_firemaw()
{
	new boss_firemaw();
}