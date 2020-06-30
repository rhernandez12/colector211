/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_alertas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_alertas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_alertas`;

/*Table structure for table `caidas_new` */

DROP TABLE IF EXISTS `caidas_new`;

CREATE TABLE `caidas_new` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_amplif` */

DROP TABLE IF EXISTS `caidas_new_amplif`;

CREATE TABLE `caidas_new_amplif` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados` */

DROP TABLE IF EXISTS `clientes_alertados`;

CREATE TABLE `clientes_alertados` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
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
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
