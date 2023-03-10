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

-- Dumping structure for table worldpvp.player_factionchange_achievement
CREATE TABLE IF NOT EXISTS `player_factionchange_achievement` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table worldpvp.player_factionchange_achievement: 122 rows
DELETE FROM `player_factionchange_achievement`;
/*!40000 ALTER TABLE `player_factionchange_achievement` DISABLE KEYS */;
INSERT INTO `player_factionchange_achievement` (`alliance_id`, `horde_id`) VALUES
	(33, 1358),
	(34, 1356),
	(35, 1359),
	(37, 1357),
	(58, 593),
	(202, 1502),
	(203, 1251),
	(206, 1252),
	(220, 873),
	(225, 1164),
	(230, 1175),
	(246, 1005),
	(388, 1006),
	(433, 443),
	(434, 445),
	(435, 444),
	(436, 447),
	(437, 448),
	(438, 469),
	(439, 451),
	(440, 452),
	(441, 450),
	(442, 454),
	(470, 468),
	(471, 453),
	(472, 449),
	(473, 446),
	(604, 603),
	(610, 615),
	(611, 616),
	(612, 617),
	(613, 618),
	(614, 619),
	(701, 700),
	(707, 706),
	(709, 708),
	(711, 710),
	(713, 712),
	(764, 763),
	(873, 220),
	(899, 901),
	(907, 714),
	(908, 909),
	(942, 943),
	(948, 762),
	(963, 965),
	(966, 967),
	(969, 968),
	(1012, 1011),
	(1022, 1025),
	(1023, 1026),
	(1024, 1027),
	(1028, 1031),
	(1029, 1032),
	(1030, 1033),
	(1034, 1036),
	(1035, 1037),
	(1038, 1039),
	(1040, 1041),
	(1151, 224),
	(1184, 1203),
	(1189, 1271),
	(1191, 1272),
	(1192, 1273),
	(1255, 259),
	(1279, 1280),
	(1280, 1279),
	(1466, 926),
	(1686, 1685),
	(1697, 1698),
	(1737, 2476),
	(1757, 2200),
	(1762, 2192),
	(1782, 1783),
	(2016, 2017),
	(2419, 2497),
	(2421, 2420),
	(2536, 2537),
	(2760, 2768),
	(2761, 2767),
	(2762, 2766),
	(2763, 2769),
	(2764, 2765),
	(2770, 2771),
	(2777, 2786),
	(2778, 2785),
	(2779, 2784),
	(2780, 2787),
	(2781, 2783),
	(2782, 2788),
	(2817, 2816),
	(3356, 3357),
	(3556, 3557),
	(3576, 3577),
	(3580, 3581),
	(3596, 3597),
	(3676, 3677),
	(3846, 4176),
	(3851, 4177),
	(3856, 4256),
	(3857, 3957),
	(4156, 4079),
	(4296, 3778),
	(4298, 4297),
	(4436, 4437),
	(4786, 4790),
	(4886, 4885),
	(5213, 5214),
	(5219, 5220),
	(5221, 5222),
	(5226, 5227),
	(5229, 5228),
	(5231, 5552),
	(5328, 5325),
	(5329, 5326),
	(5375, 5376),
	(5417, 5418),
	(5474, 5475),
	(5489, 5490),
	(5718, 5719),
	(5823, 5824),
	(6828, 6827);
/*!40000 ALTER TABLE `player_factionchange_achievement` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
