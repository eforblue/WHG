# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Database: wha_development
# Generation Time: 2015-07-24 22:03:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table guesses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `guesses`;

CREATE TABLE `guesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `height` int(11) DEFAULT NULL,
  `weight_female_min` int(11) DEFAULT NULL,
  `weight_male_min` int(11) DEFAULT NULL,
  `weight_female_max` int(11) DEFAULT NULL,
  `weight_male_max` int(11) DEFAULT NULL,
  `scale_female_dominant` int(11) DEFAULT '1000',
  `scale_male_nondominant` int(11) DEFAULT '0',
  `scale_female_even` int(11) DEFAULT '1000',
  `scale_male_even` int(11) DEFAULT '1000',
  `scale_female_nondominant` int(11) DEFAULT '0',
  `scale_male_dominant` int(11) DEFAULT '1000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `guesses` WRITE;
/*!40000 ALTER TABLE `guesses` DISABLE KEYS */;

INSERT INTO `guesses` (`id`, `height`, `weight_female_min`, `weight_male_min`, `weight_female_max`, `weight_male_max`, `scale_female_dominant`, `scale_male_nondominant`, `scale_female_even`, `scale_male_even`, `scale_female_nondominant`, `scale_male_dominant`, `created_at`, `updated_at`)
VALUES
	(1,55,80,86,102,107,1000,0,1000,1000,0,1000,NULL,NULL),
	(2,56,83,90,106,111,1000,0,1000,1000,0,1000,NULL,NULL),
	(3,57,86,93,110,115,1000,0,1000,1000,0,1000,NULL,NULL),
	(4,58,89,96,114,119,1000,0,1000,1000,0,1000,NULL,NULL),
	(5,59,93,100,118,123,1000,0,1000,1000,0,1000,NULL,NULL),
	(6,60,96,103,122,128,1000,0,1000,1000,0,1000,NULL,NULL),
	(7,61,99,106,126,132,1000,0,1000,1000,0,1000,NULL,NULL),
	(8,62,102,110,130,136,1000,0,1000,1000,0,1000,NULL,NULL),
	(9,63,106,113,134,141,1000,0,1000,1000,0,1000,NULL,NULL),
	(10,64,109,117,139,145,1000,0,1000,1000,0,1000,NULL,NULL),
	(11,65,112,121,143,150,1000,0,1000,1000,0,1000,NULL,NULL),
	(12,66,116,125,147,154,1000,0,1000,1000,0,1000,NULL,NULL),
	(13,67,119,128,152,159,1000,0,1000,1000,0,1000,NULL,NULL),
	(14,68,123,132,157,164,1000,0,1000,1000,0,1000,NULL,NULL),
	(15,69,127,136,161,169,1000,0,1000,1000,0,1000,NULL,NULL),
	(16,70,130,140,166,174,1000,0,1000,1000,0,1000,NULL,NULL),
	(17,71,134,144,171,179,1000,0,1000,1000,0,1000,NULL,NULL),
	(18,72,138,148,176,184,1000,0,1000,1000,0,1000,NULL,NULL),
	(19,73,142,152,180,189,1000,0,1000,1000,0,1000,NULL,NULL),
	(20,74,146,157,185,194,1000,0,1000,1000,0,1000,NULL,NULL),
	(21,75,150,161,190,199,1000,0,1000,1000,0,1000,NULL,NULL),
	(22,76,154,165,196,205,1000,0,1000,1000,0,1000,NULL,NULL);

/*!40000 ALTER TABLE `guesses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20150720151606');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
