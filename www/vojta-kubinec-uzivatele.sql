-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `vojta-kubinec-uzivatele` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vojta-kubinec-uzivatele`;

DROP TABLE IF EXISTS `vojta-kubinec-uzivatele`;
CREATE TABLE `vojta-kubinec-uzivatele` (
  `vojta-kubinec-id` int(11) NOT NULL AUTO_INCREMENT,
  `vojta-kubinec-jmeno` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `vojta-kubinec-prijmeni` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `vojta-kubinec-vaha` float NOT NULL,
  `vojta-kubinec-vyska` int(11) NOT NULL,
  `vojta-kubinec-vek` int(11) NOT NULL,
  `vojta-kubinec-mzda` int(11) NOT NULL,
  `vojta-kubinec-datumnarozeni` date NOT NULL,
  `vojta-kubinec-cas` datetime NOT NULL,
  `vojta-kubinec-komentar` text CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`vojta-kubinec-id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

INSERT INTO `vojta-kubinec-uzivatele` (`vojta-kubinec-id`, `vojta-kubinec-jmeno`, `vojta-kubinec-prijmeni`, `vojta-kubinec-vaha`, `vojta-kubinec-vyska`, `vojta-kubinec-vek`, `vojta-kubinec-mzda`, `vojta-kubinec-datumnarozeni`, `vojta-kubinec-cas`, `vojta-kubinec-komentar`) VALUES
(1,	'Adam',	'Adamovič',	90,	170,	18,	20000,	'2003-02-09',	'2021-02-09 11:34:14',	'chuj'),
(2,	'Adam',	'Petrovič',	85,	205,	27,	28000,	'1995-09-27',	'2021-02-09 11:36:29',	'ok'),
(3,	'Vojta',	'Kubinec',	74.4,	172,	17,	0,	'2003-05-27',	'2021-02-09 11:37:27',	'cool guy'),
(4,	'Ondřej',	'Kubena',	80,	175,	18,	-1500,	'2003-04-20',	'2021-02-09 11:38:49',	'chuj obecný'),
(5,	'Dan',	'Brx',	85.4,	180,	18,	5000,	'2003-01-28',	'2021-02-09 11:40:34',	'ok'),
(6,	'Adam',	'Adamovič',	90.5,	175,	18,	25000,	'2003-02-09',	'2021-02-09 11:41:40',	'oki'),
(7,	'Adam',	'Petrovič',	85.5,	204,	27,	33000,	'1995-09-27',	'2021-02-09 11:41:40',	'oki'),
(8,	'Vojta',	'Kubinec',	74.9,	172,	17,	5000,	'2003-05-27',	'2021-02-09 11:41:40',	'oki'),
(9,	'Ondřej',	'Boubena',	80.5,	174,	18,	3500,	'2003-04-20',	'2021-02-09 11:41:40',	'oki'),
(10,	'Vladimír',	'Putin',	85.9,	180,	18,	100000,	'2003-01-28',	'2021-02-09 11:41:40',	'oki');

-- 2021-02-09 10:43:36
