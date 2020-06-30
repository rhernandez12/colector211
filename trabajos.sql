/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - trabajos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`trabajos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trabajos`;

/*Table structure for table `averias` */

DROP TABLE IF EXISTS `averias`;

CREATE TABLE `averias` (
  `codigo_req` varchar(20) NOT NULL DEFAULT '',
  `codigomotivoreq` varchar(20) NOT NULL DEFAULT '',
  `desc_motivo` varchar(20) NOT NULL DEFAULT '',
  `tipo_act` varchar(20) NOT NULL DEFAULT '',
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `servicio` varchar(20) NOT NULL DEFAULT '',
  `año` varchar(20) NOT NULL DEFAULT '',
  `dia` varchar(20) NOT NULL DEFAULT '',
  `mes` varchar(20) NOT NULL DEFAULT '',
  `dia_c` varchar(20) NOT NULL DEFAULT '',
  `mes_c` varchar(20) NOT NULL DEFAULT '',
  `llave` varchar(20) NOT NULL DEFAULT '',
  `FECHAREGISTRO` varchar(20) NOT NULL DEFAULT '',
  `REGION` varchar(20) NOT NULL DEFAULT '',
  `con_ttpp` varchar(20) NOT NULL DEFAULT '',
  `sin_ttpp` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dar_det` */

DROP TABLE IF EXISTS `dar_det`;

CREATE TABLE `dar_det` (
  `reg_ptr` varchar(20) NOT NULL DEFAULT '',
  `tc_material` varchar(20) NOT NULL DEFAULT '',
  `cod_obra` varchar(20) NOT NULL DEFAULT '',
  `desc_mat_mo` varchar(300) NOT NULL DEFAULT '',
  `precio_cable` decimal(10,4) DEFAULT NULL,
  `cantidad_cable` decimal(10,4) DEFAULT NULL,
  `preciario` varchar(20) NOT NULL DEFAULT '',
  `baremo` varchar(20) NOT NULL DEFAULT '',
  `tipo_material` varchar(20) NOT NULL DEFAULT '',
  `centro` varchar(10) NOT NULL DEFAULT '',
  `almacen` varchar(10) NOT NULL DEFAULT '',
  `fec_registro` varchar(20) NOT NULL DEFAULT '',
  `usu_registro` varchar(30) NOT NULL DEFAULT '',
  `Jefatura` varchar(20) NOT NULL DEFAULT '',
  `Tip_Planta` varchar(10) NOT NULL DEFAULT '',
  `Contrata` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dar_det1` */

DROP TABLE IF EXISTS `dar_det1`;

CREATE TABLE `dar_det1` (
  `reg_ptr` varchar(20) NOT NULL DEFAULT '',
  `tc_material` varchar(20) NOT NULL DEFAULT '',
  `cod_obra` varchar(20) NOT NULL DEFAULT '',
  `desc_mat_mo` varchar(300) NOT NULL DEFAULT '',
  `precio_cable` decimal(10,4) DEFAULT NULL,
  `cantidad_cable` decimal(10,4) DEFAULT NULL,
  `preciario` varchar(20) NOT NULL DEFAULT '',
  `baremo` varchar(20) NOT NULL DEFAULT '',
  `tipo_material` varchar(20) NOT NULL DEFAULT '',
  `centro` varchar(10) NOT NULL DEFAULT '',
  `almacen` varchar(10) NOT NULL DEFAULT '',
  `fec_registro` varchar(20) NOT NULL DEFAULT '',
  `usu_registro` varchar(30) NOT NULL DEFAULT '',
  `Jefatura` varchar(20) NOT NULL DEFAULT '',
  `Tip_Planta` varchar(10) NOT NULL DEFAULT '',
  `Contrata` varchar(20) NOT NULL DEFAULT '',
  `total_cable` decimal(10,4) DEFAULT NULL,
  `capacidad_cable` varchar(20) NOT NULL DEFAULT '',
  KEY `reg_ptr` (`reg_ptr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dataedif_hfc` */

DROP TABLE IF EXISTS `dataedif_hfc`;

CREATE TABLE `dataedif_hfc` (
  `CLIENTE` int(10) DEFAULT NULL,
  `CUENTA` int(10) DEFAULT NULL,
  `SERVICIO` int(20) NOT NULL,
  `CON_SRV` int(11) DEFAULT NULL,
  `CLASESRV` varchar(2) DEFAULT NULL,
  `TIPOSRV` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(3) DEFAULT NULL,
  `OFI_CLI` varchar(3) DEFAULT NULL,
  `OFI_SRV` varchar(3) DEFAULT NULL,
  `CODDPT` varchar(3) DEFAULT NULL,
  `DESDPT` varchar(15) DEFAULT NULL,
  `CODPVC` varchar(3) DEFAULT NULL,
  `DESPVC` varchar(30) DEFAULT NULL,
  `CODDTT` varchar(3) DEFAULT NULL,
  `DESDTT` varchar(40) DEFAULT NULL,
  `INDFACT` varchar(2) DEFAULT NULL,
  `NODO` varchar(4) DEFAULT NULL,
  `DESNODO` varchar(30) DEFAULT NULL,
  `PLANO` varchar(5) DEFAULT NULL,
  `XIND_VIP` varchar(1) DEFAULT NULL,
  `TIPO_DOCUM` varchar(2) DEFAULT NULL,
  `NUMERORUC` varchar(20) DEFAULT NULL,
  `NUMERODOC` varchar(20) DEFAULT NULL,
  `TELEFCL1` varchar(15) DEFAULT NULL,
  `TELEFCL2` varchar(15) DEFAULT NULL,
  `TELEFCL3` varchar(15) DEFAULT NULL,
  `PETICATIS` varchar(20) DEFAULT NULL,
  `SEGMCLIENT` varchar(10) DEFAULT NULL,
  `ESTADODUNA` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APE_PAT` varchar(50) DEFAULT NULL,
  `APE_MAT` varchar(40) DEFAULT NULL,
  `CODNIT` varchar(10) DEFAULT NULL,
  `UBIGEOGIS` varchar(10) DEFAULT NULL,
  `DESUBIGEGI` varchar(40) DEFAULT NULL,
  `CODLEX` varchar(10) DEFAULT NULL,
  `CODTAP` varchar(10) DEFAULT NULL,
  `CODBOR` varchar(10) DEFAULT NULL,
  `DIREC_INST` varchar(90) DEFAULT NULL,
  `IND_DUO` varchar(10) DEFAULT NULL,
  `tipo_linea` varchar(6) DEFAULT NULL,
  `telef_ip` varchar(10) DEFAULT NULL,
  `prom_linea` varchar(47) DEFAULT NULL,
  `des_prom_linea` varchar(60) DEFAULT NULL,
  `nodeid` varchar(10) DEFAULT NULL,
  `veloc_cms` int(10) DEFAULT NULL,
  `tiptec` varchar(50) DEFAULT NULL,
  `localidad` varchar(30) DEFAULT NULL,
  `torre` varchar(6) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `Movistar_Total` varchar(1) DEFAULT NULL,
  `UBIPLAN` varchar(9) DEFAULT NULL,
  `PAIS` varchar(4) DEFAULT NULL,
  `UBIGEO` varchar(6) DEFAULT NULL,
  `ZONAL_ANT` varchar(3) DEFAULT NULL,
  `REGION` varchar(8) DEFAULT NULL,
  `ZONAL_NEW` varchar(10) DEFAULT NULL,
  `IND_DUNA` varchar(10) DEFAULT NULL,
  `AÑO_DUN` varchar(6) DEFAULT NULL,
  `CRUCE` varchar(4) DEFAULT NULL,
  `PAQUETE` varchar(15) DEFAULT NULL,
  `PAQUETE1` varchar(15) DEFAULT NULL,
  `SUB_NEG` varchar(4) DEFAULT NULL,
  `PROVEEDOR` varchar(4) DEFAULT NULL,
  `TECNOLOGIA` varchar(10) DEFAULT NULL,
  `PERU8K` varchar(7) DEFAULT NULL,
  `MARCAA` varchar(3) DEFAULT NULL,
  `CND_SRV_09` int(11) DEFAULT NULL,
  `CND_SRV_10` int(11) DEFAULT NULL,
  `CND_SRV_11` int(11) DEFAULT NULL,
  `EXCLUSANT` varchar(50) DEFAULT NULL,
  `PROV_ANT` varchar(12) DEFAULT NULL,
  `NEGO_ANT` varchar(10) DEFAULT NULL,
  `CSER_ANT` varchar(2) DEFAULT NULL,
  `PAQU_ANT` varchar(15) DEFAULT NULL,
  `PAQU1_ANT` varchar(10) DEFAULT NULL,
  `SEGMENTO` varchar(15) DEFAULT NULL,
  `SEGMENTO0` varchar(15) DEFAULT NULL,
  `EX_CTA` varchar(13) DEFAULT NULL,
  `MARCA_SUS` int(11) DEFAULT NULL,
  `EXCLU_SUS` varchar(32) DEFAULT NULL,
  `EX_BJ_INCO` varchar(50) DEFAULT NULL,
  `IND_EXCLUS` varchar(46) DEFAULT NULL,
  `SEG_CMS` varchar(2) DEFAULT NULL,
  `JEFCOM` varchar(10) DEFAULT NULL,
  `EECC` varchar(8) DEFAULT NULL,
  `REGION_COC` varchar(8) DEFAULT NULL,
  `ZON_REGION` varchar(4) DEFAULT NULL,
  `PREM_MAS` varchar(7) DEFAULT NULL,
  `DET_REGION` varchar(15) DEFAULT NULL,
  `JEF_REGION` varchar(8) DEFAULT NULL,
  `SEG_SLAS` varchar(11) DEFAULT NULL,
  `TOP_NOTOP` varchar(17) DEFAULT NULL,
  `JEFATU_NUE` varchar(4) DEFAULT NULL,
  `CLIEN_SRV` varchar(15) DEFAULT NULL,
  `MICROZONA` varchar(10) DEFAULT NULL,
  `LLAVE_UBIG` varchar(15) DEFAULT NULL,
  `TERRENO` varchar(15) DEFAULT NULL,
  `EXCLUYE` varchar(1) DEFAULT NULL,
  `IND_VIP` varchar(1) DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `DIRECCION` varchar(75) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `TEC` varchar(5) DEFAULT NULL,
  `DIGITALIZA` varchar(2) DEFAULT NULL,
  `PAQUETE_HD` varchar(2) DEFAULT NULL,
  `SERVPACK` varchar(50) DEFAULT NULL,
  `VEL_SERVPA` varchar(10) DEFAULT NULL,
  `TIPO_VIA` varchar(4) DEFAULT NULL,
  `VIA` varchar(39) DEFAULT NULL,
  `NRO` varchar(6) DEFAULT NULL,
  `PISO` varchar(4) DEFAULT NULL,
  `INTERIOR` varchar(7) DEFAULT NULL,
  `MZ` varchar(7) DEFAULT NULL,
  `LT` varchar(7) DEFAULT NULL,
  `tipourbani` varchar(6) DEFAULT NULL,
  `urbanizaci` varchar(32) DEFAULT NULL,
  `TIPOPERU8K` varchar(20) DEFAULT NULL,
  `CLIENCCM1` varchar(2) DEFAULT NULL,
  `VOZIP` varchar(2) DEFAULT NULL,
  `PRODCOMER` varchar(100) DEFAULT NULL,
  `VEL_PRODCO` varchar(50) DEFAULT NULL,
  `DIGITAL2` int(11) DEFAULT NULL,
  `DIG_FECHA` varchar(20) DEFAULT NULL,
  `DIG_ESTADO` varchar(18) DEFAULT NULL,
  `DECO_ACT` int(11) DEFAULT NULL,
  `DECO_SUSP` int(11) DEFAULT NULL,
  `TIPREQ_PED` varchar(10) DEFAULT NULL,
  `proceso` date DEFAULT NULL,
  `FECHA_CARGA` char(10) DEFAULT NULL,
  `UNICO` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `fuentexy` varchar(30) DEFAULT NULL,
  `nodotroba` varchar(10) DEFAULT NULL,
  `naked` varchar(20) DEFAULT NULL,
  `clicuenser` varchar(40) DEFAULT NULL,
  `grupo_microzona` varchar(15) DEFAULT NULL,
  `mtotal` varchar(2) DEFAULT NULL,
  `identifica` varchar(20) DEFAULT NULL,
  UNIQUE KEY `SERVICIO` (`SERVICIO`),
  KEY `CLIENTE` (`CLIENTE`),
  KEY `CLASESRV` (`CLASESRV`),
  KEY `TIPOSRV` (`TIPOSRV`),
  KEY `OFI_CLI` (`OFI_CLI`),
  KEY `DESDPT` (`DESDPT`),
  KEY `CODDPT` (`CODDPT`),
  KEY `CODPVC` (`CODPVC`),
  KEY `DESPVC` (`DESPVC`),
  KEY `CODDTT` (`CODDTT`),
  KEY `DESDTT` (`DESDTT`),
  KEY `NODO` (`NODO`),
  KEY `PLANO` (`PLANO`),
  KEY `TELEFCL1` (`TELEFCL1`),
  KEY `TELEFCL2` (`TELEFCL2`),
  KEY `TELEFCL3` (`TELEFCL3`),
  KEY `UNICO` (`UNICO`),
  KEY `NOMBRE` (`NOMBRE`),
  KEY `CUENTA` (`CUENTA`),
  KEY `APE_MAT` (`APE_MAT`),
  KEY `APE_PAT` (`APE_PAT`),
  KEY `identifica` (`identifica`),
  KEY `clicuenser` (`clicuenser`),
  KEY `grupo_microzona` (`grupo_microzona`),
  KEY `mtotal` (`mtotal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `dataedif_t1` */

DROP TABLE IF EXISTS `dataedif_t1`;

CREATE TABLE `dataedif_t1` (
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
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  `desdtt` varchar(40) DEFAULT NULL,
  `via` varchar(39) DEFAULT NULL,
  `nro` int(6) DEFAULT NULL,
  UNIQUE KEY `codserv` (`codserv`),
  KEY `mac2` (`mac2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `detalle_trazabilidad` */

DROP TABLE IF EXISTS `detalle_trazabilidad`;

CREATE TABLE `detalle_trazabilidad` (
  `nod_trob` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `causa` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_new` varchar(20) NOT NULL DEFAULT '',
  `fecha_troba` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `edif_level` */

DROP TABLE IF EXISTS `edif_level`;

CREATE TABLE `edif_level` (
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(20) DEFAULT NULL,
  `tap` varchar(20) DEFAULT NULL,
  `telf1` varchar(20) DEFAULT NULL,
  `telf2` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
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
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `desdtt` varchar(40) DEFAULT NULL,
  `via` varchar(39) DEFAULT NULL,
  `nro` int(6) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `estado_l` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`),
  KEY `codserv` (`codserv`),
  KEY `desdtt` (`desdtt`),
  KEY `via` (`via`),
  KEY `nro` (`nro`),
  KEY `mac2` (`mac2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `fechacierre` */

DROP TABLE IF EXISTS `fechacierre`;

CREATE TABLE `fechacierre` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_inicio` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fechafin` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  UNIQUE KEY `codmasiva` (`codmasiva`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_inicio` (`fecha_inicio`),
  KEY `fechafin` (`fechafin`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_inicio`,`fechafin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `files_temp` */

DROP TABLE IF EXISTS `files_temp`;

CREATE TABLE `files_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hilos_apache` */

DROP TABLE IF EXISTS `hilos_apache`;

CREATE TABLE `hilos_apache` (
  `proceso` int(11) NOT NULL,
  `hora` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `mac_cpe_modem_direccion` */

DROP TABLE IF EXISTS `mac_cpe_modem_direccion`;

CREATE TABLE `mac_cpe_modem_direccion` (
  `macmodem` varchar(25) DEFAULT NULL,
  `maccpe` varchar(20) NOT NULL,
  `ippublica` varchar(20) DEFAULT NULL,
  `ipprivada` varchar(20) DEFAULT NULL,
  `cmts` varchar(30) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `codserv` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `nodo_ant` varchar(4) DEFAULT NULL,
  `troba_ant` varchar(5) DEFAULT NULL,
  `CODLEX` varchar(10) DEFAULT NULL,
  `CODTAP` varchar(10) DEFAULT NULL,
  `DESDPT` varchar(15) DEFAULT NULL,
  `DESPVC` varchar(30) DEFAULT NULL,
  `DESDTT` varchar(40) DEFAULT NULL,
  `TIPO_VIA` varchar(4) DEFAULT NULL,
  `VIA` varchar(39) DEFAULT NULL,
  `NRO` varchar(6) DEFAULT NULL,
  `PISO` varchar(4) DEFAULT NULL,
  `INTERIOR` varchar(7) DEFAULT NULL,
  `MZ` varchar(7) DEFAULT NULL,
  `LT` varchar(7) DEFAULT NULL,
  UNIQUE KEY `macmodem` (`macmodem`),
  KEY `DESDTT` (`DESDTT`),
  KEY `VIA` (`VIA`),
  KEY `NRO` (`NRO`),
  KEY `maccpe` (`maccpe`),
  KEY `ippublica` (`ippublica`),
  KEY `ipprivada` (`ipprivada`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes` */

DROP TABLE IF EXISTS `nclientes`;

CREATE TABLE `nclientes` (
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
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `NewIndex2` (`NAMECLIENT`),
  KEY `idxservicepackage` (`SERVICEPACKAGE`),
  KEY `idx3` (`SERVICEPACKAGECRMID`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `idxmovil` (`movil1`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `idx6` (`SCOPESGROUPMTA`),
  KEY `idxmtamac` (`MTAMAC`),
  KEY `idx7` (`IDSERVICIOMTA`),
  KEY `idxestado` (`ESTADO`),
  KEY `idproducto` (`idproducto`),
  KEY `idventa` (`idventa`),
  KEY `idxcodserv` (`codserv`),
  KEY `idxfv` (`f_v`),
  KEY `cmts` (`cmts`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`),
  KEY `idempresacrm` (`idempresacrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_balanceos` */

DROP TABLE IF EXISTS `scm_sum_balanceos`;

CREATE TABLE `scm_sum_balanceos` (
  `jefatura` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `tseg` decimal(46,0) DEFAULT NULL,
  `total_troba` decimal(46,0) DEFAULT NULL,
  `PorcSeg` decimal(52,2) DEFAULT NULL,
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `scm_sum_final_280` */

DROP TABLE IF EXISTS `scm_sum_final_280`;

CREATE TABLE `scm_sum_final_280` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `total` decimal(46,0) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `scm_sum_final_det` */

DROP TABLE IF EXISTS `scm_sum_final_det`;

CREATE TABLE `scm_sum_final_det` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `total` decimal(46,0) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `trobaseg` varchar(10) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`),
  KEY `troba` (`troba`),
  KEY `trobaseg` (`trobaseg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `scm_sum_final_total` */

DROP TABLE IF EXISTS `scm_sum_final_total`;

CREATE TABLE `scm_sum_final_total` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `total` decimal(46,0) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tb_tickets_dmpe` */

DROP TABLE IF EXISTS `tb_tickets_dmpe`;

CREATE TABLE `tb_tickets_dmpe` (
  `eventid` decimal(10,0) NOT NULL DEFAULT '0',
  `fecha` varchar(20) NOT NULL DEFAULT '',
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `tecnologia` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tempcli` */

DROP TABLE IF EXISTS `tempcli`;

CREATE TABLE `tempcli` (
  `codigo` int(11) NOT NULL,
  `bandeja` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
