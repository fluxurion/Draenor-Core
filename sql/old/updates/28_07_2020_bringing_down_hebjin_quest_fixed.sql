-- Bringing Down Heb'Jin
DELETE FROM `creature` WHERE `guid` IN (235519);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `WorldEffectID`, `isActive`, `protec_anti_doublet`) VALUES
('235519', '14377', '1', '0', '0', '1', '1', '0', '0', '1721.9', '-4386.33', '32.9836', '4.76759', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0','0','0','0','0',NULL);

UPDATE `creature_template` SET `speed_run`=0.857143, `unit_flags`=33024, `AIName`='SmartAI' WHERE `entry`=28636;
UPDATE `creature_template` SET `speed_run`=2, `unit_flags`=256, `AIName`='SmartAI', `InhabitType`=4 WHERE `entry`=28639;

DELETE FROM `event_scripts` WHERE `id`=18773;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(18773,0,10,28636,180000,0,5988.715,-3878.036,417.1502,2.356194);

DELETE FROM `creature_text` WHERE `entry`=28636;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28636,0,0,'Who''s that beatin'' on my drum?',14,0,100,5,0,12009,'Heb''Jin'),
(28636,1,0,'I''m gonna come down there and kill you good, $r!',14,0,100,15,0,0,'Heb''Jin'),
(28636,2,0,'Now you gonna die!',14,0,100,0,0,0,'Heb''Jin');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=52151;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,52151,0,31,3,28639,0,0,'','Spell Bat Net targets Heb''Jin''s Bat');

DELETE FROM `waypoints` WHERE `entry`=28639;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(28639,1,5982.633,-3879.573,422.4082,'Heb''Jin''s Bat'),
(28639,2,5968.549,-3869.597,420.1865,'Heb''Jin''s Bat'),
(28639,3,5954.345,-3851.714,395.2976,'Heb''Jin''s Bat'),
(28639,4,5934.977,-3822.782,369.5197,'Heb''Jin''s Bat');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=190695;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28636,28639) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=190695 AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28636*100,28639*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(28636,0,0,0,54,0,100,0,0,0,0,0,80,28636*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin - Just summoned - Run script'),
(28636,0,1,2,38,0,100,0,0,1,0,0,11,52354,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Heb''Jin - On data 0 1 set - Spellcast Script Effect - Creature Attack GUID from Dot Variable'),
(28636,0,2,3,61,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,5937.22,-3820.871,366.5563,0, 'Heb''Jin - On data 0 1 set - Move to position'),
(28636,0,3,4,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin - On data 0 1 set - Say line'),
(28636,0,4,5,61,0,100,0,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin - On data 0 1 set - Remove unit_flags IMMUNE_TO_PC'),
(28636,0,5,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Heb''Jin - On data 0 1 set - Start attack'),
(28636,0,6,0,0,0,100,0,1000,1000,7000,8000,11,12734,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin - On update IC - Spellcast Ground Smash'),
(28636,0,7,0,0,0,100,0,5000,5000,10000,12000,11,15548,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin - On update IC - Spellcast Thunder Clap'),
(28636,0,8,0,13,0,100,0,12000,15000,0,0,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Heb''Jin - On target casting - Spellcast Pummel'),
(28639,0,0,1,11,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On spawn - Remove unit_field_bytes1 (dead)'),
(28639,0,1,2,61,0,100,0,0,0,0,0,11,52353,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Heb''Jin''s Bat - On spawn - Spellcast Script Effect - Creature Capture GUID to Dot Variable'),
(28639,0,2,0,61,0,100,0,0,0,0,0,4,10892,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On spawn - Play sound'),
(28639,0,3,0,27,0,100,1,0,0,0,0,53,1,28639,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On passenger boarded - Start WP movement'),
(28639,0,4,5,40,0,100,0,4,28639,0,0,28,43671,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On WP 4 reached - Remove aura Ride Vehicle'),
(28639,0,5,6,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,28636,10,0,0,0,0,0, 'Heb''Jin''s Bat - On WP 4 reached - Set data 0 1 Heb''Jin'),
(28639,0,6,0,61,0,100,0,0,0,0,0,80,28639*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On WP 4 reached - Run script'),
(28639,0,7,8,8,0,100,0,52151,0,0,0,18,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On spellhit Bat Net - Set unit_flags IMMUNE_TO_PC'),
(28639,0,8,9,61,0,100,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On spellhit Bat Net - Set unit_field_bytes1 (dead)'),
(28639,0,9,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat - On spellhit Bat Net - Despawn after 5 seconds'),
(190695,1,0,1,70,0,100,0,2,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Heb''Jin''s Drum - On state changed - Store targetlist'),
(190695,1,1,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,28636,100,0,0,0,0,0, 'Heb''Jin''s Drum - On state changed - Send targetlist to Heb''Jin'),
(28636*100,9,0,0,0,0,100,0,0,0,0,0,11,52353,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Heb''Jin script - Spellcast Script Effect - Creature Capture GUID to Dot Variable'),
(28636*100,9,1,0,0,0,100,0,3200,3200,0,0,11,52154,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin script - Spellcast Taunt'),
(28636*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin script - Say line'),
(28636*100,9,3,0,0,0,100,0,300,300,0,0,12,28639,8,0,0,0,0,8,0,0,0,5984.547,-3882.621,417.4379,1.919862, 'Heb''Jin script - Summon Heb''Jin''s Bat'),
(28636*100,9,4,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,28639,10,0,0,0,0,0, 'Heb''Jin script - Send targetlist'),
(28636*100,9,5,0,0,0,100,0,5700,5700,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Heb''Jin script - Say line'),
(28636*100,9,6,0,0,0,100,0,2400,2400,0,0,11,43671,0,0,0,0,0,19,28639,10,0,0,0,0,0, 'Heb''Jin script - Spellcast Ride Vehicle'),
(28639*100,9,0,0,0,0,100,0,2000,2000,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Heb''Jin''s Bat script 1 - Remove unit_flags IMMUNE_TO_PC'),
(28639*100,9,1,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Heb''Jin''s Bat script 1 - Start attack');