/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - tmpwork_c
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tmpwork_c` /*!40100 DEFAULT CHARACTER SET latin1 */;


USE `tmpwork_c`;

/*Table structure for table `cmts_ip_cols_phy` */

DROP TABLE IF EXISTS `cmts_ip_cols_phy`;

CREATE TABLE `cmts_ip_cols_phy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `col1` varchar(10) DEFAULT NULL,
  `col2` varchar(10) DEFAULT NULL,
  `col3` varchar(10) DEFAULT NULL,
  `col4` varchar(10) DEFAULT NULL,
  `col5` varchar(10) DEFAULT NULL,
  `col6` varchar(10) DEFAULT NULL,
  `col7` varchar(10) DEFAULT NULL,
  `col8` varchar(10) DEFAULT NULL,
  `col9` varchar(10) DEFAULT NULL,
  `col10` varchar(10) DEFAULT NULL,
  `col11` varchar(10) DEFAULT NULL,
  `col12` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=463 DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip_cols_scm` */

DROP TABLE IF EXISTS `cmts_ip_cols_scm`;

CREATE TABLE `cmts_ip_cols_scm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `col1` varchar(10) DEFAULT NULL,
  `col2` varchar(10) DEFAULT NULL,
  `col3` varchar(10) DEFAULT NULL,
  `col4` varchar(10) DEFAULT NULL,
  `col5` varchar(10) DEFAULT NULL,
  `col6` varchar(10) DEFAULT NULL,
  `col7` varchar(10) DEFAULT NULL,
  `col8` varchar(10) DEFAULT NULL,
  `col9` varchar(10) DEFAULT NULL,
  `col10` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=latin1;

/*Table structure for table `display_frame_extension` */

DROP TABLE IF EXISTS `display_frame_extension`;

