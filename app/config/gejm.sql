-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `gejm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gejm`;

DROP TABLE IF EXISTS `cave`;
CREATE TABLE `cave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skeleton.id_level` int(11) NOT NULL,
  `spider.id_level` int(11) NOT NULL,
  `creeper.id_level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skeleton.id_level` (`skeleton.id_level`),
  KEY `spider.id_level` (`spider.id_level`),
  KEY `creeper.id_level` (`creeper.id_level`),
  CONSTRAINT `cave_ibfk_1` FOREIGN KEY (`skeleton.id_level`) REFERENCES `skeleton` (`id_level`) ON DELETE RESTRICT,
  CONSTRAINT `cave_ibfk_2` FOREIGN KEY (`spider.id_level`) REFERENCES `spider` (`id_level`) ON DELETE RESTRICT,
  CONSTRAINT `cave_ibfk_3` FOREIGN KEY (`creeper.id_level`) REFERENCES `creeper` (`id_level`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cave` (`id`, `skeleton.id_level`, `spider.id_level`, `creeper.id_level`) VALUES
(1,	1,	1,	1),
(2,	2,	2,	2),
(3,	3,	3,	3),
(4,	4,	4,	4),
(5,	5,	5,	5),
(6,	6,	6,	6),
(7,	7,	7,	7),
(8,	8,	8,	8),
(9,	9,	9,	9),
(10,	10,	10,	10),
(11,	11,	11,	11),
(12,	12,	12,	12),
(13,	13,	13,	13),
(14,	14,	14,	14),
(15,	15,	15,	15),
(16,	16,	16,	16),
(17,	17,	17,	17),
(18,	18,	18,	18),
(19,	19,	19,	19),
(20,	20,	20,	20);

DROP TABLE IF EXISTS `creeper`;
CREATE TABLE `creeper` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `hp` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `dmg` int(11) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `creeper` (`id_level`, `hp`, `mana`, `dmg`) VALUES
(1,	1,	0,	4),
(2,	2,	0,	4),
(3,	2,	0,	5),
(4,	3,	0,	5),
(5,	3,	0,	6),
(6,	4,	0,	6),
(7,	4,	0,	7),
(8,	5,	0,	7),
(9,	5,	0,	8),
(10,	6,	0,	8),
(11,	6,	0,	9),
(12,	7,	0,	9),
(13,	7,	0,	10),
(14,	8,	0,	10),
(15,	8,	0,	11),
(16,	9,	0,	11),
(17,	9,	0,	12),
(18,	10,	0,	12),
(19,	10,	0,	13),
(20,	11,	0,	13);

DROP TABLE IF EXISTS `forest`;
CREATE TABLE `forest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zombie.id_level` int(11) NOT NULL,
  `skeleton.id_level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zombie.id_level` (`zombie.id_level`),
  KEY `skeleton.id_level` (`skeleton.id_level`),
  CONSTRAINT `forest_ibfk_1` FOREIGN KEY (`zombie.id_level`) REFERENCES `zombie` (`id_level`) ON DELETE RESTRICT,
  CONSTRAINT `forest_ibfk_2` FOREIGN KEY (`skeleton.id_level`) REFERENCES `skeleton` (`id_level`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `forest` (`id`, `zombie.id_level`, `skeleton.id_level`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3),
(4,	4,	4),
(5,	5,	5),
(6,	6,	6),
(7,	7,	7),
(8,	8,	8),
(9,	9,	9),
(10,	10,	10),
(11,	11,	11),
(12,	12,	12),
(13,	13,	13),
(14,	14,	14),
(15,	15,	15),
(16,	16,	16),
(17,	17,	17),
(18,	18,	18),
(19,	19,	19),
(20,	20,	20);

DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `pocet_nepratel` int(11) NOT NULL,
  `pocet_truhel` int(11) NOT NULL,
  `pocet_mistnosti` int(11) NOT NULL,
  `maps.id` int(11) NOT NULL,
  `player.id_level` int(11) NOT NULL,
  PRIMARY KEY (`id_level`),
  KEY `mapy.id` (`maps.id`),
  KEY `player.id_level` (`player.id_level`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`maps.id`) REFERENCES `maps` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`player.id_level`) REFERENCES `player` (`id_level`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `game` (`id_level`, `pocet_nepratel`, `pocet_truhel`, `pocet_mistnosti`, `maps.id`, `player.id_level`) VALUES
(1,	3,	1,	1,	1,	1),
(2,	5,	1,	2,	2,	2),
(3,	7,	1,	2,	3,	3),
(4,	8,	2,	3,	4,	4),
(5,	10,	2,	3,	5,	5),
(6,	10,	2,	4,	6,	6),
(7,	12,	2,	4,	7,	7),
(8,	14,	2,	4,	8,	8),
(9,	14,	14,	14,	9,	9),
(10,	15,	3,	5,	10,	10),
(11,	15,	3,	5,	11,	11),
(12,	17,	4,	5,	12,	12),
(13,	17,	4,	6,	13,	13),
(14,	18,	4,	7,	14,	14),
(15,	18,	4,	8,	15,	15),
(16,	20,	4,	6,	16,	16),
(17,	20,	5,	7,	17,	17),
(18,	100,	1,	2,	10,	18),
(19,	22,	6,	8,	19,	19),
(20,	1,	1,	2,	20,	20);

DROP TABLE IF EXISTS `maps`;
CREATE TABLE `maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forest.id` int(11) NOT NULL,
  `mountains.id` int(11) NOT NULL,
  `cave.id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forest.id` (`forest.id`),
  KEY `mountains.id` (`mountains.id`),
  KEY `cave.id` (`cave.id`),
  CONSTRAINT `maps_ibfk_1` FOREIGN KEY (`forest.id`) REFERENCES `forest` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_2` FOREIGN KEY (`mountains.id`) REFERENCES `mountains` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_3` FOREIGN KEY (`forest.id`) REFERENCES `forest` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_4` FOREIGN KEY (`mountains.id`) REFERENCES `mountains` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_5` FOREIGN KEY (`cave.id`) REFERENCES `cave` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_6` FOREIGN KEY (`forest.id`) REFERENCES `forest` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_7` FOREIGN KEY (`mountains.id`) REFERENCES `mountains` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `maps_ibfk_8` FOREIGN KEY (`cave.id`) REFERENCES `cave` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `maps` (`id`, `forest.id`, `mountains.id`, `cave.id`) VALUES
(1,	1,	1,	1),
(2,	2,	2,	2),
(3,	3,	3,	3),
(4,	4,	4,	4),
(5,	5,	5,	5),
(6,	6,	6,	6),
(7,	7,	7,	7),
(8,	8,	8,	8),
(9,	9,	9,	9),
(10,	10,	10,	10),
(11,	11,	11,	11),
(12,	12,	12,	12),
(13,	13,	13,	13),
(14,	14,	14,	14),
(15,	15,	15,	15),
(16,	16,	16,	16),
(17,	17,	17,	17),
(18,	18,	18,	18),
(19,	19,	19,	19),
(20,	20,	20,	20);

DROP TABLE IF EXISTS `mountains`;
CREATE TABLE `mountains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zombie.id_level` int(11) NOT NULL,
  `spider.id_level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zombie.id_level` (`zombie.id_level`),
  KEY `spider.id_level` (`spider.id_level`),
  CONSTRAINT `mountains_ibfk_1` FOREIGN KEY (`zombie.id_level`) REFERENCES `zombie` (`id_level`) ON DELETE RESTRICT,
  CONSTRAINT `mountains_ibfk_2` FOREIGN KEY (`zombie.id_level`) REFERENCES `zombie` (`id_level`) ON DELETE RESTRICT,
  CONSTRAINT `mountains_ibfk_3` FOREIGN KEY (`spider.id_level`) REFERENCES `spider` (`id_level`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `mountains` (`id`, `zombie.id_level`, `spider.id_level`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3),
(4,	4,	4),
(5,	5,	5),
(6,	6,	6),
(7,	7,	7),
(8,	8,	8),
(9,	9,	9),
(10,	10,	10),
(11,	11,	11),
(12,	12,	12),
(13,	13,	13),
(14,	14,	14),
(15,	15,	15),
(16,	16,	16),
(17,	17,	17),
(18,	18,	18),
(19,	19,	19),
(20,	20,	20);

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `hp` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `dmg` int(11) NOT NULL,
  `skillpoints` int(11) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `player` (`id_level`, `hp`, `mana`, `dmg`, `skillpoints`) VALUES
(1,	2,	2,	2,	0),
(2,	3,	2,	2,	1),
(3,	3,	3,	2,	2),
(4,	3,	3,	3,	3),
(5,	4,	3,	3,	4),
(6,	4,	4,	3,	5),
(7,	4,	4,	4,	6),
(8,	5,	4,	4,	7),
(9,	5,	5,	4,	8),
(10,	5,	5,	5,	9),
(11,	6,	5,	5,	10),
(12,	6,	6,	5,	11),
(13,	6,	6,	6,	12),
(14,	7,	6,	6,	13),
(15,	7,	7,	6,	14),
(16,	7,	7,	7,	15),
(17,	8,	7,	7,	16),
(18,	8,	8,	7,	17),
(19,	8,	8,	8,	18),
(20,	9,	8,	8,	19);

DROP TABLE IF EXISTS `skeleton`;
CREATE TABLE `skeleton` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `hp` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `dmg` int(11) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `skeleton` (`id_level`, `hp`, `mana`, `dmg`) VALUES
(1,	1,	2,	3),
(2,	2,	2,	3),
(3,	2,	3,	3),
(4,	2,	3,	4),
(5,	3,	3,	4),
(6,	3,	4,	4),
(7,	3,	4,	5),
(8,	4,	4,	5),
(9,	4,	5,	5),
(10,	4,	5,	6),
(11,	5,	5,	6),
(12,	5,	6,	6),
(13,	5,	6,	7),
(14,	6,	6,	7),
(15,	6,	7,	7),
(16,	6,	7,	8),
(17,	7,	7,	8),
(18,	7,	8,	8),
(19,	7,	8,	9),
(20,	8,	8,	9);

DROP TABLE IF EXISTS `spider`;
CREATE TABLE `spider` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `hp` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `dmg` int(11) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `spider` (`id_level`, `hp`, `mana`, `dmg`) VALUES
(1,	1,	1,	4),
(2,	2,	1,	4),
(3,	2,	2,	4),
(4,	2,	2,	5),
(5,	3,	2,	5),
(6,	3,	3,	5),
(7,	3,	3,	6),
(8,	4,	3,	6),
(9,	4,	4,	6),
(10,	4,	4,	7),
(11,	5,	4,	7),
(12,	5,	5,	7),
(13,	5,	5,	8),
(14,	6,	5,	8),
(15,	6,	6,	8),
(16,	6,	6,	9),
(17,	7,	6,	9),
(18,	7,	7,	9),
(19,	7,	7,	10),
(20,	8,	7,	10);

DROP TABLE IF EXISTS `zombie`;
CREATE TABLE `zombie` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `hp` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  `dmg` int(11) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `zombie` (`id_level`, `hp`, `mana`, `dmg`) VALUES
(1,	2,	2,	2),
(2,	3,	2,	2),
(3,	3,	3,	2),
(4,	3,	3,	3),
(5,	4,	3,	3),
(6,	4,	4,	3),
(7,	4,	4,	4),
(8,	5,	4,	4),
(9,	5,	5,	4),
(10,	5,	5,	5),
(11,	6,	5,	5),
(12,	6,	6,	5),
(13,	6,	6,	6),
(14,	7,	6,	6),
(15,	7,	7,	6),
(16,	7,	7,	7),
(17,	8,	7,	7),
(18,	8,	8,	7),
(19,	8,	8,	8),
(20,	9,	8,	8);

-- 2021-05-05 09:17:04
