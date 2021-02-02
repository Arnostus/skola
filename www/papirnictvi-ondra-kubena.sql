-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `papirnictvi-ondra-kubena` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `papirnictvi-ondra-kubena`;

DROP TABLE IF EXISTS `papirnictvi-ondra-kubena`;
CREATE TABLE `papirnictvi-ondra-kubena` (
  `id-ondra-kubena` int(11) NOT NULL AUTO_INCREMENT,
  `predmet-ondra-kubena` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `typ-ondra-kubena` char(1) NOT NULL,
  `velikost-ondra-kubena` int(11) NOT NULL,
  `kusu-ondra-kubena` int(11) NOT NULL,
  `cena-ondra-kubena` float NOT NULL,
  `komentar-ondra-kubena` tinytext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `cas-ondra-kubena` datetime NOT NULL,
  `prijemce-ondra-kubena` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `idk-ondra-kubena` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id-ondra-kubena`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `papirnictvi-ondra-kubena` (`id-ondra-kubena`, `predmet-ondra-kubena`, `typ-ondra-kubena`, `velikost-ondra-kubena`, `kusu-ondra-kubena`, `cena-ondra-kubena`, `komentar-ondra-kubena`, `cas-ondra-kubena`, `prijemce-ondra-kubena`, `idk-ondra-kubena`) VALUES
(11,	'tužka',	'3',	0,	4,	3.2,	'žádný komentář',	'2021-02-02 08:56:05',	'Láďa',	'idk'),
(12,	'tužka',	'2',	0,	2,	3.2,	'žádný komentář',	'2021-02-02 08:56:05',	'Láďa',	'idk'),
(13,	'tužka',	'1',	0,	4,	3.2,	'žádný komentář',	'2021-02-02 08:56:05',	'Láďa',	'idk'),
(14,	'tužka',	'3',	0,	6,	3.2,	'žádný komentář',	'2021-02-02 08:56:05',	'Adam',	'idk'),
(15,	'tužka',	'2',	0,	3,	3.2,	'žádný komentář',	'2021-02-02 08:56:05',	'Adam',	'idk'),
(16,	'tužka',	'1',	0,	6,	3.2,	'žádný komentář',	'2021-02-02 08:56:05',	'Adam',	'idk'),
(17,	'papír',	'A',	4,	12,	14.9,	'recyklovaný',	'2021-02-02 08:59:23',	'Adam',	'idk'),
(18,	'papír',	'A',	3,	2,	25.9,	'recyklovaný',	'2021-02-02 08:59:45',	'Adam',	'idk'),
(19,	'papír',	'A',	4,	1,	14.9,	'recyklovaný',	'2021-02-02 08:59:23',	'Nějaký chuj',	'idk'),
(20,	'papír',	'A',	3,	1,	25.9,	'recyklovaný',	'2021-02-02 08:59:45',	'Nějaký chuj',	'idk');

-- 2021-02-02 08:01:24
