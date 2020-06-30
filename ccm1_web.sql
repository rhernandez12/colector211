/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - ccm1_web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1_web` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1_web`;

/*Table structure for table `intraway_power_snr` */

DROP TABLE IF EXISTS `intraway_power_snr`;

CREATE TABLE `intraway_power_snr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `power_down_min` double DEFAULT NULL,
  `power_down_max` double DEFAULT NULL,
  `power_up_min` double DEFAULT NULL,
  `power_up_max` double DEFAULT NULL,
  `snr_down_min` double DEFAULT NULL,
  `snr_down_max` double DEFAULT NULL,
  `snr_up_min` double DEFAULT NULL,
  `snr_up_max` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
