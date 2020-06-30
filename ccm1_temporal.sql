/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - ccm1_temporal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1_temporal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1_temporal`;

/*Table structure for table `alarmas_caidas_historico` */

DROP TABLE IF EXISTS `alarmas_caidas_historico`;

CREATE TABLE `alarmas_caidas_historico` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `aver` bigint(21) DEFAULT '0',
  `llamadas` bigint(21) DEFAULT '0',
  `cant` int(21) DEFAULT NULL,
  `umbral` int(12) DEFAULT NULL,
  `off` int(21) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`nodo`,`troba`,`fecha_hora`,`fecha_fin`),
  KEY `idxnodo` (`nodo`),
  KEY `idxtroba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv_new_7` */

DROP TABLE IF EXISTS `averias_catv_new_7`;

CREATE TABLE `averias_catv_new_7` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(10) DEFAULT NULL,
  `nroplano` varchar(10) DEFAULT NULL,
  `fecha_proc` varchar(20) DEFAULT NULL,
  `fecha_file` varchar(50) DEFAULT NULL,
  `id2` varchar(50) DEFAULT NULL,
  `id` int(20) DEFAULT NULL,
  `dia_mov` varchar(20) DEFAULT NULL,
  `hora_mov` int(20) DEFAULT NULL,
  `codmotv` varchar(50) DEFAULT NULL,
  `desmotv` varchar(50) DEFAULT NULL,
  `tipreqfin` varchar(50) DEFAULT NULL,
  `destipreqfin` varchar(50) DEFAULT NULL,
  `tipave` varchar(50) DEFAULT NULL,
  `des_cod_liq` varchar(50) DEFAULT NULL,
  `codprbave` varchar(50) DEFAULT NULL,
  `desc_cod_det` varchar(50) DEFAULT NULL,
  `codmotvot` varchar(50) DEFAULT NULL,
  `desmotv2` varchar(50) DEFAULT NULL,
  `codtecliq` varchar(50) DEFAULT NULL,
  `nomtec` varchar(50) DEFAULT NULL,
  `desobsordtrab` varchar(50) DEFAULT NULL,
  `desobsordtrab_2` varchar(50) DEFAULT NULL,
  `canttroba` int(11) DEFAULT NULL,
  `tipodeingreso` varchar(100) DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `tipreqini` (`tipreqini`),
  KEY `fec_mov` (`fec_mov`),
  KEY `estado` (`estado`),
  KEY `codcli` (`codcli`),
  KEY `estado_2` (`estado`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averxtrob` */

DROP TABLE IF EXISTS `averxtrob`;

