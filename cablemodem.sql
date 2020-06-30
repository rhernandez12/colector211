/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - cablemodem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cablemodem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cablemodem`;

/*Table structure for table `dhcp` */

DROP TABLE IF EXISTS `dhcp`;

CREATE TABLE `dhcp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `area` varchar(20) NOT NULL,
  `fechahora` varchar(20) NOT NULL,
  `idcliente` double NOT NULL,
  `macaddress` varchar(17) DEFAULT NULL,
  `fabricante` varchar(30) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `dhcp_host` varchar(50) DEFAULT NULL,
  `dhcp_interface` varchar(50) DEFAULT NULL,
  `dhcp_mac` varchar(20) DEFAULT NULL,
  `dhcp_ip` varchar(20) DEFAULT NULL,
  `dhcp_nivel` varchar(10) DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fechahora` (`fechahora`),
  KEY `idcliente` (`idcliente`),
  KEY `macaddress` (`macaddress`)
) ENGINE=MyISAM AUTO_INCREMENT=59426 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `idconsulta` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `area` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `idcliente` double DEFAULT NULL,
  `macaddress` varchar(17) DEFAULT NULL,
  `fabricante` varchar(30) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `frecuencia_up1` varchar(12) DEFAULT NULL,
  `power_up1` varchar(5) DEFAULT NULL,
  `frecuencia_up2` varchar(12) DEFAULT NULL,
  `power_up2` varchar(5) DEFAULT NULL,
  `frecuencia_down1` varchar(12) DEFAULT NULL,
  `snr_down1` varchar(5) DEFAULT NULL,
  `power_down1` varchar(5) DEFAULT NULL,
  `frecuencia_down2` varchar(12) DEFAULT NULL,
  `snr_down2` varchar(5) DEFAULT NULL,
  `power_down2` varchar(5) DEFAULT NULL,
  `frecuencia_down3` varchar(12) DEFAULT NULL,
  `snr_down3` varchar(5) DEFAULT NULL,
  `power_down3` varchar(5) DEFAULT NULL,
  `frecuencia_down4` varchar(12) DEFAULT NULL,
  `snr_down4` varchar(5) DEFAULT NULL,
  `power_down4` varchar(5) DEFAULT NULL,
  `frecuencia_down5` varchar(12) DEFAULT NULL,
  `snr_down5` varchar(5) DEFAULT NULL,
  `power_down5` varchar(5) DEFAULT NULL,
  `frecuencia_down6` varchar(12) DEFAULT NULL,
  `snr_down6` varchar(5) DEFAULT NULL,
  `power_down6` varchar(5) DEFAULT NULL,
  `frecuencia_down7` varchar(12) DEFAULT NULL,
  `snr_down7` varchar(5) DEFAULT NULL,
  `power_down7` varchar(5) DEFAULT NULL,
  `frecuencia_down8` varchar(12) DEFAULT NULL,
  `snr_down8` varchar(5) DEFAULT NULL,
  `power_down8` varchar(5) DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  PRIMARY KEY (`idconsulta`),
  KEY `idcliente` (`idcliente`),
  KEY `macaddress` (`macaddress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM AUTO_INCREMENT=108167 DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
