-- Deathguard Swollow
UPDATE `creature_template_addon` SET `path_id`=19289100 WHERE  `entry`=39196;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=192891;
DELETE FROM `waypoint_data` WHERE `id`=19289100;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19289100, 1, 2243.38, 1014.55, 36.9146, 0, 0, 0, 0, 100, 0),
(19289100, 2, 2254, 1021.82, 36.4536, 0, 0, 0, 0, 100, 0),
(19289100, 3, 2260.91, 1010.9, 36.4385, 0, 0, 0, 0, 100, 0),
(19289100, 4, 2251.37, 1003.8, 36.5095, 0, 0, 0, 0, 100, 0);

-- Gordo
UPDATE `creature_template_addon` SET `path_id`=19260600 WHERE  `entry`=10666;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=192606;
DELETE FROM `waypoint_data` WHERE `id`=19260600;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19260600, 1, 2220.16, 1034.98, 35.4363, 0, 0, 0, 0, 100, 0),
(19260600, 2, 2215.4, 1034.4, 35.4941, 0, 0, 0, 0, 100, 0),
(19260600, 3, 2210.6, 1032.61, 35.5099, 0, 0, 0, 0, 100, 0),
(19260600, 4, 2212.62, 1038.43, 34.859, 0, 0, 0, 0, 100, 0),
(19260600, 5, 2211.79, 1034.79, 35.322, 0, 0, 0, 0, 100, 0),
(19260600, 6, 2212.88, 1038.84, 34.8025, 0, 0, 0, 0, 100, 0),
(19260600, 7, 2211.61, 1034.22, 35.3814, 0, 0, 0, 0, 100, 0),
(19260600, 8, 2217.5, 1035.07, 35.4439, 0, 0, 0, 0, 100, 0),
(19260600, 9, 2222.84, 1034.61, 35.5158, 0, 0, 0, 0, 100, 0),
(19260600, 10, 2228.76, 1032.47, 35.7824, 0, 0, 0, 0, 100, 0),
(19260600, 11, 2239.25, 1024.1, 36.4546, 0, 0, 0, 0, 100, 0),
(19260600, 12, 2243.63, 1018.43, 36.6652, 0, 0, 0, 0, 100, 0),
(19260600, 13, 2243.18, 1004.55, 36.5792, 0, 0, 0, 0, 100, 0),
(19260600, 14, 2232.18, 994.276, 36.727, 0, 0, 0, 0, 100, 0),
(19260600, 15, 2241.75, 1006.5, 36.6768, 0, 0, 0, 0, 100, 0),
(19260600, 16, 2243.38, 1017.61, 36.7298, 0, 0, 0, 0, 100, 0),
(19260600, 17, 2240.62, 1023.92, 36.4588, 0, 0, 0, 0, 100, 0),
(19260600, 18, 2226.9, 1033.25, 35.6483, 0, 0, 0, 0, 100, 0);

-- apothecary Johaan
UPDATE `creature_template_addon` SET `emote`=69 WHERE  `entry`=1518;

