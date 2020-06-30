/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - dbpext
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbpext` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbpext`;

/*Table structure for table `asign_trabajos_supervidor` */

DROP TABLE IF EXISTS `asign_trabajos_supervidor`;

CREATE TABLE `asign_trabajos_supervidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsupervisor` int(11) DEFAULT NULL,
  `idtrabajos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4752 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `detalle_ttpp_afectacion` */

DROP TABLE IF EXISTS `detalle_ttpp_afectacion`;

CREATE TABLE `detalle_ttpp_afectacion` (
  `idclientecrm` int(11) DEFAULT NULL,
  `idttpp` int(11) DEFAULT NULL,
  UNIQUE KEY `idclientecrm` (`idclientecrm`,`idttpp`),
  KEY `idclientecrm_2` (`idclientecrm`),
  KEY `idttpp` (`idttpp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `liquidacionTTPP` */

DROP TABLE IF EXISTS `liquidacionTTPP`;

CREATE TABLE `liquidacionTTPP` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idttpp` int(11) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `porc_caida` varchar(10) DEFAULT NULL,
  `serv_afectado` varchar(100) DEFAULT NULL,
  `numreq` int(11) DEFAULT NULL,
  `remedy` varchar(30) DEFAULT NULL,
  `idcausalert` int(11) DEFAULT NULL,
  `idarearesponsable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`),
  KEY `idttpp` (`idttpp`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

/*Table structure for table `lista_equipos` */

DROP TABLE IF EXISTS `lista_equipos`;

CREATE TABLE `lista_equipos` (
  `ip` varchar(20) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `equipo` varchar(60) DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `conexion` varchar(20) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_historico` */

DROP TABLE IF EXISTS `masivas_historico`;

CREATE TABLE `masivas_historico` (
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
  UNIQUE KEY `NewIndex4` (`codreqmnt`),
  KEY `NewIndex1` (`codnod`),
  KEY `NewIndex2` (`nroplano`),
  KEY `NewIndex3` (`fecreg`),
  KEY `check` (`check`)
) ENGINE=MyISAM AUTO_INCREMENT=8900873 DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_historicox` */

DROP TABLE IF EXISTS `masivas_historicox`;

CREATE TABLE `masivas_historicox` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_temp_c` */

DROP TABLE IF EXISTS `masivas_temp_c`;

