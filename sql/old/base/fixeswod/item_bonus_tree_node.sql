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

-- Dumping structure for table fixeslive.item_bonus_tree_node
CREATE TABLE IF NOT EXISTS `item_bonus_tree_node` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Category` int(11) NOT NULL DEFAULT '0',
  `Difficulty` int(11) NOT NULL DEFAULT '0',
  `LinkedCategory` int(11) NOT NULL DEFAULT '0',
  `ItemBonusEntry` int(11) NOT NULL DEFAULT '0',
  `BuildVerified` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1104 DEFAULT CHARSET=utf8;

-- Dumping data for table fixeslive.item_bonus_tree_node: 62 rows
DELETE FROM `item_bonus_tree_node`;
/*!40000 ALTER TABLE `item_bonus_tree_node` DISABLE KEYS */;
INSERT INTO `item_bonus_tree_node` (`ID`, `Category`, `Difficulty`, `LinkedCategory`, `ItemBonusEntry`, `BuildVerified`) VALUES
	(1, 1, 5, 0, 1, 19865),
	(107, 61, 5, 0, 449, 19865),
	(108, 61, 6, 0, 450, 19865),
	(109, 61, 3, 0, 0, 19865),
	(110, 61, 4, 0, 451, 19865),
	(541, 106, 0, 0, 486, 19865),
	(542, 107, 0, 0, 487, 19865),
	(543, 108, 0, 0, 488, 19865),
	(544, 109, 0, 0, 489, 19865),
	(545, 110, 0, 0, 490, 19865),
	(546, 111, 0, 0, 491, 19865),
	(547, 112, 0, 0, 492, 19865),
	(769, 151, 0, 0, 498, 19865),
	(844, 165, 0, 0, 171, 19865),
	(845, 166, 2, 0, 515, 19865),
	(846, 167, 2, 0, 516, 19865),
	(847, 170, 17, 0, 518, 19865),
	(848, 171, 18, 0, 519, 19865),
	(849, 172, 19, 0, 520, 19865),
	(850, 173, 20, 0, 521, 19865),
	(851, 174, 1, 0, 522, 19865),
	(852, 175, 17, 170, 0, 19865),
	(853, 175, 18, 171, 0, 19865),
	(854, 175, 19, 172, 0, 19865),
	(855, 175, 20, 173, 0, 19865),
	(856, 175, 1, 174, 0, 19865),
	(857, 176, 2, 0, 515, 19865),
	(858, 176, 1, 0, 516, 19865),
	(859, 176, 17, 0, 516, 19865),
	(860, 176, 18, 0, 516, 19865),
	(861, 176, 19, 0, 516, 19865),
	(862, 176, 20, 0, 516, 19865),
	(876, 175, 2, 0, 524, 19865),
	(887, 184, 13, 0, 525, 19865),
	(888, 185, 13, 0, 526, 19865),
	(889, 186, 13, 0, 527, 19865),
	(891, 188, 0, 0, 528, 19865),
	(892, 189, 13, 0, 525, 19865),
	(893, 190, 13, 0, 526, 19865),
	(894, 191, 13, 0, 527, 19865),
	(897, 194, 13, 0, 525, 19865),
	(898, 195, 13, 0, 526, 19865),
	(899, 196, 13, 0, 527, 19865),
	(903, 198, 0, 0, 15, 19865),
	(1000, 222, 0, 0, 553, 19865),
	(1001, 223, 0, 0, 553, 19865),
	(1002, 224, 0, 0, 554, 19865),
	(1003, 225, 0, 0, 557, 19865),
	(1004, 226, 0, 0, 555, 19865),
	(1005, 227, 0, 0, 556, 19865),
	(1006, 228, 13, 0, 525, 19865),
	(1007, 229, 13, 0, 558, 19865),
	(1008, 230, 13, 0, 559, 19865),
	(1027, 240, 5, 0, 566, 19865),
	(1028, 241, 6, 0, 567, 19865),
	(1042, 250, 6, 0, 569, 19865),
	(1043, 250, 5, 0, 570, 19865),
	(1080, 264, 3, 0, 0, 19865),
	(1100, 267, 0, 0, 591, 19865),
	(1101, 268, 0, 0, 592, 19865),
	(1102, 269, 13, 0, 593, 19865),
	(1103, 270, 13, 0, 594, 19865);
/*!40000 ALTER TABLE `item_bonus_tree_node` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
