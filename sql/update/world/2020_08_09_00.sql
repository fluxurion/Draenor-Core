UPDATE `gossip_menu_option` SET `option_id`=1, `npc_option_npcflag`=1 WHERE `menu_id`=11189 AND `id`=0;

DELETE FROM `conditions` WHERE `SourceGroup`=11189 AND `SourceEntry` = '0';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
(15, 11189, 0, 0, 0, 28, 25171, 'Raider Jhash - Show gossip only if quest 25171 is complete');

-- Raider Jhash
SET @ENTRY := 10676;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Flee at 15% HP"),
(@ENTRY,@SOURCETYPE,1,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say Text at 15% HP"),
(@ENTRY,@SOURCETYPE,2,0,9,0,100,0,0,20,7000,9000,11,6533,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Cast Net on Close"),
(@ENTRY,@SOURCETYPE,3,0,62,0,100,0,11189,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Close Gossip"),
(@ENTRY,@SOURCETYPE,4,0,62,0,100,0,11189,0,0,0,85,73678,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Summon Durotar Riding Wolf");

UPDATE `creature_template` SET `unit_flags`=768, `VehicleId`=678, `speed_walk`=2, `speed_run`=2.14286 WHERE `entry`=39239;

DELETE FROM `waypoints` WHERE `entry` = '39239';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(39239, 1, -758.05, -4831.90, 18.68, 'Orgrimmar Riding Wolf WP'),
(39239, 2, -601.07, -4699.04, 36.58, 'Orgrimmar Riding Wolf WP'),
(39239, 3, -547.25, -4741.69, 33.15, 'Orgrimmar Riding Wolf WP'),
(39239, 4, -474.73, -4774.99, 32.41, 'Orgrimmar Riding Wolf WP'),
(39239, 5, -432.12, -4783.58, 32.24, 'Orgrimmar Riding Wolf WP'),
(39239, 6, -367.65, -4814.43, 32.36, 'Orgrimmar Riding Wolf WP'),
(39239, 7, -193.59, -4778.13, 23.71, 'Orgrimmar Riding Wolf WP'),
(39239, 8, -85.95, -4746.69, 21.14, 'Orgrimmar Riding Wolf WP'),
(39239, 9, 0.79, -4749.64, 21.82, 'Orgrimmar Riding Wolf WP'),
(39239, 10, 42.29, -4743.17, 20.87, 'Orgrimmar Riding Wolf WP'),
(39239, 11, 228.45, -4740.72, 10.10, 'Orgrimmar Riding Wolf WP'),
(39239, 12, 247.98, -4739.00, 10.10, 'Orgrimmar Riding Wolf WP'),
(39239, 13, 297.40, -4747.80, 9.39, 'Orgrimmar Riding Wolf WP');

-- Durotar Riding Wolf
SET @ENTRY := 39239;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,27,0,100,0,0,0,0,0,53,1,39239,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On Passenger Boarded - Start WP"),
(@ENTRY,@SOURCETYPE,1,0,54,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On Just Summoned - Set Run"),
(@ENTRY,@SOURCETYPE,2,0,40,0,100,0,13,0,0,0,28,46598,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On WP Reached - Remove Passenger"); 