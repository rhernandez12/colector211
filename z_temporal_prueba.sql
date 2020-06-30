/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_temporal_prueba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_temporal_prueba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_temporal_prueba`;

/*Table structure for table `borrar_idproducto` */

DROP TABLE IF EXISTS `borrar_idproducto`;

CREATE TABLE `borrar_idproducto` (
  `idproducto` double DEFAULT NULL,
  KEY `idproducto` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `borrar_idventa` */

DROP TABLE IF EXISTS `borrar_idventa`;

CREATE TABLE `borrar_idventa` (
  `idventa` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_casa` */

DROP TABLE IF EXISTS `nclientes_casa`;

CREATE TABLE `nclientes_casa` (
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
  KEY `TROBA` (`TROBA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_cisco` */

DROP TABLE IF EXISTS `nclientes_cisco`;

CREATE TABLE `nclientes_cisco` (
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
  KEY `TROBA` (`TROBA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `testeando` */

DROP TABLE IF EXISTS `testeando`;

CREATE TABLE `testeando` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `Multiconsulta` */

/*!50003 DROP PROCEDURE IF EXISTS  `Multiconsulta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `Multiconsulta`(in pregunta1 varchar(64))
BEGIN
SELECT a.codserv,a.IDCLIENTECRM as idclientecrm,a.estado AS estadoserv ,a.idservicio, a.idproducto, a.idventa,a.amplificador,a.idproductomta, a.nameclient, a.telf1, a.telf2,a.movil1, a.MACADDRESS,f.Fabricante, f.Modelo, 
f.Versioon AS Version_firmware, st.cmts,a.mtamac,IF(a.mtamac<>'N/D','Cliente Tiene VOIP','Cliente No Tiene VOIP') AS voip, IF(g.codreqmnt >0,g.codreqmnt,0) AS num_masiva,h.telefonohfc, a.mac2, n.veloc_comercial,'' AS fecha_corte, IF(a.estado='Inactivo','Cortado','Nada') AS corte, a.scopesgroup ,IF(px.nodo IS NOT NULL,'TRABAJO PROGRAMADO','') AS trab,ttpp.TIPODETRABAJO, a.nodo AS NODO,a.troba AS TROBA, n.velocidad_final AS SERVICEPACKAGE,n.velocidad_final ,IF(st.macstate LIKE '%nline%' ,CONCAT(k.tipopuerto,''),'') AS saturado, 
IF(ll.tipo='CAIDA MASIVA','Caida',IF(ll.tipo='CAIDA MASIVA AMPLIF','Caida Amplif',IF(ll.tipo='CAIDA SENAL','Señal_RF',IF(ll.tipo='CAIDA SENAL AMPLIF','Señal RF Amplif','')))) AS cliente_alerta
, TRIM(a.IPCM) AS IPAddress, IF(a.cmts='HIGUERETA3' AND SUBSTR(a.f_v,1,6) IN ('C5/0/0','C5/0/1','C5/0/2'), ss.description,CONCAT(a.nodo,' : ',a.troba)) AS Nodo_Troba, TIMEDIFF(NOW(),CONCAT(SUBSTR(g.fecreg,7,4),'-',SUBSTR(g.fecreg,4,2),'-',SUBSTR(g.fecreg,1,2),' ',SUBSTR(g.fecreg,12,8))) AS tiempo_masiva, IF(cc.entidad IS NOT NULL ,'CLIENTE INFLUYENTE','') AS tipocli, IF(nv.Interface IS NOT NULL,TRIM(nv.Interface),TRIM(st.Interface)) AS Interface,nv.USPwr,nv.USMER_SNR,nv.DSPwr,nv.DSMER_SNR,st.RxPwrdBmv,st.IPAddress,IF(st.MACState LIKE '%nline%','online',st.macstate) AS MACState,f.docsis,a.naked,'' AS velocidad_actual,
if(cv.codigo is not null,'CONVERGENTE','') AS convergente,if(r7.codcli is not null,r7.mensaje,'') as r7,if(pe.cliente is not null,'PE','') as pe,
IF(pf.grupo='MASIVO' and pf.sw=1,pf.grupo,if(pf.sw=1,CONCAT(pf.grupo,'-',pf.grupo_microzona),'')) AS tipotroba
FROM multiconsulta.nclientes a 
LEFT JOIN ccm1_data.marca_modelo_docsis_total_final f  ON a.MACADDRESS=f.MACAddress
LEFT JOIN catalogos.velocidades_cambios n ON a.SERVICEPACKAGE=n.SERVICEPACKAGE
LEFT JOIN dbpext.masivas_temp g ON a.nodo=g.codnod AND a.troba=g.nroplano
LEFT JOIN catalogos.telefonoshfc h ON a.MACADDRESS=h.macaddress
LEFT JOIN dbpext.trabajos_pendientes_view px  ON a.nodo=px.nodo AND a.troba=px.troba
LEFT JOIN reportes.clientes_en_puerto_saturado k  ON a.MACADDRESS=k.macaddress
LEFT JOIN alertasx.clientes_alertados ll ON a.MACADDRESS = ll.macaddress
LEFT JOIN catalogos.etiqueta_puertos ss ON a.cmts=ss.cmts AND a.f_v=ss.interface
LEFT JOIN reportes.criticos cc ON a.idclientecrm=cc.idclientecrm
LEFT JOIN ccm1.scm_phy_t nv ON a.mac2=nv.macaddress
LEFT JOIN ccm1.scm_total st ON a.mac2=st.macaddress	
left join catalogos.convergente cv on a.idclientecrm=cv.codigo
left join catalogos.reiteradas7dias r7 on a.idclientecrm=r7.codcli
left join catalogos.piloto_edificios pe on a.idclientecrm=pe.cliente
left join catalogos.premium_fases pf on concat(a.nodo,a.troba)=pf.troba
left join catalogos.trabajos_programados ttpp on px.tipodetrabajo = ttpp.id
WHERE 1=1 and a.IDCLIENTECRM=pregunta1  
GROUP BY a.`IDCLIENTECRM`,5,6;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
