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

-- Dumping structure for table worldpvp.dbc_dungeonencounter
CREATE TABLE IF NOT EXISTS `dbc_dungeonencounter` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk_1` int(11) NOT NULL DEFAULT '0',
  `encounterIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `encounterName` text NOT NULL,
  `nameFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk_3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export of DungeonEncounter.dbc';

-- Dumping data for table worldpvp.dbc_dungeonencounter: 699 rows
DELETE FROM `dbc_dungeonencounter`;
/*!40000 ALTER TABLE `dbc_dungeonencounter` DISABLE KEYS */;
INSERT INTO `dbc_dungeonencounter` (`id`, `mapId`, `difficulty`, `Unk_1`, `encounterIndex`, `encounterName`, `nameFlags`, `Unk_2`, `Unk_3`) VALUES
	(1069, 33, 0, 0, 0, 'Baron Ashbury', 34609, 0, 0),
	(1070, 33, 0, 1000, 1, 'Baron Silverlaine', 3222, 0, 0),
	(1071, 33, 0, 2000, 2, 'Commander Springvale', 3223, 0, 0),
	(1073, 33, 0, 2500, 4, 'Lord Walden', 34612, 0, 0),
	(1072, 33, 0, 3000, 3, 'Lord Godfrey', 33824, 0, 0),
	(1144, 34, 1, 1000, 3, 'Hogger', 501, 0, 0),
	(1145, 34, 1, 2000, 4, 'Lord Overheat', 1204, 0, 0),
	(1146, 34, 1, 3000, 5, 'Randolph Moloch', 35068, 0, 0),
	(1064, 36, 0, -3000, 3, 'Glubtok', 32914, 0, 0),
	(1065, 36, 0, -2500, 4, 'Helix Gearbreaker', 33002, 0, 0),
	(1063, 36, 0, -2000, 2, 'Foe Reaper 5000', 35606, 0, 0),
	(1062, 36, 0, -1000, 1, 'Admiral Ripsnarl', 35739, 0, 0),
	(1060, 36, 0, 0, 0, '"Captain" Cookie', 1305, 0, 0),
	(1081, 36, 2, 1000, 5, 'Vanessa VanCleef', 32806, 0, 0),
	(585, 43, 1, 0, 0, 'Lady Anacondra', 0, 0, 0),
	(586, 43, 1, 1000, 1, 'Lord Cobrahn', 0, 0, 0),
	(587, 43, 1, 2000, 2, 'Kresh', 0, 0, 0),
	(588, 43, 1, 3000, 3, 'Lord Pythas', 0, 0, 0),
	(589, 43, 1, 4000, 4, 'Skum', 0, 0, 0),
	(590, 43, 1, 5000, 5, 'Lord Serpentis', 0, 0, 0),
	(591, 43, 1, 6000, 6, 'Verdan the Everliving', 0, 0, 0),
	(592, 43, 1, 7000, 7, 'Mutanus the Devourer', 0, 0, 0),
	(440, 47, 1, -1000, 2, 'Death Speaker Jargba', 0, 0, 0),
	(438, 47, 1, 0, 0, 'Roogug', 0, 0, 0),
	(439, 47, 1, 1000, 1, 'Aggem Thorncurse', 0, 0, 0),
	(441, 47, 1, 3000, 3, 'Overlord Ramtusk', 0, 0, 0),
	(883, 47, 1, 3500, 5, 'Agathelos the Raging', 0, 0, 0),
	(443, 47, 1, 4000, 4, 'Charlga Razorflank', 0, 0, 0),
	(219, 48, 1, 0, 0, 'Ghamoo-ra', 0, 0, 0),
	(220, 48, 1, 1000, 1, 'Lady Sarevess', 0, 0, 0),
	(221, 48, 1, 2000, 2, 'Gelihast', 0, 0, 0),
	(222, 48, 1, 3000, 3, 'Lorgus Jett', 0, 0, 0),
	(224, 48, 1, 5000, 5, 'Old Serra\'kis', 0, 0, 0),
	(225, 48, 1, 6000, 6, 'Twilight Lord Kelris', 0, 0, 0),
	(226, 48, 1, 7000, 7, 'Aku\'mai', 0, 0, 0),
	(547, 70, 1, 0, 0, 'Revelosh', 0, 0, 0),
	(548, 70, 1, 1000, 1, 'The Lost Dwarves', 0, 0, 0),
	(549, 70, 1, 2000, 2, 'Ironaya', 0, 0, 0),
	(551, 70, 1, 4000, 4, 'Ancient Stone Keeper', 0, 0, 0),
	(552, 70, 1, 5000, 5, 'Galgann Firehammer', 0, 0, 0),
	(553, 70, 1, 6000, 6, 'Grimlok', 0, 0, 0),
	(554, 70, 1, 7000, 7, 'Archaedas', 0, 0, 0),
	(379, 90, 1, 2000, 2, 'Grubbis', 0, 0, 0),
	(378, 90, 1, 2500, 1, 'Viscous Fallout', 0, 0, 0),
	(380, 90, 1, 3000, 3, 'Electrocutioner 6000', 0, 0, 0),
	(381, 90, 1, 4000, 4, 'Crowd Pummeler 9-60', 0, 0, 0),
	(382, 90, 1, 5000, 5, 'Mekgineer Thermaplugg', 0, 0, 0),
	(492, 109, 1, -500, 7, 'Avatar of Hakkar', 0, 0, 0),
	(488, 109, 1, 500, 3, 'Jammal\'an the Prophet', 0, 0, 0),
	(486, 109, 1, 1000, 1, 'Dreamscythe', 0, 0, 0),
	(487, 109, 1, 2000, 2, 'Weaver', 0, 0, 0),
	(490, 109, 1, 5000, 5, 'Morphaz', 0, 0, 0),
	(491, 109, 1, 6000, 6, 'Hazzas', 0, 0, 0),
	(493, 109, 1, 8000, 8, 'Shade of Eranikus', 0, 0, 0),
	(434, 129, 1, 0, 0, 'Tuten\'kash', 0, 0, 0),
	(435, 129, 1, 1000, 1, 'Mordresh Fire Eye', 0, 0, 0),
	(436, 129, 1, 2000, 2, 'Glutton', 0, 0, 0),
	(437, 129, 1, 3000, 3, 'Amnennar the Coldbringer', 0, 0, 0),
	(444, 189, 1, 0, 0, 'Interrogator Vishas', 0, 0, 0),
	(446, 189, 1, 2000, 2, 'Houndmaster Loksey', 0, 0, 0),
	(447, 189, 1, 3000, 3, 'Arcanist Doan', 0, 0, 0),
	(448, 189, 1, 4000, 4, 'Herod', 0, 0, 0),
	(449, 189, 1, 5000, 5, 'High Inquisitor Fairbanks', 0, 0, 0),
	(450, 189, 1, 6000, 6, 'High Inquisitor Whitemane', 0, 0, 0),
	(593, 209, 1, 0, 0, 'Hydromancer Velratha', 0, 0, 0),
	(594, 209, 1, 1000, 1, 'Ghaz\'rilla', 0, 0, 0),
	(595, 209, 1, 2000, 2, 'Antu\'sul', 0, 0, 0),
	(596, 209, 1, 3000, 3, 'Theka the Martyr', 0, 0, 0),
	(597, 209, 1, 4000, 4, 'Witch Doctor Zum\'rah', 0, 0, 0),
	(598, 209, 1, 5000, 5, 'Nekrum Gutchewer', 0, 0, 0),
	(599, 209, 1, 6000, 6, 'Shadowpriest Sezz\'ziz', 0, 0, 0),
	(600, 209, 1, 7000, 7, 'Chief Ukorz Sandscalp', 0, 0, 0),
	(267, 229, 1, 0, 0, 'Highlord Omokk', 0, 0, 0),
	(268, 229, 1, 1000, 1, 'Shadow Hunter Vosh\'gajin', 0, 0, 0),
	(269, 229, 1, 2000, 2, 'War Master Voone', 0, 0, 0),
	(270, 229, 1, 3000, 3, 'Mother Smolderweb', 0, 0, 0),
	(271, 229, 1, 4000, 4, 'Urok Doomhowl', 0, 0, 0),
	(272, 229, 1, 5000, 5, 'Quartermaster Zigris', 0, 0, 0),
	(274, 229, 1, 5500, 7, 'Halycon', 0, 0, 0),
	(273, 229, 1, 6000, 6, 'Gizrul the Slavener', 0, 0, 0),
	(275, 229, 1, 8000, 8, 'Overlord Wyrmthalak', 0, 0, 0),
	(276, 229, 1, 9000, 9, 'Pyroguard Emberseer', 2172, 0, 2),
	(277, 229, 1, 10000, 10, 'Solakar Flamewreath', 0, 0, 0),
	(278, 229, 1, 11000, 11, 'Warchief Rend Blackhand', 9778, 0, 2),
	(279, 229, 1, 12000, 12, 'The Beast', 10193, 0, 2),
	(280, 229, 1, 13000, 13, 'General Drakkisath', 10115, 0, 3),
	(227, 230, 1, 0, 0, 'High Interrogator Gerstahn', 0, 0, 0),
	(228, 230, 1, 1000, 1, 'Lord Roccor', 0, 0, 0),
	(229, 230, 1, 2000, 2, 'Houndmaster Grebmar', 0, 0, 0),
	(230, 230, 1, 3000, 3, 'Ring of Law', 0, 0, 0),
	(231, 230, 1, 4000, 4, 'Pyromancer Loregrain', 0, 0, 0),
	(232, 230, 1, 5000, 5, 'Lord Incendius', 0, 0, 0),
	(233, 230, 1, 6000, 6, 'Warder Stilgiss', 0, 0, 0),
	(234, 230, 1, 7000, 7, 'Fineous Darkvire', 0, 0, 0),
	(235, 230, 1, 8000, 8, 'Bael\'Gar', 0, 0, 0),
	(236, 230, 1, 9000, 9, 'General Angerforge', 0, 0, 0),
	(237, 230, 1, 10000, 10, 'Golem Lord Argelmach', 0, 0, 0),
	(238, 230, 1, 11000, 11, 'Hurley Blackbreath', 0, 0, 0),
	(239, 230, 1, 12000, 12, 'Phalanx', 0, 0, 0),
	(240, 230, 1, 13000, 13, 'Ribbly Screwspigot', 0, 0, 0),
	(241, 230, 1, 14000, 14, 'Plugger Spazzring', 0, 0, 0),
	(242, 230, 1, 15000, 15, 'Ambassador Flamelash', 0, 0, 0),
	(243, 230, 1, 16000, 16, 'The Seven', 0, 0, 0),
	(244, 230, 1, 17000, 17, 'Magmus', 0, 0, 0),
	(245, 230, 1, 18000, 18, 'Emperor Dagran Thaurissan', 0, 0, 0),
	(1084, 249, 0, 0, 0, 'Onyxia', 8570, 0, 3),
	(287, 269, 1, 0, 0, 'Chrono Lord Deja', 0, 0, 0),
	(288, 269, 2, 0, 0, 'Chrono Lord Deja', 0, 0, 0),
	(289, 269, 1, 1000, 1, 'Temporus', 0, 0, 0),
	(290, 269, 2, 2000, 1, 'Temporus', 0, 0, 0),
	(291, 269, 1, 2000, 2, 'Aeonus', 0, 0, 0),
	(292, 269, 2, 3000, 2, 'Aeonus', 0, 0, 0),
	(451, 289, 1, 0, 0, 'Kirtonos the Herald', 0, 0, 0),
	(452, 289, 1, 1000, 1, 'Jandice Barov', 0, 0, 0),
	(453, 289, 1, 2000, 2, 'Rattlegore', 0, 0, 0),
	(454, 289, 1, 3000, 3, 'Marduk Blackpool', 0, 0, 0),
	(455, 289, 1, 4000, 4, 'Vectus', 0, 0, 0),
	(456, 289, 1, 5000, 5, 'Ras Frostwhisper', 0, 0, 0),
	(457, 289, 1, 6000, 6, 'Instructor Malicia', 0, 0, 0),
	(458, 289, 1, 7000, 7, 'Doctor Theolen Krastinov', 0, 0, 0),
	(459, 289, 1, 8000, 8, 'Lorekeeper Polkelt', 0, 0, 0),
	(460, 289, 1, 9000, 9, 'The Ravenian', 0, 0, 0),
	(461, 289, 1, 10000, 10, 'Lord Alexei Barov', 0, 0, 0),
	(462, 289, 1, 11000, 11, 'Lady Illucia Barov', 0, 0, 0),
	(463, 289, 1, 12000, 12, 'Darkmaster Gandling', 0, 0, 0),
	(785, 309, 1, -1000, 1, 'High Priestess Jeklik', 0, 0, 0),
	(784, 309, 1, 0, 0, 'High Priest Venoxis', 0, 0, 0),
	(786, 309, 1, 2000, 2, 'High Priestess Mar\'li', 0, 0, 0),
	(787, 309, 1, 3000, 3, 'Bloodlord Mandokir', 0, 0, 0),
	(788, 309, 1, 4000, 4, 'Edge of Madness', 0, 0, 0),
	(789, 309, 1, 5000, 5, 'High Priest Thekal', 0, 0, 0),
	(790, 309, 1, 6000, 6, 'Gahz\'ranka', 0, 0, 0),
	(791, 309, 1, 7000, 7, 'High Priestess Arlokk', 0, 0, 0),
	(792, 309, 1, 8000, 8, 'Jin\'do the Hexxer', 0, 0, 0),
	(793, 309, 1, 9000, 9, 'Hakkar', 0, 0, 0),
	(473, 329, 1, 1000, 1, 'Hearthsinger Forresten', 0, 0, 0),
	(474, 329, 1, 2000, 2, 'Timmy the Cruel', 0, 0, 0),
	(476, 329, 1, 2500, 4, 'Commander Malor', 0, 0, 0),
	(475, 329, 1, 3000, 3, 'Willey Hopebreaker', 0, 0, 0),
	(477, 329, 1, 5000, 5, 'Instructor Galford', 0, 0, 0),
	(478, 329, 1, 6000, 6, 'Balnazzar', 0, 0, 0),
	(472, 329, 1, 6500, 0, 'The Unforgiven', 0, 0, 0),
	(479, 329, 1, 7000, 7, 'Baroness Anastari', 0, 0, 0),
	(480, 329, 1, 8000, 8, 'Nerub\'enkan', 0, 0, 0),
	(481, 329, 1, 9000, 9, 'Maleki the Pallid', 0, 0, 0),
	(482, 329, 1, 10000, 10, 'Magistrate Barthilas', 0, 0, 0),
	(483, 329, 1, 11000, 11, 'Ramstein the Gorger', 0, 0, 0),
	(484, 329, 1, 12000, 12, 'Lord Aurius Rivendare', 0, 0, 0),
	(422, 349, 1, 0, 0, 'Noxxion', 0, 0, 0),
	(423, 349, 1, 1000, 1, 'Razorlash', 0, 0, 0),
	(427, 349, 1, 1500, 5, 'Tinkerer Gizlock', 0, 0, 0),
	(424, 349, 1, 2000, 2, 'Lord Vyletongue', 0, 0, 0),
	(425, 349, 1, 3000, 3, 'Celebras the Cursed', 0, 0, 0),
	(426, 349, 1, 4000, 4, 'Landslide', 0, 0, 0),
	(428, 349, 1, 6000, 6, 'Rotgrip', 0, 0, 0),
	(429, 349, 1, 7000, 7, 'Princess Theradras', 0, 0, 0),
	(1443, 389, 0, 0, 0, 'Adarogg', 38759, 0, 0),
	(1444, 389, 0, 1000, 1, 'Dark Shaman Koranthal', 42101, 0, 0),
	(1445, 389, 0, 2000, 2, 'Slagmaw', 38773, 0, 0),
	(1446, 389, 0, 3000, 3, 'Lava Guard Gordoth', 42100, 0, 0),
	(663, 409, 3, 0, 0, 'Lucifron', 13031, 0, 2),
	(664, 409, 3, 1000, 1, 'Magmadar', 10193, 0, 2),
	(665, 409, 3, 2000, 2, 'Gehennas', 13030, 0, 2),
	(666, 409, 3, 3000, 3, 'Garr', 12110, 0, 2),
	(667, 409, 3, 4000, 4, 'Shazzrah', 13032, 0, 2),
	(668, 409, 3, 5000, 5, 'Baron Geddon', 12129, 0, 2),
	(669, 409, 3, 6000, 6, 'Sulfuron Harbinger', 13030, 0, 2),
	(670, 409, 3, 7000, 7, 'Golemagg the Incinerator', 11986, 0, 2),
	(671, 409, 3, 8000, 8, 'Majordomo Executus', 12029, 0, 2),
	(672, 409, 3, 9000, 9, 'Ragnaros', 11121, 0, 3),
	(343, 429, 1, 0, 0, 'Zevrim Thornhoof', 0, 0, 0),
	(344, 429, 1, 1000, 1, 'Hydrospawn', 0, 0, 0),
	(345, 429, 1, 2000, 2, 'Lethtendris', 0, 0, 0),
	(346, 429, 1, 3000, 3, 'Alzzin the Wildshaper', 0, 0, 0),
	(350, 429, 1, 3500, 7, 'Tendris Warpwood', 0, 0, 0),
	(347, 429, 1, 4000, 4, 'Illyanna Ravenoak', 0, 0, 0),
	(348, 429, 1, 5000, 5, 'Magister Kalendris', 0, 0, 0),
	(349, 429, 1, 6000, 6, 'Immol\'thar', 0, 0, 0),
	(361, 429, 1, 7000, 8, 'Prince Tortheldrin', 0, 0, 0),
	(362, 429, 1, 8000, 9, 'Guard Mol\'dar', 0, 0, 0),
	(363, 429, 1, 9000, 10, 'Stomper Kreeg', 0, 0, 0),
	(364, 429, 1, 10000, 11, 'Guard Fengus', 0, 0, 0),
	(365, 429, 1, 11000, 12, 'Guard Slip\'kik', 0, 0, 0),
	(366, 429, 1, 12000, 13, 'Captain Kromcrush', 0, 0, 0),
	(367, 429, 1, 13000, 14, 'Cho\'Rush the Observer', 0, 0, 0),
	(368, 429, 1, 14000, 15, 'King Gordok', 0, 0, 0),
	(610, 469, 3, 0, 0, 'Razorgore the Untamed', 10115, 0, 2),
	(611, 469, 3, 1000, 1, 'Vaelastrasz the Corrupt', 13992, 0, 2),
	(612, 469, 3, 2000, 2, 'Broodlord Lashlayer', 14308, 0, 2),
	(613, 469, 3, 3000, 3, 'Firemaw', 6377, 0, 2),
	(614, 469, 3, 4000, 4, 'Ebonroc', 6377, 0, 2),
	(615, 469, 3, 5000, 5, 'Flamegor', 6377, 0, 2),
	(616, 469, 3, 6000, 6, 'Chromaggus', 14367, 0, 2),
	(617, 469, 3, 7000, 7, 'Nefarian', 11380, 0, 3),
	(718, 509, 3, 0, 0, 'Kurinnaxx', 15742, 0, 2),
	(719, 509, 3, 1000, 1, 'General Rajaxx', 15376, 0, 2),
	(720, 509, 3, 2000, 2, 'Moam', 15392, 0, 2),
	(721, 509, 3, 3000, 3, 'Buru the Gorger', 15654, 0, 2),
	(722, 509, 3, 4000, 4, 'Ayamiss the Hunter', 15431, 0, 2),
	(723, 509, 3, 5000, 5, 'Ossirian the Unscarred', 15432, 0, 3),
	(709, 531, 3, 0, 0, 'The Prophet Skeram', 15345, 0, 2),
	(710, 531, 3, 1000, 1, 'Silithid Royalty', 15656, 0, 2),
	(711, 531, 3, 2000, 2, 'Battleguard Sartura', 15583, 0, 2),
	(712, 531, 3, 3000, 3, 'Fankriss the Unyielding', 15743, 0, 2),
	(713, 531, 3, 4000, 4, 'Viscidus', 15686, 0, 2),
	(714, 531, 3, 5000, 5, 'Princess Huhuran', 15739, 0, 2),
	(715, 531, 3, 6000, 6, 'Twin Emperors', 15761, 0, 2),
	(716, 531, 3, 7000, 7, 'Ouro', 15509, 0, 2),
	(717, 531, 3, 8000, 8, 'C\'thun', 15787, 0, 3),
	(652, 532, 3, 0, 0, 'Attumen the Huntsman', 16416, 0, 2),
	(653, 532, 3, 1000, 1, 'Moroes', 16540, 0, 2),
	(654, 532, 3, 2000, 2, 'Maiden of the Virtue', 16198, 0, 2),
	(655, 532, 3, 3000, 3, 'Opera Event', 17053, 0, 2),
	(656, 532, 3, 4000, 4, 'The Curator', 16958, 0, 2),
	(657, 532, 3, 5000, 5, 'Terestian Illhoof', 11343, 0, 2),
	(658, 532, 3, 6000, 6, 'Shade of Aran', 16621, 0, 2),
	(659, 532, 3, 7000, 7, 'Netherspite', 15363, 0, 2),
	(660, 532, 3, 8000, 8, 'Chess Event', 16293, 0, 2),
	(661, 532, 3, 9000, 9, 'Prince Malchezaar', 19274, 0, 3),
	(662, 532, 3, 10000, 10, 'Nightbane', 18062, 0, 2),
	(1107, 533, 0, 0, 0, 'Anub\'Rekhan', 15931, 0, 10),
	(1110, 533, 0, 250, 3, 'Grand Widow Faerlina', 15940, 0, 10),
	(1116, 533, 0, 312, 9, 'Maexxna', 15928, 0, 10),
	(1117, 533, 0, 343, 10, 'Noth the Plaguebringer', 16590, 0, 10),
	(1112, 533, 0, 375, 5, 'Heigan the Unclean', 16309, 0, 10),
	(1115, 533, 0, 406, 8, 'Loatheb', 16110, 0, 10),
	(1113, 533, 0, 437, 6, 'Instructor Razuvious', 16582, 0, 10),
	(1109, 533, 0, 500, 2, 'Gothik the Harvester', 16279, 0, 10),
	(1121, 533, 0, 562, 14, 'The Four Horsemen', 10729, 0, 10),
	(1118, 533, 0, 625, 11, 'Patchwerk', 16174, 0, 10),
	(1111, 533, 0, 750, 4, 'Grobbulus', 16035, 0, 10),
	(1108, 533, 0, 1000, 1, 'Gluth', 16064, 0, 10),
	(1120, 533, 0, 1250, 13, 'Thaddius', 16137, 0, 10),
	(1119, 533, 0, 1500, 12, 'Sapphiron', 16033, 0, 10),
	(1114, 533, 0, 2000, 7, 'Kel\'Thuzad', 15945, 0, 11),
	(618, 534, 3, 0, 0, 'Rage Winterchill', 17444, 0, 2),
	(619, 534, 3, 1000, 1, 'Anetheron', 21069, 0, 2),
	(620, 534, 3, 2000, 2, 'Kaz\'rogal', 17886, 0, 2),
	(621, 534, 3, 3000, 3, 'Azgalor', 18526, 0, 2),
	(622, 534, 3, 4000, 4, 'Archimonde', 20939, 0, 3),
	(407, 540, 1, 0, 0, 'Grand Warlock Nethekurse', 0, 0, 0),
	(408, 540, 2, 0, 0, 'Grand Warlock Nethekurse', 0, 0, 0),
	(409, 540, 2, 500, 3, 'Blood Guard Porung', 0, 0, 0),
	(410, 540, 1, 1000, 1, 'Warbringer O\'mrogg', 0, 0, 0),
	(411, 540, 2, 1000, 1, 'Warbringer O\'mrogg', 0, 0, 0),
	(412, 540, 1, 2000, 2, 'Warchief Kargath Bladefist', 0, 0, 0),
	(413, 540, 2, 2000, 2, 'Warchief Kargath Bladefist', 0, 0, 0),
	(401, 542, 1, 0, 0, 'The Maker', 0, 0, 0),
	(402, 542, 2, 1000, 0, 'The Maker', 0, 0, 0),
	(403, 542, 1, 1000, 1, 'Broggok', 0, 0, 0),
	(404, 542, 2, 2000, 1, 'Broggok', 0, 0, 0),
	(405, 542, 1, 2000, 2, 'Keli\'dan the Breaker', 0, 0, 0),
	(406, 542, 2, 3000, 2, 'Keli\'dan the Breaker', 0, 0, 0),
	(392, 543, 1, 0, 0, 'Watchkeeper Gargolmar', 0, 0, 0),
	(393, 543, 2, 1000, 0, 'Watchkeeper Gargolmar', 0, 0, 0),
	(394, 543, 1, 1000, 1, 'Omor the Unscarred', 0, 0, 0),
	(395, 543, 2, 2000, 1, 'Omor the Unscarred', 0, 0, 0),
	(396, 543, 1, 2000, 2, 'Vazruden the Herald', 0, 0, 0),
	(397, 543, 2, 3000, 2, 'Vazruden the Herald', 0, 0, 0),
	(651, 544, 3, 0, 0, 'Magtheridon', 18527, 0, 3),
	(314, 545, 1, 0, 0, 'Hydromancer Thespia', 0, 0, 0),
	(315, 545, 2, 1000, 0, 'Hydromancer Thespia', 0, 0, 0),
	(316, 545, 1, 1000, 1, 'Mekgineer Steamrigger', 0, 0, 0),
	(317, 545, 2, 2000, 1, 'Mekgineer Steamrigger', 0, 0, 0),
	(318, 545, 1, 2000, 2, 'Warlord Kalithresh', 0, 0, 0),
	(319, 545, 2, 3000, 2, 'Warlord Kalithresh', 0, 0, 0),
	(320, 546, 1, 0, 0, 'Hungarfen', 0, 0, 0),
	(321, 546, 2, 1000, 0, 'Hungarfen', 0, 0, 0),
	(322, 546, 1, 1000, 1, 'Ghaz\'an', 0, 0, 0),
	(323, 546, 2, 2000, 1, 'Ghaz\'an', 0, 0, 0),
	(329, 546, 1, 2000, 2, 'Swamplord Musel\'ek', 0, 0, 0),
	(330, 546, 2, 3000, 2, 'Swamplord Musel\'ek', 0, 0, 0),
	(331, 546, 1, 3000, 3, 'The Black Stalker', 0, 0, 0),
	(332, 546, 2, 4000, 3, 'The Black Stalker', 0, 0, 0),
	(301, 547, 1, 0, 0, 'Mennu the Betrayer', 0, 0, 0),
	(304, 547, 2, 0, 0, 'Mennu the Betrayer', 0, 0, 0),
	(302, 547, 1, 1000, 1, 'Rokmar the Crackler', 0, 0, 0),
	(305, 547, 2, 1000, 1, 'Rokmar the Crackler', 0, 0, 0),
	(303, 547, 1, 2000, 2, 'Quagmirran', 0, 0, 0),
	(306, 547, 2, 2000, 2, 'Quagmirran', 0, 0, 0),
	(623, 548, 3, 0, 0, 'Hydross the Unstable', 20162, 0, 2),
	(624, 548, 3, 1000, 1, 'The Lurker Below', 20216, 0, 2),
	(625, 548, 3, 2000, 2, 'Leotheras the Blind', 20514, 0, 2),
	(626, 548, 3, 3000, 3, 'Fathom-Lord Karathress', 20662, 0, 2),
	(627, 548, 3, 4000, 4, 'Morogrim Tidewalker', 20739, 0, 2),
	(628, 548, 3, 5000, 5, 'Lady Vashj', 20748, 0, 3),
	(730, 550, 3, 0, 0, 'Al\'ar', 18945, 0, 2),
	(731, 550, 3, 1000, 1, 'Void Reaver', 18951, 0, 2),
	(732, 550, 3, 2000, 2, 'High Astromancer Solarian', 18239, 0, 2),
	(733, 550, 3, 3000, 3, 'Kael\'thas Sunstrider', 20023, 0, 3),
	(494, 552, 1, 0, 0, 'Zereketh the Unbound', 0, 0, 0),
	(495, 552, 2, 1000, 0, 'Zereketh the Unbound', 0, 0, 0),
	(496, 552, 1, 1000, 1, 'Dalliah the Doomsayer', 0, 0, 0),
	(497, 552, 2, 2000, 1, 'Dalliah the Doomsayer', 0, 0, 0),
	(498, 552, 1, 2000, 2, 'Wrath-Scryer Soccothrates', 0, 0, 0),
	(499, 552, 2, 3000, 2, 'Wrath-Scryer Soccothrates', 0, 0, 0),
	(500, 552, 1, 3000, 3, 'Harbinger Skyriss', 0, 0, 0),
	(501, 552, 2, 4000, 3, 'Harbinger Skyriss', 0, 0, 0),
	(502, 553, 1, 0, 0, 'Commander Sarannis', 0, 0, 0),
	(504, 553, 2, 1000, 0, 'Commander Sarannis', 0, 0, 0),
	(505, 553, 1, 1000, 1, 'High Botanist Freywinn', 0, 0, 0),
	(506, 553, 2, 2000, 1, 'High Botanist Freywinn', 0, 0, 0),
	(507, 553, 1, 2000, 2, 'Thorngrin the Tender', 0, 0, 0),
	(508, 553, 2, 3000, 2, 'Thorngrin the Tender', 0, 0, 0),
	(509, 553, 1, 3000, 3, 'Laj', 0, 0, 0),
	(510, 553, 2, 4000, 3, 'Laj', 0, 0, 0),
	(511, 553, 1, 4000, 4, 'Warp Splinter', 0, 0, 0),
	(512, 553, 2, 5000, 4, 'Warp Splinter', 0, 0, 0),
	(513, 554, 1, 0, 0, 'Mechano-Lord Capacitus', 0, 0, 0),
	(514, 554, 2, 1000, 0, 'Mechano-Lord Capacitus', 0, 0, 0),
	(515, 554, 1, 1000, 1, 'Nethermancer Sepethrea', 0, 0, 0),
	(516, 554, 2, 2000, 1, 'Nethermancer Sepethrea', 0, 0, 0),
	(517, 554, 1, 2000, 2, 'Pathaleon the Calculator', 0, 0, 0),
	(518, 554, 2, 3000, 2, 'Pathaleon the Calculator', 0, 0, 0),
	(208, 555, 1, 0, 0, 'Ambassador Hellmaw', 0, 0, 0),
	(255, 555, 2, 0, 0, 'Ambassador Hellmaw', 0, 0, 0),
	(209, 555, 1, 1000, 1, 'Blackheart the Inciter', 0, 0, 0),
	(256, 555, 2, 1000, 1, 'Blackheart the Inciter', 0, 0, 0),
	(210, 555, 1, 2000, 2, 'Grandmaster Vorpil', 0, 0, 0),
	(257, 555, 2, 2000, 2, 'Grandmaster Vorpil', 0, 0, 0),
	(211, 555, 1, 3000, 3, 'Murmur', 0, 0, 0),
	(258, 555, 2, 3000, 3, 'Murmur', 0, 0, 0),
	(206, 556, 1, 0, 0, 'Darkweaver Syth', 0, 0, 0),
	(252, 556, 2, 0, 0, 'Darkweaver Syth', 0, 0, 0),
	(207, 556, 1, 1000, 1, 'Talon King Ikiss', 0, 0, 0),
	(254, 556, 2, 1000, 1, 'Talon King Ikiss', 0, 0, 0),
	(253, 556, 2, 2000, 2, 'Anzu', 0, 0, 0),
	(203, 557, 1, 0, 0, 'Pandemonius', 0, 0, 0),
	(248, 557, 2, 0, 0, 'Pandemonius', 0, 0, 0),
	(204, 557, 1, 1000, 1, 'Tavarok', 0, 0, 0),
	(249, 557, 2, 1000, 1, 'Tavarok', 0, 0, 0),
	(250, 557, 2, 1500, 3, 'Yor', 0, 0, 0),
	(205, 557, 1, 2000, 2, 'Nexus-Prince Shaffar', 0, 0, 0),
	(251, 557, 2, 2000, 2, 'Nexus-Prince Shaffar', 0, 0, 0),
	(201, 558, 1, 0, 0, 'Shirrak the Dead Watcher', 0, 0, 0),
	(246, 558, 2, 0, 0, 'Shirrak the Dead Watcher', 0, 0, 0),
	(202, 558, 1, 1000, 1, 'Exarch Maladaar', 0, 0, 0),
	(247, 558, 2, 1000, 1, 'Exarch Maladaar', 0, 0, 0),
	(286, 560, 2, -1000, 2, 'Lieutenant Drake', 0, 0, 0),
	(285, 560, 1, 1000, 2, 'Lieutenant Drake', 0, 0, 0),
	(283, 560, 1, 2000, 1, 'Captain Skarloc', 0, 0, 0),
	(284, 560, 2, 2000, 1, 'Captain Skarloc', 0, 0, 0),
	(281, 560, 1, 3000, 0, 'Epoch Hunter', 0, 0, 0),
	(282, 560, 2, 3000, 0, 'Epoch Hunter', 0, 0, 0),
	(601, 564, 3, 0, 0, 'High Warlord Naj\'entus', 21174, 0, 2),
	(602, 564, 3, 1000, 1, 'Supremus', 21145, 0, 2),
	(603, 564, 3, 2000, 2, 'Shade of Akama', 21357, 0, 2),
	(604, 564, 3, 3000, 3, 'Teron Gorefiend', 21254, 0, 2),
	(605, 564, 3, 4000, 4, 'Gurtogg Bloodboil', 21443, 0, 2),
	(606, 564, 3, 5000, 5, 'Reliquary of Souls', 21483, 0, 2),
	(607, 564, 3, 6000, 6, 'Mother Shahraz', 21252, 0, 2),
	(608, 564, 3, 7000, 7, 'The Illidari Council', 21416, 0, 2),
	(609, 564, 3, 8000, 8, 'Illidan Stormrage', 21135, 0, 3),
	(649, 565, 3, 0, 0, 'High King Maulgar', 18649, 0, 2),
	(650, 565, 3, 1000, 1, 'Gruul the Dragonkiller', 18698, 0, 3),
	(1189, 568, 0, 0, 0, 'Akil\'zon', 21630, 0, 0),
	(1190, 568, 0, 1000, 1, 'Nalorakk', 21631, 0, 0),
	(1191, 568, 0, 2000, 2, 'Jan\'alai', 21633, 0, 0),
	(1192, 568, 0, 3000, 3, 'Halazzi', 21632, 0, 0),
	(1193, 568, 0, 4000, 4, 'Hex Lord Malacrass', 22332, 0, 0),
	(1194, 568, 0, 5000, 5, 'Daakara', 38118, 0, 0),
	(571, 574, 1, 0, 0, 'Prince Keleseth', 0, 0, 0),
	(572, 574, 2, 1000, 0, 'Prince Keleseth', 0, 0, 0),
	(573, 574, 1, 1000, 1, 'Skarvold & Dalronn', 0, 0, 0),
	(574, 574, 2, 2000, 1, 'Skarvold & Dalronn', 0, 0, 0),
	(575, 574, 1, 2000, 2, 'Ingvar the Plunderer', 0, 0, 0),
	(576, 574, 2, 3000, 2, 'Ingvar the Plunderer', 0, 0, 0),
	(577, 575, 1, 0, 0, 'Svala Sorrowgrave', 0, 0, 0),
	(578, 575, 2, 1000, 0, 'Svala Sorrowgrave', 0, 0, 0),
	(579, 575, 1, 1000, 1, 'Gortok Palehoof', 0, 0, 0),
	(580, 575, 2, 2000, 1, 'Gortok Palehoof', 0, 0, 0),
	(581, 575, 1, 2000, 2, 'Skadi the Ruthless', 0, 0, 0),
	(582, 575, 2, 3000, 2, 'Skadi the Ruthless', 0, 0, 0),
	(583, 575, 1, 3000, 3, 'King Ymiron', 0, 0, 0),
	(584, 575, 2, 4000, 3, 'King Ymiron', 0, 0, 0),
	(519, 576, 2, 0, 0, 'Frozen Commander', 0, 0, 0),
	(520, 576, 1, 0, 1, 'Grand Magus Telestra', 0, 0, 0),
	(521, 576, 2, 1000, 1, 'Grand Magus Telestra', 0, 0, 0),
	(522, 576, 1, 1000, 2, 'Anomalus', 0, 0, 0),
	(523, 576, 2, 2000, 2, 'Anomalus', 0, 0, 0),
	(524, 576, 1, 2000, 3, 'Ormorok the Tree-Shaper', 0, 0, 0),
	(525, 576, 2, 3000, 3, 'Ormrok the Tree-Shaper', 0, 0, 0),
	(526, 576, 1, 3000, 4, 'Keristrasza', 0, 0, 0),
	(527, 576, 2, 4000, 4, 'Keristrasza', 0, 0, 0),
	(528, 578, 1, 0, 0, 'Drakos the Interrogator', 0, 0, 0),
	(529, 578, 2, 1000, 0, 'Drakos the Interrogator', 0, 0, 0),
	(530, 578, 1, 1000, 1, 'Varos Cloudstrider', 0, 0, 0),
	(531, 578, 2, 2000, 1, 'Varos Cloudstrider', 0, 0, 0),
	(532, 578, 1, 2000, 2, 'Mage-Lord Urom', 0, 0, 0),
	(533, 578, 2, 3000, 2, 'Mage-Lord Urom', 0, 0, 0),
	(534, 578, 1, 3000, 3, 'Ley-Guardian Eregos', 0, 0, 0),
	(535, 578, 2, 4000, 3, 'Ley-Guardian Eregos', 0, 0, 0),
	(724, 580, 3, 0, 0, 'Kalecgos', 23345, 0, 2),
	(725, 580, 3, 1000, 1, 'Brutallus', 22711, 0, 2),
	(726, 580, 3, 2000, 2, 'Felmyst', 22838, 0, 2),
	(727, 580, 3, 3000, 3, 'Eredar Twins', 23334, 0, 2),
	(728, 580, 3, 4000, 4, 'M\'uru', 23404, 0, 2),
	(729, 580, 3, 5000, 5, 'Kil\'jaeden', 23200, 0, 3),
	(414, 585, 1, 0, 0, 'Selin Fireheart', 0, 0, 0),
	(415, 585, 2, 1000, 0, 'Selin Fireheart', 0, 0, 0),
	(416, 585, 1, 1000, 1, 'Vexallus', 0, 0, 0),
	(417, 585, 2, 2000, 1, 'Vexallus', 0, 0, 0),
	(418, 585, 1, 2000, 2, 'Priestess Delrissa', 0, 0, 0),
	(419, 585, 2, 3000, 2, 'Priestess Delrissa', 0, 0, 0),
	(420, 585, 1, 3000, 3, 'Kael\'thas Sunstrider', 0, 0, 0),
	(421, 585, 2, 4000, 3, 'Kael\'thas Sunstrider', 0, 0, 0),
	(293, 595, 1, 0, 0, 'Meathook', 0, 0, 0),
	(297, 595, 2, 0, 0, 'Meathook', 0, 0, 0),
	(294, 595, 1, 1000, 1, 'Salram the Fleshcrafter', 0, 0, 0),
	(298, 595, 2, 1000, 1, 'Salram the Fleshcrafter', 0, 0, 0),
	(295, 595, 1, 2000, 2, 'Chrono-Lord Epoch', 0, 0, 0),
	(299, 595, 2, 2000, 2, 'Chrono-Lord Epoch', 0, 0, 0),
	(296, 595, 1, 3000, 3, 'Mal\'ganis', 0, 0, 0),
	(300, 595, 2, 3000, 3, 'Mal\'ganis', 0, 0, 0),
	(1348, 598, 1, 0, 0, 'Omar the Test Dragon', 30356, 0, 0),
	(563, 599, 1, 0, 0, 'Krystallus', 0, 0, 0),
	(564, 599, 2, 1000, 0, 'Krystallus', 0, 0, 0),
	(565, 599, 1, 1000, 1, 'Maiden of Grief', 0, 0, 0),
	(566, 599, 2, 2000, 1, 'Maiden of Grief', 0, 0, 0),
	(567, 599, 1, 2000, 2, 'Tribunal of Ages', 0, 0, 0),
	(568, 599, 2, 3000, 2, 'Tribunal of Ages', 0, 0, 0),
	(569, 599, 1, 3000, 3, 'Sjonnir the Ironshaper', 0, 0, 0),
	(570, 599, 2, 4000, 3, 'Sjonnir the Ironshaper', 0, 0, 0),
	(369, 600, 1, 0, 0, 'Trollgore', 0, 0, 0),
	(370, 600, 2, 1000, 0, 'Trollgore', 0, 0, 0),
	(371, 600, 1, 1000, 1, 'Novos the Summoner', 0, 0, 0),
	(372, 600, 2, 2000, 1, 'Novos the Summoner', 0, 0, 0),
	(373, 600, 1, 2000, 2, 'King Dred', 0, 0, 0),
	(374, 600, 2, 3000, 2, 'King Dred', 0, 0, 0),
	(375, 600, 1, 3000, 3, 'The Prophet Tharon\'ja', 0, 0, 0),
	(376, 600, 2, 4000, 3, 'The Prophet Tharon\'ja', 0, 0, 0),
	(216, 601, 1, 0, 0, 'Krik\'thir the Gatewatcher', 0, 0, 0),
	(264, 601, 2, 0, 0, 'Krik\'thir the Gatewatcher', 0, 0, 0),
	(217, 601, 1, 1000, 1, 'Hadronox', 0, 0, 0),
	(265, 601, 2, 1000, 1, 'Hadronox', 0, 0, 0),
	(218, 601, 1, 2000, 2, 'Anub\'arak', 0, 0, 0),
	(266, 601, 2, 2000, 2, 'Anub\'arak', 0, 0, 0),
	(555, 602, 1, 0, 0, 'General Bjarngrim', 0, 0, 0),
	(556, 602, 2, 1000, 0, 'General Bjarngrim', 0, 0, 0),
	(557, 602, 1, 1000, 1, 'Volkhan', 0, 0, 0),
	(558, 602, 2, 2000, 1, 'Volkhan', 0, 0, 0),
	(559, 602, 1, 2000, 2, 'Ionar', 0, 0, 0),
	(560, 602, 2, 3000, 2, 'Ionar', 0, 0, 0),
	(561, 602, 1, 3000, 3, 'Loken', 0, 0, 0),
	(562, 602, 2, 4000, 3, 'Loken', 0, 0, 0),
	(1132, 603, 0, -2000, 2, 'Flame Leviathan', 28875, 0, 10),
	(1136, 603, 0, -1500, 6, 'Ignis the Furnace Master', 29185, 0, 10),
	(1139, 603, 0, -1375, 9, 'Razorscale', 28787, 0, 10),
	(1142, 603, 0, -1343, 12, 'XT-002 Deconstructor', 28611, 0, 10),
	(1140, 603, 0, -1312, 10, 'The Assembly of Iron', 28324, 0, 10),
	(1137, 603, 0, -1250, 7, 'Kologarn', 28638, 0, 10),
	(1131, 603, 0, -1000, 1, 'Auriaya', 28651, 0, 10),
	(1135, 603, 0, -750, 5, 'Hodir', 28743, 0, 10),
	(1141, 603, 0, -625, 11, 'Thorim', 28977, 0, 10),
	(1164, 603, 0, -562, 14, 'Elder Brightleaf', 29174, 0, 8),
	(1165, 603, 0, -531, 15, 'Elder Ironbranch', 29175, 0, 8),
	(1166, 603, 0, -515, 16, 'Elder Stonebark', 29176, 0, 8),
	(1133, 603, 0, -500, 3, 'Freya', 28777, 0, 10),
	(1138, 603, 0, -375, 8, 'Mimiron', 28578, 0, 10),
	(1134, 603, 0, -250, 4, 'General Vezax', 28548, 0, 10),
	(1143, 603, 0, -125, 13, 'Yogg-Saron', 28817, 0, 11),
	(1130, 603, 0, 0, 0, 'Algalon the Observer', 28641, 0, 11),
	(383, 604, 1, 0, 0, 'Slad\'ran', 0, 0, 0),
	(384, 604, 2, 1000, 0, 'Slad\'ran', 0, 0, 0),
	(385, 604, 1, 1000, 1, 'Drakkari Colossus', 0, 0, 0),
	(386, 604, 2, 2000, 1, 'Drakkari Colossus', 0, 0, 0),
	(387, 604, 1, 2000, 2, 'Moorabi', 0, 0, 0),
	(388, 604, 2, 3000, 2, 'Moorabi', 0, 0, 0),
	(390, 604, 1, 3000, 3, 'Gal\'darah', 0, 0, 0),
	(389, 604, 2, 4000, 4, 'Eck the Ferocious', 0, 0, 0),
	(391, 604, 2, 5000, 3, 'Gal\'darah', 0, 0, 0),
	(541, 608, 1, 0, 0, 'First Prisoner', 0, 0, 0),
	(542, 608, 2, 1000, 0, 'First Prisoner', 0, 0, 0),
	(543, 608, 1, 1000, 1, 'Second Prisoner', 0, 0, 0),
	(544, 608, 2, 2000, 1, 'Second Prisoner', 0, 0, 0),
	(545, 608, 1, 2000, 2, 'Cyanigosa', 0, 0, 0),
	(546, 608, 2, 3000, 2, 'Cyanigosa', 0, 0, 0),
	(1093, 615, 0, 0, 3, 'Vesperon', 0, 0, 8),
	(1092, 615, 0, 2000, 2, 'Tenebron', 0, 0, 8),
	(1091, 615, 0, 3000, 1, 'Shadron', 0, 0, 8),
	(1090, 615, 0, 4000, 0, 'Sartharion', 27035, 0, 11),
	(1094, 616, 0, 0, 0, 'Malygos', 26752, 0, 11),
	(212, 619, 1, 0, 0, 'Elder Nadox', 0, 0, 0),
	(259, 619, 2, 0, 0, 'Elder Nadox', 0, 0, 0),
	(213, 619, 1, 1000, 1, 'Prince Taldaram', 0, 0, 0),
	(260, 619, 2, 1000, 1, 'Prince Taldaram', 0, 0, 0),
	(214, 619, 1, 2000, 2, 'Jedoga Shadowseeker', 0, 0, 0),
	(261, 619, 2, 2000, 2, 'Jedoga Shadowseeker', 0, 0, 0),
	(215, 619, 1, 3000, 3, 'Herald Volazj', 0, 0, 0),
	(262, 619, 2, 3000, 4, 'Amanitar', 0, 0, 0),
	(263, 619, 2, 4000, 3, 'Herald Volazj', 0, 0, 0),
	(1126, 624, 0, 0, 0, 'Archavon the Stone Watcher', 26967, 0, 10),
	(1127, 624, 0, 1000, 1, 'Emalon the Storm Watcher', 27108, 0, 10),
	(1128, 624, 0, 2000, 2, 'Koralon the Flame Watcher', 29524, 0, 10),
	(1129, 624, 0, 3000, 3, 'Toravon the Ice Watcher', 31089, 0, 10),
	(1101, 631, 0, 0, 6, 'Lord Marrowgar', 31119, 0, 10),
	(1100, 631, 0, 1000, 5, 'Lady Deathwhisper', 30893, 0, 10),
	(1099, 631, 0, 2000, 4, 'Icecrown Gunship Battle', 29489, 0, 10),
	(1096, 631, 0, 3000, 1, 'Deathbringer Saurfang', 30790, 0, 10),
	(1104, 631, 0, 4000, 9, 'Rotface', 31005, 0, 10),
	(1097, 631, 0, 5000, 2, 'Festergut', 31006, 0, 10),
	(1102, 631, 0, 6000, 7, 'Professor Putricide', 30881, 0, 10),
	(1095, 631, 0, 7000, 0, 'Blood Council', 25338, 0, 10),
	(1103, 631, 0, 9000, 8, 'Queen Lana\'thel', 31093, 0, 10),
	(1098, 631, 0, 10000, 3, 'Valithria Dreamwalker', 30318, 0, 10),
	(1105, 631, 0, 12000, 10, 'Sindragosa', 30362, 0, 10),
	(1106, 631, 0, 14000, 11, 'The Lich King', 30721, 0, 11),
	(829, 632, 1, 0, 0, 'Bronjahm', 0, 0, 0),
	(830, 632, 2, 1000, 0, 'Bronjahm ', 0, 0, 0),
	(831, 632, 1, 1000, 1, 'Devourer of Souls', 0, 0, 0),
	(832, 632, 2, 2000, 1, 'Devourer of Souls', 0, 0, 0),
	(1045, 643, 0, -1000, 1, 'Lady Naz\'jar', 34342, 0, 0),
	(1044, 643, 0, 0, 0, 'Commander Ulthok', 33792, 0, 0),
	(1046, 643, 0, 1000, 2, 'Mindbender Ghur\'sha', 32259, 0, 0),
	(1047, 643, 0, 2000, 3, 'Ozumat', 34135, 0, 0),
	(1080, 644, 0, -3000, 6, 'Temple Guardian Anhuur', 35067, 0, 0),
	(1076, 644, 0, -2000, 2, 'Earthrager Ptah', 31450, 0, 0),
	(1075, 644, 0, -1000, 1, 'Anraphet', 34580, 0, 0),
	(1077, 644, 0, -500, 3, 'Isiset', 33465, 0, 0),
	(1074, 644, 0, 0, 0, 'Ammunae', 32943, 0, 0),
	(1079, 644, 0, 500, 5, 'Setesh', 33055, 0, 0),
	(1078, 644, 0, 1000, 4, 'Rajh', 33177, 0, 0),
	(1040, 645, 0, -3000, 4, 'Rom\'ogg Bonecrusher', 33147, 0, 0),
	(1038, 645, 0, -2000, 2, 'Corla, Herald of Twilight', 31546, 0, 0),
	(1039, 645, 0, -1500, 3, 'Karsh Steelbender', 31710, 0, 0),
	(1037, 645, 0, -1000, 1, 'Beauty', 34433, 0, 0),
	(1036, 645, 0, 0, 0, 'Ascendant Lord Obsidius', 36465, 0, 0),
	(1088, 649, 0, 0, 3, 'Northrend Beasts', 21601, 0, 10),
	(1087, 649, 0, 2000, 2, 'Lord Jaraxxus', 29615, 0, 10),
	(1086, 649, 0, 3000, 1, 'Faction Champions', 33909, 0, 10),
	(1089, 649, 0, 4000, 4, 'Val\'kyr Twins', 29240, 0, 10),
	(1085, 649, 0, 5000, 0, 'Anub\'arak', 29268, 0, 11),
	(334, 650, 1, 0, 0, 'Grand Champions', 0, 0, 0),
	(336, 650, 2, 1000, 0, 'Grand Champions', 0, 0, 0),
	(338, 650, 1, 1000, 1, 'Argent Champion', 0, 0, 0),
	(339, 650, 2, 2000, 1, 'Argent Champion', 0, 0, 0),
	(340, 650, 1, 2000, 2, 'The Black Knight', 0, 0, 0),
	(341, 650, 2, 3000, 2, 'The Black Knight', 0, 0, 0),
	(1043, 657, 0, -1000, 2, 'Grand Vizier Ertan', 35181, 0, 0),
	(1041, 657, 0, 0, 0, 'Altairus', 34265, 0, 0),
	(1042, 657, 0, 1000, 1, 'Asaad', 35388, 0, 0),
	(833, 658, 1, 0, 0, 'Forgemaster Garfrost', 0, 0, 0),
	(834, 658, 2, 1000, 0, 'Forgemaster Garfrost', 0, 0, 0),
	(835, 658, 1, 1000, 1, 'Krick', 0, 0, 0),
	(836, 658, 2, 2000, 1, 'Krick', 0, 0, 0),
	(837, 658, 1, 2000, 2, 'Scourgelord Tyrannus', 0, 0, 0),
	(838, 658, 2, 3000, 2, 'Scourgelord Tyrannus', 0, 0, 0),
	(842, 668, 2, 0, 1, 'Falric', 0, 0, 0),
	(841, 668, 1, 500, 1, 'Falric', 0, 0, 0),
	(840, 668, 2, 1000, 0, 'Marwyn', 0, 0, 0),
	(839, 668, 1, 1500, 0, 'Marwyn', 0, 0, 0),
	(843, 668, 1, 2000, 2, 'Escaped from Arthas', 0, 0, 0),
	(844, 668, 2, 3000, 2, 'Escaped from Arthas', 0, 0, 0),
	(1027, 669, 0, -1000, 5, 'Omnotron Defense System', 32688, 0, 2),
	(1024, 669, 0, -500, 2, 'Magmaw', 35496, 0, 2),
	(1022, 669, 0, 0, 0, 'Atramedes', 34547, 0, 2),
	(1023, 669, 0, 1000, 1, 'Chimaeron', 33308, 0, 2),
	(1025, 669, 0, 3000, 3, 'Maloriak', 33186, 0, 2),
	(1026, 669, 0, 4000, 4, 'Nefarian\'s End', 32716, 0, 3),
	(1051, 670, 0, -2000, 3, 'General Umbriss', 31498, 0, 0),
	(1050, 670, 0, -1000, 2, 'Forgemaster Throngus', 33429, 0, 0),
	(1048, 670, 0, 0, 0, 'Drahga Shadowburner', 31792, 0, 0),
	(1049, 670, 0, 1000, 1, 'Erudax', 33428, 0, 0),
	(1030, 671, 0, -1000, 2, 'Halfus Wyrmbreaker', 34816, 0, 10),
	(1032, 671, 0, 1500, 4, 'Theralion and Valiona', 34812, 0, 10),
	(1028, 671, 0, 2000, 0, 'Ascendant Council', 35064, 0, 10),
	(1029, 671, 0, 2500, 1, 'Cho\'gall', 34576, 0, 11),
	(1082, 671, 5, 3500, 3, 'Sinestra', 34335, 0, 11),
	(1083, 671, 6, 3500, 3, 'Sinestra', 34335, 0, 11),
	(1197, 720, 0, -4000, 1, 'Beth\'tilac', 38227, 0, 10),
	(1204, 720, 0, -3000, 4, 'Lord Rhyolith', 38414, 0, 10),
	(1205, 720, 0, -2375, 5, 'Shannox', 38448, 0, 10),
	(1206, 720, 0, -1750, 6, 'Alysrazor', 38044, 0, 10),
	(1200, 720, 0, -1000, 2, 'Baleroc', 38621, 0, 10),
	(1185, 720, 0, 0, 0, 'Majordomo Staghelm', 37953, 0, 10),
	(1203, 720, 0, 2000, 3, 'Ragnaros', 37875, 0, 11),
	(1147, 724, 0, 0, 0, 'Baltharus the Warborn', 31761, 0, 8),
	(1149, 724, 0, 500, 2, 'Saviana Ragefire', 31577, 0, 8),
	(1148, 724, 0, 1000, 1, 'General Zarithrian', 32179, 0, 8),
	(1150, 724, 0, 2000, 3, 'Halion', 31952, 0, 11),
	(1056, 725, 0, 0, 0, 'Corborus', 33477, 0, 0),
	(1059, 725, 0, 250, 3, 'Slabhide', 36476, 0, 0),
	(1058, 725, 0, 500, 2, 'Ozruk', 36475, 0, 0),
	(1057, 725, 0, 1000, 1, 'High Priestess Azil', 26448, 0, 0),
	(1035, 754, 0, -1000, 1, 'Conclave of Wind', 35232, 0, 10),
	(1034, 754, 0, 0, 0, 'Al\'Akir', 35248, 0, 11),
	(1052, 755, 0, 0, 0, 'General Husam', 34743, 0, 0),
	(1053, 755, 0, 1000, 1, 'High Prophet Barim', 34744, 0, 0),
	(1054, 755, 0, 2000, 2, 'Lockmaw', 33438, 0, 0),
	(1055, 755, 0, 3000, 3, 'Siamat', 35231, 0, 0),
	(1033, 757, 0, 0, 0, 'Argaloth', 35426, 0, 10),
	(1250, 757, 0, 1000, 1, 'Occu\'thar', 37876, 0, 10),
	(1332, 757, 0, 2000, 2, 'Alizabal', 21252, 0, 10),
	(1178, 859, 0, 0, 0, 'High Priest Venoxis', 37788, 0, 0),
	(1179, 859, 0, 1000, 1, 'Bloodlord Mandokir', 11288, 0, 0),
	(1188, 859, 0, 1500, 5, 'Cache of Madness', 37831, 0, 0),
	(1180, 859, 0, 2000, 2, 'High Priestess Kilnara', 37805, 0, 0),
	(1181, 859, 0, 3000, 3, 'Zanzil', 37813, 0, 0),
	(1182, 859, 0, 4000, 4, 'Jin\'do the Godbreaker', 37789, 0, 0),
	(1563, 870, 0, 0, 0, 'Galleon', 0, 0, 0),
	(1564, 870, 0, 1000, 1, 'Sha of Anger', 0, 0, 0),
	(1571, 870, 0, 2000, 2, 'Nalak', 0, 0, 0),
	(1587, 870, 0, 3000, 3, 'Oondasta', 0, 0, 0),
	(1269, 938, 0, 2000, 2, 'First Echo', 38791, 0, 0),
	(1268, 938, 0, 2500, 1, 'Second Echo', 17369, 0, 0),
	(1271, 938, 0, 4000, 4, 'Murozond', 38931, 0, 0),
	(1272, 939, 0, 0, 0, 'Peroth\'arn', 39182, 0, 0),
	(1273, 939, 0, 1000, 1, 'Queen Azshara', 38863, 0, 0),
	(1274, 939, 0, 2000, 2, 'Mannoroth', 38996, 0, 4),
	(1337, 940, 0, 0, 0, 'Arcurion', 39397, 0, 0),
	(1340, 940, 0, 500, 2, 'Asira Dawnslayer', 38995, 0, 0),
	(1339, 940, 0, 1000, 1, 'Archbishop Benedictus', 38991, 0, 0),
	(1303, 959, 0, 0, 0, 'Gu Cloudstrike', 39489, 0, 0),
	(1304, 959, 0, 1000, 1, 'Master Snowdrift', 0, 0, 0),
	(1305, 959, 0, 2000, 2, 'Sha of Violence', 18083, 0, 0),
	(1306, 959, 0, 3000, 3, 'Taran Zhu', 27920, 0, 0),
	(1418, 960, 0, -1000, 3, 'Wise Mari', 41125, 0, 0),
	(1417, 960, 0, 0, 2, 'Lorewalker Stonestep', 0, 0, 0),
	(1416, 960, 0, 1000, 1, 'Liu Flameheart', 39487, 0, 0),
	(1439, 960, 0, 3000, 0, 'Sha of Doubt', 40904, 0, 0),
	(1412, 961, 0, 0, 0, 'Ook-Ook', 39498, 0, 0),
	(1413, 961, 0, 1000, 1, 'Hoptallus', 40339, 0, 0),
	(1414, 961, 0, 2000, 2, 'Yan-Zhu the Uncasked', 40825, 0, 0),
	(1397, 962, 0, 0, 0, 'Saboteur Kip\'tilak', 11097, 0, 4),
	(1405, 962, 0, 1000, 1, 'Striker Ga\'dok', 0, 0, 0),
	(1406, 962, 0, 2000, 2, 'Commander Ri\'mok', 0, 0, 0),
	(1419, 962, 0, 3000, 3, 'Raigonn', 0, 0, 0),
	(1292, 967, 0, -1000, 1, 'Morchok', 34255, 0, 2),
	(1294, 967, 0, -500, 2, 'Warlord Zon\'ozz', 39138, 0, 2),
	(1295, 967, 0, -250, 3, 'Yor\'sahj the Unsleeping', 32501, 0, 2),
	(1296, 967, 0, -125, 4, 'Hagara', 39318, 0, 2),
	(1297, 967, 0, -62, 5, 'Ultraxion', 39099, 0, 2),
	(1298, 967, 0, -31, 6, 'Warmaster Blackhorn', 39399, 0, 2),
	(1291, 967, 0, 0, 0, 'Spine of Deathwing', 35361, 0, 6),
	(1299, 967, 0, 1000, 7, 'Madness of Deathwing', 40087, 0, 7),
	(1442, 994, 0, -1000, 2, 'Trial of the King', 42059, 0, 4),
	(1509, 994, 1, 0, 3, 'Gekkan', 41920, 0, 0),
	(1510, 994, 2, 500, 3, 'Gekkan', 41920, 0, 4),
	(1441, 994, 0, 1000, 1, 'Xin the Weaponmaster', 41987, 0, 0),
	(1409, 996, 0, 0, 0, 'Protectors of the Endless', 41503, 0, 6),
	(1505, 996, 0, 500, 2, 'Tsulong', 42533, 0, 6),
	(1506, 996, 0, 750, 3, 'Lei Shi', 40357, 0, 6),
	(1431, 996, 0, 1000, 1, 'Sha of Fear', 45065, 0, 7),
	(1422, 1001, 0, -1000, 2, 'Houndmaster Braun', 42264, 0, 12),
	(1421, 1001, 0, -500, 1, 'Armsmaster Harlan', 40293, 0, 12),
	(1420, 1001, 0, 0, 0, 'Flameweaver Koegler', 40597, 0, 12),
	(1423, 1004, 0, 0, 0, 'Thalnos the Soulrender', 0, 0, 12),
	(1424, 1004, 0, 1000, 1, 'Brother Korloff', 0, 0, 4),
	(1425, 1004, 0, 2000, 2, 'High Inquisitor Whitemane', 0, 0, 4),
	(1426, 1007, 0, 0, 0, 'Instructor Chillheart', 40301, 0, 0),
	(1427, 1007, 0, 1000, 1, 'Jandice Barov', 40639, 0, 0),
	(1428, 1007, 0, 2000, 2, 'Rattlegore', 31092, 0, 0),
	(1429, 1007, 0, 3000, 3, 'Lilian Voss', 40256, 0, 0),
	(1430, 1007, 0, 4000, 4, 'Darkmaster Gandling', 40322, 0, 0),
	(1395, 1008, 0, -1000, 1, 'The Stone Guard', 41155, 0, 6),
	(1390, 1008, 0, 0, 0, 'Feng the Accursed', 41192, 3957, 6),
	(1434, 1008, 0, 500, 3, 'Gara\'jal the Spiritbinder', 41256, 0, 6),
	(1436, 1008, 0, 2000, 4, 'The Spirit Kings', 41812, 0, 6),
	(1500, 1008, 0, 2500, 5, 'Elegon', 41399, 4458, 6),
	(1407, 1008, 0, 3000, 2, 'Will of the Emperor', 41391, 0, 7),
	(1507, 1009, 0, -2500, 6, 'Imperial Vizier Zor\'lok', 42807, 0, 6),
	(1504, 1009, 0, -1500, 5, 'Blade Lord Ta\'yak', 43141, 0, 6),
	(1463, 1009, 0, -1250, 0, 'Garalon', 42368, 0, 6),
	(1498, 1009, 0, -1000, 1, 'Wind Lord Mel\'jarak', 42645, 0, 6),
	(1499, 1009, 0, 1000, 2, 'Amber-Shaper Un\'sok', 43126, 0, 7),
	(1501, 1009, 0, 2000, 3, 'Grand Empress Shek\'zeer', 42730, 6211, 7),
	(1465, 1011, 0, 0, 2, 'Vizier Jin\'bak', 23915, 0, 0),
	(1502, 1011, 0, 1250, 3, 'Commander Vo\'jak', 42169, 0, 0),
	(1447, 1011, 0, 1500, 0, 'General Pa\'valak', 42105, 0, 0),
	(1464, 1011, 0, 2500, 1, 'Wing Leader Ner\'onok', 23915, 0, 0),
	(1577, 1098, 0, -3000, 9, 'Jin\'rokh the Breaker', 47552, 0, 6),
	(1575, 1098, 0, -2000, 7, 'Horridon', 47325, 0, 6),
	(1570, 1098, 0, -1500, 3, 'Council of Elders', 47505, 0, 6),
	(1565, 1098, 0, -1000, 2, 'Tortos', 46559, 0, 6),
	(1578, 1098, 0, -750, 10, 'Megaera', 0, 0, 6),
	(1573, 1098, 0, -500, 5, 'Ji-Kun', 0, 0, 6),
	(1572, 1098, 0, -250, 4, 'Durumu the Forgotten', 0, 0, 6),
	(1574, 1098, 0, -125, 6, 'Primordius', 47009, 0, 6),
	(1576, 1098, 0, -62, 8, 'Dark Animus', 47527, 0, 6),
	(1559, 1098, 0, 0, 0, 'Iron Qon', 46627, 6509, 7),
	(1560, 1098, 0, 1000, 1, 'Twin Consorts', 46974, 2611, 7),
	(1579, 1098, 0, 2000, 11, 'Lei Shen', 46770, 0, 6),
	(1580, 1098, 5, 3000, 12, 'Ra-den', 47739, 0, 6),
	(1581, 1098, 6, 3000, 12, 'Ra-den', 47739, 0, 6),
	(1602, 1136, 0, -3000, 7, 'Immerseus', 49056, 8146, 6),
	(1598, 1136, 0, -2000, 3, 'Fallen Protectors', 48918, 8147, 6),
	(1624, 1136, 0, -1875, 14, 'Norushen', 48860, 8148, 6),
	(1604, 1136, 0, -1750, 9, 'Sha of Pride', 49098, 6720, 6),
	(1622, 1136, 0, -1625, 12, 'Galakras', 49337, 8149, 6),
	(1600, 1136, 0, -1500, 5, 'Iron Juggernaut', 49844, 8150, 6),
	(1606, 1136, 0, -1375, 11, 'Kor\'kron Dark Shaman', 49176, 8151, 6),
	(1603, 1136, 0, -1250, 8, 'General Nazgrim', 48995, 8152, 6),
	(1595, 1136, 0, 1000, 2, 'Malkorok', 49070, 8153, 6),
	(1594, 1136, 0, 1500, 1, 'Spoils of Pandaria', 51173, 8154, 6),
	(1599, 1136, 0, 2000, 4, 'Thok the Bloodthirsty', 49023, 8099, 6),
	(1601, 1136, 0, 3000, 6, 'Siegecrafter Blackfuse', 51657, 8155, 6),
	(1593, 1136, 0, 3500, 0, 'Paragons of the Klaxxi', 48677, 8126, 6),
	(1623, 1136, 0, 3750, 13, 'Garrosh Hellscream', 49585, 8156, 6),
	(1605, 1136, 0, 4000, 10, 'Omar\'s Test Encounter (Cosmetic only) DNT', 0, 0, 16);
/*!40000 ALTER TABLE `dbc_dungeonencounter` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
