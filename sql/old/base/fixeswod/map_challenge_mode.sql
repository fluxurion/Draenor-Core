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

-- Dumping structure for table fixeslive.map_challenge_mode
CREATE TABLE IF NOT EXISTS `map_challenge_mode` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MapID` int(11) unsigned NOT NULL,
  `Unk1` int(11) unsigned NOT NULL,
  `Unk2` int(11) unsigned NOT NULL,
  `Unk3` int(11) unsigned NOT NULL,
  `BronzeTime` int(11) unsigned NOT NULL,
  `SilverTime` int(11) unsigned NOT NULL,
  `GoldTime` int(11) unsigned NOT NULL,
  `Unk4` int(11) unsigned NOT NULL,
  `Unk5` int(11) unsigned NOT NULL,
  `BuildVerified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

-- Dumping data for table fixeslive.map_challenge_mode: ~17 rows (approximately)
DELETE FROM `map_challenge_mode`;
/*!40000 ALTER TABLE `map_challenge_mode` DISABLE KEYS */;
INSERT INTO `map_challenge_mode` (`ID`, `MapID`, `Unk1`, `Unk2`, `Unk3`, `BronzeTime`, `SilverTime`, `GoldTime`, `Unk4`, `Unk5`, `BuildVerified`) VALUES
	(2, 960, 0, 2, 3, 2700, 1500, 900, 0, 0, 19865),
	(56, 961, 0, 2, 3, 2700, 1260, 720, 0, 0, 19865),
	(57, 962, 0, 2, 3, 2700, 1320, 780, 0, 0, 19865),
	(58, 959, 0, 2, 3, 3600, 2100, 1260, 0, 0, 19865),
	(59, 1011, 0, 2, 3, 3000, 1800, 1050, 0, 0, 19865),
	(60, 994, 0, 2, 3, 2700, 1440, 720, 0, 0, 19865),
	(76, 1007, 0, 2, 3, 3300, 1980, 1140, 0, 0, 19865),
	(77, 1001, 0, 2, 3, 2700, 1320, 780, 0, 0, 19865),
	(78, 1004, 0, 2, 3, 2700, 1320, 780, 0, 0, 19865),
	(161, 1209, 0, 0, 3, 3400, 1700, 1020, 0, 0, 19865),
	(163, 1175, 0, 0, 3, 3600, 2100, 1320, 0, 0, 19865),
	(164, 1182, 0, 0, 3, 3300, 1920, 1140, 0, 0, 19865),
	(165, 1176, 0, 0, 3, 3600, 1800, 1050, 0, 0, 19865),
	(166, 1208, 0, 0, 3, 3000, 1500, 870, 0, 0, 19865),
	(167, 1358, 0, 0, 3, 5100, 2580, 1500, 0, 0, 19865),
	(168, 1279, 0, 0, 3, 3600, 1800, 1050, 0, 0, 19865),
	(169, 1195, 0, 0, 3, 3600, 2040, 1200, 0, 0, 19865);
/*!40000 ALTER TABLE `map_challenge_mode` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
