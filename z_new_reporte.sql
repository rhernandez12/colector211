/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_reporte
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_reporte` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_reporte`;

/*Table structure for table `clientes_en_puerto_saturado` */

DROP TABLE IF EXISTS `clientes_en_puerto_saturado`;

CREATE TABLE `clientes_en_puerto_saturado` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(78) DEFAULT NULL,
  `INTERFACE` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `tipopuerto` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `criticos` */

DROP TABLE IF EXISTS `criticos`;

CREATE TABLE `criticos` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` varchar(11) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `entidad` varchar(100) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadorasxpuerto_tr` */

DROP TABLE IF EXISTS `portadorasxpuerto_tr`;

CREATE TABLE `portadorasxpuerto_tr` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  `clientes` decimal(42,0) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `uso` varchar(10) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `uso_portadoras` */

DROP TABLE IF EXISTS `uso_portadoras`;

CREATE TABLE `uso_portadoras` (
  `cmts` varchar(20) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `uso` double(18,1) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecha_hora`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `uso` (`uso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
