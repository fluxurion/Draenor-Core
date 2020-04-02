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

-- Dumping structure for table worldlive.npc_spellclick_spells
CREATE TABLE IF NOT EXISTS `npc_spellclick_spells` (
  `npc_entry` int(10) unsigned NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int(10) unsigned NOT NULL COMMENT 'spell which should be casted ',
  `cast_flags` tinyint(3) unsigned NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `user_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click',
  PRIMARY KEY (`npc_entry`,`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table worldlive.npc_spellclick_spells: 751 rows
DELETE FROM `npc_spellclick_spells`;
/*!40000 ALTER TABLE `npc_spellclick_spells` DISABLE KEYS */;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
	(28389, 51592, 1, 0),
	(28389, 51593, 3, 0),
	(25743, 46260, 1, 0),
	(28782, 52280, 1, 0),
	(28202, 50927, 2, 0),
	(28202, 50926, 1, 0),
	(31862, 61466, 1, 0),
	(31861, 61466, 1, 0),
	(32633, 61424, 1, 0),
	(29501, 54575, 3, 0),
	(29488, 54568, 3, 0),
	(29912, 55479, 3, 0),
	(31897, 60123, 2, 2),
	(31896, 60123, 2, 2),
	(31895, 60123, 2, 2),
	(31894, 60123, 2, 2),
	(31893, 60123, 2, 2),
	(31883, 60123, 2, 2),
	(33143, 62399, 0, 0),
	(28162, 61286, 2, 0),
	(28162, 39996, 1, 0),
	(26200, 61286, 2, 0),
	(26200, 39996, 1, 0),
	(28203, 50918, 1, 0),
	(28203, 50919, 2, 0),
	(33791, 62786, 1, 0),
	(33790, 62781, 1, 0),
	(32790, 57654, 1, 0),
	(32788, 57539, 1, 0),
	(30500, 56922, 2, 0),
	(32640, 61424, 1, 0),
	(29598, 54768, 1, 0),
	(27661, 48365, 1, 0),
	(27258, 48365, 1, 0),
	(50610, 93785, 1, 0),
	(36558, 67830, 1, 0),
	(35644, 67830, 1, 0),
	(40725, 75953, 1, 0),
	(32286, 61666, 1, 0),
	(29929, 58961, 1, 0),
	(29602, 54908, 1, 0),
	(29709, 55029, 1, 0),
	(27626, 49138, 1, 0),
	(28851, 52600, 1, 0),
	(34120, 55089, 1, 0),
	(30403, 56699, 1, 0),
	(26813, 47424, 1, 0),
	(26523, 48296, 1, 0),
	(27496, 48881, 1, 0),
	(27714, 49584, 1, 0),
	(27996, 50343, 1, 0),
	(28605, 52263, 1, 0),
	(28606, 52263, 1, 0),
	(28607, 52263, 1, 0),
	(28833, 52447, 1, 0),
	(30066, 57053, 1, 0),
	(27894, 60682, 1, 0),
	(28781, 60683, 1, 0),
	(33060, 65031, 1, 0),
	(33067, 65031, 1, 0),
	(33062, 65030, 1, 0),
	(33109, 62309, 1, 0),
	(30234, 61421, 0, 0),
	(27629, 49207, 1, 0),
	(27924, 50007, 1, 0),
	(28061, 50557, 1, 0),
	(28192, 50860, 1, 0),
	(28669, 52190, 1, 0),
	(28670, 53173, 1, 0),
	(28817, 52462, 1, 0),
	(28864, 52589, 1, 0),
	(29460, 54513, 1, 0),
	(29679, 54952, 1, 0),
	(29918, 54301, 1, 0),
	(30468, 56795, 1, 0),
	(30470, 56839, 1, 0),
	(33794, 62782, 1, 0),
	(30585, 57418, 1, 0),
	(30645, 57612, 1, 0),
	(32796, 60683, 1, 0),
	(32795, 60682, 1, 0),
	(52558, 98843, 1, 0),
	(33519, 63163, 1, 0),
	(30021, 55785, 3, 0),
	(30021, 46598, 1, 0),
	(39714, 74205, 1, 0),
	(33357, 75648, 1, 0),
	(32627, 60968, 1, 0),
	(32629, 46598, 1, 0),
	(28366, 60962, 1, 0),
	(28312, 46598, 1, 0),
	(28319, 46598, 1, 0),
	(28094, 60968, 1, 0),
	(27881, 60968, 1, 0),
	(28614, 46598, 1, 0),
	(29555, 47020, 1, 0),
	(29433, 47020, 1, 0),
	(25460, 46598, 1, 0),
	(29625, 46598, 1, 0),
	(30330, 46598, 1, 0),
	(32189, 46598, 1, 0),
	(33687, 46598, 1, 0),
	(33778, 43671, 1, 0),
	(30895, 46598, 1, 0),
	(30337, 43671, 1, 0),
	(33796, 62784, 1, 0),
	(33842, 63791, 1, 0),
	(33843, 63792, 1, 0),
	(30852, 57897, 2, 1),
	(26421, 47575, 1, 0),
	(31157, 46598, 1, 0),
	(33795, 62779, 1, 0),
	(33793, 62780, 1, 0),
	(33798, 62787, 1, 0),
	(33800, 62774, 1, 0),
	(33792, 62785, 1, 0),
	(32930, 65343, 0, 0),
	(24418, 43768, 3, 0),
	(25765, 43671, 1, 0),
	(26572, 46598, 1, 0),
	(27761, 43671, 1, 0),
	(28054, 50556, 1, 0),
	(29500, 46598, 1, 0),
	(30013, 43671, 1, 0),
	(30174, 46598, 1, 0),
	(30228, 56678, 1, 0),
	(33870, 63663, 1, 0),
	(34944, 68458, 1, 0),
	(29563, 56795, 2, 0),
	(28222, 52082, 1, 0),
	(24750, 46598, 1, 0),
	(27241, 46598, 1, 0),
	(28018, 46598, 1, 0),
	(29351, 46598, 1, 0),
	(29358, 46598, 1, 0),
	(29698, 46598, 1, 0),
	(29931, 46598, 1, 0),
	(30204, 46598, 1, 0),
	(30248, 61421, 0, 0),
	(36794, 46598, 1, 0),
	(36891, 46598, 1, 0),
	(36896, 46598, 1, 0),
	(38500, 46598, 1, 0),
	(24418, 46598, 1, 0),
	(33113, 46598, 1, 0),
	(36678, 46598, 1, 0),
	(33214, 46598, 1, 0),
	(35637, 46598, 1, 0),
	(35633, 46598, 1, 0),
	(35768, 46598, 1, 0),
	(34658, 46598, 1, 0),
	(35636, 46598, 1, 0),
	(35638, 46598, 1, 0),
	(35635, 46598, 1, 0),
	(35640, 46598, 1, 0),
	(35641, 46598, 1, 0),
	(35634, 46598, 1, 0),
	(33669, 46598, 1, 0),
	(36476, 46598, 1, 0),
	(36661, 46598, 1, 0),
	(33782, 63151, 1, 0),
	(33318, 63151, 1, 0),
	(33323, 63151, 1, 0),
	(33322, 63151, 1, 0),
	(33317, 63151, 1, 0),
	(33319, 63151, 1, 0),
	(33316, 63151, 1, 0),
	(33321, 63151, 1, 0),
	(33324, 63151, 1, 0),
	(33320, 63151, 1, 0),
	(33845, 63151, 1, 0),
	(33844, 63151, 1, 0),
	(33217, 63151, 1, 0),
	(40081, 46598, 0, 1),
	(50655, 93800, 1, 0),
	(40176, 74904, 1, 0),
	(40176, 74905, 3, 0),
	(40305, 46598, 1, 0),
	(25596, 45875, 0, 0),
	(28379, 51658, 0, 0),
	(38248, 71462, 1, 2),
	(37945, 70766, 3, 0),
	(38430, 70766, 3, 0),
	(38186, 70766, 3, 0),
	(38429, 70766, 3, 0),
	(33293, 63852, 1, 0),
	(28710, 46598, 1, 0),
	(29838, 46598, 1, 0),
	(33114, 46598, 1, 0),
	(33167, 46598, 1, 0),
	(34161, 46598, 1, 0),
	(25762, 43671, 1, 0),
	(27131, 48754, 1, 0),
	(31110, 46598, 1, 0),
	(31137, 46598, 1, 0),
	(34125, 63215, 1, 0),
	(31262, 46598, 1, 0),
	(31406, 46598, 1, 0),
	(31407, 46598, 1, 0),
	(31408, 46598, 1, 0),
	(31409, 46598, 1, 0),
	(32490, 46598, 1, 0),
	(31583, 59319, 1, 0),
	(31830, 46598, 1, 0),
	(31881, 46598, 1, 0),
	(31884, 46598, 1, 0),
	(32225, 46598, 1, 0),
	(32227, 46598, 1, 0),
	(32292, 46598, 1, 0),
	(32344, 46598, 1, 0),
	(37968, 46598, 1, 0),
	(35273, 68503, 1, 0),
	(34929, 43671, 1, 0),
	(36356, 66245, 1, 0),
	(35299, 46598, 1, 0),
	(34802, 68503, 1, 0),
	(34775, 66245, 1, 0),
	(34935, 43671, 1, 0),
	(34793, 66245, 1, 0),
	(36355, 46598, 1, 0),
	(35069, 46598, 1, 0),
	(34776, 46598, 1, 0),
	(29403, 49641, 1, 0),
	(31785, 59656, 1, 0),
	(31770, 59654, 1, 0),
	(31736, 59592, 1, 0),
	(31784, 59593, 1, 0),
	(33139, 46598, 1, 0),
	(33498, 63126, 2, 0),
	(27593, 49177, 1, 0),
	(30560, 57347, 1, 1),
	(34819, 65403, 1, 0),
	(34824, 65403, 1, 0),
	(34823, 65403, 1, 0),
	(34812, 65403, 1, 0),
	(34822, 65403, 1, 0),
	(32823, 46598, 1, 0),
	(32830, 46598, 1, 0),
	(32840, 46598, 1, 0),
	(30564, 57401, 1, 0),
	(30850, 57897, 2, 1),
	(33799, 62783, 1, 0),
	(31269, 46598, 1, 0),
	(29856, 55363, 2, 0),
	(29414, 18277, 1, 0),
	(26477, 61832, 0, 0),
	(26477, 61286, 2, 0),
	(26477, 47096, 2, 0),
	(30841, 57897, 2, 1),
	(50047, 93072, 1, 0),
	(29708, 55028, 1, 0),
	(50426, 93523, 1, 0),
	(30236, 57573, 1, 0),
	(24083, 55074, 1, 0),
	(46185, 125095, 1, 1),
	(27061, 47920, 0, 0),
	(45655, 39996, 1, 0),
	(45655, 61286, 2, 0),
	(45650, 39996, 1, 0),
	(45650, 61286, 2, 0),
	(45657, 39996, 1, 0),
	(45657, 61286, 2, 0),
	(46333, 91973, 1, 0),
	(42339, 61286, 1, 0),
	(46706, 116554, 0, 0),
	(60415, 116554, 0, 0),
	(66904, 46598, 1, 0),
	(59817, 46598, 1, 0),
	(59819, 46598, 0, 0),
	(58794, 111690, 1, 0),
	(30272, 57401, 3, 0),
	(62809, 122729, 1, 0),
	(53566, 114746, 1, 1),
	(57431, 130074, 1, 0),
	(55083, 130074, 1, 0),
	(54993, 130074, 1, 0),
	(57710, 115904, 1, 0),
	(59497, 115904, 1, 0),
	(55918, 95247, 1, 0),
	(55999, 129340, 1, 0),
	(57741, 115904, 1, 0),
	(39422, 74489, 3, 0),
	(39745, 76337, 1, 0),
	(39911, 75890, 1, 0),
	(41776, 86358, 1, 0),
	(41747, 78004, 1, 0),
	(36059, 68291, 1, 0),
	(36232, 97214, 1, 0),
	(42801, 80633, 1, 0),
	(42964, 80633, 1, 0),
	(43032, 80393, 1, 0),
	(43044, 90763, 1, 0),
	(43046, 90763, 1, 0),
	(43048, 80446, 1, 0),
	(43182, 80952, 1, 0),
	(43984, 65109, 1, 0),
	(43996, 65275, 1, 0),
	(61492, 131845, 1, 0),
	(44049, 93848, 1, 0),
	(44126, 82535, 1, 0),
	(44126, 82537, 1, 0),
	(32535, 61245, 1, 0),
	(42548, 79277, 2, 0),
	(32370, 59724, 1, 0),
	(51340, 86296, 1, 0),
	(45715, 85372, 1, 0),
	(46041, 85840, 1, 0),
	(46042, 85840, 1, 0),
	(46496, 86747, 1, 0),
	(47058, 87747, 1, 0),
	(47201, 87961, 1, 0),
	(37213, 70016, 0, 0),
	(40869, 76387, 1, 0),
	(51681, 95955, 2, 0),
	(47732, 88870, 1, 0),
	(48699, 90763, 1, 0),
	(49244, 86544, 1, 0),
	(49499, 90763, 1, 0),
	(38111, 66727, 1, 0),
	(38412, 72073, 1, 0),
	(44578, 71917, 1, 0),
	(44579, 72073, 1, 0),
	(44580, 72073, 1, 0),
	(47747, 89960, 1, 0),
	(48331, 89830, 1, 0),
	(48457, 90103, 1, 0),
	(48283, 94354, 1, 0),
	(48309, 71724, 1, 0),
	(44369, 85036, 1, 0),
	(41097, 82233, 1, 0),
	(41099, 93455, 3, 0),
	(41100, 93455, 3, 0),
	(41101, 93455, 3, 0),
	(41103, 93455, 3, 0),
	(41104, 93455, 3, 0),
	(41109, 93455, 3, 0),
	(41111, 93455, 3, 0),
	(41460, 84658, 1, 0),
	(47446, 88478, 1, 0),
	(47481, 88554, 1, 0),
	(47507, 88590, 1, 0),
	(48147, 93455, 3, 0),
	(48148, 93455, 3, 0),
	(49340, 91942, 1, 0),
	(38933, 73123, 1, 0),
	(38936, 46598, 0, 0),
	(28161, 51961, 1, 0),
	(29005, 60944, 1, 0),
	(50410, 93269, 3, 0),
	(35433, 46598, 1, 0),
	(35431, 46598, 1, 0),
	(35419, 68503, 1, 0),
	(35413, 60968, 1, 0),
	(35905, 63151, 1, 0),
	(38542, 73296, 1, 0),
	(41327, 58961, 1, 0),
	(42175, 58961, 1, 0),
	(44731, 58961, 1, 0),
	(44764, 58961, 1, 0),
	(46085, 58961, 1, 0),
	(46165, 58961, 1, 0),
	(46411, 58961, 1, 0),
	(47403, 58961, 1, 0),
	(47404, 58961, 1, 0),
	(47814, 58961, 1, 0),
	(47820, 58961, 1, 0),
	(47821, 58961, 1, 0),
	(47822, 58961, 1, 0),
	(48266, 58961, 1, 0),
	(48341, 89908, 1, 0),
	(48342, 89908, 1, 0),
	(48343, 89908, 1, 0),
	(44429, 67001, 1, 0),
	(35421, 68503, 1, 0),
	(35415, 66245, 1, 0),
	(26191, 46978, 1, 0),
	(27587, 49078, 1, 0),
	(27850, 60968, 3, 0),
	(28887, 52447, 1, 0),
	(30123, 55957, 3, 0),
	(36557, 67830, 0, 0),
	(39715, 74204, 1, 0),
	(39716, 74203, 1, 0),
	(39717, 74205, 1, 0),
	(25841, 46166, 3, 0),
	(25841, 46362, 3, 0),
	(52529, 96328, 3, 0),
	(35429, 68458, 1, 0),
	(39443, 89397, 1, 0),
	(35491, 47020, 1, 0),
	(28009, 47020, 1, 0),
	(28451, 47020, 1, 0),
	(25968, 47020, 1, 0),
	(39860, 47020, 1, 0),
	(31857, 60078, 0, 0),
	(33299, 47020, 1, 0),
	(33418, 47020, 1, 0),
	(33409, 47020, 1, 0),
	(33300, 47020, 1, 0),
	(33408, 47020, 1, 0),
	(33301, 47020, 1, 0),
	(33414, 47020, 1, 0),
	(33297, 47020, 1, 0),
	(33416, 47020, 1, 0),
	(33298, 47020, 1, 0),
	(58767, 111626, 3, 0),
	(2041, 46598, 1, 0),
	(2500, 46598, 1, 0),
	(4262, 46598, 1, 0),
	(17804, 46598, 1, 0),
	(25049, 46598, 1, 0),
	(29144, 46598, 1, 0),
	(23693, 46598, 1, 0),
	(24705, 46598, 1, 0),
	(24806, 46598, 1, 0),
	(24821, 46598, 1, 0),
	(24823, 46598, 1, 0),
	(24825, 46598, 1, 0),
	(25334, 46598, 1, 0),
	(25881, 46598, 1, 0),
	(26472, 46598, 1, 0),
	(26525, 46598, 1, 0),
	(26585, 46598, 1, 0),
	(26590, 46598, 1, 0),
	(26777, 46598, 1, 0),
	(26778, 46598, 1, 0),
	(26788, 46598, 1, 0),
	(26807, 46598, 1, 0),
	(26893, 46598, 1, 0),
	(27213, 46598, 1, 0),
	(27261, 46598, 1, 0),
	(27270, 46598, 1, 0),
	(27292, 46598, 1, 0),
	(27354, 46598, 1, 0),
	(27409, 46598, 1, 0),
	(27516, 46598, 1, 0),
	(27605, 46598, 1, 0),
	(27671, 46598, 1, 0),
	(27838, 46598, 1, 0),
	(27839, 46598, 1, 0),
	(27883, 46598, 1, 0),
	(27992, 46598, 1, 0),
	(27993, 46598, 1, 0),
	(28135, 46598, 1, 0),
	(28246, 46598, 1, 0),
	(28288, 46598, 1, 0),
	(28308, 46598, 1, 0),
	(28446, 46598, 1, 0),
	(28468, 46598, 1, 0),
	(28639, 46598, 1, 0),
	(28665, 46598, 1, 0),
	(28844, 46598, 1, 0),
	(28875, 46598, 1, 0),
	(29043, 46598, 1, 0),
	(29579, 46598, 1, 1),
	(29677, 46598, 1, 0),
	(29691, 46598, 1, 0),
	(29736, 46598, 1, 0),
	(29753, 46598, 1, 0),
	(29754, 46598, 1, 0),
	(29857, 46598, 1, 0),
	(29884, 46598, 1, 0),
	(30090, 46598, 1, 0),
	(30124, 46598, 1, 0),
	(30134, 43671, 1, 1),
	(30161, 46598, 1, 0),
	(30165, 46598, 1, 0),
	(30275, 46598, 1, 0),
	(30301, 46598, 1, 0),
	(30320, 46598, 1, 0),
	(30342, 46598, 1, 0),
	(30343, 46598, 1, 0),
	(30378, 46598, 1, 0),
	(30719, 46598, 1, 0),
	(31125, 46598, 1, 0),
	(31139, 46598, 1, 0),
	(31163, 46598, 1, 0),
	(31220, 46598, 1, 0),
	(31224, 46598, 1, 0),
	(31268, 46598, 1, 0),
	(31641, 46598, 1, 0),
	(31702, 46598, 1, 0),
	(31858, 46598, 1, 0),
	(32212, 46598, 1, 0),
	(32213, 46598, 1, 0),
	(32323, 46598, 1, 0),
	(32326, 46598, 1, 0),
	(32348, 46598, 1, 0),
	(32531, 46598, 1, 0),
	(32933, 46598, 1, 0),
	(32934, 46598, 1, 0),
	(33108, 46598, 1, 0),
	(33118, 46598, 1, 0),
	(33264, 46598, 1, 0),
	(33288, 46598, 1, 0),
	(33364, 46598, 1, 0),
	(33366, 46598, 1, 0),
	(33369, 46598, 1, 0),
	(33513, 46598, 1, 0),
	(33531, 46598, 1, 0),
	(33840, 46598, 1, 0),
	(33841, 46598, 1, 0),
	(33983, 46598, 1, 0),
	(33984, 46598, 1, 0),
	(36559, 46598, 1, 0),
	(35572, 46598, 1, 0),
	(35373, 46598, 1, 0),
	(34796, 46598, 1, 0),
	(34826, 46598, 1, 0),
	(35474, 46598, 1, 0),
	(35336, 46598, 1, 0),
	(35819, 46598, 1, 0),
	(35335, 46598, 1, 0),
	(34778, 46598, 1, 0),
	(34703, 46598, 1, 0),
	(36619, 46598, 1, 0),
	(36839, 46598, 1, 0),
	(37120, 46598, 1, 0),
	(37187, 46598, 1, 0),
	(37813, 46598, 1, 0),
	(37672, 46598, 1, 0),
	(33432, 46598, 1, 0),
	(38712, 46598, 1, 0),
	(37980, 46598, 1, 0),
	(36358, 46598, 1, 0),
	(35417, 46598, 1, 0),
	(35410, 46598, 1, 0),
	(35492, 46598, 1, 0),
	(37966, 46598, 1, 0),
	(36598, 46598, 1, 0),
	(36609, 46598, 1, 0),
	(38285, 46598, 1, 0),
	(39682, 46598, 1, 0),
	(39713, 46598, 1, 0),
	(39759, 46598, 1, 0),
	(39819, 46598, 1, 0),
	(40479, 46598, 1, 0),
	(34840, 46598, 1, 0),
	(35231, 46598, 1, 0),
	(44137, 46598, 1, 0),
	(51709, 46598, 1, 0),
	(46012, 46598, 1, 0),
	(47744, 46598, 1, 0),
	(51195, 46598, 1, 0),
	(47201, 87963, 2, 0),
	(34568, 65686, 1, 0),
	(34567, 65684, 1, 0),
	(53789, 93970, 1, 0),
	(53791, 98509, 1, 0),
	(53786, 98509, 1, 0),
	(28985, 46598, 1, 0),
	(28999, 46598, 1, 0),
	(36283, 69434, 1, 0),
	(53088, 98178, 3, 0),
	(36838, 46598, 1, 0),
	(43443, 65031, 1, 0),
	(43259, 46598, 1, 0),
	(47297, 46598, 1, 0),
	(41570, 46598, 1, 0),
	(34160, 46598, 1, 0),
	(40573, 46598, 1, 0),
	(34132, 160488, 1, 0),
	(45942, 46598, 1, 0),
	(34306, 65125, 1, 0),
	(53792, 93970, 1, 0),
	(53526, 99357, 2, 0),
	(35111, 65914, 1, 0),
	(35129, 66775, 1, 0),
	(35196, 66775, 1, 0),
	(35257, 67367, 1, 0),
	(35526, 67689, 1, 0),
	(35628, 67822, 1, 0),
	(42644, 79936, 1, 0),
	(39998, 74618, 1, 0),
	(62764, 122833, 2, 0),
	(42689, 79591, 3, 0),
	(62876, 122817, 2, 0),
	(52884, 97885, 1, 0),
	(52885, 97885, 1, 0),
	(52886, 97885, 1, 0),
	(52887, 97885, 1, 0),
	(52888, 97885, 1, 0),
	(52889, 97885, 1, 0),
	(52890, 97885, 1, 0),
	(53131, 76387, 1, 0),
	(53243, 98666, 1, 0),
	(53373, 64438, 1, 0),
	(53483, 99954, 1, 0),
	(53742, 99954, 1, 0),
	(53887, 97885, 1, 0),
	(62984, 123041, 2, 0),
	(53561, 99473, 2, 0),
	(53522, 99340, 2, 0),
	(60304, 116199, 3, 0),
	(60306, 116301, 3, 0),
	(60307, 116304, 3, 0),
	(60308, 116322, 3, 0),
	(48092, 93970, 1, 0),
	(44892, 46598, 1, 0),
	(53082, 98997, 1, 0),
	(56781, 46598, 1, 0),
	(56203, 105456, 1, 0),
	(62164, 123432, 1, 0),
	(48040, 46598, 1, 0),
	(48041, 46598, 1, 0),
	(47186, 46598, 1, 0),
	(39789, 46598, 1, 0),
	(34282, 46598, 1, 0),
	(42015, 46598, 1, 0),
	(39619, 46598, 1, 0),
	(50409, 46598, 1, 0),
	(55549, 46598, 1, 0),
	(63337, 123716, 3, 0),
	(53194, 97388, 1, 0),
	(60309, 124492, 1, 0),
	(60283, 124492, 1, 0),
	(82273, 165608, 2, 0),
	(77075, 157175, 1, 0),
	(84904, 173426, 1, 0),
	(83612, 46598, 1, 0),
	(81247, 46598, 1, 0),
	(84215, 46598, 1, 0),
	(81297, 46598, 1, 0),
	(84926, 169691, 1, 1),
	(60698, 117469, 2, 0),
	(86039, 173426, 1, 0),
	(34830, 66306, 1, 0),
	(48526, 70015, 3, 0),
	(59505, 114457, 3, 0),
	(35317, 46598, 1, 0),
	(75164, 151271, 1, 0),
	(34045, 65030, 1, 0),
	(56130, 75648, 1, 0),
	(55715, 104515, 1, 0),
	(62346, 46598, 1, 0),
	(36768, 65030, 0, 0),
	(66564, 131845, 1, 0),
	(66565, 131845, 1, 0),
	(66567, 131845, 1, 0),
	(69693, 104080, 3, 0),
	(80047, 161556, 3, 0),
	(76722, 155123, 3, 0),
	(74811, 150459, 1, 0),
	(35486, 67492, 3, 0),
	(59530, 114505, 3, 0),
	(75560, 151741, 3, 0),
	(75167, 151355, 3, 0),
	(78971, 157965, 3, 0),
	(14864, 104517, 1, 0),
	(79446, 155071, 3, 0),
	(81948, 155071, 1, 0),
	(64224, 161758, 1, 0),
	(62769, 161759, 1, 0),
	(69695, 104080, 3, 0),
	(69697, 104080, 3, 0),
	(69688, 104080, 3, 0),
	(69686, 104080, 3, 0),
	(69684, 104080, 3, 0),
	(69682, 104080, 3, 0),
	(83615, 167424, 3, 0),
	(83615, 167456, 3, 0),
	(83615, 167446, 3, 0),
	(45005, 81780, 1, 0),
	(70052, 138680, 1, 0),
	(69964, 139200, 1, 0),
	(174811, 150459, 1, 0),
	(80300, 59119, 1, 0),
	(70271, 139200, 1, 0),
	(85524, 170769, 1, 0),
	(79432, 160430, 1, 0),
	(86524, 172944, 1, 0),
	(86159, 172113, 1, 0),
	(78904, 159303, 1, 0),
	(78903, 159303, 1, 0),
	(78902, 159303, 1, 0),
	(79523, 160655, 1, 0),
	(78894, 159348, 1, 0),
	(78870, 159348, 1, 0),
	(85809, 174732, 1, 0),
	(85540, 170792, 1, 0),
	(79520, 160652, 1, 0),
	(174812, 150459, 1, 0),
	(174813, 150459, 1, 0),
	(80742, 163163, 3, 0),
	(80741, 163144, 3, 0),
	(80743, 163346, 3, 0),
	(56103, 46598, 1, 0),
	(86470, 188244, 3, 1),
	(83050, 68742, 1, 0),
	(82721, 161012, 1, 0),
	(79720, 160965, 1, 0),
	(77483, 160996, 1, 0),
	(79739, 160997, 1, 0),
	(15000197, 65030, 1, 1),
	(44894, 160488, 1, 0),
	(45263, 65030, 1, 0),
	(15000034, 65030, 1, 0),
	(35526, 88164, 1, 0),
	(36756, 14867, 1, 0),
	(36472, 14867, 0, 0),
	(15000037, 60178, 0, 0),
	(43777, 65030, 1, 0),
	(43562, 65030, 1, 0),
	(15000090, 160488, 1, 0),
	(15000198, 65030, 1, 1),
	(15000200, 65030, 1, 1),
	(15000206, 65030, 1, 1),
	(15000207, 65030, 1, 1),
	(15000212, 65030, 1, 1),
	(15000225, 65030, 1, 1),
	(15000228, 65030, 1, 1),
	(15000226, 65030, 1, 1),
	(15000229, 65030, 1, 1),
	(15000230, 65030, 1, 1),
	(32851, 160488, 1, 0),
	(44836, 160488, 1, 1),
	(32254, 160488, 1, 0),
	(41529, 160488, 1, 0),
	(33706, 160488, 1, 0),
	(15000080, 46598, 1, 0),
	(43714, 160488, 1, 0),
	(15000180, 60178, 0, 0),
	(15000181, 60178, 0, 0),
	(15000182, 60178, 0, 0),
	(15000183, 60178, 0, 0),
	(15000184, 65030, 1, 1),
	(15000185, 65030, 1, 1),
	(15000188, 65030, 1, 1),
	(15000189, 65030, 1, 1),
	(15000190, 65030, 1, 1),
	(15000192, 65030, 1, 1),
	(15000193, 65030, 1, 1),
	(15000195, 65030, 1, 1),
	(1100041, 60178, 0, 0),
	(1100024, 60178, 0, 0),
	(42500, 65031, 1, 0),
	(42601, 65030, 1, 0),
	(15000162, 60178, 0, 0),
	(46707, 160488, 1, 1),
	(47204, 43671, 1, 1),
	(430234, 65030, 1, 1),
	(40854, 65030, 1, 1),
	(433062, 65030, 1, 1),
	(433139, 65030, 1, 1),
	(434161, 65030, 1, 1),
	(436839, 65030, 1, 1),
	(89722, 65030, 1, 1),
	(89721, 65030, 1, 1),
	(16149, 65030, 1, 1),
	(39364, 86319, 1, 0),
	(30134, 56603, 1, 0);
/*!40000 ALTER TABLE `npc_spellclick_spells` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
