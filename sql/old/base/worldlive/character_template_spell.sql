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

-- Dumping structure for table worldlive.character_template_spell
CREATE TABLE IF NOT EXISTS `character_template_spell` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `spellId` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table worldlive.character_template_spell: ~124 rows (approximately)
DELETE FROM `character_template_spell`;
/*!40000 ALTER TABLE `character_template_spell` DISABLE KEYS */;
INSERT INTO `character_template_spell` (`id`, `spellId`) VALUES
	(6, 50977),
	(6, 53428),
	(6, 73313),
	(1, 90265),
	(1, 90267),
	(1, 54197),
	(2, 90265),
	(2, 90267),
	(2, 54197),
	(3, 90265),
	(3, 90267),
	(3, 54197),
	(4, 90265),
	(4, 90267),
	(4, 54197),
	(5, 90265),
	(5, 90267),
	(5, 54197),
	(6, 90265),
	(6, 90267),
	(6, 54197),
	(7, 90265),
	(7, 90267),
	(7, 54197),
	(8, 90265),
	(8, 90267),
	(8, 54197),
	(9, 90265),
	(9, 90267),
	(9, 54197),
	(10, 90265),
	(10, 90267),
	(10, 54197),
	(11, 90265),
	(11, 90267),
	(11, 54197),
	(1, 33388),
	(1, 33391),
	(1, 34090),
	(1, 34091),
	(1, 90265),
	(1, 54197),
	(1, 90267),
	(1, 115913),
	(2, 33388),
	(2, 33391),
	(2, 34090),
	(2, 34091),
	(2, 90265),
	(2, 54197),
	(2, 90267),
	(2, 115913),
	(3, 33388),
	(3, 33391),
	(3, 34090),
	(3, 34091),
	(3, 90265),
	(3, 54197),
	(3, 90267),
	(3, 115913),
	(4, 33388),
	(4, 33391),
	(4, 34090),
	(4, 34091),
	(4, 90265),
	(4, 54197),
	(4, 90267),
	(4, 115913),
	(5, 33388),
	(5, 33391),
	(5, 34090),
	(5, 34091),
	(5, 90265),
	(5, 54197),
	(5, 90267),
	(5, 115913),
	(6, 33388),
	(6, 33391),
	(6, 34090),
	(6, 34091),
	(6, 90265),
	(6, 54197),
	(6, 90267),
	(6, 115913),
	(7, 33388),
	(7, 33391),
	(7, 34090),
	(7, 34091),
	(7, 90265),
	(7, 54197),
	(7, 90267),
	(7, 115913),
	(8, 33388),
	(8, 33391),
	(8, 34090),
	(8, 34091),
	(8, 90265),
	(8, 54197),
	(8, 90267),
	(8, 115913),
	(9, 33388),
	(9, 33391),
	(9, 34090),
	(9, 34091),
	(9, 90265),
	(9, 54197),
	(9, 90267),
	(9, 115913),
	(10, 33388),
	(10, 33391),
	(10, 34090),
	(10, 34091),
	(10, 90265),
	(10, 54197),
	(10, 90267),
	(10, 115913),
	(11, 33388),
	(11, 33391),
	(11, 34090),
	(11, 34091),
	(11, 90265),
	(11, 54197),
	(11, 90267),
	(11, 115913);
/*!40000 ALTER TABLE `character_template_spell` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
