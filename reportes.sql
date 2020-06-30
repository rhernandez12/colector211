/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - reportes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`reportes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `reportes`;

/*Table structure for table `alertas_today` */

DROP TABLE IF EXISTS `alertas_today`;

CREATE TABLE `alertas_today` (
  `item` int(11) NOT NULL DEFAULT '0',
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `desnodo` varchar(150) DEFAULT NULL,
  `dpto` varchar(150) DEFAULT NULL,
  `amp` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `tipodetrabajo` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `afectacion` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fecharegistro` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fechaapertura` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `horaapertura` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cortesn` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `finicio` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hinicio` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `htermino` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fechacancela` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fechacierre` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `estado_gestion` varchar(500) CHARACTER SET utf8 NOT NULL,
  `fecha_gestion` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TTPP` varchar(10) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_today_detalle` */

DROP TABLE IF EXISTS `alertas_today_detalle`;

CREATE TABLE `alertas_today_detalle` (
  `idclientecrm` double DEFAULT NULL,
  `nameclient` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `telf1` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `telf2` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `telf3` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `estado_servicio` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `estado_comercial` varchar(100) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  UNIQUE KEY `idclientecrm_2` (`idclientecrm`,`codserv`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `codserv` (`codserv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cliente_lista` */

DROP TABLE IF EXISTS `cliente_lista`;

CREATE TABLE `cliente_lista` (
  `codcli` int(11) NOT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `clientes_dhcp` */

DROP TABLE IF EXISTS `clientes_dhcp`;

CREATE TABLE `clientes_dhcp` (
  `codcliente` varchar(15) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `fabricante` varchar(20) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `macstate` varchar(15) DEFAULT NULL,
  `tipo_dhcp` varchar(20) DEFAULT NULL,
  `host_dhcp` varchar(50) DEFAULT NULL,
  `macaddress_dhcp` varchar(20) DEFAULT NULL,
  `ipaddress_dhcp` varchar(20) DEFAULT NULL,
  `nivel_dhcp` varchar(10) DEFAULT NULL,
  `fechaproceso` varchar(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `macaddress` (`macaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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

/*Table structure for table `concilia` */

DROP TABLE IF EXISTS `concilia`;

CREATE TABLE `concilia` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `ESTADO` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `MACADDRESS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `NODO` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `idproducto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `veloc_cms` int(10) DEFAULT NULL,
  `VelocidadIW` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `fftt_error` */

DROP TABLE IF EXISTS `fftt_error`;

