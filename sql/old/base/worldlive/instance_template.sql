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

-- Dumping structure for table worldlive.instance_template
CREATE TABLE IF NOT EXISTS `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` smallint(5) unsigned NOT NULL,
  `script` varchar(128) NOT NULL DEFAULT '',
  `allowMount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table worldlive.instance_template: 132 rows
DELETE FROM `instance_template`;
/*!40000 ALTER TABLE `instance_template` DISABLE KEYS */;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES
	(33, 0, 'instance_shadowfang_keep', 0),
	(34, 0, '', 0),
	(36, 0, 'instance_deadmines', 0),
	(43, 1, 'instance_wailing_caverns', 0),
	(47, 1, 'instance_razorfen_kraul', 0),
	(48, 1, 'instance_blackfathom_deeps', 0),
	(70, 0, 'instance_uldaman', 0),
	(90, 0, 'instance_gnomeregan', 0),
	(109, 0, 'instance_sunken_temple', 0),
	(129, 1, 'instance_razorfen_downs', 0),
	(189, 0, 'instance_scarlet_monastery', 0),
	(209, 1, 'instance_zulfarrak', 1),
	(229, 0, 'instance_blackrock_spire', 0),
	(230, 0, 'instance_blackrock_depths', 0),
	(249, 1, 'instance_onyxias_lair', 0),
	(269, 1, 'instance_dark_portal', 1),
	(1007, 0, 'instance_scholomance', 1),
	(309, 0, 'instance_zulgurub', 1),
	(329, 0, 'instance_stratholme', 0),
	(349, 1, '', 0),
	(389, 1, 'instance_ragefire_chasm', 0),
	(429, 1, '', 0),
	(531, 1, 'instance_temple_of_ahnqiraj', 1),
	(409, 230, 'instance_molten_core', 0),
	(532, 0, 'instance_karazhan', 0),
	(615, 571, 'instance_obsidian_sanctum', 1),
	(534, 1, 'instance_hyjal', 1),
	(540, 530, 'instance_shattered_halls', 0),
	(509, 1, 'instance_ruins_of_ahnqiraj', 1),
	(544, 530, 'instance_magtheridons_lair', 0),
	(545, 530, 'instance_steam_vault', 0),
	(546, 530, '', 0),
	(469, 229, 'instance_blackwing_lair', 0),
	(548, 530, 'instance_serpent_shrine', 0),
	(550, 530, 'instance_the_eye', 0),
	(552, 530, 'instance_arcatraz', 0),
	(553, 530, '', 0),
	(554, 530, 'instance_mechanar', 0),
	(555, 530, 'instance_shadow_labyrinth', 0),
	(556, 530, 'instance_sethekk_halls', 0),
	(557, 530, '', 0),
	(558, 530, '', 0),
	(560, 1, 'instance_old_hillsbrad', 1),
	(564, 530, 'instance_black_temple', 0),
	(565, 530, 'instance_gruuls_lair', 0),
	(643, 0, 'instance_throne_of_the_tides', 1),
	(580, 530, 'instance_sunwell_plateau', 1),
	(585, 530, 'instance_magisters_terrace', 0),
	(489, 0, '', 1),
	(30, 0, '', 1),
	(529, 0, '', 1),
	(566, 0, '', 1),
	(559, 0, '', 1),
	(562, 0, '', 1),
	(572, 0, '', 1),
	(574, 571, 'instance_utgarde_keep', 1),
	(575, 571, 'instance_utgarde_pinnacle', 0),
	(576, 571, 'instance_nexus', 0),
	(578, 571, 'instance_oculus', 1),
	(533, 571, 'instance_naxxramas', 0),
	(608, 571, 'instance_violet_hold', 0),
	(604, 571, 'instance_gundrak', 0),
	(602, 571, 'instance_halls_of_lightning', 0),
	(599, 571, 'instance_halls_of_stone', 0),
	(601, 571, 'instance_azjol_nerub', 0),
	(619, 571, 'instance_ahnkahet', 0),
	(600, 571, 'instance_drak_tharon', 1),
	(595, 1, 'instance_culling_of_stratholme', 1),
	(616, 571, 'instance_eye_of_eternity', 0),
	(624, 571, 'instance_archavon', 0),
	(603, 571, 'instance_ulduar', 1),
	(650, 571, 'instance_trial_of_the_champion', 0),
	(649, 571, 'instance_trial_of_the_crusader', 0),
	(628, 0, '', 1),
	(607, 0, '', 1),
	(631, 0, 'instance_icecrown_citadel', 1),
	(632, 0, 'instance_forge_of_souls', 0),
	(658, 0, 'instance_pit_of_saron', 1),
	(668, 0, 'instance_halls_of_reflection', 1),
	(724, 0, 'instance_ruby_sanctum', 1),
	(645, 0, 'instance_blackrock_caverns', 1),
	(670, 0, 'instance_grim_batol', 1),
	(644, 0, 'instance_halls_of_origination', 1),
	(725, 0, 'instance_the_stonecore', 1),
	(657, 0, 'instance_the_vortex_pinnacle', 1),
	(755, 0, 'instance_lost_city_of_the_tolvir', 1),
	(967, 0, 'instance_dragon_soul', 1),
	(859, 0, 'instance_zulgurub', 1),
	(568, 0, 'instance_zulaman', 1),
	(939, 0, 'instance_well_of_eternity', 1),
	(940, 0, 'instance_hour_of_twilight', 1),
	(669, 0, 'instance_blackwing_descent', 1),
	(671, 0, 'instance_bastion_of_twilight', 1),
	(754, 0, '', 0),
	(757, 0, 'instance_baradin_hold', 0),
	(720, 0, 'instance_firelands', 1),
	(938, 0, 'instance_end_time', 1),
	(1000, 0, '', 0),
	(960, 0, 'instance_temple_of_jade_serpent', 0),
	(961, 870, 'instance_stormstout_brewery', 0),
	(962, 870, 'instance_gate_setting_sun', 0),
	(994, 0, 'instance_mogu_shan_palace', 0),
	(1011, 870, 'instance_siege_of_the_niuzao_temple', 0),
	(959, 870, 'instance_shadopan_monastery', 0),
	(1008, 870, 'instance_mogu_shan_vault', 0),
	(1009, 0, 'instance_heart_of_fear', 0),
	(996, 870, 'instance_terrace_of_endless_spring', 0),
	(1098, 870, 'instance_throne_of_thunder', 1),
	(1358, 0, 'instance_upper_blackrock_spire', 0),
	(1136, 870, 'instance_siege_of_orgrimmar', 0),
	(1209, 1116, 'instance_Skyreach', 0),
	(1158, 1116, 'instance_Garrison_A1', 1),
	(1152, 1116, 'instance_Garrison_H1', 1),
	(1175, 1116, 'instance_Bloodmaul', 0),
	(1331, 1116, 'instance_Garrison_A2', 1),
	(1330, 1116, 'instance_Garrison_H2', 1),
	(1195, 0, 'instance_iron_docks', 0),
	(1228, 1116, 'instance_highmaul', 1),
	(727, 0, '', 1),
	(1279, 0, 'instance_everbloom', 1),
	(1205, 1116, 'instance_blackrock_foundry', 0),
	(1159, 1116, 'instance_Garrison_A3', 1),
	(1153, 1116, 'instance_Garrison_H3', 1),
	(1473, 1116, 'instance_Garrison_AS', 1),
	(1474, 1116, 'instance_Garrison_HS', 1),
	(1277, 1116, 'instance_scenario_fate_of_karabor', 1),
	(1176, 0, 'instance_shadowmoon_burial_grounds', 0),
	(1208, 0, 'instance_grimrail_depot', 0),
	(1448, 1464, 'instance_hellfire_citadel', 1),
	(1182, 1116, 'instance_auchindoun', 0),
	(1001, 0, 'instance_scarlet_halls', 1),
	(1004, 0, 'instance_scarlet_monastery', 0);
/*!40000 ALTER TABLE `instance_template` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