-- old dogs
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id` IN (1935, 1548);

-- Sahvan Bloodshadow
UPDATE `creature_template_addon` SET `path_id`=19251200 WHERE  `entry`=2314;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=192512;
DELETE FROM `waypoint_data` WHERE `id`=19251200;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19251200, 1, 2370.84, 398.24, 37.7116, 0, 0, 0, 0, 100, 0),
(19251200, 2, 2370.96, 397.113, 37.7004, 0, 10000, 0, 0, 100, 0),
(19251200, 3, 2357.77, 397.081, 36.1473, 0, 0, 0, 0, 100, 0),
(19251200, 4, 2346.2, 396.934, 34.3625, 0, 0, 0, 0, 100, 0),
(19251200, 5, 2330.81, 397.436, 33.6671, 0, 0, 0, 0, 100, 0),
(19251200, 6, 2314.83, 397.266, 33.8284, 0, 0, 0, 0, 100, 0),
(19251200, 7, 2286.51, 395.088, 34.04, 0, 0, 0, 0, 100, 0),
(19251200, 8, 2283.19, 389.599, 34.1145, 0, 0, 0, 0, 100, 0),
(19251200, 9, 2284.4, 366.985, 34.0099, 0, 0, 0, 0, 100, 0),
(19251200, 10, 2285.11, 355.211, 33.4897, 0, 0, 0, 0, 100, 0),
(19251200, 11, 2276.64, 329.606, 33.4725, 0, 0, 0, 0, 100, 0),
(19251200, 12, 2267.65, 309.841, 33.39, 0, 0, 0, 0, 100, 0),
(19251200, 13, 2261.81, 294.095, 33.5874, 0, 0, 0, 0, 100, 0),
(19251200, 14, 2255.37, 279.841, 33.6177, 0, 0, 0, 0, 100, 0),
(19251200, 15, 2251.42, 271.001, 33.6544, 0, 0, 0, 0, 100, 0),
(19251200, 16, 2246.26, 255.368, 33.5888, 0, 0, 0, 0, 100, 0),
(19251200, 17, 2246.4, 256.044, 33.5888, 0, 35000, 0, 0, 100, 0),
(19251200, 18, 2249.04, 265.982, 33.5274, 0, 0, 0, 0, 100, 0),
(19251200, 19, 2251.42, 269.81, 33.6628, 0, 0, 0, 0, 100, 0),
(19251200, 20, 2254.47, 269.633, 33.6891, 0, 6000, 0, 0, 100, 0),
(19251200, 21, 2258.93, 281.805, 33.6868, 0, 0, 0, 0, 100, 0),
(19251200, 22, 2263.5, 294.315, 33.6907, 0, 0, 0, 0, 100, 0),
(19251200, 23, 2273.85, 320.603, 33.4459, 0, 0, 0, 0, 100, 0),
(19251200, 24, 2270.71, 329.529, 33.5747, 0, 0, 0, 0, 100, 0),
(19251200, 25, 2267.91, 329.632, 33.5747, 0, 6000, 0, 0, 100, 0),
(19251200, 26, 2273.2, 336.752, 33.516, 0, 0, 0, 0, 100, 0),
(19251200, 27, 2282.98, 348.796, 33.4146, 0, 0, 0, 0, 100, 0),
(19251200, 28, 2284, 367.676, 34.0457, 0, 0, 0, 0, 100, 0),
(19251200, 29, 2283.6, 389.49, 34.1162, 0, 0, 0, 0, 100, 0),
(19251200, 30, 2286.63, 395.716, 34.0437, 0, 0, 0, 0, 100, 0),
(19251200, 31, 2314.79, 397.905, 33.8502, 0, 0, 0, 0, 100, 0),
(19251200, 32, 2342.56, 397.335, 33.8829, 0, 0, 0, 0, 100, 0),
(19251200, 33, 2362.75, 397.583, 37.0283, 0, 0, 0, 0, 100, 0);

UPDATE `creature_template_addon` SET `path_id`=19272500 WHERE  `entry`=1738;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=192725;
DELETE FROM `waypoint_data` WHERE `id`=19272500;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19272500, 1, 2208.81, 255.006, 33.5904, 0, 20000, 0, 0, 100, 0),
(19272500, 2, 2204.52, 246.84, 33.8546, 0, 0, 0, 0, 100, 0),
(19272500, 3, 2187.11, 235.962, 35.7584, 0, 0, 0, 0, 100, 0),
(19272500, 4, 2163.87, 217.6, 41.1689, 0, 0, 0, 0, 100, 0),
(19272500, 5, 2161.54, 184.956, 42.2037, 0, 0, 0, 0, 100, 0),
(19272500, 6, 2159.69, 180.296, 41.8648, 0, 0, 0, 0, 100, 0),
(19272500, 7, 2142.63, 168.91, 38.9447, 0, 0, 0, 0, 100, 0),
(19272500, 8, 2115.97, 157.508, 36.3402, 0, 0, 0, 0, 100, 0),
(19272500, 9, 2109.29, 155.459, 35.9326, 0, 0, 0, 0, 100, 0),
(19272500, 10, 2086.22, 153.437, 34.7756, 0, 0, 0, 0, 100, 0),
(19272500, 11, 2068.77, 153.353, 34.0094, 0, 0, 0, 0, 100, 0),
(19272500, 12, 2049.71, 160.292, 33.7197, 0, 15000, 0, 0, 100, 0),
(19272500, 13, 2064.74, 154.845, 33.8402, 0, 0, 0, 0, 100, 0),
(19272500, 14, 2081.87, 153.482, 34.5686, 0, 0, 0, 0, 100, 0),
(19272500, 15, 2101.45, 154.372, 35.5246, 0, 0, 0, 0, 100, 0),
(19272500, 16, 2126.23, 162.268, 37.3845, 0, 0, 0, 0, 100, 0),
(19272500, 17, 2152.1, 174.657, 40.5715, 0, 0, 0, 0, 100, 0),
(19272500, 18, 2159.02, 180.437, 41.7866, 0, 0, 0, 0, 100, 0),
(19272500, 19, 2161.63, 205.745, 42.6787, 0, 0, 0, 0, 100, 0),
(19272500, 20, 2162.9, 213.743, 41.7645, 0, 0, 0, 0, 100, 0),
(19272500, 21, 2166.28, 219.463, 40.6148, 0, 0, 0, 0, 100, 0),
(19272500, 22, 2185.87, 235.122, 35.971, 0, 0, 0, 0, 100, 0),
(19272500, 23, 2213.15, 251.347, 33.5752, 0, 0, 0, 0, 100, 0),
(19272500, 24, 2210.77, 256.311, 33.5751, 0, 0, 0, 0, 100, 0);

-- hamlin atkins
UPDATE `creature_template_addon` SET `path_id`=19306000 WHERE  `entry`=3547;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=193060;
DELETE FROM `waypoint_data` WHERE `id`=19306000;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19306000, 1, 2282.96, 390.353, 34.1148, 0, 0, 0, 0, 100, 0),
(19306000, 2, 2283.21, 366.093, 33.9823, 0, 0, 0, 0, 100, 0),
(19306000, 3, 2277.23, 340.521, 33.5585, 0, 0, 0, 0, 100, 0),
(19306000, 4, 2271.72, 320.467, 33.5215, 0, 0, 0, 0, 100, 0),
(19306000, 5, 2259.02, 296.954, 33.4113, 0, 0, 0, 0, 100, 0),
(19306000, 6, 2246.64, 283.456, 33.3787, 0, 0, 0, 0, 100, 0),
(19306000, 7, 2234.61, 278.976, 33.5738, 0, 0, 0, 0, 100, 0),
(19306000, 8, 2221.18, 265.665, 33.5843, 0, 0, 0, 0, 100, 0),
(19306000, 9, 2202.13, 246.259, 34.1629, 0, 0, 0, 0, 100, 0),
(19306000, 10, 2185.68, 237.15, 35.9575, 0, 0, 0, 0, 100, 0),
(19306000, 11, 2183.74, 233.823, 36.373, 0, 0, 0, 0, 100, 0),
(19306000, 12, 2188.96, 235.069, 35.5176, 0, 0, 0, 0, 100, 0),
(19306000, 13, 2209.74, 247.37, 33.5862, 0, 0, 0, 0, 100, 0),
(19306000, 14, 2230.87, 259.763, 33.5739, 0, 0, 0, 0, 100, 0),
(19306000, 15, 2245.32, 261.246, 33.4651, 0, 0, 0, 0, 100, 0),
(19306000, 16, 2249.1, 279.006, 33.3799, 0, 0, 0, 0, 100, 0),
(19306000, 17, 2261.92, 297.294, 33.5376, 0, 0, 0, 0, 100, 0),
(19306000, 18, 2272.11, 319.848, 33.476, 0, 0, 0, 0, 100, 0),
(19306000, 19, 2279.31, 344.857, 33.5522, 0, 0, 0, 0, 100, 0),
(19306000, 20, 2283.87, 366.326, 33.9772, 0, 0, 0, 0, 100, 0),
(19306000, 21, 2284.53, 390.846, 34.1125, 0, 0, 0, 0, 100, 0),
(19306000, 22, 2287.03, 395.704, 34.0355, 0, 0, 0, 0, 100, 0),
(19306000, 23, 2315.81, 396.56, 33.7449, 0, 0, 0, 0, 100, 0),
(19306000, 24, 2331.1, 395.938, 33.6668, 0, 0, 0, 0, 100, 0),
(19306000, 25, 2337.62, 392.279, 33.6673, 0, 0, 0, 0, 100, 0),
(19306000, 26, 2360.04, 359.752, 37.9193, 0, 0, 0, 0, 100, 0),
(19306000, 27, 2361.54, 352.919, 37.9542, 0, 0, 0, 0, 100, 0),
(19306000, 28, 2362.89, 351.553, 37.9576, 0, 0, 0, 0, 100, 0),
(19306000, 29, 2357.26, 365.273, 37.3017, 0, 0, 0, 0, 100, 0),
(19306000, 30, 2353.16, 375.067, 35.6998, 0, 0, 0, 0, 100, 0),
(19306000, 31, 2336.31, 398.609, 33.667, 0, 0, 0, 0, 100, 0),
(19306000, 32, 2317.42, 398.008, 33.667, 0, 0, 0, 0, 100, 0),
(19306000, 33, 2287.33, 396.612, 34.0165, 0, 0, 0, 0, 100, 0),
(19306000, 34, 2282.92, 397.991, 34.0191, 0, 0, 0, 0, 100, 0),
(19306000, 35, 2278.45, 412.452, 33.8723, 0, 0, 0, 0, 100, 0),
(19306000, 36, 2277.29, 427.822, 33.94, 0, 0, 0, 0, 100, 0),
(19306000, 37, 2274.43, 430.901, 33.9814, 0, 0, 0, 0, 100, 0),
(19306000, 38, 2274.19, 425.889, 33.9729, 0, 0, 0, 0, 100, 0),
(19306000, 39, 2278.26, 412.01, 33.8726, 0, 0, 0, 0, 100, 0);

-- Deathguard Bartholomew
UPDATE `creature_template_addon` SET `path_id`=19294300 WHERE  `entry`=1742;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=192943;
DELETE FROM `waypoint_data` WHERE `id`=19294300;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19294300, 1, 2427.29, 343.707, 34.6791, 0, 120000, 0, 0, 100, 0),
(19294300, 2, 2424.49, 357.788, 33.8811, 0, 0, 0, 0, 100, 0),
(19294300, 3, 2414.58, 366.685, 33.9739, 0, 0, 0, 0, 100, 0),
(19294300, 4, 2403.27, 382.786, 33.8938, 0, 0, 0, 0, 100, 0),
(19294300, 5, 2393.81, 402.025, 33.8906, 0, 0, 0, 0, 100, 0),
(19294300, 6, 2388.06, 416.934, 33.8906, 0, 0, 0, 0, 100, 0),
(19294300, 7, 2384.33, 422.386, 33.9003, 0, 0, 0, 0, 100, 0),
(19294300, 8, 2377.16, 427.586, 34.0532, 0, 0, 0, 0, 100, 0),
(19294300, 9, 2369.87, 430.024, 33.6414, 0, 0, 0, 0, 100, 0),
(19294300, 10, 2366.1, 431.249, 33.5516, 0, 0, 0, 0, 100, 0),
(19294300, 11, 2362.42, 428.377, 33.5516, 0, 0, 0, 0, 100, 0),
(19294300, 12, 2357.18, 428.15, 33.436, 0, 0, 0, 0, 100, 0),
(19294300, 13, 2352.71, 429.819, 33.3357, 0, 0, 0, 0, 100, 0),
(19294300, 14, 2341.59, 418.001, 33.6679, 0, 0, 0, 0, 100, 0),
(19294300, 15, 2340.03, 413.245, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 16, 2338.77, 401.993, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 17, 2334.18, 397.699, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 18, 2317.49, 397.706, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 19, 2293.24, 396.714, 34.0162, 0, 0, 0, 0, 100, 0),
(19294300, 20, 2290.19, 392.574, 34.0859, 0, 0, 0, 0, 100, 0),
(19294300, 21, 2289.16, 393.135, 34.0749, 0, 120000, 0, 0, 100, 0),
(19294300, 40, 2424.49, 357.788, 33.8811, 0, 0, 0, 0, 100, 0),
(19294300, 39, 2414.58, 366.685, 33.9739, 0, 0, 0, 0, 100, 0),
(19294300, 38, 2403.27, 382.786, 33.8938, 0, 0, 0, 0, 100, 0),
(19294300, 37, 2393.81, 402.025, 33.8906, 0, 0, 0, 0, 100, 0),
(19294300, 36, 2388.06, 416.934, 33.8906, 0, 0, 0, 0, 100, 0),
(19294300, 35, 2384.33, 422.386, 33.9003, 0, 0, 0, 0, 100, 0),
(19294300, 34, 2377.16, 427.586, 34.0532, 0, 0, 0, 0, 100, 0),
(19294300, 33, 2369.87, 430.024, 33.6414, 0, 0, 0, 0, 100, 0),
(19294300, 32, 2366.1, 431.249, 33.5516, 0, 0, 0, 0, 100, 0),
(19294300, 31, 2362.42, 428.377, 33.5516, 0, 0, 0, 0, 100, 0),
(19294300, 30, 2357.18, 428.15, 33.436, 0, 0, 0, 0, 100, 0),
(19294300, 29, 2352.71, 429.819, 33.3357, 0, 0, 0, 0, 100, 0),
(19294300, 28, 2341.59, 418.001, 33.6679, 0, 0, 0, 0, 100, 0),
(19294300, 27, 2340.03, 413.245, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 26, 2338.77, 401.993, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 25, 2334.18, 397.699, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 24, 2317.49, 397.706, 33.6676, 0, 0, 0, 0, 100, 0),
(19294300, 23, 2293.24, 396.714, 34.0162, 0, 0, 0, 0, 100, 0),
(19294300, 22, 2290.19, 392.574, 34.0859, 0, 0, 0, 0, 100, 0);

--  rndmmovement for bats and zombies
UPDATE `creature` SET `spawndist`=7, `MovementType`=1 WHERE  `id` IN (2311, 1526, 1525, 1553, 1547, 10357);
UPDATE `creature_template_addon` SET `emote`=233 WHERE  `entry`=2135;
UPDATE `creature_template_addon` SET `emote`=69 WHERE  `entry`=1499; -- Magister Sevren
UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE `id` IN (53526, 620, 1527, 39049, 1520, 1549, 1674, 1941, 1530, 1536, 4281, 4283, 4282, 1528, 51964, 51965, 51961, 1554, 1555, 1545, 1543, 1544, 1541, 1534, 1532, 1531, 1522, 1523, 1656, 1675, 1529);



-- Deathguard Lundmark
UPDATE `creature_template_addon` SET `path_id`=19250200 WHERE  `entry`=5725;
UPDATE `creature` SET `MovementType`=2, `spawndist`=0 WHERE  `guid`=192502;
DELETE FROM `waypoint_data` WHERE `id`=19250200;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19250200, 1, 2129.376709, 953.351624, 29.058704, 0, 0, 0, 0, 100, 0),
(19250200, 2, 2104.569580, 878.170593, 32.416527, 0, 0, 0, 0, 100, 0),
(19250200, 3, 2093.044434, 813.923157, 33.563000, 0, 0, 0, 0, 100, 0),
(19250200, 4, 2093.758057, 767.299744, 33.564106, 0, 0, 0, 0, 100, 0),
(19250200, 5, 2101.969971, 750.510376, 33.560898, 0, 0, 0, 0, 100, 0),
(19250200, 6, 2167.280518, 694.103760, 33.355125, 0, 0, 0, 0, 100, 0),
(19250200, 7, 2180.792480, 682.982788, 33.393795, 0, 0, 0, 0, 100, 0),
(19250200, 8, 2239.743652, 601.869629, 33.333622, 0, 0, 0, 0, 100, 0),
(19250200, 9, 2261.292969, 541.476624, 33.534515, 0, 0, 0, 0, 100, 0),
(19250200, 10, 2255.469482, 505.762604, 34.113213, 0, 0, 0, 0, 100, 0),
(19250200, 11, 2275.757813, 426.780182, 33.952923, 0, 0, 0, 0, 100, 0),
(19250200, 12, 2283.910156, 385.661133, 34.126793, 0, 0, 0, 0, 100, 0),
(19250200, 13, 2285.265381, 348.391113, 33.624481, 0, 0, 0, 0, 100, 0),
(19250200, 14, 2273.001953, 315.611206, 33.431656, 0, 0, 0, 0, 100, 0),
(19250200, 15, 2255.712402, 290.769836, 33.507896, 0, 0, 0, 0, 100, 0),
(19250200, 16, 2232.237549, 275.507813, 33.573711, 0, 0, 0, 0, 100, 0),
(19250200, 17, 2207.864746, 248.755692, 33.631718, 0, 0, 0, 0, 100, 0),
(19250200, 18, 2173.530518, 226.758133, 38.763466, 0, 0, 0, 0, 100, 0),
(19250200, 19, 2164.428711, 214.597580, 41.493935, 0, 0, 0, 0, 100, 0),
(19250200, 20, 2160.420410, 183.353714, 41.991291, 0, 0, 0, 0, 100, 0),
(19250200, 21, 2143.672607, 170.800919, 39.302605, 0, 0, 0, 0, 100, 0),
(19250200, 22, 2120.702393, 159.453781, 36.839264, 0, 0, 0, 0, 100, 0),
(19250200, 23, 2090.853027, 153.441589, 34.950005, 0, 0, 0, 0, 100, 0),
(19250200, 24, 2067.516357, 154.855606, 33.928402, 0, 0, 0, 0, 100, 0),
(19250200, 25, 2045.528687, 162.187668, 33.877983, 0, 0, 0, 0, 100, 0),
(19250200, 26, 2067.516357, 154.855606, 33.928402, 0, 0, 0, 0, 100, 0),
(19250200, 27, 2090.853027, 153.441589, 34.950005, 0, 0, 0, 0, 100, 0),
(19250200, 28, 2120.702393, 159.453781, 36.839264, 0, 0, 0, 0, 100, 0),
(19250200, 29, 2143.672607, 170.800919, 39.302605, 0, 0, 0, 0, 100, 0),
(19250200, 30, 2160.420410, 183.353714, 41.991291, 0, 0, 0, 0, 100, 0),
(19250200, 31, 2164.428711, 214.597580, 41.493935, 0, 0, 0, 0, 100, 0),
(19250200, 32, 2173.530518, 226.758133, 38.763466, 0, 0, 0, 0, 100, 0),
(19250200, 33, 2207.864746, 248.755692, 33.631718, 0, 0, 0, 0, 100, 0),
(19250200, 34, 2232.237549, 275.507813, 33.573711, 0, 0, 0, 0, 100, 0),
(19250200, 35, 2255.712402, 290.769836, 33.507896, 0, 0, 0, 0, 100, 0),
(19250200, 36, 2273.001953, 315.611206, 33.431656, 0, 0, 0, 0, 100, 0),
(19250200, 37, 2285.265381, 348.391113, 33.624481, 0, 0, 0, 0, 100, 0),
(19250200, 38, 2283.910156, 385.661133, 34.126793, 0, 0, 0, 0, 100, 0),
(19250200, 39, 2275.757813, 426.780182, 33.952923, 0, 0, 0, 0, 100, 0),
(19250200, 40, 2255.469482, 505.762604, 34.113213, 0, 0, 0, 0, 100, 0),
(19250200, 41, 2261.292969, 541.476624, 33.534515, 0, 0, 0, 0, 100, 0),
(19250200, 42, 2239.743652, 601.869629, 33.333622, 0, 0, 0, 0, 100, 0),
(19250200, 43, 2180.792480, 682.982788, 33.393795, 0, 0, 0, 0, 100, 0),
(19250200, 44, 2167.280518, 694.103760, 33.355125, 0, 0, 0, 0, 100, 0),
(19250200, 45, 2101.969971, 750.510376, 33.560898, 0, 0, 0, 0, 100, 0),
(19250200, 46, 2093.758057, 767.299744, 33.564106, 0, 0, 0, 0, 100, 0),
(19250200, 47, 2093.044434, 813.923157, 33.563000, 0, 0, 0, 0, 100, 0),
(19250200, 48, 2104.569580, 878.170593, 32.416527, 0, 0, 0, 0, 100, 0),
(19250200, 49, 2129.376709, 953.351624, 29.058704, 0, 0, 0, 0, 100, 0),
(19250200, 50, 2187.656250, 1044.816895, 29.563383, 0, 0, 0, 0, 100, 0);

-- Pathing for  Entry: 11194 'TDB FORMAT' 
SET @NPC := 192616;
SET @PATH := @NPC * 100;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1752.673,`position_y`=-714.7821,`position_z`=60.37662 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1752.673,-714.7821,60.37662,0,0,0,0,100,0),
(@PATH,2,1736.573,-714.5442,60.15818,0,0,0,0,100,0),
(@PATH,3,1714.988,-712.9315,55.49191,0,0,0,0,100,0),
(@PATH,4,1724.267,-713.0399,59.70621,0,0,0,0,100,0),
(@PATH,5,1725.058,-713.2177,59.80788,0,0,0,0,100,0),
(@PATH,6,1736.737,-714.7726,60.35667,0,0,0,0,100,0),
(@PATH,7,1752.949,-714.8248,60.39524,0,0,0,0,100,0),
(@PATH,8,1773.094,-713.1844,60.37144,0,0,0,0,100,0),
(@PATH,9,1788.519,-725.1661,59.74324,0,0,0,0,100,0),
(@PATH,10,1786.503,-723.2821,60.24324,0,0,0,0,100,0),
(@PATH,11,1784.11,-721.4037,60.33015,0,0,0,0,100,0),
(@PATH,12,1772.887,-713.1495,60.40531,0,0,0,0,100,0),
(@PATH,13,1752.611,-714.7417,60.37502,0,0,0,0,100,0),
(@PATH,14,1736.492,-714.5533,60.16143,0,0,0,0,100,0);
-- 0x1C091000000AEE80000032000056BB7C .go 1752.673 -714.7821 60.37662

-- Pathing for  Entry: 1532 'TDB FORMAT' 
SET @NPC := 193916;
SET @PATH := 19391600;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1983.394,`position_y`=-440.334,`position_z`=34.99339 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 1983.83, -440.439, 34.5588, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 1984.13, -450.935, 34.5257, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 1984.43, -464.378, 34.5257, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 1975.09, -468.146, 34.5254, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 1962.36, -467.938, 34.5404, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 1973.33, -468.258, 34.5264, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 1973.45, -460.909, 34.8547, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 1973.53, -451.908, 35.399, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 1973.74, -443.041, 35.3663, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 1968.77, -441.308, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 1954.79, -440.639, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 1950.82, -452.504, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 1951.18, -442.234, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 1951.18, -442.234, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 1959.46, -440.023, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 1972.76, -440.347, 35.4217, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 1973.34, -449.776, 35.3569, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 1973.39, -467.986, 34.5252, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 1962.42, -467.647, 34.542, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 1970.81, -467.957, 34.5254, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 1984.59, -468.076, 34.5258, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 1984.27, -458.512, 34.5258, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 1983.38, -434.471, 35.0653, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 1992.01, -434.073, 35.079, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 2012.88, -433.101, 35.2828, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 2020.33, -432.45, 35.3943, 0, 0, 0, 0, 100, 0),
(@PATH, 27, 2018.74, -417.005, 35.4527, 0, 0, 0, 0, 100, 0),
(@PATH, 28, 2017.34, -403.076, 35.4527, 0, 0, 0, 0, 100, 0),
(@PATH, 29, 2015.86, -387.374, 35.4527, 0, 0, 0, 0, 100, 0),
(@PATH, 30, 2015.94, -394.957, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 31, 2015.71, -415.956, 35.4524, 0, 0, 0, 0, 100, 0),
(@PATH, 32, 2015.53, -433.021, 35.3335, 0, 0, 0, 0, 100, 0),
(@PATH, 33, 2006.09, -433.57, 35.1885, 0, 0, 0, 0, 100, 0),
(@PATH, 34, 1985.2, -434.455, 35.0481, 0, 0, 0, 0, 100, 0);
-- 0x1C09100000017F0000003200005A1B7B .go 1983.394 -440.334 34.99339

-- Pathing for  Entry: 1532 'TDB FORMAT' 
SET @NPC := 192822;
SET @PATH := 192822 * 100;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 1798.26, 645.24, 39.4603, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 1801.42, 626.89, 38.652, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 1798.85, 617.852, 39.0081, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 1794.84, 609.532, 39.5333, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 1808.04, 604.461, 40.8277, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 1824.14, 601.482, 42.2416, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 1816.72, 618.558, 39.0602, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 1807.09, 637.378, 37.9439, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 1800.27, 654.705, 39.4252, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 1792.63, 669.352, 41.8409, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 1784.72, 683.692, 43.249, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 1790.96, 668.699, 42.2061, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 1796.48, 653.429, 40.0754, 0, 0, 0, 0, 100, 0);

-- Gretchen Dedmar SAI
SET @ENTRY := 1521;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,24988,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gretchen Dedmar - On Quest 'The Chill of Death' Taken - Say Line 0"),
(@ENTRY,0,1,0,20,0,100,0,24988,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gretchen Dedmar - On Quest 'The Chill of Death' Finished - Say Line 1");

DELETE FROM `creature_text` WHERE `entry`=1521;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(1521, 0, 0, 'Save me from the cold!', 12, 0, 100, 0, 0, 0, 'Gretchen Dedmar'),
(1521, 1, 0, 'So cold...', 12, 0, 100, 0, 0, 0, 'Gretchen Dedmar');

-- Pathing for  Entry: 1502 'TDB FORMAT' 
SET @NPC := 193655;
SET @PATH := @NPC * 100;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1932.444,`position_y`=1590.943,`position_z`=83.48648 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1932.444,1590.943,83.48648,0,0,0,0,100,0),
(@PATH,2,1942.309,1594.998,83.16008,0,0,0,0,100,0),
(@PATH,3,1951.316,1592.373,82.46585,0,0,0,0,100,0),
(@PATH,4,1974.542,1581.481,80.87744,0,0,0,0,100,0),
(@PATH,5,1988.139,1571.806,79.64528,0,0,0,0,100,0),
(@PATH,6,1998.26,1554.868,78.61601,0,0,0,0,100,0),
(@PATH,7,1999.297,1542.252,77.75618,0,0,0,0,100,0),
(@PATH,8,1991.584,1533.699,81.62056,0,0,0,0,100,0),
(@PATH,9,1992.814,1522.747,79.55931,0,0,0,0,100,0),
(@PATH,10,1998.614,1515.133,76.91168,0,0,0,0,100,0),
(@PATH,11,2003.37,1499.574,73.11504,0,0,0,0,100,0),
(@PATH,12,1986.435,1493.605,83.25249,0,0,0,0,100,0),
(@PATH,13,1969.808,1482.992,83.57193,0,0,0,0,100,0),
(@PATH,14,1965.593,1480.195,82.77003,0,0,0,0,100,0),
(@PATH,15,1965.535,1480.957,82.68534,0,0,0,0,100,0),
(@PATH,16,1964.197,1480.759,82.74674,0,0,0,0,100,0),
(@PATH,17,1964.256,1479.309,82.39164,0,0,0,0,100,0),
(@PATH,18,1965.723,1480.622,82.60502,0,0,0,0,100,0),
(@PATH,19,1964.204,1479.569,82.46037,0,0,0,0,100,0),
(@PATH,20,1964.442,1479.825,82.49308,0,0,0,0,100,0),
(@PATH,21,1966.99,1478.805,81.97617,0,0,0,0,100,0),
(@PATH,22,1962.672,1480.034,82.67216,0,0,0,0,100,0),
(@PATH,23,1965.086,1480.569,82.59452,0,0,0,0,100,0),
(@PATH,24,1966.052,1480.834,82.6558,0,0,0,0,100,0),
(@PATH,25,1965.037,1480.308,82.53764,0,0,0,0,100,0),
(@PATH,26,1963.071,1478.826,82.15226,0,0,0,0,100,0),
(@PATH,27,1964.471,1478.97,82.16947,0,0,0,0,100,0),
(@PATH,28,1962.914,1478.641,82.39225,0,0,0,0,100,0),
(@PATH,29,1965.018,1478.875,82.15812,0,0,0,0,100,0),
(@PATH,30,1963.611,1479.624,82.54459,0,0,0,0,100,0),
(@PATH,31,1964.935,1479.779,82.42277,0,0,0,0,100,0),
(@PATH,32,1965.74,1480.748,82.63529,0,0,0,0,100,0),
(@PATH,33,1962.509,1479.685,82.63041,0,0,0,0,100,0),
(@PATH,34,1899.472,1506.11,89.18507,0,0,0,0,100,0),
(@PATH,35,1964.129,1482.499,83.14286,0,0,0,0,100,0),
(@PATH,36,1962.953,1480.367,82.7122,0,0,0,0,100,0),
(@PATH,37,1962.84,1482.145,82.92545,0,0,0,0,100,0),
(@PATH,38,1951.722,1476.789,80.07114,0,0,0,0,100,0),
(@PATH,39,1966.133,1497.141,87.51283,0,0,0,0,100,0),
(@PATH,40,1962.49,1502.687,88.28194,0,0,0,0,100,0),
(@PATH,41,1931.024,1520.287,87.80495,0,0,0,0,100,0),
(@PATH,42,1919.053,1526.27,87.28525,0,0,0,0,100,0),
(@PATH,43,1931.345,1572.519,84.00304,0,0,0,0,100,0),
(@PATH,44,1932.618,1590.822,83.50961,0,0,0,0,100,0),
(@PATH,45,1942.247,1594.761,83.02557,0,0,0,0,100,0),
(@PATH,46,1951.132,1592.334,82.47534,0,0,0,0,100,0);
-- 0x1C0910000001778000003200005A37D1 .go 1932.444 1590.943 83.48648

-- Pathing for  Entry: 1540 'TDB FORMAT' 
SET @NPC := 194519;
SET @PATH := @NPC * 100;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2868.919,`position_y`=-497.5436,`position_z`=101.3836 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2868.919,-497.5436,101.3836,0,0,0,0,100,0),
(@PATH,2,2858.415,-487.3856,100.1744,0,0,0,0,100,0),
(@PATH,3,2856.972,-486.0324,99.78797,0,0,0,0,100,0),
(@PATH,4,2843.022,-484.7172,99.42996,0,0,0,0,100,0),
(@PATH,5,2859.987,-484.1879,99.72915,0,0,0,0,100,0),
(@PATH,6,2866.828,-492.3687,100.8656,0,0,0,0,100,0),
(@PATH,7,2877.11,-515.8617,103.5658,0,0,0,0,100,0),
(@PATH,8,2882.539,-528.3811,106.7998,0,0,0,0,100,0),
(@PATH,9,2886.53,-532.085,106.4599,0,0,0,0,100,0),
(@PATH,10,2892.335,-533.3361,106.1121,0,0,0,0,100,0),
(@PATH,11,2892.335,-533.3361,106.1121,3,0,0,0,100,0),
(@PATH,14,2877.11,-515.8617,103.5658,0,0,0,0,100,0),
(@PATH,13,2882.539,-528.3811,106.7998,0,0,0,0,100,0),
(@PATH,12,2886.53,-532.085,106.4599,0,0,0,0,100,0);
-- 0x20091000000181000000320001DA3C6A .go 2868.919 -497.5436 101.3836

UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE  `guid` IN (325165, 325283, 325169);
UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE  `id` IN (1504, 1512, 1509, 1508, 1513); 
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id` IN (1505);
UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE `id` IN (4075, 1501); 
-- rndmmovement for zombies and spiders
UPDATE `creature_template` SET `flags_extra`=128 WHERE  `entry` IN (41200, 50373); -- make some triggers invisible

