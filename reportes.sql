/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - reportes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `reportes`;

/*Table structure for table `portadorasxpuerto_puertos_casa` */

DROP TABLE IF EXISTS `portadorasxpuerto_puertos_casa`;

CREATE TABLE `portadorasxpuerto_puertos_casa` (
  `cmts` varchar(20) DEFAULT NULL,
  `dsif` varchar(6) DEFAULT NULL,
  `usif` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`dsif`,`usif`),
  KEY `cmts` (`cmts`),
  KEY `dsif` (`dsif`),
  KEY `usif` (`usif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `show_docsis_downstream_sw` */

DROP TABLE IF EXISTS `show_docsis_downstream_sw`;

CREATE TABLE `show_docsis_downstream_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `uso_portadoras` */

DROP TABLE IF EXISTS `uso_portadoras`;

CREATE TABLE `uso_portadoras` (
  `cmts` varchar(20) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `uso` double(18,1) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecha_hora`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `uso` (`uso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
