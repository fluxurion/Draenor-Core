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

-- Dumping structure for table worldlive.npc_recipe_condition
CREATE TABLE IF NOT EXISTS `npc_recipe_condition` (
  `NpcEntry` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `RecipeID` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` mediumint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`NpcEntry`,`RecipeID`,`PlayerConditionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table worldlive.npc_recipe_condition: ~316 rows (approximately)
DELETE FROM `npc_recipe_condition`;
/*!40000 ALTER TABLE `npc_recipe_condition` DISABLE KEYS */;
INSERT INTO `npc_recipe_condition` (`NpcEntry`, `RecipeID`, `PlayerConditionID`) VALUES
	(77354, 158877, 31228),
	(77354, 158878, 31228),
	(77354, 158879, 31228),
	(77354, 158880, 31228),
	(77354, 158881, 31228),
	(77354, 158884, 31229),
	(77354, 158885, 31229),
	(77354, 158886, 31229),
	(77354, 158887, 31229),
	(77354, 158892, 31228),
	(77354, 158893, 31228),
	(77354, 158894, 31228),
	(77354, 158895, 31228),
	(77354, 158896, 31228),
	(77354, 158899, 31229),
	(77354, 158900, 31229),
	(77354, 158901, 31229),
	(77354, 158902, 31229),
	(77354, 158903, 31229),
	(77354, 158907, 0),
	(77354, 158908, 0),
	(77354, 158909, 0),
	(77354, 158910, 0),
	(77354, 158911, 0),
	(77354, 158914, 31228),
	(77354, 158915, 31228),
	(77354, 158916, 31228),
	(77354, 158917, 31228),
	(77354, 158918, 31228),
	(77354, 159236, 0),
	(77354, 162948, 0),
	(77354, 169091, 0),
	(77356, 170701, 28179),
	(77356, 170704, 0),
	(77356, 170705, 0),
	(77356, 170706, 0),
	(77356, 170707, 0),
	(77356, 170708, 0),
	(77356, 170709, 0),
	(77356, 170710, 0),
	(77356, 170711, 0),
	(77356, 170712, 0),
	(77356, 170713, 28180),
	(77356, 170714, 28180),
	(77356, 170715, 28180),
	(77356, 170716, 28180),
	(77356, 170717, 28180),
	(77356, 170718, 28180),
	(77356, 170719, 28179),
	(77356, 170720, 28179),
	(77356, 170721, 28179),
	(77356, 170722, 28179),
	(77356, 170723, 28179),
	(77356, 170724, 28179),
	(77359, 171691, 0),
	(77359, 171692, 0),
	(77359, 171693, 0),
	(77359, 171694, 28366),
	(77359, 171695, 28366),
	(77359, 171696, 28366),
	(77359, 171697, 28366),
	(77359, 171698, 28366),
	(77359, 171699, 28366),
	(77359, 171700, 28367),
	(77359, 171701, 28367),
	(77359, 171702, 28367),
	(77359, 171703, 28367),
	(77359, 171704, 28367),
	(77359, 171705, 28367),
	(77359, 171706, 28367),
	(77359, 171707, 28367),
	(77359, 173355, 28366),
	(77359, 178243, 28366),
	(77359, 178245, 28366),
	(77363, 156561, 27406),
	(77363, 156563, 27406),
	(77363, 156564, 27406),
	(77363, 156568, 27406),
	(77363, 156577, 27405),
	(77363, 156578, 27405),
	(77363, 156579, 27405),
	(77363, 156580, 27405),
	(77363, 156581, 27405),
	(77363, 156582, 0),
	(77363, 156585, 0),
	(77363, 175853, 0),
	(77363, 175865, 0),
	(77363, 175866, 0),
	(77363, 175867, 0),
	(77363, 175868, 0),
	(77363, 175869, 0),
	(77365, 162199, 31233),
	(77365, 162202, 31232),
	(77365, 162203, 31232),
	(77365, 162204, 0),
	(77365, 162205, 31232),
	(77365, 162207, 0),
	(77365, 162208, 0),
	(77365, 162209, 31233),
	(77365, 162210, 31233),
	(77365, 162214, 31233),
	(77365, 162217, 31233),
	(77365, 173289, 31232),
	(77365, 173308, 0),
	(77365, 173309, 0),
	(77365, 176732, 31233),
	(77372, 163294, 31230),
	(77372, 165804, 31231),
	(77372, 166356, 31231),
	(77372, 166359, 31231),
	(77372, 166363, 31230),
	(77372, 166669, 0),
	(77372, 175389, 0),
	(77372, 175390, 0),
	(77372, 175392, 0),
	(77372, 178550, 0),
	(77382, 168837, 27679),
	(77382, 168838, 27679),
	(77382, 168839, 27679),
	(77382, 168840, 27679),
	(77382, 168841, 27679),
	(77382, 168842, 27679),
	(77382, 168843, 27679),
	(77382, 168844, 27679),
	(77382, 168845, 27678),
	(77382, 168846, 27678),
	(77382, 168847, 27678),
	(77382, 168852, 0),
	(77382, 168853, 0),
	(77382, 168854, 0),
	(77382, 168864, 27678),
	(77383, 171260, 0),
	(77383, 171261, 0),
	(77383, 171262, 0),
	(77383, 171263, 0),
	(77383, 171264, 0),
	(77383, 171265, 0),
	(77383, 171266, 28267),
	(77383, 171267, 28267),
	(77383, 171268, 28267),
	(77383, 171269, 28267),
	(77383, 171270, 28268),
	(77383, 171271, 28268),
	(77383, 171272, 28268),
	(77383, 171273, 28268),
	(77383, 171274, 28268),
	(77383, 171275, 28268),
	(77383, 171276, 28268),
	(77383, 171277, 28268),
	(77383, 171278, 28268),
	(77383, 171279, 28268),
	(77383, 171280, 28268),
	(77383, 171281, 28268),
	(77383, 171282, 28268),
	(77383, 171283, 28268),
	(77383, 171284, 28268),
	(77383, 171285, 28268),
	(77383, 178208, 0),
	(79813, 156561, 27406),
	(79813, 156563, 27406),
	(79813, 156564, 27406),
	(79813, 156568, 27406),
	(79813, 156577, 27405),
	(79813, 156578, 27405),
	(79813, 156579, 27405),
	(79813, 156580, 27405),
	(79813, 156581, 27405),
	(79813, 156582, 0),
	(79813, 156585, 0),
	(79813, 175853, 0),
	(79813, 175865, 0),
	(79813, 175866, 0),
	(79813, 175867, 0),
	(79813, 175868, 0),
	(79813, 175869, 0),
	(79821, 158877, 31228),
	(79821, 158878, 31228),
	(79821, 158879, 31228),
	(79821, 158880, 31228),
	(79821, 158881, 31228),
	(79821, 158884, 31229),
	(79821, 158885, 31229),
	(79821, 158886, 31229),
	(79821, 158887, 31229),
	(79821, 158892, 31228),
	(79821, 158893, 31228),
	(79821, 158894, 31228),
	(79821, 158895, 31228),
	(79821, 158896, 31228),
	(79821, 158899, 31229),
	(79821, 158900, 31229),
	(79821, 158901, 31229),
	(79821, 158902, 31229),
	(79821, 158903, 31229),
	(79821, 158907, 0),
	(79821, 158908, 0),
	(79821, 158909, 0),
	(79821, 158910, 0),
	(79821, 158911, 0),
	(79821, 158914, 31228),
	(79821, 158915, 31228),
	(79821, 158916, 31228),
	(79821, 158917, 31228),
	(79821, 158918, 31228),
	(79821, 159236, 0),
	(79821, 162948, 0),
	(79821, 169091, 0),
	(79826, 162199, 31233),
	(79826, 162202, 31232),
	(79826, 162203, 31232),
	(79826, 162204, 0),
	(79826, 162205, 31232),
	(79826, 162207, 0),
	(79826, 162208, 0),
	(79826, 162209, 31233),
	(79826, 162210, 31233),
	(79826, 162214, 31233),
	(79826, 162217, 31233),
	(79826, 173289, 31232),
	(79826, 173308, 0),
	(79826, 173309, 0),
	(79826, 176732, 31233),
	(79829, 163294, 31230),
	(79829, 165804, 31231),
	(79829, 166356, 31231),
	(79829, 166359, 31231),
	(79829, 166363, 31230),
	(79829, 166669, 0),
	(79829, 175389, 0),
	(79829, 175390, 0),
	(79829, 175392, 0),
	(79829, 178550, 0),
	(79832, 170701, 28179),
	(79832, 170704, 0),
	(79832, 170705, 0),
	(79832, 170706, 0),
	(79832, 170707, 0),
	(79832, 170708, 0),
	(79832, 170709, 0),
	(79832, 170710, 0),
	(79832, 170711, 0),
	(79832, 170712, 0),
	(79832, 170713, 28180),
	(79832, 170714, 28180),
	(79832, 170715, 28180),
	(79832, 170716, 28180),
	(79832, 170717, 28180),
	(79832, 170718, 28180),
	(79832, 170719, 28179),
	(79832, 170720, 28179),
	(79832, 170721, 28179),
	(79832, 170722, 28179),
	(79832, 170723, 28179),
	(79832, 170724, 28179),
	(79834, 171260, 0),
	(79834, 171261, 0),
	(79834, 171262, 0),
	(79834, 171263, 0),
	(79834, 171264, 0),
	(79834, 171265, 0),
	(79834, 171266, 28267),
	(79834, 171267, 28267),
	(79834, 171268, 28267),
	(79834, 171269, 28267),
	(79834, 171270, 28268),
	(79834, 171271, 28268),
	(79834, 171272, 28268),
	(79834, 171273, 28268),
	(79834, 171274, 28268),
	(79834, 171275, 28268),
	(79834, 171276, 28268),
	(79834, 171277, 28268),
	(79834, 171278, 28268),
	(79834, 171279, 28268),
	(79834, 171280, 28268),
	(79834, 171281, 28268),
	(79834, 171282, 28268),
	(79834, 171283, 28268),
	(79834, 171284, 28268),
	(79834, 171285, 28268),
	(79834, 178208, 0),
	(79864, 168837, 27679),
	(79864, 168838, 27679),
	(79864, 168839, 27679),
	(79864, 168840, 27679),
	(79864, 168841, 27679),
	(79864, 168842, 27679),
	(79864, 168843, 27679),
	(79864, 168844, 27679),
	(79864, 168845, 27678),
	(79864, 168846, 27678),
	(79864, 168847, 27678),
	(79864, 168852, 0),
	(79864, 168853, 0),
	(79864, 168854, 0),
	(79864, 168864, 27678),
	(79867, 171691, 0),
	(79867, 171692, 0),
	(79867, 171693, 0),
	(79867, 171694, 28366),
	(79867, 171695, 28366),
	(79867, 171696, 28366),
	(79867, 171697, 28366),
	(79867, 171698, 28366),
	(79867, 171699, 28366),
	(79867, 171700, 28367),
	(79867, 171701, 28367),
	(79867, 171702, 28367),
	(79867, 171703, 28367),
	(79867, 171704, 28367),
	(79867, 171705, 28367),
	(79867, 171706, 28367),
	(79867, 171707, 28367),
	(79867, 173355, 28366),
	(79867, 178243, 28366),
	(79867, 178245, 28366);
/*!40000 ALTER TABLE `npc_recipe_condition` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