-- Arthura WPs
UPDATE `creature_template_addon` SET `path_id`=19275700 WHERE  `entry`=49129;
UPDATE `creature` SET `MovementType`=2 WHERE  `guid`=192757;
UPDATE `creature_template` SET `InhabitType`=4 WHERE  `entry`=49129;
DELETE FROM `waypoint_data` WHERE `id`=19275700;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19275700, 1, 1724.74, 1656.3, 129.965, 0, 0, 0, 0, 100, 0),
(19275700, 2, 1715.78, 1653.78, 130.575, 0, 0, 0, 0, 100, 0),
(19275700, 3, 1708.85, 1655.94, 131.917, 0, 0, 0, 0, 100, 0),
(19275700, 4, 1703.59, 1662.75, 135.131, 0, 0, 0, 0, 100, 0),
(19275700, 5, 1707.63, 1669.57, 135.622, 0, 0, 0, 0, 100, 0),
(19275700, 6, 1712.76, 1678.44, 135.328, 0, 0, 0, 0, 100, 0),
(19275700, 7, 1714.48, 1680.85, 136.947, 0, 0, 0, 0, 100, 0),
(19275700, 8, 1721.21, 1690.48, 133.867, 0, 0, 0, 0, 100, 0),
(19275700, 9, 1723.79, 1682.86, 133.7, 0, 0, 0, 0, 100, 0),
(19275700, 10, 1729.12, 1660.73, 129.921, 0, 0, 0, 0, 100, 0),
(19275700, 11, 1730.36, 1651.11, 126.577, 0, 0, 0, 0, 100, 0),
(19275700, 12, 1730.8, 1645.58, 125.786, 0, 0, 0, 0, 100, 0),
(19275700, 13, 1730, 1639.18, 123.389, 0, 0, 0, 0, 100, 0),
(19275700, 14, 1733.74, 1645.03, 125.108, 0, 0, 0, 0, 100, 0),
(19275700, 15, 1737.1, 1651.43, 124.676, 0, 0, 0, 0, 100, 0),
(19275700, 16, 1741.5, 1665.87, 125.012, 0, 0, 0, 0, 100, 0),
(19275700, 17, 1741.39, 1668.2, 125.692, 0, 0, 0, 0, 100, 0),
(19275700, 18, 1736.75, 1671.43, 128.104, 0, 0, 0, 0, 100, 0),
(19275700, 19, 1730.89, 1668.52, 128.597, 0, 0, 0, 0, 100, 0),
(19275700, 20, 1729.21, 1661.78, 128.619, 0, 0, 0, 0, 100, 0);

