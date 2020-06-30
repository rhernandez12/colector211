/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - gpon_extractors
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gpon_extractors` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gpon_extractors`;

/*Table structure for table `gpon_olts` */

DROP TABLE IF EXISTS `gpon_olts`;

CREATE TABLE `gpon_olts` (
  `idolt` int(11) NOT NULL,
  `olt` varchar(50) DEFAULT NULL,
  `ipolt` varchar(15) DEFAULT NULL,
  `gateway` varchar(15) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idolt`),
  UNIQUE KEY `olt` (`olt`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `ipolt` (`ipolt`),
  KEY `gateway` (`gateway`),
  KEY `marca` (`marca`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
