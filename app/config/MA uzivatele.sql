-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `martin-arnost-uzivatele` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `martin-arnost-uzivatele`;

DROP TABLE IF EXISTS `martin-arnost-uzivatele`;
CREATE TABLE `martin-arnost-uzivatele` (
  `martin-arnost-id` int(11) NOT NULL AUTO_INCREMENT,
  `martin-arnost-jmeno` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `martin-arnost-prijmeni` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `martin-arnost-vaha` float NOT NULL,
  `martin-arnost-vyska` int(11) NOT NULL,
  `martin-arnost-vek` int(11) NOT NULL,
  `martin-arnost-mzda` int(11) NOT NULL,
  `martin-arnost-datumnarozeni` date NOT NULL,
  `martin-arnost-cas` datetime NOT NULL,
  `martin-arnost-komentar` text CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`martin-arnost-id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

INSERT INTO `martin-arnost-uzivatele` (`martin-arnost-id`, `martin-arnost-jmeno`, `martin-arnost-prijmeni`, `martin-arnost-vaha`, `martin-arnost-vyska`, `martin-arnost-vek`, `martin-arnost-mzda`, `martin-arnost-datumnarozeni`, `martin-arnost-cas`, `martin-arnost-komentar`) VALUES
(1,	'Karel',	'Valak',	90,	170,	18,	20000,	'2003-02-09',	'2021-02-09 11:34:14',	'chuj'),
(2,	'Pavel',	'Salak',	85,	205,	27,	28000,	'1995-09-27',	'2021-02-09 11:36:29',	'ok'),
(3,	'Martin',	'Balak',	74.4,	172,	17,	0,	'2003-05-27',	'2021-02-09 11:37:27',	'cool guy'),
(4,	'Jiří',	'Malak',	80,	175,	18,	-1500,	'2003-04-20',	'2021-02-09 11:38:49',	'chuj obecný'),
(5,	'Dan',	'Nalak',	85.4,	180,	18,	5000,	'2003-01-28',	'2021-02-09 11:40:34',	'ok'),
(6,	'Zdenda',	'Rolak',	90.5,	175,	18,	25000,	'2003-02-09',	'2021-02-09 11:41:40',	'oki'),
(7,	'Adam',	'Polak',	85.5,	204,	27,	33000,	'1995-09-27',	'2021-02-09 11:41:40',	'oki'),
(8,	'Vojta',	'Silak',	74.9,	172,	17,	5000,	'2003-05-27',	'2021-02-09 11:41:40',	'oki'),
(9,	'Ondřej',	'Bubak',	80.5,	174,	18,	3500,	'2003-04-20',	'2021-02-09 11:41:40',	'oki'),
(10,	'Vladimír',	'Prasak',	85.9,	180,	18,	100000,	'2003-01-28',	'2021-02-09 11:41:40',	'oki');

-- 2021-02-09 10:43:36
