-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `tabula` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tabula`;

DROP TABLE IF EXISTS `oki`;
CREATE TABLE `oki` (
  `okidoki_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`okidoki_id`),
  CONSTRAINT `oki_ibfk_1` FOREIGN KEY (`okidoki_id`) REFERENCES `okidoki` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `oki` (`okidoki_id`) VALUES
(1);

DROP TABLE IF EXISTS `okidoki`;
CREATE TABLE `okidoki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `okidoki` (`id`) VALUES
(1);

-- 2021-05-05 09:17:38
