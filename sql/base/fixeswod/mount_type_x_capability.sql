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

-- Dumping structure for table fixeslive.mount_type_x_capability
CREATE TABLE IF NOT EXISTS `mount_type_x_capability` (
  `ID` int(11) unsigned NOT NULL,
  `MountTypeID` int(11) unsigned NOT NULL,
  `Index` int(11) unsigned NOT NULL,
  `CapabilityID` int(11) unsigned NOT NULL,
  `BuildVerified` int(11) unsigned NOT NULL DEFAULT '19865'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fixeslive.mount_type_x_capability: ~243 rows (approximately)
DELETE FROM `mount_type_x_capability`;
/*!40000 ALTER TABLE `mount_type_x_capability` DISABLE KEYS */;
INSERT INTO `mount_type_x_capability` (`ID`, `MountTypeID`, `Index`, `CapabilityID`, `BuildVerified`) VALUES
	(2000, 224, 0, 226, 19865),
	(2001, 225, 0, 227, 19865),
	(2002, 226, 0, 241, 19865),
	(2003, 226, 1, 238, 19865),
	(2004, 226, 2, 244, 19865),
	(2005, 226, 3, 247, 19865),
	(2006, 226, 4, 250, 19865),
	(2007, 226, 5, 284, 19865),
	(2008, 227, 0, 242, 19865),
	(2009, 227, 1, 239, 19865),
	(2010, 227, 2, 245, 19865),
	(2011, 227, 3, 248, 19865),
	(2012, 227, 4, 251, 19865),
	(2013, 227, 5, 282, 19865),
	(2014, 228, 0, 243, 19865),
	(2015, 228, 1, 240, 19865),
	(2016, 228, 2, 246, 19865),
	(2017, 228, 3, 249, 19865),
	(2018, 228, 4, 252, 19865),
	(2019, 228, 5, 283, 19865),
	(2020, 229, 0, 304, 19865),
	(2021, 229, 1, 305, 19865),
	(2022, 229, 2, 241, 19865),
	(2023, 229, 3, 242, 19865),
	(2024, 229, 4, 243, 19865),
	(2025, 229, 5, 238, 19865),
	(2026, 229, 6, 239, 19865),
	(2027, 229, 7, 240, 19865),
	(2028, 229, 8, 244, 19865),
	(2029, 229, 9, 245, 19865),
	(2030, 229, 10, 246, 19865),
	(2031, 229, 11, 247, 19865),
	(2032, 229, 12, 248, 19865),
	(2033, 229, 13, 249, 19865),
	(2034, 229, 14, 250, 19865),
	(2035, 229, 15, 251, 19865),
	(2036, 229, 16, 252, 19865),
	(2037, 229, 17, 284, 19865),
	(2038, 229, 18, 282, 19865),
	(2039, 229, 19, 283, 19865),
	(2040, 238, 0, 277, 19865),
	(2041, 238, 1, 278, 19865),
	(2042, 238, 2, 241, 19865),
	(2043, 238, 3, 242, 19865),
	(2044, 238, 4, 243, 19865),
	(2045, 238, 5, 238, 19865),
	(2046, 238, 6, 239, 19865),
	(2047, 238, 7, 240, 19865),
	(2048, 238, 8, 244, 19865),
	(2049, 238, 9, 245, 19865),
	(2050, 238, 10, 246, 19865),
	(2051, 238, 11, 247, 19865),
	(2052, 238, 12, 248, 19865),
	(2053, 238, 13, 249, 19865),
	(2054, 238, 14, 250, 19865),
	(2055, 238, 15, 251, 19865),
	(2056, 238, 16, 252, 19865),
	(2057, 238, 17, 284, 19865),
	(2058, 238, 18, 282, 19865),
	(2059, 238, 19, 283, 19865),
	(2060, 261, 0, 281, 19865),
	(2061, 263, 0, 304, 19865),
	(2062, 263, 1, 305, 19865),
	(2063, 263, 2, 303, 19865),
	(2064, 263, 3, 302, 19865),
	(2065, 263, 4, 301, 19865),
	(2066, 263, 5, 300, 19865),
	(2067, 263, 6, 299, 19865),
	(2068, 263, 7, 298, 19865),
	(2069, 263, 8, 297, 19865),
	(2070, 263, 9, 296, 19865),
	(2071, 263, 10, 295, 19865),
	(2072, 263, 11, 294, 19865),
	(2073, 263, 12, 293, 19865),
	(2074, 263, 13, 292, 19865),
	(2075, 263, 14, 291, 19865),
	(2076, 263, 15, 290, 19865),
	(2077, 263, 16, 289, 19865),
	(2078, 263, 17, 285, 19865),
	(2079, 263, 18, 286, 19865),
	(2080, 263, 19, 287, 19865),
	(2000, 224, 0, 226, 19865),
	(2001, 225, 0, 227, 19865),
	(2002, 226, 0, 241, 19865),
	(2003, 226, 1, 238, 19865),
	(2004, 226, 2, 244, 19865),
	(2005, 226, 3, 247, 19865),
	(2006, 226, 4, 250, 19865),
	(2007, 226, 5, 284, 19865),
	(2008, 227, 0, 242, 19865),
	(2009, 227, 1, 239, 19865),
	(2010, 227, 2, 245, 19865),
	(2011, 227, 3, 248, 19865),
	(2012, 227, 4, 251, 19865),
	(2013, 227, 5, 282, 19865),
	(2014, 228, 0, 243, 19865),
	(2015, 228, 1, 240, 19865),
	(2016, 228, 2, 246, 19865),
	(2017, 228, 3, 249, 19865),
	(2018, 228, 4, 252, 19865),
	(2019, 228, 5, 283, 19865),
	(2020, 229, 0, 304, 19865),
	(2021, 229, 1, 305, 19865),
	(2022, 229, 2, 241, 19865),
	(2023, 229, 3, 242, 19865),
	(2024, 229, 4, 243, 19865),
	(2025, 229, 5, 238, 19865),
	(2026, 229, 6, 239, 19865),
	(2027, 229, 7, 240, 19865),
	(2028, 229, 8, 244, 19865),
	(2029, 229, 9, 245, 19865),
	(2030, 229, 10, 246, 19865),
	(2031, 229, 11, 247, 19865),
	(2032, 229, 12, 248, 19865),
	(2033, 229, 13, 249, 19865),
	(2034, 229, 14, 250, 19865),
	(2035, 229, 15, 251, 19865),
	(2036, 229, 16, 252, 19865),
	(2037, 229, 17, 284, 19865),
	(2038, 229, 18, 282, 19865),
	(2039, 229, 19, 283, 19865),
	(2040, 238, 0, 277, 19865),
	(2041, 238, 1, 278, 19865),
	(2042, 238, 2, 241, 19865),
	(2043, 238, 3, 242, 19865),
	(2044, 238, 4, 243, 19865),
	(2045, 238, 5, 238, 19865),
	(2046, 238, 6, 239, 19865),
	(2047, 238, 7, 240, 19865),
	(2048, 238, 8, 244, 19865),
	(2049, 238, 9, 245, 19865),
	(2050, 238, 10, 246, 19865),
	(2051, 238, 11, 247, 19865),
	(2052, 238, 12, 248, 19865),
	(2053, 238, 13, 249, 19865),
	(2054, 238, 14, 250, 19865),
	(2055, 238, 15, 251, 19865),
	(2056, 238, 16, 252, 19865),
	(2057, 238, 17, 284, 19865),
	(2058, 238, 18, 282, 19865),
	(2059, 238, 19, 283, 19865),
	(2060, 261, 0, 281, 19865),
	(2061, 263, 0, 304, 19865),
	(2062, 263, 1, 305, 19865),
	(2063, 263, 2, 303, 19865),
	(2064, 263, 3, 302, 19865),
	(2065, 263, 4, 301, 19865),
	(2066, 263, 5, 300, 19865),
	(2067, 263, 6, 299, 19865),
	(2068, 263, 7, 298, 19865),
	(2069, 263, 8, 297, 19865),
	(2070, 263, 9, 296, 19865),
	(2071, 263, 10, 295, 19865),
	(2072, 263, 11, 294, 19865),
	(2073, 263, 12, 293, 19865),
	(2074, 263, 13, 292, 19865),
	(2075, 263, 14, 291, 19865),
	(2076, 263, 15, 290, 19865),
	(2077, 263, 16, 289, 19865),
	(2078, 263, 17, 285, 19865),
	(2079, 263, 18, 286, 19865),
	(2080, 263, 19, 287, 19865),
	(2000, 224, 0, 226, 19865),
	(2001, 225, 0, 227, 19865),
	(2002, 226, 0, 241, 19865),
	(2003, 226, 1, 238, 19865),
	(2004, 226, 2, 244, 19865),
	(2005, 226, 3, 247, 19865),
	(2006, 226, 4, 250, 19865),
	(2007, 226, 5, 284, 19865),
	(2008, 227, 0, 242, 19865),
	(2009, 227, 1, 239, 19865),
	(2010, 227, 2, 245, 19865),
	(2011, 227, 3, 248, 19865),
	(2012, 227, 4, 251, 19865),
	(2013, 227, 5, 282, 19865),
	(2014, 228, 0, 243, 19865),
	(2015, 228, 1, 240, 19865),
	(2016, 228, 2, 246, 19865),
	(2017, 228, 3, 249, 19865),
	(2018, 228, 4, 252, 19865),
	(2019, 228, 5, 283, 19865),
	(2020, 229, 0, 304, 19865),
	(2021, 229, 1, 305, 19865),
	(2022, 229, 2, 241, 19865),
	(2023, 229, 3, 242, 19865),
	(2024, 229, 4, 243, 19865),
	(2025, 229, 5, 238, 19865),
	(2026, 229, 6, 239, 19865),
	(2027, 229, 7, 240, 19865),
	(2028, 229, 8, 244, 19865),
	(2029, 229, 9, 245, 19865),
	(2030, 229, 10, 246, 19865),
	(2031, 229, 11, 247, 19865),
	(2032, 229, 12, 248, 19865),
	(2033, 229, 13, 249, 19865),
	(2034, 229, 14, 250, 19865),
	(2035, 229, 15, 251, 19865),
	(2036, 229, 16, 252, 19865),
	(2037, 229, 17, 284, 19865),
	(2038, 229, 18, 282, 19865),
	(2039, 229, 19, 283, 19865),
	(2040, 238, 0, 277, 19865),
	(2041, 238, 1, 278, 19865),
	(2042, 238, 2, 241, 19865),
	(2043, 238, 3, 242, 19865),
	(2044, 238, 4, 243, 19865),
	(2045, 238, 5, 238, 19865),
	(2046, 238, 6, 239, 19865),
	(2047, 238, 7, 240, 19865),
	(2048, 238, 8, 244, 19865),
	(2049, 238, 9, 245, 19865),
	(2050, 238, 10, 246, 19865),
	(2051, 238, 11, 247, 19865),
	(2052, 238, 12, 248, 19865),
	(2053, 238, 13, 249, 19865),
	(2054, 238, 14, 250, 19865),
	(2055, 238, 15, 251, 19865),
	(2056, 238, 16, 252, 19865),
	(2057, 238, 17, 284, 19865),
	(2058, 238, 18, 282, 19865),
	(2059, 238, 19, 283, 19865),
	(2060, 261, 0, 281, 19865),
	(2061, 263, 0, 304, 19865),
	(2062, 263, 1, 305, 19865),
	(2063, 263, 2, 303, 19865),
	(2064, 263, 3, 302, 19865),
	(2065, 263, 4, 301, 19865),
	(2066, 263, 5, 300, 19865),
	(2067, 263, 6, 299, 19865),
	(2068, 263, 7, 298, 19865),
	(2069, 263, 8, 297, 19865),
	(2070, 263, 9, 296, 19865),
	(2071, 263, 10, 295, 19865),
	(2072, 263, 11, 294, 19865),
	(2073, 263, 12, 293, 19865),
	(2074, 263, 13, 292, 19865),
	(2075, 263, 14, 291, 19865),
	(2076, 263, 15, 290, 19865),
	(2077, 263, 16, 289, 19865),
	(2078, 263, 17, 285, 19865),
	(2079, 263, 18, 286, 19865),
	(2080, 263, 19, 287, 19865);
/*!40000 ALTER TABLE `mount_type_x_capability` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
