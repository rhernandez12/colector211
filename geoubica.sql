/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - geoubica
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`geoubica` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `geoubica`;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(80) NOT NULL,
  `emailCliente` varchar(100) NOT NULL,
  `direccionCliente` varchar(120) NOT NULL,
  `latCliente` varchar(20) NOT NULL,
  `lngCliente` varchar(20) NOT NULL,
  PRIMARY KEY (`codcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `geo_amplificador` */

DROP TABLE IF EXISTS `geo_amplificador`;

CREATE TABLE `geo_amplificador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `amplificador` varchar(5) DEFAULT NULL,
  `coord_x` varchar(20) DEFAULT NULL,
  `coord_y` varchar(20) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zonal` (`zonal`),
  KEY `idx_nodo` (`nodo`),
  KEY `idx_troba` (`troba`),
  KEY `idx_amplificador` (`amplificador`)
) ENGINE=MyISAM AUTO_INCREMENT=25452 DEFAULT CHARSET=utf8;

/*Table structure for table `geo_tab_new` */

DROP TABLE IF EXISTS `geo_tab_new`;

CREATE TABLE `geo_tab_new` (
  `OBJECTID` int(11) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TRONCAL` varchar(3) DEFAULT NULL,
  `AMPLIFICADOR` varchar(2) DEFAULT NULL,
  `TAP` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `NUMCOO_X` varchar(20) DEFAULT NULL,
  `NUMCOO_Y` varchar(20) DEFAULT NULL,
  `COD_TAP` varchar(10) NOT NULL,
  PRIMARY KEY (`COD_TAP`),
  KEY `NODO` (`NODO`),
  KEY `AMPLIFICADOR` (`AMPLIFICADOR`),
  KEY `TAP` (`TAP`),
  KEY `TROBA` (`TROBA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `geo_tap` */

DROP TABLE IF EXISTS `geo_tap`;

CREATE TABLE `geo_tap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `amplificador` varchar(10) DEFAULT NULL,
  `tap` varchar(10) DEFAULT NULL,
  `coord_x` varchar(20) DEFAULT NULL,
  `coord_y` varchar(20) DEFAULT NULL,
  `direccion` text,
  `orden` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_zonal` (`zonal`),
  KEY `idx_nodo` (`nodo`),
  KEY `idx_troba` (`troba`),
  KEY `idx_amplificador` (`amplificador`),
  KEY `idx_tap` (`tap`),
  KEY `orden` (`orden`)
) ENGINE=MyISAM AUTO_INCREMENT=143480 DEFAULT CHARSET=utf8;

/*Table structure for table `geo_troba` */

DROP TABLE IF EXISTS `geo_troba`;

CREATE TABLE `geo_troba` (
  `pktrb` varchar(10) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `nodo` varchar(4) DEFAULT NULL,
  `troba` varchar(6) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `fecha_insert` datetime DEFAULT NULL,
  `user_insert` int(11) DEFAULT NULL,
  `fecha_update` datetime DEFAULT NULL,
  `user_update` int(11) DEFAULT NULL,
  KEY `zonal` (`zonal`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `x` (`x`),
  KEY `y` (`y`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `geo_troba_poligono` */

DROP TABLE IF EXISTS `geo_troba_poligono`;

CREATE TABLE `geo_troba_poligono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonal` varchar(5) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `coord_x` varchar(20) DEFAULT NULL,
  `coord_y` varchar(20) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zonal` (`zonal`),
  KEY `idx_nodo` (`nodo`),
  KEY `idx_troba` (`troba`)
) ENGINE=MyISAM AUTO_INCREMENT=150975 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