CREATE TABLE `display_frame_extension` (
  `ExtendingPORT` varchar(15) DEFAULT NULL,
  `ONTID` int(11) DEFAULT NULL,
  `FrameID` int(11) DEFAULT NULL,
  `FRAMESNMAC` varchar(15) DEFAULT NULL,
  `FrameTYPE` varchar(10) DEFAULT NULL,
  `FrameState` varchar(10) DEFAULT NULL,
  `LastofflineReason` varchar(20) DEFAULT NULL,
  `FrameDescription` varchar(6) DEFAULT NULL,
  `olt` varchar(50) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `olt` (`olt`,`fecha_hora`,`FrameID`),
  KEY `ONTID` (`ONTID`),
  KEY `FrameID` (`FrameID`),
  KEY `FrameState` (`FrameState`),
  KEY `FrameDescription` (`FrameDescription`),
  KEY `LastofflineReason` (`LastofflineReason`),
  KEY `olt_2` (`olt`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `display_frame_extension_c` */

DROP TABLE IF EXISTS `display_frame_extension_c`;

CREATE TABLE `display_frame_extension_c` (
  `ExtendingPORT` varchar(15) DEFAULT NULL,
  `ONTID` int(11) DEFAULT NULL,
  `FrameID` int(11) DEFAULT NULL,
  `FRAMESNMAC` varchar(15) DEFAULT NULL,
  `FrameTYPE` varchar(10) DEFAULT NULL,
  `FrameState` varchar(10) DEFAULT NULL,
  `LastofflineReason` varchar(20) DEFAULT NULL,
  `FrameDescription` varchar(10) DEFAULT NULL,
  `olt` varchar(50) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `olt` (`olt`,`fecha_hora`,`FrameID`),
  KEY `ONTID` (`ONTID`),
  KEY `FrameID` (`FrameID`),
  KEY `FrameState` (`FrameState`),
  KEY `LastofflineReason` (`LastofflineReason`),
  KEY `FrameDescription` (`FrameDescription`),
  KEY `olt_2` (`olt`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `huawei_phy_sw` */

DROP TABLE IF EXISTS `huawei_phy_sw`;

CREATE TABLE `huawei_phy_sw` (
  `sw` int(1) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `huawei_scm_sw` */

DROP TABLE IF EXISTS `huawei_scm_sw`;

CREATE TABLE `huawei_scm_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `huawei_sw_historial` */

DROP TABLE IF EXISTS `huawei_sw_historial`;

CREATE TABLE `huawei_sw_historial` (
  `scm` varchar(1) DEFAULT NULL,
  `phy` varchar(1) DEFAULT NULL,
  `query` varchar(200) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_15_de_enero1` */

DROP TABLE IF EXISTS `scm_phy_15_de_enero1`;

CREATE TABLE `scm_phy_15_de_enero1` (
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

/*Table structure for table `scm_phy_1eromayo1` */

DROP TABLE IF EXISTS `scm_phy_1eromayo1`;

CREATE TABLE `scm_phy_1eromayo1` (
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

/*Table structure for table `scm_phy_200_millas1` */

DROP TABLE IF EXISTS `scm_phy_200_millas1`;

CREATE TABLE `scm_phy_200_millas1` (
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

/*Table structure for table `scm_phy_almacen_piura1` */

DROP TABLE IF EXISTS `scm_phy_almacen_piura1`;

CREATE TABLE `scm_phy_almacen_piura1` (
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

/*Table structure for table `scm_phy_ancon1` */

DROP TABLE IF EXISTS `scm_phy_ancon1`;

CREATE TABLE `scm_phy_ancon1` (
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

/*Table structure for table `scm_phy_barranco2` */

DROP TABLE IF EXISTS `scm_phy_barranco2`;

CREATE TABLE `scm_phy_barranco2` (
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

/*Table structure for table `scm_phy_bolognesi1` */

DROP TABLE IF EXISTS `scm_phy_bolognesi1`;

CREATE TABLE `scm_phy_bolognesi1` (
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

/*Table structure for table `scm_phy_buenosaires1` */

DROP TABLE IF EXISTS `scm_phy_buenosaires1`;

CREATE TABLE `scm_phy_buenosaires1` (
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

/*Table structure for table `scm_phy_callao2` */

DROP TABLE IF EXISTS `scm_phy_callao2`;

CREATE TABLE `scm_phy_callao2` (
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

/*Table structure for table `scm_phy_cantogrande1` */

DROP TABLE IF EXISTS `scm_phy_cantogrande1`;

CREATE TABLE `scm_phy_cantogrande1` (
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

/*Table structure for table `scm_phy_castilla1` */

DROP TABLE IF EXISTS `scm_phy_castilla1`;

CREATE TABLE `scm_phy_castilla1` (
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

/*Table structure for table `scm_phy_casuarinas1` */

DROP TABLE IF EXISTS `scm_phy_casuarinas1`;

CREATE TABLE `scm_phy_casuarinas1` (
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

/*Table structure for table `scm_phy_catacaos1` */

DROP TABLE IF EXISTS `scm_phy_catacaos1`;

CREATE TABLE `scm_phy_catacaos1` (
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

/*Table structure for table `scm_phy_cercado1` */

DROP TABLE IF EXISTS `scm_phy_cercado1`;

CREATE TABLE `scm_phy_cercado1` (
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

/*Table structure for table `scm_phy_chaclacayo1` */

DROP TABLE IF EXISTS `scm_phy_chaclacayo1`;

CREATE TABLE `scm_phy_chaclacayo1` (
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

/*Table structure for table `scm_phy_chiclayo_centro1` */

DROP TABLE IF EXISTS `scm_phy_chiclayo_centro1`;

CREATE TABLE `scm_phy_chiclayo_centro1` (
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

/*Table structure for table `scm_phy_chilca1` */

DROP TABLE IF EXISTS `scm_phy_chilca1`;

CREATE TABLE `scm_phy_chilca1` (
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

/*Table structure for table `scm_phy_chillon1` */

DROP TABLE IF EXISTS `scm_phy_chillon1`;

CREATE TABLE `scm_phy_chillon1` (
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

/*Table structure for table `scm_phy_chimbote2` */

DROP TABLE IF EXISTS `scm_phy_chimbote2`;

CREATE TABLE `scm_phy_chimbote2` (
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

/*Table structure for table `scm_phy_chorrillos4` */

DROP TABLE IF EXISTS `scm_phy_chorrillos4`;

CREATE TABLE `scm_phy_chorrillos4` (
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

/*Table structure for table `scm_phy_chosica1` */

DROP TABLE IF EXISTS `scm_phy_chosica1`;

CREATE TABLE `scm_phy_chosica1` (
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

/*Table structure for table `scm_phy_ciudad_blanca1` */

DROP TABLE IF EXISTS `scm_phy_ciudad_blanca1`;

CREATE TABLE `scm_phy_ciudad_blanca1` (
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

/*Table structure for table `scm_phy_condevilla2` */

DROP TABLE IF EXISTS `scm_phy_condevilla2`;

CREATE TABLE `scm_phy_condevilla2` (
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

/*Table structure for table `scm_phy_el_agustino1` */

DROP TABLE IF EXISTS `scm_phy_el_agustino1`;

CREATE TABLE `scm_phy_el_agustino1` (
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

/*Table structure for table `scm_phy_el_bosque1` */

DROP TABLE IF EXISTS `scm_phy_el_bosque1`;

CREATE TABLE `scm_phy_el_bosque1` (
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

/*Table structure for table `scm_phy_el_progreso1` */

DROP TABLE IF EXISTS `scm_phy_el_progreso1`;

CREATE TABLE `scm_phy_el_progreso1` (
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

/*Table structure for table `scm_phy_elagustino1` */

DROP TABLE IF EXISTS `scm_phy_elagustino1`;

CREATE TABLE `scm_phy_elagustino1` (
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

/*Table structure for table `scm_phy_eltambo1` */

DROP TABLE IF EXISTS `scm_phy_eltambo1`;

CREATE TABLE `scm_phy_eltambo1` (
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

/*Table structure for table `scm_phy_enrique_meiggs1` */

DROP TABLE IF EXISTS `scm_phy_enrique_meiggs1`;

CREATE TABLE `scm_phy_enrique_meiggs1` (
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

/*Table structure for table `scm_phy_esperanza1` */

DROP TABLE IF EXISTS `scm_phy_esperanza1`;

CREATE TABLE `scm_phy_esperanza1` (
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

/*Table structure for table `scm_phy_ferrenafe1` */

DROP TABLE IF EXISTS `scm_phy_ferrenafe1`;

CREATE TABLE `scm_phy_ferrenafe1` (
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

/*Table structure for table `scm_phy_fundo_marquez1` */

DROP TABLE IF EXISTS `scm_phy_fundo_marquez1`;

CREATE TABLE `scm_phy_fundo_marquez1` (
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

/*Table structure for table `scm_phy_garciacalderon1` */

DROP TABLE IF EXISTS `scm_phy_garciacalderon1`;

CREATE TABLE `scm_phy_garciacalderon1` (
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

/*Table structure for table `scm_phy_granados1` */

DROP TABLE IF EXISTS `scm_phy_granados1`;

CREATE TABLE `scm_phy_granados1` (
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

/*Table structure for table `scm_phy_higuereta1` */

DROP TABLE IF EXISTS `scm_phy_higuereta1`;

CREATE TABLE `scm_phy_higuereta1` (
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

/*Table structure for table `scm_phy_huachipa1` */

DROP TABLE IF EXISTS `scm_phy_huachipa1`;

CREATE TABLE `scm_phy_huachipa1` (
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

/*Table structure for table `scm_phy_huancayo1` */

DROP TABLE IF EXISTS `scm_phy_huancayo1`;

CREATE TABLE `scm_phy_huancayo1` (
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

/*Table structure for table `scm_phy_huaycan1` */

DROP TABLE IF EXISTS `scm_phy_huaycan1`;

CREATE TABLE `scm_phy_huaycan1` (
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

/*Table structure for table `scm_phy_huertos_de_manchay1` */

DROP TABLE IF EXISTS `scm_phy_huertos_de_manchay1`;

CREATE TABLE `scm_phy_huertos_de_manchay1` (
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

/*Table structure for table `scm_phy_hunter1` */

DROP TABLE IF EXISTS `scm_phy_hunter1`;

CREATE TABLE `scm_phy_hunter1` (
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

/*Table structure for table `scm_phy_ica2` */

DROP TABLE IF EXISTS `scm_phy_ica2`;

CREATE TABLE `scm_phy_ica2` (
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

/*Table structure for table `scm_phy_izuchaca1` */

DROP TABLE IF EXISTS `scm_phy_izuchaca1`;

CREATE TABLE `scm_phy_izuchaca1` (
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

/*Table structure for table `scm_phy_josegalvez1` */

DROP TABLE IF EXISTS `scm_phy_josegalvez1`;

CREATE TABLE `scm_phy_josegalvez1` (
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

/*Table structure for table `scm_phy_la_angostura1` */

DROP TABLE IF EXISTS `scm_phy_la_angostura1`;

CREATE TABLE `scm_phy_la_angostura1` (
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

/*Table structure for table `scm_phy_la_molina1` */

DROP TABLE IF EXISTS `scm_phy_la_molina1`;

CREATE TABLE `scm_phy_la_molina1` (
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

/*Table structure for table `scm_phy_laalborada1` */

DROP TABLE IF EXISTS `scm_phy_laalborada1`;

CREATE TABLE `scm_phy_laalborada1` (
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

/*Table structure for table `scm_phy_lambayeque_centro1` */

DROP TABLE IF EXISTS `scm_phy_lambayeque_centro1`;

CREATE TABLE `scm_phy_lambayeque_centro1` (
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

/*Table structure for table `scm_phy_larapa1` */

DROP TABLE IF EXISTS `scm_phy_larapa1`;

CREATE TABLE `scm_phy_larapa1` (
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

/*Table structure for table `scm_phy_las_delicias1` */

DROP TABLE IF EXISTS `scm_phy_las_delicias1`;

CREATE TABLE `scm_phy_las_delicias1` (
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

/*Table structure for table `scm_phy_las_flores1` */

DROP TABLE IF EXISTS `scm_phy_las_flores1`;

CREATE TABLE `scm_phy_las_flores1` (
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

/*Table structure for table `scm_phy_lavictoria1` */

DROP TABLE IF EXISTS `scm_phy_lavictoria1`;

CREATE TABLE `scm_phy_lavictoria1` (
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

/*Table structure for table `scm_phy_leguia1` */

DROP TABLE IF EXISTS `scm_phy_leguia1`;

CREATE TABLE `scm_phy_leguia1` (
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

/*Table structure for table `scm_phy_leonardo_ortiz1` */

DROP TABLE IF EXISTS `scm_phy_leonardo_ortiz1`;

CREATE TABLE `scm_phy_leonardo_ortiz1` (
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

/*Table structure for table `scm_phy_los_ficus1` */

DROP TABLE IF EXISTS `scm_phy_los_ficus1`;

CREATE TABLE `scm_phy_los_ficus1` (
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

/*Table structure for table `scm_phy_los_olivos1` */

DROP TABLE IF EXISTS `scm_phy_los_olivos1`;

CREATE TABLE `scm_phy_los_olivos1` (
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

/*Table structure for table `scm_phy_lurin1` */

DROP TABLE IF EXISTS `scm_phy_lurin1`;

CREATE TABLE `scm_phy_lurin1` (
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

/*Table structure for table `scm_phy_macarena1` */

DROP TABLE IF EXISTS `scm_phy_macarena1`;

CREATE TABLE `scm_phy_macarena1` (
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

/*Table structure for table `scm_phy_magdalena3` */

DROP TABLE IF EXISTS `scm_phy_magdalena3`;

CREATE TABLE `scm_phy_magdalena3` (
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

/*Table structure for table `scm_phy_mariategui1` */

DROP TABLE IF EXISTS `scm_phy_mariategui1`;

CREATE TABLE `scm_phy_mariategui1` (
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

/*Table structure for table `scm_phy_mariscalcaceres1` */

DROP TABLE IF EXISTS `scm_phy_mariscalcaceres1`;

CREATE TABLE `scm_phy_mariscalcaceres1` (
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

/*Table structure for table `scm_phy_miraflores1` */

DROP TABLE IF EXISTS `scm_phy_miraflores1`;

CREATE TABLE `scm_phy_miraflores1` (
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

/*Table structure for table `scm_phy_mirones1` */

DROP TABLE IF EXISTS `scm_phy_mirones1`;

CREATE TABLE `scm_phy_mirones1` (
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

/*Table structure for table `scm_phy_moche1` */

DROP TABLE IF EXISTS `scm_phy_moche1`;

CREATE TABLE `scm_phy_moche1` (
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

/*Table structure for table `scm_phy_monsefu1` */

DROP TABLE IF EXISTS `scm_phy_monsefu1`;

CREATE TABLE `scm_phy_monsefu1` (
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

/*Table structure for table `scm_phy_monterrey1` */

DROP TABLE IF EXISTS `scm_phy_monterrey1`;

CREATE TABLE `scm_phy_monterrey1` (
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

/*Table structure for table `scm_phy_pamplona1` */

DROP TABLE IF EXISTS `scm_phy_pamplona1`;

CREATE TABLE `scm_phy_pamplona1` (
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

/*Table structure for table `scm_phy_parcona1` */

DROP TABLE IF EXISTS `scm_phy_parcona1`;

CREATE TABLE `scm_phy_parcona1` (
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

/*Table structure for table `scm_phy_pomalca1` */

DROP TABLE IF EXISTS `scm_phy_pomalca1`;

CREATE TABLE `scm_phy_pomalca1` (
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

/*Table structure for table `scm_phy_porvenir1` */

DROP TABLE IF EXISTS `scm_phy_porvenir1`;

CREATE TABLE `scm_phy_porvenir1` (
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

/*Table structure for table `scm_phy_puentepiedra1` */

DROP TABLE IF EXISTS `scm_phy_puentepiedra1`;

CREATE TABLE `scm_phy_puentepiedra1` (
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

/*Table structure for table `scm_phy_quinones1` */

DROP TABLE IF EXISTS `scm_phy_quinones1`;

CREATE TABLE `scm_phy_quinones1` (
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

/*Table structure for table `scm_phy_retablo5` */

DROP TABLE IF EXISTS `scm_phy_retablo5`;

CREATE TABLE `scm_phy_retablo5` (
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

/*Table structure for table `scm_phy_rimac3` */

DROP TABLE IF EXISTS `scm_phy_rimac3`;

CREATE TABLE `scm_phy_rimac3` (
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

/*Table structure for table `scm_phy_salaverry1` */

DROP TABLE IF EXISTS `scm_phy_salaverry1`;

CREATE TABLE `scm_phy_salaverry1` (
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

/*Table structure for table `scm_phy_san_borja1` */

DROP TABLE IF EXISTS `scm_phy_san_borja1`;

CREATE TABLE `scm_phy_san_borja1` (
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

/*Table structure for table `scm_phy_san_roque1` */

DROP TABLE IF EXISTS `scm_phy_san_roque1`;

CREATE TABLE `scm_phy_san_roque1` (
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

/*Table structure for table `scm_phy_sanjose6` */

DROP TABLE IF EXISTS `scm_phy_sanjose6`;

CREATE TABLE `scm_phy_sanjose6` (
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

/*Table structure for table `scm_phy_santa_clara1` */

DROP TABLE IF EXISTS `scm_phy_santa_clara1`;

CREATE TABLE `scm_phy_santa_clara1` (
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

/*Table structure for table `scm_phy_santa_rosa1` */

DROP TABLE IF EXISTS `scm_phy_santa_rosa1`;

CREATE TABLE `scm_phy_santa_rosa1` (
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

/*Table structure for table `scm_phy_t` */

DROP TABLE IF EXISTS `scm_phy_t`;

CREATE TABLE `scm_phy_t` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `Sid` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `Timing_Offset` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `Mode_` varchar(20) DEFAULT NULL,
  `DOCSIS_Prov` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`Interface`),
  KEY `NewIndex3` (`Sid`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`ultimo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_tahuantinsuyo1` */

DROP TABLE IF EXISTS `scm_phy_tahuantinsuyo1`;

CREATE TABLE `scm_phy_tahuantinsuyo1` (
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

/*Table structure for table `scm_phy_ventanilla1` */

DROP TABLE IF EXISTS `scm_phy_ventanilla1`;

CREATE TABLE `scm_phy_ventanilla1` (
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

/*Table structure for table `scm_phy_villa_rica1` */

DROP TABLE IF EXISTS `scm_phy_villa_rica1`;

CREATE TABLE `scm_phy_villa_rica1` (
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

/*Table structure for table `scm_phy_villaelsalvador1` */

DROP TABLE IF EXISTS `scm_phy_villaelsalvador1`;

CREATE TABLE `scm_phy_villaelsalvador1` (
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

/*Table structure for table `scm_phy_villasol1` */

DROP TABLE IF EXISTS `scm_phy_villasol1`;

CREATE TABLE `scm_phy_villasol1` (
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

/*Table structure for table `scm_phy_washington4` */

DROP TABLE IF EXISTS `scm_phy_washington4`;

CREATE TABLE `scm_phy_washington4` (
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

/*Table structure for table `scm_phy_zamacola1` */

DROP TABLE IF EXISTS `scm_phy_zamacola1`;

CREATE TABLE `scm_phy_zamacola1` (
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

/*Table structure for table `scm_phy_zapallal1` */

DROP TABLE IF EXISTS `scm_phy_zapallal1`;

CREATE TABLE `scm_phy_zapallal1` (
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

/*Table structure for table `scm_phy_zarate3` */

DROP TABLE IF EXISTS `scm_phy_zarate3`;

CREATE TABLE `scm_phy_zarate3` (
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

/*Table structure for table `scm_scm_15_de_enero1` */

DROP TABLE IF EXISTS `scm_scm_15_de_enero1`;

CREATE TABLE `scm_scm_15_de_enero1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_1eromayo1` */

DROP TABLE IF EXISTS `scm_scm_1eromayo1`;

CREATE TABLE `scm_scm_1eromayo1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_200_millas1` */

DROP TABLE IF EXISTS `scm_scm_200_millas1`;

CREATE TABLE `scm_scm_200_millas1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_almacen_piura1` */

DROP TABLE IF EXISTS `scm_scm_almacen_piura1`;

CREATE TABLE `scm_scm_almacen_piura1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_ancon1` */

DROP TABLE IF EXISTS `scm_scm_ancon1`;

CREATE TABLE `scm_scm_ancon1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_barranco2` */

DROP TABLE IF EXISTS `scm_scm_barranco2`;

CREATE TABLE `scm_scm_barranco2` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_bolognesi1` */

DROP TABLE IF EXISTS `scm_scm_bolognesi1`;

CREATE TABLE `scm_scm_bolognesi1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_buenosaires1` */

DROP TABLE IF EXISTS `scm_scm_buenosaires1`;

CREATE TABLE `scm_scm_buenosaires1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_callao2` */

DROP TABLE IF EXISTS `scm_scm_callao2`;

CREATE TABLE `scm_scm_callao2` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_cantogrande1` */

DROP TABLE IF EXISTS `scm_scm_cantogrande1`;

CREATE TABLE `scm_scm_cantogrande1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_castilla1` */

DROP TABLE IF EXISTS `scm_scm_castilla1`;

CREATE TABLE `scm_scm_castilla1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_casuarinas1` */

DROP TABLE IF EXISTS `scm_scm_casuarinas1`;

CREATE TABLE `scm_scm_casuarinas1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_catacaos1` */

DROP TABLE IF EXISTS `scm_scm_catacaos1`;

CREATE TABLE `scm_scm_catacaos1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_cercado1` */

DROP TABLE IF EXISTS `scm_scm_cercado1`;

CREATE TABLE `scm_scm_cercado1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chaclacayo1` */

DROP TABLE IF EXISTS `scm_scm_chaclacayo1`;

CREATE TABLE `scm_scm_chaclacayo1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chiclayo_centro1` */

DROP TABLE IF EXISTS `scm_scm_chiclayo_centro1`;

CREATE TABLE `scm_scm_chiclayo_centro1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chilca1` */

DROP TABLE IF EXISTS `scm_scm_chilca1`;

CREATE TABLE `scm_scm_chilca1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chillon1` */

DROP TABLE IF EXISTS `scm_scm_chillon1`;

CREATE TABLE `scm_scm_chillon1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chimbote2` */

DROP TABLE IF EXISTS `scm_scm_chimbote2`;

CREATE TABLE `scm_scm_chimbote2` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chorrillos4` */

DROP TABLE IF EXISTS `scm_scm_chorrillos4`;

CREATE TABLE `scm_scm_chorrillos4` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chosica1` */

DROP TABLE IF EXISTS `scm_scm_chosica1`;

CREATE TABLE `scm_scm_chosica1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_ciudad_blanca1` */

DROP TABLE IF EXISTS `scm_scm_ciudad_blanca1`;

CREATE TABLE `scm_scm_ciudad_blanca1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_condevilla2` */

DROP TABLE IF EXISTS `scm_scm_condevilla2`;

CREATE TABLE `scm_scm_condevilla2` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `cmmac` (`cmmac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_el_agustino1` */

DROP TABLE IF EXISTS `scm_scm_el_agustino1`;

CREATE TABLE `scm_scm_el_agustino1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_el_bosque1` */

DROP TABLE IF EXISTS `scm_scm_el_bosque1`;

CREATE TABLE `scm_scm_el_bosque1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_el_progreso1` */

DROP TABLE IF EXISTS `scm_scm_el_progreso1`;

CREATE TABLE `scm_scm_el_progreso1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_eltambo1` */

DROP TABLE IF EXISTS `scm_scm_eltambo1`;

CREATE TABLE `scm_scm_eltambo1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_enrique_meiggs1` */

DROP TABLE IF EXISTS `scm_scm_enrique_meiggs1`;

CREATE TABLE `scm_scm_enrique_meiggs1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_esperanza1` */

DROP TABLE IF EXISTS `scm_scm_esperanza1`;

CREATE TABLE `scm_scm_esperanza1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_ferrenafe1` */

DROP TABLE IF EXISTS `scm_scm_ferrenafe1`;

CREATE TABLE `scm_scm_ferrenafe1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_fundo_marquez1` */

DROP TABLE IF EXISTS `scm_scm_fundo_marquez1`;

CREATE TABLE `scm_scm_fundo_marquez1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_garciacalderon1` */

DROP TABLE IF EXISTS `scm_scm_garciacalderon1`;

CREATE TABLE `scm_scm_garciacalderon1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_granados1` */

DROP TABLE IF EXISTS `scm_scm_granados1`;

CREATE TABLE `scm_scm_granados1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_higuereta1` */

DROP TABLE IF EXISTS `scm_scm_higuereta1`;

CREATE TABLE `scm_scm_higuereta1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_huachipa1` */

DROP TABLE IF EXISTS `scm_scm_huachipa1`;

CREATE TABLE `scm_scm_huachipa1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_huancayo1` */

DROP TABLE IF EXISTS `scm_scm_huancayo1`;

CREATE TABLE `scm_scm_huancayo1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_huaycan1` */

DROP TABLE IF EXISTS `scm_scm_huaycan1`;

CREATE TABLE `scm_scm_huaycan1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_huertos_de_manchay1` */

DROP TABLE IF EXISTS `scm_scm_huertos_de_manchay1`;

CREATE TABLE `scm_scm_huertos_de_manchay1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_hunter1` */

DROP TABLE IF EXISTS `scm_scm_hunter1`;

CREATE TABLE `scm_scm_hunter1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_ica2` */

DROP TABLE IF EXISTS `scm_scm_ica2`;

CREATE TABLE `scm_scm_ica2` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_izuchaca1` */

DROP TABLE IF EXISTS `scm_scm_izuchaca1`;

CREATE TABLE `scm_scm_izuchaca1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_josegalvez1` */

DROP TABLE IF EXISTS `scm_scm_josegalvez1`;

CREATE TABLE `scm_scm_josegalvez1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_la_angostura1` */

DROP TABLE IF EXISTS `scm_scm_la_angostura1`;

CREATE TABLE `scm_scm_la_angostura1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_la_molina1` */

DROP TABLE IF EXISTS `scm_scm_la_molina1`;

CREATE TABLE `scm_scm_la_molina1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_laalborada1` */

DROP TABLE IF EXISTS `scm_scm_laalborada1`;

CREATE TABLE `scm_scm_laalborada1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_lambayeque_centro1` */

DROP TABLE IF EXISTS `scm_scm_lambayeque_centro1`;

CREATE TABLE `scm_scm_lambayeque_centro1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_larapa1` */

DROP TABLE IF EXISTS `scm_scm_larapa1`;

CREATE TABLE `scm_scm_larapa1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_las_delicias1` */

DROP TABLE IF EXISTS `scm_scm_las_delicias1`;

CREATE TABLE `scm_scm_las_delicias1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_las_flores1` */

DROP TABLE IF EXISTS `scm_scm_las_flores1`;

CREATE TABLE `scm_scm_las_flores1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_lavictoria1` */

DROP TABLE IF EXISTS `scm_scm_lavictoria1`;

CREATE TABLE `scm_scm_lavictoria1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_leguia1` */

DROP TABLE IF EXISTS `scm_scm_leguia1`;

CREATE TABLE `scm_scm_leguia1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_leonardo_ortiz1` */

DROP TABLE IF EXISTS `scm_scm_leonardo_ortiz1`;

CREATE TABLE `scm_scm_leonardo_ortiz1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_los_ficus1` */

DROP TABLE IF EXISTS `scm_scm_los_ficus1`;

CREATE TABLE `scm_scm_los_ficus1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_los_olivos1` */

DROP TABLE IF EXISTS `scm_scm_los_olivos1`;

CREATE TABLE `scm_scm_los_olivos1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_lurin1` */

DROP TABLE IF EXISTS `scm_scm_lurin1`;

CREATE TABLE `scm_scm_lurin1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_macarena1` */

DROP TABLE IF EXISTS `scm_scm_macarena1`;

CREATE TABLE `scm_scm_macarena1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_magdalena3` */

DROP TABLE IF EXISTS `scm_scm_magdalena3`;

CREATE TABLE `scm_scm_magdalena3` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_mariategui1` */

DROP TABLE IF EXISTS `scm_scm_mariategui1`;

CREATE TABLE `scm_scm_mariategui1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_mariscalcaceres1` */

DROP TABLE IF EXISTS `scm_scm_mariscalcaceres1`;

CREATE TABLE `scm_scm_mariscalcaceres1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_miraflores1` */

DROP TABLE IF EXISTS `scm_scm_miraflores1`;

CREATE TABLE `scm_scm_miraflores1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_mirones1` */

DROP TABLE IF EXISTS `scm_scm_mirones1`;

CREATE TABLE `scm_scm_mirones1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_moche1` */

DROP TABLE IF EXISTS `scm_scm_moche1`;

CREATE TABLE `scm_scm_moche1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_monsefu1` */

DROP TABLE IF EXISTS `scm_scm_monsefu1`;

CREATE TABLE `scm_scm_monsefu1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_monterrey1` */

DROP TABLE IF EXISTS `scm_scm_monterrey1`;

CREATE TABLE `scm_scm_monterrey1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
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

/*Table structure for table `scm_scm_pamplona1` */

DROP TABLE IF EXISTS `scm_scm_pamplona1`;

CREATE TABLE `scm_scm_pamplona1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_parcona1` */

DROP TABLE IF EXISTS `scm_scm_parcona1`;

CREATE TABLE `scm_scm_parcona1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_pomalca1` */

DROP TABLE IF EXISTS `scm_scm_pomalca1`;

CREATE TABLE `scm_scm_pomalca1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_porvenir1` */

DROP TABLE IF EXISTS `scm_scm_porvenir1`;

CREATE TABLE `scm_scm_porvenir1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_puentepiedra1` */

DROP TABLE IF EXISTS `scm_scm_puentepiedra1`;

CREATE TABLE `scm_scm_puentepiedra1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_quinones1` */

DROP TABLE IF EXISTS `scm_scm_quinones1`;

CREATE TABLE `scm_scm_quinones1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_retablo5` */

DROP TABLE IF EXISTS `scm_scm_retablo5`;

CREATE TABLE `scm_scm_retablo5` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_rimac3` */

DROP TABLE IF EXISTS `scm_scm_rimac3`;

CREATE TABLE `scm_scm_rimac3` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_salaverry1` */

DROP TABLE IF EXISTS `scm_scm_salaverry1`;

CREATE TABLE `scm_scm_salaverry1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_san_borja1` */

DROP TABLE IF EXISTS `scm_scm_san_borja1`;

CREATE TABLE `scm_scm_san_borja1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_san_roque1` */

DROP TABLE IF EXISTS `scm_scm_san_roque1`;

CREATE TABLE `scm_scm_san_roque1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanjose6` */

DROP TABLE IF EXISTS `scm_scm_sanjose6`;

CREATE TABLE `scm_scm_sanjose6` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_santa_clara1` */

DROP TABLE IF EXISTS `scm_scm_santa_clara1`;

CREATE TABLE `scm_scm_santa_clara1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_santa_rosa1` */

DROP TABLE IF EXISTS `scm_scm_santa_rosa1`;

CREATE TABLE `scm_scm_santa_rosa1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_tahuantinsuyo1` */

DROP TABLE IF EXISTS `scm_scm_tahuantinsuyo1`;

CREATE TABLE `scm_scm_tahuantinsuyo1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_ventanilla1` */

DROP TABLE IF EXISTS `scm_scm_ventanilla1`;

CREATE TABLE `scm_scm_ventanilla1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_villa_rica1` */

DROP TABLE IF EXISTS `scm_scm_villa_rica1`;

CREATE TABLE `scm_scm_villa_rica1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_villaelsalvador1` */

DROP TABLE IF EXISTS `scm_scm_villaelsalvador1`;

CREATE TABLE `scm_scm_villaelsalvador1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_villasol1` */

DROP TABLE IF EXISTS `scm_scm_villasol1`;

CREATE TABLE `scm_scm_villasol1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_washington4` */

DROP TABLE IF EXISTS `scm_scm_washington4`;

CREATE TABLE `scm_scm_washington4` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_zamacola1` */

DROP TABLE IF EXISTS `scm_scm_zamacola1`;

CREATE TABLE `scm_scm_zamacola1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_zapallal1` */

DROP TABLE IF EXISTS `scm_scm_zapallal1`;

CREATE TABLE `scm_scm_zapallal1` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_zarate3` */

DROP TABLE IF EXISTS `scm_scm_zarate3`;

CREATE TABLE `scm_scm_zarate3` (
  `indice` int(8) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `primsid` varchar(5) DEFAULT NULL,
  `numcpe` varchar(3) DEFAULT NULL,
  `verdocsis` varchar(4) DEFAULT NULL,
  `dsrxpwr` varchar(5) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total_off` */

DROP TABLE IF EXISTS `scm_total_off`;

CREATE TABLE `scm_total_off` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total_on` */

DROP TABLE IF EXISTS `scm_total_on`;

CREATE TABLE `scm_total_on` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_olt` */

DROP TABLE IF EXISTS `trafico_olt`;

CREATE TABLE `trafico_olt` (
  `ifDescr` varchar(20) DEFAULT NULL,
  `ifAlias` varchar(20) DEFAULT NULL,
  `ifHCInOctets` varchar(30) DEFAULT NULL,
  `ifHCOutOctets` varchar(100) DEFAULT NULL,
  `D30DownChannel` varchar(100) DEFAULT NULL,
  `D30UpChannel` varchar(10) DEFAULT NULL,
  `tCmNum` varchar(10) DEFAULT NULL,
  `tOnlineCmNum` varchar(10) DEFAULT NULL,
  `tUnOnlCmNum` varchar(10) DEFAULT NULL,
  `tOfflineCmNum` varchar(10) DEFAULT NULL,
  `tWidebandCmNum` varchar(10) DEFAULT NULL,
  `cmts` varchar(50) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  UNIQUE KEY `ifDescr` (`ifDescr`,`cmts`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `z_olt_sw` */

DROP TABLE IF EXISTS `z_olt_sw`;

CREATE TABLE `z_olt_sw` (
  `cmts` varchar(100) DEFAULT NULL,
  `carga_scm` varchar(100) DEFAULT NULL,
  `carga_phy` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_frame_failed` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_frame_failed` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_frame_failed`()
BEGIN
	SELECT `ExtendingPORT`,`FrameState`,`LastofflineReason`,`FrameDescription`,`olt`,`fecha_hora`,SUBSTR(FrameDescription,1,2) AS nodo,SUBSTR(FrameDescription,3,4) AS troba 
	FROM `tmpwork_c`.`display_frame_extension_c` 
	WHERE FrameState='Failed'
	INTO OUTFILE '/temp/frame_failed.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/*Table structure for table `olt_frame_state_view` */

DROP TABLE IF EXISTS `olt_frame_state_view`;

/*!50001 DROP VIEW IF EXISTS `olt_frame_state_view` */;
/*!50001 DROP TABLE IF EXISTS `olt_frame_state_view` */;

/*!50001 CREATE TABLE  `olt_frame_state_view`(
 `olt` varchar(50) ,
 `CommunicationFail` decimal(23,0) ,
 `PowerAbnormal` decimal(23,0) ,
 `UpLinkFail` decimal(23,0) ,
 `Otros` decimal(23,0) ,
 `Total` decimal(23,0) ,
 `Fecha_Act` varchar(20) ,
 `FechaMin` varchar(20) 
)*/;

/*View structure for view olt_frame_state_view */

/*!50001 DROP TABLE IF EXISTS `olt_frame_state_view` */;
/*!50001 DROP VIEW IF EXISTS `olt_frame_state_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `olt_frame_state_view` AS (select `display_frame_extension_c`.`olt` AS `olt`,sum(if(((`display_frame_extension_c`.`FrameState` = 'Failed') and (`display_frame_extension_c`.`LastofflineReason` = 'CommunicationFail')),1,0)) AS `CommunicationFail`,sum(if(((`display_frame_extension_c`.`FrameState` = 'Failed') and (`display_frame_extension_c`.`LastofflineReason` = 'PowerAbnormal')),1,0)) AS `PowerAbnormal`,sum(if(((`display_frame_extension_c`.`FrameState` = 'Failed') and (`display_frame_extension_c`.`LastofflineReason` = 'UpLinkFail')),1,0)) AS `UpLinkFail`,sum(if(((`display_frame_extension_c`.`FrameState` = 'Failed') and (`display_frame_extension_c`.`LastofflineReason` not in ('CommunicationFail','PowerAbnormal','UpLinkFail'))),1,0)) AS `Otros`,sum(if((`display_frame_extension_c`.`FrameState` = 'Failed'),1,0)) AS `Total`,max(`display_frame_extension_c`.`fecha_hora`) AS `Fecha_Act`,min(`display_frame_extension_c`.`fecha_hora`) AS `FechaMin` from `display_frame_extension_c` where (`display_frame_extension_c`.`FrameState` <> 'Normal') group by `display_frame_extension_c`.`olt`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
