-- Pathing for Houndmaster Grebmar Entry: 9319 'TDB FORMAT' 
SET @NPC := 321709;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=594.4585,`position_y`=-178.3237,`position_z`=-84.23994 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,594.4585,-178.3237,-84.23994,0,0,0,0,100,0),
(@PATH,2,598.2085,-180.3237,-84.23994,0,0,0,0,100,0),
(@PATH,3,601.2085,-182.3237,-84.23994,0,0,0,0,100,0),
(@PATH,4,605.1209,-184.6363,-84.23941,0,0,0,0,100,0),
(@PATH,5,608.8709,-188.1363,-84.23941,0,0,0,0,100,0),
(@PATH,6,612.06,-191.0042,-84.23634,0,0,0,0,100,0),
(@PATH,7,611.81,-184.0042,-84.23634,0,0,0,0,100,0),
(@PATH,8,611.5181,-178.7817,-84.23982,0,0,0,0,100,0),
(@PATH,9,606.7681,-173.7817,-84.23982,0,0,0,0,100,0),
(@PATH,10,601.315,-167.8244,-84.23912,0,0,0,0,100,0),
(@PATH,11,594.565,-168.8244,-84.23912,0,0,0,0,100,0),
(@PATH,12,585.8881,-169.7204,-84.24162,0,0,0,0,100,0),
(@PATH,13,582.8881,-176.2204,-84.24162,0,0,0,0,100,0),
(@PATH,14,579.5485,-182.8368,-84.24379,0,0,0,0,100,0),
(@PATH,15,583.2985,-189.3368,-84.24379,0,0,0,0,100,0),
(@PATH,16,586.8497,-196.4224,-84.24238,0,0,0,0,100,0),
(@PATH,17,587.5997,-187.1724,-84.24238,0,0,0,0,100,0),
(@PATH,18,591.6155,-181.6407,-84.24092,0,0,0,0,100,0),
(@PATH,19,594.4585,-178.3237,-84.23994,0,0,0,0,100,0);