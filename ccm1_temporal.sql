/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - ccm1_temporal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `ccm1_temporal`;

/*Table structure for table `access_temp` */

DROP TABLE IF EXISTS `access_temp`;

CREATE TABLE `access_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `access_tempx` */

DROP TABLE IF EXISTS `access_tempx`;

CREATE TABLE `access_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `casa_down_util_c` */

DROP TABLE IF EXISTS `casa_down_util_c`;

CREATE TABLE `casa_down_util_c` (
  `downstream` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(20) DEFAULT NULL,
  `hz` varchar(4) DEFAULT NULL,
  `totalwb` int(11) DEFAULT NULL,
  `utilization` int(11) DEFAULT NULL,
  `modemsonline` int(11) DEFAULT NULL,
  `secondarymodems` int(11) DEFAULT NULL,
  `channeldesc` varchar(50) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `downstream` (`downstream`,`cmts`),
  KEY `downstream_2` (`downstream`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `casa_upstream_util_c` */

DROP TABLE IF EXISTS `casa_upstream_util_c`;

CREATE TABLE `casa_upstream_util_c` (
  `downstream` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(20) DEFAULT NULL,
  `hz` varchar(4) DEFAULT NULL,
  `totalwb` int(11) DEFAULT NULL,
  `utilization` int(11) DEFAULT NULL,
  `modemsonline` int(11) DEFAULT NULL,
  `secondarymodems` int(11) DEFAULT NULL,
  `channeldesc` varchar(50) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `downstream` (`downstream`,`cmts`),
  KEY `downstream_2` (`downstream`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_access` */

DROP TABLE IF EXISTS `cmts_casa_access`;

CREATE TABLE `cmts_casa_access` (
  `CPEIPAddress` varchar(20) DEFAULT NULL,
  `Method` varchar(5) DEFAULT NULL,
  `CPEMACAddress` varchar(20) DEFAULT NULL,
  `CMIPAddress` varchar(20) DEFAULT NULL,
  `CMMACAddress` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_down_util_sw` */

DROP TABLE IF EXISTS `cmts_casa_down_util_sw`;

CREATE TABLE `cmts_casa_down_util_sw` (
  `sw` int(1) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_sum` */

DROP TABLE IF EXISTS `cmts_casa_sum`;

CREATE TABLE `cmts_casa_sum` (
  `UpstreamInterfaceUSIF` varchar(10) DEFAULT NULL,
  `TotalModems` int(11) DEFAULT NULL,
  `ActiveModems` int(11) DEFAULT NULL,
  `RegisteredModems` int(11) DEFAULT NULL,
  `SecondaryModems` int(11) DEFAULT NULL,
  `OfflineModems` int(11) DEFAULT NULL,
  `ChannelDescripcion` varchar(80) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `phy_temp` */

DROP TABLE IF EXISTS `phy_temp`;

CREATE TABLE `phy_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `phy_tempx_1` */

DROP TABLE IF EXISTS `phy_tempx_1`;

CREATE TABLE `phy_tempx_1` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum` */

DROP TABLE IF EXISTS `scm_sum`;

CREATE TABLE `scm_sum` (
  `interface` varchar(12) DEFAULT NULL,
  `cm_tot` int(11) DEFAULT NULL,
  `cm_reg` int(11) DEFAULT NULL,
  `cm_oper` int(11) DEFAULT NULL,
  `cm_unreg` int(11) DEFAULT NULL,
  `cm_offline` int(11) DEFAULT NULL,
  `widband` int(11) DEFAULT NULL,
  `inicrc` int(11) DEFAULT NULL,
  `initd` int(11) DEFAULT NULL,
  `initio` int(11) DEFAULT NULL,
  `init0` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(10) DEFAULT NULL,
  `interface6` varchar(9) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`interface`,`cmts`),
  KEY `NewIndex2` (`cmts`),
  KEY `NewIndex3` (`description`),
  KEY `NewIndex4` (`interface6`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_temp` */

DROP TABLE IF EXISTS `scm_temp`;

CREATE TABLE `scm_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_tempx` */

DROP TABLE IF EXISTS `scm_tempx`;

CREATE TABLE `scm_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `sum_temp` */

DROP TABLE IF EXISTS `sum_temp`;

CREATE TABLE `sum_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `sum_tempx` */

DROP TABLE IF EXISTS `sum_tempx`;

CREATE TABLE `sum_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
