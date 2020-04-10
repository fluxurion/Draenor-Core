-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.9-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table fixeslive.mount_capability
CREATE TABLE IF NOT EXISTS `mount_capability` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Flags` int(11) NOT NULL DEFAULT '0',
  `RequiredRidingSkill` int(11) NOT NULL DEFAULT '0',
  `RequiredArea` int(11) NOT NULL DEFAULT '0',
  `RequiredAura` int(11) NOT NULL DEFAULT '0',
  `RequiredSpell` int(11) NOT NULL DEFAULT '0',
  `SpeedModSpell` int(11) NOT NULL DEFAULT '0',
  `RequiredMap` int(11) NOT NULL DEFAULT '0',
  `BuildVerified` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export of MountCapability.dbc';

-- Dumping data for table fixeslive.mount_capability: 66 rows
DELETE FROM `mount_capability`;
/*!40000 ALTER TABLE `mount_capability` DISABLE KEYS */;
INSERT INTO `mount_capability` (`ID`, `Flags`, `RequiredRidingSkill`, `RequiredArea`, `RequiredAura`, `RequiredSpell`, `SpeedModSpell`, `RequiredMap`, `BuildVerified`) VALUES
	(202, 29, 0, 0, 0, 0, 0, -1, 19865),
	(203, 7, 0, 0, 0, 0, 0, -1, 19865),
	(204, 29, 0, 0, 0, 0, 0, -1, 19865),
	(205, 7, 0, 0, 0, 0, 0, -1, 19865),
	(226, 29, 75, 0, 0, 0, 86457, -1, 19865),
	(227, 29, 150, 0, 0, 0, 86458, -1, 19865),
	(228, 7, 225, 0, 0, 0, 86459, -1, 19865),
	(229, 7, 300, 0, 0, 0, 86460, -1, 19865),
	(230, 7, 375, 0, 0, 0, 86461, -1, 19865),
	(231, 29, 0, 0, 0, 0, 86496, -1, 19865),
	(232, 12, 225, 0, 0, 0, 86510, -1, 19865),
	(233, 21, 0, 0, 0, 0, 86496, -1, 19865),
	(234, 4, 300, 0, 0, 0, 86510, -1, 19865),
	(235, 21, 75, 0, 0, 0, 86457, -1, 19865),
	(236, 21, 150, 0, 0, 0, 86458, -1, 19865),
	(238, 7, 225, 0, 0, 54197, 86459, 571, 19865),
	(239, 7, 300, 0, 0, 54197, 86460, 571, 19865),
	(240, 7, 375, 0, 0, 54197, 86461, 571, 19865),
	(241, 7, 225, 0, 0, 0, 86459, 530, 19865),
	(242, 7, 300, 0, 0, 0, 86460, 530, 19865),
	(243, 7, 375, 0, 0, 0, 86461, 530, 19865),
	(244, 7, 225, 0, 0, 90267, 86459, 0, 19865),
	(245, 7, 300, 0, 0, 90267, 86460, 0, 19865),
	(246, 7, 375, 0, 0, 90267, 86461, 0, 19865),
	(247, 7, 225, 0, 0, 90267, 86459, 1, 19865),
	(248, 7, 300, 0, 0, 90267, 86460, 1, 19865),
	(249, 7, 375, 0, 0, 90267, 86461, 1, 19865),
	(250, 7, 225, 0, 0, 90267, 86459, 646, 19865),
	(251, 7, 300, 0, 0, 90267, 86460, 646, 19865),
	(252, 7, 375, 0, 0, 90267, 86461, 646, 19865),
	(256, 21, 0, 0, 0, 0, 86496, 531, 19865),
	(257, 29, 75, 0, 0, 0, 86457, 531, 19865),
	(258, 29, 150, 0, 0, 0, 86458, 531, 19865),
	(259, 15, 0, 0, 0, 0, 86460, -1, 19865),
	(265, 12, 0, 5146, 0, 0, 95664, -1, 19865),
	(272, 12, 0, 0, 0, 0, 86496, -1, 19865),
	(277, 12, 75, 0, 0, 0, 86457, -1, 19865),
	(278, 12, 150, 0, 0, 0, 86458, -1, 19865),
	(281, 21, 0, 0, 0, 0, 115084, -1, 19865),
	(282, 7, 300, 0, 0, 115913, 86460, 870, 19865),
	(283, 7, 375, 0, 0, 115913, 86461, 870, 19865),
	(284, 7, 225, 0, 0, 115913, 86459, 870, 19865),
	(285, 15, 225, 0, 0, 130487, 86459, 870, 19865),
	(286, 15, 300, 0, 0, 130487, 86460, 870, 19865),
	(287, 15, 375, 0, 0, 130487, 86461, 870, 19865),
	(289, 15, 375, 0, 0, 130487, 86461, 646, 19865),
	(290, 15, 300, 0, 0, 130487, 86460, 646, 19865),
	(291, 15, 225, 0, 0, 130487, 86459, 646, 19865),
	(292, 15, 375, 0, 0, 130487, 86461, 1, 19865),
	(293, 15, 300, 0, 0, 130487, 86460, 1, 19865),
	(294, 15, 225, 0, 0, 130487, 86459, 1, 19865),
	(295, 15, 375, 0, 0, 130487, 86461, 0, 19865),
	(296, 15, 300, 0, 0, 130487, 86460, 0, 19865),
	(297, 15, 225, 0, 0, 130487, 86459, 0, 19865),
	(298, 15, 375, 0, 0, 130487, 86461, 571, 19865),
	(299, 15, 300, 0, 0, 130487, 86460, 571, 19865),
	(300, 15, 225, 0, 0, 130487, 86459, 571, 19865),
	(301, 15, 375, 0, 0, 130487, 86461, 530, 19865),
	(302, 15, 300, 0, 0, 130487, 86460, 530, 19865),
	(303, 15, 225, 0, 0, 130487, 86459, 530, 19865),
	(304, 14, 75, 0, 0, 0, 86457, -1, 19865),
	(305, 14, 150, 0, 0, 0, 86458, -1, 19865),
	(306, 29, 75, 0, 0, 0, 86457, -1, 19865),
	(307, 29, 150, 0, 0, 0, 86458, -1, 19865),
	(315, 25, 0, 0, 0, 0, 0, -1, 19865),
	(316, 29, 0, 0, 0, 0, 86457, -1, 19865);
/*!40000 ALTER TABLE `mount_capability` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
