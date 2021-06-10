-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `pekarstvi-vojta-kubinec` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pekarstvi-vojta-kubinec`;

DROP TABLE IF EXISTS `pekarstvi-vojta-kubinec`;
CREATE TABLE `pekarstvi-vojta-kubinec` (
  `id-vojta-kubinec` int(11) NOT NULL AUTO_INCREMENT,
  `pecivo-vojta-kubinec` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `typ-vojta-kubinec` char(1) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `kusu-vojta-kubinec` int(11) NOT NULL,
  `cena-vojta-kubinec` float NOT NULL,
  `vaha-vojta-kubinec` int(11) NOT NULL,
  `caspeceni-vojta-kubinec` datetime NOT NULL,
  `prodejce-vojta-kubinec` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `prijemcejmeno-vojta-kubinec` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `prijemceprijmeni-vojta-kubinec` tinytext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id-vojta-kubinec`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `pekarstvi-vojta-kubinec` (`id-vojta-kubinec`, `pecivo-vojta-kubinec`, `typ-vojta-kubinec`, `kusu-vojta-kubinec`, `cena-vojta-kubinec`, `vaha-vojta-kubinec`, `caspeceni-vojta-kubinec`, `prodejce-vojta-kubinec`, `prijemcejmeno-vojta-kubinec`, `prijemceprijmeni-vojta-kubinec`) VALUES
(11,	'Rohlík',	'A',	120,	1.9,	25,	'2021-02-01 09:00:00',	'Pekárna u Jakuba',	'Petr',	'Novák'),
(12,	'houska',	'A',	169,	2.9,	50,	'2021-02-01 10:00:00',	'Pekárna u Jakuba',	'Petr',	'Novák'),
(13,	'Rohlík',	'A',	120,	1.9,	25,	'2021-02-01 09:00:00',	'Pekárna u Housčičky',	'Adam',	'Kotlář'),
(14,	'houska',	'A',	169,	2.9,	50,	'2021-02-01 10:00:00',	'Pekárna u Housčičky',	'Adam',	'Kotlář'),
(15,	'croissant',	'B',	50,	7.5,	37,	'2021-02-01 00:12:01',	'Pekárnička',	'Adam',	'z Prahy'),
(16,	'sýrový rohlík',	'B',	36,	7.5,	30,	'2021-02-01 00:15:58',	'Pekárnička',	'Adam',	'z Prahy'),
(17,	'Rohlík',	'A',	120,	1.9,	25,	'2021-02-01 00:17:35',	'Pekárna u Housčičky',	'Láďa',	'Dobeš'),
(18,	'houska',	'A',	169,	2.9,	50,	'2021-02-01 00:17:35',	'Pekárna u Housčičky',	'Láďa',	'Dobeš'),
(19,	'croissant',	'B',	50,	7.5,	37,	'2021-02-01 00:17:35',	'Pekárna u Housčičky',	'Láďa',	'Dobeš'),
(20,	'sýrový rohlík',	'B',	36,	7.5,	30,	'2021-02-01 00:17:35',	'Pekárna u Housčičky',	'Láďa',	'Dobeš');

-- 2021-02-02 07:39:17
