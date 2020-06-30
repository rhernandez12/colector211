/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - catalogos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`catalogos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `catalogos`;

/*Table structure for table `analgesicos` */

DROP TABLE IF EXISTS `analgesicos`;

CREATE TABLE `analgesicos` (
  `AbonadoCms` int(11) DEFAULT NULL,
  `ClienteCms` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `AbonadoCmsGrupo` varchar(30) DEFAULT NULL,
  `mensaje` varchar(200) DEFAULT NULL,
  UNIQUE KEY `codcli` (`ClienteCms`),
  KEY `mensaje` (`mensaje`),
  KEY `AbonadoCms` (`AbonadoCms`),
  KEY `Telefono` (`Telefono`),
  KEY `AbonadoCmsGrupo` (`AbonadoCmsGrupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `db_fuentes` */

DROP TABLE IF EXISTS `db_fuentes`;

CREATE TABLE `db_fuentes` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `mac` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mac3` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mac4` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `zonal` varchar(10) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `latitudx` varchar(20) DEFAULT NULL,
  `longitudy` varchar(20) DEFAULT NULL,
  `marcatroba` varchar(30) DEFAULT NULL,
  `respaldo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `descricion` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tienebateria` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `clave` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `segundafuente` varchar(1) DEFAULT NULL,
  `version` int(1) DEFAULT NULL,
  `fecha_bateria1` date DEFAULT NULL,
  `fecha_bateria2` date DEFAULT NULL,
  `fecha_bateria3` date DEFAULT NULL,
  `fecha_bateria_antigua` date DEFAULT NULL,
  `tiempo_carga_bateria` float DEFAULT NULL,
  UNIQUE KEY `mac` (`mac`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `clave` (`clave`),
  KEY `zonal` (`zonal`),
  KEY `distrito` (`distrito`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dirfuentes` */

DROP TABLE IF EXISTS `dirfuentes`;

CREATE TABLE `dirfuentes` (
  `item` int(11) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `direccion` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `oui_fuentes` */

DROP TABLE IF EXISTS `oui_fuentes`;

CREATE TABLE `oui_fuentes` (
  `oui_fuentes` varchar(6) DEFAULT NULL,
  `marca` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `InputVoltage` varchar(50) DEFAULT NULL,
  `OutputVoltage` varchar(50) DEFAULT NULL,
  `OutputCurrent` varchar(50) DEFAULT NULL,
  `TotalStringVoltage` varchar(50) DEFAULT NULL,
  `tamper` varchar(50) DEFAULT NULL,
  `InverterStatus` varchar(50) DEFAULT NULL,
  `MinorAlarm` varchar(50) DEFAULT NULL,
  `MajorAlarm` varchar(50) DEFAULT NULL,
  `version` int(1) DEFAULT NULL,
  `temperature` varchar(50) DEFAULT NULL,
  `Batteries` varchar(50) DEFAULT NULL,
  `BatteryStrings` varchar(50) DEFAULT NULL,
  `BatteryVoltageSupport` varchar(50) DEFAULT NULL,
  `StringChargeCurrent` varchar(50) DEFAULT NULL,
  `StringDischargeCurrent` varchar(50) DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  KEY `oui_fuentes` (`oui_fuentes`),
  KEY `version` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `querys` */

DROP TABLE IF EXISTS `querys`;

CREATE TABLE `querys` (
  `detalle` varchar(500) DEFAULT NULL,
  `query` longblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_monterrico5` */

DROP TABLE IF EXISTS `scm_phy_monterrico5`;

CREATE TABLE `scm_phy_monterrico5` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `ussnr` varchar(5) DEFAULT NULL,
  `ustxpwr` varchar(5) DEFAULT NULL,
  `dssnr` varchar(5) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_monterrico5` */

DROP TABLE IF EXISTS `scm_scm_monterrico5`;

CREATE TABLE `scm_scm_monterrico5` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `STATUS` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `temporal_fecha_fuentes` */

DROP TABLE IF EXISTS `temporal_fecha_fuentes`;

CREATE TABLE `temporal_fecha_fuentes` (
  `NODO` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PLANO` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DISTRITO` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `DIRECCION` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `LATITUD (X)` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `LONGITUD(Y)` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FUENTE 01` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `MAC` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SERIE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BATERIA1` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BATERIA2` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BATERIA3` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `MAC` (`MAC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
