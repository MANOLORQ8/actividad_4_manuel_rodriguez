-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_en_el_mundo
DROP DATABASE IF EXISTS `lugares_en_el_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_en_el_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_en_el_mundo`;

-- Volcando estructura para tabla lugares_en_el_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='en este campo van las ... ciudades del mundo ';

-- Volcando datos para la tabla lugares_en_el_mundo.cities: ~4 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'leticia'),
	(2, 'ciudad de mexico'),
	(3, 'buenos aires'),
	(4, 'yarumal'),
	(5, 'chicago'),
	(6, 'moscú');

-- Volcando estructura para tabla lugares_en_el_mundo.cities_continents_contries
DROP TABLE IF EXISTS `cities_continents_contries`;
CREATE TABLE IF NOT EXISTS `cities_continents_contries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) unsigned NOT NULL,
  `continent_id` smallint(5) unsigned NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra la union de cada tabla pre_establecidad ';

-- Volcando datos para la tabla lugares_en_el_mundo.cities_continents_contries: ~0 rows (aproximadamente)
DELETE FROM `cities_continents_contries`;

-- Volcando estructura para tabla lugares_en_el_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='en este campo estan los diferentes continentes ';

-- Volcando datos para la tabla lugares_en_el_mundo.continents: ~5 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'america'),
	(2, 'africa'),
	(3, 'europa'),
	(4, 'australia'),
	(5, 'oceania');

-- Volcando estructura para tabla lugares_en_el_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='este campo tendra las ciudades de los paises ';

-- Volcando datos para la tabla lugares_en_el_mundo.countries: ~10 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia'),
	(2, 'mexico'),
	(3, 'argentina'),
	(4, 'estados unidos'),
	(5, 'rusia'),
	(6, 'egipto'),
	(7, 'japon'),
	(8, 'alemania '),
	(9, 'españa'),
	(10, '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
