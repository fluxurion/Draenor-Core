-- --------------------------------------------------------
-- Host:                         logon.hellscream.org
-- Server version:               5.5.9-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table worldlive.pool_creature
CREATE TABLE IF NOT EXISTS `pool_creature` (
  `guid` int(10) unsigned NOT NULL,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table worldlive.pool_creature: 324 rows
DELETE FROM `pool_creature`;
/*!40000 ALTER TABLE `pool_creature` DISABLE KEYS */;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
	(82314, 1500, 0, 'Auchenai Vindicator - Group 1'),
	(82312, 1500, 0, 'Auchenai Soulpriest - Group 1'),
	(82308, 1501, 0, 'Auchenai Vindicator - Group 2'),
	(82307, 1501, 0, 'Auchenai Soulpriest - Group 2'),
	(82310, 1502, 0, 'Auchenai Soulpriest - Group 3'),
	(82311, 1502, 0, 'Auchenai Vindicator - Group 3'),
	(82309, 1503, 0, 'Auchenai Soulpriest - Group 4'),
	(82313, 1503, 0, 'Auchenai Vindicator - Group 4'),
	(82304, 1504, 0, 'Auchenai Vindicator - Group 5'),
	(82302, 1504, 0, 'Auchenai Soulpriest - Group 5'),
	(82303, 1505, 0, 'Auchenai Vindicator - Group 6'),
	(82301, 1505, 0, 'Auchenai Soulpriest - Group 6'),
	(82300, 1506, 0, 'Auchenai Vindicator - Group 7'),
	(82305, 1506, 0, 'Auchenai Soulpriest - Group 7'),
	(82306, 1507, 0, 'Auchenai Soulpriest - Group 8'),
	(82315, 1507, 0, 'Auchenai Vindicator - Group 8'),
	(82316, 1508, 0, 'Auchenai Vindicator - Group 9'),
	(82317, 1508, 0, 'Auchenai Soulpriest - Group 9'),
	(82320, 1509, 0, 'Auchenai Soulpriest - Group 10'),
	(82319, 1509, 0, 'Auchenai Vindicator - Group 10'),
	(193207, 60000, 0, 'Gondria (33776) - Spawn 6'),
	(193208, 60000, 0, 'Gondria (33776) - Spawn 5'),
	(193209, 60000, 0, 'Gondria (33776) - Spawn 4'),
	(193210, 60000, 0, 'Gondria (33776) - Spawn 3'),
	(193211, 60000, 0, 'Gondria (33776) - Spawn 2'),
	(193212, 60000, 0, 'Gondria (33776) - Spawn 1'),
	(193213, 60001, 0, 'Loquenahak (32517) - Spawn 1'),
	(193214, 60001, 0, 'Loquenahak (32517) - Spawn 2'),
	(193215, 60001, 0, 'Loquenahak (32517) - Spawn 3'),
	(193216, 60001, 0, 'Loquenahak (32517) - Spawn 4'),
	(193217, 60001, 0, 'Loquenahak (32517) - Spawn 5'),
	(193218, 60001, 0, 'Loquenahak (32517) - Spawn 6'),
	(193219, 60001, 0, 'Loquenahak (32517) - Spawn 7'),
	(193220, 60001, 0, 'Loquenahak (32517) - Spawn 8'),
	(194313, 60002, 4, 'Vyragosa (32491) - Spawn 1'),
	(194314, 60002, 4, 'Vyragosa (32630) - Spawn 2'),
	(194315, 60002, 4, 'Vyragosa (32630) - Spawn 3'),
	(194316, 60002, 4, 'Vyragosa (32630) - Spawn 4'),
	(194317, 60002, 4, 'Vyragosa (32630) - Spawn 5'),
	(194318, 60002, 4, 'Vyragosa (32630) - Spawn 6'),
	(194319, 60002, 4, 'Vyragosa (32630) - Spawn 7'),
	(194320, 60002, 4, 'Vyragosa (32630) - Spawn 8'),
	(194321, 60002, 4, 'Vyragosa (32630) - Spawn 9'),
	(194322, 60002, 4, 'Vyragosa (32630) - Spawn 10'),
	(194323, 60002, 4, 'Vyragosa (32630) - Spawn 11'),
	(194324, 60002, 4, 'Vyragosa (32630) - Spawn 12'),
	(194325, 60002, 4, 'Vyragosa (32630) - Spawn 13'),
	(194326, 60002, 4, 'Vyragosa (32630) - Spawn 14'),
	(194327, 60002, 4, 'Vyragosa (32630) - Spawn 15'),
	(194328, 60002, 4, 'Vyragosa (32630) - Spawn 16'),
	(194329, 60002, 4, 'Vyragosa (32630) - Spawn 17'),
	(194330, 60002, 4, 'Vyragosa (32630) - Spawn 18'),
	(194331, 60002, 4, 'Vyragosa (32630) - Spawn 19'),
	(194332, 60002, 4, 'Vyragosa (32630) - Spawn 20'),
	(194333, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 1'),
	(194334, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 2'),
	(194335, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 3'),
	(194336, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 4'),
	(194337, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 5'),
	(194338, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 6'),
	(194339, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 7'),
	(194340, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 8'),
	(194341, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 9'),
	(194342, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 10'),
	(194343, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 11'),
	(194344, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 12'),
	(194345, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 13'),
	(194346, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 14'),
	(194347, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 15'),
	(194348, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 16'),
	(194349, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 17'),
	(194350, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 18'),
	(194351, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 19'),
	(194352, 60002, 1, 'Time-Lost Proto Drake (32491) - Spawn 20'),
	(195208, 202481, 12, 'Meshlok the Harvester (12237)'),
	(195223, 202481, 0, 'trigger for Meshlok (12999)'),
	(198177, 7001, 0, 'Webbed Crusader Spawn 1'),
	(150644, 7001, 0, 'Webbed Crusader Spawn 1'),
	(198178, 7002, 0, 'Webbed Crusader Spawn 2'),
	(150645, 7002, 0, 'Webbed Crusader Spawn 2'),
	(198179, 7003, 0, 'Webbed Crusader Spawn 3'),
	(150646, 7003, 0, 'Webbed Crusader Spawn 3'),
	(198180, 7004, 0, 'Webbed Crusader Spawn 4'),
	(150647, 7004, 0, 'Webbed Crusader Spawn 4'),
	(198181, 7005, 0, 'Webbed Crusader Spawn 5'),
	(150648, 7005, 0, 'Webbed Crusader Spawn 5'),
	(198182, 7006, 0, 'Webbed Crusader Spawn 6'),
	(150649, 7006, 0, 'Webbed Crusader Spawn 6'),
	(198183, 7007, 0, 'Webbed Crusader Spawn 7'),
	(150650, 7007, 0, 'Webbed Crusader Spawn 7'),
	(198184, 7008, 0, 'Webbed Crusader Spawn 8'),
	(150651, 7008, 0, 'Webbed Crusader Spawn 8'),
	(198185, 7009, 0, 'Webbed Crusader Spawn 9'),
	(150652, 7009, 0, 'Webbed Crusader Spawn 9'),
	(198186, 7010, 0, 'Webbed Crusader Spawn 10'),
	(150653, 7010, 0, 'Webbed Crusader Spawn 10'),
	(198187, 7011, 0, 'Webbed Crusader Spawn 11'),
	(150654, 7011, 0, 'Webbed Crusader Spawn 11'),
	(198188, 7012, 0, 'Webbed Crusader Spawn 12'),
	(150655, 7012, 0, 'Webbed Crusader Spawn 12'),
	(198189, 7013, 0, 'Webbed Crusader Spawn 13'),
	(150656, 7013, 0, 'Webbed Crusader Spawn 13'),
	(198190, 7014, 0, 'Webbed Crusader Spawn 14'),
	(150657, 7014, 0, 'Webbed Crusader Spawn 14'),
	(84330, 1073, 25, 'Okrek - Spawnlocation 1'),
	(84353, 1073, 25, 'Okrek - Spawnlocation 2'),
	(84512, 1073, 25, 'Okrek - Spawnlocation 3'),
	(84513, 1073, 25, 'Okrek - Spawnlocation 4'),
	(150713, 1074, 20, 'Ambassador Jerrikar - Spawnlocation 1'),
	(150714, 1074, 20, 'Ambassador Jerrikar - Spawnlocation 2'),
	(150715, 1074, 20, 'Ambassador Jerrikar - Spawnlocation 3'),
	(150716, 1074, 20, 'Ambassador Jerrikar - Spawnlocation 4'),
	(150717, 1074, 20, 'Ambassador Jerrikar - Spawnlocation 5'),
	(150718, 1075, 33, 'Chief Engineer Lorthander - Spawnlocation 1'),
	(150719, 1075, 33, 'Chief Engineer Lorthander - Spawnlocation 2'),
	(150720, 1075, 34, 'Chief Engineer Lorthander - Spawnlocation 3'),
	(150721, 1076, 100, 'Crippler - Spawnlocation 1'),
	(150727, 1078, 25, 'Ever-Core the Punisher Spawnlocation 1'),
	(150728, 1078, 25, 'Ever-Core the Punisher Spawnlocation 2'),
	(150729, 1078, 25, 'Ever-Core the Punisher Spawnlocation 3'),
	(150730, 1078, 25, 'Ever-Core the Punisher Spawnlocation 4'),
	(150731, 1079, 0, 'Fulgore Spawnlocation 1'),
	(150732, 1079, 0, 'Fulgore Spawnlocation 2'),
	(150751, 1079, 0, 'Fulgore Spawnlocation 2'),
	(150733, 1080, 25, 'Goretooth Spawnlocation 1'),
	(150734, 1080, 25, 'Goretooth Spawnlocation 2'),
	(150735, 1080, 25, 'Goretooth Spawnlocation 3'),
	(150736, 1080, 25, 'Goretooth Spawnlocation 4'),
	(150737, 1081, 50, 'Hemathion Spawnlocation 1'),
	(150738, 1081, 50, 'Hemathion Spawnlocation 2'),
	(150739, 1082, 50, 'Mekthorg the Wild Spawnlocation 1'),
	(150740, 1082, 50, 'Mekthorg the Wild Spawnlocation 2'),
	(150741, 1083, 20, 'Speaker Margrom Spawnlocation 1'),
	(150742, 1083, 20, 'Speaker Margrom Spawnlocation 2'),
	(150743, 1083, 20, 'Speaker Margrom Spawnlocation 3'),
	(150744, 1083, 20, 'Speaker Margrom Spawnlocation 4'),
	(150745, 1083, 20, 'Speaker Margrom Spawnlocation 5'),
	(150746, 1084, 100, 'Voidhunter Yar Spawnlocation 1'),
	(150747, 1085, 25, 'Vorakem Doomspeaker Spawnlocation 1'),
	(150748, 1085, 25, 'Vorakem Doomspeaker Spawnlocation 2'),
	(150749, 1085, 25, 'Vorakem Doomspeaker Spawnlocation 3'),
	(150750, 1085, 25, 'Vorakem Doomspeaker Spawnlocation 4'),
	(150752, 1086, 0, 'Old Crystalbark - Spawnlocation 1'),
	(150753, 1086, 0, 'Old Crystalbark - Spawnlocation 2'),
	(150754, 1086, 0, 'Old Crystalbark - Spawnlocation 3'),
	(150755, 1086, 0, 'Old Crystalbark - Spawnlocation 4'),
	(150756, 1087, 100, 'Fumblub Gearwind - Spawnlocation 1'),
	(150757, 1088, 0, 'Icehorn - Spawnlocation 1'),
	(150758, 1088, 0, 'Icehorn Spawnlocation 2'),
	(150759, 1088, 0, 'Icehorn Spawnlocation 3'),
	(150760, 1089, 100, 'Crazed Indu le Survivor - Spawnlocation 1'),
	(150761, 1090, 0, 'Scarlet Highlord Daion Spawnlocation 1'),
	(150762, 1090, 0, 'Scarlet Highlord Daion Spawnlocation 2'),
	(150763, 1090, 0, 'Scarlet Highlord Daion Spawnlocation 3'),
	(150764, 1090, 0, 'Scarlet Highlord Daion Spawnlocation 4'),
	(150765, 1091, 0, 'Perobas the Bloodthirster Spawnlocation 1'),
	(150766, 1091, 0, 'Perobas the Bloodthirster Spawnlocation 2'),
	(150767, 1091, 0, 'Perobas the Bloodthirster Spawnlocation 3'),
	(150768, 1092, 0, 'Vigdis the War Maiden Spawnlocation 1'),
	(150769, 1092, 0, 'Vigdis the War Maiden Spawnlocation 2'),
	(150770, 1092, 0, 'Vigdis the War Maiden Spawnlocation 3'),
	(150771, 1092, 0, 'Vigdis the War Maiden Spawnlocation 4'),
	(150772, 1092, 0, 'Vigdis the War Maiden Spawnlocation 5'),
	(150773, 1092, 0, 'Vigdis the War Maiden Spawnlocation 6'),
	(150774, 1093, 0, 'King Pin Spawnlocation 1'),
	(150775, 1093, 0, 'King Pin Spawnlocation 2'),
	(150776, 1093, 0, 'King Pin Spawnlocation 3'),
	(150777, 1093, 0, 'King Pin Spawnlocation 4'),
	(150778, 1093, 0, 'King Pin Spawnlocation 5'),
	(150779, 1094, 0, 'Tukemuth Spawnlocation 1'),
	(150780, 1094, 0, 'Tukemuth Spawnlocation 2'),
	(150781, 1094, 0, 'Tukemuth Spawnlocation 3'),
	(150782, 1094, 0, 'Tukemuth Spawnlocation 4'),
	(150783, 1094, 0, 'Tukemuth Spawnlocation 5'),
	(150784, 1094, 0, 'Tukemuth Spawnlocation 6'),
	(150785, 1094, 0, 'Tukemuth Spawnlocation 7'),
	(150786, 1094, 0, 'Tukemuth Spawnlocation 8'),
	(150787, 1095, 0, 'Grocklar Spawnlocation 1'),
	(150788, 1095, 0, 'Grocklar Spawnlocation 2'),
	(150789, 1095, 0, 'Grocklar Spawnlocation 3'),
	(150790, 1095, 0, 'Grocklar Spawnlocation 4'),
	(150791, 1095, 0, 'Grocklar Spawnlocation 5'),
	(150792, 1095, 0, 'Grocklar Spawnlocation 6'),
	(150793, 1096, 0, 'Seething Hate Spawnlocation 1'),
	(150794, 1096, 0, 'Seething Hate Spawnlocation 2'),
	(150795, 1096, 0, 'Seething Hate Spawnlocation 3'),
	(150796, 1097, 0, 'Syreian the Bonecarver Spawnlocation 1'),
	(150797, 1097, 0, 'Syreian the Bonecarver Spawnlocation 2'),
	(150798, 1097, 0, 'Syreian the Bonecarver Spawnlocation 3'),
	(150799, 1097, 0, 'Syreian the Bonecarver Spawnlocation 4'),
	(150800, 1097, 0, 'Syreian the Bonecarver Spawnlocation 5'),
	(150801, 1097, 0, 'Syreian the Bonecarver Spawnlocation 6'),
	(150802, 1098, 0, 'Hildana Deathstealer Spawnlocation 1'),
	(150803, 1098, 0, 'Hildana Deathstealer Spawnlocation 2'),
	(150804, 1098, 0, 'Hildana Deathstealer Spawnlocation 3'),
	(150805, 1098, 0, 'Hildana Deathstealer Spawnlocation 4'),
	(150806, 1099, 0, 'High Thane Jorfus Spawnlocation 1'),
	(150807, 1099, 0, 'High Thane Jorfus Spawnlocation 2'),
	(150808, 1099, 0, 'High Thane Jorfus Spawnlocation 3'),
	(150809, 1100, 0, 'Terror Spinner Spawnlocation 1'),
	(150810, 1100, 0, 'Terror Spinner Spawnlocation 2'),
	(150811, 1100, 0, 'Terror Spinner Spawnlocation 3'),
	(150813, 1101, 0, 'Griegen Spawnlocation 1'),
	(150814, 1101, 0, 'Griegen Spawnlocation 2'),
	(150815, 1101, 0, 'Griegen Spawnlocation 3'),
	(150816, 1101, 0, 'Griegen Spawnlocation 4'),
	(150817, 1101, 0, 'Griegen Spawnlocation 5'),
	(150818, 1101, 0, 'Griegen Spawnlocation 6'),
	(150819, 1101, 0, 'Griegen Spawnlocation 7'),
	(150820, 1102, 0, 'King Krush Spawnlocation 1'),
	(150821, 1102, 0, 'King Krush Spawnlocation 2'),
	(150822, 1103, 0, 'Aotona Spawnlocation 1'),
	(150823, 1103, 0, 'Aotona Spawnlocation 2'),
	(150824, 1103, 0, 'Aotona Spawnlocation 3'),
	(150825, 1103, 0, 'Aotona Spawnlocation 4'),
	(150826, 1103, 0, 'Aotona Spawnlocation 5'),
	(150827, 1103, 0, 'Aotona Spawnlocation 6'),
	(150828, 1104, 0, 'Dirkee Spawnlocation 1'),
	(150829, 1104, 0, 'Dirkee Spawnlocation 2'),
	(150830, 1104, 0, 'Dirkee Spawnlocation 3'),
	(150831, 1104, 0, 'Dirkee Spawnlocation 4'),
	(150832, 1105, 0, 'Putridus the Ancient Spawnlocation 1'),
	(150833, 1105, 0, 'Putridus the Ancient Spawnlocation 2'),
	(150834, 1105, 0, 'Putridus the Ancient Spawnlocation 3'),
	(150835, 1105, 0, 'Putridus the Ancient Spawnlocation 4'),
	(150836, 1105, 0, 'Putridus the Ancient Spawnlocation 5'),
	(150837, 1106, 0, 'Zul Drak Sentinel Spawnlocation 1'),
	(150838, 1106, 0, 'Zul Drak Sentinel Spawnlocation 2'),
	(150986, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150987, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150988, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150989, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150990, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150991, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150992, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150993, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150994, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150995, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150996, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150997, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150998, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(150999, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151000, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151001, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151002, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151003, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151004, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151005, 4993, 0, 'Arctic Cloud - Stormpikes'),
	(151006, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151007, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151008, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151009, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151010, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151011, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151012, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151013, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151014, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151015, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151016, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151017, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151018, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151019, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151020, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151021, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151022, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151023, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151024, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151025, 4994, 0, 'Arctic Cloud - Dragonsblight'),
	(151026, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151027, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151028, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151029, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151030, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151031, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151032, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151033, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151034, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151035, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151036, 4995, 0, 'Arctic Cloud - Icecrow'),
	(151037, 4996, 0, 'Cinder Cloud'),
	(151038, 4996, 0, 'Cinder Cloud'),
	(151039, 4996, 0, 'Cinder Cloud'),
	(151040, 4996, 0, 'Cinder Cloud'),
	(151041, 4996, 0, 'Cinder Cloud'),
	(151042, 4996, 0, 'Cinder Cloud'),
	(151043, 4996, 0, 'Cinder Cloud'),
	(151044, 4996, 0, 'Cinder Cloud'),
	(151045, 4996, 0, 'Cinder Cloud'),
	(151046, 4996, 0, 'Cinder Cloud'),
	(151047, 4996, 0, 'Cinder Cloud'),
	(151048, 4996, 0, 'Cinder Cloud'),
	(151049, 4997, 0, 'Steam Cloud - Sholazar'),
	(151050, 4997, 0, 'Steam Cloud - Sholazar'),
	(151051, 4997, 0, 'Steam Cloud - Sholazar'),
	(151052, 4997, 0, 'Steam Cloud - Sholazar'),
	(151053, 4997, 0, 'Steam Cloud - Sholazar'),
	(151054, 4997, 0, 'Steam Cloud - Sholazar'),
	(151055, 4997, 0, 'Steam Cloud - Sholazar'),
	(151056, 4997, 0, 'Steam Cloud - Sholazar'),
	(151057, 4997, 0, 'Steam Cloud - Sholazar'),
	(151058, 4997, 0, 'Steam Cloud - Sholazar'),
	(151059, 4997, 0, 'Steam Cloud - Sholazar'),
	(151060, 4997, 0, 'Steam Cloud - Sholazar'),
	(151061, 4997, 0, 'Steam Cloud - Sholazar'),
	(151062, 4997, 0, 'Steam Cloud - Sholazar'),
	(151063, 4997, 0, 'Steam Cloud - Sholazar'),
	(151064, 4997, 0, 'Steam Cloud - Sholazar'),
	(151065, 4997, 0, 'Steam Cloud - Sholazar'),
	(151066, 4997, 0, 'Steam Cloud - Sholazar'),
	(151067, 4997, 0, 'Steam Cloud - Sholazar'),
	(151068, 4997, 0, 'Steam Cloud - Sholazar'),
	(151069, 4997, 0, 'Steam Cloud - Sholazar'),
	(151070, 4997, 0, 'Steam Cloud - Sholazar'),
	(151071, 4997, 0, 'Steam Cloud - Sholazar'),
	(151072, 4997, 0, 'Steam Cloud - Sholazar'),
	(151073, 4998, 0, 'Steam Cloud - Borean Tundra'),
	(151074, 4998, 0, 'Steam Cloud - Borean Tundra'),
	(151075, 4998, 0, 'Steam Cloud - Borean Tundra'),
	(151076, 4998, 0, 'Steam Cloud - Borean Tundra'),
	(255432, 30003, 0, 'Twilight Highlands Rare2'),
	(255433, 30003, 0, 'Twilight Highlands Rare4'),
	(255436, 30003, 0, 'Twilight Highlands Rare4'),
	(255438, 30003, 0, 'Twilight Highlands Rare4'),
	(255439, 30003, 0, 'Twilight Highlands Rare4');
/*!40000 ALTER TABLE `pool_creature` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