CREATE TABLE `averxtrob` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `aver` bigint(21) NOT NULL DEFAULT '0',
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `aver` (`fec_mov`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cant` */

DROP TABLE IF EXISTS `cant`;

CREATE TABLE `cant` (
  `idclientecrm` double DEFAULT NULL,
  `Activo` decimal(23,0) DEFAULT NULL,
  `Inactivo` decimal(23,0) DEFAULT NULL,
  `count(*)` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cmactivosdiario` */

DROP TABLE IF EXISTS `cmactivosdiario`;

CREATE TABLE `cmactivosdiario` (
  `IDCABLEMODEM` int(11) DEFAULT NULL,
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `IDEMPRESACRM` int(11) DEFAULT NULL,
  `IDSERVICIO` double DEFAULT NULL,
  `IDPRODUCTO` double DEFAULT NULL,
  `IDVENTA` double DEFAULT NULL,
  `PRODUCTNAME` varchar(100) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `CANTPCS` int(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `HUB` varchar(10) DEFAULT NULL,
  `NODO` varchar(10) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `MENSAJE` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(20) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(20) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(20) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `PROFILENAME` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACADDRESS`),
  UNIQUE KEY `idcablemodem` (`IDCABLEMODEM`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`EMPRESA`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `IDPRODUCTO` (`IDPRODUCTO`),
  KEY `IDEMPRESACRM` (`IDEMPRESACRM`),
  KEY `idventa` (`IDVENTA`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cuarentena_averias` */

DROP TABLE IF EXISTS `cuarentena_averias`;

CREATE TABLE `cuarentena_averias` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `codigoreq` int(11) DEFAULT NULL,
  `fecha_liquidacion` varchar(20) DEFAULT NULL,
  `contrataliq` int(11) DEFAULT NULL,
  `codigotipo_req` varchar(2) DEFAULT NULL,
  `codigomotivo_req` varchar(5) DEFAULT NULL,
  `tecnico` varchar(8) DEFAULT NULL,
  `codigodeliquidacion` varchar(3) DEFAULT NULL,
  `detalle_liquidacion` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `RxPwrdBmv` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `NODO` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `tap` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `telf1` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `telf2` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `movil1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `MACADDRESS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_x` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_y` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `codmotv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `desmotv` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tipreqini` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `desobsordtrab` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento',
  `codigomotivoreq` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Motivo Requerimiento',
  `codctr` int(11) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `pctr` varchar(100) DEFAULT NULL,
  `qctr` varchar(100) DEFAULT NULL,
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Caida` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Masiva` int(11) DEFAULT NULL,
  `edopend` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `STATUS` varchar(71) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tipoaveria` varchar(50) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `interfaces_lb` */

DROP TABLE IF EXISTS `interfaces_lb`;

CREATE TABLE `interfaces_lb` (
  `interbus` varchar(40) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  KEY `interbus` (`interbus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `macaddress` */

DROP TABLE IF EXISTS `macaddress`;

CREATE TABLE `macaddress` (
  `macaddress` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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
  `jefatura` varchar(30) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `tipologia` varchar(100) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `inactivo` int(11) DEFAULT NULL,
  `mododecreacion` varchar(20) DEFAULT NULL,
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
  KEY `idempresacrm` (`idempresacrm`),
  KEY `jefatura` (`jefatura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados` */

DROP TABLE IF EXISTS `trabajos_programados`;

CREATE TABLE `trabajos_programados` (
  `ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `AMP` varchar(80) DEFAULT NULL,
  `TIPODETRABAJO` varchar(200) DEFAULT NULL,
  `SUPERVISOR` varchar(150) DEFAULT NULL,
  `FINICIO` varchar(20) DEFAULT NULL,
  `HINICIO` varchar(10) DEFAULT NULL,
  `HTERMINO` varchar(10) DEFAULT NULL,
  `HORARIO` varchar(10) DEFAULT NULL,
  `CORTESN` varchar(10) DEFAULT NULL,
  `OPERADOR` varchar(100) DEFAULT NULL,
  `FECHA` varchar(20) DEFAULT NULL,
  `HORA` varchar(10) DEFAULT NULL,
  `TRABAJO` varchar(100) DEFAULT NULL,
  `REMEDY` varchar(10) DEFAULT NULL,
  `TECNICO` varchar(100) DEFAULT NULL,
  `RPM` varchar(10) DEFAULT NULL,
  `CONTRATA` varchar(50) DEFAULT NULL,
  `HORACIERRE` varchar(10) DEFAULT NULL,
  `OBSERVACIONES` varchar(500) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `fecha_apertura` varchar(20) DEFAULT NULL,
  `fecha_cierre` varchar(20) DEFAULT NULL,
  `fecha_cancela` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `usuario_apertura` varchar(20) DEFAULT NULL,
  `usuario_cierre` varchar(20) DEFAULT NULL,
  `usuario_cancela` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`),
  KEY `ESTADO` (`ESTADO`)
) ENGINE=MyISAM AUTO_INCREMENT=43752 DEFAULT CHARSET=latin1;

/*Table structure for table `trobasconcaidas_sms` */

DROP TABLE IF EXISTS `trobasconcaidas_sms`;

CREATE TABLE `trobasconcaidas_sms` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `sms_enviado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `idxunico` (`nodo`,`troba`,`fecha_hora`),
  KEY `idxnodo` (`nodo`),
  KEY `idxtroba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_ActualizaNclientes_ComplementoPHP` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ActualizaNclientes_ComplementoPHP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_ActualizaNclientes_ComplementoPHP`()
BEGIN
	UPDATE ccm1_temporal.cmactivosdiario SET mac3=REPLACE(macaddress,':','');
	UPDATE ccm1_temporal.cmactivosdiario SET mac2=CONCAT(SUBSTR(mac3,1,4),'.',SUBSTR(mac3,5,4),'.',SUBSTR(mac3,9,4));
	UPDATE ccm1_temporal.cmactivosdiario SET FECHAALTA=CONCAT(SUBSTR(FECHAALTA,7,4),'-',SUBSTR(FECHAALTA,4,2),'-',SUBSTR(FECHAALTA,1,2),' ',SUBSTR(FECHAALTA,12,5)),FECHAACTIVACION=CONCAT(SUBSTR(FECHAACTIVACION,7,4),'-',SUBSTR(FECHAACTIVACION,4,2),'-',SUBSTR(FECHAACTIVACION,1,2),' ',SUBSTR(FECHAACTIVACION,12,5));
	RENAME TABLE multiconsulta.nclientes TO multiconsulta.nclientes_d,multiconsulta.nclientes_c TO multiconsulta.nclientes,multiconsulta.nclientes_d TO multiconsulta.nclientes_c;
	UPDATE IGNORE multiconsulta.nclientes_c a FORCE INDEX (idproducto) INNER JOIN ccm1_temporal.cmactivosdiario b
	FORCE INDEX (IDPRODUCTO)
	ON a.idproducto=b.IDPRODUCTO
	SET
	a.idclientecrm=b.idclientecrm,a.macaddress=b.MACADDRESS,a.servicepackage=b.SERVICEPACKAGE,a.servicepackagecrmid=b.SERVICEPACKAGECRMID,
	a.FECHAACTIVACION=b.FECHAACTIVACION,a.FECHAALTA=b.FECHAALTA,a.estado=b.ESTADO,a.scopesgroup=b.SCOPESGROUP,a.scopesgroupcm=b.SCOPESGROUPCM,
	a.scopesgroupmta=b.SCOPESGROUPMTA,a.mtamac=b.MTAMAC,a.idserviciomta=b.IDSERVICIOMTA,a.idproductomta=b.IDPRODUCTOMTA,
	a.mac2=CONCAT(SUBSTR(b.MACADDRESS,1,2),SUBSTR(b.MACADDRESS,4,2),'.',SUBSTR(b.MACADDRESS,7,2),SUBSTR(b.MACADDRESS,10,2),'.',SUBSTR(b.MACADDRESS,13,2),SUBSTR(b.MACADDRESS,16,2)),a.mac3=REPLACE (b.MACADDRESS, ':','')
	WHERE a.idproducto>0 AND (a.estado<>b.ESTADO OR a.macaddress<>b.MACADDRESS OR a.servicepackage<>b.SERVICEPACKAGE) AND b.IDEMPRESACRM=127;
	UPDATE IGNORE multiconsulta.nclientes_c a FORCE INDEX (idventa) INNER JOIN ccm1_temporal.cmactivosdiario b  FORCE INDEX (IDVENTA)
	ON a.idventa=b.IDVENTA
	SET
	a.idclientecrm=b.idclientecrm,a.macaddress=b.MACADDRESS,a.servicepackage=b.SERVICEPACKAGE,a.servicepackagecrmid=b.SERVICEPACKAGECRMID,
	a.FECHAACTIVACION=b.FECHAACTIVACION,a.FECHAALTA=b.FECHAALTA,a.estado=b.ESTADO,a.scopesgroup=b.SCOPESGROUP,a.scopesgroupcm=b.SCOPESGROUPCM,
	a.scopesgroupmta=b.SCOPESGROUPMTA,a.mtamac=b.MTAMAC,a.idserviciomta=b.IDSERVICIOMTA,a.idproductomta=b.IDPRODUCTOMTA,
	a.mac2=CONCAT(SUBSTR(b.MACADDRESS,1,2),SUBSTR(b.MACADDRESS,4,2),'.',SUBSTR(b.MACADDRESS,7,2),SUBSTR(b.MACADDRESS,10,2),'.',SUBSTR(b.MACADDRESS,13,2),SUBSTR(b.MACADDRESS,16,2)),a.mac3=REPLACE (b.MACADDRESS,':','')
	WHERE a.idventa>0 AND (a.estado<>b.ESTADO or a.macaddress<>b.MACADDRESS or a.servicepackage<>b.SERVICEPACKAGE) and b.IDEMPRESACRM=127 ;
	UPDATE IGNORE multiconsulta.nclientes_c a FORCE INDEX (NewIndex5,NewIndex1) INNER JOIN ccm1_temporal.cmactivosdiario b
	FORCE INDEX (NewIndex5,NewIndex2)
	ON a.mac3=b.mac3
	SET
	a.idventa=b.idventa,a.idproducto=b.idproducto,a.idclientecrm=b.idclientecrm,a.servicepackage=b.SERVICEPACKAGE,a.servicepackagecrmid=b.SERVICEPACKAGECRMID,
	a.FECHAACTIVACION=b.FECHAACTIVACION,a.FECHAALTA=b.FECHAALTA,a.estado=b.ESTADO,a.scopesgroup=b.SCOPESGROUP,a.scopesgroupcm=b.SCOPESGROUPCM,
	a.scopesgroupmta=b.SCOPESGROUPMTA,a.nameclient=''
	WHERE a.idclientecrm<>b.idclientecrm AND b.IDEMPRESACRM=127;
	INSERT IGNORE  multiconsulta.nclientes_c
	SELECT
	a.EMPRESA,
	a.IDCLIENTECRM,
	a.IDEMPRESACRM,
	a.IDSERVICIO,
	a.IDPRODUCTO,
	a.IDVENTA,
	e.Nombre AS NAMECLIENT,
	'' AS NODO,
	'' AS TROBA,
	'' AS amplificador,
	'' tap,
	'' AS telf1,
	'' AS telf2,
	'' AS f_v,
	'0' AS regver,
	'' AS cmts,
	a.MACADDRESS,
	a.SERVICEPACKAGECRMID,
	a.SERVICEPACKAGE,
	a.CANTPCS,
	a.FECHAALTA,
	a.FECHAACTIVACION,
	a.ESTADO,
	a.SCOPESGROUP,
	a.SCOPESGROUPCM,
	a.SCOPESGROUPMTA,
	a.MTAMAC,
	a.IDSERVICIOMTA,
	a.IDPRODUCTOMTA,
	a.IDVENTAMTA,
	a.MTAMODELNAME,
	'' AS CMTSID,
	'' AS UBICACIONENLARED,
	e.IPCablemodem AS IPCM,
	'' AS DOCSISVERSION,
	'' AS movil1,
	CONCAT(SUBSTR(a.macaddress,1,2),SUBSTR(a.macaddress,4,2),'.',SUBSTR(a.macaddress,7,2),SUBSTR(a.macaddress,10,2),'.',SUBSTR(a.macaddress,13,2),
	SUBSTR(a.macaddress,16,2)) AS mac2,
	REPLACE (a.macaddress,':', '') AS mac3,
	'' AS direccion,
	'' AS codserv,
	NOW() AS fecha_upload,'' AS naked,'' AS numcoo_x,'' AS numcoo_y
	FROM ccm1_temporal.cmactivosdiario a
	FORCE INDEX(NewIndex1,IDEMPRESACRM,NewIndex2)
	LEFT JOIN ccm1_data.marca_modelo_docsis_total e FORCE INDEX(idxmac)
	ON a.MACADDRESS=e.MACAddress
	WHERE a.IDEMPRESACRM=127 AND a.idclientecrm>0;
	RENAME TABLE multiconsulta.nclientes TO multiconsulta.nclientes_d,multiconsulta.nclientes_c TO multiconsulta.nclientes,multiconsulta.nclientes_d TO multiconsulta.nclientes_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_actualiza_add_nclientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualiza_add_nclientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_actualiza_add_nclientes`()
BEGIN
	TRUNCATE TABLE  ccm1_temporal.cmactivosdiario_c;
	INSERT INTO ccm1_temporal.cmactivosdiario_c       
	SELECT a.* FROM ccm1_temporal.cmactivosdiario a FORCE INDEX(NewIndex1) LEFT JOIN multiconsulta.nclientes_c b FORCE INDEX (NewIndex3) ON a.macaddress=b.macaddress WHERE b.idclientecrm IS NULL;       
	UPDATE ccm1_temporal.cmactivosdiario_c SET mac3=REPLACE(macaddress,':','');
	UPDATE ccm1_temporal.cmactivosdiario_c SET mac2=CONCAT(SUBSTR(mac3,1,4),'.',SUBSTR(mac3,5,4),'.',SUBSTR(mac3,9,4));
	UPDATE ccm1_temporal.cmactivosdiario_c SET FECHAALTA=CONCAT(SUBSTR(FECHAALTA,7,4),'-',SUBSTR(FECHAALTA,4,2),'-',SUBSTR(FECHAALTA,1,2),' ',SUBSTR(FECHAALTA,12,5)),FECHAACTIVACION=CONCAT(SUBSTR(FECHAACTIVACION,7,4),'-',SUBSTR(FECHAACTIVACION,4,2),'-',SUBSTR(FECHAACTIVACION,1,2),' ',SUBSTR(FECHAACTIVACION,12,5));
	
	TRUNCATE TABLE  ccm1_temporal.nclientes_c;
	INSERT IGNORE  ccm1_temporal.nclientes_c
	SELECT
	a.EMPRESA,
	a.IDCLIENTECRM,
	a.IDEMPRESACRM,
	a.IDSERVICIO,
	a.IDPRODUCTO,
	a.IDVENTA,
	e.Nombre AS NAMECLIENT,
	'' AS NODO,
	'' AS TROBA,
	'' AS amplificador,
	'' tap,
	'' AS telf1,
	'' AS telf2,
	'' AS f_v,
	'0' AS regver,
	'' AS cmts,
	a.MACADDRESS,
	a.SERVICEPACKAGECRMID,
	a.SERVICEPACKAGE,
	a.CANTPCS,
	a.FECHAALTA,
	a.FECHAACTIVACION,
	a.ESTADO,
	a.SCOPESGROUP,
	a.SCOPESGROUPCM,
	a.SCOPESGROUPMTA,
	a.MTAMAC,
	a.IDSERVICIOMTA,
	a.IDPRODUCTOMTA,
	a.IDVENTAMTA,
	a.MTAMODELNAME,
	'' AS CMTSID,
	'' AS UBICACIONENLARED,
	e.IPCablemodem AS IPCM,
	'' AS DOCSISVERSION,
	'' AS movil1,
	mac2,
	mac3,
	'' AS direccion,
	'' AS codserv,
	NOW() AS fecha_upload,
	'' AS naked,
	'' AS numcoo_x,
	'' AS numcoo_y
	FROM ccm1_temporal.cmactivosdiario_c a
	FORCE INDEX(NewIndex1,IDEMPRESACRM,NewIndex2)
	LEFT JOIN ccm1_data.marca_modelo_docsis_total e FORCE INDEX(idxmac)
	ON a.MACADDRESS=e.MACAddress
	WHERE a.IDEMPRESACRM=127 AND a.idclientecrm>0;
	
	
	UPDATE ccm1_temporal.nclientes_c a FORCE INDEX (NewIndex1,NewIndex2)
	INNER JOIN ccm1.scm_total b FORCE INDEX (MACAddress) ON a.mac2=b.MACAddress
	SET a.cmts=b.cmts,a.f_v=b.interface,a.ipcm=b.`IPAddress`;
	UPDATE ccm1_temporal.nclientes_c a FORCE INDEX (NewIndex1,NewIndex2)
	LEFT JOIN ccm1.scm_phy_t b FORCE INDEX (NewIndex1) ON a.mac2=b.MACAddress
	SET a.cmts=b.cmts,a.f_v=b.interface;
	UPDATE ccm1_temporal.nclientes_c a  FORCE INDEX (NewIndex3)
	INNER JOIN ccm1_data.`marca_modelo_docsis_total_final` b FORCE INDEX (idxmac)
	ON a.`MACADDRESS`=b.MACAddress
	SET nameclient=b.Nombre,cmtsid=b.cmts;
	UPDATE ccm1_temporal.nclientes_c a FORCE INDEX(NewIndex1)
	INNER JOIN cms.planta_clarita b FORCE INDEX (CLIENTE) 
	ON a.idclientecrm=b.cliente AND b.unico='SI'
	SET a.nodo=b.NODO,a.troba=b.PLANO,a.amplificador=b.CODLEX,a.tap=b.CODTAP,
	a.direccion=b.DIREC_INST,a.`telf1`=b.`TELEFCL1`,a.`telf2`=b.`TELEFCL2`,a.`movil1`=b.`TELEFCL3`,a.`naked`=b.naked,a.codserv=b.servicio,
	a.`numcoo_x`=b.numcoo_x,a.`numcoo_y`=b.numcoo_y;
	UPDATE  ccm1_temporal.nclientes_c a FORCE INDEX(cmts,idxfv)
	INNER JOIN catalogos.etiqueta_puertos b FORCE INDEX(cmts,interface)
	ON a.cmts=b.cmts AND a.f_v=b.interface AND b.description<>'VACIO' 
	SET a.nodo=SUBSTR(b.description,1,2),a.troba=SUBSTR(b.description,4,4)
	WHERE  SUBSTR(b.description,1,7)<>CONCAT(a.nodo,' ',a.troba) 
	OR (a.nodo=''  OR nodo IS NULL) AND description NOT IN ('VACIO','');
	UPDATE ccm1_temporal.nclientes_c a FORCE INDEX(NewIndex3)
	INNER JOIN catalogos.telefonoshfc b FORCE INDEX (NewIndex3) 
	ON a.macaddress=b.macaddress 
	SET a.telf1=b.telefonohfc,a.`SCOPESGROUPMTA`=b.`gropoderedesmta`,
	a.`MTAMAC`=b.`macaddress`,a.`IDSERVICIOMTA`=b.idseserv,a.`IDPRODUCTOMTA`=b.idprov,
	a.`idventa`=idvent;
	RENAME TABLE multiconsulta.nclientes TO multiconsulta.nclientes_d,
	multiconsulta.nclientes_c TO multiconsulta.nclientes,
	multiconsulta.nclientes_d TO multiconsulta.nclientes_c;
       	
	INSERT INTO multiconsulta.nclientes_c SELECT * FROM ccm1_temporal.`nclientes_c`;
	TRUNCATE TABLE  ccm1_temporal.macaddress;
	INSERT INTO ccm1_temporal.macaddress
	SELECT a.macaddress FROM multiconsulta.nclientes_c  a FORCE INDEX(NewIndex3) 
	LEFT JOIN ccm1_temporal.cmactivosdiario b FORCE INDEX (NewIndex1) 
	ON a.macaddress=b.macaddress WHERE b.idclientecrm IS NULL;       
	UPDATE   ccm1_temporal.`macaddress` a FORCE INDEX (macaddress) INNER JOIN multiconsulta.`nclientes_c` b  FORCE INDEX(NewIndex3)  
	SET b.empresa='xxx' WHERE a.macaddress =b.macaddress;
	DELETE FROM multiconsulta.nclientes_c WHERE empresa='xxx';
	
	RENAME TABLE multiconsulta.nclientes TO multiconsulta.nclientes_d,
	multiconsulta.nclientes_c TO multiconsulta.nclientes,
	multiconsulta.nclientes_d TO multiconsulta.nclientes_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_data_alarm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_data_alarm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_data_alarm`()
BEGIN
IF (HOUR(NOW())>=4 AND HOUR(NOW())<=5) THEN
REPLACE cantroba
(SELECT nodo,troba,COUNT(*) AS cant , CONCAT(nodo,troba) AS clave FROM multiconsulta.nclientes
WHERE nodo IS NOT NULL
  GROUP BY 1,2);
END IF;
	#CALL catalogos.llamadasxtroba;	
		
#Inserta alertas por parametros, cada una con un color distinto	
###M1 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
TRUNCATE TABLE ccm1_temporal.consultasr;
INSERT INTO ccm1_temporal.consultasr
SELECT nodo,troba AS troban,SUBSTR(fechahora,1,16) AS fechahora,COUNT(*) AS cant FROM multiconsulta.multi_consultas 
WHERE macaddress<>''
GROUP BY 1,2;
TRUNCATE TABLE ccm1_temporal.consultasr_d_c;
INSERT IGNORE ccm1_temporal.consultasr_d_c
SELECT  dato,MAX(fechahora) AS fechahora,1 AS cant  FROM multiconsulta.multi_consultas
WHERE fechahora>=(SELECT CONCAT(SUBSTR(MIN(fecreg),7,4),'-',SUBSTR(MIN(fecreg),4,2),'-',SUBSTR(MIN(fecreg),1,2),' ',SUBSTR(MIN(fecreg),12,8)) 
FROM dbpext.masivas_temp)
GROUP BY 1;
TRUNCATE TABLE ccm1_temporal.`consultasr_n`;
INSERT INTO ccm1_temporal.`consultasr_n`
SELECT a.nodo,a.troba AS troban,b.fechahora,COUNT(*) AS cant FROM multiconsulta.nclientes a INNER JOIN
(SELECT SUBSTR(fechahora,1,13) AS fechahora,dato FROM ccm1_temporal.consultasr_d_c GROUP BY 1,2) b
ON a.idclientecrm=b.dato 
WHERE a.nodo IS NOT NULL
GROUP BY 1,2,3;
#####Amplif
TRUNCATE TABLE ccm1_temporal.`consultasr_amplif`;
INSERT INTO ccm1_temporal.`consultasr_amplif`
SELECT a.nodo,a.troba AS troban,a.amplificador,b.fechahora,COUNT(*) AS cant FROM multiconsulta.nclientes a INNER JOIN
ccm1_temporal.consultasr_d_c b
ON a.idclientecrm=b.dato 
WHERE a.nodo IS NOT NULL
GROUP BY 1,2,3,4;	
####CATV
TRUNCATE TABLE ccm1_temporal.`consultasr_catv_c`;
INSERT INTO ccm1_temporal.`consultasr_catv_c`
SELECT nodo,troba,SUBSTR(fechahora,1,16) AS fechahora,COUNT(*) AS cant FROM multiconsulta.multi_consultas 
GROUP BY 1,2,3;
RENAME TABLE ccm1_temporal.consultasr_catv TO ccm1_temporal.consultasr_catv_temp,
	     ccm1_temporal.consultasr_catv_c TO ccm1_temporal.consultasr_catv,
             ccm1_temporal.consultasr_catv_temp TO ccm1_temporal.consultasr_catv_c;
    END */$$
DELIMITER ;

/*Table structure for table `cant_caidas` */

DROP TABLE IF EXISTS `cant_caidas`;

/*!50001 DROP VIEW IF EXISTS `cant_caidas` */;
/*!50001 DROP TABLE IF EXISTS `cant_caidas` */;

/*!50001 CREATE TABLE  `cant_caidas`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `caidas` bigint(21) ,
 `off` decimal(21,0) ,
 `cantcli` decimal(21,0) 
)*/;

/*View structure for view cant_caidas */

/*!50001 DROP TABLE IF EXISTS `cant_caidas` */;
/*!50001 DROP VIEW IF EXISTS `cant_caidas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `cant_caidas` AS (select `alarmas_caidas_historico`.`nodo` AS `nodo`,`alarmas_caidas_historico`.`troba` AS `troba`,count(0) AS `caidas`,round(avg(`alarmas_caidas_historico`.`off`),0) AS `off`,round(avg(`alarmas_caidas_historico`.`cant`),0) AS `cantcli` from `alarmas_caidas_historico` where ((to_days(now()) - to_days(`alarmas_caidas_historico`.`fecha_hora`)) <= 7) group by `alarmas_caidas_historico`.`nodo`,`alarmas_caidas_historico`.`troba`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
