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

-- Dumping structure for table worldpvp.battlepay_product
CREATE TABLE IF NOT EXISTS `battlepay_product` (
  `ProductID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NormalPriceFixedPoint` bigint(20) unsigned NOT NULL,
  `CurrentPriceFixedPoint` bigint(20) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `ChoiceType` tinyint(3) unsigned NOT NULL,
  `Flags` int(11) unsigned NOT NULL,
  `DisplayInfoID` int(11) unsigned NOT NULL,
  `ScriptName` text NOT NULL,
  `ClassMask` int(12) unsigned NOT NULL DEFAULT '0',
  `WebsiteType` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=853 DEFAULT CHARSET=utf8;

-- Dumping data for table worldpvp.battlepay_product: ~927 rows (approximately)
DELETE FROM `battlepay_product`;
/*!40000 ALTER TABLE `battlepay_product` DISABLE KEYS */;
INSERT INTO `battlepay_product` (`ProductID`, `NormalPriceFixedPoint`, `CurrentPriceFixedPoint`, `Type`, `ChoiceType`, `Flags`, `DisplayInfoID`, `ScriptName`, `ClassMask`, `WebsiteType`) VALUES
	(1, 150, 150, 0, 2, 47, 1, '', 0, 3),
	(2, 150, 150, 0, 2, 47, 2, '', 0, 3),
	(3, 150, 150, 0, 2, 47, 3, '', 0, 3),
	(4, 120, 120, 0, 2, 47, 4, '', 0, 3),
	(5, 120, 120, 0, 2, 47, 5, '', 0, 3),
	(6, 120, 120, 0, 2, 47, 6, '', 0, 3),
	(7, 120, 120, 0, 2, 47, 7, '', 0, 3),
	(8, 120, 120, 0, 2, 47, 8, '', 0, 3),
	(9, 120, 120, 0, 2, 47, 9, '', 0, 3),
	(10, 120, 120, 0, 2, 47, 10, '', 0, 3),
	(11, 120, 120, 0, 2, 47, 11, '', 0, 3),
	(12, 120, 120, 0, 2, 47, 12, '', 0, 3),
	(13, 120, 120, 0, 2, 47, 13, '', 0, 3),
	(14, 120, 120, 0, 2, 47, 14, '', 0, 3),
	(15, 120, 120, 0, 2, 47, 15, '', 0, 3),
	(16, 120, 120, 0, 2, 47, 16, '', 0, 3),
	(17, 120, 120, 0, 2, 47, 17, '', 0, 3),
	(18, 120, 120, 0, 2, 47, 18, '', 0, 3),
	(19, 120, 120, 0, 2, 47, 19, '', 0, 3),
	(20, 120, 120, 0, 2, 47, 20, '', 0, 3),
	(22, 120, 120, 0, 2, 47, 22, '', 0, 3),
	(23, 120, 120, 0, 2, 47, 23, '', 0, 3),
	(24, 120, 120, 0, 2, 47, 24, '', 0, 3),
	(25, 120, 120, 0, 2, 47, 25, '', 0, 3),
	(26, 120, 120, 0, 2, 47, 26, '', 0, 3),
	(27, 120, 120, 0, 2, 47, 27, '', 0, 3),
	(28, 120, 120, 0, 2, 47, 28, '', 0, 3),
	(29, 120, 120, 0, 2, 47, 29, '', 0, 3),
	(30, 120, 120, 0, 2, 47, 30, '', 0, 3),
	(31, 100, 100, 0, 2, 47, 31, '', 0, 3),
	(32, 100, 100, 0, 2, 47, 32, '', 0, 3),
	(33, 100, 100, 0, 2, 47, 33, '', 0, 3),
	(34, 100, 100, 0, 2, 47, 34, '', 0, 3),
	(35, 100, 100, 0, 2, 47, 35, '', 0, 3),
	(36, 100, 100, 0, 2, 47, 36, '', 0, 3),
	(37, 100, 100, 0, 2, 47, 37, '', 0, 3),
	(38, 100, 100, 0, 2, 47, 38, '', 0, 3),
	(39, 100, 100, 0, 2, 47, 39, '', 0, 3),
	(40, 100, 100, 0, 2, 47, 40, '', 0, 3),
	(41, 100, 100, 0, 2, 47, 41, '', 0, 3),
	(42, 100, 100, 0, 2, 47, 42, '', 0, 3),
	(43, 100, 100, 0, 2, 47, 43, '', 0, 3),
	(44, 90, 90, 0, 2, 47, 44, '', 0, 3),
	(45, 90, 90, 0, 2, 47, 45, '', 0, 3),
	(46, 60, 60, 0, 2, 47, 46, '', 0, 3),
	(47, 60, 60, 0, 2, 47, 47, '', 0, 3),
	(48, 60, 60, 0, 2, 47, 48, '', 0, 3),
	(49, 60, 60, 0, 2, 47, 49, '', 0, 3),
	(50, 60, 60, 0, 2, 47, 50, '', 0, 3),
	(51, 60, 60, 0, 2, 47, 51, '', 0, 3),
	(52, 60, 60, 0, 2, 47, 52, '', 0, 3),
	(53, 60, 60, 0, 2, 47, 53, '', 0, 3),
	(54, 60, 60, 0, 2, 47, 54, '', 0, 3),
	(55, 60, 60, 0, 2, 47, 55, '', 0, 3),
	(56, 60, 60, 0, 2, 47, 56, '', 0, 3),
	(57, 60, 60, 0, 2, 47, 57, '', 0, 3),
	(58, 60, 60, 0, 2, 47, 58, '', 0, 3),
	(59, 60, 60, 0, 2, 47, 59, '', 0, 3),
	(60, 60, 60, 0, 2, 47, 60, '', 0, 3),
	(61, 60, 60, 0, 2, 47, 61, '', 0, 3),
	(62, 60, 60, 0, 2, 47, 62, '', 0, 3),
	(63, 60, 60, 0, 2, 47, 63, '', 0, 3),
	(64, 60, 60, 0, 2, 47, 64, '', 0, 3),
	(65, 60, 60, 0, 2, 47, 65, '', 0, 3),
	(66, 60, 60, 0, 2, 47, 66, '', 0, 3),
	(67, 60, 60, 0, 2, 47, 67, '', 0, 3),
	(68, 60, 60, 0, 2, 47, 68, '', 0, 3),
	(69, 60, 60, 0, 2, 47, 69, '', 0, 3),
	(70, 60, 60, 0, 2, 47, 70, '', 0, 3),
	(71, 40, 40, 0, 2, 47, 71, '', 0, 3),
	(72, 40, 40, 0, 2, 47, 72, '', 0, 3),
	(73, 40, 40, 0, 2, 47, 73, '', 0, 3),
	(74, 40, 40, 0, 2, 47, 74, '', 0, 3),
	(75, 40, 40, 0, 2, 47, 75, '', 0, 3),
	(76, 40, 40, 0, 2, 47, 76, '', 0, 3),
	(77, 40, 40, 0, 2, 47, 77, '', 0, 3),
	(78, 40, 40, 0, 2, 47, 78, '', 0, 3),
	(79, 40, 40, 0, 2, 47, 79, '', 0, 3),
	(80, 40, 40, 0, 2, 47, 80, '', 0, 3),
	(82, 40, 40, 0, 2, 47, 82, '', 0, 3),
	(83, 40, 40, 0, 2, 47, 83, '', 0, 3),
	(84, 40, 40, 0, 2, 47, 84, '', 0, 3),
	(85, 40, 40, 0, 2, 47, 85, '', 0, 3),
	(86, 10, 10, 0, 2, 47, 86, '', 0, 3),
	(87, 10, 10, 0, 2, 47, 87, '', 0, 3),
	(88, 10, 10, 0, 2, 47, 88, '', 0, 3),
	(89, 10, 10, 0, 2, 47, 89, '', 0, 3),
	(90, 10, 10, 0, 2, 47, 90, '', 0, 3),
	(91, 10, 10, 0, 2, 47, 91, '', 0, 3),
	(92, 10, 10, 0, 2, 47, 92, '', 0, 3),
	(93, 10, 10, 0, 2, 47, 93, '', 0, 3),
	(94, 10, 10, 0, 2, 47, 94, '', 0, 3),
	(95, 10, 10, 0, 2, 47, 95, '', 0, 3),
	(96, 10, 10, 0, 2, 47, 96, '', 0, 3),
	(98, 10, 10, 0, 2, 47, 98, '', 0, 3),
	(99, 10, 10, 0, 2, 47, 99, '', 0, 3),
	(100, 10, 10, 0, 2, 47, 100, '', 0, 3),
	(101, 10, 10, 0, 2, 47, 101, '', 0, 3),
	(102, 10, 10, 0, 2, 47, 102, '', 0, 3),
	(103, 10, 10, 0, 2, 47, 103, 'battlepay_gold_1k', 0, 7),
	(104, 40, 40, 0, 2, 47, 104, 'battlepay_gold_5k', 0, 7),
	(105, 50, 50, 0, 2, 47, 105, 'battlepay_gold_10k', 0, 7),
	(106, 90, 90, 0, 2, 47, 106, 'battlepay_gold_30k', 0, 7),
	(107, 140, 140, 0, 2, 47, 107, 'battlepay_gold_80k', 0, 7),
	(108, 200, 200, 0, 2, 47, 108, 'battlepay_gold_150k', 0, 7),
	(111, 40, 40, 0, 2, 47, 111, 'battlepay_service_rename', 0, 5),
	(112, 90, 90, 0, 2, 47, 112, 'battlepay_service_change_faction', 0, 9),
	(113, 50, 50, 0, 2, 47, 113, 'battlepay_service_change_race', 0, 10),
	(114, 45, 45, 0, 2, 47, 114, 'battlepay_service_customize', 0, 22),
	(115, 300, 300, 0, 2, 47, 115, 'battlepay_service_premade', 0, 11),
	(116, 120, 120, 0, 2, 47, 116, 'battlepay_profession_alchemy', 0, 16),
	(117, 50, 50, 0, 2, 47, 117, 'battlepay_profession_archaeology', 0, 16),
	(118, 120, 120, 0, 2, 47, 118, 'battlepay_profession_blacksmithing', 0, 16),
	(119, 50, 50, 0, 2, 47, 119, 'battlepay_profession_cooking', 0, 16),
	(120, 120, 120, 0, 2, 47, 120, 'battlepay_profession_enchanting', 0, 16),
	(121, 120, 120, 0, 2, 47, 121, 'battlepay_profession_engineering', 0, 16),
	(122, 50, 50, 0, 2, 47, 122, 'battlepay_profession_first_aid', 0, 16),
	(123, 50, 50, 0, 2, 47, 123, 'battlepay_profession_fishing', 0, 16),
	(124, 80, 80, 0, 2, 47, 124, 'battlepay_profession_herbalism', 0, 16),
	(125, 120, 120, 0, 2, 47, 125, 'battlepay_profession_inscription', 0, 16),
	(126, 120, 120, 0, 2, 47, 126, 'battlepay_profession_jewelcrafting', 0, 16),
	(127, 80, 80, 0, 2, 47, 127, 'battlepay_profession_skinning', 0, 16),
	(128, 120, 120, 0, 2, 47, 128, 'battlepay_profession_tailoring', 0, 16),
	(129, 80, 80, 0, 2, 47, 129, 'battlepay_profession_mining', 0, 16),
	(130, 120, 120, 0, 2, 47, 130, 'battlepay_profession_leatherworking', 0, 16),
	(131, 60, 60, 0, 2, 47, 131, '', 0, 3),
	(132, 40, 40, 0, 2, 47, 132, '', 0, 3),
	(133, 40, 40, 0, 2, 47, 133, '', 0, 3),
	(134, 40, 40, 0, 2, 47, 134, '', 0, 3),
	(135, 40, 40, 0, 2, 47, 135, '', 0, 3),
	(136, 40, 40, 0, 2, 47, 136, '', 0, 3),
	(137, 40, 40, 0, 2, 47, 137, '', 0, 3),
	(138, 40, 40, 0, 2, 47, 138, '', 0, 3),
	(139, 40, 40, 0, 2, 47, 139, '', 0, 3),
	(140, 40, 40, 0, 2, 47, 140, '', 0, 3),
	(141, 40, 40, 0, 2, 47, 141, '', 0, 3),
	(142, 40, 40, 0, 2, 47, 142, '', 0, 3),
	(143, 40, 40, 0, 2, 47, 143, '', 0, 3),
	(144, 40, 40, 0, 2, 47, 144, '', 0, 3),
	(145, 40, 40, 0, 2, 47, 145, '', 0, 3),
	(146, 40, 40, 0, 2, 47, 146, '', 0, 3),
	(147, 40, 40, 0, 2, 47, 147, '', 0, 3),
	(148, 40, 40, 0, 2, 47, 148, '', 0, 3),
	(149, 40, 40, 0, 2, 47, 149, '', 0, 3),
	(150, 40, 40, 0, 2, 47, 150, '', 0, 3),
	(151, 40, 40, 0, 2, 47, 151, '', 0, 3),
	(152, 40, 40, 0, 2, 47, 152, '', 0, 3),
	(153, 40, 40, 0, 2, 47, 153, '', 0, 3),
	(154, 40, 40, 0, 2, 47, 154, '', 0, 3),
	(155, 40, 40, 0, 2, 47, 155, '', 0, 3),
	(156, 40, 40, 0, 2, 47, 156, '', 0, 3),
	(157, 40, 40, 0, 2, 47, 157, '', 0, 3),
	(158, 40, 40, 0, 2, 47, 158, '', 0, 3),
	(159, 40, 40, 0, 2, 47, 159, '', 0, 3),
	(160, 40, 40, 0, 2, 47, 160, '', 0, 3),
	(161, 40, 40, 0, 2, 47, 161, '', 0, 3),
	(162, 40, 40, 0, 2, 47, 162, '', 0, 3),
	(163, 40, 40, 0, 2, 47, 163, '', 0, 3),
	(164, 40, 40, 0, 2, 47, 164, '', 0, 3),
	(165, 40, 40, 0, 2, 47, 165, '', 0, 3),
	(166, 40, 40, 0, 2, 47, 166, '', 0, 3),
	(167, 40, 40, 0, 2, 47, 167, '', 0, 3),
	(168, 40, 40, 0, 2, 47, 168, '', 0, 3),
	(169, 40, 40, 0, 2, 47, 169, '', 0, 3),
	(170, 40, 40, 0, 2, 47, 170, '', 0, 3),
	(171, 40, 40, 0, 2, 47, 171, '', 0, 3),
	(172, 40, 40, 0, 2, 47, 172, '', 0, 3),
	(173, 40, 40, 0, 2, 47, 173, '', 0, 3),
	(174, 40, 40, 0, 2, 47, 174, '', 0, 3),
	(175, 40, 40, 0, 2, 47, 175, '', 0, 3),
	(176, 40, 40, 0, 2, 47, 176, '', 0, 3),
	(177, 40, 40, 0, 2, 47, 177, '', 0, 3),
	(178, 40, 40, 0, 2, 47, 178, '', 0, 3),
	(179, 40, 40, 0, 2, 47, 179, '', 0, 3),
	(180, 30, 30, 0, 2, 47, 180, '', 0, 3),
	(181, 30, 30, 0, 2, 47, 181, '', 0, 3),
	(182, 30, 30, 0, 2, 47, 182, '', 0, 3),
	(183, 30, 30, 0, 2, 47, 183, '', 0, 3),
	(184, 30, 30, 0, 2, 47, 184, '', 0, 3),
	(185, 30, 30, 0, 2, 47, 185, '', 0, 3),
	(186, 30, 30, 0, 2, 47, 186, '', 0, 3),
	(187, 30, 30, 0, 2, 47, 187, '', 0, 3),
	(188, 30, 30, 0, 2, 47, 188, '', 0, 3),
	(189, 30, 30, 0, 2, 47, 189, '', 0, 3),
	(190, 30, 30, 0, 2, 47, 190, '', 0, 3),
	(191, 30, 30, 0, 2, 47, 191, '', 0, 3),
	(192, 30, 30, 0, 2, 47, 192, '', 0, 3),
	(193, 30, 30, 0, 2, 47, 193, '', 0, 3),
	(194, 30, 30, 0, 2, 47, 194, '', 0, 3),
	(195, 30, 30, 0, 2, 47, 195, '', 0, 3),
	(196, 30, 30, 0, 2, 47, 196, '', 0, 3),
	(197, 30, 30, 0, 2, 47, 197, '', 0, 3),
	(198, 30, 30, 0, 2, 47, 198, '', 0, 3),
	(199, 30, 30, 0, 2, 47, 199, '', 0, 3),
	(200, 30, 30, 0, 2, 47, 200, '', 0, 3),
	(201, 30, 30, 0, 2, 47, 201, '', 0, 3),
	(202, 30, 30, 0, 2, 47, 202, '', 0, 3),
	(203, 30, 30, 0, 2, 47, 203, '', 0, 3),
	(204, 30, 30, 0, 2, 47, 204, '', 0, 3),
	(205, 30, 30, 0, 2, 47, 205, '', 0, 3),
	(206, 30, 30, 0, 2, 47, 206, '', 0, 3),
	(207, 30, 30, 0, 2, 47, 207, '', 0, 3),
	(208, 30, 30, 0, 2, 47, 208, '', 0, 3),
	(209, 30, 30, 0, 2, 47, 209, '', 0, 3),
	(210, 30, 30, 0, 2, 47, 210, '', 0, 3),
	(211, 30, 30, 0, 2, 47, 211, '', 0, 3),
	(212, 30, 30, 0, 2, 47, 212, '', 0, 3),
	(213, 30, 30, 0, 2, 47, 213, '', 0, 3),
	(214, 30, 30, 0, 2, 47, 214, '', 0, 3),
	(215, 30, 30, 0, 2, 47, 215, '', 0, 3),
	(216, 30, 30, 0, 2, 47, 216, '', 0, 3),
	(217, 30, 30, 0, 2, 47, 217, '', 0, 3),
	(218, 30, 30, 0, 2, 47, 218, '', 0, 3),
	(219, 30, 30, 0, 2, 47, 219, '', 0, 3),
	(220, 30, 30, 0, 2, 47, 220, '', 0, 3),
	(221, 30, 30, 0, 2, 47, 221, '', 0, 3),
	(222, 30, 30, 0, 2, 47, 222, '', 0, 3),
	(223, 30, 30, 0, 2, 47, 223, '', 0, 3),
	(224, 30, 30, 0, 2, 0, 224, '', 0, 3),
	(225, 30, 30, 0, 2, 47, 225, '', 0, 3),
	(226, 20, 20, 0, 2, 47, 226, '', 0, 3),
	(227, 20, 20, 0, 2, 47, 227, '', 0, 3),
	(228, 20, 20, 0, 2, 47, 228, '', 0, 3),
	(229, 20, 20, 0, 2, 47, 229, '', 0, 3),
	(230, 20, 20, 0, 2, 47, 230, '', 0, 3),
	(231, 20, 20, 0, 2, 47, 231, '', 0, 3),
	(232, 20, 20, 0, 2, 47, 232, '', 0, 3),
	(233, 20, 20, 0, 2, 47, 233, '', 0, 3),
	(234, 20, 20, 0, 2, 47, 234, '', 0, 3),
	(235, 20, 20, 0, 2, 47, 235, '', 0, 3),
	(236, 20, 20, 0, 2, 47, 236, '', 0, 3),
	(237, 20, 20, 0, 2, 47, 237, '', 0, 3),
	(238, 20, 20, 0, 2, 47, 238, '', 0, 3),
	(239, 20, 20, 0, 2, 47, 239, '', 0, 3),
	(240, 20, 20, 0, 2, 47, 240, '', 0, 3),
	(241, 20, 20, 0, 2, 47, 241, '', 0, 3),
	(242, 20, 20, 0, 2, 47, 242, '', 0, 3),
	(243, 20, 20, 0, 2, 47, 243, '', 0, 3),
	(244, 20, 20, 0, 2, 47, 244, '', 0, 3),
	(245, 20, 20, 0, 2, 47, 245, '', 0, 3),
	(246, 20, 20, 0, 2, 47, 246, '', 0, 3),
	(247, 20, 20, 0, 2, 47, 247, '', 0, 3),
	(248, 20, 20, 0, 2, 47, 248, '', 0, 3),
	(249, 20, 20, 0, 2, 47, 249, '', 0, 3),
	(250, 20, 20, 0, 2, 47, 250, '', 0, 3),
	(251, 20, 20, 0, 2, 47, 251, '', 0, 3),
	(252, 20, 20, 0, 2, 47, 252, '', 0, 3),
	(253, 20, 20, 0, 2, 47, 253, '', 0, 3),
	(254, 20, 20, 0, 2, 47, 254, '', 0, 3),
	(255, 20, 20, 0, 2, 47, 255, '', 0, 3),
	(256, 20, 20, 0, 2, 47, 256, '', 0, 3),
	(257, 20, 20, 0, 2, 47, 257, '', 0, 3),
	(258, 20, 20, 0, 2, 47, 258, '', 0, 3),
	(259, 20, 20, 0, 2, 47, 259, '', 0, 3),
	(260, 20, 20, 0, 2, 47, 260, '', 0, 3),
	(261, 20, 20, 0, 2, 47, 261, '', 0, 3),
	(262, 20, 20, 0, 2, 47, 262, '', 0, 3),
	(263, 20, 20, 0, 2, 47, 263, '', 0, 3),
	(264, 20, 20, 0, 2, 47, 264, '', 0, 3),
	(265, 20, 20, 0, 2, 47, 265, '', 0, 3),
	(266, 20, 20, 0, 2, 47, 266, '', 0, 3),
	(267, 20, 20, 0, 2, 47, 267, '', 0, 3),
	(268, 20, 20, 0, 2, 47, 268, '', 0, 3),
	(269, 10, 10, 0, 2, 47, 269, '', 0, 3),
	(270, 10, 10, 0, 2, 47, 270, '', 0, 3),
	(271, 10, 10, 0, 2, 47, 271, '', 0, 3),
	(272, 10, 10, 0, 2, 47, 272, '', 0, 3),
	(273, 10, 10, 0, 2, 47, 273, '', 0, 3),
	(274, 10, 10, 0, 2, 47, 274, '', 0, 3),
	(275, 10, 10, 0, 2, 47, 275, '', 0, 3),
	(276, 10, 10, 0, 2, 47, 276, '', 0, 3),
	(277, 10, 10, 0, 2, 47, 277, '', 0, 3),
	(278, 10, 10, 0, 2, 47, 278, '', 0, 3),
	(279, 10, 10, 0, 2, 47, 279, '', 0, 3),
	(280, 10, 10, 0, 2, 47, 280, '', 0, 3),
	(281, 150, 150, 0, 2, 47, 281, '', 0, 3),
	(282, 50, 50, 0, 2, 47, 282, '', 0, 3),
	(283, 50, 50, 0, 2, 47, 283, '', 0, 3),
	(284, 40, 40, 0, 2, 47, 284, '', 0, 3),
	(285, 40, 40, 0, 2, 47, 285, '', 0, 3),
	(286, 40, 40, 0, 2, 47, 286, '', 0, 3),
	(287, 40, 40, 0, 2, 47, 287, '', 0, 3),
	(288, 40, 40, 0, 2, 47, 288, '', 0, 3),
	(289, 30, 30, 0, 2, 47, 289, '', 0, 3),
	(290, 30, 30, 0, 2, 47, 290, '', 0, 3),
	(291, 30, 30, 0, 2, 47, 291, '', 0, 3),
	(292, 30, 30, 0, 2, 47, 292, '', 0, 3),
	(293, 30, 30, 0, 2, 47, 293, '', 0, 3),
	(294, 30, 30, 0, 2, 47, 294, '', 0, 3),
	(295, 30, 30, 0, 2, 47, 295, '', 0, 3),
	(296, 30, 30, 0, 2, 47, 296, '', 0, 3),
	(297, 30, 30, 0, 2, 47, 297, '', 0, 3),
	(298, 30, 30, 0, 2, 47, 298, '', 0, 3),
	(299, 30, 30, 0, 2, 47, 299, '', 0, 3),
	(300, 30, 30, 0, 2, 47, 300, '', 0, 3),
	(301, 30, 30, 0, 2, 47, 301, '', 0, 3),
	(302, 30, 30, 0, 2, 47, 302, '', 0, 3),
	(303, 30, 30, 0, 2, 47, 303, '', 0, 3),
	(304, 30, 30, 0, 2, 47, 304, '', 0, 3),
	(305, 30, 30, 0, 2, 47, 305, '', 0, 3),
	(306, 30, 30, 0, 2, 47, 306, '', 0, 3),
	(307, 30, 30, 0, 2, 47, 307, '', 0, 3),
	(308, 30, 30, 0, 2, 47, 308, '', 0, 3),
	(309, 30, 30, 0, 2, 47, 309, '', 0, 3),
	(310, 30, 30, 0, 2, 47, 310, '', 0, 3),
	(311, 30, 30, 0, 2, 47, 311, '', 0, 3),
	(312, 20, 20, 0, 2, 47, 312, '', 0, 3),
	(313, 20, 20, 0, 2, 47, 313, '', 0, 3),
	(314, 20, 20, 0, 2, 47, 314, '', 0, 3),
	(315, 20, 20, 0, 2, 47, 315, '', 0, 3),
	(316, 20, 20, 0, 2, 47, 316, '', 0, 3),
	(317, 20, 20, 0, 2, 47, 317, '', 0, 3),
	(318, 20, 20, 0, 2, 47, 318, '', 0, 3),
	(319, 10, 10, 0, 2, 47, 319, '', 0, 3),
	(320, 10, 10, 0, 2, 47, 320, '', 0, 3),
	(321, 10, 10, 0, 2, 47, 321, '', 0, 3),
	(322, 10, 10, 0, 2, 47, 322, '', 0, 3),
	(323, 10, 10, 0, 2, 47, 323, '', 0, 3),
	(324, 10, 10, 0, 2, 47, 324, '', 0, 3),
	(325, 10, 10, 0, 2, 47, 325, '', 0, 3),
	(326, 10, 10, 0, 2, 47, 326, '', 0, 3),
	(327, 10, 10, 0, 2, 47, 327, '', 0, 3),
	(328, 10, 10, 0, 2, 47, 328, '', 0, 3),
	(329, 30, 30, 0, 2, 47, 329, '', 0, 3),
	(330, 30, 30, 0, 2, 47, 330, '', 0, 3),
	(331, 30, 30, 0, 2, 47, 331, '', 0, 3),
	(332, 30, 30, 0, 2, 47, 332, '', 0, 3),
	(333, 30, 30, 0, 2, 47, 333, '', 0, 3),
	(334, 30, 30, 0, 2, 47, 334, '', 0, 3),
	(335, 30, 30, 0, 2, 47, 335, '', 0, 3),
	(336, 30, 30, 0, 2, 47, 336, '', 0, 3),
	(337, 30, 30, 0, 2, 47, 337, '', 0, 3),
	(338, 30, 30, 0, 2, 47, 338, '', 0, 3),
	(339, 30, 30, 0, 2, 47, 339, '', 0, 3),
	(340, 30, 30, 0, 2, 47, 340, '', 0, 3),
	(341, 30, 30, 0, 2, 47, 341, '', 0, 3),
	(342, 30, 30, 0, 2, 47, 342, '', 0, 3),
	(343, 30, 30, 0, 2, 47, 343, '', 0, 3),
	(344, 30, 30, 0, 2, 47, 344, '', 0, 3),
	(345, 30, 30, 0, 2, 47, 345, '', 0, 3),
	(346, 30, 30, 0, 2, 47, 346, '', 0, 3),
	(347, 30, 30, 0, 2, 47, 347, '', 0, 3),
	(348, 30, 30, 0, 2, 47, 348, '', 0, 3),
	(349, 30, 30, 0, 2, 47, 349, '', 0, 3),
	(350, 30, 30, 0, 2, 47, 350, '', 0, 3),
	(351, 30, 30, 0, 2, 47, 351, '', 0, 3),
	(352, 30, 30, 0, 2, 47, 352, '', 0, 3),
	(353, 30, 30, 0, 2, 47, 353, '', 0, 3),
	(354, 30, 30, 0, 2, 47, 354, '', 0, 3),
	(355, 30, 30, 0, 2, 47, 355, '', 0, 3),
	(356, 30, 30, 0, 2, 47, 356, '', 0, 3),
	(357, 30, 30, 0, 2, 47, 357, '', 0, 3),
	(358, 30, 30, 0, 2, 47, 358, '', 0, 3),
	(359, 30, 30, 0, 2, 47, 359, '', 0, 3),
	(360, 30, 30, 0, 2, 47, 360, '', 0, 3),
	(361, 30, 30, 0, 2, 47, 361, '', 0, 3),
	(362, 30, 30, 0, 2, 47, 362, '', 0, 3),
	(363, 30, 30, 0, 2, 47, 363, '', 0, 3),
	(364, 30, 30, 0, 2, 47, 364, '', 0, 3),
	(365, 30, 30, 0, 2, 47, 365, '', 0, 3),
	(366, 30, 30, 0, 2, 47, 366, '', 0, 3),
	(367, 30, 30, 0, 2, 47, 367, '', 0, 3),
	(368, 30, 30, 0, 2, 47, 368, '', 0, 3),
	(369, 30, 30, 0, 2, 47, 369, '', 0, 3),
	(370, 30, 30, 0, 2, 47, 370, '', 0, 3),
	(371, 30, 30, 0, 2, 47, 371, '', 0, 3),
	(372, 30, 30, 0, 2, 47, 372, '', 0, 3),
	(373, 30, 30, 0, 2, 47, 373, '', 0, 3),
	(374, 30, 30, 0, 2, 47, 374, '', 0, 3),
	(375, 30, 30, 0, 2, 47, 375, '', 0, 3),
	(376, 30, 30, 0, 2, 47, 376, '', 0, 3),
	(377, 30, 30, 0, 2, 47, 377, '', 0, 3),
	(378, 30, 30, 0, 2, 47, 378, '', 0, 3),
	(379, 30, 30, 0, 2, 47, 379, '', 0, 3),
	(380, 30, 30, 0, 2, 47, 380, '', 0, 3),
	(381, 30, 30, 0, 2, 47, 381, '', 0, 3),
	(382, 30, 30, 0, 2, 47, 382, '', 0, 3),
	(383, 30, 30, 0, 2, 47, 383, '', 0, 3),
	(384, 30, 30, 0, 2, 47, 384, '', 0, 3),
	(385, 30, 30, 0, 2, 47, 385, '', 0, 3),
	(386, 30, 30, 0, 2, 47, 386, '', 0, 3),
	(387, 30, 30, 0, 2, 47, 387, '', 0, 3),
	(388, 30, 30, 0, 2, 47, 388, '', 0, 3),
	(389, 30, 30, 0, 2, 47, 389, '', 0, 3),
	(390, 30, 30, 0, 2, 47, 390, '', 0, 3),
	(391, 30, 30, 0, 2, 47, 391, '', 0, 3),
	(392, 30, 30, 0, 2, 47, 392, '', 0, 3),
	(393, 30, 30, 0, 2, 47, 393, '', 0, 3),
	(394, 30, 30, 0, 2, 47, 394, '', 0, 3),
	(395, 30, 30, 0, 2, 47, 395, '', 0, 3),
	(396, 30, 30, 0, 2, 47, 396, '', 0, 3),
	(397, 30, 30, 0, 2, 47, 397, '', 0, 3),
	(398, 30, 30, 0, 2, 47, 398, '', 0, 3),
	(399, 30, 30, 0, 2, 47, 399, '', 0, 3),
	(400, 30, 30, 0, 2, 47, 400, '', 0, 3),
	(401, 30, 30, 0, 2, 47, 401, '', 0, 3),
	(402, 30, 30, 0, 2, 47, 402, '', 0, 3),
	(403, 30, 30, 0, 2, 47, 403, '', 0, 3),
	(404, 30, 30, 0, 2, 47, 404, '', 0, 3),
	(405, 30, 30, 0, 2, 47, 405, '', 0, 3),
	(406, 30, 30, 0, 2, 47, 406, '', 0, 3),
	(407, 30, 30, 0, 2, 47, 407, '', 0, 3),
	(408, 30, 30, 0, 2, 47, 408, '', 0, 3),
	(409, 30, 30, 0, 2, 47, 409, '', 0, 3),
	(410, 30, 30, 0, 2, 47, 410, '', 0, 3),
	(411, 30, 30, 0, 2, 47, 411, '', 0, 3),
	(412, 30, 30, 0, 2, 47, 412, '', 0, 3),
	(413, 30, 30, 0, 2, 47, 413, '', 0, 3),
	(414, 30, 30, 0, 2, 47, 414, '', 0, 3),
	(415, 30, 30, 0, 2, 47, 415, '', 0, 3),
	(416, 30, 30, 0, 2, 47, 416, '', 0, 3),
	(417, 30, 30, 0, 2, 47, 417, '', 0, 3),
	(418, 30, 30, 0, 2, 47, 418, '', 0, 3),
	(419, 30, 30, 0, 2, 47, 419, '', 0, 3),
	(420, 30, 30, 0, 2, 47, 420, '', 0, 3),
	(421, 30, 30, 0, 2, 47, 421, '', 0, 3),
	(422, 30, 30, 0, 2, 47, 422, '', 0, 3),
	(423, 30, 30, 0, 2, 47, 423, '', 0, 3),
	(424, 30, 30, 0, 2, 47, 424, '', 0, 3),
	(425, 30, 30, 0, 2, 47, 425, '', 0, 3),
	(426, 30, 30, 0, 2, 47, 426, '', 0, 3),
	(427, 30, 30, 0, 2, 47, 427, '', 0, 3),
	(428, 30, 30, 0, 2, 47, 428, '', 0, 3),
	(429, 30, 30, 0, 2, 47, 429, '', 0, 3),
	(430, 30, 30, 0, 2, 47, 430, '', 0, 3),
	(431, 30, 30, 0, 2, 47, 431, '', 0, 3),
	(432, 30, 30, 0, 2, 47, 432, '', 0, 3),
	(433, 30, 30, 0, 2, 47, 433, '', 0, 3),
	(434, 30, 30, 0, 2, 47, 434, '', 0, 3),
	(435, 30, 30, 0, 2, 47, 435, '', 0, 3),
	(436, 30, 30, 0, 2, 47, 436, '', 0, 3),
	(437, 30, 30, 0, 2, 47, 437, '', 0, 3),
	(438, 30, 30, 0, 2, 47, 438, '', 0, 3),
	(439, 30, 30, 0, 2, 47, 439, '', 0, 3),
	(440, 30, 30, 0, 2, 47, 440, '', 0, 3),
	(441, 30, 30, 0, 2, 47, 441, '', 0, 3),
	(442, 30, 30, 0, 2, 47, 442, '', 0, 3),
	(443, 30, 30, 0, 2, 47, 443, '', 0, 3),
	(444, 30, 30, 0, 2, 47, 444, '', 0, 3),
	(445, 30, 30, 0, 2, 47, 445, '', 0, 3),
	(446, 30, 30, 0, 2, 47, 446, '', 0, 3),
	(447, 30, 30, 0, 2, 47, 447, '', 0, 3),
	(448, 30, 30, 0, 2, 47, 448, '', 0, 3),
	(449, 30, 30, 0, 2, 47, 449, '', 0, 3),
	(450, 30, 30, 0, 2, 47, 450, '', 0, 3),
	(451, 30, 30, 0, 2, 47, 451, '', 0, 3),
	(452, 30, 30, 0, 2, 47, 452, '', 0, 3),
	(453, 30, 30, 0, 2, 47, 453, '', 0, 3),
	(454, 30, 30, 0, 2, 47, 454, '', 0, 3),
	(455, 30, 30, 0, 2, 47, 455, '', 0, 3),
	(456, 30, 30, 0, 2, 47, 456, '', 0, 3),
	(457, 30, 30, 0, 2, 47, 457, '', 0, 3),
	(458, 30, 30, 0, 2, 47, 458, '', 0, 3),
	(459, 30, 30, 0, 2, 47, 459, '', 0, 3),
	(460, 30, 30, 0, 2, 47, 460, '', 0, 3),
	(461, 30, 30, 0, 2, 47, 461, '', 0, 3),
	(462, 30, 30, 0, 2, 47, 462, '', 0, 3),
	(463, 30, 30, 0, 2, 47, 463, '', 0, 3),
	(464, 30, 30, 0, 2, 47, 464, '', 0, 3),
	(465, 30, 30, 0, 2, 47, 465, '', 0, 3),
	(466, 30, 30, 0, 2, 47, 466, '', 0, 3),
	(467, 30, 30, 0, 2, 47, 467, '', 0, 3),
	(468, 30, 30, 0, 2, 47, 468, '', 0, 3),
	(469, 30, 30, 0, 2, 47, 469, '', 0, 3),
	(470, 30, 30, 0, 2, 47, 470, '', 0, 3),
	(471, 30, 30, 0, 2, 47, 471, '', 0, 3),
	(472, 30, 30, 0, 2, 47, 472, '', 0, 3),
	(473, 30, 30, 0, 2, 47, 473, '', 0, 3),
	(474, 30, 30, 0, 2, 47, 474, '', 0, 3),
	(475, 30, 30, 0, 2, 47, 475, '', 0, 3),
	(476, 30, 30, 0, 2, 47, 476, '', 0, 3),
	(477, 30, 30, 0, 2, 47, 477, '', 0, 3),
	(478, 30, 30, 0, 2, 47, 478, '', 0, 3),
	(479, 30, 30, 0, 2, 47, 479, '', 0, 3),
	(480, 30, 30, 0, 2, 47, 480, '', 0, 3),
	(481, 30, 30, 0, 2, 47, 481, '', 0, 3),
	(482, 30, 30, 0, 2, 47, 482, '', 0, 3),
	(483, 30, 30, 0, 2, 47, 483, '', 0, 3),
	(484, 30, 30, 0, 2, 47, 484, '', 0, 3),
	(485, 30, 30, 0, 2, 47, 485, '', 0, 3),
	(486, 30, 30, 0, 2, 47, 486, '', 0, 3),
	(487, 30, 30, 0, 2, 47, 487, '', 0, 3),
	(488, 30, 30, 0, 2, 47, 488, '', 0, 3),
	(489, 30, 30, 0, 2, 47, 489, '', 0, 3),
	(490, 30, 30, 0, 2, 47, 490, '', 0, 3),
	(491, 30, 30, 0, 2, 47, 491, '', 0, 3),
	(492, 30, 30, 0, 2, 47, 492, '', 0, 3),
	(493, 30, 30, 0, 2, 47, 493, '', 0, 3),
	(494, 30, 30, 0, 2, 47, 494, '', 0, 3),
	(495, 30, 30, 0, 2, 47, 495, '', 0, 3),
	(496, 30, 30, 0, 2, 47, 496, '', 0, 3),
	(497, 30, 30, 0, 2, 47, 497, '', 0, 3),
	(498, 30, 30, 0, 2, 47, 498, '', 0, 3),
	(499, 30, 30, 0, 2, 47, 499, '', 0, 3),
	(500, 30, 30, 0, 2, 47, 500, '', 0, 3),
	(501, 30, 30, 0, 2, 47, 501, '', 0, 3),
	(502, 30, 30, 0, 2, 47, 502, '', 0, 3),
	(503, 30, 30, 0, 2, 47, 503, '', 0, 3),
	(504, 30, 30, 0, 2, 47, 504, '', 0, 3),
	(505, 30, 30, 0, 2, 47, 505, '', 0, 3),
	(506, 30, 30, 0, 2, 47, 506, '', 0, 3),
	(507, 30, 30, 0, 2, 47, 507, '', 0, 3),
	(508, 30, 30, 0, 2, 47, 508, '', 0, 3),
	(509, 30, 30, 0, 2, 47, 509, '', 0, 3),
	(510, 30, 30, 0, 2, 47, 510, '', 0, 3),
	(511, 30, 30, 0, 2, 47, 511, '', 0, 3),
	(512, 30, 30, 0, 2, 47, 512, '', 0, 3),
	(513, 30, 30, 0, 2, 47, 513, '', 0, 3),
	(514, 30, 30, 0, 2, 47, 514, '', 0, 3),
	(515, 30, 30, 0, 2, 47, 515, '', 0, 3),
	(516, 30, 30, 0, 2, 47, 516, '', 0, 3),
	(517, 30, 30, 0, 2, 47, 517, '', 0, 3),
	(518, 30, 30, 0, 2, 47, 518, '', 0, 3),
	(519, 30, 30, 0, 2, 47, 519, '', 0, 3),
	(520, 30, 30, 0, 2, 47, 520, '', 0, 3),
	(521, 30, 30, 0, 2, 47, 521, '', 0, 3),
	(522, 30, 30, 0, 2, 47, 522, '', 0, 3),
	(523, 30, 30, 0, 2, 47, 523, '', 0, 3),
	(524, 30, 30, 0, 2, 47, 524, '', 0, 3),
	(525, 30, 30, 0, 2, 47, 525, '', 0, 3),
	(526, 30, 30, 0, 2, 47, 526, '', 0, 3),
	(527, 30, 30, 0, 2, 47, 527, '', 0, 3),
	(528, 30, 30, 0, 2, 47, 528, '', 0, 3),
	(529, 30, 30, 0, 2, 47, 529, '', 0, 3),
	(530, 30, 30, 0, 2, 47, 530, '', 0, 3),
	(531, 30, 30, 0, 2, 47, 531, '', 0, 3),
	(532, 30, 30, 0, 2, 47, 532, '', 0, 3),
	(533, 30, 30, 0, 2, 47, 533, '', 0, 3),
	(534, 30, 30, 0, 2, 47, 534, '', 0, 3),
	(535, 30, 30, 0, 2, 47, 535, '', 0, 3),
	(536, 30, 30, 0, 2, 47, 536, '', 0, 3),
	(537, 30, 30, 0, 2, 47, 537, '', 0, 3),
	(538, 30, 30, 0, 2, 47, 538, '', 0, 3),
	(539, 30, 30, 0, 2, 47, 539, '', 0, 3),
	(540, 30, 30, 0, 2, 47, 540, '', 0, 3),
	(541, 30, 30, 0, 2, 47, 541, '', 0, 3),
	(542, 30, 30, 0, 2, 47, 542, '', 0, 3),
	(543, 30, 30, 0, 2, 47, 543, '', 0, 3),
	(544, 30, 30, 0, 2, 47, 544, '', 0, 3),
	(545, 30, 30, 0, 2, 47, 545, '', 0, 3),
	(546, 30, 30, 0, 2, 47, 546, '', 0, 3),
	(547, 30, 30, 0, 2, 47, 547, '', 0, 3),
	(548, 30, 30, 0, 2, 47, 548, '', 0, 3),
	(549, 30, 30, 0, 2, 47, 549, '', 0, 3),
	(550, 30, 30, 0, 2, 47, 550, '', 0, 3),
	(551, 30, 30, 0, 2, 47, 551, '', 0, 3),
	(552, 30, 30, 0, 2, 47, 552, '', 0, 3),
	(553, 30, 30, 0, 2, 47, 553, '', 0, 3),
	(554, 30, 30, 0, 2, 47, 554, '', 0, 3),
	(555, 30, 30, 0, 2, 47, 555, '', 0, 3),
	(556, 30, 30, 0, 2, 47, 556, '', 0, 3),
	(557, 30, 30, 0, 2, 47, 557, '', 0, 3),
	(558, 30, 30, 0, 2, 47, 558, '', 0, 3),
	(559, 30, 30, 0, 2, 47, 559, '', 0, 3),
	(560, 30, 30, 0, 2, 47, 560, '', 0, 3),
	(561, 30, 30, 0, 2, 47, 561, '', 0, 3),
	(562, 30, 30, 0, 2, 47, 562, '', 0, 3),
	(563, 30, 30, 0, 2, 47, 563, '', 0, 3),
	(564, 30, 30, 0, 2, 47, 564, '', 0, 3),
	(565, 30, 30, 0, 2, 47, 565, '', 0, 3),
	(566, 30, 30, 0, 2, 47, 566, '', 0, 3),
	(567, 30, 30, 0, 2, 47, 567, '', 0, 3),
	(568, 30, 30, 0, 2, 47, 568, '', 0, 3),
	(569, 30, 30, 0, 2, 47, 569, '', 0, 3),
	(570, 30, 30, 0, 2, 47, 570, '', 0, 3),
	(571, 30, 30, 0, 2, 47, 571, '', 0, 3),
	(572, 30, 30, 0, 2, 47, 572, '', 0, 3),
	(573, 30, 30, 0, 2, 47, 573, '', 0, 3),
	(574, 30, 30, 0, 2, 47, 574, '', 0, 3),
	(575, 30, 30, 0, 2, 47, 575, '', 0, 3),
	(576, 30, 30, 0, 2, 47, 576, '', 0, 3),
	(577, 30, 30, 0, 2, 47, 577, '', 0, 3),
	(578, 30, 30, 0, 2, 47, 578, '', 0, 3),
	(579, 30, 30, 0, 2, 47, 579, '', 0, 3),
	(580, 30, 30, 0, 2, 47, 580, '', 0, 3),
	(581, 30, 30, 0, 2, 47, 581, '', 0, 3),
	(582, 30, 30, 0, 2, 47, 582, '', 0, 3),
	(583, 30, 30, 0, 2, 47, 583, '', 0, 3),
	(584, 30, 30, 0, 2, 47, 584, '', 0, 3),
	(585, 30, 30, 0, 2, 47, 585, '', 0, 3),
	(586, 30, 30, 0, 2, 47, 586, '', 0, 3),
	(587, 30, 30, 0, 2, 47, 587, '', 0, 3),
	(588, 30, 30, 0, 2, 47, 588, '', 0, 3),
	(589, 30, 30, 0, 2, 47, 589, '', 0, 3),
	(590, 30, 30, 0, 2, 47, 590, '', 0, 3),
	(591, 30, 30, 0, 2, 47, 591, '', 0, 3),
	(592, 30, 30, 0, 2, 47, 592, '', 0, 3),
	(593, 30, 30, 0, 2, 47, 593, '', 0, 3),
	(594, 30, 30, 0, 2, 47, 594, '', 0, 3),
	(595, 30, 30, 0, 2, 47, 595, '', 0, 3),
	(596, 30, 30, 0, 2, 47, 596, '', 0, 3),
	(597, 30, 30, 0, 2, 47, 597, '', 0, 3),
	(598, 30, 30, 0, 2, 47, 598, '', 0, 3),
	(599, 30, 30, 0, 2, 47, 599, '', 0, 3),
	(600, 30, 30, 0, 2, 47, 600, '', 0, 3),
	(601, 30, 30, 0, 2, 47, 601, '', 0, 3),
	(602, 30, 30, 0, 2, 47, 602, '', 0, 3),
	(603, 30, 30, 0, 2, 47, 603, '', 0, 3),
	(604, 30, 30, 0, 2, 47, 604, '', 0, 3),
	(605, 30, 30, 0, 2, 47, 605, '', 0, 3),
	(606, 30, 30, 0, 2, 47, 606, '', 0, 3),
	(607, 30, 30, 0, 2, 47, 607, '', 0, 3),
	(608, 30, 30, 0, 2, 47, 608, '', 0, 3),
	(609, 30, 30, 0, 2, 47, 609, '', 0, 3),
	(610, 30, 30, 0, 2, 47, 610, '', 0, 3),
	(611, 30, 30, 0, 2, 47, 611, '', 0, 3),
	(612, 30, 30, 0, 2, 47, 612, '', 0, 3),
	(613, 30, 30, 0, 2, 47, 613, '', 0, 3),
	(614, 30, 30, 0, 2, 47, 614, '', 0, 3),
	(615, 30, 30, 0, 2, 47, 615, '', 0, 3),
	(616, 30, 30, 0, 2, 47, 616, '', 0, 3),
	(617, 30, 30, 0, 2, 47, 617, '', 0, 3),
	(618, 30, 30, 0, 2, 47, 618, '', 0, 3),
	(619, 30, 30, 0, 2, 47, 619, '', 0, 3),
	(620, 30, 30, 0, 2, 47, 620, '', 0, 3),
	(621, 30, 30, 0, 2, 47, 621, '', 0, 3),
	(622, 30, 30, 0, 2, 47, 622, '', 0, 3),
	(623, 30, 30, 0, 2, 47, 623, '', 0, 3),
	(624, 30, 30, 0, 2, 47, 624, '', 0, 3),
	(625, 30, 30, 0, 2, 47, 625, '', 0, 3),
	(626, 30, 30, 0, 2, 47, 626, '', 0, 3),
	(627, 30, 30, 0, 2, 47, 627, '', 0, 3),
	(628, 30, 30, 0, 2, 47, 628, '', 0, 3),
	(629, 30, 30, 0, 2, 47, 629, '', 0, 3),
	(630, 30, 30, 0, 2, 47, 630, '', 0, 3),
	(631, 30, 30, 0, 2, 47, 631, '', 0, 3),
	(632, 30, 30, 0, 2, 47, 632, '', 0, 3),
	(633, 30, 30, 0, 2, 47, 633, '', 0, 3),
	(634, 30, 30, 0, 2, 47, 634, '', 0, 3),
	(635, 30, 30, 0, 2, 47, 635, '', 0, 3),
	(636, 30, 30, 0, 2, 47, 636, '', 0, 3),
	(637, 30, 30, 0, 2, 47, 637, '', 0, 3),
	(638, 30, 30, 0, 2, 47, 638, '', 0, 3),
	(639, 30, 30, 0, 2, 47, 639, '', 0, 3),
	(640, 30, 30, 0, 2, 47, 640, '', 0, 3),
	(641, 30, 30, 0, 2, 47, 641, '', 0, 3),
	(642, 30, 30, 0, 2, 47, 642, '', 0, 3),
	(643, 30, 30, 0, 2, 47, 643, '', 0, 3),
	(644, 30, 30, 0, 2, 47, 644, '', 0, 3),
	(645, 30, 30, 0, 2, 47, 645, '', 0, 3),
	(646, 30, 30, 0, 2, 47, 646, '', 0, 3),
	(647, 30, 30, 0, 2, 47, 647, '', 0, 3),
	(648, 30, 30, 0, 2, 47, 648, '', 0, 3),
	(649, 30, 30, 0, 2, 47, 649, '', 0, 3),
	(650, 30, 30, 0, 2, 47, 650, '', 0, 3),
	(651, 30, 30, 0, 2, 47, 651, '', 0, 3),
	(652, 30, 30, 0, 2, 47, 652, '', 0, 3),
	(653, 30, 30, 0, 2, 47, 653, '', 0, 3),
	(654, 30, 30, 0, 2, 47, 654, '', 0, 3),
	(655, 30, 30, 0, 2, 47, 655, '', 0, 3),
	(656, 30, 30, 0, 2, 47, 656, '', 0, 3),
	(657, 30, 30, 0, 2, 47, 657, '', 0, 3),
	(658, 30, 30, 0, 2, 47, 658, '', 0, 3),
	(659, 30, 30, 0, 2, 47, 659, '', 0, 3),
	(660, 30, 30, 0, 2, 47, 660, '', 0, 3),
	(661, 30, 30, 0, 2, 47, 661, '', 0, 3),
	(662, 30, 30, 0, 2, 47, 662, '', 0, 3),
	(663, 30, 30, 0, 2, 47, 663, '', 0, 3),
	(664, 30, 30, 0, 2, 47, 664, '', 0, 3),
	(665, 30, 30, 0, 2, 47, 665, '', 0, 3),
	(666, 30, 30, 0, 2, 47, 666, '', 0, 3),
	(667, 30, 30, 0, 2, 47, 667, '', 0, 3),
	(668, 30, 30, 0, 2, 47, 668, '', 0, 3),
	(669, 30, 30, 0, 2, 47, 669, '', 0, 3),
	(670, 30, 30, 0, 2, 47, 670, '', 0, 3),
	(671, 30, 30, 0, 2, 47, 671, '', 0, 3),
	(672, 30, 30, 0, 2, 47, 672, '', 0, 3),
	(673, 30, 30, 0, 2, 47, 673, '', 0, 3),
	(674, 30, 30, 0, 2, 47, 674, '', 0, 3),
	(675, 30, 30, 0, 2, 47, 675, '', 0, 3),
	(676, 30, 30, 0, 2, 47, 676, '', 0, 3),
	(677, 30, 30, 0, 2, 47, 677, '', 0, 3),
	(678, 30, 30, 0, 2, 47, 678, '', 0, 3),
	(679, 30, 30, 0, 2, 47, 679, '', 0, 3),
	(680, 30, 30, 0, 2, 47, 680, '', 0, 3),
	(681, 30, 30, 0, 2, 47, 681, '', 0, 3),
	(682, 30, 30, 0, 2, 47, 682, '', 0, 3),
	(683, 30, 30, 0, 2, 47, 683, '', 0, 3),
	(684, 30, 30, 0, 2, 47, 684, '', 0, 3),
	(685, 30, 30, 0, 2, 47, 685, '', 0, 3),
	(686, 30, 30, 0, 2, 47, 686, '', 0, 3),
	(687, 30, 30, 0, 2, 47, 687, '', 0, 3),
	(688, 30, 30, 0, 2, 47, 688, '', 0, 3),
	(689, 30, 30, 0, 2, 47, 689, '', 0, 3),
	(690, 30, 30, 0, 2, 47, 690, '', 0, 3),
	(691, 30, 30, 0, 2, 47, 691, '', 0, 3),
	(692, 30, 30, 0, 2, 47, 692, '', 0, 3),
	(693, 30, 30, 0, 2, 47, 693, '', 0, 3),
	(694, 30, 30, 0, 2, 47, 694, '', 0, 3),
	(695, 30, 30, 0, 2, 47, 695, '', 0, 3),
	(696, 30, 30, 0, 2, 47, 696, '', 0, 3),
	(697, 30, 30, 0, 2, 47, 697, '', 0, 3),
	(698, 30, 30, 0, 2, 47, 698, '', 0, 3),
	(699, 30, 30, 0, 2, 47, 699, '', 0, 3),
	(700, 30, 30, 0, 2, 47, 700, '', 0, 3),
	(701, 30, 30, 0, 2, 47, 701, '', 0, 3),
	(702, 30, 30, 0, 2, 47, 702, '', 0, 3),
	(703, 30, 30, 0, 2, 47, 703, '', 0, 3),
	(704, 30, 30, 0, 2, 47, 704, '', 0, 3),
	(705, 30, 30, 0, 2, 47, 705, '', 0, 3),
	(706, 30, 30, 0, 2, 47, 706, '', 0, 3),
	(707, 30, 30, 0, 2, 47, 707, '', 0, 3),
	(708, 30, 30, 0, 2, 47, 708, '', 0, 3),
	(709, 30, 30, 0, 2, 47, 709, '', 0, 3),
	(710, 30, 30, 0, 2, 47, 710, '', 0, 3),
	(711, 30, 30, 0, 2, 47, 711, '', 0, 3),
	(712, 30, 30, 0, 2, 47, 712, '', 0, 3),
	(713, 30, 30, 0, 2, 47, 713, '', 0, 3),
	(714, 30, 30, 0, 2, 47, 714, '', 0, 3),
	(715, 30, 30, 0, 2, 47, 715, '', 0, 3),
	(716, 30, 30, 0, 2, 47, 716, '', 0, 3),
	(717, 30, 30, 0, 2, 47, 717, '', 0, 3),
	(718, 30, 30, 0, 2, 47, 718, '', 0, 3),
	(719, 30, 30, 0, 2, 47, 719, '', 0, 3),
	(720, 30, 30, 0, 2, 47, 720, '', 0, 3),
	(721, 30, 30, 0, 2, 47, 721, '', 0, 3),
	(722, 30, 30, 0, 2, 47, 722, '', 0, 3),
	(723, 30, 30, 0, 2, 47, 723, '', 0, 3),
	(724, 30, 30, 0, 2, 47, 724, '', 0, 3),
	(725, 30, 30, 0, 2, 47, 725, '', 0, 3),
	(727, 15, 15, 0, 2, 47, 727, '', 0, 3),
	(728, 15, 15, 0, 2, 47, 728, '', 0, 3),
	(729, 15, 15, 0, 2, 47, 729, '', 0, 3),
	(730, 10, 10, 0, 2, 47, 730, '', 0, 3),
	(731, 10, 10, 0, 2, 47, 731, '', 0, 3),
	(732, 50, 50, 0, 2, 47, 733, '', 0, 3),
	(733, 20, 20, 0, 2, 47, 734, '', 0, 3),
	(734, 10, 10, 0, 2, 47, 735, '', 0, 3),
	(735, 10, 10, 0, 2, 47, 736, '', 0, 3),
	(736, 10, 10, 0, 2, 47, 737, '', 0, 3),
	(737, 10, 10, 0, 2, 47, 738, '', 0, 3),
	(738, 10, 10, 0, 2, 47, 739, '', 0, 3),
	(739, 10, 10, 0, 2, 47, 740, '', 0, 3),
	(740, 50, 50, 0, 2, 47, 741, '', 0, 3),
	(741, 50, 50, 0, 2, 47, 742, '', 0, 3),
	(742, 50, 50, 0, 2, 47, 743, '', 0, 3),
	(743, 50, 50, 0, 2, 47, 744, '', 0, 3),
	(744, 50, 50, 0, 2, 47, 745, '', 0, 3),
	(745, 50, 50, 0, 2, 47, 746, '', 0, 3),
	(746, 50, 50, 0, 2, 47, 747, '', 0, 3),
	(747, 50, 50, 0, 2, 47, 748, '', 0, 3),
	(748, 50, 50, 0, 2, 47, 749, '', 0, 3),
	(749, 50, 50, 0, 2, 47, 750, '', 0, 3),
	(750, 50, 50, 0, 2, 47, 751, '', 0, 3),
	(751, 25, 25, 0, 2, 47, 752, '', 0, 3),
	(752, 25, 25, 0, 2, 47, 753, '', 0, 3),
	(753, 25, 25, 0, 2, 47, 754, '', 0, 3),
	(754, 25, 25, 0, 2, 47, 755, '', 0, 3),
	(755, 25, 25, 0, 2, 47, 756, '', 0, 3),
	(756, 25, 25, 0, 2, 47, 757, '', 0, 3),
	(757, 25, 25, 0, 2, 47, 758, '', 0, 3),
	(758, 25, 25, 0, 2, 47, 759, '', 0, 3),
	(759, 25, 25, 0, 2, 47, 760, '', 0, 3),
	(760, 25, 25, 0, 2, 47, 761, '', 0, 3),
	(761, 25, 25, 0, 2, 47, 762, '', 0, 3),
	(762, 25, 25, 0, 2, 47, 763, '', 0, 3),
	(763, 25, 25, 0, 2, 47, 764, '', 0, 3),
	(764, 25, 25, 0, 2, 47, 765, '', 0, 3),
	(765, 25, 25, 0, 2, 47, 766, '', 0, 3),
	(766, 25, 25, 0, 2, 47, 767, '', 0, 3),
	(767, 25, 25, 0, 2, 47, 768, '', 0, 3),
	(768, 25, 25, 0, 2, 47, 769, '', 0, 3),
	(769, 25, 25, 0, 2, 47, 770, '', 0, 3),
	(770, 25, 25, 0, 2, 47, 771, '', 0, 3),
	(771, 25, 25, 0, 2, 47, 772, '', 0, 3),
	(772, 25, 25, 0, 2, 47, 773, '', 0, 3),
	(773, 25, 25, 0, 2, 47, 774, '', 0, 3),
	(774, 25, 25, 0, 2, 47, 775, '', 0, 3),
	(775, 25, 25, 0, 2, 47, 776, '', 0, 3),
	(776, 25, 25, 0, 2, 47, 777, '', 0, 3),
	(777, 25, 25, 0, 2, 47, 778, '', 0, 3),
	(778, 25, 25, 0, 2, 47, 779, '', 0, 3),
	(779, 25, 25, 0, 2, 47, 780, '', 0, 3),
	(780, 25, 25, 0, 2, 47, 781, '', 0, 3),
	(781, 25, 25, 0, 2, 47, 782, '', 0, 3),
	(782, 25, 25, 0, 2, 47, 783, '', 0, 3),
	(783, 25, 25, 0, 2, 47, 784, '', 0, 3),
	(784, 25, 25, 0, 2, 47, 785, '', 0, 3),
	(785, 25, 25, 0, 2, 47, 786, '', 0, 3),
	(786, 25, 25, 0, 2, 47, 787, '', 0, 3),
	(787, 25, 25, 0, 2, 47, 788, '', 0, 3),
	(788, 25, 25, 0, 2, 47, 789, '', 0, 3),
	(789, 25, 25, 0, 2, 47, 790, '', 0, 3),
	(790, 25, 25, 0, 2, 47, 791, '', 0, 3),
	(791, 25, 25, 0, 2, 47, 792, '', 0, 3),
	(792, 25, 25, 0, 2, 47, 793, '', 0, 3),
	(793, 25, 25, 0, 2, 47, 794, '', 0, 3),
	(794, 25, 25, 0, 2, 47, 795, '', 0, 3),
	(795, 25, 25, 0, 2, 47, 796, '', 0, 3),
	(796, 25, 25, 0, 2, 47, 797, '', 0, 3),
	(797, 25, 25, 0, 2, 47, 798, '', 0, 3),
	(798, 25, 25, 0, 2, 47, 799, '', 0, 3),
	(799, 25, 25, 0, 2, 47, 800, '', 0, 3),
	(800, 25, 25, 0, 2, 47, 801, '', 0, 3),
	(801, 25, 25, 0, 2, 47, 802, '', 0, 3),
	(802, 25, 25, 0, 2, 47, 803, '', 0, 3),
	(803, 25, 25, 0, 2, 47, 804, '', 0, 3),
	(804, 25, 25, 0, 2, 47, 805, '', 0, 3),
	(805, 25, 25, 0, 2, 47, 806, '', 0, 3),
	(806, 25, 25, 0, 2, 47, 807, '', 0, 3),
	(807, 25, 25, 0, 2, 47, 808, '', 0, 3),
	(808, 25, 25, 0, 2, 47, 809, '', 0, 3),
	(809, 25, 25, 0, 2, 47, 810, '', 0, 3),
	(810, 25, 25, 0, 2, 47, 811, '', 0, 3),
	(811, 25, 25, 0, 2, 47, 812, '', 0, 3),
	(812, 25, 25, 0, 2, 47, 813, '', 0, 3),
	(813, 25, 25, 0, 2, 47, 814, '', 0, 3),
	(814, 25, 25, 0, 2, 47, 815, '', 0, 3),
	(815, 25, 25, 0, 2, 47, 816, '', 0, 3),
	(816, 25, 25, 0, 2, 47, 817, '', 0, 3),
	(817, 25, 25, 0, 2, 47, 818, '', 0, 3),
	(818, 25, 25, 0, 2, 47, 819, '', 0, 3),
	(819, 25, 25, 0, 2, 47, 820, '', 0, 3),
	(820, 25, 25, 0, 2, 47, 821, '', 0, 3),
	(821, 25, 25, 0, 2, 47, 822, '', 0, 3),
	(822, 25, 25, 0, 2, 47, 823, '', 0, 3),
	(823, 25, 25, 0, 2, 47, 824, '', 0, 3),
	(824, 25, 25, 0, 2, 47, 825, '', 0, 3),
	(825, 25, 25, 0, 2, 47, 826, '', 0, 3),
	(826, 25, 25, 0, 2, 47, 827, '', 0, 3),
	(827, 25, 25, 0, 2, 47, 828, '', 0, 3),
	(828, 25, 25, 0, 2, 47, 829, '', 0, 3),
	(829, 25, 25, 0, 2, 47, 830, '', 0, 3),
	(830, 25, 25, 0, 2, 47, 831, '', 0, 3),
	(831, 25, 25, 0, 2, 47, 832, '', 0, 3),
	(832, 25, 25, 0, 2, 47, 833, '', 0, 3),
	(833, 25, 25, 0, 2, 47, 834, '', 0, 3),
	(834, 25, 25, 0, 2, 47, 835, '', 0, 3),
	(835, 25, 25, 0, 2, 47, 836, '', 0, 3),
	(836, 25, 25, 0, 2, 47, 837, '', 0, 3),
	(837, 25, 25, 0, 2, 47, 838, '', 0, 3),
	(838, 25, 25, 0, 2, 47, 839, '', 0, 3),
	(839, 25, 25, 0, 2, 47, 840, '', 0, 3),
	(840, 25, 25, 0, 2, 47, 841, '', 0, 3),
	(841, 25, 25, 0, 2, 47, 842, '', 0, 3),
	(842, 25, 25, 0, 2, 47, 843, '', 0, 3),
	(843, 25, 25, 0, 2, 47, 844, '', 0, 3),
	(844, 25, 25, 0, 2, 47, 845, '', 0, 3),
	(845, 25, 25, 0, 2, 47, 846, '', 0, 3),
	(846, 25, 25, 0, 2, 47, 847, '', 0, 3),
	(847, 25, 25, 0, 2, 47, 848, '', 0, 3),
	(848, 25, 25, 0, 2, 47, 849, '', 0, 3),
	(849, 25, 25, 0, 2, 47, 850, '', 0, 3),
	(850, 25, 25, 0, 2, 47, 851, '', 0, 3),
	(851, 25, 25, 0, 2, 47, 852, '', 0, 3),
	(852, 150, 150, 0, 2, 47, 853, '', 0, 3);
/*!40000 ALTER TABLE `battlepay_product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
