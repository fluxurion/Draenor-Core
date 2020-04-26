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

-- Dumping structure for table worldlive.battlepay_shop_entry
CREATE TABLE IF NOT EXISTS `battlepay_shop_entry` (
  `EntryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) unsigned NOT NULL,
  `ProductID` int(11) unsigned NOT NULL,
  `Ordering` int(11) NOT NULL,
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  `BannerType` tinyint(3) unsigned NOT NULL,
  `DisplayInfoID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`EntryID`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8;

-- Dumping data for table worldlive.battlepay_shop_entry: ~879 rows (approximately)
DELETE FROM `battlepay_shop_entry`;
/*!40000 ALTER TABLE `battlepay_shop_entry` DISABLE KEYS */;
INSERT INTO `battlepay_shop_entry` (`EntryID`, `GroupID`, `ProductID`, `Ordering`, `Flags`, `BannerType`, `DisplayInfoID`) VALUES
	(1, 1, 1, 1, 0, 0, 0),
	(2, 1, 2, 2, 0, 0, 0),
	(3, 1, 3, 3, 0, 0, 0),
	(4, 1, 4, 4, 0, 0, 0),
	(5, 1, 5, 5, 0, 0, 0),
	(6, 1, 6, 6, 0, 0, 0),
	(7, 1, 7, 7, 0, 0, 0),
	(8, 1, 8, 8, 0, 0, 0),
	(9, 1, 9, 9, 0, 0, 0),
	(10, 1, 10, 10, 0, 0, 0),
	(11, 1, 11, 11, 0, 0, 0),
	(12, 1, 12, 12, 0, 0, 0),
	(13, 1, 13, 13, 0, 0, 0),
	(14, 1, 14, 14, 0, 0, 0),
	(15, 1, 15, 15, 0, 0, 0),
	(16, 1, 16, 16, 0, 0, 0),
	(17, 1, 17, 17, 0, 0, 0),
	(18, 1, 18, 18, 0, 0, 0),
	(19, 1, 19, 19, 0, 0, 0),
	(20, 1, 20, 20, 0, 0, 0),
	(22, 1, 22, 22, 0, 0, 0),
	(23, 1, 23, 23, 0, 0, 0),
	(24, 1, 24, 24, 0, 0, 0),
	(25, 1, 25, 25, 0, 0, 0),
	(26, 1, 26, 26, 0, 0, 0),
	(27, 1, 27, 27, 0, 0, 0),
	(28, 1, 28, 28, 0, 0, 0),
	(29, 1, 29, 29, 0, 0, 0),
	(30, 1, 30, 30, 0, 0, 0),
	(31, 1, 31, 31, 0, 0, 0),
	(32, 1, 32, 32, 0, 0, 0),
	(33, 1, 33, 33, 0, 0, 0),
	(34, 1, 34, 34, 0, 0, 0),
	(35, 1, 35, 35, 0, 0, 0),
	(36, 1, 36, 36, 0, 0, 0),
	(37, 1, 37, 37, 0, 0, 0),
	(38, 1, 38, 38, 0, 0, 0),
	(39, 1, 39, 39, 0, 0, 0),
	(40, 1, 40, 40, 0, 0, 0),
	(41, 1, 41, 41, 0, 0, 0),
	(42, 1, 42, 42, 0, 0, 0),
	(43, 1, 43, 43, 0, 0, 0),
	(44, 1, 44, 44, 0, 0, 0),
	(45, 1, 45, 45, 0, 0, 0),
	(46, 1, 46, 46, 0, 0, 0),
	(47, 1, 47, 47, 0, 0, 0),
	(48, 1, 48, 48, 0, 0, 0),
	(49, 1, 49, 49, 0, 0, 0),
	(50, 1, 50, 50, 0, 0, 0),
	(51, 1, 51, 51, 0, 0, 0),
	(52, 1, 52, 52, 0, 0, 0),
	(53, 1, 53, 53, 0, 0, 0),
	(54, 1, 54, 54, 0, 0, 0),
	(55, 1, 55, 55, 0, 0, 0),
	(56, 1, 56, 56, 0, 0, 0),
	(57, 1, 57, 57, 0, 0, 0),
	(58, 1, 58, 58, 0, 0, 0),
	(59, 1, 59, 59, 0, 0, 0),
	(60, 1, 60, 60, 0, 0, 0),
	(61, 1, 61, 61, 0, 0, 0),
	(62, 1, 62, 62, 0, 0, 0),
	(63, 1, 63, 63, 0, 0, 0),
	(64, 1, 64, 64, 0, 0, 0),
	(65, 1, 65, 65, 0, 0, 0),
	(66, 1, 66, 66, 0, 0, 0),
	(67, 1, 67, 67, 0, 0, 0),
	(68, 1, 68, 68, 0, 0, 0),
	(69, 1, 69, 69, 0, 0, 0),
	(70, 1, 70, 70, 0, 0, 0),
	(71, 1, 71, 71, 0, 0, 0),
	(72, 1, 72, 72, 0, 0, 0),
	(73, 1, 73, 73, 0, 0, 0),
	(74, 1, 74, 74, 0, 0, 0),
	(75, 1, 75, 75, 0, 0, 0),
	(76, 1, 76, 76, 0, 0, 0),
	(77, 1, 77, 77, 0, 0, 0),
	(78, 1, 78, 78, 0, 0, 0),
	(79, 1, 79, 79, 0, 0, 0),
	(80, 1, 80, 80, 0, 0, 0),
	(82, 1, 82, 82, 0, 0, 0),
	(83, 1, 83, 83, 0, 0, 0),
	(84, 1, 84, 84, 0, 0, 0),
	(85, 1, 85, 85, 0, 0, 0),
	(86, 1, 86, 86, 0, 0, 0),
	(87, 1, 87, 87, 0, 0, 0),
	(88, 1, 88, 88, 0, 0, 0),
	(89, 1, 89, 89, 0, 0, 0),
	(90, 1, 90, 90, 0, 0, 0),
	(91, 1, 91, 91, 0, 0, 0),
	(92, 1, 92, 92, 0, 0, 0),
	(93, 1, 93, 93, 0, 0, 0),
	(94, 1, 94, 94, 0, 0, 0),
	(95, 1, 95, 95, 0, 0, 0),
	(96, 1, 96, 96, 0, 0, 0),
	(98, 1, 98, 98, 0, 0, 0),
	(99, 1, 99, 99, 0, 0, 0),
	(100, 1, 100, 100, 0, 0, 0),
	(101, 1, 101, 101, 0, 0, 0),
	(102, 1, 102, 102, 0, 0, 0),
	(103, 4, 103, 6, 0, 0, 0),
	(104, 4, 104, 5, 0, 0, 0),
	(105, 4, 105, 4, 0, 0, 0),
	(106, 4, 106, 3, 0, 0, 0),
	(107, 4, 107, 2, 0, 0, 0),
	(108, 4, 108, 1, 0, 0, 0),
	(109, 3, 109, 6, 0, 0, 0),
	(110, 3, 110, 5, 0, 0, 0),
	(111, 3, 111, 0, 0, 0, 0),
	(112, 3, 112, 3, 0, 0, 0),
	(113, 3, 113, 2, 0, 0, 0),
	(114, 3, 114, 1, 0, 0, 0),
	(116, 5, 116, 0, 0, 0, 0),
	(117, 5, 117, 2, 0, 0, 0),
	(118, 5, 118, 1, 0, 0, 0),
	(119, 5, 119, 2, 0, 0, 0),
	(120, 5, 120, 0, 0, 0, 0),
	(121, 5, 121, 1, 0, 0, 0),
	(122, 5, 122, 2, 0, 0, 0),
	(123, 5, 123, 2, 0, 0, 0),
	(124, 5, 124, 1, 0, 0, 0),
	(125, 5, 125, 0, 0, 0, 0),
	(126, 5, 126, 0, 0, 0, 0),
	(127, 5, 127, 1, 0, 0, 0),
	(128, 5, 128, 0, 0, 0, 0),
	(129, 5, 129, 1, 0, 0, 0),
	(130, 5, 130, 0, 0, 0, 0),
	(131, 2, 131, 1, 0, 0, 0),
	(132, 2, 132, 2, 0, 0, 0),
	(133, 2, 133, 3, 0, 0, 0),
	(134, 2, 134, 4, 0, 0, 0),
	(135, 2, 135, 5, 0, 0, 0),
	(136, 2, 136, 6, 0, 0, 0),
	(137, 2, 137, 7, 0, 0, 0),
	(138, 2, 138, 8, 0, 0, 0),
	(139, 2, 139, 9, 0, 0, 0),
	(140, 2, 140, 10, 0, 0, 0),
	(141, 2, 141, 11, 0, 0, 0),
	(142, 2, 142, 12, 0, 0, 0),
	(143, 2, 143, 13, 0, 0, 0),
	(144, 2, 144, 14, 0, 0, 0),
	(145, 2, 145, 15, 0, 0, 0),
	(146, 2, 146, 16, 0, 0, 0),
	(147, 2, 147, 17, 0, 0, 0),
	(148, 2, 148, 18, 0, 0, 0),
	(149, 2, 149, 19, 0, 0, 0),
	(150, 2, 150, 20, 0, 0, 0),
	(151, 2, 151, 21, 0, 0, 0),
	(152, 2, 152, 22, 0, 0, 0),
	(153, 2, 153, 23, 0, 0, 0),
	(154, 2, 154, 24, 0, 0, 0),
	(155, 2, 155, 25, 0, 0, 0),
	(156, 2, 156, 26, 0, 0, 0),
	(157, 2, 157, 27, 0, 0, 0),
	(158, 2, 158, 28, 0, 0, 0),
	(159, 2, 159, 29, 0, 0, 0),
	(160, 2, 160, 30, 0, 0, 0),
	(161, 2, 161, 31, 0, 0, 0),
	(162, 2, 162, 32, 0, 0, 0),
	(163, 2, 163, 33, 0, 0, 0),
	(164, 2, 164, 34, 0, 0, 0),
	(165, 2, 165, 35, 0, 0, 0),
	(166, 2, 166, 36, 0, 0, 0),
	(167, 2, 167, 37, 0, 0, 0),
	(168, 2, 168, 38, 0, 0, 0),
	(169, 2, 169, 39, 0, 0, 0),
	(170, 2, 170, 40, 0, 0, 0),
	(171, 2, 171, 41, 0, 0, 0),
	(172, 2, 172, 42, 0, 0, 0),
	(173, 2, 173, 43, 0, 0, 0),
	(174, 2, 174, 44, 0, 0, 0),
	(175, 2, 175, 45, 0, 0, 0),
	(176, 2, 176, 46, 0, 0, 0),
	(177, 2, 177, 47, 0, 0, 0),
	(178, 2, 178, 48, 0, 0, 0),
	(179, 2, 179, 49, 0, 0, 0),
	(180, 2, 180, 50, 0, 0, 0),
	(181, 2, 181, 51, 0, 0, 0),
	(182, 2, 182, 52, 0, 0, 0),
	(183, 2, 183, 53, 0, 0, 0),
	(184, 2, 184, 54, 0, 0, 0),
	(185, 2, 185, 55, 0, 0, 0),
	(186, 2, 186, 56, 0, 0, 0),
	(187, 2, 187, 57, 0, 0, 0),
	(188, 2, 188, 58, 0, 0, 0),
	(189, 2, 189, 59, 0, 0, 0),
	(190, 2, 190, 60, 0, 0, 0),
	(191, 2, 191, 61, 0, 0, 0),
	(192, 2, 192, 62, 0, 0, 0),
	(193, 2, 193, 63, 0, 0, 0),
	(194, 2, 194, 64, 0, 0, 0),
	(195, 2, 195, 65, 0, 0, 0),
	(196, 2, 196, 66, 0, 0, 0),
	(197, 2, 197, 67, 0, 0, 0),
	(198, 2, 198, 68, 0, 0, 0),
	(199, 2, 199, 69, 0, 0, 0),
	(200, 2, 200, 70, 0, 0, 0),
	(201, 2, 201, 71, 0, 0, 0),
	(202, 2, 202, 72, 0, 0, 0),
	(203, 2, 203, 73, 0, 0, 0),
	(204, 2, 204, 74, 0, 0, 0),
	(205, 2, 205, 75, 0, 0, 0),
	(206, 2, 206, 76, 0, 0, 0),
	(207, 2, 207, 77, 0, 0, 0),
	(208, 2, 208, 78, 0, 0, 0),
	(209, 2, 209, 79, 0, 0, 0),
	(210, 2, 210, 80, 0, 0, 0),
	(211, 2, 211, 81, 0, 0, 0),
	(212, 2, 212, 82, 0, 0, 0),
	(213, 2, 213, 83, 0, 0, 0),
	(214, 2, 214, 84, 0, 0, 0),
	(215, 2, 215, 85, 0, 0, 0),
	(216, 2, 216, 86, 0, 0, 0),
	(217, 2, 217, 87, 0, 0, 0),
	(218, 2, 218, 88, 0, 0, 0),
	(219, 2, 219, 89, 0, 0, 0),
	(220, 2, 220, 90, 0, 0, 0),
	(221, 2, 221, 91, 0, 0, 0),
	(222, 2, 222, 92, 0, 0, 0),
	(223, 2, 223, 93, 0, 0, 0),
	(224, 2, 224, 94, 0, 0, 0),
	(225, 2, 225, 95, 0, 0, 0),
	(226, 2, 226, 96, 0, 0, 0),
	(227, 2, 227, 97, 0, 0, 0),
	(228, 2, 228, 98, 0, 0, 0),
	(229, 2, 229, 99, 0, 0, 0),
	(230, 2, 230, 100, 0, 0, 0),
	(231, 2, 231, 101, 0, 0, 0),
	(232, 2, 232, 102, 0, 0, 0),
	(233, 2, 233, 103, 0, 0, 0),
	(234, 2, 234, 104, 0, 0, 0),
	(235, 2, 235, 105, 0, 0, 0),
	(236, 2, 236, 106, 0, 0, 0),
	(237, 2, 237, 107, 0, 0, 0),
	(238, 2, 238, 108, 0, 0, 0),
	(239, 2, 239, 109, 0, 0, 0),
	(240, 2, 240, 110, 0, 0, 0),
	(241, 2, 241, 111, 0, 0, 0),
	(242, 2, 242, 112, 0, 0, 0),
	(243, 2, 243, 113, 0, 0, 0),
	(244, 2, 244, 114, 0, 0, 0),
	(245, 2, 245, 115, 0, 0, 0),
	(246, 2, 246, 116, 0, 0, 0),
	(247, 2, 247, 117, 0, 0, 0),
	(248, 2, 248, 118, 0, 0, 0),
	(249, 2, 249, 119, 0, 0, 0),
	(250, 2, 250, 120, 0, 0, 0),
	(251, 2, 251, 121, 0, 0, 0),
	(252, 2, 252, 122, 0, 0, 0),
	(253, 2, 253, 123, 0, 0, 0),
	(254, 2, 254, 124, 0, 0, 0),
	(255, 2, 255, 125, 0, 0, 0),
	(256, 2, 256, 126, 0, 0, 0),
	(257, 2, 257, 127, 0, 0, 0),
	(258, 2, 258, 128, 0, 0, 0),
	(259, 2, 259, 129, 0, 0, 0),
	(260, 2, 260, 130, 0, 0, 0),
	(261, 2, 261, 131, 0, 0, 0),
	(262, 2, 262, 132, 0, 0, 0),
	(263, 2, 263, 133, 0, 0, 0),
	(264, 2, 264, 134, 0, 0, 0),
	(265, 2, 265, 135, 0, 0, 0),
	(266, 2, 266, 136, 0, 0, 0),
	(267, 2, 267, 137, 0, 0, 0),
	(268, 2, 268, 138, 0, 0, 0),
	(269, 2, 269, 139, 0, 0, 0),
	(270, 2, 270, 140, 0, 0, 0),
	(271, 2, 271, 141, 0, 0, 0),
	(272, 2, 272, 142, 0, 0, 0),
	(273, 2, 273, 143, 0, 0, 0),
	(274, 2, 274, 144, 0, 0, 0),
	(275, 2, 275, 145, 0, 0, 0),
	(276, 2, 276, 146, 0, 0, 0),
	(277, 2, 277, 147, 0, 0, 0),
	(278, 2, 278, 148, 0, 0, 0),
	(279, 2, 279, 149, 0, 0, 0),
	(280, 2, 280, 150, 0, 0, 0),
	(329, 9, 281, 1, 0, 0, 0),
	(330, 9, 282, 2, 0, 0, 0),
	(331, 9, 283, 3, 0, 0, 0),
	(332, 9, 284, 4, 0, 0, 0),
	(333, 9, 285, 5, 0, 0, 0),
	(334, 9, 286, 6, 0, 0, 0),
	(335, 9, 287, 7, 0, 0, 0),
	(336, 9, 288, 8, 0, 0, 0),
	(337, 9, 289, 9, 0, 0, 0),
	(338, 9, 290, 10, 0, 0, 0),
	(339, 9, 291, 11, 0, 0, 0),
	(340, 9, 292, 12, 0, 0, 0),
	(341, 9, 293, 13, 0, 0, 0),
	(342, 9, 294, 14, 0, 0, 0),
	(343, 9, 295, 15, 0, 0, 0),
	(344, 9, 296, 16, 0, 0, 0),
	(345, 9, 297, 17, 0, 0, 0),
	(346, 9, 298, 18, 0, 0, 0),
	(347, 9, 299, 19, 0, 0, 0),
	(348, 9, 300, 20, 0, 0, 0),
	(349, 9, 301, 21, 0, 0, 0),
	(350, 9, 302, 22, 0, 0, 0),
	(351, 9, 303, 23, 0, 0, 0),
	(352, 9, 304, 24, 0, 0, 0),
	(353, 9, 305, 25, 0, 0, 0),
	(354, 9, 306, 26, 0, 0, 0),
	(355, 9, 307, 27, 0, 0, 0),
	(356, 9, 308, 28, 0, 0, 0),
	(357, 9, 309, 29, 0, 0, 0),
	(358, 9, 310, 30, 0, 0, 0),
	(359, 9, 311, 31, 0, 0, 0),
	(360, 9, 312, 32, 0, 0, 0),
	(361, 9, 313, 33, 0, 0, 0),
	(362, 9, 314, 34, 0, 0, 0),
	(363, 9, 315, 35, 0, 0, 0),
	(364, 9, 316, 36, 0, 0, 0),
	(365, 9, 317, 37, 0, 0, 0),
	(366, 9, 318, 38, 0, 0, 0),
	(367, 9, 319, 39, 0, 0, 0),
	(368, 9, 320, 40, 0, 0, 0),
	(369, 9, 321, 41, 0, 0, 0),
	(370, 9, 322, 42, 0, 0, 0),
	(371, 9, 323, 43, 0, 0, 0),
	(372, 9, 324, 44, 0, 0, 0),
	(373, 9, 325, 45, 0, 0, 0),
	(374, 9, 326, 46, 0, 0, 0),
	(375, 9, 327, 47, 0, 0, 0),
	(376, 9, 328, 48, 0, 0, 0),
	(377, 8, 329, 1, 0, 0, 0),
	(378, 8, 330, 2, 0, 0, 0),
	(379, 8, 331, 3, 0, 0, 0),
	(380, 8, 332, 4, 0, 0, 0),
	(381, 8, 333, 5, 0, 0, 0),
	(382, 8, 334, 6, 0, 0, 0),
	(383, 8, 335, 7, 0, 0, 0),
	(384, 8, 336, 8, 0, 0, 0),
	(385, 8, 337, 9, 0, 0, 0),
	(386, 8, 338, 10, 0, 0, 0),
	(387, 8, 339, 11, 0, 0, 0),
	(388, 8, 340, 12, 0, 0, 0),
	(389, 8, 341, 13, 0, 0, 0),
	(390, 8, 342, 14, 0, 0, 0),
	(391, 8, 343, 15, 0, 0, 0),
	(392, 8, 344, 16, 0, 0, 0),
	(393, 8, 345, 17, 0, 0, 0),
	(394, 8, 346, 18, 0, 0, 0),
	(395, 8, 347, 19, 0, 0, 0),
	(396, 8, 348, 20, 0, 0, 0),
	(397, 8, 349, 21, 0, 0, 0),
	(398, 8, 350, 22, 0, 0, 0),
	(399, 8, 351, 23, 0, 0, 0),
	(400, 8, 352, 24, 0, 0, 0),
	(401, 8, 353, 25, 0, 0, 0),
	(402, 8, 354, 26, 0, 0, 0),
	(403, 8, 355, 27, 0, 0, 0),
	(404, 8, 356, 28, 0, 0, 0),
	(405, 8, 357, 29, 0, 0, 0),
	(406, 8, 358, 30, 0, 0, 0),
	(407, 8, 359, 31, 0, 0, 0),
	(408, 8, 360, 32, 0, 0, 0),
	(409, 8, 361, 33, 0, 0, 0),
	(410, 8, 362, 34, 0, 0, 0),
	(411, 8, 363, 35, 0, 0, 0),
	(412, 8, 364, 36, 0, 0, 0),
	(413, 8, 365, 37, 0, 0, 0),
	(414, 8, 366, 38, 0, 0, 0),
	(415, 8, 367, 39, 0, 0, 0),
	(416, 8, 368, 40, 0, 0, 0),
	(417, 8, 369, 41, 0, 0, 0),
	(418, 8, 370, 42, 0, 0, 0),
	(419, 8, 371, 43, 0, 0, 0),
	(420, 8, 372, 44, 0, 0, 0),
	(421, 8, 373, 45, 0, 0, 0),
	(422, 8, 374, 46, 0, 0, 0),
	(423, 8, 375, 47, 0, 0, 0),
	(424, 8, 376, 48, 0, 0, 0),
	(425, 8, 377, 49, 0, 0, 0),
	(426, 8, 378, 50, 0, 0, 0),
	(427, 8, 379, 51, 0, 0, 0),
	(428, 8, 380, 52, 0, 0, 0),
	(429, 8, 381, 53, 0, 0, 0),
	(430, 8, 382, 54, 0, 0, 0),
	(431, 8, 383, 55, 0, 0, 0),
	(432, 8, 384, 56, 0, 0, 0),
	(433, 7, 385, 1, 0, 0, 0),
	(434, 7, 386, 2, 0, 0, 0),
	(435, 7, 387, 3, 0, 0, 0),
	(436, 7, 388, 4, 0, 0, 0),
	(437, 7, 389, 5, 0, 0, 0),
	(438, 7, 390, 6, 0, 0, 0),
	(439, 7, 391, 7, 0, 0, 0),
	(440, 7, 392, 8, 0, 0, 0),
	(441, 7, 393, 9, 0, 0, 0),
	(442, 7, 394, 10, 0, 0, 0),
	(443, 7, 395, 11, 0, 0, 0),
	(444, 7, 396, 12, 0, 0, 0),
	(445, 7, 397, 13, 0, 0, 0),
	(446, 7, 398, 14, 0, 0, 0),
	(447, 7, 399, 15, 0, 0, 0),
	(448, 7, 400, 16, 0, 0, 0),
	(449, 7, 401, 17, 0, 0, 0),
	(450, 7, 402, 18, 0, 0, 0),
	(451, 7, 403, 19, 0, 0, 0),
	(452, 7, 404, 20, 0, 0, 0),
	(453, 7, 405, 21, 0, 0, 0),
	(454, 7, 406, 22, 0, 0, 0),
	(455, 7, 407, 23, 0, 0, 0),
	(456, 7, 408, 24, 0, 0, 0),
	(457, 7, 409, 25, 0, 0, 0),
	(458, 7, 410, 26, 0, 0, 0),
	(459, 7, 411, 27, 0, 0, 0),
	(460, 7, 412, 28, 0, 0, 0),
	(461, 7, 413, 29, 0, 0, 0),
	(462, 7, 414, 30, 0, 0, 0),
	(463, 7, 415, 31, 0, 0, 0),
	(464, 7, 416, 32, 0, 0, 0),
	(465, 7, 417, 33, 0, 0, 0),
	(466, 7, 418, 34, 0, 0, 0),
	(467, 7, 419, 35, 0, 0, 0),
	(468, 7, 420, 36, 0, 0, 0),
	(469, 7, 421, 37, 0, 0, 0),
	(470, 7, 422, 38, 0, 0, 0),
	(471, 7, 423, 39, 0, 0, 0),
	(472, 7, 424, 40, 0, 0, 0),
	(473, 7, 425, 41, 0, 0, 0),
	(474, 7, 426, 42, 0, 0, 0),
	(475, 7, 427, 43, 0, 0, 0),
	(476, 7, 428, 44, 0, 0, 0),
	(477, 7, 429, 45, 0, 0, 0),
	(478, 7, 430, 46, 0, 0, 0),
	(479, 7, 431, 47, 0, 0, 0),
	(480, 7, 432, 48, 0, 0, 0),
	(481, 7, 433, 49, 0, 0, 0),
	(482, 7, 434, 50, 0, 0, 0),
	(483, 7, 435, 51, 0, 0, 0),
	(484, 7, 436, 52, 0, 0, 0),
	(485, 7, 437, 53, 0, 0, 0),
	(486, 7, 438, 54, 0, 0, 0),
	(487, 7, 439, 55, 0, 0, 0),
	(488, 7, 440, 56, 0, 0, 0),
	(489, 7, 441, 57, 0, 0, 0),
	(490, 7, 442, 58, 0, 0, 0),
	(491, 7, 443, 59, 0, 0, 0),
	(492, 7, 444, 60, 0, 0, 0),
	(493, 7, 445, 61, 0, 0, 0),
	(494, 7, 446, 62, 0, 0, 0),
	(495, 7, 447, 63, 0, 0, 0),
	(496, 7, 448, 64, 0, 0, 0),
	(497, 7, 449, 65, 0, 0, 0),
	(498, 7, 450, 66, 0, 0, 0),
	(499, 7, 451, 67, 0, 0, 0),
	(500, 7, 452, 68, 0, 0, 0),
	(501, 7, 453, 69, 0, 0, 0),
	(502, 7, 454, 70, 0, 0, 0),
	(503, 7, 455, 71, 0, 0, 0),
	(504, 7, 456, 72, 0, 0, 0),
	(505, 7, 457, 73, 0, 0, 0),
	(506, 7, 458, 74, 0, 0, 0),
	(507, 7, 459, 75, 0, 0, 0),
	(508, 7, 460, 76, 0, 0, 0),
	(509, 7, 461, 77, 0, 0, 0),
	(510, 7, 462, 78, 0, 0, 0),
	(511, 7, 463, 79, 0, 0, 0),
	(512, 7, 464, 80, 0, 0, 0),
	(513, 7, 465, 81, 0, 0, 0),
	(514, 7, 466, 82, 0, 0, 0),
	(515, 7, 467, 83, 0, 0, 0),
	(516, 7, 468, 84, 0, 0, 0),
	(517, 7, 469, 85, 0, 0, 0),
	(518, 7, 470, 86, 0, 0, 0),
	(519, 7, 471, 87, 0, 0, 0),
	(520, 7, 472, 88, 0, 0, 0),
	(521, 7, 473, 89, 0, 0, 0),
	(522, 7, 474, 90, 0, 0, 0),
	(523, 7, 475, 91, 0, 0, 0),
	(524, 7, 476, 92, 0, 0, 0),
	(525, 7, 477, 93, 0, 0, 0),
	(526, 7, 478, 94, 0, 0, 0),
	(527, 7, 479, 95, 0, 0, 0),
	(528, 7, 480, 96, 0, 0, 0),
	(529, 7, 481, 97, 0, 0, 0),
	(530, 7, 482, 98, 0, 0, 0),
	(531, 7, 483, 99, 0, 0, 0),
	(532, 7, 484, 100, 0, 0, 0),
	(533, 7, 485, 101, 0, 0, 0),
	(534, 7, 486, 102, 0, 0, 0),
	(535, 7, 487, 103, 0, 0, 0),
	(536, 7, 488, 104, 0, 0, 0),
	(537, 7, 489, 105, 0, 0, 0),
	(538, 7, 490, 106, 0, 0, 0),
	(539, 7, 491, 107, 0, 0, 0),
	(540, 7, 492, 108, 0, 0, 0),
	(541, 7, 493, 109, 0, 0, 0),
	(542, 7, 494, 110, 0, 0, 0),
	(543, 7, 495, 111, 0, 0, 0),
	(544, 7, 496, 112, 0, 0, 0),
	(545, 7, 497, 113, 0, 0, 0),
	(546, 7, 498, 114, 0, 0, 0),
	(547, 7, 499, 115, 0, 0, 0),
	(548, 7, 500, 116, 0, 0, 0),
	(549, 7, 501, 117, 0, 0, 0),
	(550, 7, 502, 118, 0, 0, 0),
	(551, 7, 503, 119, 0, 0, 0),
	(552, 7, 504, 120, 0, 0, 0),
	(553, 7, 505, 121, 0, 0, 0),
	(554, 7, 506, 122, 0, 0, 0),
	(555, 7, 507, 123, 0, 0, 0),
	(556, 7, 508, 124, 0, 0, 0),
	(557, 7, 509, 125, 0, 0, 0),
	(558, 7, 510, 126, 0, 0, 0),
	(559, 7, 511, 127, 0, 0, 0),
	(560, 7, 512, 128, 0, 0, 0),
	(561, 7, 513, 129, 0, 0, 0),
	(562, 7, 514, 130, 0, 0, 0),
	(563, 7, 515, 131, 0, 0, 0),
	(564, 7, 516, 132, 0, 0, 0),
	(565, 7, 517, 133, 0, 0, 0),
	(566, 7, 518, 134, 0, 0, 0),
	(567, 7, 519, 135, 0, 0, 0),
	(568, 7, 520, 136, 0, 0, 0),
	(569, 7, 521, 137, 0, 0, 0),
	(570, 7, 522, 138, 0, 0, 0),
	(571, 7, 523, 139, 0, 0, 0),
	(572, 7, 524, 140, 0, 0, 0),
	(573, 7, 525, 141, 0, 0, 0),
	(574, 7, 526, 142, 0, 0, 0),
	(575, 7, 527, 143, 0, 0, 0),
	(576, 7, 528, 144, 0, 0, 0),
	(577, 7, 529, 145, 0, 0, 0),
	(578, 7, 530, 146, 0, 0, 0),
	(579, 7, 531, 147, 0, 0, 0),
	(580, 7, 532, 148, 0, 0, 0),
	(581, 7, 533, 149, 0, 0, 0),
	(582, 7, 534, 150, 0, 0, 0),
	(583, 7, 535, 151, 0, 0, 0),
	(584, 7, 536, 152, 0, 0, 0),
	(585, 7, 537, 153, 0, 0, 0),
	(586, 7, 538, 154, 0, 0, 0),
	(587, 7, 539, 155, 0, 0, 0),
	(588, 7, 540, 156, 0, 0, 0),
	(589, 7, 541, 157, 0, 0, 0),
	(590, 7, 542, 158, 0, 0, 0),
	(591, 7, 543, 159, 0, 0, 0),
	(592, 7, 544, 160, 0, 0, 0),
	(593, 7, 545, 161, 0, 0, 0),
	(594, 7, 546, 162, 0, 0, 0),
	(595, 7, 547, 163, 0, 0, 0),
	(596, 7, 548, 164, 0, 0, 0),
	(597, 7, 549, 165, 0, 0, 0),
	(598, 7, 550, 166, 0, 0, 0),
	(599, 7, 551, 167, 0, 0, 0),
	(600, 7, 552, 168, 0, 0, 0),
	(601, 7, 553, 169, 0, 0, 0),
	(602, 7, 554, 170, 0, 0, 0),
	(603, 7, 555, 171, 0, 0, 0),
	(604, 7, 556, 172, 0, 0, 0),
	(605, 7, 557, 173, 0, 0, 0),
	(606, 7, 558, 174, 0, 0, 0),
	(607, 7, 559, 175, 0, 0, 0),
	(608, 7, 560, 176, 0, 0, 0),
	(609, 7, 561, 177, 0, 0, 0),
	(610, 7, 562, 178, 0, 0, 0),
	(611, 7, 563, 179, 0, 0, 0),
	(612, 7, 564, 180, 0, 0, 0),
	(613, 7, 565, 181, 0, 0, 0),
	(614, 7, 566, 182, 0, 0, 0),
	(615, 7, 567, 183, 0, 0, 0),
	(616, 7, 568, 184, 0, 0, 0),
	(617, 7, 569, 185, 0, 0, 0),
	(618, 7, 570, 186, 0, 0, 0),
	(619, 7, 571, 187, 0, 0, 0),
	(620, 7, 572, 188, 0, 0, 0),
	(621, 7, 573, 189, 0, 0, 0),
	(622, 7, 574, 190, 0, 0, 0),
	(623, 7, 575, 191, 0, 0, 0),
	(624, 7, 576, 192, 0, 0, 0),
	(625, 7, 577, 193, 0, 0, 0),
	(626, 7, 578, 194, 0, 0, 0),
	(627, 7, 579, 195, 0, 0, 0),
	(628, 7, 580, 196, 0, 0, 0),
	(629, 7, 581, 197, 0, 0, 0),
	(630, 7, 582, 198, 0, 0, 0),
	(631, 7, 583, 199, 0, 0, 0),
	(632, 7, 584, 200, 0, 0, 0),
	(633, 7, 585, 201, 0, 0, 0),
	(634, 7, 586, 202, 0, 0, 0),
	(635, 7, 587, 203, 0, 0, 0),
	(636, 7, 588, 204, 0, 0, 0),
	(637, 7, 589, 205, 0, 0, 0),
	(638, 7, 590, 206, 0, 0, 0),
	(639, 7, 591, 207, 0, 0, 0),
	(640, 7, 592, 208, 0, 0, 0),
	(641, 7, 593, 209, 0, 0, 0),
	(642, 7, 594, 210, 0, 0, 0),
	(643, 7, 595, 211, 0, 0, 0),
	(644, 7, 596, 212, 0, 0, 0),
	(645, 7, 597, 213, 0, 0, 0),
	(646, 7, 598, 214, 0, 0, 0),
	(647, 7, 599, 215, 0, 0, 0),
	(648, 7, 600, 216, 0, 0, 0),
	(649, 7, 601, 217, 0, 0, 0),
	(650, 7, 602, 218, 0, 0, 0),
	(651, 7, 603, 219, 0, 0, 0),
	(652, 7, 604, 220, 0, 0, 0),
	(653, 7, 605, 221, 0, 0, 0),
	(654, 7, 606, 222, 0, 0, 0),
	(655, 7, 607, 223, 0, 0, 0),
	(656, 7, 608, 224, 0, 0, 0),
	(657, 7, 609, 225, 0, 0, 0),
	(658, 7, 610, 226, 0, 0, 0),
	(659, 7, 611, 227, 0, 0, 0),
	(660, 7, 612, 228, 0, 0, 0),
	(661, 7, 613, 229, 0, 0, 0),
	(662, 7, 614, 230, 0, 0, 0),
	(663, 7, 615, 231, 0, 0, 0),
	(664, 7, 616, 232, 0, 0, 0),
	(665, 7, 617, 233, 0, 0, 0),
	(666, 7, 618, 234, 0, 0, 0),
	(667, 7, 619, 235, 0, 0, 0),
	(668, 7, 620, 236, 0, 0, 0),
	(669, 7, 621, 237, 0, 0, 0),
	(670, 7, 622, 238, 0, 0, 0),
	(671, 7, 623, 239, 0, 0, 0),
	(672, 7, 624, 240, 0, 0, 0),
	(673, 7, 625, 241, 0, 0, 0),
	(674, 7, 626, 242, 0, 0, 0),
	(675, 7, 627, 243, 0, 0, 0),
	(676, 7, 628, 244, 0, 0, 0),
	(677, 7, 629, 245, 0, 0, 0),
	(678, 7, 630, 246, 0, 0, 0),
	(679, 7, 631, 247, 0, 0, 0),
	(680, 7, 632, 248, 0, 0, 0),
	(681, 7, 633, 249, 0, 0, 0),
	(682, 7, 634, 250, 0, 0, 0),
	(683, 7, 635, 251, 0, 0, 0),
	(684, 7, 636, 252, 0, 0, 0),
	(685, 7, 637, 253, 0, 0, 0),
	(686, 7, 638, 254, 0, 0, 0),
	(687, 7, 639, 255, 0, 0, 0),
	(688, 7, 640, 256, 0, 0, 0),
	(689, 7, 641, 257, 0, 0, 0),
	(690, 7, 642, 258, 0, 0, 0),
	(691, 7, 643, 259, 0, 0, 0),
	(692, 7, 644, 260, 0, 0, 0),
	(693, 7, 645, 261, 0, 0, 0),
	(694, 7, 646, 262, 0, 0, 0),
	(695, 7, 647, 263, 0, 0, 0),
	(696, 7, 648, 264, 0, 0, 0),
	(697, 7, 649, 265, 0, 0, 0),
	(698, 7, 650, 266, 0, 0, 0),
	(699, 7, 651, 267, 0, 0, 0),
	(700, 7, 652, 268, 0, 0, 0),
	(701, 7, 653, 269, 0, 0, 0),
	(702, 7, 654, 270, 0, 0, 0),
	(703, 7, 655, 271, 0, 0, 0),
	(704, 7, 656, 272, 0, 0, 0),
	(705, 7, 657, 273, 0, 0, 0),
	(706, 7, 658, 274, 0, 0, 0),
	(707, 7, 659, 275, 0, 0, 0),
	(708, 7, 660, 276, 0, 0, 0),
	(709, 7, 661, 277, 0, 0, 0),
	(710, 7, 662, 278, 0, 0, 0),
	(711, 7, 663, 279, 0, 0, 0),
	(712, 7, 664, 280, 0, 0, 0),
	(713, 7, 665, 281, 0, 0, 0),
	(714, 7, 666, 282, 0, 0, 0),
	(715, 7, 667, 283, 0, 0, 0),
	(716, 7, 668, 284, 0, 0, 0),
	(717, 7, 669, 285, 0, 0, 0),
	(718, 7, 670, 286, 0, 0, 0),
	(719, 7, 671, 287, 0, 0, 0),
	(720, 7, 672, 288, 0, 0, 0),
	(721, 7, 673, 289, 0, 0, 0),
	(722, 7, 674, 290, 0, 0, 0),
	(723, 7, 675, 291, 0, 0, 0),
	(724, 7, 676, 292, 0, 0, 0),
	(725, 7, 677, 293, 0, 0, 0),
	(726, 7, 678, 294, 0, 0, 0),
	(727, 7, 679, 295, 0, 0, 0),
	(728, 7, 680, 296, 0, 0, 0),
	(729, 7, 681, 297, 0, 0, 0),
	(730, 7, 682, 298, 0, 0, 0),
	(731, 7, 683, 299, 0, 0, 0),
	(732, 7, 684, 300, 0, 0, 0),
	(733, 7, 685, 301, 0, 0, 0),
	(734, 7, 686, 302, 0, 0, 0),
	(735, 7, 687, 303, 0, 0, 0),
	(736, 7, 688, 304, 0, 0, 0),
	(737, 7, 689, 305, 0, 0, 0),
	(738, 7, 690, 306, 0, 0, 0),
	(739, 7, 691, 307, 0, 0, 0),
	(740, 7, 692, 308, 0, 0, 0),
	(741, 7, 693, 309, 0, 0, 0),
	(742, 7, 694, 310, 0, 0, 0),
	(743, 7, 695, 311, 0, 0, 0),
	(744, 7, 696, 312, 0, 0, 0),
	(745, 7, 697, 313, 0, 0, 0),
	(746, 7, 698, 314, 0, 0, 0),
	(747, 7, 699, 315, 0, 0, 0),
	(748, 7, 700, 316, 0, 0, 0),
	(749, 7, 701, 317, 0, 0, 0),
	(750, 7, 702, 318, 0, 0, 0),
	(751, 7, 703, 319, 0, 0, 0),
	(752, 7, 704, 320, 0, 0, 0),
	(753, 7, 705, 321, 0, 0, 0),
	(754, 7, 706, 322, 0, 0, 0),
	(755, 7, 707, 323, 0, 0, 0),
	(756, 7, 708, 324, 0, 0, 0),
	(757, 7, 709, 325, 0, 0, 0),
	(758, 7, 710, 326, 0, 0, 0),
	(759, 7, 711, 327, 0, 0, 0),
	(760, 7, 712, 328, 0, 0, 0),
	(761, 7, 713, 329, 0, 0, 0),
	(762, 7, 714, 330, 0, 0, 0),
	(763, 7, 715, 331, 0, 0, 0),
	(764, 7, 716, 332, 0, 0, 0),
	(765, 7, 717, 333, 0, 0, 0),
	(766, 7, 718, 334, 0, 0, 0),
	(767, 7, 719, 335, 0, 0, 0),
	(768, 7, 720, 336, 0, 0, 0),
	(769, 7, 721, 337, 0, 0, 0),
	(770, 7, 722, 338, 0, 0, 0),
	(771, 7, 723, 339, 0, 0, 0),
	(772, 7, 724, 340, 0, 0, 0),
	(773, 7, 725, 341, 0, 0, 0),
	(774, 10, 726, 1, 0, 0, 0),
	(775, 10, 727, 2, 0, 0, 0),
	(776, 10, 728, 3, 0, 0, 0),
	(777, 10, 729, 4, 0, 0, 0),
	(778, 10, 730, 5, 0, 0, 0),
	(779, 10, 731, 6, 0, 0, 0),
	(780, 11, 732, 0, 0, 0, 0),
	(782, 11, 733, 0, 0, 0, 0),
	(783, 11, 734, 3, 0, 0, 0),
	(784, 11, 735, 4, 0, 0, 0),
	(785, 11, 736, 5, 0, 0, 0),
	(786, 11, 737, 6, 0, 0, 0),
	(787, 11, 738, 7, 0, 0, 0),
	(788, 11, 739, 8, 0, 0, 0),
	(789, 12, 740, 1, 0, 0, 0),
	(790, 12, 741, 2, 0, 0, 0),
	(791, 12, 742, 3, 0, 0, 0),
	(792, 12, 743, 4, 0, 0, 0),
	(793, 12, 744, 5, 0, 0, 0),
	(794, 12, 745, 6, 0, 0, 0),
	(795, 12, 746, 7, 0, 0, 0),
	(796, 12, 747, 8, 0, 0, 0),
	(797, 12, 748, 9, 0, 0, 0),
	(798, 12, 749, 10, 0, 0, 0),
	(799, 12, 750, 11, 0, 0, 0),
	(800, 12, 751, 12, 0, 0, 0),
	(801, 12, 752, 13, 0, 0, 0),
	(802, 12, 753, 14, 0, 0, 0),
	(803, 12, 754, 15, 0, 0, 0),
	(804, 12, 755, 16, 0, 0, 0),
	(805, 12, 756, 17, 0, 0, 0),
	(806, 12, 757, 18, 0, 0, 0),
	(807, 12, 758, 19, 0, 0, 0),
	(808, 12, 759, 20, 0, 0, 0),
	(809, 12, 760, 21, 0, 0, 0),
	(810, 12, 761, 22, 0, 0, 0),
	(811, 12, 762, 23, 0, 0, 0),
	(812, 12, 763, 24, 0, 0, 0),
	(813, 12, 764, 25, 0, 0, 0),
	(814, 12, 765, 26, 0, 0, 0),
	(815, 12, 766, 27, 0, 0, 0),
	(816, 12, 767, 28, 0, 0, 0),
	(817, 12, 768, 29, 0, 0, 0),
	(818, 12, 769, 30, 0, 0, 0),
	(819, 12, 770, 31, 0, 0, 0),
	(820, 12, 771, 32, 0, 0, 0),
	(821, 12, 772, 33, 0, 0, 0),
	(822, 12, 773, 34, 0, 0, 0),
	(823, 12, 774, 35, 0, 0, 0),
	(824, 12, 775, 36, 0, 0, 0),
	(825, 12, 776, 37, 0, 0, 0),
	(826, 12, 777, 38, 0, 0, 0),
	(827, 12, 778, 39, 0, 0, 0),
	(828, 12, 779, 40, 0, 0, 0),
	(829, 12, 780, 41, 0, 0, 0),
	(830, 12, 781, 42, 0, 0, 0),
	(831, 12, 782, 43, 0, 0, 0),
	(832, 12, 783, 44, 0, 0, 0),
	(833, 12, 784, 45, 0, 0, 0),
	(834, 12, 785, 46, 0, 0, 0),
	(835, 12, 786, 47, 0, 0, 0),
	(836, 12, 787, 48, 0, 0, 0),
	(837, 12, 788, 49, 0, 0, 0),
	(838, 12, 789, 50, 0, 0, 0),
	(839, 12, 790, 51, 0, 0, 0),
	(840, 12, 791, 52, 0, 0, 0),
	(841, 12, 792, 53, 0, 0, 0),
	(842, 12, 793, 54, 0, 0, 0),
	(843, 12, 794, 55, 0, 0, 0),
	(844, 12, 795, 56, 0, 0, 0),
	(845, 12, 796, 57, 0, 0, 0),
	(846, 12, 797, 58, 0, 0, 0),
	(847, 12, 798, 59, 0, 0, 0),
	(848, 12, 799, 60, 0, 0, 0),
	(849, 12, 800, 61, 0, 0, 0),
	(850, 12, 801, 62, 0, 0, 0),
	(851, 12, 802, 63, 0, 0, 0),
	(852, 12, 803, 64, 0, 0, 0),
	(853, 12, 804, 65, 0, 0, 0),
	(854, 12, 805, 66, 0, 0, 0),
	(855, 12, 806, 67, 0, 0, 0),
	(856, 12, 807, 68, 0, 0, 0),
	(857, 12, 808, 69, 0, 0, 0),
	(858, 12, 809, 70, 0, 0, 0),
	(859, 12, 810, 71, 0, 0, 0),
	(860, 12, 811, 72, 0, 0, 0),
	(861, 12, 812, 73, 0, 0, 0),
	(862, 12, 813, 74, 0, 0, 0),
	(863, 12, 814, 75, 0, 0, 0),
	(864, 12, 815, 76, 0, 0, 0),
	(865, 12, 816, 77, 0, 0, 0),
	(866, 12, 817, 78, 0, 0, 0),
	(867, 12, 818, 79, 0, 0, 0),
	(868, 12, 819, 80, 0, 0, 0),
	(869, 12, 820, 81, 0, 0, 0),
	(870, 12, 821, 82, 0, 0, 0),
	(871, 12, 822, 83, 0, 0, 0),
	(872, 12, 823, 84, 0, 0, 0),
	(873, 12, 824, 85, 0, 0, 0),
	(874, 12, 825, 86, 0, 0, 0),
	(875, 12, 826, 87, 0, 0, 0),
	(876, 12, 827, 88, 0, 0, 0),
	(877, 12, 828, 89, 0, 0, 0),
	(878, 12, 829, 90, 0, 0, 0),
	(879, 12, 830, 91, 0, 0, 0),
	(880, 12, 831, 92, 0, 0, 0),
	(881, 12, 832, 93, 0, 0, 0),
	(882, 12, 833, 94, 0, 0, 0),
	(883, 12, 834, 95, 0, 0, 0),
	(884, 12, 835, 96, 0, 0, 0),
	(885, 12, 836, 97, 0, 0, 0),
	(886, 12, 837, 98, 0, 0, 0),
	(887, 12, 838, 99, 0, 0, 0),
	(888, 12, 839, 100, 0, 0, 0),
	(889, 12, 840, 101, 0, 0, 0),
	(890, 12, 841, 102, 0, 0, 0),
	(891, 12, 842, 103, 0, 0, 0),
	(892, 12, 843, 104, 0, 0, 0),
	(893, 12, 844, 105, 0, 0, 0),
	(894, 12, 845, 106, 0, 0, 0),
	(895, 12, 846, 107, 0, 0, 0),
	(896, 12, 847, 108, 0, 0, 0),
	(897, 12, 848, 109, 0, 0, 0),
	(898, 12, 849, 110, 0, 0, 0),
	(899, 12, 850, 111, 0, 0, 0),
	(900, 12, 851, 112, 0, 0, 0),
	(901, 8, 852, 0, 0, 0, 0);
/*!40000 ALTER TABLE `battlepay_shop_entry` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
