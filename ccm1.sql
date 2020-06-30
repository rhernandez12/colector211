/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - ccm1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `ccm1`;

/*Table structure for table `accessgroup_casa` */

DROP TABLE IF EXISTS `accessgroup_casa`;

CREATE TABLE `accessgroup_casa` (
  `ipcpe` varchar(20) DEFAULT NULL,
  `dhcp` varchar(4) DEFAULT NULL,
  `maccpe` varchar(20) DEFAULT NULL,
  `ipmodem` varchar(20) DEFAULT NULL,
  `macmodem` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`maccpe`),
  KEY `NewIndex2` (`macmodem`),
  KEY `NewIndex3` (`cmts`),
  KEY `NewIndex4` (`ipcpe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip` */

DROP TABLE IF EXISTS `cmts_ip`;

CREATE TABLE `cmts_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `comunidad` varchar(30) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL,
  `tacacs` varchar(1) DEFAULT NULL,
  `grupo` varchar(1) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `realname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `flag` (`flag`),
  KEY `grupo` (`grupo`),
  KEY `id` (`id`),
  KEY `realname` (`realname`),
  KEY `marca` (`marca`)
) ENGINE=MyISAM AUTO_INCREMENT=481 DEFAULT CHARSET=latin1;

/*Table structure for table `mac_cpe_modem` */

DROP TABLE IF EXISTS `mac_cpe_modem`;

CREATE TABLE `mac_cpe_modem` (
  `macmodem` varchar(20) DEFAULT NULL,
  `maccpe` varchar(20) NOT NULL,
  `ippublica` varchar(20) DEFAULT NULL,
  `ipprivada` varchar(20) DEFAULT NULL,
  `cmts` varchar(30) DEFAULT NULL,
  UNIQUE KEY `maccpe` (`maccpe`),
  UNIQUE KEY `ipprivada` (`ipprivada`),
  KEY `idxmacmodem` (`macmodem`),
  KEY `idxcmts` (`cmts`),
  KEY `ippublica` (`ippublica`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `partial_service` */

DROP TABLE IF EXISTS `partial_service`;

CREATE TABLE `partial_service` (
  `macaddress` varchar(20) NOT NULL DEFAULT '',
  `interface` varchar(20) DEFAULT NULL,
  `bonding` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `sw` varchar(1) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `cmts` (`cmts`),
  KEY `bonding` (`bonding`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_partial_service_casa` */

DROP TABLE IF EXISTS `scm_partial_service_casa`;

CREATE TABLE `scm_partial_service_casa` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `macid` varchar(10) DEFAULT NULL,
  `usintf` varchar(20) DEFAULT NULL,
  `dsintf` varchar(20) DEFAULT NULL,
  `usset` varchar(20) DEFAULT NULL,
  `dsset` varchar(20) DEFAULT NULL,
  `bonding` varchar(20) DEFAULT NULL,
  `us_ds_ch_excl` varchar(500) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `usintf` (`usintf`),
  KEY `dsintf` (`dsintf`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_partial_service_cisco` */

DROP TABLE IF EXISTS `scm_partial_service_cisco`;

CREATE TABLE `scm_partial_service_cisco` (
  `macaddress` varchar(20) NOT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `dsxusstate` varchar(20) DEFAULT NULL,
  `impairedds` varchar(20) DEFAULT NULL,
  `impairedus` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`macaddress`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_f` */

DROP TABLE IF EXISTS `scm_phy_f`;

CREATE TABLE `scm_phy_f` (
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

/*Table structure for table `scm_total_f` */

DROP TABLE IF EXISTS `scm_total_f`;

CREATE TABLE `scm_total_f` (
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

/*Table structure for table `Conectar_cmts` */

DROP TABLE IF EXISTS `Conectar_cmts`;

/*!50001 DROP VIEW IF EXISTS `Conectar_cmts` */;
/*!50001 DROP TABLE IF EXISTS `Conectar_cmts` */;

/*!50001 CREATE TABLE  `Conectar_cmts`(
 `tipo` varchar(10) ,
 `id` int(11) ,
 `cmts` varchar(50) ,
 `realname` varchar(30) ,
 `comando` varchar(70) ,
 `connect` varchar(20) 
)*/;

/*Table structure for table `listafuentes_view` */

DROP TABLE IF EXISTS `listafuentes_view`;

/*!50001 DROP VIEW IF EXISTS `listafuentes_view` */;
/*!50001 DROP TABLE IF EXISTS `listafuentes_view` */;

/*!50001 CREATE TABLE  `listafuentes_view`(
 `macaddress` varchar(20) ,
 `InputVoltage` varchar(86) ,
 `OutputVoltage` varchar(86) ,
 `OutputCurrent` varchar(87) ,
 `TotalStringVoltage` varchar(86) 
)*/;

/*View structure for view Conectar_cmts */

/*!50001 DROP TABLE IF EXISTS `Conectar_cmts` */;
/*!50001 DROP VIEW IF EXISTS `Conectar_cmts` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `Conectar_cmts` AS (select `cmts_ip`.`tipo` AS `tipo`,`cmts_ip`.`id` AS `id`,`cmts_ip`.`cmts` AS `cmts`,`cmts_ip`.`realname` AS `realname`,concat('ssh ',`cmts_ip`.`user`,'@',`cmts_ip`.`ip`) AS `comando`,`cmts_ip`.`pass` AS `connect` from `cmts_ip` where (`cmts_ip`.`pass` is not null) order by `cmts_ip`.`tipo` desc,`cmts_ip`.`id`) */;

/*View structure for view listafuentes_view */

/*!50001 DROP TABLE IF EXISTS `listafuentes_view` */;
/*!50001 DROP VIEW IF EXISTS `listafuentes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `listafuentes_view` AS (select `alertasx`.`fuentes_snmp`.`macaddress` AS `macaddress`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.2.1.23.1 -r 1') AS `InputVoltage`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.2.1.22.1 -r 1') AS `OutputVoltage`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.5.1.3.1.1 -r 1') AS `OutputCurrent`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.2.1.28.1 -r 1') AS `TotalStringVoltage` from `alertasx`.`fuentes_snmp`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
