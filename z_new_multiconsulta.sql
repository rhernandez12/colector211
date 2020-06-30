/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_multiconsulta
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_multiconsulta` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_multiconsulta`;

/*Table structure for table `clientes_no_catv` */

DROP TABLE IF EXISTS `clientes_no_catv`;

CREATE TABLE `clientes_no_catv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `enlacexmarca` */

DROP TABLE IF EXISTS `enlacexmarca`;

CREATE TABLE `enlacexmarca` (
  `fabricante` varchar(20) DEFAULT NULL,
  `link` varchar(10) DEFAULT NULL
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

/*Table structure for table `masivas_temp` */

DROP TABLE IF EXISTS `masivas_temp`;

CREATE TABLE `masivas_temp` (
  `check` int(11) NOT NULL AUTO_INCREMENT,
  `numfrecave` int(11) NOT NULL,
  `tipfrecave` varchar(2) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `codofcadm` varchar(3) DEFAULT NULL,
  `codcmts` varchar(1) DEFAULT NULL,
  `codnod` varchar(2) NOT NULL,
  `nroplano` varchar(4) NOT NULL,
  `codtrtrn` varchar(4) DEFAULT NULL,
  `edofrecave` varchar(1) DEFAULT NULL,
  `cantreq` int(11) DEFAULT NULL,
  `nrocant` int(11) DEFAULT NULL,
  `fecultact` varchar(20) DEFAULT NULL,
  `coddpt` varchar(3) DEFAULT NULL,
  `codpvc` varchar(3) DEFAULT NULL,
  `codreqmnt` int(11) NOT NULL,
  `codctr` int(11) DEFAULT NULL,
  `codedo` varchar(1) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `indorigreq` varchar(1) DEFAULT NULL,
  `cantreqliq` int(11) DEFAULT NULL,
  `codareahbl` varchar(10) DEFAULT NULL,
  `indactuacion` varchar(10) DEFAULT NULL,
  `indseginc` int(11) DEFAULT NULL,
  `indinc` int(11) DEFAULT NULL,
  `codinc` varchar(10) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex4` (`codnod`,`nroplano`),
  KEY `NewIndex1` (`codnod`),
  KEY `NewIndex2` (`nroplano`),
  KEY `NewIndex3` (`fecreg`),
  KEY `check` (`check`)
) ENGINE=MyISAM AUTO_INCREMENT=9272323 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=1450115 DEFAULT CHARSET=latin1;

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
  UNIQUE KEY `idxmacaddress` (`MACADDRESS`),
  KEY `idxidclientecrm` (`IDCLIENTECRM`),
  KEY `idxnamecliente` (`NAMECLIENT`),
  KEY `idxservicepackage` (`SERVICEPACKAGE`),
  KEY `idxservicepackagecrmid` (`SERVICEPACKAGECRMID`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `idxmovil` (`movil1`),
  KEY `idxmac2` (`mac2`),
  KEY `idxmac3` (`mac3`),
  KEY `idxscopegroupmta` (`SCOPESGROUPMTA`),
  KEY `idxmtamac` (`MTAMAC`),
  KEY `idxidserviciomta` (`IDSERVICIOMTA`),
  KEY `idxestado` (`ESTADO`),
  KEY `idxidproducto` (`idproducto`),
  KEY `idxidventa` (`idventa`),
  KEY `idxcodserv` (`codserv`),
  KEY `idxfv` (`f_v`),
  KEY `idxcmts` (`cmts`),
  KEY `idxnodo` (`NODO`),
  KEY `idxtroba` (`TROBA`),
  KEY `idxidempresacrm` (`idempresacrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `caidas_new_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `caidas_new_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `caidas_new_alimentador`()
BEGIN
SELECT *
FROM alertasx.caidas_new
INTO OUTFILE '/temp/caidas_new_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `clientes_alertados_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `clientes_alertados_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `clientes_alertados_alimentador`()
BEGIN
SELECT *
FROM alertasx.clientes_alertados
INTO OUTFILE '/temp/clientes_alertados_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `clientes_en_puerto_saturado_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `clientes_en_puerto_saturado_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `clientes_en_puerto_saturado_alimentador`()
BEGIN
SELECT *
FROM reportes.clientes_en_puerto_saturado
INTO OUTFILE '/temp/clientes_en_puerto_saturado_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `etiqueta_puertos_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `etiqueta_puertos_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `etiqueta_puertos_alimentador`()
BEGIN
SELECT *
FROM catalogos.etiqueta_puertos
INTO OUTFILE '/temp/etiqueta_puertos_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `masivas_temp_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `masivas_temp_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `masivas_temp_alimentador`()
BEGIN
SELECT *
FROM dbpext.masivas_temp
INTO OUTFILE '/temp/masivas_temp_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `mm_docsis_total_final_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `mm_docsis_total_final_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `mm_docsis_total_final_alimentador`()
BEGIN
SELECT *
FROM ccm1_data.marca_modelo_docsis_total_final
INTO OUTFILE '/temp/mm_docsis_total_final_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `n_clientes_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `n_clientes_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `n_clientes_alimentador`()
BEGIN
SELECT *
FROM multiconsulta.nclientes
INTO OUTFILE '/temp/n_clientes_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `premium_fases_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `premium_fases_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `premium_fases_alimentador`()
BEGIN
SELECT *
FROM catalogos.premium_fases
INTO OUTFILE '/temp/premium_fases_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `scm_phy_hist_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `scm_phy_hist_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `scm_phy_hist_alimentador`()
BEGIN
SELECT *
FROM ccm1.scm_phy_hist
INTO OUTFILE '/temp/scm_phy_hist_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `scm_phy_t_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `scm_phy_t_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `scm_phy_t_alimentador`()
BEGIN
SELECT *
FROM ccm1.scm_phy_t
INTO OUTFILE '/temp/scm_phy_t_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `scm_total_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `scm_total_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `scm_total_alimentador`()
BEGIN
SELECT *
FROM ccm1.scm_total
INTO OUTFILE '/temp/scm_total_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `telefonoshfc_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `telefonoshfc_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `telefonoshfc_alimentador`()
BEGIN
SELECT *
FROM catalogos.telefonoshfc
INTO OUTFILE '/temp/telefonoshfc_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipo_trabajos_programados_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipo_trabajos_programados_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `tipo_trabajos_programados_alimentador`()
BEGIN
SELECT *
FROM catalogos.trabajos_programados
INTO OUTFILE '/temp/tipo_trabajos_programados_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `trabajos_programados_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `trabajos_programados_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `trabajos_programados_alimentador`()
BEGIN
SELECT *
FROM dbpext.trabajos_programados
INTO OUTFILE '/temp/trabajos_programados_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `uso_portadoras_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `uso_portadoras_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `uso_portadoras_alimentador`()
BEGIN
SELECT *
FROM reportes.uso_portadoras
INTO OUTFILE '/temp/uso_portadoras_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `velocidades_cambios_alimentador` */

/*!50003 DROP PROCEDURE IF EXISTS  `velocidades_cambios_alimentador` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `velocidades_cambios_alimentador`()
BEGIN
SELECT *
FROM catalogos.velocidades_cambios
INTO OUTFILE '/temp/velocidades_cambios_alimentador.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
