/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - tmpwork_casa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tmpwork_casa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tmpwork_casa`;

/*Table structure for table `carga_cmts_casa_sw` */

DROP TABLE IF EXISTS `carga_cmts_casa_sw`;

CREATE TABLE `carga_cmts_casa_sw` (
  `archivos` varchar(40) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `casa_phy_sw` */

DROP TABLE IF EXISTS `casa_phy_sw`;

CREATE TABLE `casa_phy_sw` (
  `sw` int(1) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `casa_scm_sw` */

DROP TABLE IF EXISTS `casa_scm_sw`;

CREATE TABLE `casa_scm_sw` (
  `sw` int(1) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_sw` */

DROP TABLE IF EXISTS `cmts_casa_sw`;

CREATE TABLE `cmts_casa_sw` (
  `scm_phy_t` char(1) DEFAULT NULL,
  `fechahora_phy_t` varchar(20) DEFAULT NULL,
  `scm_total_off` char(1) DEFAULT NULL,
  `fechahora_total_off` varchar(20) DEFAULT NULL,
  `scm_total_on` char(1) DEFAULT NULL,
  `fechahora_total_on` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `sw` varchar(1) DEFAULT NULL,
  `num` int(2) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

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
  `sw` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_arequipa4` */

DROP TABLE IF EXISTS `scm_phy_arequipa4`;

CREATE TABLE `scm_phy_arequipa4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_cayma1` */

DROP TABLE IF EXISTS `scm_phy_cayma1`;

CREATE TABLE `scm_phy_cayma1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_chiclayo2` */

DROP TABLE IF EXISTS `scm_phy_chiclayo2`;

CREATE TABLE `scm_phy_chiclayo2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_chorrillos1` */

DROP TABLE IF EXISTS `scm_phy_chorrillos1`;

CREATE TABLE `scm_phy_chorrillos1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_chorrillos3` */

DROP TABLE IF EXISTS `scm_phy_chorrillos3`;

CREATE TABLE `scm_phy_chorrillos3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_condevilla1` */

DROP TABLE IF EXISTS `scm_phy_condevilla1`;

CREATE TABLE `scm_phy_condevilla1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_cusco1` */

DROP TABLE IF EXISTS `scm_phy_cusco1`;

CREATE TABLE `scm_phy_cusco1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_cusco2` */

DROP TABLE IF EXISTS `scm_phy_cusco2`;

CREATE TABLE `scm_phy_cusco2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_higuereta4` */

DROP TABLE IF EXISTS `scm_phy_higuereta4`;

CREATE TABLE `scm_phy_higuereta4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_higuereta5` */

DROP TABLE IF EXISTS `scm_phy_higuereta5`;

CREATE TABLE `scm_phy_higuereta5` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_lamolina3` */

DROP TABLE IF EXISTS `scm_phy_lamolina3`;

CREATE TABLE `scm_phy_lamolina3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_lince1` */

DROP TABLE IF EXISTS `scm_phy_lince1`;

CREATE TABLE `scm_phy_lince1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_losolivos2` */

DROP TABLE IF EXISTS `scm_phy_losolivos2`;

CREATE TABLE `scm_phy_losolivos2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_losolivos3` */

DROP TABLE IF EXISTS `scm_phy_losolivos3`;

CREATE TABLE `scm_phy_losolivos3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_magdalena1` */

DROP TABLE IF EXISTS `scm_phy_magdalena1`;

CREATE TABLE `scm_phy_magdalena1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_magdalena2` */

DROP TABLE IF EXISTS `scm_phy_magdalena2`;

CREATE TABLE `scm_phy_magdalena2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_mala1` */

DROP TABLE IF EXISTS `scm_phy_mala1`;

CREATE TABLE `scm_phy_mala1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_miraflores3` */

DROP TABLE IF EXISTS `scm_phy_miraflores3`;

CREATE TABLE `scm_phy_miraflores3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_miraflores4` */

DROP TABLE IF EXISTS `scm_phy_miraflores4`;

CREATE TABLE `scm_phy_miraflores4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_monterrico3` */

DROP TABLE IF EXISTS `scm_phy_monterrico3`;

CREATE TABLE `scm_phy_monterrico3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_retablo1` */

DROP TABLE IF EXISTS `scm_phy_retablo1`;

CREATE TABLE `scm_phy_retablo1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_retablo2` */

DROP TABLE IF EXISTS `scm_phy_retablo2`;

CREATE TABLE `scm_phy_retablo2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_retablo3` */

DROP TABLE IF EXISTS `scm_phy_retablo3`;

CREATE TABLE `scm_phy_retablo3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_rimac1` */

DROP TABLE IF EXISTS `scm_phy_rimac1`;

CREATE TABLE `scm_phy_rimac1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanborja2` */

DROP TABLE IF EXISTS `scm_phy_sanborja2`;

CREATE TABLE `scm_phy_sanborja2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanisidro1` */

DROP TABLE IF EXISTS `scm_phy_sanisidro1`;

CREATE TABLE `scm_phy_sanisidro1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanjose2` */

DROP TABLE IF EXISTS `scm_phy_sanjose2`;

CREATE TABLE `scm_phy_sanjose2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanjose3` */

DROP TABLE IF EXISTS `scm_phy_sanjose3`;

CREATE TABLE `scm_phy_sanjose3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanjuan2` */

DROP TABLE IF EXISTS `scm_phy_sanjuan2`;

CREATE TABLE `scm_phy_sanjuan2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanjuan3` */

DROP TABLE IF EXISTS `scm_phy_sanjuan3`;

CREATE TABLE `scm_phy_sanjuan3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_sanjuan4` */

DROP TABLE IF EXISTS `scm_phy_sanjuan4`;

CREATE TABLE `scm_phy_sanjuan4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
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

/*Table structure for table `scm_phy_trujillo2` */

DROP TABLE IF EXISTS `scm_phy_trujillo2`;

CREATE TABLE `scm_phy_trujillo2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_vitarte1` */

DROP TABLE IF EXISTS `scm_phy_vitarte1`;

CREATE TABLE `scm_phy_vitarte1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_vitarte2` */

DROP TABLE IF EXISTS `scm_phy_vitarte2`;

CREATE TABLE `scm_phy_vitarte2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_washington2` */

DROP TABLE IF EXISTS `scm_phy_washington2`;

CREATE TABLE `scm_phy_washington2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_zarate1` */

DROP TABLE IF EXISTS `scm_phy_zarate1`;

CREATE TABLE `scm_phy_zarate1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_zarate2` */

DROP TABLE IF EXISTS `scm_phy_zarate2`;

CREATE TABLE `scm_phy_zarate2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_arequipa4` */

DROP TABLE IF EXISTS `scm_scm_arequipa4`;

CREATE TABLE `scm_scm_arequipa4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_cayma1` */

DROP TABLE IF EXISTS `scm_scm_cayma1`;

CREATE TABLE `scm_scm_cayma1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chiclayo2` */

DROP TABLE IF EXISTS `scm_scm_chiclayo2`;

CREATE TABLE `scm_scm_chiclayo2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chorrillos1` */

DROP TABLE IF EXISTS `scm_scm_chorrillos1`;

CREATE TABLE `scm_scm_chorrillos1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_chorrillos3` */

DROP TABLE IF EXISTS `scm_scm_chorrillos3`;

CREATE TABLE `scm_scm_chorrillos3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_condevilla1` */

DROP TABLE IF EXISTS `scm_scm_condevilla1`;

CREATE TABLE `scm_scm_condevilla1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_cusco1` */

DROP TABLE IF EXISTS `scm_scm_cusco1`;

CREATE TABLE `scm_scm_cusco1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_cusco2` */

DROP TABLE IF EXISTS `scm_scm_cusco2`;

CREATE TABLE `scm_scm_cusco2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_higuereta4` */

DROP TABLE IF EXISTS `scm_scm_higuereta4`;

CREATE TABLE `scm_scm_higuereta4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_higuereta5` */

DROP TABLE IF EXISTS `scm_scm_higuereta5`;

CREATE TABLE `scm_scm_higuereta5` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_lamolina3` */

DROP TABLE IF EXISTS `scm_scm_lamolina3`;

CREATE TABLE `scm_scm_lamolina3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_lince1` */

DROP TABLE IF EXISTS `scm_scm_lince1`;

CREATE TABLE `scm_scm_lince1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_losolivos2` */

DROP TABLE IF EXISTS `scm_scm_losolivos2`;

CREATE TABLE `scm_scm_losolivos2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_losolivos3` */

DROP TABLE IF EXISTS `scm_scm_losolivos3`;

CREATE TABLE `scm_scm_losolivos3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_magdalena1` */

DROP TABLE IF EXISTS `scm_scm_magdalena1`;

CREATE TABLE `scm_scm_magdalena1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_magdalena2` */

DROP TABLE IF EXISTS `scm_scm_magdalena2`;

CREATE TABLE `scm_scm_magdalena2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_mala1` */

DROP TABLE IF EXISTS `scm_scm_mala1`;

CREATE TABLE `scm_scm_mala1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_miraflores3` */

DROP TABLE IF EXISTS `scm_scm_miraflores3`;

CREATE TABLE `scm_scm_miraflores3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_miraflores4` */

DROP TABLE IF EXISTS `scm_scm_miraflores4`;

CREATE TABLE `scm_scm_miraflores4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_monterrico3` */

DROP TABLE IF EXISTS `scm_scm_monterrico3`;

CREATE TABLE `scm_scm_monterrico3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_retablo1` */

DROP TABLE IF EXISTS `scm_scm_retablo1`;

CREATE TABLE `scm_scm_retablo1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_retablo2` */

DROP TABLE IF EXISTS `scm_scm_retablo2`;

CREATE TABLE `scm_scm_retablo2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_retablo3` */

DROP TABLE IF EXISTS `scm_scm_retablo3`;

CREATE TABLE `scm_scm_retablo3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_rimac1` */

DROP TABLE IF EXISTS `scm_scm_rimac1`;

CREATE TABLE `scm_scm_rimac1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanborja2` */

DROP TABLE IF EXISTS `scm_scm_sanborja2`;

CREATE TABLE `scm_scm_sanborja2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanisidro1` */

DROP TABLE IF EXISTS `scm_scm_sanisidro1`;

CREATE TABLE `scm_scm_sanisidro1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanjose2` */

DROP TABLE IF EXISTS `scm_scm_sanjose2`;

CREATE TABLE `scm_scm_sanjose2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanjose3` */

DROP TABLE IF EXISTS `scm_scm_sanjose3`;

CREATE TABLE `scm_scm_sanjose3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanjuan2` */

DROP TABLE IF EXISTS `scm_scm_sanjuan2`;

CREATE TABLE `scm_scm_sanjuan2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanjuan3` */

DROP TABLE IF EXISTS `scm_scm_sanjuan3`;

CREATE TABLE `scm_scm_sanjuan3` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_sanjuan4` */

DROP TABLE IF EXISTS `scm_scm_sanjuan4`;

CREATE TABLE `scm_scm_sanjuan4` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_trujillo2` */

DROP TABLE IF EXISTS `scm_scm_trujillo2`;

CREATE TABLE `scm_scm_trujillo2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_vitarte1` */

DROP TABLE IF EXISTS `scm_scm_vitarte1`;

CREATE TABLE `scm_scm_vitarte1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_vitarte2` */

DROP TABLE IF EXISTS `scm_scm_vitarte2`;

CREATE TABLE `scm_scm_vitarte2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_washington2` */

DROP TABLE IF EXISTS `scm_scm_washington2`;

CREATE TABLE `scm_scm_washington2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_zarate1` */

DROP TABLE IF EXISTS `scm_scm_zarate1`;

CREATE TABLE `scm_scm_zarate1` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_zarate2` */

DROP TABLE IF EXISTS `scm_scm_zarate2`;

CREATE TABLE `scm_scm_zarate2` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(20) DEFAULT NULL,
  `DSIF` varchar(20) DEFAULT NULL,
  `MACStatus` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `cmts` (`cmts`),
  KEY `USIF` (`USIF`),
  KEY `MACStatus` (`MACStatus`)
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

/*Table structure for table `scm_z_sw` */

DROP TABLE IF EXISTS `scm_z_sw`;

CREATE TABLE `scm_z_sw` (
  `sw` char(1) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `fecha_inicio` varchar(100) DEFAULT NULL,
  `fecha_fin` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Trigger structure for table `carga_cmts_casa_sw` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `out_file` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'%' */ /*!50003 TRIGGER `out_file` BEFORE UPDATE ON `carga_cmts_casa_sw` FOR EACH ROW BEGIN
    
    /*
    call tmpwork_casa.`unecasa`;
    */
    
    
    END */$$


DELIMITER ;

/* Procedure structure for procedure `unecasa` */

/*!50003 DROP PROCEDURE IF EXISTS  `unecasa` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `unecasa`()
BEGIN
REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_arequipa4 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_cayma1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_chiclayo2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_chorrillos1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_condevilla1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_cusco1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_cusco2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_higuereta4 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_higuereta5 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_lamolina3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_lince1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_losolivos2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_losolivos3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_magdalena1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_magdalena2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_mala1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_miraflores3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_miraflores4 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_monterrico3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_retablo1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_retablo2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_retablo3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_rimac1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanborja2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanisidro1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanjose2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanjose3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanjuan2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanjuan3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_trujillo2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_vitarte1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_vitarte2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_washington2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_zarate1 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_zarate2 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_sanjuan4 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    REPLACE tmpwork_casa.scm_phy_t (SELECT MACAddress AS MACAddress,USIF AS Interface,Sid AS Sid,PwrUP AS USPwr,USSNR AS USMER_SNR,
    TXTime_Offset AS Timing_Offset,DSPwr AS DSPwr,DSSNR AS DSMER_SNR,Modex AS Mode_,'' AS DOCSIS_Prov,cmts,fecha_hora,'U' AS ultimo
    FROM tmpwork_casa.scm_phy_chorrillos3 WHERE usif NOT IN('-') AND sid<>'' AND dsif<>'');
    
    
    
    DELETE FROM tmpwork_casa.scm_phy_t WHERE TIMEDIFF(NOW(),fecha_hora)>'01:00:00.000000';
    
    
    SELECT * FROM tmpwork_casa.scm_phy_t INTO OUTFILE '/temp/scm_phy_t_casa.csv' FIELDS TERMINATED BY ';' LINES TERMINATED BY '';
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
