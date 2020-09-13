-- DB/VISUAL: Durotar Farmhand Waypoints Taking from oficial (http://www.wowhead.com/npc=39408)
-- Set wp for creature for guid: 238977
DELETE FROM `creature_addon` WHERE (`guid`=251548);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(251548, '251548', 0, 0, 1, 0, '');

-- Waypoint movement type fr guid: 251548
UPDATE `creature` SET `MovementType`='2' WHERE `guid`='251548';

-- Waypoint data for guid: 251548
DELETE FROM `waypoint_data` WHERE `id`='251548';
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
('251548','1','-489.908','-4353.41','40.0021','0','0','0','100','0'),
('251548','2','-492.31','-4349.97','39.364','0','0','0','100','0'),
('251548','3','-494.995','-4347.17','38.7986','0','0','0','100','0'),
('251548','4','-497.024','-4346.27','38.5282','0','0','0','100','0'),
('251548','5','-498.844','-4345.49','38.3663','0','0','0','100','0'),
('251548','6','-501.554','-4348.2','38.2677','0','0','0','100','0'),
('251548','7','-502.632','-4349.44','38.3013','0','0','0','100','0'),
('251548','8','-504.247','-4349.67','38.3214','0','0','0','100','0'),
('251548','9','-505.645','-4349.58','38.2879','0','0','0','100','0'),
('251548','10','-507.022','-4349.3','38.2523','0','0','0','100','0'),
('251548','11','-510.379','-4348.31','38.2488','0','0','0','100','0'),
('251548','12','-515.187','-4346.87','38.2944','0','0','0','100','0'),
('251548','13','-515.187','-4346.87','38.2944','0','0','0','100','0'),
('251548','14','-516.973','-4341.64','38.4143','0','0','0','100','0'),
('251548','15','-515.916','-4339.17','38.4043','0','0','0','100','0'),
('251548','16','-515.485','-4338.49','38.3956','0','0','0','100','0'),
('251548','17','-512.675','-4336.22','38.2432','0','0','0','100','0'),
('251548','18','-507.845','-4335.59','38.1753','0','0','0','100','0'),
('251548','19','-505.561','-4336.08','38.1584','0','0','0','100','0'),
('251548','20','-500.877','-4333.98','38.1943','0','0','0','100','0'),
('251548','21','-495.871','-4332.96','38.1596','0','0','0','100','0'),
('251548','22','-492.371','-4332.98','38.2349','0','0','0','100','0'),
('251548','23','-485.386','-4333.34','39.2296','0','0','0','100','0'),
('251548','24','-481.893','-4333.54','39.7757','0','0','0','100','0'),
('251548','25','-474.893','-4333.57','40.6794','0','0','0','100','0'),
('251548','26','-469.531','-4334.41','41.6765','0','0','0','100','0'),
('251548','27','-467.255','-4337.89','42.3054','0','0','0','100','0'),
('251548','28','-466.238','-4342.07','42.9336','0','0','0','100','0'),
('251548','29','-467.026','-4345.24','43.1432','0','0','0','100','0'),
('251548','30','-469.07','-4348.21','42.9382','0','0','0','100','0'),
('251548','31','-474.449','-4352.68','42.3445','0','0','0','100','0'),
('251548','32','-477.829','-4355.73','41.906','0','0','0','100','0'),
('251548','33','-482.16','-4357.7','41.1074','0','0','0','100','0'),
('251548','34','-486.108','-4357.44','40.6458','0','0','0','100','0'),
('251548','35','-487.158','-4356.19','40.4716','0','0','0','100','0');

-- Set wp for creature for guid: 251551
DELETE FROM `creature_addon` WHERE (`guid`=251551);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(251551, '251551', 0, 0, 1, 0, '');

-- Waypoint movement type fr guid: 251551
UPDATE `creature` SET `MovementType`='2' WHERE `guid`='251551';

-- Waypoint data for guid: 251551
DELETE FROM `waypoint_data` WHERE `id`='251551';
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
('251551','1','-485.137','-4273.52','42.8644','0','0','0','100','0'),
('251551','2','-485.384','-4270.03','42.8916','0','0','0','100','0'),
('251551','3','-484.85','-4265.89','42.8916','0','0','0','100','0'),
('251551','4','-482.984','-4262.93','42.8916','0','0','0','100','0'),
('251551','5','-479.966','-4258.65','42.8493','0','0','0','100','0'),
('251551','6','-475.929','-4255.97','43.1797','0','0','0','100','0'),
('251551','7','-471.519','-4254.94','43.0238','0','0','0','100','0'),
('251551','8','-467.798','-4256.94','42.8935','0','0','0','100','0'),
('251551','9','-463.145','-4262.17','42.8935','0','0','0','100','0'),
('251551','10','-458.775','-4266.2','42.9006','0','0','0','100','0'),
('251551','11','-456.188','-4269.94','42.8851','0','0','0','100','0'),
('251551','12','-451.794','-4273.33','42.7899','0','0','0','100','0'),
('251551','13','-446.934','-4274.48','42.8436','0','0','0','100','0'),
('251551','14','-440.519','-4274.49','42.7981','0','0','0','100','0'),
('251551','15','-437.021','-4274.39','42.8316','0','0','0','100','0'),
('251551','16','-431.073','-4274.22','42.8559','0','0','0','100','0'),
('251551','17','-427.822','-4274.46','42.8623','0','0','0','100','0'),
('251551','18','-424.47','-4275.45','42.8623','0','0','0','100','0'),
('251551','19','-417.968','-4277.98','42.8972','0','0','0','100','0'),
('251551','20','-416.51','-4280.86','42.9103','0','0','0','100','0'),
('251551','21','-416.593','-4281.07','42.9088','0','0','0','100','0'),
('251551','22','-417.758','-4287.27','42.863','0','0','0','100','0'),
('251551','23','-416.851','-4289.4','42.863','0','0','0','100','0'),
('251551','24','-415.787','-4291.61','42.86','0','0','0','100','0'),
('251551','25','-417.122','-4295.27','42.8262','0','0','0','100','0'),
('251551','26','-419.243','-4297.09','42.7808','0','0','0','100','0'),
('251551','27','-423.907','-4298.58','42.7645','0','0','0','100','0'),
('251551','28','-429.241','-4298.83','42.8619','0','0','0','100','0'),
('251551','29','-432.661','-4298.09','42.8619','0','0','0','100','0'),
('251551','30','-440.186','-4296.05','42.8619','0','0','0','100','0'),
('251551','31','-442.938','-4294.31','42.8619','0','0','0','100','0'),
('251551','32','-447.011','-4290.82','42.8619','0','0','0','100','0'),
('251551','33','-450.169','-4289.31','42.8619','0','0','0','100','0'),
('251551','34','-453.318','-4287.79','42.8619','0','0','0','100','0'),
('251551','35','-459.582','-4284.66','42.8118','0','0','0','100','0'),
('251551','36','-464.707','-4282.14','42.8954','0','0','0','100','0'),
('251551','37','-466.59','-4281.51','42.8938','0','0','0','100','0'),
('251551','38','-470.04','-4280.92','42.9178','0','0','0','100','0'),
('251551','39','-475.847','-4279.66','42.8934','0','0','0','100','0'),
('251551','40','-480.755','-4278.69','42.8934','0','0','0','100','0'),
('251551','41','-485.106','-4279.43','42.8863','0','0','0','100','0'),
('251551','42','-485.233','-4277.24','42.8944','0','0','0','100','0'); 