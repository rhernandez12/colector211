/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_ccm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_ccm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_ccm`;

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
) ENGINE=MyISAM AUTO_INCREMENT=474 DEFAULT CHARSET=latin1;

/*Table structure for table `historico_ccm1` */

DROP TABLE IF EXISTS `historico_ccm1`;

CREATE TABLE `historico_ccm1` (
  `macaddress` varchar(20) DEFAULT NULL,
  `servicepackagecrmid` varchar(100) DEFAULT NULL,
  `servicepackage` varchar(100) DEFAULT NULL,
  `idusuario` varchar(10) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `historico_refresh` */

DROP TABLE IF EXISTS `historico_refresh`;

CREATE TABLE `historico_refresh` (
  `codcli` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `numser` varchar(50) DEFAULT NULL,
  `codmat` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `codcli` (`codcli`),
  KEY `codsrv` (`codsrv`),
  KEY `numser` (`numser`),
  KEY `codmat` (`codmat`),
  KEY `usuario` (`usuario`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_hist` */

DROP TABLE IF EXISTS `scm_phy_hist`;

CREATE TABLE `scm_phy_hist` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex7` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total` */

DROP TABLE IF EXISTS `scm_total`;

CREATE TABLE `scm_total` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

/*Table structure for table `zonales_nodos_eecc` */

DROP TABLE IF EXISTS `zonales_nodos_eecc`;

CREATE TABLE `zonales_nodos_eecc` (
  `nodo` varchar(2) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `jefatura` varchar(3) DEFAULT NULL,
  `eecc` varchar(30) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `serviciosbasico` varchar(50) DEFAULT NULL,
  `servicioseconomico` varchar(50) DEFAULT NULL,
  `nodotroba` varchar(20) DEFAULT NULL,
  `totaldeservicios` int(11) DEFAULT NULL,
  `amplificadores` int(11) DEFAULT NULL,
  `taps` int(11) DEFAULT NULL,
  `sede` varchar(10) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `jefatura` (`jefatura`),
  KEY `sede` (`sede`),
  KEY `zonal` (`zonal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
