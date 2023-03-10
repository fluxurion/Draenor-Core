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

-- Dumping structure for table worldlive.spell_ranks
CREATE TABLE IF NOT EXISTS `spell_ranks` (
  `first_spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`first_spell_id`,`rank`),
  UNIQUE KEY `spell_id` (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Rank Data';

-- Dumping data for table worldlive.spell_ranks: 158 rows
DELETE FROM `spell_ranks`;
/*!40000 ALTER TABLE `spell_ranks` DISABLE KEYS */;
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
	(2366, 28695, 5),
	(2366, 11993, 4),
	(2366, 3570, 3),
	(2366, 2368, 2),
	(2366, 2366, 1),
	(2259, 80731, 7),
	(2259, 51304, 6),
	(2259, 28596, 5),
	(2259, 11611, 4),
	(2259, 3464, 3),
	(2259, 3101, 2),
	(2259, 2259, 1),
	(2018, 76666, 7),
	(2018, 51300, 6),
	(2018, 29844, 5),
	(2018, 9785, 4),
	(2018, 3538, 3),
	(2018, 3100, 2),
	(2018, 2018, 1),
	(2108, 81199, 7),
	(2108, 51302, 6),
	(2108, 32549, 5),
	(2108, 10662, 4),
	(2108, 3811, 3),
	(2108, 3104, 2),
	(2108, 2108, 1),
	(2366, 50300, 6),
	(2366, 74519, 7),
	(2550, 2550, 1),
	(2550, 3102, 2),
	(2550, 3413, 3),
	(2550, 18260, 4),
	(2550, 33359, 5),
	(2550, 51296, 6),
	(2550, 88053, 7),
	(2575, 2575, 1),
	(2575, 2576, 2),
	(2575, 3564, 3),
	(2575, 10248, 4),
	(2575, 29354, 5),
	(2575, 50310, 6),
	(2575, 74517, 7),
	(3273, 3273, 1),
	(3273, 3274, 2),
	(3273, 7924, 3),
	(3273, 10846, 4),
	(3273, 27028, 5),
	(3273, 45542, 6),
	(3273, 74559, 7),
	(3908, 3908, 1),
	(3908, 3909, 2),
	(3908, 3910, 3),
	(3908, 12180, 4),
	(3908, 26790, 5),
	(3908, 51309, 6),
	(3908, 75156, 7),
	(4036, 4036, 1),
	(4036, 4037, 2),
	(4036, 4038, 3),
	(4036, 12656, 4),
	(4036, 30350, 5),
	(4036, 51306, 6),
	(4036, 82774, 7),
	(7411, 7411, 1),
	(7411, 7412, 2),
	(7411, 7413, 3),
	(7411, 13920, 4),
	(7411, 28029, 5),
	(7411, 51313, 6),
	(7411, 74258, 7),
	(7620, 7620, 1),
	(7620, 7731, 2),
	(7620, 7732, 3),
	(7620, 18248, 4),
	(7620, 33095, 5),
	(7620, 51294, 6),
	(7620, 88868, 7),
	(8613, 8613, 1),
	(8613, 8617, 2),
	(8613, 8618, 3),
	(8613, 10768, 4),
	(8613, 32678, 5),
	(8613, 50305, 6),
	(8613, 74522, 7),
	(25229, 25229, 1),
	(25229, 25230, 2),
	(25229, 28894, 3),
	(25229, 28895, 4),
	(25229, 28897, 5),
	(25229, 51311, 6),
	(25229, 73318, 7),
	(33388, 33388, 1),
	(33388, 33391, 2),
	(33388, 34090, 3),
	(33388, 34091, 4),
	(33388, 90265, 5),
	(45357, 45357, 1),
	(45357, 45358, 2),
	(45357, 45359, 3),
	(45357, 45360, 4),
	(45357, 45361, 5),
	(45357, 45363, 6),
	(45357, 86008, 7),
	(78670, 78670, 1),
	(78670, 88961, 2),
	(78670, 89718, 3),
	(78670, 89719, 4),
	(78670, 89720, 5),
	(78670, 89721, 6),
	(78670, 89722, 7),
	(25229, 110420, 8),
	(2018, 110396, 8),
	(2108, 110423, 8),
	(2259, 105206, 8),
	(2366, 110413, 8),
	(2550, 104381, 8),
	(2575, 102161, 8),
	(3273, 110406, 8),
	(3908, 110426, 8),
	(4036, 110403, 8),
	(7411, 110400, 8),
	(7620, 110410, 8),
	(8613, 102216, 8),
	(45357, 110417, 8),
	(78670, 110393, 8),
	(746, 746, 1),
	(746, 1159, 2),
	(746, 3267, 3),
	(746, 3268, 4),
	(746, 7926, 5),
	(746, 7927, 6),
	(746, 10838, 7),
	(746, 10839, 8),
	(746, 18608, 9),
	(746, 18610, 10),
	(746, 27030, 11),
	(746, 27031, 12),
	(746, 45543, 13),
	(746, 45544, 14),
	(746, 74553, 15),
	(746, 74554, 16),
	(746, 102694, 17),
	(746, 102695, 18),
	(2259, 156606, 9),
	(2018, 158737, 9),
	(7411, 158716, 9),
	(4036, 158739, 9),
	(2366, 158745, 9),
	(45357, 158748, 9),
	(25229, 158750, 9),
	(2108, 158752, 9),
	(2575, 158754, 9),
	(8613, 158756, 9),
	(3908, 158758, 9),
	(78670, 158762, 9),
	(2550, 158765, 9),
	(3273, 158741, 9),
	(7620, 158743, 9);
/*!40000 ALTER TABLE `spell_ranks` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
