/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_ccm_data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_ccm_data` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_ccm_data`;

/*Table structure for table `marca_modelo_docsis_total_final` */

DROP TABLE IF EXISTS `marca_modelo_docsis_total_final`;

CREATE TABLE `marca_modelo_docsis_total_final` (
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Empresa` varchar(3) DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `hwversion` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `idxmac` (`MACAddress`),
  KEY `idxdocsis` (`docsis`),
  KEY `idxcodcli` (`NroCliente`),
  KEY `CMTS` (`CMTS`),
  KEY `Fabricante` (`Fabricante`),
  KEY `Modelo` (`Modelo`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `planta_hfc_total` */

DROP TABLE IF EXISTS `planta_hfc_total`;

CREATE TABLE `planta_hfc_total` (
  `telefono` varchar(25) DEFAULT NULL,
  `inscripcion` varchar(40) DEFAULT NULL,
  `codcliente_cms` varchar(25) DEFAULT NULL,
  `codservicio_cms` varchar(25) DEFAULT NULL,
  `tipo_promocion` varchar(50) DEFAULT NULL,
  `veloc_vigente` varchar(20) DEFAULT NULL,
  `veloc_real` varchar(20) DEFAULT NULL,
  `fecha_ini` varchar(50) DEFAULT NULL,
  `fecha_fin` varchar(50) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  KEY `idxtelefono` (`telefono`),
  KEY `idxcodcliente` (`codcliente_cms`),
  KEY `idxcodservicio` (`codservicio_cms`),
  KEY `idxvelocvig` (`veloc_vigente`),
  KEY `idxvelocreal` (`veloc_real`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
