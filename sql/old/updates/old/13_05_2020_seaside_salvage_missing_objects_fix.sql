SET @CGUID = (SELECT MAX(`guid`) FROM `gameobject`);
DELETE FROM `gameobject` WHERE `id`=202198;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `protect_anti_doublet`) VALUES 

(@CGUID+1, 202198, 1, 440, 440, 1, 1, -7441.36, -4030.29, -20.142, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+2, 202198, 1, 440, 440, 1, 1, -7499.42, -3979.05, -0.113349, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+3, 202198, 1, 440, 440, 1, 1, -7484.44, -3931.78, -0.102316, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+4, 202198, 1, 440, 440, 1, 1, -7575.64, -3867.28, -1.71743, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+5, 202198, 1, 440, 440, 1, 1, -7556.29, -3893.55, -0.051266, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+6, 202198, 1, 440, 440, 1, 1, -7543.79, -3932.39, -0.047806, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+7, 202198, 1, 440, 440, 1, 1, -7540.46, -4020.85, -0.097415, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+8, 202198, 1, 440, 440, 1, 1, -7594.72, -3936.76, -0.062755, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+9, 202198, 1, 440, 440, 1, 1, -7593.47, -3988.66, -0.071063, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+10, 202198, 1, 440, 440, 1, 1, -7547.35, -3979.86, -0.065092, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+11, 202198, 1, 440, 440, 1, 1, -7625.34, -4017.07, -0.01365, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+12, 202198, 1, 440, 440, 1, 1, -7604.89, -4039.01, -0.002608, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+13, 202198, 1, 440, 440, 1, 1, -7675.68, -4000.18, -0.028466, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+14, 202198, 1, 440, 440, 1, 1, -7641.84, -3972.38, -0.024753, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+15, 202198, 1, 440, 440, 1, 1, -7632.53, -3938.14, 0.004569, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+16, 202198, 1, 440, 985, 1, 1, -7709.44, -4238.4, -19.2253, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+17, 202198, 1, 440, 985, 1, 1, -7686.35, -4218.97, -18.0888, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+18, 202198, 1, 440, 985, 1, 1, -7758.12, -4172.45, -0.021247, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+19, 202198, 1, 440, 985, 1, 1, -7771.23, -4118.95, -0.061629, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+20, 202198, 1, 440, 440, 1, 1, -7740.52, -4052.12, -0.020055, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+21, 202198, 1, 440, 985, 1, 1, -7730.04, -4110.8, -0.070341, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+22, 202198, 1, 440, 440, 1, 1, -7757.41, -3998.47, -0.093203, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+23, 202198, 1, 440, 440, 1, 1, -7699.51, -3965.52, -0.080807, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+24, 202198, 1, 440, 1938, 1, 1, -7794.35, -4082.96, -0.109827, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+25, 202198, 1, 440, 1938, 1, 1, -7777.81, -4035.95, -0.019634, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+26, 202198, 1, 440, 1938, 1, 1, -7816.51, -4049.59, -0.042915, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+27, 202198, 1, 440, 985, 1, 1, -7841.61, -4179.71, -0.019546, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+28, 202198, 1, 440, 1938, 1, 1, -7819.18, -4129.4, 0.023248, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+29, 202198, 1, 440, 1938, 1, 1, -7842.5, -4097, -0.206302, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+30, 202198, 1, 440, 1938, 1, 1, -7875.66, -4087.37, -0.139665, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL),
(@CGUID+31, 202198, 1, 440, 1938, 1, 1, -7847.16, -4061.23, -0.073079, 0, 0, 0, 0, 1, 120, 255, 1, 0, NULL);