-- Deathguard Philip WPs
DELETE FROM `creature_addon` WHERE `guid`=192496;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(192496, 192496*100, 0, 0, 0, 0, NULL);
UPDATE `creature` SET `MovementType`=2 WHERE  `guid`=192496;
DELETE FROM `waypoint_data` WHERE `id`=19249600;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19249600, 1, 1864.6, 1588.79, 91.9528, 0, 0, 0, 0, 100, 0),
(19249600, 2, 1847.66, 1589.92, 93.1893, 0, 0, 0, 0, 100, 0),
(19249600, 3, 1830.08, 1590.87, 94.212, 0, 0, 0, 0, 100, 0),
(19249600, 4, 1827.76, 1591.13, 94.4932, 0, 0, 0, 0, 100, 0),
(19249600, 5, 1819.76, 1583.46, 95.7617, 0, 0, 0, 0, 100, 0),
(19249600, 6, 1820.29, 1583.7, 95.7512, 0, 12000, 0, 0, 100, 0),
(19249600, 7, 1818.45, 1577.18, 95.6734, 0, 0, 0, 0, 100, 0),
(19249600, 8, 1819.62, 1570.64, 95.651, 0, 0, 0, 0, 100, 0),
(19249600, 9, 1822.82, 1566.62, 95.6222, 0, 0, 0, 0, 100, 0),
(19249600, 10, 1828.65, 1565.43, 95.6222, 0, 12000, 0, 0, 100, 0),
(19249600, 11, 1830.56, 1577.89, 95.6222, 0, 0, 0, 0, 100, 0),
(19249600, 12, 1834.52, 1583.09, 94.5435, 0, 0, 0, 0, 100, 0),
(19249600, 13, 1835.25, 1586.03, 94.0295, 0, 0, 0, 0, 100, 0),
(19249600, 14, 1838.26, 1584.23, 94.2382, 0, 0, 0, 0, 100, 0),
(19249600, 15, 1840.03, 1583.26, 94.3261, 0, 0, 0, 0, 100, 0),
(19249600, 16, 1845.7, 1580.89, 94.6471, 0, 0, 0, 0, 100, 0),
(19249600, 17, 1848.39, 1562.46, 94.9115, 0, 12000, 0, 0, 100, 0),
(19249600, 18, 1849.56, 1571.14, 94.8565, 0, 0, 0, 0, 100, 0),
(19249600, 19, 1852.94, 1584.25, 93.2881, 0, 0, 0, 0, 100, 0),
(19249600, 20, 1864.81, 1587.66, 91.9009, 0, 0, 0, 0, 100, 0),
(19249600, 21, 1880.22, 1588.26, 90.1211, 0, 12000, 0, 0, 100, 0);

