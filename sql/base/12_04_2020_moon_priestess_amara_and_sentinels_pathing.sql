-- Set movement type to stay in one place
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (276910, 276911);

-- Missing Mount for 276910 and 276911
UPDATE `creature_template_addon` SET `mount` = 9991 WHERE `entry` IN (10606, 10604);

-- Take over waypoints from creature 46414 to creature 46394
DELETE FROM `waypoint_data` WHERE `id` = 276909;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
VALUES
(276909 * 100,1,9841.91,965.874,1307.26,0,0,0,0,100,0),
(276909 * 100,2,9847.21,980.266,1305.29,0,0,0,0,100,0),
(276909 * 100,3,9846.65,1006.46,1305.44,0,0,0,0,100,0),
(276909 * 100,4,9846.94,1037.57,1304.88,0,0,0,0,100,0),
(276909 * 100,5,9858.5,1069.92,1307.49,0,0,0,0,100,0),
(276909 * 100,6,9879.15,1092.46,1307.99,0,0,0,0,100,0),
(276909 * 100,7,9885.72,1118.77,1307.86,0,0,0,0,100,0),
(276909 * 100,8,9912.28,1140.93,1307.96,0,0,0,0,100,0),
(276909 * 100,9,9915.84,1181.2,1307.91,0,0,0,0,100,0),
(276909 * 100,10,9909.05,1205.88,1308.46,0,0,0,0,100,0),
(276909 * 100,11,9926.72,1238.11,1307.83,0,0,0,0,100,0),
(276909 * 100,12,9951.81,1245.91,1307.83,0,0,0,0,100,0),
(276909 * 100,13,9992.02,1246.51,1307.86,0,0,0,0,100,0),
(276909 * 100,14,10020.8,1284.3,1307.55,0,0,0,0,100,0),
(276909 * 100,15,9994.73,1247.44,1307.86,0,0,0,0,100,0),
(276909 * 100,16,9949.29,1243.79,1307.73,0,0,0,0,100,0),
(276909 * 100,17,9923.5,1239.4,1307.85,0,0,0,0,100,0),
(276909 * 100,18,9907.7,1206.18,1308.46,0,0,0,0,100,0),
(276909 * 100,19,9916.67,1166.02,1307.9,0,0,0,0,100,0),
(276909 * 100,20,9907.02,1133.67,1307.95,0,0,0,0,100,0),
(276909 * 100,21,9881.11,1108.69,1307.99,0,0,0,0,100,0),
(276909 * 100,22,9868.7,1077.61,1307.99,0,0,0,0,100,0),
(276909 * 100,23,9848.29,1050.17,1305.27,0,0,0,0,100,0),
(276909 * 100,24,9845.39,1007.59,1305.43,0,0,0,0,100,0);

-- Delete waypoints for creature 276910 and 276911
DELETE FROM `waypoint_data` WHERE `id` IN (276910, 276911);

-- Create the formation
DELETE FROM `creature_formations` WHERE `leaderGUID` = 46394;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(276909,276909,0,0,515,0,0),
(276909,276910,3,135,515,0,0),
(276909,276911,3,225,515,0,0);