CREATE TABLE `masivas_temp_c` (
  `check` varchar(2) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_tempx` */

DROP TABLE IF EXISTS `masivas_tempx`;

CREATE TABLE `masivas_tempx` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_tempx_c` */

DROP TABLE IF EXISTS `masivas_tempx_c`;

CREATE TABLE `masivas_tempx_c` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `negocios` */

DROP TABLE IF EXISTS `negocios`;

CREATE TABLE `negocios` (
  `CLIENTE` int(11) DEFAULT NULL,
  `CUENTA` int(11) DEFAULT NULL,
  `SERVICIO` int(11) DEFAULT NULL,
  `CON_SRV` int(11) DEFAULT NULL,
  `CLASESRV` int(11) DEFAULT NULL,
  `TIPOSRV` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(2) DEFAULT NULL,
  `OFI_CLI` varchar(20) DEFAULT NULL,
  `OFI_SRV` varchar(20) DEFAULT NULL,
  `CODDPT` int(11) DEFAULT NULL,
  `DESDPT` varchar(100) DEFAULT NULL,
  `CODPVC` int(11) DEFAULT NULL,
  `DESPVC` varchar(100) DEFAULT NULL,
  `CODDTT` int(11) DEFAULT NULL,
  `DESDTT` varchar(100) DEFAULT NULL,
  `INDFACT` varchar(5) DEFAULT NULL,
  `NODO` varchar(5) DEFAULT NULL,
  `PLANO` varchar(5) DEFAULT NULL,
  `CODLEX` int(11) DEFAULT NULL,
  `CODTAP` int(11) DEFAULT NULL,
  `CODBOR` int(11) DEFAULT NULL,
  `IND_VIP` varchar(5) DEFAULT NULL,
  `TIPO_DOCUM` varchar(5) DEFAULT NULL,
  `NUMERORUC` int(25) DEFAULT NULL,
  `NUMERODOC` varchar(14) DEFAULT NULL,
  `TELEFCL1` varchar(14) DEFAULT NULL,
  `TELEFCL2` varchar(14) DEFAULT NULL,
  `TELEFCL3` varchar(14) DEFAULT NULL,
  `APE_PAT` varchar(50) DEFAULT NULL,
  `APE_MAT` varchar(50) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `PETATIS` varchar(50) DEFAULT NULL,
  `UBIPLAN` int(11) DEFAULT NULL,
  `PAIS` varchar(50) DEFAULT NULL,
  `UBIGEO` int(11) DEFAULT NULL,
  `ZONAL_ANT` varchar(50) DEFAULT NULL,
  `REGION` varchar(50) DEFAULT NULL,
  `ZONAL_NEW` varchar(50) DEFAULT NULL,
  `IND_DUNA` varchar(50) DEFAULT NULL,
  `AÑO_DUN` varchar(50) DEFAULT NULL,
  `CRUCE` varchar(50) DEFAULT NULL,
  `PAQUETE` varchar(50) DEFAULT NULL,
  `PAQUETE1` varchar(50) DEFAULT NULL,
  `SUB_NEG` varchar(50) DEFAULT NULL,
  `PROVEEDOR` varchar(50) DEFAULT NULL,
  `TECNOLOGIA` varchar(50) DEFAULT NULL,
  `PERU8K` varchar(50) DEFAULT NULL,
  `EX_CTA` varchar(50) DEFAULT NULL,
  `MARCAA` int(11) DEFAULT NULL,
  `CND_SRV_01` int(11) DEFAULT NULL,
  `CND_SRV_02` int(11) DEFAULT NULL,
  `CND_SRV_03` int(11) DEFAULT NULL,
  `EXCLUSANT` varchar(50) DEFAULT NULL,
  `PROV_ANT` varchar(50) DEFAULT NULL,
  `NEGO_ANT` varchar(50) DEFAULT NULL,
  `CSER_ANT` int(11) DEFAULT NULL,
  `PAQU_ANT` varchar(50) DEFAULT NULL,
  `PAQU1_ANT` varchar(50) DEFAULT NULL,
  `SEGMENTO` varchar(50) DEFAULT NULL,
  `MARCA_SUS` int(11) DEFAULT NULL,
  `EXCLU_SUS` varchar(50) DEFAULT NULL,
  `EX_BJ_INCO` varchar(50) DEFAULT NULL,
  `IND_EXCLUS` varchar(50) DEFAULT NULL,
  `MARCAB` varchar(50) DEFAULT NULL,
  `FEPROC` varchar(20) DEFAULT NULL,
  `SEG_CMS` varchar(30) DEFAULT NULL,
  `SEGMENTO_NEG` varchar(30) DEFAULT NULL,
  `SUBSEGMENTO_NEG` varchar(30) DEFAULT NULL,
  `TIPREQ` varchar(30) DEFAULT NULL,
  `CODMOTV` varchar(30) DEFAULT NULL,
  `FECREGSRV` varchar(20) DEFAULT NULL,
  `DIGITALIZADO` varchar(30) DEFAULT NULL,
  `FECHASUSPENSION` varchar(30) DEFAULT NULL,
  `TIPOREQSUSPENSION` varchar(30) DEFAULT NULL,
  `CODCLI` int(11) DEFAULT NULL,
  `CLIENTE_1` varchar(150) DEFAULT NULL,
  `RUC` varchar(20) DEFAULT NULL,
  KEY `CLIENTE` (`CLIENTE`),
  KEY `NODO` (`NODO`),
  KEY `PLANO` (`PLANO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `supervisor` */

DROP TABLE IF EXISTS `supervisor`;

CREATE TABLE `supervisor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supervisor` varchar(150) DEFAULT NULL,
  `supervisor1` varchar(150) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Table structure for table `tempcli` */

DROP TABLE IF EXISTS `tempcli`;

CREATE TABLE `tempcli` (
  `codcli` int(11) DEFAULT NULL,
  KEY `NewIndex1` (`codcli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `tempmac` */

DROP TABLE IF EXISTS `tempmac`;

CREATE TABLE `tempmac` (
  `macaddress` varchar(25) NOT NULL,
  UNIQUE KEY `NewIndex1` (`macaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trabProgHist` */

DROP TABLE IF EXISTS `trabProgHist`;

CREATE TABLE `trabProgHist` (
  `idMov` int(11) NOT NULL AUTO_INCREMENT,
  `idTrab` int(11) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `fechaMov` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idMov`),
  KEY `idtrab` (`idTrab`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `estado` (`estado`),
  KEY `usuario` (`usuario`),
  KEY `fechaMov` (`fechaMov`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `trabajos_programados_amplif` */

DROP TABLE IF EXISTS `trabajos_programados_amplif`;

CREATE TABLE `trabajos_programados_amplif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idttpp` int(11) DEFAULT NULL,
  `nodo` int(11) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amp` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idttpp_2` (`idttpp`,`nodo`,`troba`),
  KEY `idttpp` (`idttpp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `trabajos_programados_noc` */

DROP TABLE IF EXISTS `trabajos_programados_noc`;

CREATE TABLE `trabajos_programados_noc` (
  `ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `DESNODO` varchar(100) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `USUARIOAPERTURANOC` varchar(50) DEFAULT NULL,
  `CONTRATAAPERTURA` varchar(40) DEFAULT NULL,
  `NOMBRETECNICOAPERTURA` varchar(100) DEFAULT NULL,
  `CARNETTECNICOAPERTURA` varchar(20) DEFAULT NULL,
  `CELULARTECNICOAPERTURA` int(10) DEFAULT NULL,
  `SUPERVISORCONTRATA` varchar(100) DEFAULT NULL,
  `CELULARSUPERVISORCONTRATA` int(10) DEFAULT NULL,
  `FECHAAPERTURA` varchar(10) DEFAULT NULL,
  `HORAAPERTURA` varchar(10) DEFAULT NULL,
  `OBSERVACIONAPERTURA` varchar(500) DEFAULT NULL,
  `SUPERVISORTDP` varchar(100) DEFAULT NULL,
  `CELULARSUPERVISORTDP` int(10) DEFAULT NULL,
  `AMP` varchar(80) DEFAULT NULL,
  `TIPODETRABAJO` varchar(200) DEFAULT NULL,
  `AFECTACION` varchar(50) DEFAULT NULL,
  `FINICIO` varchar(20) DEFAULT NULL,
  `HINICIO` varchar(10) DEFAULT NULL,
  `HTERMINO` varchar(10) DEFAULT NULL,
  `HORARIO` varchar(10) DEFAULT NULL,
  `CORTESN` varchar(10) DEFAULT NULL,
  `REMEDY` varchar(20) DEFAULT NULL,
  `FECHACANCELA` varchar(20) DEFAULT NULL,
  `USUARIOCANCELA` varchar(20) DEFAULT NULL,
  `OBSERVACIONCANCELA` varchar(500) DEFAULT NULL,
  `ESTADO` varchar(15) DEFAULT NULL,
  `OBSERVACIONREGISTRO` varchar(500) DEFAULT NULL,
  `HORAREGISTRO` varchar(10) DEFAULT NULL,
  `USUARIOREGISTRO` varchar(20) DEFAULT NULL,
  `FECHAREGISTRO` varchar(20) DEFAULT NULL,
  `REQCMS` int(11) DEFAULT NULL,
  `USUARIOCIERRE` varchar(20) DEFAULT NULL,
  `CONTRATACIERRE` varchar(50) DEFAULT NULL,
  `CARNETTECNICOCIERRE` varchar(100) DEFAULT NULL,
  `NOMBRETECNICOCIERRE` varchar(100) DEFAULT NULL,
  `CELULARTECNICOCIERRE` int(10) DEFAULT NULL,
  `FECHACIERRE` varchar(20) DEFAULT NULL,
  `HORACIERRE` varchar(10) DEFAULT NULL,
  `ENVIOCIERRE` varchar(200) DEFAULT NULL,
  `ELEMENTOTRABAJADO` varchar(50) DEFAULT NULL,
  `OBSERVACIONCIERRE` varchar(500) DEFAULT NULL,
  `TROBASHIJAS` varchar(40) DEFAULT NULL,
  `ESTADOCMS` varchar(50) DEFAULT NULL,
  `INCIDENCIASTTP` varchar(200) DEFAULT NULL,
  `CODIGODELIQUIDACION` varchar(2) DEFAULT NULL,
  `FECHALIQUIDA` varchar(10) DEFAULT NULL,
  `HORALIQUIDA` varchar(20) DEFAULT NULL,
  `DETALLEDELIQUIDACION` varchar(2) DEFAULT NULL,
  `IMAGENAPERTURA` varchar(100) DEFAULT NULL,
  `IMAGENCIERRE` varchar(100) DEFAULT NULL,
  `FECHAREAPERTURA` varchar(20) DEFAULT NULL,
  `HORAREAPERTURA` varchar(10) DEFAULT NULL,
  `NOMBRETECNICOREAPERTURA` varchar(100) DEFAULT NULL,
  `CELULARTECNICOREAPERTURA` varchar(10) DEFAULT NULL,
  `CONTRATAREAPERTURA` varchar(20) DEFAULT NULL,
  `OBSERVACIONREAPERTURA` varchar(500) DEFAULT NULL,
  `CARNETTECNICOREAPERTURA` varchar(10) DEFAULT NULL,
  `USUARIOREAPERTURANOC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`),
  KEY `ESTADO` (`ESTADO`),
  KEY `SUPERVISOR` (`CARNETTECNICOCIERRE`),
  KEY `FECHAAPERTURA` (`FECHAAPERTURA`),
  KEY `HINICIO` (`HINICIO`),
  KEY `HTERMINO` (`HTERMINO`)
) ENGINE=MyISAM AUTO_INCREMENT=12116 DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados_noc_d` */

DROP TABLE IF EXISTS `trabajos_programados_noc_d`;

CREATE TABLE `trabajos_programados_noc_d` (
  `ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `DESNODO` varchar(100) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `USUARIOAPERTURANOC` varchar(50) DEFAULT NULL,
  `CONTRATAAPERTURA` varchar(40) DEFAULT NULL,
  `NOMBRETECNICOAPERTURA` varchar(100) DEFAULT NULL,
  `CARNETTECNICOAPERTURA` varchar(20) DEFAULT NULL,
  `CELULARTECNICOAPERTURA` int(10) DEFAULT NULL,
  `SUPERVISORCONTRATA` varchar(100) DEFAULT NULL,
  `CELULARSUPERVISORCONTRATA` int(10) DEFAULT NULL,
  `FECHAAPERTURA` varchar(10) DEFAULT NULL,
  `HORAAPERTURA` varchar(10) DEFAULT NULL,
  `OBSERVACIONAPERTURA` varchar(500) DEFAULT NULL,
  `SUPERVISORTDP` varchar(100) DEFAULT NULL,
  `CELULARSUPERVISORTDP` int(10) DEFAULT NULL,
  `AMP` varchar(80) DEFAULT NULL,
  `TIPODETRABAJO` varchar(200) DEFAULT NULL,
  `AFECTACION` varchar(50) DEFAULT NULL,
  `FINICIO` varchar(20) DEFAULT NULL,
  `HINICIO` varchar(10) DEFAULT NULL,
  `HTERMINO` varchar(10) DEFAULT NULL,
  `HORARIO` varchar(10) DEFAULT NULL,
  `CORTESN` varchar(10) DEFAULT NULL,
  `REMEDY` varchar(20) DEFAULT NULL,
  `FECHACANCELA` varchar(20) DEFAULT NULL,
  `USUARIOCANCELA` varchar(20) DEFAULT NULL,
  `OBSERVACIONCANCELA` varchar(500) DEFAULT NULL,
  `ESTADO` varchar(15) DEFAULT NULL,
  `OBSERVACIONREGISTRO` varchar(500) DEFAULT NULL,
  `HORAREGISTRO` varchar(10) DEFAULT NULL,
  `USUARIOREGISTRO` varchar(20) DEFAULT NULL,
  `FECHAREGISTRO` varchar(20) DEFAULT NULL,
  `REQCMS` int(11) DEFAULT NULL,
  `USUARIOCIERRE` varchar(20) DEFAULT NULL,
  `CONTRATACIERRE` varchar(50) DEFAULT NULL,
  `CARNETTECNICOCIERRE` varchar(100) DEFAULT NULL,
  `NOMBRETECNICOCIERRE` varchar(100) DEFAULT NULL,
  `CELULARTECNICOCIERRE` int(10) DEFAULT NULL,
  `FECHACIERRE` varchar(20) DEFAULT NULL,
  `HORACIERRE` varchar(10) DEFAULT NULL,
  `ENVIOCIERRE` varchar(200) DEFAULT NULL,
  `ELEMENTOTRABAJADO` varchar(50) DEFAULT NULL,
  `OBSERVACIONCIERRE` varchar(500) DEFAULT NULL,
  `TROBASHIJAS` varchar(40) DEFAULT NULL,
  `ESTADOCMS` varchar(50) DEFAULT NULL,
  `INCIDENCIASTTP` varchar(200) DEFAULT NULL,
  `CODIGODELIQUIDACION` varchar(2) DEFAULT NULL,
  `FECHALIQUIDA` varchar(10) DEFAULT NULL,
  `HORALIQUIDA` varchar(20) DEFAULT NULL,
  `DETALLEDELIQUIDACION` varchar(2) DEFAULT NULL,
  `IMAGENAPERTURA` varchar(100) DEFAULT NULL,
  `IMAGENCIERRE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`),
  KEY `ESTADO` (`ESTADO`),
  KEY `SUPERVISOR` (`CARNETTECNICOCIERRE`),
  KEY `FECHAAPERTURA` (`FECHAAPERTURA`),
  KEY `HINICIO` (`HINICIO`),
  KEY `HTERMINO` (`HTERMINO`)
) ENGINE=MyISAM AUTO_INCREMENT=11794 DEFAULT CHARSET=latin1;

/*Table structure for table `ttppRreaperturados` */

DROP TABLE IF EXISTS `ttppRreaperturados`;

CREATE TABLE `ttppRreaperturados` (
  `idttpp` int(11) DEFAULT NULL,
  `fechareapertura` varchar(20) DEFAULT NULL,
  `motivoReapertura` int(11) DEFAULT NULL,
  `usuarioReapertura` varchar(20) DEFAULT NULL,
  KEY `idttpp` (`idttpp`),
  KEY `fechareapertura` (`fechareapertura`),
  KEY `motivoReapertura` (`motivoReapertura`),
  KEY `usuarioReapertura` (`usuarioReapertura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `validaip` */

DROP TABLE IF EXISTS `validaip`;

CREATE TABLE `validaip` (
  `codcli` int(11) DEFAULT NULL,
  KEY `NewIndex1` (`codcli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_alerta_clientes_ttpp` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_alerta_clientes_ttpp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_alerta_clientes_ttpp`()
BEGIN
SELECT 'CODCLIENTE','FECHA_INICIO','HORA_INICIO','TIPO','DURACION','LOCUCION','COD_AVERIA'
UNION
SELECT a.idclientecrm,SUBSTR(b.finicio,1,10) AS finicio,SUBSTR(b.hinicio,1,5) AS hinicio,2,
LEFT(TIMEDIFF(CONCAT(finicio,' ',htermino),CONCAT(finicio,' ',hinicio)),2)*1 AS duracion,
IF(ttpp='TTPP',2,0) AS locucion,0 AS codaveria
FROM reportes.alertas_today_detalle a INNER JOIN reportes.alertas_today b
ON a.nodo=b.nodo AND a.troba=b.troba
WHERE b.ttpp='TTPP'
AND b.estado IN ('ENPROCESO','RE-APERTURA')
UNION
SELECT a.idclientecrm,SUBSTR(b.finicio,1,10) AS finicio,SUBSTR(b.hinicio,1,5) AS hinicio,4 AS  tipodetrabajo,
6 AS duracion,
IF(ttpp='CAIDA',4,0) AS locucion,0 AS codaveria
FROM reportes.alertas_today_detalle a INNER JOIN reportes.alertas_today b
ON a.nodo=b.nodo AND a.troba=b.troba
WHERE b.ttpp='CAIDA' AND estado_gestion IN ('Cayo Luz Domiciliaria ','Asignado: Energia')
AND b.estado='ABIERTA'
UNION
SELECT a.idclientecrm,SUBSTR(b.finicio,1,10) AS finicio,SUBSTR(b.hinicio,1,5) AS hinicio,1 AS tipodetrabajo,
24 AS duracion,
IF(ttpp='CAIDA',1,0) AS locucion,0 AS codaveria
FROM reportes.alertas_today_detalle a INNER JOIN reportes.alertas_today b
ON a.nodo=b.nodo AND a.troba=b.troba
WHERE b.ttpp='CAIDA' AND estado_gestion IN ('Troba con Ruido / Clientes Rec','Asignado: Planta Externa','PENDIENTE DE RUTA PEXT')
AND b.estado='ABIERTA'
UNION
SELECT a.idclientecrm AS CODCLIENTE,SUBSTR(fecha_hora,1,10) AS FECHA_INICIO,
SUBSTR(fecha_hora,12,5) AS HORA_INICIO,5 AS TIPO,6 AS DURACION,5 AS LOCUCION ,0 AS COD_AVERIA
FROM ccm1.scm_total_r b FORCE INDEX(MACAddress,cmts,MACState) 
INNER JOIN multiconsulta.nclientes_c a FORCE INDEX(NewIndex4)
ON a.mac2=b.MACAddress
WHERE b.macstate IN ('DHCP','init(d)','init(i)','init(o)')	 AND 
b.cmts IN (SELECT cmts FROM ccm1.Status_cablemodems 
WHERE init_d+init_o+init_i>30 GROUP BY cmts)
INTO OUTFILE '/temp/detalle_alerta_clientes.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
	
SELECT 'FECHA_INICIO','HORA_INICIO','TIPO','DURACION','LOCUCION','CMTS','INTERFAZ','NODO','TROBA','AMPLIFICADOR','COD_AVERIA'
UNION
SELECT SUBSTR(finicio,1,10) AS FECHA_INICIO,
SUBSTR(hinicio,1,5) AS HORA_INICIO,
2 AS TIPO,LEFT(TIMEDIFF(CONCAT(finicio,' ',htermino),CONCAT(finicio,' ',hinicio)),2)*1 AS DURACION,
2 AS LOCUCION,'' AS CMTS,'' AS INTERFACE,NODO,TROBA,
'' AS AMPLIFICADOR,
0 AS COD_AVERIA  
FROM  reportes.alertas_today 
WHERE ttpp='TTPP' AND estado IN ('ENPROCESO','RE-APERTURA')
UNION
SELECT SUBSTR(finicio,1,10) AS FECHA_INICIO,
SUBSTR(hinicio,1,5) AS HORA_INICIO,
4 AS TIPO,6 AS DURACION,
4 AS LOCUCION,'' AS CMTS,'' AS INTERFACE,NODO,TROBA,
'' AS AMPLIFICADOR,
0 AS COD_AVERIA  
FROM  reportes.alertas_today 
WHERE ttpp='CAIDA' AND estado_gestion IN ('Cayo Luz Domiciliaria ','Asignado: Energia')
AND estado='ABIERTA'
UNION
SELECT SUBSTR(finicio,1,10) AS FECHA_INICIO,
SUBSTR(hinicio,1,5) AS HORA_INICIO,
1 AS TIPO,24 AS DURACION,
1 AS LOCUCION,'' AS CMTS,'' AS INTERFACE,NODO,TROBA,
'' AS AMPLIFICADOR,
0 AS COD_AVERIA  
FROM  reportes.alertas_today 
WHERE ttpp='CAIDA' AND estado_gestion IN ('Troba con Ruido / Clientes Rec','Asignado: Planta Externa','PENDIENTE DE RUTA PEXT')
AND estado='ABIERTA'
INTO OUTFILE '/temp/alerta_masiva_hfc.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/*Table structure for table `digitalizacion_view` */

DROP TABLE IF EXISTS `digitalizacion_view`;

/*!50001 DROP VIEW IF EXISTS `digitalizacion_view` */;
/*!50001 DROP TABLE IF EXISTS `digitalizacion_view` */;

/*!50001 CREATE TABLE  `digitalizacion_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(15) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(10) ,
 `fecha_cierre` varchar(20) ,
 `fecha_registro` varchar(20) ,
 `MENSAJE` varchar(56) 
)*/;

/*Table structure for table `repmasivas_view` */

DROP TABLE IF EXISTS `repmasivas_view`;

/*!50001 DROP VIEW IF EXISTS `repmasivas_view` */;
/*!50001 DROP TABLE IF EXISTS `repmasivas_view` */;

/*!50001 CREATE TABLE  `repmasivas_view`(
 `Oficina` varchar(50) ,
 `codnod` varchar(50) ,
 `nroplano` varchar(50) ,
 `anio` varchar(4) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `trabajos_pendientes_view` */

DROP TABLE IF EXISTS `trabajos_pendientes_view`;

/*!50001 DROP VIEW IF EXISTS `trabajos_pendientes_view` */;
/*!50001 DROP TABLE IF EXISTS `trabajos_pendientes_view` */;

/*!50001 CREATE TABLE  `trabajos_pendientes_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(15) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(10) 
)*/;

/*Table structure for table `trabajos_prog_offline` */

DROP TABLE IF EXISTS `trabajos_prog_offline`;

/*!50001 DROP VIEW IF EXISTS `trabajos_prog_offline` */;
/*!50001 DROP TABLE IF EXISTS `trabajos_prog_offline` */;

/*!50001 CREATE TABLE  `trabajos_prog_offline`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `amplificador` varchar(4) ,
 `offline` bigint(21) 
)*/;

/*Table structure for table `trapb_prog_caidas` */

DROP TABLE IF EXISTS `trapb_prog_caidas`;

/*!50001 DROP VIEW IF EXISTS `trapb_prog_caidas` */;
/*!50001 DROP TABLE IF EXISTS `trapb_prog_caidas` */;

/*!50001 CREATE TABLE  `trapb_prog_caidas`(
 `jefatura` varchar(10) ,
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `amplificador` varchar(11) ,
 `cancli` bigint(21) ,
 `offline` bigint(21) ,
 `fecha_hora` varchar(31) ,
 `estado` varchar(10) ,
 `tiempo` varchar(10) ,
 `fecha_digi` char(0) ,
 `digi` char(0) ,
 `amp` varchar(80) ,
 `esta` varchar(1) ,
 `namp` varchar(82) 
)*/;

/*Table structure for table `ttpp_view` */

DROP TABLE IF EXISTS `ttpp_view`;

/*!50001 DROP VIEW IF EXISTS `ttpp_view` */;
/*!50001 DROP TABLE IF EXISTS `ttpp_view` */;

/*!50001 CREATE TABLE  `ttpp_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(15) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(10) 
)*/;

/*View structure for view digitalizacion_view */

/*!50001 DROP TABLE IF EXISTS `digitalizacion_view` */;
/*!50001 DROP VIEW IF EXISTS `digitalizacion_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `digitalizacion_view` AS (select `a`.`NODO` AS `nodo`,`a`.`TROBA` AS `troba`,`a`.`TIPODETRABAJO` AS `TIPODETRABAJO`,`a`.`ESTADO` AS `ESTADO`,max(`a`.`FINICIO`) AS `finicio`,max(`a`.`FECHAAPERTURA`) AS `fecha_apertura`,max(`a`.`FECHACIERRE`) AS `fecha_cierre`,max(`a`.`FECHAREGISTRO`) AS `fecha_registro`,if((((to_days(now()) - to_days(max(`a`.`FECHAREGISTRO`))) <= 8) and (`b`.`sede` = 'LIMA')),'<b>Generar Rutina I128</b></br>DIGITALIZACION NUEVA</BR>',if((((to_days(now()) - to_days(max(`a`.`FECHAREGISTRO`))) <= 15) and (`b`.`sede` <> 'LIMA')),'DIGITALIZACION NUEVA</br><b>Generar Rutina I128</b></BR>','DIGITALIZACION ANTIGUA')) AS `MENSAJE` from (`dbpext`.`trabajos_programados_noc` `a` join `ccm1`.`zonales_nodos_eecc` `b` on((`a`.`NODO` = `b`.`nodo`))) where (((`a`.`TIPODETRABAJO` = 'DIGITALIZACION') or (`a`.`TIPODETRABAJO` = 13)) and (`a`.`ESTADO` not in ('CANCELADO','PENDIENTE')) and (`a`.`NODO` in ('A1','A2','A3','A4','A5','A6','A7','A8','A9','AR','CU'))) group by `a`.`NODO`,`a`.`TROBA` order by `a`.`NODO`,`a`.`TROBA`,`a`.`FECHAREGISTRO` desc limit 0) */;

/*View structure for view repmasivas_view */

/*!50001 DROP TABLE IF EXISTS `repmasivas_view` */;
/*!50001 DROP VIEW IF EXISTS `repmasivas_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `repmasivas_view` AS (select `masivas_historicox`.`Oficina` AS `Oficina`,`masivas_historicox`.`codnod` AS `codnod`,`masivas_historicox`.`nroplano` AS `nroplano`,substr(`masivas_historicox`.`fecreg`,7,4) AS `anio`,count(0) AS `cant` from `masivas_historicox` group by `masivas_historicox`.`Oficina`,`masivas_historicox`.`codnod`,`masivas_historicox`.`nroplano`,substr(`masivas_historicox`.`fecreg`,7,4) order by count(0) desc) */;

/*View structure for view trabajos_pendientes_view */

/*!50001 DROP TABLE IF EXISTS `trabajos_pendientes_view` */;
/*!50001 DROP VIEW IF EXISTS `trabajos_pendientes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `trabajos_pendientes_view` AS (select `ttpp_view`.`nodo` AS `nodo`,`ttpp_view`.`troba` AS `troba`,`ttpp_view`.`TIPODETRABAJO` AS `TIPODETRABAJO`,`ttpp_view`.`ESTADO` AS `ESTADO`,`ttpp_view`.`finicio` AS `finicio`,`ttpp_view`.`fecha_apertura` AS `fecha_apertura` from `dbpext`.`ttpp_view` group by `ttpp_view`.`nodo`,`ttpp_view`.`troba`) */;

/*View structure for view trabajos_prog_offline */

/*!50001 DROP TABLE IF EXISTS `trabajos_prog_offline` */;
/*!50001 DROP VIEW IF EXISTS `trabajos_prog_offline` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `trabajos_prog_offline` AS (select `a`.`nodo` AS `nodo`,`b`.`TROBA` AS `troba`,`a`.`amplificador` AS `amplificador`,count(0) AS `offline` from (`alertasx`.`clientes_alertados` `a` join `dbpext`.`trabajos_programados_noc` `b` on(((`a`.`nodo` = `b`.`NODO`) and (`a`.`troba` = `b`.`TROBA`)))) where ((`b`.`ESTADO` in ('PENDIENTE','ABIERTO','ENPROCESO')) and ((to_days(now()) - to_days(`b`.`FINICIO`)) >= 0)) group by `a`.`nodo`,`a`.`troba`,`a`.`amplificador`) */;

/*View structure for view trapb_prog_caidas */

/*!50001 DROP TABLE IF EXISTS `trapb_prog_caidas` */;
/*!50001 DROP VIEW IF EXISTS `trapb_prog_caidas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `trapb_prog_caidas` AS (select if((`zn1`.`sede` = 'LIMA'),`zn1`.`jefatura`,`zn1`.`sede`) AS `jefatura`,`a`.`NODO` AS `nodo`,`a`.`TROBA` AS `troba`,`a`.`amplificador` AS `amplificador`,count(0) AS `cancli`,`e`.`offline` AS `offline`,concat(`tp`.`FINICIO`,' ',`tp`.`HINICIO`) AS `fecha_hora`,`tp`.`CORTESN` AS `estado`,`tp`.`HTERMINO` AS `tiempo`,'' AS `fecha_digi`,'' AS `digi`,`tp`.`AMP` AS `amp`,if((trim(`a`.`amplificador`) = concat('\'',replace(`tp`.`AMP`,',','\',\''),'\'')),'x','') AS `esta`,concat('\'',`tp`.`AMP`,'\'') AS `namp` from ((((`multiconsulta`.`nclientes` `a` FORCE INDEX (`nodo`) FORCE INDEX (`troba`) left join `dbpext`.`trabajos_programados_noc` `tp` FORCE INDEX (`NewIndex1`) FORCE INDEX (`NewIndex2`) FORCE INDEX (`ESTADO`) on(((`a`.`NODO` = `tp`.`NODO`) and (`a`.`TROBA` = `tp`.`TROBA`)))) left join `dbpext`.`masivas_temp` `b` on(((`a`.`NODO` = `b`.`codnod`) and (`a`.`TROBA` = `b`.`nroplano`)))) left join `dbpext`.`trabajos_prog_offline` `e` on(((`a`.`NODO` = `e`.`nodo`) and (`a`.`TROBA` = `e`.`troba`) and (`a`.`amplificador` = `e`.`amplificador`)))) left join `ccm1`.`zonales_nodos_eecc` `zn1` FORCE INDEX (`nodo`) on((`zn1`.`nodo` = `a`.`NODO`))) where ((`a`.`NODO` <> '') and (`tp`.`ESTADO` in ('PENDIENTE','ABIERTO','ENPROCESO')) and ((to_days(now()) - to_days(`tp`.`FINICIO`)) >= 0)) group by `a`.`NODO`,`a`.`TROBA`,`a`.`amplificador` order by `a`.`NODO`,`a`.`TROBA`,`a`.`amplificador`) */;

/*View structure for view ttpp_view */

/*!50001 DROP TABLE IF EXISTS `ttpp_view` */;
/*!50001 DROP VIEW IF EXISTS `ttpp_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `ttpp_view` AS (select `tp`.`NODO` AS `nodo`,`tp`.`TROBA` AS `troba`,if(isnull(`ct`.`tipodetrabajo1`),`tp`.`TIPODETRABAJO`,`ct`.`tipodetrabajo1`) AS `TIPODETRABAJO`,`tp`.`ESTADO` AS `ESTADO`,`tp`.`FINICIO` AS `finicio`,`tp`.`FECHAAPERTURA` AS `fecha_apertura` from (`dbpext`.`trabajos_programados_noc` `tp` left join `catalogos`.`trabajos_programados` `ct` on((`tp`.`TIPODETRABAJO` = `ct`.`id`))) where (((to_days(now()) - to_days(`tp`.`FINICIO`)) <= 0) and (`tp`.`ESTADO` = 'ENPROCESO')) group by `tp`.`NODO`,`tp`.`TROBA`,`tp`.`ESTADO` order by `tp`.`NODO`,`tp`.`TROBA`,`tp`.`ESTADO` desc) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
