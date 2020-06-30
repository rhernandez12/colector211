/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_catalogos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_catalogos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_catalogos`;

/*Table structure for table `cablemodem_glciexp054_decos` */

DROP TABLE IF EXISTS `cablemodem_glciexp054_decos`;

CREATE TABLE `cablemodem_glciexp054_decos` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` varchar(20) DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `casid` (`casid`),
  KEY `serietarj` (`serietarj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `contrata` */

DROP TABLE IF EXISTS `contrata`;

CREATE TABLE `contrata` (
  `contrata` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `convergente` */

DROP TABLE IF EXISTS `convergente`;

CREATE TABLE `convergente` (
  `TELEFONO` int(11) DEFAULT NULL,
  `DOCUMENTO` int(11) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `COD_CUENTA` int(11) DEFAULT NULL,
  `INSCRIPCION` int(11) DEFAULT NULL,
  `SEGMENTACION_FIJA` varchar(100) DEFAULT NULL,
  `TENENCIA` varchar(100) DEFAULT NULL,
  `CELULAR` int(11) DEFAULT NULL,
  `MOVIL_SEGMENTACION` varchar(10) DEFAULT NULL,
  `MOVIL_COD_CLIENTE` int(11) DEFAULT NULL,
  `MOVIL_ANEXO` int(11) DEFAULT NULL,
  `MOVIL_DOCUMENTO` int(11) DEFAULT NULL,
  `FuenteCD` varchar(100) DEFAULT NULL,
  `DISTRITO` varchar(100) DEFAULT NULL,
  `FILTRO_TMP` varchar(100) DEFAULT NULL,
  `FLAG_CONTEO` int(11) DEFAULT NULL,
  `ENVIADO_KAREN` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `enlacexmarca` */

DROP TABLE IF EXISTS `enlacexmarca`;

CREATE TABLE `enlacexmarca` (
  `fabricante` varchar(20) DEFAULT NULL,
  `link` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `etiqueta_puertos` */

DROP TABLE IF EXISTS `etiqueta_puertos`;

CREATE TABLE `etiqueta_puertos` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `excepciones` */

DROP TABLE IF EXISTS `excepciones`;

CREATE TABLE `excepciones` (
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
  `naked` varchar(2) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  `fecha_inic` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `devuelto` varchar(1) DEFAULT NULL,
  `nvel` varchar(20) DEFAULT NULL,
  `subido` varchar(1) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `microzonas` */

DROP TABLE IF EXISTS `microzonas`;

CREATE TABLE `microzonas` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `microzona` varchar(20) DEFAULT NULL,
  `eecc` char(20) DEFAULT NULL,
  `nodotroba` varchar(50) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `microzona` (`microzona`),
  KEY `eecc` (`eecc`),
  KEY `nodotroba` (`nodotroba`)
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=latin1;

/*Table structure for table `operador` */

DROP TABLE IF EXISTS `operador`;

CREATE TABLE `operador` (
  `OPERADOR` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `piloto_edificios` */

DROP TABLE IF EXISTS `piloto_edificios`;

CREATE TABLE `piloto_edificios` (
  `telefono` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `departamen` varchar(100) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `desurb` varchar(100) DEFAULT NULL,
  `desref` varchar(100) DEFAULT NULL,
  `codofeprod` varchar(100) DEFAULT NULL,
  `tipdoc` varchar(100) DEFAULT NULL,
  `numdocidt` int(11) DEFAULT NULL,
  UNIQUE KEY `cliente` (`cliente`),
  KEY `telefono` (`telefono`),
  KEY `servicio` (`servicio`),
  KEY `numdocidt` (`numdocidt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `premium_fases` */

DROP TABLE IF EXISTS `premium_fases`;

CREATE TABLE `premium_fases` (
  `troba` varchar(6) DEFAULT NULL,
  `cms` varchar(2) DEFAULT NULL,
  `tecnologia` varchar(20) DEFAULT NULL,
  `fecactplus` varchar(20) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `jefComercial` varchar(20) DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `microzona` varchar(20) DEFAULT NULL,
  `grupo_microzona` varchar(20) DEFAULT NULL,
  `sw` int(1) DEFAULT NULL,
  UNIQUE KEY `troba` (`troba`),
  KEY `grupo_microzona` (`grupo_microzona`),
  KEY `jefComercial` (`jefComercial`),
  KEY `region` (`region`),
  KEY `grupo` (`grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reiteradas7dias` */

DROP TABLE IF EXISTS `reiteradas7dias`;

CREATE TABLE `reiteradas7dias` (
  `codcli` int(11) DEFAULT NULL,
  `codaveria` int(11) DEFAULT NULL,
  `nodotroba` varchar(6) DEFAULT NULL,
  `fe_liqu` varchar(20) DEFAULT NULL,
  `s1` int(11) DEFAULT NULL,
  `s2` int(11) DEFAULT NULL,
  `s3` int(11) DEFAULT NULL,
  `s4` int(11) DEFAULT NULL,
  `s5` int(11) DEFAULT NULL,
  `s6` int(11) DEFAULT NULL,
  `s7` int(11) DEFAULT NULL,
  `dmogen` varchar(60) DEFAULT NULL,
  `ti_cdliq` varchar(100) DEFAULT NULL,
  `ti_cdes` varchar(100) DEFAULT NULL,
  `rubro_maq` varchar(50) DEFAULT NULL,
  `re_ddetliq` varchar(100) DEFAULT NULL,
  `re_descliq` varchar(100) DEFAULT NULL,
  `mensaje` varchar(50) DEFAULT NULL,
  UNIQUE KEY `codclicms` (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tecnico` */

DROP TABLE IF EXISTS `tecnico`;

CREATE TABLE `tecnico` (
  `TECNICO` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `telefonoshfc` */

DROP TABLE IF EXISTS `telefonoshfc`;

CREATE TABLE `telefonoshfc` (
  `empresa` varchar(3) DEFAULT NULL,
  `idcliente` double DEFAULT NULL,
  `idcablemodem` int(11) DEFAULT NULL,
  `idseserv` varchar(30) DEFAULT NULL,
  `idprov` varchar(30) DEFAULT NULL,
  `idvent` varchar(30) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `ddn` varchar(14) DEFAULT NULL,
  `telefono` int(14) DEFAULT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `cantidadpcs` varchar(10) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  `activacion` varchar(20) DEFAULT NULL,
  `hub` varchar(10) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `servicepack` varchar(50) DEFAULT NULL,
  `gropoderedescm` varchar(10) DEFAULT NULL,
  `gropoderedescpe` varchar(10) DEFAULT NULL,
  `gropoderedesmta` varchar(10) DEFAULT NULL,
  `telefonohfc` int(14) DEFAULT NULL,
  KEY `NewIndex2` (`idcliente`),
  KEY `NewIndex3` (`macaddress`),
  KEY `NewIndex1` (`telefonohfc`),
  KEY `NewIndex4` (`ddn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_cambios` */

DROP TABLE IF EXISTS `velocidades_cambios`;

CREATE TABLE `velocidades_cambios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(10) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `flag_cambio_masivo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`SERVICEPACKAGE`),
  KEY `NewIndex1` (`veloc_comercial`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_concilia` */

DROP TABLE IF EXISTS `velocidades_concilia`;

CREATE TABLE `velocidades_concilia` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(10) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`),
  KEY `NewIndex1` (`veloc_comercial`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_m` */

DROP TABLE IF EXISTS `velocidades_m`;

CREATE TABLE `velocidades_m` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(10) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`),
  KEY `NewIndex1` (`veloc_comercial`),
  KEY `velocidad_final` (`velocidad_final`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
