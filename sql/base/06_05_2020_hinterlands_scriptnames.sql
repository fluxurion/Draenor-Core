UPDATE `creature_text` SET `text`="No one challenges the Wastewander nomads - not even robotic chickens! ATTACK!" WHERE `entry`=7806 AND `groupid`=3;

-- fix 8018 guthrum flight master not working
UPDATE `gossip_menu_option`
SET `option_id` = 4,
`npc_option_npcflag` = 8192
WHERE `menu_id` = 11885;

-- fix for quest 26546 Razorbeak Friends
UPDATE `creature_template`
SET `ScriptName` = 'npc_trained_razorbeak'
WHERE `entry` = 2657;

-- fix for quest 836 - Rescue OOX-09/HL - Work in progress - missing waypoints 
UPDATE `creature_template`
SET `ScriptName` = 'npc_oox09hl'
WHERE `entry` = 7806;

-- fix Revantusk Stalker not attacking
UPDATE `creature_template`
SET `faction` = 876
WHERE `entry` = 42536;

-- stop mask spell bunny from moving for quest faces of evil 26521
UPDATE `creature`
SET `spawndist` = 0,
`MovementType` = 0
WHERE id = 42704;

-- create spell hook for quest faces of evil 26521
DELETE FROM `spell_script_names`
WHERE `spell_id` = 79513;

INSERT INTO spell_script_names VALUES
(79513, 'spell_tiki_torch');

-- fix looting of Sacrificed Vilebranch
UPDATE `creature_template`
SET `pickpocketloot` = 42857
WHERE `entry` = 42857;

DELETE FROM `pickpocketing_loot_template`
WHERE `Entry` = 42857;

INSERT INTO `pickpocketing_loot_template`
(`Entry`,`Item`,`ChanceOrQuestChance`,`LootMode`,`GroupId`,`MinCountOrRef`,`MaxCount`,`itemBonuses`)
VALUES
(42857,58228,100,1,0,1,1,'');

-- remove umboda overspawn
DELETE FROM `creature`
WHERE `guid` = 191915;

-- fix quest 26523 all that skitters
-- adjust Skittering Spiderling
UPDATE creature_template
SET faction = 190,
npcflag = 16777216
WHERE entry = 42689;

UPDATE npc_spellclick_spells
SET cast_flags = 3
WHERE npc_entry = 42689;

-- adjust drop chance for fang of shadra
UPDATE `gameobject_loot_template`
SET `ChanceOrQuestChance` = 100
WHERE (`Entry` = 204120 AND `Item` = 58281);

-- create spell hook for quest summoning shadra 26531
DELETE FROM `spell_script_names`
WHERE `spell_id` = 80469;

INSERT INTO spell_script_names VALUES
(80469, 'spell_ritual_of_shadra');


-- fix position of Highvale Records
UPDATE `gameobject`
SET `position_x` = 262.927,
`position_y` =-2803.76,
`position_z` = 123.369
WHERE `guid` = 216158;

-- fix broken quest Queldanil Lodge
UPDATE `quest_template`
SET `flags` = 0
WHERE `ID` = 27725;

-- fix tracker yoro
UPDATE `creature_template_addon`
SET `bytes2` = 257,
`auras` = ''
WHERE `entry` = 46476;