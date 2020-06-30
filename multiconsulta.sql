/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - multiconsulta
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`multiconsulta` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `multiconsulta`;

/*Table structure for table `actsw` */

DROP TABLE IF EXISTS `actsw`;

CREATE TABLE `actsw` (
  `sw` int(11) DEFAULT NULL,
  KEY `sw` (`sw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cgnat_a_cpe` */

DROP TABLE IF EXISTS `cgnat_a_cpe`;

CREATE TABLE `cgnat_a_cpe` (
  `idclientecrm` int(11) DEFAULT NULL,
  `fecha_cambio` varchar(20) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `porque` varchar(100) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  UNIQUE KEY `idclientecrm` (`idclientecrm`),
  KEY `fecha_cambio` (`fecha_cambio`),
  KEY `porque` (`porque`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `intraway_logs` */

DROP TABLE IF EXISTS `intraway_logs`;

CREATE TABLE `intraway_logs` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `idusuario` int(11) unsigned NOT NULL,
  `fecha_mov` datetime DEFAULT NULL,
  `accion` varchar(75) CHARACTER SET utf8 NOT NULL,
  `codigo_cliente` varchar(50) CHARACTER SET utf8 NOT NULL,
  `interfaz_iw` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tramaxml` text CHARACTER SET utf8,
  `respuestaIW` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `multi_consultas` */

DROP TABLE IF EXISTS `multi_consultas`;

CREATE TABLE `multi_consultas` (
  `item` int(18) NOT NULL AUTO_INCREMENT,
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` int(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`tipobusqueda`,`dato`,`fechahora`),
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`fechahora`),
  KEY `NewIndex4` (`dato`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `mensaje` (`mensaje`),
  KEY `MACState` (`MACState`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM AUTO_INCREMENT=33781089 DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas_backup` */

DROP TABLE IF EXISTS `multi_consultas_backup`;

CREATE TABLE `multi_consultas_backup` (
  `item` int(18) NOT NULL AUTO_INCREMENT,
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` int(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`tipobusqueda`,`dato`,`fechahora`),
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`fechahora`),
  KEY `NewIndex4` (`dato`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `mensaje` (`mensaje`),
  KEY `MACState` (`MACState`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM AUTO_INCREMENT=31173797 DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas_c` */

DROP TABLE IF EXISTS `multi_consultas_c`;

CREATE TABLE `multi_consultas_c` (
  `item` int(18) NOT NULL AUTO_INCREMENT,
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` int(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`tipobusqueda`,`dato`,`fechahora`),
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`fechahora`),
  KEY `NewIndex4` (`dato`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `mensaje` (`mensaje`),
  KEY `MACState` (`MACState`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM AUTO_INCREMENT=33382819 DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas_errores` */

DROP TABLE IF EXISTS `multi_consultas_errores`;

CREATE TABLE `multi_consultas_errores` (
  `mensaje` varchar(500) DEFAULT NULL,
  `cadenasql` varchar(200) DEFAULT NULL,
  `idusuario` varchar(50) DEFAULT NULL,
  `fechaerror` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `nclientes` */

DROP TABLE IF EXISTS `nclientes`;

CREATE TABLE `nclientes` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` varchar(50) DEFAULT NULL,
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
  KEY `idempresacrm` (`idempresacrm`),
  KEY `FECHAALTA` (`FECHAALTA`),
  KEY `FECHAACTIVACION` (`FECHAACTIVACION`),
  KEY `numcoo_x` (`numcoo_x`),
  KEY `numcoo_y` (`numcoo_y`),
  KEY `scopegroupIndex` (`SCOPESGROUP`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_c` */

DROP TABLE IF EXISTS `nclientes_c`;

CREATE TABLE `nclientes_c` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` varchar(50) DEFAULT NULL,
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
  KEY `idempresacrm` (`idempresacrm`),
  KEY `FECHAALTA` (`FECHAALTA`),
  KEY `FECHAACTIVACION` (`FECHAACTIVACION`),
  KEY `numcoo_x` (`numcoo_x`),
  KEY `numcoo_y` (`numcoo_y`),
  KEY `scopegroupIndex` (`SCOPESGROUP`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_h` */

DROP TABLE IF EXISTS `nclientes_h`;

CREATE TABLE `nclientes_h` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` varchar(50) DEFAULT NULL,
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
  KEY `scopegroupIndex` (`SCOPESGROUP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `submodulos` */

DROP TABLE IF EXISTS `submodulos`;

CREATE TABLE `submodulos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `caracteristica` varchar(250) DEFAULT NULL,
  `icono` varchar(250) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `submodulos_permisos` */

DROP TABLE IF EXISTS `submodulos_permisos`;

CREATE TABLE `submodulos_permisos` (
  `id` int(11) NOT NULL,
  `idcliente` int(10) DEFAULT NULL,
  `idmodulo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_sub_per` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tbmsj` */

DROP TABLE IF EXISTS `tbmsj`;

CREATE TABLE `tbmsj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msj` varchar(500) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `fechahorafin` varchar(20) DEFAULT NULL,
  `cmts` varchar(60) DEFAULT NULL,
  `ptocmts` varchar(60) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cmts` (`cmts`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahorafin` (`fechahorafin`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `nclientes_csv` */

/*!50003 DROP PROCEDURE IF EXISTS  `nclientes_csv` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `nclientes_csv`()
BEGIN
SELECT 
EMPRESA,
IDCLIENTECRM,
idempresacrm,
idservicio,
idproducto,
idventa,
REPLACE(NAMECLIENT,',',' ') AS NAMECLIENT,
NODO,
TROBA,
amplificador,
tap,
telf1,
telf2,
f_v,
regver,
cmts,
MACADDRESS,
SERVICEPACKAGECRMID,
SERVICEPACKAGE,
CANTPCS,
FECHAALTA,
FECHAACTIVACION,
ESTADO,
SCOPESGROUP,
SCOPESGROUPCM,
SCOPESGROUPMTA,
MTAMAC,
IDSERVICIOMTA,
IDPRODUCTOMTA,
IDVENTAMTA,
MTAMODELNAME,
CMTSID,
UBICACIONENLARED,
IPCM,
DOCSISVERSION,
movil1,
mac2,
mac3,
REPLACE(direccion,',',' ') AS direccion,
codserv,
fecha_upload,
naked,
numcoo_x,
numcoo_y
FROM ccm1.nclientes 
INTO OUTFILE '/temp/nclientes_tmp.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_rellena_nodo_troba_cms` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_rellena_nodo_troba_cms` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_rellena_nodo_troba_cms`()
BEGIN
	TRUNCATE reportes.sinnodo;
	INSERT IGNORE reportes.sinnodo
	SELECT codserv,idclientecrm FROM multiconsulta.`nclientes_c` 
	WHERE (nodo='' OR nodo IS NULL ) AND codserv NOT IN (0,1792734,9677216,6647626,6974947)
	AND idclientecrm <10000000
	AND idclientecrm NOT IN (969625,161616,100000000006,100000000009998,1000000000083,1000000000010);
	UPDATE multiconsulta.nclientes_c a FORCE INDEX (idxcodserv,NewIndex1) 
		INNER JOIN reportes.`sinnodo` b FORCE INDEX (PRIMARY,idclientecrm)
		ON a.codserv=b.codserv AND a.idclientecrm=b.idclientecrm
		INNER JOIN cms.`planta_clarita` c FORCE INDEX (SERVICIO,CLIENTE)
		ON b.codserv=c.servicio AND b.idclientecrm=c.cliente
	SET a.nodo=c.nodo,c.troba=c.plano,a.amplificador=c.codlex,a.tap=c.codtap;
	
		UPDATE multiconsulta.nclientes_c a INNER JOIN catalogos.analgesico b ON a.IDCLIENTECRM=b.ClienteCms SET b.mensaje='ELIMINAR' WHERE a.SERVICEPACKAGECRMID<>'SP_2M_EMERGENCIA';
	DELETE FROM  catalogos.analgesico WHERE mensaje='ELIMINAR';
	
	INSERT IGNORE catalogos.analgesico SELECT a.idclientecrm,'NO GENERAR AVERIA </BR> CLIENTE CON DEUDA(DISMINUCION DE CANALES Y/O VELOCIDAD)' AS mensaje
	FROM multiconsulta.nclientes_c a LEFT JOIN catalogos.analgesico b ON a.IDCLIENTECRM=b.ClienteCms AND
	b.mensaje='NO GENERAR AVERIA </BR> CLIENTE CON DEUDA(DISMINUCION DE CANALES Y/O VELOCIDAD)'
	WHERE a.SERVICEPACKAGECRMID='SP_2M_EMERGENCIA' AND b.ClienteCms IS NULL;
	DELETE FROM catalogos.`analgesico` WHERE mensaje LIKE "GPON%";
	INSERT IGNORE catalogos.analgesico
	SELECT a.cliente,'GPON : NO GENERAR AVERIA </BR> CLIENTE CON DEUDA(DISMINUCION DE CANALES Y/O VELOCIDAD)' 
	FROM catalogos.`planta_movistar1`  a  INNER JOIN catalogos.degrada b
	ON a.telefono=b.telef
	WHERE tipoperu8k LIKE "%GPON%";
	
    END */$$
DELIMITER ;

/*Table structure for table `consultas_view` */

DROP TABLE IF EXISTS `consultas_view`;

/*!50001 DROP VIEW IF EXISTS `consultas_view` */;
/*!50001 DROP TABLE IF EXISTS `consultas_view` */;

/*!50001 CREATE TABLE  `consultas_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `fechahora` varchar(16) ,
 `cant` bigint(21) 
)*/;

/*View structure for view consultas_view */

/*!50001 DROP TABLE IF EXISTS `consultas_view` */;
/*!50001 DROP VIEW IF EXISTS `consultas_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `consultas_view` AS (select `multi_consultas`.`nodo` AS `nodo`,`multi_consultas`.`troba` AS `troba`,substr(`multi_consultas`.`fechahora`,1,16) AS `fechahora`,count(0) AS `cant` from `multi_consultas` where ((`multi_consultas`.`nodo` <> '') and (`multi_consultas`.`troba` <> '')) group by `multi_consultas`.`nodo`,`multi_consultas`.`troba`,substr(`multi_consultas`.`fechahora`,1,16)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