-- maquell Ebenwood
DELETE FROM `creature_addon` WHERE `guid`=192699;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(192699, 192699*100, 0, 0, 0, 0, NULL);
UPDATE `creature` SET `MovementType`=2 WHERE  `guid`=192699;
DELETE FROM `waypoint_data` WHERE `id`=19269900;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(19269900, 1, 1843.27, 1622.26, 96.934, 0, 0, 0, 0, 100, 0),
(19269900, 2, 1843.45, 1612.01, 96.9644, 0, 0, 0, 0, 100, 0),
(19269900, 3, 1843.54, 1606.17, 94.574, 0, 0, 0, 0, 100, 0),
(19269900, 4, 1843.69, 1597.78, 94.1531, 0, 0, 0, 0, 100, 0),
(19269900, 5, 1844.31, 1593.87, 93.54, 0, 0, 0, 0, 100, 0),
(19269900, 6, 1845.34, 1590.53, 93.2546, 0, 0, 0, 0, 100, 0),
(19269900, 7, 1848.22, 1589, 93.1615, 0, 0, 0, 0, 100, 0),
(19269900, 8, 1852.06, 1588.81, 92.9397, 0, 0, 0, 0, 100, 0),
(19269900, 9, 1861.31, 1588.43, 92.3485, 0, 9000, 0, 0, 100, 0),
(19269900, 10, 1860.1, 1582.73, 92.8286, 0, 0, 0, 0, 100, 0),
(19269900, 11, 1860.84, 1575.64, 94.313, 0, 0, 0, 0, 100, 0),
(19269900, 12, 1856.11, 1574.85, 94.313, 0, 0, 0, 0, 100, 0),
(19269900, 13, 1856.81, 1574.82, 94.313, 0, 20000, 0, 0, 100, 0),
(19269900, 14, 1860.65, 1575.1, 94.313, 0, 0, 0, 0, 100, 0),
(19269900, 15, 1859.94, 1581.8, 92.9871, 0, 0, 0, 0, 100, 0),
(19269900, 16, 1861.89, 1587.26, 92.2626, 0, 6000, 0, 0, 100, 0),
(19269900, 17, 1850.55, 1589.45, 93.0564, 0, 0, 0, 0, 100, 0),
(19269900, 18, 1844.98, 1590.98, 93.2717, 0, 0, 0, 0, 100, 0),
(19269900, 19, 1843.93, 1599.2, 94.3924, 0, 0, 0, 0, 100, 0),
(19269900, 20, 1843.22, 1607.13, 94.7863, 0, 0, 0, 0, 100, 0),
(19269900, 21, 1843.16, 1612.26, 96.9614, 0, 0, 0, 0, 100, 0),
(19269900, 22, 1843.17, 1622.76, 96.9337, 0, 0, 0, 0, 100, 0),
(19269900, 23, 1842.95, 1633.85, 96.9337, 0, 10000, 0, 0, 100, 0);

UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id` IN (1502, 1890);

-- Rattlecage Skeleton SAI
SET @GUID := -325170;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1890;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,25,0,100,0,0,0,0,0,53,0,325170,0,0,0,0,1,0,0,0,0,0,0,0,"Rattlecage Skeleton - On Reset - Start Waypoint"),
(@GUID,0,1,0,40,0,100,0,2,325170,0,0,49,0,0,0,0,0,0,19,1736,50,0,0,0,0,0,"Rattlecage Skeleton - On Waypoint 2 Reached - Start Attacking"),
(@GUID,0,2,0,0,0,100,0,2000,2000,15000,15000,75,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rattlecage Skeleton - In Combat - Add Aura 'Battle Shout'"),
(@GUID,0,3,0,8,0,100,0,95826,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rattlecage Skeleton - On Spellhit 'Shoot' - Kill Self");

-- Wretched Ghoul SAI
SET @GUID := -193832;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=1502;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,25,0,100,0,0,0,0,0,53,0,192497,0,0,0,0,1,0,0,0,0,0,0,0,"Wretched Ghoul - On Reset - Start Waypoint"),
(@GUID,0,1,3,40,0,100,0,2,192497,0,0,49,0,0,0,0,0,0,19,1736,50,0,0,0,0,0,"Wretched Ghoul - On Waypoint 2 Reached - Start Attacking"),
(@GUID,0,2,0,8,0,100,0,95826,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wretched Ghoul - On Spellhit 'Shoot' - Kill Self"),
(@GUID,0,3,0,61,0,100,0,2,192497,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wretched Ghoul - On Waypoint 2 Reached - Kill Self");

DELETE FROM `waypoints` WHERE `entry`=192497;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(192497, 1, 1900.452393, 1586.791138, 86.948174, ''),
(192497, 2, 1884.441, 1587.978, 89.5357, '');

-- Deathguard Randolph SAI
SET @ENTRY := 1736;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,2000,2000,3000,11,95826,66,0,0,0,0,2,0,0,0,0,0,0,0,"Deathguard Randolph - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathguard Randolph - On Reset - Set Reactstate Aggressive");

UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE `id` IN (53526, 620, 1527, 39049, 1520, 1549, 1674, 1941, 1530, 1536, 4281, 4283, 4282, 1528, 51964, 51965, 51961, 1554, 1555, 1545, 1543, 1544, 1541, 1534, 1532, 1531, 1522, 1523, 1656, 1675, 1529);