CREATE TABLE `fftt_error` (
  `cliente` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `nodo_hfc` varchar(2) DEFAULT NULL,
  `troba_hfc` varchar(4) DEFAULT NULL,
  `nodo_cms` varchar(2) DEFAULT NULL,
  `troba_cms` varchar(4) DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tap` varchar(2) DEFAULT NULL,
  `borne` varchar(2) DEFAULT NULL,
  `dpto` varchar(3) DEFAULT NULL,
  `prov` varchar(3) DEFAULT NULL,
  `sector` varchar(5) DEFAULT NULL,
  UNIQUE KEY `cliente` (`cliente`,`servicio`),
  KEY `cliente_2` (`cliente`),
  KEY `servicio` (`servicio`),
  KEY `nodo_hfc` (`nodo_hfc`),
  KEY `troba_hfc` (`troba_hfc`),
  KEY `nodo_cms` (`nodo_cms`),
  KEY `troba_cms` (`troba_cms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_arbol_hoy` */

DROP TABLE IF EXISTS `graf_arbol_hoy`;

CREATE TABLE `graf_arbol_hoy` (
  `hora` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `arbol` decimal(24,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_arbol_tot` */

DROP TABLE IF EXISTS `graf_arbol_tot`;

CREATE TABLE `graf_arbol_tot` (
  `hora` varchar(2) DEFAULT NULL,
  `arboltot` bigint(21) NOT NULL,
  KEY `hora` (`hora`),
  KEY `arboltot` (`arboltot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_ayer` */

DROP TABLE IF EXISTS `graf_ayer`;

CREATE TABLE `graf_ayer` (
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hora` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `desdia` (`desdia`),
  KEY `hora` (`hora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_hoy` */

DROP TABLE IF EXISTS `graf_hoy`;

CREATE TABLE `graf_hoy` (
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hora` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `desdia` (`desdia`),
  KEY `hora` (`hora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_liquidaciones` */

DROP TABLE IF EXISTS `graf_liquidaciones`;

CREATE TABLE `graf_liquidaciones` (
  `Hora` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `liq` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_llamadas` */

DROP TABLE IF EXISTS `graf_llamadas`;

CREATE TABLE `graf_llamadas` (
  `horallam` varchar(2) DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_promedio` */

DROP TABLE IF EXISTS `graf_promedio`;

CREATE TABLE `graf_promedio` (
  `dia_mov` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hora` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `dia_mov` (`dia_mov`),
  KEY `desdia` (`desdia`),
  KEY `hora` (`hora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `historico_fuentes` */

DROP TABLE IF EXISTS `historico_fuentes`;

CREATE TABLE `historico_fuentes` (
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ipaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `macaddress` (`macaddress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `liqhoyxrubro` */

DROP TABLE IF EXISTS `liqhoyxrubro`;

CREATE TABLE `liqhoyxrubro` (
  `jefatura` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `ADMINISTRATIVA` decimal(23,0) DEFAULT NULL,
  `INEFECTIVA` decimal(23,0) DEFAULT NULL,
  `PLANTA_EXTERNA` decimal(23,0) DEFAULT NULL,
  `PLANTA_INTERNA` decimal(23,0) DEFAULT NULL,
  `RED_CLIENTE` decimal(23,0) DEFAULT NULL,
  `TRANSMISIONES` decimal(23,0) DEFAULT NULL,
  `FIBRA_OPTICA` decimal(23,0) DEFAULT NULL,
  `TOTAL` bigint(21) NOT NULL DEFAULT '0',
  KEY `jefatura` (`jefatura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `liqhoyxrubromas24horas` */

DROP TABLE IF EXISTS `liqhoyxrubromas24horas`;

CREATE TABLE `liqhoyxrubromas24horas` (
  `jefatura` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `ADMINISTRATIVA` decimal(23,0) DEFAULT NULL,
  `INEFECTIVA` decimal(23,0) DEFAULT NULL,
  `PLANTA_EXTERNA` decimal(23,0) DEFAULT NULL,
  `PLANTA_INTERNA` decimal(23,0) DEFAULT NULL,
  `RED_CLIENTE` decimal(23,0) DEFAULT NULL,
  `TRANSMISIONES` decimal(23,0) DEFAULT NULL,
  `FIBRA_OPTICA` decimal(23,0) DEFAULT NULL,
  `TOTAL` bigint(21) NOT NULL DEFAULT '0',
  KEY `jefatura` (`jefatura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `liqhoyxrubromenos24horas` */

DROP TABLE IF EXISTS `liqhoyxrubromenos24horas`;

CREATE TABLE `liqhoyxrubromenos24horas` (
  `jefatura` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `ADMINISTRATIVA` decimal(23,0) DEFAULT NULL,
  `INEFECTIVA` decimal(23,0) DEFAULT NULL,
  `PLANTA_EXTERNA` decimal(23,0) DEFAULT NULL,
  `PLANTA_INTERNA` decimal(23,0) DEFAULT NULL,
  `RED_CLIENTE` decimal(23,0) DEFAULT NULL,
  `TRANSMISIONES` decimal(23,0) DEFAULT NULL,
  `FIBRA_OPTICA` decimal(23,0) DEFAULT NULL,
  `TOTAL` bigint(21) NOT NULL DEFAULT '0',
  KEY `jefatura` (`jefatura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `liqxhoramas24horas` */

DROP TABLE IF EXISTS `liqxhoramas24horas`;

CREATE TABLE `liqxhoramas24horas` (
  `jefatura` varchar(14) DEFAULT NULL,
  `D00` decimal(23,0) DEFAULT NULL,
  `D01` decimal(23,0) DEFAULT NULL,
  `D02` decimal(23,0) DEFAULT NULL,
  `D03` decimal(23,0) DEFAULT NULL,
  `D04` decimal(23,0) DEFAULT NULL,
  `D05` decimal(23,0) DEFAULT NULL,
  `D06` decimal(23,0) DEFAULT NULL,
  `D07` decimal(23,0) DEFAULT NULL,
  `D08` decimal(23,0) DEFAULT NULL,
  `D09` decimal(23,0) DEFAULT NULL,
  `D10` decimal(23,0) DEFAULT NULL,
  `D11` decimal(23,0) DEFAULT NULL,
  `D12` decimal(23,0) DEFAULT NULL,
  `D13` decimal(23,0) DEFAULT NULL,
  `D14` decimal(23,0) DEFAULT NULL,
  `D15` decimal(23,0) DEFAULT NULL,
  `D16` decimal(23,0) DEFAULT NULL,
  `D17` decimal(23,0) DEFAULT NULL,
  `D18` decimal(23,0) DEFAULT NULL,
  `D19` decimal(23,0) DEFAULT NULL,
  `D20` decimal(23,0) DEFAULT NULL,
  `D21` decimal(23,0) DEFAULT NULL,
  `D22` decimal(23,0) DEFAULT NULL,
  `D23` decimal(23,0) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  KEY `jefatura` (`jefatura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `liqxhoramenos24horas` */

DROP TABLE IF EXISTS `liqxhoramenos24horas`;

CREATE TABLE `liqxhoramenos24horas` (
  `jefatura` varchar(14) DEFAULT NULL,
  `D00` decimal(23,0) DEFAULT NULL,
  `D01` decimal(23,0) DEFAULT NULL,
  `D02` decimal(23,0) DEFAULT NULL,
  `D03` decimal(23,0) DEFAULT NULL,
  `D04` decimal(23,0) DEFAULT NULL,
  `D05` decimal(23,0) DEFAULT NULL,
  `D06` decimal(23,0) DEFAULT NULL,
  `D07` decimal(23,0) DEFAULT NULL,
  `D08` decimal(23,0) DEFAULT NULL,
  `D09` decimal(23,0) DEFAULT NULL,
  `D10` decimal(23,0) DEFAULT NULL,
  `D11` decimal(23,0) DEFAULT NULL,
  `D12` decimal(23,0) DEFAULT NULL,
  `D13` decimal(23,0) DEFAULT NULL,
  `D14` decimal(23,0) DEFAULT NULL,
  `D15` decimal(23,0) DEFAULT NULL,
  `D16` decimal(23,0) DEFAULT NULL,
  `D17` decimal(23,0) DEFAULT NULL,
  `D18` decimal(23,0) DEFAULT NULL,
  `D19` decimal(23,0) DEFAULT NULL,
  `D20` decimal(23,0) DEFAULT NULL,
  `D21` decimal(23,0) DEFAULT NULL,
  `D22` decimal(23,0) DEFAULT NULL,
  `D23` decimal(23,0) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  KEY `jefatura` (`jefatura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_dat` */

DROP TABLE IF EXISTS `nclientes_dat`;

CREATE TABLE `nclientes_dat` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(10) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `clave` double NOT NULL,
  `naked` varchar(20) DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `nameclient` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `idxnodo` (`NODO`),
  KEY `idxtroba` (`TROBA`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `movil1` (`movil1`),
  KEY `idproducto` (`idproducto`),
  KEY `idventa` (`idventa`)
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

/*Table structure for table `procesos` */

DROP TABLE IF EXISTS `procesos`;

CREATE TABLE `procesos` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `HOST` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `DB` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `COMMAND` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `INFO` longtext CHARACTER SET utf8,
  `TIME_MS` decimal(22,3) NOT NULL DEFAULT '0.000',
  `STAGE` tinyint(2) NOT NULL DEFAULT '0',
  `MAX_STAGE` tinyint(2) NOT NULL DEFAULT '0',
  `PROGRESS` decimal(7,3) NOT NULL DEFAULT '0.000',
  `MEMORY_USED` bigint(7) NOT NULL DEFAULT '0',
  `EXAMINED_ROWS` int(7) NOT NULL DEFAULT '0',
  `QUERY_ID` bigint(4) NOT NULL DEFAULT '0',
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`,`FECHA_HORA`(10)),
  KEY `ID_2` (`ID`),
  KEY `FECHA_HORA` (`FECHA_HORA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `procesos_analitycs` */

DROP TABLE IF EXISTS `procesos_analitycs`;

CREATE TABLE `procesos_analitycs` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `HOST` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `DB` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `COMMAND` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `INFO` longtext CHARACTER SET utf8,
  `TIME_MS` decimal(22,3) NOT NULL DEFAULT '0.000',
  `STAGE` tinyint(2) NOT NULL DEFAULT '0',
  `MAX_STAGE` tinyint(2) NOT NULL DEFAULT '0',
  `PROGRESS` decimal(7,3) NOT NULL DEFAULT '0.000',
  `MEMORY_USED` bigint(7) NOT NULL DEFAULT '0',
  `EXAMINED_ROWS` int(7) NOT NULL DEFAULT '0',
  `QUERY_ID` bigint(4) NOT NULL DEFAULT '0',
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`,`FECHA_HORA`(10)),
  KEY `ID_2` (`ID`),
  KEY `FECHA_HORA` (`FECHA_HORA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `reporte_pendientes` */

DROP TABLE IF EXISTS `reporte_pendientes`;

CREATE TABLE `reporte_pendientes` (
  `HORA` varchar(5) NOT NULL,
  `PENDIENTES` int(11) DEFAULT NULL,
  `ROBOT_PEND` int(11) DEFAULT NULL,
  `ROBOT_LIQU` int(11) DEFAULT NULL,
  `OTROS_PEND` int(11) DEFAULT NULL,
  `OTROS_LIQU` int(11) DEFAULT NULL,
  `TOTAL_PEND` int(11) DEFAULT NULL,
  `FECHA` varchar(20) NOT NULL,
  PRIMARY KEY (`HORA`,`FECHA`),
  KEY `HORA` (`HORA`),
  KEY `FECHA` (`FECHA`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `resumen_tcfl` */

DROP TABLE IF EXISTS `resumen_tcfl`;

CREATE TABLE `resumen_tcfl` (
  `jefatura` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `D00` int(3) DEFAULT NULL,
  `D01` int(3) DEFAULT NULL,
  `D02` int(3) DEFAULT NULL,
  `D03` int(3) DEFAULT NULL,
  `D04` int(3) DEFAULT NULL,
  `D05` int(3) DEFAULT NULL,
  `D06` int(3) DEFAULT NULL,
  `D07` int(3) DEFAULT NULL,
  `D08` int(3) DEFAULT NULL,
  `D09` int(3) DEFAULT NULL,
  `D10` int(3) DEFAULT NULL,
  `D11` int(3) DEFAULT NULL,
  `D12` int(3) DEFAULT NULL,
  `D13` int(3) DEFAULT NULL,
  `D14` int(3) DEFAULT NULL,
  `D15` int(3) DEFAULT NULL,
  `D16` int(3) DEFAULT NULL,
  `D17` int(3) DEFAULT NULL,
  `D18` int(3) DEFAULT NULL,
  `D19` int(3) DEFAULT NULL,
  `D20` int(3) DEFAULT NULL,
  `D21` int(3) DEFAULT NULL,
  `D22` int(3) DEFAULT NULL,
  `D23` int(3) DEFAULT NULL,
  `ptot` int(3) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `sinnodo` */

DROP TABLE IF EXISTS `sinnodo`;

CREATE TABLE `sinnodo` (
  `codserv` int(11) NOT NULL,
  `idclientecrm` int(11) DEFAULT NULL,
  PRIMARY KEY (`codserv`),
  KEY `idclientecrm` (`idclientecrm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telefonos` */

DROP TABLE IF EXISTS `telefonos`;

CREATE TABLE `telefonos` (
  `telefono` int(11) NOT NULL,
  PRIMARY KEY (`telefono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telefonos_malos_parametros` */

DROP TABLE IF EXISTS `telefonos_malos_parametros`;

CREATE TABLE `telefonos_malos_parametros` (
  `telefonos` int(11) NOT NULL,
  PRIMARY KEY (`telefonos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ultimagestion_today` */

DROP TABLE IF EXISTS `ultimagestion_today`;

CREATE TABLE `ultimagestion_today` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ultimoestado` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`),
  KEY `ultimoestado` (`ultimoestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

/*Table structure for table `uso_portadoras_c` */

DROP TABLE IF EXISTS `uso_portadoras_c`;

CREATE TABLE `uso_portadoras_c` (
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

/* Procedure structure for procedure `historico_fuentes` */

/*!50003 DROP PROCEDURE IF EXISTS  `historico_fuentes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `historico_fuentes`()
BEGIN
DELETE FROM reportes.`historico_fuentes` WHERE TIMEDIFF(NOW(),fechahora)>='72:00:00.000000';
INSERT INTO reportes.`historico_fuentes`
SELECT macaddress,ipaddress,`InputVoltagefinal`,`OutputVoltagefinal`,`OutputCurrentfinal`,`TotalStringVoltagefinal`,`EstadoInversor`,NOW() FROM `alertasx`.`fuentes_view` WHERE resultadosnmp='SNMPOK';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_malos_parametros` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_malos_parametros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_malos_parametros`()
BEGIN
/*
SELECT 'movil'
UNION
SELECT CONCAT('51',telefono) AS TELEFONO from reportes.`telefonos`
INTO OUTFILE '/temp/MALOS_PARAMETROS.csv' 
FIELDS TERMINATED BY ','  LINES TERMINATED BY '\r\n';
*/
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_TCFLxHORA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_TCFLxHORA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `SP_TCFLxHORA`()
BEGIN
	TRUNCATE TABLE reportes.liqxhoramenos24horas;
	INSERT IGNORE reportes.liqxhoramenos24horas
	SELECT b.jefatura ,
	SUM(IF(HOUR(fecha_liquidacion)=0 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D00',
	SUM(IF(HOUR(fecha_liquidacion)=1 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0))  AS 'D01',
	SUM(IF(HOUR(fecha_liquidacion)=2 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D02',
	SUM(IF(HOUR(fecha_liquidacion)=3 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D03',
	SUM(IF(HOUR(fecha_liquidacion)=4 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D04',
	SUM(IF(HOUR(fecha_liquidacion)=5 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D05',
	SUM(IF(HOUR(fecha_liquidacion)=6 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D06',
	SUM(IF(HOUR(fecha_liquidacion)=7 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D07',
	SUM(IF(HOUR(fecha_liquidacion)=8 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D08',
	SUM(IF(HOUR(fecha_liquidacion)=9 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D09',
	SUM(IF(HOUR(fecha_liquidacion)=10 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D10',
	SUM(IF(HOUR(fecha_liquidacion)=11 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D11',
	SUM(IF(HOUR(fecha_liquidacion)=12 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D12',
	SUM(IF(HOUR(fecha_liquidacion)=13 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D13',
	SUM(IF(HOUR(fecha_liquidacion)=14 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D14',
	SUM(IF(HOUR(fecha_liquidacion)=15 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D15',
	SUM(IF(HOUR(fecha_liquidacion)=16 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D16',
	SUM(IF(HOUR(fecha_liquidacion)=17 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D17',
	SUM(IF(HOUR(fecha_liquidacion)=18 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D18',
	SUM(IF(HOUR(fecha_liquidacion)=19 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D19',
	SUM(IF(HOUR(fecha_liquidacion)=20 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D20',
	SUM(IF(HOUR(fecha_liquidacion)=21 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D21',
	SUM(IF(HOUR(fecha_liquidacion)=22 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D22',
	SUM(IF(HOUR(fecha_liquidacion)=23 AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS 'D23',
	SUM(IF(TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000',1,0)) AS cant
	FROM cms.aver_liq_catv_pais a INNER JOIN catalogos.`jefaturas` b
	ON a.codnod=b.nodo
	WHERE DATEDIFF(NOW(),fecha_liquidacion)=0 
	 AND contrata NOT IN (442,429,434,428)
	 AND codigomotivoreq IN (
	'R001',
	'R002',
	'R038',
	'R040',
	'R041',
	'R042',
	'R101',
	'R102',
	'R103',
	'R413',
	'R414',
	'R415',
	'R416',
	'R417',
	'R418',
	'R422',
	'R423',
	'R424',
	'R425',
	'R426',
	'R427')
	AND contrata NOT IN (333,442,429,430,434,353,436,428)
	GROUP BY 1;
	
	TRUNCATE TABLE reportes.liqxhoramas24horas;
	INSERT IGNORE reportes.liqxhoramas24horas
	SELECT b.jefatura,
	SUM(IF(HOUR(fecha_liquidacion)=0 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D00',
	SUM(IF(HOUR(fecha_liquidacion)=1 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0))  AS 'D01',
	SUM(IF(HOUR(fecha_liquidacion)=2 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D02',
	SUM(IF(HOUR(fecha_liquidacion)=3 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D03',
	SUM(IF(HOUR(fecha_liquidacion)=4 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D04',
	SUM(IF(HOUR(fecha_liquidacion)=5 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D05',
	SUM(IF(HOUR(fecha_liquidacion)=6 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D06',
	SUM(IF(HOUR(fecha_liquidacion)=7 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D07',
	SUM(IF(HOUR(fecha_liquidacion)=8 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D08',
	SUM(IF(HOUR(fecha_liquidacion)=9 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D09',
	SUM(IF(HOUR(fecha_liquidacion)=10 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D10',
	SUM(IF(HOUR(fecha_liquidacion)=11 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D11',
	SUM(IF(HOUR(fecha_liquidacion)=12 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D12',
	SUM(IF(HOUR(fecha_liquidacion)=13 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D13',
	SUM(IF(HOUR(fecha_liquidacion)=14 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D14',
	SUM(IF(HOUR(fecha_liquidacion)=15 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D15',
	SUM(IF(HOUR(fecha_liquidacion)=16 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D16',
	SUM(IF(HOUR(fecha_liquidacion)=17 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D17',
	SUM(IF(HOUR(fecha_liquidacion)=18 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D18',
	SUM(IF(HOUR(fecha_liquidacion)=19 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D19',
	SUM(IF(HOUR(fecha_liquidacion)=20 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D20',
	SUM(IF(HOUR(fecha_liquidacion)=21 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D21',
	SUM(IF(HOUR(fecha_liquidacion)=22 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D22',
	SUM(IF(HOUR(fecha_liquidacion)=23 AND TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS 'D23',
	SUM(IF(TIMEDIFF(fecha_liquidacion,fecharegistro)>'24:00:00.000000',1,0)) AS cant
	FROM cms.aver_liq_catv_pais a INNER JOIN catalogos.`jefaturas` b
	ON a.codnod=b.nodo
	WHERE DATEDIFF(NOW(),fecha_liquidacion)=0 AND contrata NOT IN (442,429,434,428)
	 AND codigomotivoreq IN (
	'R001',
	'R002',
	'R038',
	'R040',
	'R041',
	'R042',
	'R101',
	'R102',
	'R103',
	'R413',
	'R414',
	'R415',
	'R416',
	'R417',
	'R418',
	'R422',
	'R423',
	'R424',
	'R425',
	'R426',
	'R427')
	AND contrata NOT IN (333,442,429,430,434,353,436,428)
	GROUP BY 1;
	TRUNCATE TABLE reportes.resumen_tcfl;
	INSERT IGNORE reportes.resumen_tcfl
	SELECT a.jefatura, 
	ROUND((a.D00/(a.D00+b.D00))*100,0) AS 'D00',
	ROUND((a.D01/(a.D01+b.D01))*100,0) AS 'D01',
	ROUND((a.D02/(a.D02+b.D02))*100,0) AS 'D02',
	ROUND((a.D03/(a.D03+b.D03))*100,0) AS'D03',
	ROUND((a.D04/(a.D04+b.D04))*100,0) AS'D04',
	ROUND((a.D05/(a.D05+b.D05))*100,0) AS'D05',
	ROUND((a.D06/(a.D06+b.D06))*100,0) AS'D06',
	ROUND((a.D07/(a.D07+b.D07))*100,0) AS'D07',
	ROUND((a.D08/(a.D08+b.D08))*100,0) AS'D08',
	ROUND((a.D09/(a.D09+b.D09))*100,0) AS'D09',
	ROUND((a.D10/(a.D10+b.D10))*100,0) AS'D10',
	ROUND((a.D11/(a.D11+b.D11))*100,0) AS'D11',
	ROUND((a.D12/(a.D12+b.D12))*100,0) AS'D12',
	ROUND((a.D13/(a.D13+b.D13))*100,0) AS'D13',
	ROUND((a.D14/(a.D14+b.D14))*100,0) AS'D14',
	ROUND((a.D15/(a.D15+b.D15))*100,0) AS'D15',
	ROUND((a.D16/(a.D16+b.D16))*100,0) AS'D16',
	ROUND((a.D17/(a.D17+b.D17))*100,0) AS'D17',
	ROUND((a.D18/(a.D18+b.D18))*100,0) AS'D18',
	ROUND((a.D19/(a.D19+b.D19))*100,0) AS'D19',
	ROUND((a.D20/(a.D20+b.D20))*100,0) AS'D20',
	ROUND((a.D21/(a.D21+b.D21))*100,0) AS'D21',
	ROUND((a.D22/(a.D22+b.D22))*100,0) AS'D22',
	ROUND((a.D23/(a.D23+b.D23))*100,0) AS'D23',
	ROUND((a.cant/(a.cant+b.cant))*100,0) AS ptot,
	a.cant+b.cant AS total,NOW() AS fechahora
	FROM reportes.`liqxhoramenos24horas` a LEFT JOIN reportes.`liqxhoramas24horas` b
	ON a.`jefatura`=b.`jefatura`
	GROUP BY a.jefatura;
	
	TRUNCATE TABLE reportes.liqhoyxrubromenos24horas;
	INSERT INTO reportes.liqhoyxrubromenos24horas
	SELECT xx.jefatura,
	SUM(IF(xx.nrubro='ADMINISTRATIVA',1,0)) AS ADMINISTRATIVA,
	SUM(IF(xx.nrubro='INEFECTIVA',1,0)) AS  INEFECTIVA,
	SUM(IF(xx.nrubro='PLANTA EXTERNA',1,0)) AS  PLANTA_EXTERNA,
	SUM(IF(xx.nrubro='PLANTA INTERNA',1,0)) AS  PLANTA_INTERNA,
	SUM(IF(xx.nrubro='RED CLIENTE',1,0)) AS  RED_CLIENTE,
	SUM(IF(xx.nrubro='TRANSMISIONES',1,0)) AS  TRANSMISIONES,
	SUM(IF(xx.nrubro='FIBRA OPTICA',1,0)) AS FIBRA_OPTICA,
	COUNT(*) AS TOTAL FROM 
	(SELECT a.*,b.nrubro,c.jefatura FROM cms.`aver_liq_catv_pais` a INNER JOIN cms.`maquetacatv` b
	ON a.`codigodeliquidacion`=b.`CODLIQ`
	INNER JOIN catalogos.`jefaturas` c
		ON a.codnod=c.nodo
	WHERE DATEDIFF(NOW(),fecha_liquidacion)=0 AND a.contrata NOT IN (442,429,434,428) AND  a.codigomotivoreq IN ('R001','R002','R038','R040','R041','R042','R101','R102','R103','R413','R414','R415','R416','R417','R418','R422','R423','R424','R425','R426','R427')
	AND TIMEDIFF(fecha_liquidacion,fecharegistro)<'24:00:00.000000'
	GROUP BY a.`codigoreq`) xx
	GROUP BY 1;
	TRUNCATE TABLE reportes.liqhoyxrubromas24horas;
	INSERT INTO reportes.liqhoyxrubromas24horas
	SELECT xx.jefatura,
	SUM(IF(xx.nrubro='ADMINISTRATIVA',1,0)) AS ADMINISTRATIVA,
	SUM(IF(xx.nrubro='INEFECTIVA',1,0)) AS  INEFECTIVA,
	SUM(IF(xx.nrubro='PLANTA EXTERNA',1,0)) AS  PLANTA_EXTERNA,
	SUM(IF(xx.nrubro='PLANTA INTERNA',1,0)) AS  PLANTA_INTERNA,
	SUM(IF(xx.nrubro='RED CLIENTE',1,0)) AS  RED_CLIENTE,
	SUM(IF(xx.nrubro='TRANSMISIONES',1,0)) AS  TRANSMISIONES,
	SUM(IF(xx.nrubro='FIBRA OPTICA',1,0)) AS FIBRA_OPTICA,
	COUNT(*) AS TOTAL FROM 
	(SELECT a.*,b.nrubro,CONCAT(c.jefatura,'_',c.sede) jefatura  FROM cms.`aver_liq_catv_pais` a INNER JOIN cms.`maquetacatv` b
	ON a.`codigodeliquidacion`=b.`CODLIQ`
	INNER JOIN ccm1.`zonales_nodos_eecc` c
		ON a.nodo=c.nodo
	WHERE DATEDIFF(NOW(),fecha_liquidacion)=0 AND a.contrata NOT IN (442,429,434,428) AND  a.codigomotivoreq IN ('R001','R002','R038','R040','R041','R042','R101','R102','R103','R413','R414','R415','R416','R417','R418','R422','R423','R424','R425','R426','R427')
	AND TIMEDIFF(fecha_liquidacion,fecharegistro)>='24:00:00.000000'
	GROUP BY a.`codigoreq`) xx
	GROUP BY 1;
	
	TRUNCATE TABLE liqhoyxrubro;
	INSERT INTO `liqhoyxrubro`
	SELECT a.jefatura,
	ROUND((a.ADMINISTRATIVA/(a.ADMINISTRATIVA+b.ADMINISTRATIVA))*100,0) AS 'ADMINISTRATIVA',
	ROUND((a.INEFECTIVA/(a.INEFECTIVA+b.INEFECTIVA))*100,0) AS 'INEFECTIVA',
	ROUND((a.PLANTA_EXTERNA/(a.PLANTA_EXTERNA+b.PLANTA_EXTERNA))*100,0) AS 'PLANTA_EXTERNA',
	ROUND((a.PLANTA_INTERNA/(a.PLANTA_INTERNA+b.PLANTA_INTERNA))*100,0) AS 'PLANTA_INTERNA',
	ROUND((a.RED_CLIENTE/(a.RED_CLIENTE+b.RED_CLIENTE))*100,0) AS 'RED_CLIENTE',
	ROUND((a.TRANSMISIONES/(a.TRANSMISIONES+b.TRANSMISIONES))*100,0) AS 'TRANSMISIONES',
	ROUND((a.FIBRA_OPTICA/(a.FIBRA_OPTICA+b.FIBRA_OPTICA))*100,0) AS 'FIBRA_OPTICA',
	ROUND((a.TOTAL/(a.TOTAL+b.TOTAL))*100,0) AS 'TOTAL'
	FROM `liqhoyxrubromenos24horas` a LEFT JOIN `liqhoyxrubromas24horas` b 
	ON a.jefatura=b.jefatura;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_alertas_today` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_alertas_today` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_alertas_today`()
BEGIN
	TRUNCATE TABLE reportes.alertas_today;
	INSERT IGNORE reportes.alertas_today
	SELECT 
	a.item,a.nodo,a.troba,b.nombre AS desnodo,b.dpto,a.amp,a.tipodetrabajo,a.afectacion,a.fecharegistro,a.fechaapertura,a.horaapertura,a.cortesn,
	a.finicio,a.hinicio,a.htermino,a.fechacancela,a.fechacierre,a.estado,'' AS 'estado_gestion','' AS 'fecha_gestion','TTPP'
	FROM dbpext.trabajos_programados_noc a
	LEFT JOIN catalogos.jefaturas b
	ON a.nodo=b.nodo
	WHERE DATEDIFF(NOW(),FECHAAPERTURA)=0
	GROUP BY 1;
	INSERT IGNORE `reportes`.`alertas_today`
	SELECT a.idcaida AS item,a.nodo,a.troba,b.nombre AS desnodo,b.dpto,a. amplif AS amp,'EN PROCESO DE SOLUCION' AS tipodetrabajo,IF(a.`offline`/a.`cancli`>.8,'TOTAL','PARCIAL') AS afectacion,a.fecha_hora AS fecharegistro,a.fecha_hora  AS fechaapertura,
	SUBSTR(a.fecha_hora,12,8) AS  horaapertura,'SI' AS cortesn,a.fecha_hora  AS finicio,SUBSTR(a.fecha_hora,12,8)  AS hinicio,a.fecha_fin AS htermino,'' fechacancela,a.fecha_fin  AS fechacierre,
	IF(a.caida='SI','ABIERTA','CERRADA') AS estado,'' AS estado_gestion,'' AS fecha_gestion,'CAIDA'
	FROM alertasx.`caidas_final` a
	LEFT JOIN catalogos.jefaturas b
	ON a.nodo=b.nodo
	WHERE DATEDIFF(NOW(),a.FECHA_HORA)=0
	GROUP BY 1;
	
	INSERT IGNORE `reportes`.`alertas_today`
	SELECT a.idcaida AS item,a.nodo,a.troba,b.nombre AS desnodo,b.dpto,a. amplif AS amp,'EN PROCESO DE SOLUCION' AS tipodetrabajo,IF(a.`offline`/a.`cancli`>.8,'TOTAL','PARCIAL') AS afectacion,a.fecha_hora AS fecharegistro,a.fecha_hora  AS fechaapertura,
	SUBSTR(a.fecha_hora,12,8) AS  horaapertura,'SI' AS cortesn,a.fecha_hora  AS finicio,SUBSTR(a.fecha_hora,12,8)  AS hinicio,a.fecha_fin AS htermino,'' fechacancela,a.fecha_fin  AS fechacierre,
	IF(a.caida='SI','ABIERTA','CERRADA') AS estado,'' AS estado_gestion,'' AS fecha_gestion,'CAIDA'
	FROM alertasx.`caidas_final` a
	LEFT JOIN catalogos.jefaturas b
	ON a.nodo=b.nodo
	WHERE DATEDIFF(NOW(),a.FECHA_HORA)>0 and a.caida='SI'
	GROUP BY 1;
		
	update `reportes`.`alertas_today` a inner join alertasx.gestion_alert_ult_ges b
	on a.nodo=b.nodo and a.troba=b.troba
	set a.estado_gestion=b.estado,a.fecha_gestion=b.`fechahora`;
	
	select 'item','nodo','troba','desnodo','dpto','amp','tipodetrabajo','afectacion','fecharegistro','fechaapertura','horaapertura','cortesn','finicio','hinicio','htermino','fechacancela','fechacierre','estado','estado_gestion','fecha_gestion','TTPP'
	union
	select * from reportes.alertas_today into outfile '/temp/alertas_today.csv' fields terminated by '\t' lines terminated by '\r\n';	
	
	CALL reportes.sp_alertas_today_detalle;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_reportes_noc` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_reportes_noc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_reportes_noc`()
BEGIN
	SELECT 'Oficina','codreqmnt','codnod','nroplano','Departamento','Provincia','Tipo_Requerimiento','Numero_Fercuencia_Averia','Tipo_Frecuencia_Averia','Codigo_Motivo','Motivo','codmotact','desmotact','nro_tranf','Situacion','Codigo_Contrata','Nombre_Contrata','codareahbl','IndicadorActuacion','IndicadorCita','CodigoCita','FechaInicioCita','FechaFinCita','FechaCumplimiento','EstadoCita','EstadoActuacionGaudi','EstadoActuacionCMS','FechaEnvioGaudi','FechaRecepcionActuacion','CodigoErrorEnvio','DescripcionErrorEnvio','fechaCambioEstado','fecliq','fechaInformada','fechaRecepcionCierre','fechacompletoCierre','CodigoErrorCierre','DescripcionErrorCierre','fechaCorrepcionCierre','Usuario','CodTipoAct','Codigo_Tecnico','Nombre_Tecnico','fecpri_rec','fecreg_mas','fecreg','Fecha_Ultima_Transferencia','Fecha_Liquidacion','Codigo_Franqueo','Rubro','Codigo_Liquidacion','Descripcion_Codigo','Codigo_Detalle','Descripcion_Detalle','Observacion_Orden_Trabajo','Cantidad_Requerida','Nro_Cantidad','demotot_atn','demotot_mas','demotot_asig','Trab_Realizado','Estado_GO','Solicitud_Tecnica','fecha_upload'
	UNION
	SELECT Oficina,codreqmnt,codnod,nroplano,Departamento,Provincia,Tipo_Requerimiento,Numero_Fercuencia_Averia,Tipo_Frecuencia_Averia,Codigo_Motivo,Motivo,codmotact,desmotact,nro_tranf,Situacion,Codigo_Contrata,Nombre_Contrata,codareahbl,IndicadorActuacion,IndicadorCita,CodigoCita,FechaInicioCita,FechaFinCita,FechaCumplimiento,EstadoCita,EstadoActuacionGaudi,EstadoActuacionCMS,FechaEnvioGaudi,FechaRecepcionActuacion,CodigoErrorEnvio,DescripcionErrorEnvio,fechaCambioEstado,fecliq,fechaInformada,fechaRecepcionCierre,fechacompletoCierre,CodigoErrorCierre,DescripcionErrorCierre,fechaCorrepcionCierre,Usuario,CodTipoAct,Codigo_Tecnico,Nombre_Tecnico,fecpri_rec,fecreg_mas,fecreg,Fecha_Ultima_Transferencia,Fecha_Liquidacion,Codigo_Franqueo,Rubro,Codigo_Liquidacion,Descripcion_Codigo,Codigo_Detalle,Descripcion_Detalle,Observacion_Orden_Trabajo,Cantidad_Requerida,Nro_Cantidad,demotot_atn,demotot_mas,demotot_asig,Trab_Realizado,Estado_GO,Solicitud_Tecnica,fecha_upload
	FROM dbpext.masivas_tempx
	WHERE Tipo_Requerimiento='AM'
	INTO OUTFILE '/temp/Masivas.csv' FIELDS TERMINATED BY ';' LINES TERMINATED BY '\r\n';
	SELECT 'nodo','troba','fechahora','observaciones','usuario','tecnico','estado','porc_caida','serv_afectado','numreq','remedy','idcausalert','idarearesponsable'
	UNION 
	SELECT nodo,troba,fechahora,
	REPLACE(REPLACE(REPLACE(observaciones,"
"," "),","," "),";"," ") AS observaciones,
	usuario,tecnico,estado,porc_caida,serv_afectado,numreq,remedy,idcausalert,idarearesponsable
	FROM alertasx.gestion_alert WHERE DATEDIFF(NOW(),fechahora)=3
	INTO OUTFILE '/temp/Gestion_Alert.csv' FIELDS TERMINATED BY ';' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_alertas_today_detalle` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_alertas_today_detalle` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_alertas_today_detalle`()
BEGIN
	TRUNCATE TABLE reportes.alertas_today_detalle;
	INSERT IGNORE  reportes.alertas_today_detalle
	SELECT a.idclientecrm,a.nameclient,a.nodohfc,a.trobahfc,a.amplificador,pt.telf1,pt.telf2,pt.telf3,a.estado_servicio,a.estado_comercial ,a.codserv
	FROM
	(
	SELECT dt.*
	FROM (
	SELECT 
	IF(c.macaddress IS NOT NULL,c.cmts,IF(b.MACState IS NOT NULL,b.cmts,'')) AS cmts,
	IF(b.MACState ='offline',b.interface,c.interface) AS interface, a.scopesgroup,
	IF(c.macaddress IS NOT NULL,'online',IF(b.MACState IS NOT NULL,b.MACState,'')) AS macstate,
	IF(b.MACState <>'Ofine',b.RxPwrdBmv,' ') AS RxPwrdBmv,
	IF(b.MACState <>'Offline',c.USPwr,' ') AS USPwr,
	IF(b.MACState <>'Offline',c.USMER_SNR,' ') AS USMER_SNR,
	IF(b.MACState <>'Offline',c.DSPwr,' ') AS DSPwr,
	IF(b.MACState <>'Offline',c.DSMER_SNR,' ') AS DSMER_SNR,
	a.IDCLIENTECRM, REPLACE(a.NAMECLIENT,',','') AS nameclient,
	 a.NODO AS nodohfc, a.TROBA AS trobahfc, a.amplificador, a.tap, a.mac2,
	a.SERVICEPACKAGE, a.FECHAACTIVACION,
	IF(e.Caida='SI' AND (b.macstate='offline' OR b.macstate = 'init(d)' OR b.macstate = 'init(i)' OR b.macstate = 'init(io)' OR b.macstate = 'init(o)'
	OR b.macstate = 'init(r)' OR b.macstate = 'init(r1)' OR b.macstate = 'init(t)' OR b.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT(Amplif)',
	IF(f.Caida='SI' AND (b.macstate='offline' OR b.macstate = 'init(d)' OR b.macstate = 'init(i)' OR b.macstate = 'init(io)' OR b.macstate = 'init(o)'
	  OR b.macstate = 'init(r)' OR b.macstate = 'init(r1)' OR b.macstate = 'init(t)' OR b.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT',
	IF(g.Caida='SI','Niveles RF Malos - Problema PEXT',
	IF(b.macstate='offline','Offline - NO OK',
	IF(c.USMER_SNR * 1 < 27 ,'Niveles RF Malos - Problema PEXT',
	IF(rf.cmts IS NOT NULL,'Intermitencia en niveles RF - Ver Historico de Niveles',
	IF(c.USMER_SNR * 1 < 27 AND c.USPwr * 1<36 ,'Niveles RF Malos - Problema PEXT',
	IF(c.USPwr * 1 < 36 ,'Niveles RF Malos - Problema PEXT',
	IF(c.USPwr * 1 > 55 AND c.DSPwr > - 5 AND c.DSPwr < 10 ,'Niveles RF Malos - Problema PEXT',
	IF(c.DSPwr * 1 > 10 AND c.USPwr * 1 < 36 ,'Niveles RF Malos - Problema PEXT',
	IF(c.USPwr * 1 < 35 AND c.USPwr * 1 > 0 ,'Niveles RF Malos - Problema PEXT',
	IF(c.USPwr * 1 < 35 AND c.DSPwr * 1 > 10 ,'Niveles RF Malos - Problema PEXT',
	IF(c.DSPwr * 1 > 15 ,'Niveles RF Malos - Problema PEXT',
	IF(c.USPwr * 1 > 55 AND c.DSPwr > 10 ,'Niveles RF Malos - Problema PEXT',
	IF(c.USMER_SNR * 1 < 30 AND c.DSPwr * 1 > 10 ,'Niveles RF Malos - Problema PEXT',
	IF(b.macstate = 'init(d)' OR b.macstate = 'init(i)' OR b.macstate = 'init(io)' OR b.macstate = 'init(o)' OR b.macstate = 'init(r)'
	   OR b.macstate = 'init(r1)' OR b.macstate = 'init(t)' OR b.macstate = 'bpi(wait)','Problema Red Cliente',
	IF(c.DSPwr < - 5 AND c.USPwr > 55,'Niveles RF Malos - Problema Red Cliente',
	IF(c.DSPwr < - 5 OR c.DSPwr > 10,'Niveles RF Malos - Problema Red Cliente',
	IF(c.DSPwr < - 5 AND c.DSMER_SNR < 30 ,'Niveles RF Malos - Problema Red Cliente',
	IF(c.USPwr>53* 1 AND c.USPwr * 1 <= 58 AND c.USMER_SNR * 1 >= 30 AND c.DSPwr > - 5 AND c.DSPwr < 12,'Niveles RF Malos - Problema Red Cliente',
	IF(c.DSPwr='' AND c.DSMER_SNR='' AND b.macstate = 'online','Incierto - Validar',
	IF(c.DSPwr='' AND c.DSMER_SNR='' AND b.macstate = '','Modem no registrado en CMTS',
	IF(b.MACState IN ('init','init(t)','init(r2)','init(r1)'),'Proceso de sincronismo - Volver a Validar',
	IF(b.MACState IN ('init(d)','DHCP','init(o)'),'Posible Problema con el DHCP' ,
	IF(c.DSPwr IS NULL AND b.macstate IS NULL, 'Incierto - Validar', 'OK')
	)))))))))))))))))))))))) AS estado_servicio, a.numcoo_x,a.numcoo_y,
	IF(b.MACState = 'offline' AND c.macaddress IS NULL ,'red',IF(b.macstate <>'offline' AND c.DSPwr='-' AND c.DSMER_SNR='-','yellow','white')) AS color,
	 a.estado AS estado_comercial, a.codserv
	FROM multiconsulta.nclientes a
	INNER JOIN reportes.`alertas_today` t ON a.nodo=t.nodo AND a.troba=t.troba
	LEFT JOIN ccm1.scm_total b ON a.mac2=b.macaddress
	LEFT JOIN ccm1.scm_phy_t c ON a.mac2=c.macaddress
	LEFT JOIN dbpext.masivas_temp m ON a.nodo = m.codnod AND a.troba=m.nroplano
	LEFT JOIN alertasx.caidas_new_amplif e ON a.nodo=e.nodo AND a.troba=e.troba AND a.amplificador=e.amplificador AND e.Caida='SI'
	LEFT JOIN alertasx.caidas_new f ON a.nodo=f.nodo AND a.troba=f.troba AND f.Caida='SI'
	LEFT JOIN alertasx.niveles_new g ON a.nodo=g.nodo AND a.troba=g.troba AND g.Caida='SI'
	LEFT JOIN alertasx.alertasrf rf ON c.cmts=rf.cmts AND c.interface=rf.interface
	WHERE a.idclientecrm<>969625 ORDER BY a.nodo,a.troba,a.amplificador) dt
	) a
	LEFT JOIN catalogos.planta_telef_cms_new pt ON a.idclientecrm=pt.cliente;
	select 'idclientecrm','nameclient','nodo','troba','amplificador','telf1','telf2','telf3','estado_servicio','estado_comercial','codserv'
	union
	select * from reportes.alertas_today_detalle into outfile '/temp/alertas_today_detalle.csv'  FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\r\n';	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_grafica_averias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_grafica_averias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_grafica_averias`()
BEGIN
	#############################################################
	TRUNCATE TABLE reportes.graf_promedio;
	INSERT INTO reportes.graf_promedio
	SELECT a.dia_mov,b.desdia,SUBSTR(fec_mov,12,2) AS hora,COUNT(*) AS aver FROM (SELECT * FROM ccm1.averias_m1_new GROUP BY codreq) a 
	INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia 
	WHERE tipreqini IN ('R7','RA','RP') AND DATEDIFF(NOW(),dia_mov)<=30 AND DATEDIFF(NOW(),dia_mov)>=0 AND DAYOFWEEK(a.dia_mov)=DAYOFWEEK(NOW())
	GROUP BY 1,2,3;
	#############################################################
	TRUNCATE TABLE reportes.graf_ayer;
	INSERT INTO reportes.graf_ayer
	SELECT b.desdia,SUBSTR(fec_mov,12,2) AS hora,COUNT(*) AS aver FROM 
	(SELECT * FROM ccm1.averias_m1_new GROUP BY codreq) a 
	INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia 	
	WHERE tipreqini IN ('R7','RA','RP') AND DATEDIFF(NOW(),a.dia_mov)=1 	GROUP BY 1,2;
	#############################################################
	TRUNCATE TABLE reportes.graf_hoy;
	INSERT INTO reportes.graf_hoy
	SELECT b.desdia,SUBSTR(fec_mov,12,2) AS hora,COUNT(*) AS aver FROM 
	(SELECT * FROM ccm1.averias_m1_new  GROUP BY codreq) a 
	INNER JOIN catalogos.dias b 	ON DAYOFWEEK(a.dia_mov)=b.dia 
	WHERE tipreqini in ('R7','RA','RP') and   DATEDIFF(NOW(),a.dia_mov)=0
	GROUP BY 1,2;
#	SELECT b.desdia,SUBSTR(fec_mov,12,2) AS hora,COUNT(*) AS aver FROM 
#	(SELECT * FROM ccm1.averias_m1_new GROUP BY codreq) a 
#	INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia 
#	WHERE tipreqini IN ('R7','RA','RP') AND DATEDIFF(NOW(),a.dia_mov)=0 GROUP BY 1,2;
	#############################################################
	TRUNCATE TABLE reportes.graf_arbol_tot;
	INSERT INTO reportes.graf_arbol_tot
	SELECT SUBSTR(fechahora,12,2) AS hora ,COUNT(*) AS arboltot FROM 
	arboldecisiones.`decisiones_hoy` WHERE DATEDIFF(NOW(),fechahora)=0 GROUP BY 1;
	#############################################################
	TRUNCATE TABLE reportes.graf_arbol_hoy;
	INSERT INTO reportes.graf_arbol_hoy
	SELECT aa.hora,IF(ab.arbol IS NOT NULL ,aa.arbol+ab.arbol,aa.arbol) AS arbol FROM (SELECT SUBSTR(a.fec_registro,12,2) AS hora,COUNT(*) AS cant,SUM(IF(b.`fechahora`<>'',1,0)) AS arbol FROM cms.`req_pend_macro_final` a 
	LEFT JOIN arboldecisiones.`decisiones_hoy` b ON a.`codcli`=b.`idclientecrm` AND DATEDIFF(NOW(),a.`fec_registro`)=0 AND DATEDIFF(NOW(),b.`fechahora`)=0 WHERE DATEDIFF(NOW(),a.`fec_registro`)=0 GROUP BY 1 ) aa 
	LEFT JOIN (SELECT SUBSTR(a.fecharegistro,12,2) AS hora,SUM(IF(b.`fechahora`<>'',1,0)) AS arbol FROM cms.`aver_liq_catv_pais` a 
	LEFT JOIN arboldecisiones.`decisiones_hoy` b ON a.`codigodelcliente`=b.`idclientecrm` AND DATEDIFF(NOW(),a.`fecharegistro`)=0 AND DATEDIFF(NOW(),b.`fechahora`)=0 WHERE DATEDIFF(NOW(),a.`fecharegistro`)=0 GROUP BY 1 ) ab ON aa.hora=ab.hora ;
	#############################################################
	TRUNCATE TABLE reportes.graf_llamadas;
	INSERT INTO  reportes.graf_llamadas
	SELECT SUBSTR(a.fechahora,12,2) AS horallam,COUNT(*) AS llamadas FROM alertasx.`alertas_dmpe` a WHERE datediff(now(),fechahora)=0 GROUP BY 1;
	#############################################################
	TRUNCATE TABLE reportes.graf_liquidaciones;
	INSERT INTO reportes.graf_liquidaciones
	SELECT SUBSTR(fecha_liquidacion,12,2) Hora,COUNT(*) AS liq FROM cms.aver_liq_catv_pais a WHERE DATEDIFF(NOW(),fecha_liquidacion) =0 GROUP BY 1 ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_reporte_pendientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_reporte_pendientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_reporte_pendientes`()
BEGIN
REPLACE  reportes.reporte_pendientes( 
SELECT a.hora,
IF(vv.reg IS NOT NULL,vv.reg,0)  AS PENDIENTES,
IF(xx.reg IS NOT NULL,xx.reg,0)  AS ROBOT_PEND,
IF(yy.reg IS NOT NULL,yy.reg,0)  AS ROBOT_LIQU,
IF(ww.reg IS NOT NULL,ww.reg,0)  AS OTROS_PEND,
IF(zz.reg IS NOT NULL,zz.reg,0)  AS OTROS_LIQU,
IF(vv.reg IS NOT NULL,vv.reg,0)+
IF(xx.reg IS NOT NULL,xx.reg,0)+
IF(yy.reg IS NOT NULL,yy.reg,0)+
IF(ww.reg IS NOT NULL,ww.reg,0)+
IF(zz.reg IS NOT NULL,zz.reg,0)  AS TOTAL_PEND,
SUBSTR(NOW(),1,10) AS FECHA
FROM 
(SELECT SUBSTR(HORAS,1,2) AS hora FROM catalogos.horas) a
LEFT JOIN 
(SELECT SUBSTR(fec_registro,12,2) AS hora,COUNT(*) AS reg FROM cms.`req_pend_macro_final` a 
WHERE codmotv='R417' 
AND a.`desobsordtrab` LIKE "%CONECTOR%" 
AND DATEDIFF(NOW(),fec_registro)=0
GROUP BY 1 ) xx
ON a.hora=xx.hora
LEFT JOIN 
(SELECT SUBSTR(fecharegistro,12,2) AS hora,COUNT(*) AS reg FROM cms.`aver_liq_catv_pais` a 
WHERE a.`codigomotivoreq`='R417' 
AND DATEDIFF(NOW(),fecharegistro)=0
GROUP BY 1) yy
ON a.hora=yy.hora
LEFT JOIN 
(SELECT SUBSTR(fec_registro,12,2) AS hora,COUNT(*) AS reg FROM cms.`req_pend_macro_final` a 
WHERE codmotv<>'R417'  AND tipreqini IN ('RA','R7','RP')
AND a.`desobsordtrab` NOT LIKE "%CONECTOR%" 
AND DATEDIFF(NOW(),fec_registro)=0
GROUP BY 1 ) ww
ON a.hora=ww.hora
LEFT JOIN 
(SELECT SUBSTR(fecharegistro,12,2) AS hora,COUNT(*) AS reg FROM cms.`aver_liq_catv_pais` a 
WHERE a.`codigomotivoreq`<>'R417'  AND `codigotiporeq` IN ('RA','R7','RP')
AND DATEDIFF(NOW(),fecharegistro)=0
GROUP BY 1) zz
ON a.hora=zz.hora
LEFT JOIN 
(SELECT '00' AS hora,COUNT(*) AS reg FROM cms.req_pend_macro_final a 
WHERE DATEDIFF(NOW(),fec_registro)>0 AND a.`tipreqini`
 IN ('RA','R7','RP')
) vv
ON a.hora='00'
WHERE a.hora<>''
GROUP BY 1);
REPLACE reportes.`reporte_pendientes` 
(SELECT 'TOTAL' AS HORA, 
SUM(PENDIENTES) AS PEDIENTES,
SUM(ROBOT_PEND) AS ROBOT_PEND,
SUM(ROBOT_LIQU) AS ROBOT_LIQU,
SUM(OTROS_PEND) AS OTROS_PEND,
SUM(OTROS_LIQU) AS OTROS_LIQU,
SUM(TOTAL_PEND) AS TOTAL_PEND,
SUBSTR(NOW(),1,10) AS FECHA
FROM `reportes`.`reporte_pendientes`
WHERE DATEDIFF(NOW(),FECHA)=0 AND HORA<>'TOTAL');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_planta_movstar1` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_planta_movstar1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_planta_movstar1`()
BEGIN
/*
TRUNCATE TABLE dbpext.`masivas_temp_c`;
#INSERT INTO dbpext.`masivas_temp_c` SELECT * FROM dbpext.masivas_temp ;
TRUNCATE TABLE alertasx.caidas_new_amplif_c;
#INSERT INTO alertasx.caidas_new_amplif_c SELECT * FROM alertasx.caidas_new_amplif WHERE Caida='SI';
TRUNCATE TABLE alertasx.caidas_new_c;
#INSERT INTO alertasx.caidas_new_c SELECT * FROM alertasx.caidas_new  WHERE Caida='SI';
TRUNCATE TABLE alertasx.niveles_new_c; 
#INSERT INTO alertasx.niveles_new_c SELECT * FROM alertasx.niveles_new;
TRUNCATE TABLE alertasx.alertasrf_r ;
#INSERT INTO alertasx.alertasrf_r SELECT * FROM alertasx.alertasrf;
UPDATE catalogos.`planta_nclientes_movistar1` a 
FORCE INDEX(macaddress) 
INNER JOIN  ccm1.scm_total_r b FORCE INDEX (MACAddress) ON a.macaddress=b.macaddress
SET a.`macstate`=b.macstate;
#UPDATE catalogos.`planta_nclientes_movistar1` a FORCE INDEX(nodo,troba) 
#INNER JOIN dbpext.masivas_temp_c m FORCE INDEX (NewIndex1,NewIndex2) ON a.nodo = m.codnod AND a.troba=m.nroplano
#SET a.caida='SI' WHERE a.caida='' OR a.caida IS NULL;
#UPDATE catalogos.`planta_nclientes_movistar1` a FORCE INDEX(nodo,troba,amplificador) 
#INNER JOIN alertasx.caidas_new_amplif_c e FORCE INDEX (nodo,troba,amplificador) ON a.nodo=e.nodo AND a.troba=e.troba AND a.amplificador=e.amplificador 
#SET a.caida='SI' WHERE (a.caida='' OR a.caida IS NULL) AND e.Caida='SI';
#UPDATE catalogos.`planta_nclientes_movistar1` a FORCE INDEX(nodo,troba,amplificador) 
#INNER JOIN alertasx.caidas_new_c f FORCE INDEX (nodo,troba)  ON a.nodo=f.nodo AND a.troba=f.troba 
#SET a.caida='SI' WHERE (a.caida='' OR a.caida IS NULL) AND f.Caida='SI';
#UPDATE catalogos.`planta_nclientes_movistar1` a FORCE INDEX(nodo,troba,amplificador) 
#INNER JOIN alertasx.niveles_new_c g FORCE INDEX (nodo,troba) ON a.nodo=g.nodo AND a.troba=g.troba 
#SET a.caida='SI' WHERE (a.caida='' OR a.caida IS NULL) AND g.Caida='SI';
DELETE FROM catalogos.planta_nclientes_movistar1 WHERE caida='XX';
#UPDATE catalogos.`planta_nclientes_movistar1` a FORCE INDEX(macaddress) INNER JOIN ccm1.scm_phy_r c FORCE INDEX(NewIndex1) ON a.macaddress=c.macaddress 
#SET a.caida='SI';
    
SELECT TELEFONO
 FROM ( 
SELECT dt.TELEFONO,dt.estado,dt.estado_modem,dt.caida
FROM ( 
SELECT a.telefono,caida,
IF(a.macstate='offline','Offline - NO OK',
IF(a.caida='SI' AND (a.macstate='offline' OR a.macstate = 'init(d)' OR a.macstate = 'init(i)' OR a.macstate = 'init(io)' OR a.macstate = 'init(o)'
OR a.macstate = 'init(r)' OR a.macstate = 'init(r1)' OR a.macstate = 'init(t)' OR a.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT(Amplif)',
IF(a.macstate = 'init(d)' OR a.macstate = 'init(i)' OR a.macstate = 'init(io)' OR a.macstate = 'init(o)' OR a.macstate = 'init(r)'
   OR a.macstate = 'init(r1)' OR a.macstate = 'init(t)' OR a.macstate = 'bpi(wait)','Problema Red Cliente',
IF(a.MACState IN ('init','init(t)','init(r2)','init(r1)'),'Proceso de sincronismo - Volver a Validar',
IF(a.MACState IN ('init(d)','DHCP','init(o)'),'Posible Problema con el DHCP' 
, 'OK')
)))) AS estado,a.estado_modem
FROM catalogos.planta_nclientes_movistar1 a FORCE INDEX(macaddress,telefono,nodo,troba)
INNER JOIN catalogos.`premium` pr FORCE INDEX(nodo,plano)
on a.nodo=pr.nodo and a.troba=pr.plano
) dt
) xx
WHERE estado_modem ='Activo' AND telefono IS NOT NULL AND telefono<>'' AND (estado IN 
(
'Offline - NO OK'
))
INTO OUTFILE '/temp/PLANTA_MOVISTAR1.csv' 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
*/
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_reporte_whatsapp` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_reporte_whatsapp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_reporte_whatsapp`()
BEGIN
UPDATE catalogos.`ticketportroba` SET estado='CERRADO' WHERE fecha_termino<=NOW();
SELECT 'movil'
UNION
SELECT telefono FROM (
SELECT CONCAT('51',telefono) AS telefono FROM catalogos.`planta_movistar1` a INNER JOIN  alertasx.caidas_new b
ON a.`NODO`=b.`nodo` AND a.`plano`=b.`troba`
WHERE b.caida='SI'
UNION 
SELECT CONCAT('51',telefono) AS telefono FROM catalogos.`planta_movistar1` a INNER JOIN  dbpext.`masivas_tempx` b
ON a.`NODO`=b.`codnod` AND a.`plano`=b.nroplano
UNION
SELECT CONCAT('51',telefono) AS telefono FROM catalogos.`planta_movistar1` a INNER JOIN  catalogos.`ticketportroba` b
ON a.`NODO`=b.`nodo` AND a.`plano`=b.troba
WHERE b.estado="ABIERTO"
) xx
GROUP BY telefono
INTO outfile "/temp/masivas_whatsapp.txt" LINES TERMINATED BY "\r\n";
    END */$$
DELIMITER ;

/*Table structure for table `criticos_view` */

DROP TABLE IF EXISTS `criticos_view`;

/*!50001 DROP VIEW IF EXISTS `criticos_view` */;
/*!50001 DROP TABLE IF EXISTS `criticos_view` */;

/*!50001 CREATE TABLE  `criticos_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `ncrit` bigint(21) 
)*/;

/*Table structure for table `reporte_pendientes_vew` */

DROP TABLE IF EXISTS `reporte_pendientes_vew`;

/*!50001 DROP VIEW IF EXISTS `reporte_pendientes_vew` */;
/*!50001 DROP TABLE IF EXISTS `reporte_pendientes_vew` */;

/*!50001 CREATE TABLE  `reporte_pendientes_vew`(
 `HORA` varchar(5) ,
 `PENDIENTES` int(11) ,
 `ROBOT_PEND` int(11) ,
 `ROBOT_LIQU` int(11) ,
 `OTROS_PEND` int(11) ,
 `OTROS_LIQU` int(11) ,
 `TOTAL_PEND` int(11) ,
 `FECHA` varchar(20) 
)*/;

/*View structure for view criticos_view */

/*!50001 DROP TABLE IF EXISTS `criticos_view` */;
/*!50001 DROP VIEW IF EXISTS `criticos_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `criticos_view` AS (select `criticos`.`NODO` AS `nodo`,`criticos`.`TROBA` AS `troba`,count(0) AS `ncrit` from `criticos` where ((`criticos`.`NODO` is not null) and (`criticos`.`NODO` <> '')) group by `criticos`.`NODO`,`criticos`.`TROBA`) */;

/*View structure for view reporte_pendientes_vew */

/*!50001 DROP TABLE IF EXISTS `reporte_pendientes_vew` */;
/*!50001 DROP VIEW IF EXISTS `reporte_pendientes_vew` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `reporte_pendientes_vew` AS (select `reporte_pendientes`.`HORA` AS `HORA`,`reporte_pendientes`.`PENDIENTES` AS `PENDIENTES`,`reporte_pendientes`.`ROBOT_PEND` AS `ROBOT_PEND`,`reporte_pendientes`.`ROBOT_LIQU` AS `ROBOT_LIQU`,`reporte_pendientes`.`OTROS_PEND` AS `OTROS_PEND`,`reporte_pendientes`.`OTROS_LIQU` AS `OTROS_LIQU`,`reporte_pendientes`.`TOTAL_PEND` AS `TOTAL_PEND`,`reporte_pendientes`.`FECHA` AS `FECHA` from `reporte_pendientes` where ((to_days(now()) - to_days(`reporte_pendientes`.`FECHA`)) = 0)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
