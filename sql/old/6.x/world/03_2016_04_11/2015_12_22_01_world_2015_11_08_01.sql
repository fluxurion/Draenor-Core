SET @CGUID   := 86984;

DELETE FROM `smart_scripts` WHERE `entryorguid`IN(20102,18927,19177,19169,19175,19171,19172,19176,19178,19173,19148)  AND `source_type`=0 AND  `id` =12;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(19148,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Dwarf Commoner - On Gossip Hello - Send Gossip'),
(19171,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Dreanei Commoner - On Gossip Hello - Send Gossip'),
(20102,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Goblin Commoner - On Gossip Hello - Send Gossip'),
(19172,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Gnome Commoner - On Gossip Hello - Send Gossip'),
(19173,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Night Elf Commoner - On Gossip Hello - Send Gossip'),
(18927,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Human Commoner - On Gossip Hello - Send Gossip'),
(19175,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Orc Commoner - On Gossip Hello - Send Gossip'),
(19176,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Tauren Commoner - On Gossip Hello - Send Gossip'),
(19177,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Troll Commoner - On Gossip Hello - Send Gossip'),
(19178,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Forsaken Commoner - On Gossip Hello - Send Gossip'),
(19169,0,12,0,64,0,100,0,0,0,0,0,98,10513,14544,0,0,0,0,7,0,0,0,0,0,0,0,'Blood Elf Commoner - On Gossip Hello - Send Gossip');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` in(20102,18927,19177,19169,19175,19171,19172,19176,19178,19173,19148) AND `SourceGroup`=13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 13, 19148, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 20102, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 18927, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19171, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19172, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19173, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19175, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19176, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19177, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19178, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active'),
(22, 13, 19169, 0, 0, 12, 1, 51, 0, 0, 0, 0, 0, '', 'Commoner - DOTD must be active');

UPDATE `smart_scripts` SET `target_type`=7 WHERE  `entryorguid` IN(20102,18927,19177,19169,19175,19171,19172,19176,19178,19173,19148) AND `source_type`=0 AND `id`=11;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+37;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 18927, 571, 1, 1, 5740.709, 686.1215, 643.8965, 3.822271, 120, 0, 0), -- 18927 (Area: 4395) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+1, 18927, 571, 1, 1, 5739.358, 684.6215, 644.1913, 0.8726646, 120, 0, 0), -- 18927 (Area: 4395) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+2, 20102, 571, 1, 1, 5777.649, 728.8993, 618.6356, 0.1396263, 120, 0, 0), -- 20102 (Area: 4739) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+3, 20102, 571, 1, 1, 5779.502, 729.0729, 618.6434, 3.228859, 120, 0, 0), -- 20102 (Area: 4739) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+4, 19169, 571, 1, 1, 5942.946, 629.2344, 650.668, 1.570796, 120, 0, 0), -- 19169 (Area: 4613) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+5, 19169, 571, 1, 1, 5943.168, 630.8941, 650.6661, 4.904375, 120, 0, 0), -- 19169 (Area: 4613) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+6, 19169, 571, 1, 1, 5899.039, 532.7656, 640.9794, 4.904375, 120, 0, 0), -- 19169 (Area: 4613) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+7, 19169, 571, 1, 1, 5899.096, 530.8976, 641.0562, 1.675516, 120, 0, 0), -- 19169 (Area: 4613) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+8, 18927, 571, 1, 1, 5664.31, 666.2726, 652.064, 1.396263, 120, 0, 0), -- 18927 (Area: 4613) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+9, 18927, 571, 1, 1, 5664.366, 668.0469, 652.0507, 4.904375, 120, 0, 0), -- 18927 (Area: 4613) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+10, 19177, 1, 1, 1, 1773.523, -4360.087, 102.4606, 1.291544, 120, 0, 0), -- 19177 (Area: 5166) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+11, 19177, 1, 1, 1, 1774.47, -4356.316, 102.4248, 4.485496, 120, 0, 0), -- 19177 (Area: 5166) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+12, 19175, 1, 1, 1, 1614.998, -4402.952, 15.43872, 0.1570796, 120, 0, 0), -- 19175 (Area: 5170) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+13, 19175, 1, 1, 1, 1616.771, -4402.656, 15.60533, 3.333579, 120, 0, 0), -- 19175 (Area: 5170) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+14, 19178, 0, 1, 1, 1627.801, 224.57, -43.01935, 4.153883, 120, 0, 0), -- 19178 (Area: 1497) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+15, 19178, 0, 1, 1, 1626.697, 222.6995, -43.01934, 1.012291, 120, 0, 0), -- 19178 (Area: 1497) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+16, 19178, 0, 1, 1, 1574.551, 267.5832, -43.01934, 3.769911, 120, 0, 0), -- 19178 (Area: 1497) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+17, 19178, 0, 1, 1, 1573.045, 265.9552, -43.01934, 0.5934119, 120, 0, 0), -- 19178 (Area: 1497) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+18, 19169, 530, 1, 1, 9687.96, -7346.092, 11.95602, 1.500983, 120, 0, 0), -- 19169 (Area: 3487) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+19, 19169, 530, 1, 1, 9689.333, -7345.386, 11.91436, 4.206244, 120, 0, 0), -- 19169 (Area: 3487) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+20, 19169, 530, 1, 1, 9374.669, -7155.088, 9.336748, 4.956735, 120, 0, 0), -- 19169 (Area: 0) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+21, 19169, 530, 1, 1, 9375.072, -7157.061, 9.255877, 1.605703, 120, 0, 0), -- 19169 (Area: 0) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+22, 20102, 530, 1, 1, -1917.814, 5441.85, -12.34484, 2.356194, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+23, 20102, 530, 1, 1, -1920.168, 5443.518, -12.34484, 5.864306, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+24, 20102, 530, 1, 1, -1875.934, 5376.202, -12.34478, 0.8203048, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+25, 20102, 530, 1, 1, -1875.055, 5378.035, -12.34478, 4.363323, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+26, 20102, 530, 1, 1, -1809.925, 5418.637, -12.34485, 5.550147, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+27, 20102, 530, 1, 1, -1808.356, 5417.01, -12.34484, 2.321288, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+28, 20102, 530, 1, 1, -1818.988, 5305.674, -12.34481, 4.031711, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+29, 20102, 530, 1, 1, -1821.118, 5303.345, -12.34481, 0.7679449, 120, 0, 0), -- 20102 (Area: 3703) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+30, 19171, 530, 1, 1, -4270.058, -11333.09, 5.575455, 4.677482, 120, 0, 0), -- 19171 (Area: 3479) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+31, 19171, 530, 1, 1, -4269.713, -11336.51, 5.809308, 1.692969, 120, 0, 0), -- 19171 (Area: 3479) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+32, 19173, 1, 1, 1, 9922.972, 2498.76, 1317.861, 2.443461, 120, 0, 0), -- 19173 (Area: 0) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+33, 19173, 1, 1, 1, 9921.564, 2499.585, 1317.771, 5.61996, 120, 0, 0), -- 19173 (Area: 0) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+34, 18927, 0, 1, 1, -8366.161, 615.2257, 95.35417, 2.635447, 120, 0, 0), -- 18927 (Area: 5314) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+35, 18927, 0, 1, 1, -8368.196, 616.2344, 95.25559, 5.846853, 120, 0, 0), -- 18927 (Area: 5314) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+36, 19148, 0, 1, 1, -4900.874, -957.3143, 501.5414, 4.171337, 120, 0, 0), -- 19148 (Area: 5719) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)
(@CGUID+37, 19148, 0, 1, 1, -4901.802, -958.9554, 501.5429, 1.012291, 120, 0, 0); -- 19148 (Area: 5719) (Auras: 65529 - 65529, 33209 - 33209, 33207 - 33207, 33208 - 33208)

DELETE FROM `game_event_creature` WHERE `eventEntry`=51 AND `guid` BETWEEN @CGUID+0 AND @CGUID+37 ;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(51, @CGUID+0),
(51, @CGUID+1),
(51, @CGUID+2),
(51, @CGUID+3),
(51, @CGUID+4),
(51, @CGUID+5),
(51, @CGUID+6),
(51, @CGUID+7),
(51, @CGUID+8),
(51, @CGUID+9),
(51, @CGUID+10),
(51, @CGUID+11),
(51, @CGUID+12),
(51, @CGUID+13),
(51, @CGUID+14),
(51, @CGUID+15),
(51, @CGUID+16),
(51, @CGUID+17),
(51, @CGUID+18),
(51, @CGUID+19),
(51, @CGUID+20),
(51, @CGUID+21),
(51, @CGUID+22),
(51, @CGUID+23),
(51, @CGUID+24),
(51, @CGUID+25),
(51, @CGUID+26),
(51, @CGUID+27),
(51, @CGUID+28),
(51, @CGUID+29),
(51, @CGUID+30),
(51, @CGUID+31),
(51, @CGUID+32),
(51, @CGUID+33),
(51, @CGUID+34),
(51, @CGUID+35),
(51, @CGUID+36),
(51, @CGUID+37);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+37;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@CGUID+0, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+1, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+2, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+3, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+4, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+5, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+6, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+7, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+8, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+9, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+10, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+11, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+12, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+13, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+14, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+15, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+16, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+17, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+18, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+19, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+20, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+21, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+22, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+23, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+24, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+25, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+26, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+27, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+28, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+29, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+30, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+31, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+32, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+33, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+34, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+35, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+36, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208'),
(@CGUID+37, 0, 0, 0x0, 0x1, 0, '65529 33209 33207 33208');

UPDATE `creature` SET `phaseId`=169 WHERE `phaseId`=1;

