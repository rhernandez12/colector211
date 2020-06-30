/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - catalogos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`catalogos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `catalogos`;

/*Table structure for table `activo_movistar1` */

DROP TABLE IF EXISTS `activo_movistar1`;

CREATE TABLE `activo_movistar1` (
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
  `idproducto` double DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `condclite` (`condclite`),
  KEY `condides` (`condides`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `desccondcl` (`desccondcl`),
  KEY `descconsrv` (`descconsrv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `amplifxpuerto` */

DROP TABLE IF EXISTS `amplifxpuerto`;

CREATE TABLE `amplifxpuerto` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `f_v` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `clave` varchar(8) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`f_v`,`nodo`,`troba`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `clave` (`clave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `amplifxpuerto_c` */

DROP TABLE IF EXISTS `amplifxpuerto_c`;

CREATE TABLE `amplifxpuerto_c` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `f_v` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `clave` varchar(8) DEFAULT NULL,
  UNIQUE KEY `cmts` (`nodo`,`troba`,`amplificador`,`cmts`,`f_v`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `clave` (`clave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `amplixpuerto_temp1` */

DROP TABLE IF EXISTS `amplixpuerto_temp1`;

CREATE TABLE `amplixpuerto_temp1` (
  `cmts` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `f_v` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `amplificador` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `clave` varchar(8) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`f_v`,`nodo`,`troba`,`amplificador`),
  KEY `f_v` (`f_v`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `clave` (`clave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `analgesico` */

DROP TABLE IF EXISTS `analgesico`;

CREATE TABLE `analgesico` (
  `ClienteCms` int(11) DEFAULT NULL,
  `mensaje` varchar(200) DEFAULT NULL,
  UNIQUE KEY `codcli` (`ClienteCms`),
  KEY `mensaje` (`mensaje`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `analgesico_c` */

DROP TABLE IF EXISTS `analgesico_c`;

CREATE TABLE `analgesico_c` (
  `ClienteCms` int(11) DEFAULT NULL,
  `mensaje` varchar(200) DEFAULT NULL,
  UNIQUE KEY `codcli` (`ClienteCms`),
  KEY `mensaje` (`mensaje`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `area_responsable` */

DROP TABLE IF EXISTS `area_responsable`;

CREATE TABLE `area_responsable` (
  `idarea` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `averias_resum` */

DROP TABLE IF EXISTS `averias_resum`;

CREATE TABLE `averias_resum` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `dia` varchar(13) DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `dia` (`dia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_resum_c` */

DROP TABLE IF EXISTS `averias_resum_c`;

CREATE TABLE `averias_resum_c` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `dia` varchar(13) DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `dia` (`dia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `bandejaex` */

DROP TABLE IF EXISTS `bandejaex`;

CREATE TABLE `bandejaex` (
  `codctr` int(11) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT NULL,
  `tipave` varchar(1) DEFAULT NULL,
  KEY `codctr` (`codctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `bd_criticos_coe` */

DROP TABLE IF EXISTS `bd_criticos_coe`;

CREATE TABLE `bd_criticos_coe` (
  `cliente` int(11) NOT NULL,
  `servicio` int(11) DEFAULT NULL,
  `clien_srv` varchar(20) DEFAULT NULL,
  `nomcli` varchar(100) DEFAULT NULL,
  `desdpt` varchar(50) DEFAULT NULL,
  `despvc` varchar(50) DEFAULT NULL,
  `desdtt` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `nodotroba` varchar(6) DEFAULT NULL,
  `codlex` varchar(2) DEFAULT NULL,
  `codtap` varchar(2) DEFAULT NULL,
  `sub_neg` varchar(50) DEFAULT NULL,
  `paquete` varchar(50) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `nombre_cmts_olt` varchar(50) DEFAULT NULL,
  `marca_troba` varchar(50) DEFAULT NULL,
  `numerodoco` int(11) DEFAULT NULL,
  `cnt_deco` int(11) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `TD_TrioDuo` varchar(20) DEFAULT NULL,
  `cluster_` varchar(20) DEFAULT NULL,
  `llamadas_ultimos60dias` int(11) DEFAULT NULL,
  `averias_ultimos60dias` int(11) DEFAULT NULL,
  `scopesgroup` varchar(20) DEFAULT NULL,
  `RepUltraWifiSP_Cantidad` int(11) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `servicepackage` varchar(50) DEFAULT NULL,
  `sp_velocidad` int(11) DEFAULT NULL,
  `sp_velocidad2` int(11) DEFAULT NULL,
  `grupo_troba` varchar(15) DEFAULT NULL,
  `tipotec` varchar(50) DEFAULT NULL,
  `ln_tipoPC` varchar(50) DEFAULT NULL,
  `planta` int(11) DEFAULT NULL,
  `voz` int(11) DEFAULT NULL,
  `cobre` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  UNIQUE KEY `servicio` (`servicio`),
  KEY `cliente` (`cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `bd_criticos_coe_bk` */

DROP TABLE IF EXISTS `bd_criticos_coe_bk`;

CREATE TABLE `bd_criticos_coe_bk` (
  `cliente` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `clien_srv` varchar(20) DEFAULT NULL,
  `nomcli` varchar(100) DEFAULT NULL,
  `desdpt` varchar(50) DEFAULT NULL,
  `despvc` varchar(50) DEFAULT NULL,
  `desdtt` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `nodotroba` varchar(6) DEFAULT NULL,
  `codlex` varchar(2) DEFAULT NULL,
  `codtap` varchar(2) DEFAULT NULL,
  `sub_neg` varchar(50) DEFAULT NULL,
  `paquete` varchar(50) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `nombre_cmts_olt` varchar(50) DEFAULT NULL,
  `marca_troba` varchar(50) DEFAULT NULL,
  `numerodoco` int(11) DEFAULT NULL,
  `cnt_deco` int(11) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `TD_TrioDuo` varchar(20) DEFAULT NULL,
  `cluster_` varchar(20) DEFAULT NULL,
  `llamadas_ultimos60dias` int(11) DEFAULT NULL,
  `averias_ultimos60dias` int(11) DEFAULT NULL,
  `scopesgroup` varchar(20) DEFAULT NULL,
  `RepUltraWifiSP_Cantidad` int(11) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `servicepackage` varchar(50) DEFAULT NULL,
  `sp_velocidad` int(11) DEFAULT NULL,
  `sp_velocidad2` int(11) DEFAULT NULL,
  `grupo_troba` varchar(15) DEFAULT NULL,
  `tipotec` varchar(50) DEFAULT NULL,
  `ln_tipoPC` varchar(50) DEFAULT NULL,
  `planta` int(11) DEFAULT NULL,
  `voz` int(11) DEFAULT NULL,
  `cobre` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `bornesxtroba` */

DROP TABLE IF EXISTS `bornesxtroba`;

CREATE TABLE `bornesxtroba` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`),
  KEY `NewIndex3` (`tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

/*Table structure for table `cablemodem_glciexp054_decos_c` */

DROP TABLE IF EXISTS `cablemodem_glciexp054_decos_c`;

CREATE TABLE `cablemodem_glciexp054_decos_c` (
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

/*Table structure for table `causaalert` */

DROP TABLE IF EXISTS `causaalert`;

CREATE TABLE `causaalert` (
  `idcausa` int(11) NOT NULL AUTO_INCREMENT,
  `causa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcausa`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

/*Table structure for table `clientesxpuerto` */

DROP TABLE IF EXISTS `clientesxpuerto`;

CREATE TABLE `clientesxpuerto` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cantcli` bigint(21) NOT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `clientesxtroba_dmpe` */

DROP TABLE IF EXISTS `clientesxtroba_dmpe`;

CREATE TABLE `clientesxtroba_dmpe` (
  `nodo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `troba` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`nodo`,`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `codcontrata` */

DROP TABLE IF EXISTS `codcontrata`;

CREATE TABLE `codcontrata` (
  `codctr_rdc` int(11) NOT NULL,
  `codctr_pext` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `area_mant` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codctr_rdc`,`codctr_pext`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `codcontrata_c` */

DROP TABLE IF EXISTS `codcontrata_c`;

CREATE TABLE `codcontrata_c` (
  `codctr_rdc` int(11) NOT NULL,
  `codctr_pext` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `area_mant` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codctr_rdc`,`codctr_pext`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `codctr` */

DROP TABLE IF EXISTS `codctr`;

CREATE TABLE `codctr` (
  `codctr` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `desctr` varchar(100) DEFAULT NULL,
  `tiposeg` varchar(10) DEFAULT NULL,
  `tipoplta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `colexcel` */

DROP TABLE IF EXISTS `colexcel`;

CREATE TABLE `colexcel` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `col` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=703 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dataNombres` */

DROP TABLE IF EXISTS `dataNombres`;

CREATE TABLE `dataNombres` (
  `idclientecrm` double NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idclientecrm`),
  KEY `nombre` (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `db_fuentes` */

DROP TABLE IF EXISTS `db_fuentes`;

CREATE TABLE `db_fuentes` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `mac` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mac3` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mac4` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `zonal` varchar(10) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `latitudx` varchar(20) DEFAULT NULL,
  `longitudy` varchar(20) DEFAULT NULL,
  `marcatroba` varchar(30) DEFAULT NULL,
  `respaldo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `descricion` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tienebateria` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `clave` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `segundafuente` varchar(1) DEFAULT NULL,
  `version` int(1) DEFAULT NULL,
  `fecha_bateria1` date DEFAULT NULL,
  `fecha_bateria2` date DEFAULT NULL,
  `fecha_bateria3` date DEFAULT NULL,
  `fecha_bateria_antigua` date DEFAULT NULL,
  `tiempo_carga_bateria` float DEFAULT NULL,
  UNIQUE KEY `mac` (`mac`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `clave` (`clave`),
  KEY `zonal` (`zonal`),
  KEY `distrito` (`distrito`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `degrada` */

DROP TABLE IF EXISTS `degrada`;

CREATE TABLE `degrada` (
  `fecha` varchar(20) DEFAULT NULL,
  `telef` int(20) DEFAULT NULL,
  `segme` varchar(20) DEFAULT NULL,
  `codserv` int(20) DEFAULT NULL,
  `fechavenc` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codcli` (`codserv`),
  KEY `telefono` (`telef`),
  KEY `segme` (`segme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dias` */

DROP TABLE IF EXISTS `dias`;

CREATE TABLE `dias` (
  `dia` int(11) NOT NULL AUTO_INCREMENT,
  `desdia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dia`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `dirfuentes` */

DROP TABLE IF EXISTS `dirfuentes`;

CREATE TABLE `dirfuentes` (
  `item` int(11) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `direccion` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `distritos_priorizados` */

DROP TABLE IF EXISTS `distritos_priorizados`;

CREATE TABLE `distritos_priorizados` (
  `nodotroba` varchar(6) NOT NULL,
  `Dpto` varchar(100) DEFAULT NULL,
  `Provincia` varchar(100) DEFAULT NULL,
  `Distrito` varchar(100) DEFAULT NULL,
  `Grupo_Troba` varchar(100) DEFAULT NULL,
  `PLANTA_B2C_HFC` int(11) DEFAULT NULL,
  `PLANTA_B2C_ADSL` int(11) DEFAULT NULL,
  `PLANTA_B2B_HFC` int(11) DEFAULT NULL,
  `PLANTA_B2B_ADSL` int(11) DEFAULT NULL,
  `Arpu_CIncr` int(11) DEFAULT NULL,
  `Overlay2019` varchar(100) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `nodo_nombre` varchar(100) DEFAULT NULL,
  `Hog_abcd` int(11) DEFAULT NULL,
  `HogHorizontal` int(11) DEFAULT NULL,
  `HogVertical` int(11) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`nodotroba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `enlacexmarca` */

DROP TABLE IF EXISTS `enlacexmarca`;

CREATE TABLE `enlacexmarca` (
  `fabricante` varchar(20) DEFAULT NULL,
  `link` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `espacios_vacios_iw` */

DROP TABLE IF EXISTS `espacios_vacios_iw`;

CREATE TABLE `espacios_vacios_iw` (
  `ID_Empresa` varchar(5) DEFAULT NULL,
  `Empresa` varchar(5) DEFAULT NULL,
  `ID_Cliente` double DEFAULT NULL,
  `Nombre_Cliente` varchar(150) DEFAULT NULL,
  `ID_Servicio_CM` double DEFAULT NULL,
  `ID_Producto_CM` double DEFAULT NULL,
  `ID_Venta_CM` double DEFAULT NULL,
  `Service_Package_CRMID` varchar(30) DEFAULT NULL,
  `Service_Package_Configurado` varchar(30) DEFAULT NULL,
  `Cantidad_PCs` varchar(11) DEFAULT NULL,
  `Fecha_Alta` varchar(20) DEFAULT NULL,
  `Grupo_Red_CM` varchar(20) DEFAULT NULL,
  `ID_Servicio_MTA` varchar(100) DEFAULT NULL,
  `ID_Producto_MTA` varchar(100) DEFAULT NULL,
  `ID_Venta_MTA` varchar(100) DEFAULT NULL,
  `Grupo_Red_MTA` varchar(100) DEFAULT NULL,
  `Numero_Telefono` varchar(20) DEFAULT NULL
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `etiqueta_puertos_20200525` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200525`;

CREATE TABLE `etiqueta_puertos_20200525` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200526` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200526`;

CREATE TABLE `etiqueta_puertos_20200526` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200527` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200527`;

CREATE TABLE `etiqueta_puertos_20200527` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200528` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200528`;

CREATE TABLE `etiqueta_puertos_20200528` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200529` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200529`;

CREATE TABLE `etiqueta_puertos_20200529` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200530` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200530`;

CREATE TABLE `etiqueta_puertos_20200530` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200531` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200531`;

CREATE TABLE `etiqueta_puertos_20200531` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200601` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200601`;

CREATE TABLE `etiqueta_puertos_20200601` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200602` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200602`;

CREATE TABLE `etiqueta_puertos_20200602` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200603` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200603`;

CREATE TABLE `etiqueta_puertos_20200603` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200604` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200604`;

CREATE TABLE `etiqueta_puertos_20200604` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200605` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200605`;

CREATE TABLE `etiqueta_puertos_20200605` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200606` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200606`;

CREATE TABLE `etiqueta_puertos_20200606` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200607` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200607`;

CREATE TABLE `etiqueta_puertos_20200607` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200608` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200608`;

CREATE TABLE `etiqueta_puertos_20200608` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200609` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200609`;

CREATE TABLE `etiqueta_puertos_20200609` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200610` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200610`;

CREATE TABLE `etiqueta_puertos_20200610` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200611` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200611`;

CREATE TABLE `etiqueta_puertos_20200611` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200612` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200612`;

CREATE TABLE `etiqueta_puertos_20200612` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200613` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200613`;

CREATE TABLE `etiqueta_puertos_20200613` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200614` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200614`;

CREATE TABLE `etiqueta_puertos_20200614` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200615` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200615`;

CREATE TABLE `etiqueta_puertos_20200615` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200616` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200616`;

CREATE TABLE `etiqueta_puertos_20200616` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200617` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200617`;

CREATE TABLE `etiqueta_puertos_20200617` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200618` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200618`;

CREATE TABLE `etiqueta_puertos_20200618` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200619` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200619`;

CREATE TABLE `etiqueta_puertos_20200619` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200620` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200620`;

CREATE TABLE `etiqueta_puertos_20200620` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200621` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200621`;

CREATE TABLE `etiqueta_puertos_20200621` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200622` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200622`;

CREATE TABLE `etiqueta_puertos_20200622` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200623` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200623`;

CREATE TABLE `etiqueta_puertos_20200623` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_20200624` */

DROP TABLE IF EXISTS `etiqueta_puertos_20200624`;

CREATE TABLE `etiqueta_puertos_20200624` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `etiqueta_puertos_c` */

DROP TABLE IF EXISTS `etiqueta_puertos_c`;

CREATE TABLE `etiqueta_puertos_c` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `usuario` varchar(50) DEFAULT NULL,
  `fechacambio` varchar(20) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `expertowifi` */

DROP TABLE IF EXISTS `expertowifi`;

CREATE TABLE `expertowifi` (
  `nodotroba` varchar(6) NOT NULL,
  `microzona` varchar(30) DEFAULT NULL,
  `grupo_microzona` varchar(30) DEFAULT NULL,
  `identifica` varchar(30) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `marca` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nodotroba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fecha_fuentes` */

DROP TABLE IF EXISTS `fecha_fuentes`;

CREATE TABLE `fecha_fuentes` (
  `NODO` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PLANO` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DISTRITO` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `DIRECCION` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `LATITUD_X` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `LONGITUD_Y` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `FUENTE 01` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `MAC` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SERIE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BATERIA1` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BATERIA2` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `BATERIA3` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `MAC` (`MAC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `fechas` */

DROP TABLE IF EXISTS `fechas`;

CREATE TABLE `fechas` (
  `fecha` varchar(10) NOT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `frecuencia85` */

DROP TABLE IF EXISTS `frecuencia85`;

CREATE TABLE `frecuencia85` (
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Empresa` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `MACAddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Fechadealta` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Fechadeactivacion` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Fabricante` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Modelo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `hwversion` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Versioon` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Tipodedispositivo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `IPCablemodem` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CMTS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `temp` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_compartidas` */

DROP TABLE IF EXISTS `fuentes_compartidas`;

CREATE TABLE `fuentes_compartidas` (
  `hija` varchar(6) NOT NULL,
  `madre` varchar(6) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  PRIMARY KEY (`hija`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_cod_error` */

DROP TABLE IF EXISTS `gpon_cod_error`;

CREATE TABLE `gpon_cod_error` (
  `nnemonic` varchar(100) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `meaning` varchar(200) DEFAULT NULL,
  `traduccion` varchar(200) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `fcolor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nnemonic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_cod_error_c` */

DROP TABLE IF EXISTS `gpon_cod_error_c`;

CREATE TABLE `gpon_cod_error_c` (
  `nnemonic` varchar(100) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `meaning` varchar(200) DEFAULT NULL,
  `traduccion` varchar(200) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nnemonic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_malos_parametros` */

DROP TABLE IF EXISTS `gpon_malos_parametros`;

CREATE TABLE `gpon_malos_parametros` (
  `cliente` int(11) NOT NULL,
  PRIMARY KEY (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_planta_cms` */

DROP TABLE IF EXISTS `gpon_planta_cms`;

CREATE TABLE `gpon_planta_cms` (
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

/*Table structure for table `gpon_valcoderror` */

DROP TABLE IF EXISTS `gpon_valcoderror`;

CREATE TABLE `gpon_valcoderror` (
  `name` varchar(60) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `nombreenpdf` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(5) DEFAULT NULL,
  `recomendacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`number`),
  KEY `name` (`name`),
  KEY `recomendacion` (`recomendacion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_volcado` */

DROP TABLE IF EXISTS `gpon_volcado`;

CREATE TABLE `gpon_volcado` (
  `LINE_ID` int(11) DEFAULT NULL,
  `DSLAM` varchar(29) DEFAULT NULL,
  `DSLAM_IP` varchar(22) DEFAULT NULL,
  `PORT` varchar(19) DEFAULT NULL,
  `CHIPSET_VENDOR` varchar(14) DEFAULT NULL,
  `CHIPSET_MODEL` varchar(22) DEFAULT NULL,
  `CHIPSET_VERSION` varchar(22) DEFAULT NULL,
  `CHIPSET_SERIAL_NUMBER` varchar(22) DEFAULT NULL,
  `CIRCUIT_ID` varchar(22) DEFAULT NULL,
  `ESTIMATION_DATE` varchar(21) DEFAULT NULL,
  `RANGO` int(11) DEFAULT NULL,
  `TX_POWER_DS` varchar(13) DEFAULT NULL,
  `RX_POWER_DS` varchar(16) DEFAULT NULL,
  `TX_POWER_US` varchar(14) DEFAULT NULL,
  `RX_POWER_US` varchar(16) DEFAULT NULL,
  `DS_ATTENUATION` varchar(15) DEFAULT NULL,
  `US_ATTENUATION` varchar(15) DEFAULT NULL,
  `TEMPERATURE_OLT` int(11) DEFAULT NULL,
  `CURRENT_OLT` int(11) DEFAULT NULL,
  `VOLTAGE_OLT` varchar(13) DEFAULT NULL,
  `TEMPERATURE_ONT` int(11) DEFAULT NULL,
  `CURRENT_ONT` int(11) DEFAULT NULL,
  `VOLTAGE_ONT` varchar(14) DEFAULT NULL,
  `LINK_STATE_DESCRIPTION` varchar(12) DEFAULT NULL,
  `LINK_QUALITY` int(11) DEFAULT NULL,
  `LINK_QUALITY_DESCRIPTION` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_FAULT` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_ALARM` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_REINIT` varchar(13) DEFAULT NULL,
  `LQ_DESCRIPTION_DS_POWER` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_DS_ERRORS` varchar(13) DEFAULT NULL,
  `LQ_DESCRIPTION_US_POWER` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_US_ERRORS` varchar(16) DEFAULT NULL,
  `SHORT_TERM_LINK_QUALITY` int(11) DEFAULT NULL,
  `SHORT_TERM_LINK_QUALITY_DESCR` varchar(27) DEFAULT NULL,
  `FAULT` int(11) DEFAULT NULL,
  `FAULT_DESCRIPTION` varchar(24) DEFAULT NULL,
  `FAULT_LOCATION` varchar(10) DEFAULT NULL,
  `FAULT_LOCATION_DESCRIPTION` varchar(13) DEFAULT NULL,
  `HIGH_LEVEL_ACTION` varchar(22) DEFAULT NULL,
  `DS_BIP8_ERROR_RAW` int(11) DEFAULT NULL,
  `DS_BIP8_ERROR_X1_DESCRIPTION` varchar(16) DEFAULT NULL,
  `US_BIP8_ERROR_RAW` int(11) DEFAULT NULL,
  `US_BIP8_ERROR_X1_DESCRIPTION` varchar(16) DEFAULT NULL,
  `FIBER_SEGMENT_1_NAME` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_1_LENGTH` varchar(10) DEFAULT NULL,
  `SPLITTER_1_NAME` varchar(10) DEFAULT NULL,
  `SPLITTER_1_RATIO` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_2_NAME` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_2_LENGTH` varchar(10) DEFAULT NULL,
  `SPLITTER_2_NAME` varchar(10) DEFAULT NULL,
  `SPLITTER_2_RATIO` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_3_NAME` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_3_LENGTH` varchar(10) DEFAULT NULL,
  KEY `LINE_ID` (`LINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `horas` */

DROP TABLE IF EXISTS `horas`;

CREATE TABLE `horas` (
  `HORAS` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`HORAS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `inf_hfc_dmpe` */

DROP TABLE IF EXISTS `inf_hfc_dmpe`;

CREATE TABLE `inf_hfc_dmpe` (
  `fecha` varchar(20) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `telefono` int(25) DEFAULT NULL,
  `nrodoc` varchar(12) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(200) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `agente` varchar(200) DEFAULT NULL,
  `seleccion` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fechaticket` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  UNIQUE KEY `fecha_2` (`fecha`,`eventid`,`telefono`,`cliente`),
  KEY `fecha` (`fecha`),
  KEY `origen` (`origen`),
  KEY `eventid` (`eventid`),
  KEY `area` (`area`),
  KEY `telefono` (`telefono`),
  KEY `estado` (`estado`),
  KEY `cliente` (`cliente`),
  KEY `nrodoc` (`nrodoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `inf_hfc_dmpe_back` */

DROP TABLE IF EXISTS `inf_hfc_dmpe_back`;

CREATE TABLE `inf_hfc_dmpe_back` (
  `fecha` varchar(20) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `telefono` int(25) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(200) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `agente` varchar(200) DEFAULT NULL,
  `seleccion` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fechaticket` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  UNIQUE KEY `fecha_2` (`fecha`,`eventid`,`telefono`,`cliente`),
  KEY `fecha` (`fecha`),
  KEY `origen` (`origen`),
  KEY `eventid` (`eventid`),
  KEY `area` (`area`),
  KEY `telefono` (`telefono`),
  KEY `estado` (`estado`),
  KEY `cliente` (`cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `inf_hfc_dmpe_c` */

DROP TABLE IF EXISTS `inf_hfc_dmpe_c`;

CREATE TABLE `inf_hfc_dmpe_c` (
  `fecha` varchar(20) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `telefono` int(25) DEFAULT NULL,
  `nrodoc` varchar(12) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(200) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `agente` varchar(200) DEFAULT NULL,
  `seleccion` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fechaticket` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `clave` varchar(30) DEFAULT NULL,
  UNIQUE KEY `fecha_2` (`fecha`,`eventid`,`telefono`,`cliente`),
  UNIQUE KEY `clave` (`clave`),
  KEY `fecha` (`fecha`),
  KEY `origen` (`origen`),
  KEY `eventid` (`eventid`),
  KEY `area` (`area`),
  KEY `telefono` (`telefono`),
  KEY `estado` (`estado`),
  KEY `cliente` (`cliente`),
  KEY `nrodoc` (`nrodoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `inf_hfc_dmpe_hoy` */

DROP TABLE IF EXISTS `inf_hfc_dmpe_hoy`;

CREATE TABLE `inf_hfc_dmpe_hoy` (
  `fecha` varchar(20) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `telefono` int(25) DEFAULT NULL,
  `nrodoc` varchar(12) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(200) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `agente` varchar(200) DEFAULT NULL,
  `seleccion` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fechaticket` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `clave` varchar(30) DEFAULT NULL,
  UNIQUE KEY `fecha_2` (`fecha`,`eventid`,`telefono`,`cliente`),
  UNIQUE KEY `clave` (`clave`),
  KEY `fecha` (`fecha`),
  KEY `origen` (`origen`),
  KEY `eventid` (`eventid`),
  KEY `area` (`area`),
  KEY `telefono` (`telefono`),
  KEY `estado` (`estado`),
  KEY `cliente` (`cliente`),
  KEY `nrodoc` (`nrodoc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `internostdp_nclientes` */

DROP TABLE IF EXISTS `internostdp_nclientes`;

CREATE TABLE `internostdp_nclientes` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` int(11) DEFAULT NULL,
  `tap` int(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` int(11) DEFAULT NULL,
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
  `CMTSID` int(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` int(11) DEFAULT NULL,
  `movil1` int(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` varchar(20) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  `naked` varchar(2) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACADDRESS`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `idproducto` (`idproducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `jefaturas` */

DROP TABLE IF EXISTS `jefaturas`;

CREATE TABLE `jefaturas` (
  `dpto` varchar(80) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `nodo` varchar(5) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `jef_cmr` varchar(10) DEFAULT NULL,
  `det_region` varchar(20) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `xprem_mas` varchar(20) DEFAULT NULL,
  `eecc` varchar(20) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `entrenador` varchar(100) DEFAULT NULL,
  `zona` varchar(20) DEFAULT NULL,
  `zon_region` varchar(20) DEFAULT NULL,
  `playas` int(11) DEFAULT NULL,
  `jefa_nuevo` varchar(10) DEFAULT NULL,
  `jefa_tac` varchar(10) DEFAULT NULL,
  `bono` varchar(10) DEFAULT NULL,
  `terreno` varchar(20) DEFAULT NULL,
  `mplayas` varchar(20) DEFAULT NULL,
  `codctr` varchar(20) DEFAULT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `jefatura_torre` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `jefatura_torre` (`jefatura_torre`),
  KEY `jefatura` (`jefatura`),
  KEY `codctr` (`codctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `jefaturas_c` */

DROP TABLE IF EXISTS `jefaturas_c`;

CREATE TABLE `jefaturas_c` (
  `dpto` varchar(80) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `nodo` varchar(5) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `jef_cmr` varchar(10) DEFAULT NULL,
  `det_region` varchar(20) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `xprem_mas` varchar(20) DEFAULT NULL,
  `eecc` varchar(20) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `entrenador` varchar(100) DEFAULT NULL,
  `zona` varchar(20) DEFAULT NULL,
  `zon_region` varchar(20) DEFAULT NULL,
  `playas` int(11) DEFAULT NULL,
  `jefa_nuevo` varchar(10) DEFAULT NULL,
  `jefa_tac` varchar(10) DEFAULT NULL,
  `bono` varchar(10) DEFAULT NULL,
  `terreno` varchar(20) DEFAULT NULL,
  `mplayas` varchar(20) DEFAULT NULL,
  `codctr` varchar(20) DEFAULT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `jefatura_torre` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `jefatura_torre` (`jefatura_torre`),
  KEY `jefatura` (`jefatura`),
  KEY `codctr` (`codctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadas_ivr_patty` */

DROP TABLE IF EXISTS `llamadas_ivr_patty`;

CREATE TABLE `llamadas_ivr_patty` (
  `InteractionID` varchar(20) DEFAULT NULL,
  `InteractionHandlingAttemptID` varchar(20) DEFAULT NULL,
  `HandlingAttemptSTART` varchar(20) DEFAULT NULL,
  `HandlingAttemptEND` varchar(20) DEFAULT NULL,
  `de` int(11) DEFAULT NULL,
  `a` varchar(20) DEFAULT NULL,
  `HandlingResourceTYPE` varchar(30) DEFAULT NULL,
  `ServiceTYPE` varchar(20) DEFAULT NULL,
  `ServiceSubtype` varchar(20) DEFAULT NULL,
  `CustomerID` varchar(50) DEFAULT NULL,
  UNIQUE KEY `InteractionID` (`InteractionID`,`InteractionHandlingAttemptID`),
  KEY `de` (`de`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadasxtroba` */

DROP TABLE IF EXISTS `llamadasxtroba`;

CREATE TABLE `llamadasxtroba` (
  `nodo` varchar(2) DEFAULT NULL,
  `troban` varchar(4) DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troban`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `macstate` */

DROP TABLE IF EXISTS `macstate`;

CREATE TABLE `macstate` (
  `macstate` varchar(20) NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `macstate` (`macstate`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `matriz_jerarquias_cmts` */

DROP TABLE IF EXISTS `matriz_jerarquias_cmts`;

CREATE TABLE `matriz_jerarquias_cmts` (
  `equipo` varchar(20) DEFAULT NULL,
  `localidad` varchar(40) DEFAULT NULL,
  `cmts_core` varchar(30) DEFAULT NULL,
  `ipcore` varchar(20) DEFAULT NULL,
  `interface1core` varchar(20) DEFAULT NULL,
  `hostnamecore` varchar(60) DEFAULT NULL,
  `interface2core` varchar(20) DEFAULT NULL,
  `nombre_ccm1` varchar(20) DEFAULT NULL,
  `nombre_iw` varchar(20) DEFAULT NULL,
  KEY `equipo` (`equipo`),
  KEY `localidad` (`localidad`),
  KEY `cmts_core` (`cmts_core`),
  KEY `interface1core` (`interface1core`),
  KEY `hostnamecore` (`hostnamecore`),
  KEY `interface2core` (`interface2core`),
  KEY `nombre_ccm1` (`nombre_ccm1`),
  KEY `ipcore` (`ipcore`),
  KEY `nombre_iw` (`nombre_iw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `matriz_jerarquias_olt` */

DROP TABLE IF EXISTS `matriz_jerarquias_olt`;

CREATE TABLE `matriz_jerarquias_olt` (
  `dcmtsolt` varchar(40) DEFAULT NULL,
  `anillometro` varchar(40) DEFAULT NULL,
  `puertoolt` varchar(10) DEFAULT NULL,
  `porttipoolt` varchar(10) DEFAULT NULL,
  `puertoorigen` varchar(10) DEFAULT NULL,
  `porttipo` varchar(10) DEFAULT NULL,
  `equipometroorigen` varchar(40) DEFAULT NULL,
  `puertodestino1` varchar(20) DEFAULT NULL,
  `equipometrodestino` varchar(60) DEFAULT NULL,
  `puertodestino2` varchar(10) DEFAULT NULL,
  `equipometrodestinovoz` varchar(60) DEFAULT NULL,
  `vlandatos` varchar(10) DEFAULT NULL,
  `redwandatosddcap` varchar(20) DEFAULT NULL,
  `vlanvoz` varchar(10) DEFAULT NULL,
  `redwanvozddcap` varchar(20) DEFAULT NULL,
  `vlanprov` varchar(10) DEFAULT NULL,
  `redwanprovisionddcap` varchar(20) DEFAULT NULL,
  `vlancgnat` varchar(10) DEFAULT NULL,
  `redwancgnatddcap` varchar(20) DEFAULT NULL,
  `puertocore` varchar(10) DEFAULT NULL,
  `equipocore` varchar(60) DEFAULT NULL,
  `puertoran` varchar(10) DEFAULT NULL,
  `equiporan` varchar(20) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `modeloolt` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `nombreccm1` varchar(40) DEFAULT NULL,
  `nombreiw` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `microzona_premium` */

DROP TABLE IF EXISTS `microzona_premium`;

CREATE TABLE `microzona_premium` (
  `nodotroba` varchar(10) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `distrito` varchar(40) NOT NULL DEFAULT '',
  `arpu` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `valortroba` varchar(15) NOT NULL DEFAULT '',
  `grupo` varchar(15) NOT NULL DEFAULT '',
  `fecha` varchar(20) NOT NULL DEFAULT '',
  `area_` varchar(15) NOT NULL DEFAULT '',
  `grupo_dist` varchar(30) NOT NULL DEFAULT '',
  KEY `nodotroba` (`nodotroba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

/*Table structure for table `migraciones` */

DROP TABLE IF EXISTS `migraciones`;

CREATE TABLE `migraciones` (
  `nodo_hfc` varchar(2) NOT NULL,
  `troba_hfc` varchar(4) NOT NULL,
  `nodo_cms` varchar(4) NOT NULL,
  `troba_cms` varchar(5) NOT NULL,
  `count(*)` bigint(21) NOT NULL,
  PRIMARY KEY (`nodo_hfc`,`troba_hfc`,`nodo_cms`,`troba_cms`),
  KEY `nodo_hfc` (`nodo_hfc`),
  KEY `trobahfc` (`troba_hfc`),
  KEY `nodo_cms` (`nodo_cms`),
  KEY `troba_cms` (`troba_cms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `movistar_total` */

DROP TABLE IF EXISTS `movistar_total`;

CREATE TABLE `movistar_total` (
  `serviciocms` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `productoFijo` varchar(150) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fechaaltaAtis` varchar(20) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telf1` int(11) DEFAULT NULL,
  `telf2` int(11) DEFAULT NULL,
  `telf3` int(11) DEFAULT NULL,
  `telf4` int(11) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  UNIQUE KEY `serviciocms` (`serviciocms`,`clientecms`),
  KEY `clientecms` (`clientecms`),
  KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `movistar_total_c` */

DROP TABLE IF EXISTS `movistar_total_c`;

CREATE TABLE `movistar_total_c` (
  `serviciocms` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `productoFijo` varchar(150) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fechaaltaAtis` varchar(20) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telf1` int(11) DEFAULT NULL,
  `telf2` int(11) DEFAULT NULL,
  `telf3` int(11) DEFAULT NULL,
  `telf4` int(11) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  UNIQUE KEY `serviciocms` (`serviciocms`,`clientecms`),
  KEY `clientecms` (`clientecms`),
  KEY `telefono` (`telefono`),
  KEY `fechaalta` (`fechaalta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `nums` */

DROP TABLE IF EXISTS `nums`;

CREATE TABLE `nums` (
  `telefono` int(11) NOT NULL,
  PRIMARY KEY (`telefono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `operador` */

DROP TABLE IF EXISTS `operador`;

CREATE TABLE `operador` (
  `OPERADOR` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `oui_fuentes` */

DROP TABLE IF EXISTS `oui_fuentes`;

CREATE TABLE `oui_fuentes` (
  `oui_fuentes` varchar(6) DEFAULT NULL,
  `marca` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `InputVoltage` varchar(50) DEFAULT NULL,
  `OutputVoltage` varchar(50) DEFAULT NULL,
  `OutputCurrent` varchar(50) DEFAULT NULL,
  `TotalStringVoltage` varchar(50) DEFAULT NULL,
  KEY `oui_fuentes` (`oui_fuentes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `pago_fractalia` */

DROP TABLE IF EXISTS `pago_fractalia`;

CREATE TABLE `pago_fractalia` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `cant` int(21) DEFAULT NULL,
  `off` int(21) DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_fin` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `tipo` varchar(217) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `parametros_rf` */

DROP TABLE IF EXISTS `parametros_rf`;

CREATE TABLE `parametros_rf` (
  `parametro` varchar(15) NOT NULL,
  `vmin` int(10) DEFAULT NULL,
  `vmax` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `nrf` varchar(15) NOT NULL,
  `min` varchar(4) DEFAULT NULL,
  `max` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`parametro`),
  KEY `nrf` (`nrf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `parametros_rf_c` */

DROP TABLE IF EXISTS `parametros_rf_c`;

CREATE TABLE `parametros_rf_c` (
  `parametro` varchar(15) DEFAULT NULL,
  `vmin` int(10) DEFAULT NULL,
  `vmax` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `pendientes_nodo_troba` */

DROP TABLE IF EXISTS `pendientes_nodo_troba`;

CREATE TABLE `pendientes_nodo_troba` (
  `nodotroba` varchar(6) NOT NULL,
  `mensaje` varchar(200) NOT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) NOT NULL,
  UNIQUE KEY `nodo` (`nodotroba`),
  KEY `fechahora` (`fechahora`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planos` */

DROP TABLE IF EXISTS `planos`;

CREATE TABLE `planos` (
  `clave` varchar(20) NOT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `planta_cms_ivr` */

DROP TABLE IF EXISTS `planta_cms_ivr`;

CREATE TABLE `planta_cms_ivr` (
  `telefono` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `desdpt` varchar(150) DEFAULT NULL,
  `despvc` varchar(150) DEFAULT NULL,
  `desdtt` varchar(150) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `plano` varchar(4) DEFAULT NULL,
  `tipoperu8k` varchar(100) DEFAULT NULL,
  `numeroruc` varchar(25) DEFAULT NULL,
  `numerodoc` varchar(11) DEFAULT NULL,
  `ind_duo` varchar(20) DEFAULT NULL,
  `tipo_linea` varchar(20) DEFAULT NULL,
  `identifica` varchar(20) DEFAULT NULL,
  KEY `telefono` (`telefono`),
  KEY `cliente` (`cliente`),
  KEY `servicio` (`servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_movistar1` */

DROP TABLE IF EXISTS `planta_movistar1`;

CREATE TABLE `planta_movistar1` (
  `TELEFONO` int(11) DEFAULT NULL,
  `CLIENTE` int(11) DEFAULT NULL,
  `SERVICIO` int(11) DEFAULT NULL,
  `DESDPT` varchar(100) DEFAULT NULL,
  `DESPVC` varchar(100) DEFAULT NULL,
  `DESDTT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `PLANO` varchar(4) DEFAULT NULL,
  `TIPOPERU8k` varchar(100) DEFAULT NULL,
  `NUMERORUC` varchar(20) DEFAULT NULL,
  `NUMERODOC` varchar(10) DEFAULT NULL,
  `IND_DUO` varchar(40) DEFAULT NULL,
  `TIPO_LINEA` varchar(50) DEFAULT NULL,
  `IDENTIFICA` varchar(100) DEFAULT NULL,
  UNIQUE KEY `CLIENTE` (`CLIENTE`,`SERVICIO`),
  KEY `CLIENTE_2` (`CLIENTE`),
  KEY `TELEFONO` (`TELEFONO`),
  KEY `SERVICIO` (`SERVICIO`),
  KEY `NODO` (`NODO`),
  KEY `PLANO` (`PLANO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_nclientes_movistar1` */

DROP TABLE IF EXISTS `planta_nclientes_movistar1`;

CREATE TABLE `planta_nclientes_movistar1` (
  `telefono` int(11) DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `estado_modem` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `macaddress` varchar(14) NOT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `caida` varchar(2) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `telefono` (`telefono`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `estado_modem` (`estado_modem`),
  KEY `macstate` (`macstate`),
  KEY `caida` (`caida`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_telef_cms_new` */

DROP TABLE IF EXISTS `planta_telef_cms_new`;

CREATE TABLE `planta_telef_cms_new` (
  `cliente` double DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `NODO` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `apmlificador` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `NUMERODOC` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  `NUMERORUC` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `telf1` int(11) DEFAULT NULL,
  `telf2` int(11) DEFAULT NULL,
  `telf3` int(11) DEFAULT NULL,
  `telf4` int(11) DEFAULT NULL,
  `telf5` int(11) DEFAULT NULL,
  `telf6` int(11) DEFAULT NULL,
  `telf7` int(11) DEFAULT NULL,
  `telf8` int(11) DEFAULT NULL,
  `telf9` int(11) DEFAULT NULL,
  `telf10` int(11) DEFAULT NULL,
  `telfono2` int(11) DEFAULT NULL,
  `telf11` int(11) DEFAULT NULL,
  `telf12` int(11) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `cliente` (`cliente`,`servicio`),
  KEY `servicio` (`servicio`),
  KEY `NUMERODOC` (`NUMERODOC`),
  KEY `NUMERORUC` (`NUMERORUC`),
  KEY `telf1` (`telf1`),
  KEY `telf2` (`telf2`),
  KEY `telf3` (`telf3`),
  KEY `telf4` (`telf4`),
  KEY `telf5` (`telf5`),
  KEY `telf6` (`telf6`),
  KEY `telf7` (`telf7`),
  KEY `telf8` (`telf8`),
  KEY `telf9` (`telf9`),
  KEY `telf10` (`telf10`),
  KEY `telfono2` (`telfono2`),
  KEY `telf11` (`telf11`),
  KEY `telf12` (`telf12`),
  KEY `NODO` (`NODO`),
  KEY `troba` (`troba`),
  KEY `apmlificador` (`apmlificador`),
  KEY `idxcliente` (`cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_telef_cms_new_c` */

DROP TABLE IF EXISTS `planta_telef_cms_new_c`;

CREATE TABLE `planta_telef_cms_new_c` (
  `cliente` int(10) DEFAULT NULL,
  `servicio` varchar(20) CHARACTER SET latin1 NOT NULL,
  `NODO` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `apmlificador` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `NUMERODOC` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `NUMERORUC` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `telf1` int(11) DEFAULT NULL,
  `telf2` int(11) DEFAULT NULL,
  `telf3` int(11) DEFAULT NULL,
  `telf4` int(11) DEFAULT NULL,
  `telf5` int(11) DEFAULT NULL,
  `telf6` int(11) DEFAULT NULL,
  `telf7` int(11) DEFAULT NULL,
  `telf8` int(11) DEFAULT NULL,
  `telf9` int(11) DEFAULT NULL,
  `telf10` int(11) DEFAULT NULL,
  `telfono2` int(11) DEFAULT NULL,
  `telf11` int(11) DEFAULT NULL,
  `telf12` int(11) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `cliente` (`cliente`,`servicio`),
  KEY `servicio` (`servicio`),
  KEY `NUMERODOC` (`NUMERODOC`),
  KEY `NUMERORUC` (`NUMERORUC`),
  KEY `telf1` (`telf1`),
  KEY `telf2` (`telf2`),
  KEY `telf3` (`telf3`),
  KEY `telf4` (`telf4`),
  KEY `telf5` (`telf5`),
  KEY `telf6` (`telf6`),
  KEY `telf7` (`telf7`),
  KEY `telf8` (`telf8`),
  KEY `telf9` (`telf9`),
  KEY `telf10` (`telf10`),
  KEY `telfono2` (`telfono2`),
  KEY `telf11` (`telf11`),
  KEY `telf12` (`telf12`),
  KEY `NODO` (`NODO`),
  KEY `troba` (`troba`),
  KEY `apmlificador` (`apmlificador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_telefonos_ivr` */

DROP TABLE IF EXISTS `planta_telefonos_ivr`;

CREATE TABLE `planta_telefonos_ivr` (
  `Telefono` int(11) DEFAULT NULL,
  `CUC` varchar(3) DEFAULT NULL,
  `IND_OPCION_VICIO` int(11) DEFAULT NULL,
  `IND_ZONA_ALEJADA` int(11) DEFAULT NULL,
  `TIP_GPO_ATENCION` varchar(3) DEFAULT NULL,
  `ID_ABONADO` varchar(20) DEFAULT NULL,
  `IND_COB_SPEEDY` int(11) DEFAULT NULL,
  `TIP_CLIENTE` varchar(3) DEFAULT NULL,
  `FLAG_NPP` int(11) DEFAULT NULL,
  `PREPAGO` int(11) DEFAULT NULL,
  `NEAX` int(11) DEFAULT NULL,
  `ATIS` int(11) DEFAULT NULL,
  `CICLOFACT` int(11) DEFAULT NULL,
  `CLIPROMO` int(11) DEFAULT NULL,
  `LINEA_CLIENTE` int(11) DEFAULT NULL,
  `ALPHA_MARCA` int(11) DEFAULT NULL,
  `ENC_CROSS` int(11) DEFAULT NULL,
  `ENC_SPEEDY` int(11) DEFAULT NULL,
  `ENC_CABLE` int(11) DEFAULT NULL,
  `MDF` varchar(10) DEFAULT NULL,
  `COD_POST` int(11) DEFAULT NULL,
  `DIGITEX` int(11) DEFAULT NULL,
  `DIV_SEGMENTO` int(11) DEFAULT NULL,
  `DSLAM` int(11) DEFAULT NULL,
  `DIV_SEGM_VALOR` int(11) DEFAULT NULL,
  `tipo_doc_unificado` varchar(10) DEFAULT NULL,
  `documento_unificado` varchar(20) DEFAULT NULL,
  `cargo_fijo` int(11) DEFAULT NULL,
  UNIQUE KEY `Telefono` (`Telefono`),
  UNIQUE KEY `documento_unificado` (`documento_unificado`),
  KEY `ID_ABONADO` (`ID_ABONADO`),
  KEY `TIP_CLIENTE` (`TIP_CLIENTE`),
  KEY `tipo_doc_unificado` (`tipo_doc_unificado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_total` */

DROP TABLE IF EXISTS `planta_total`;

CREATE TABLE `planta_total` (
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `plano` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `plano` (`plano`),
  KEY `clave` (`clave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `premium` */

DROP TABLE IF EXISTS `premium`;

CREATE TABLE `premium` (
  `nodo` varchar(2) DEFAULT NULL,
  `plano` varchar(4) DEFAULT NULL,
  `troba` varchar(6) NOT NULL,
  PRIMARY KEY (`troba`),
  KEY `nodo` (`nodo`),
  KEY `plano` (`plano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `nodo` varchar(2) DEFAULT NULL,
  `trobaf` varchar(4) DEFAULT NULL,
  UNIQUE KEY `troba` (`troba`),
  KEY `grupo_microzona` (`grupo_microzona`),
  KEY `jefComercial` (`jefComercial`),
  KEY `region` (`region`),
  KEY `grupo` (`grupo`),
  KEY `trobaf` (`trobaf`),
  KEY `nodo` (`nodo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `query` */

DROP TABLE IF EXISTS `query`;

CREATE TABLE `query` (
  `detalle` varchar(200) DEFAULT NULL,
  `query` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `redesip_n` */

DROP TABLE IF EXISTS `redesip_n`;

CREATE TABLE `redesip_n` (
  `cmts` varchar(30) DEFAULT NULL,
  `subnet` varchar(20) DEFAULT NULL,
  `netmask` varchar(20) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `rangefrom` varchar(20) DEFAULT NULL,
  `rangeto` varchar(20) DEFAULT NULL,
  `subnetid` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `scopesgroup` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `robot_codctr` */

DROP TABLE IF EXISTS `robot_codctr`;

CREATE TABLE `robot_codctr` (
  `codctr` int(11) DEFAULT NULL,
  `desctr` varchar(30) DEFAULT NULL,
  KEY `codctr` (`codctr`),
  KEY `desctr` (`desctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `robot_codctr_nodo` */

DROP TABLE IF EXISTS `robot_codctr_nodo`;

CREATE TABLE `robot_codctr_nodo` (
  `nodo` varchar(2) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `desctr` varchar(30) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `codctr` (`codctr`),
  KEY `desctr` (`desctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `saturaciones_olt` */

DROP TABLE IF EXISTS `saturaciones_olt`;

CREATE TABLE `saturaciones_olt` (
  `Puerto` varchar(6) DEFAULT NULL,
  `Vendor` varchar(10) DEFAULT NULL,
  `Tipo1` varchar(10) DEFAULT NULL,
  `Tipo2` varchar(10) DEFAULT NULL,
  `Portadoras` int(11) DEFAULT NULL,
  `Clientes` int(11) DEFAULT NULL,
  `Anterior` varchar(20) DEFAULT NULL,
  `Actual` varchar(20) DEFAULT NULL,
  KEY `Puerto` (`Puerto`),
  KEY `Vendor` (`Vendor`),
  KEY `Tipo` (`Tipo1`),
  KEY `Semana35` (`Anterior`),
  KEY `Semana36` (`Actual`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `sonaverias` */

DROP TABLE IF EXISTS `sonaverias`;

CREATE TABLE `sonaverias` (
  `motivo` varchar(4) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `servicio` varchar(50) DEFAULT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  `tipave` varchar(2) DEFAULT NULL,
  KEY `motivo` (`motivo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tecnico` */

DROP TABLE IF EXISTS `tecnico`;

CREATE TABLE `tecnico` (
  `TECNICO` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `telcontacto_msj` */

DROP TABLE IF EXISTS `telcontacto_msj`;

CREATE TABLE `telcontacto_msj` (
  `nombre` varchar(40) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telef_multi` */

DROP TABLE IF EXISTS `telef_multi`;

CREATE TABLE `telef_multi` (
  `codcli` int(11) NOT NULL,
  `telef1` int(11) DEFAULT NULL,
  `telef2` int(11) DEFAULT NULL,
  `telef3` int(11) DEFAULT NULL,
  PRIMARY KEY (`codcli`),
  KEY `telef1` (`telef1`),
  KEY `telef2` (`telef2`),
  KEY `telef3` (`telef3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telefonos_atis` */

DROP TABLE IF EXISTS `telefonos_atis`;

CREATE TABLE `telefonos_atis` (
  `Cliente` int(11) DEFAULT NULL,
  `Cuenta` int(11) DEFAULT NULL,
  `Inscripcion` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `CABLE_CLIENTE_CMS` int(11) DEFAULT NULL,
  `TIPO_DOCUMENTO_CTE` varchar(3) DEFAULT NULL,
  `DOCUMENTO_CLIENTE` varchar(10) DEFAULT NULL,
  `NOMBRE_CLIENTE` varchar(100) DEFAULT NULL,
  `DIRECCION_PC` varchar(200) DEFAULT NULL,
  `SUNAT_RUC` int(11) DEFAULT NULL,
  `CLUSTER_` varchar(20) DEFAULT NULL,
  `PAQUETE_TIPO` varchar(20) DEFAULT NULL,
  `Macrosegmento` varchar(20) DEFAULT NULL,
  `MACROSEGMENTO_TOP` varchar(20) DEFAULT NULL,
  `RENTA_TOTAL_2` varchar(6) DEFAULT NULL,
  `correo1` varchar(80) DEFAULT NULL,
  `correo2` varchar(80) DEFAULT NULL,
  `movil1` int(11) DEFAULT NULL,
  `probabilidad_movil1` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL1` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL1` varchar(20) DEFAULT NULL,
  `DOC_MOVIL1` int(11) DEFAULT NULL,
  `movil2` int(11) DEFAULT NULL,
  `probabilidad_movil2` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL2` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL2` varchar(20) DEFAULT NULL,
  `DOC_MOVIL2` int(11) DEFAULT NULL,
  `movil3` int(11) DEFAULT NULL,
  `probabilidad_movil3` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL3` int(11) DEFAULT NULL,
  `TIPODOC_MOVIL3` varchar(20) DEFAULT NULL,
  `DOC_MOVIL3` int(11) DEFAULT NULL,
  `movil4` int(11) DEFAULT NULL,
  `probabilidad_movil4` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL4` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL4` varchar(20) DEFAULT NULL,
  `DOC_MOVIL4` int(11) DEFAULT NULL,
  `movil5` int(11) DEFAULT NULL,
  `probabilidad_movil5` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL5` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL5` varchar(20) DEFAULT NULL,
  `DOC_MOVIL5` int(11) DEFAULT NULL,
  `DEPARTAMENTO` varchar(20) DEFAULT NULL,
  `DISTRITO` varchar(20) DEFAULT NULL,
  `FE_ALTA_PC` varchar(20) DEFAULT NULL,
  `FLAG_ALTO_VALOR` varchar(20) DEFAULT NULL,
  `Ciclo` int(11) DEFAULT NULL,
  KEY `Cliente` (`Cliente`),
  KEY `Telefono` (`Telefono`),
  KEY `Inscripcion` (`Inscripcion`),
  KEY `TIPODOC_MOVIL2` (`TIPODOC_MOVIL2`),
  KEY `DOCUMENTO_CLIENTE` (`DOCUMENTO_CLIENTE`),
  KEY `movil1` (`movil1`),
  KEY `movil2` (`movil2`),
  KEY `movil3` (`movil3`),
  KEY `Cliente_2` (`Cliente`,`movil4`),
  KEY `CABLE_CLIENTE_CMS` (`CABLE_CLIENTE_CMS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telefonos_atis_c` */

DROP TABLE IF EXISTS `telefonos_atis_c`;

CREATE TABLE `telefonos_atis_c` (
  `Cliente` int(11) DEFAULT NULL,
  `Cuenta` int(11) DEFAULT NULL,
  `Inscripcion` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `CABLE_CLIENTE_CMS` int(11) DEFAULT NULL,
  `TIPO_DOCUMENTO_CTE` varchar(3) DEFAULT NULL,
  `DOCUMENTO_CLIENTE` varchar(10) DEFAULT NULL,
  `NOMBRE_CLIENTE` varchar(100) DEFAULT NULL,
  `DIRECCION_PC` varchar(200) DEFAULT NULL,
  `SUNAT_RUC` int(11) DEFAULT NULL,
  `CLUSTER_` varchar(20) DEFAULT NULL,
  `PAQUETE_TIPO` varchar(20) DEFAULT NULL,
  `Macrosegmento` varchar(20) DEFAULT NULL,
  `MACROSEGMENTO_TOP` varchar(20) DEFAULT NULL,
  `RENTA_TOTAL_2` varchar(6) DEFAULT NULL,
  `correo1` varchar(80) DEFAULT NULL,
  `correo2` varchar(80) DEFAULT NULL,
  `movil1` int(11) DEFAULT NULL,
  `probabilidad_movil1` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL1` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL1` varchar(20) DEFAULT NULL,
  `DOC_MOVIL1` int(11) DEFAULT NULL,
  `movil2` int(11) DEFAULT NULL,
  `probabilidad_movil2` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL2` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL2` varchar(20) DEFAULT NULL,
  `DOC_MOVIL2` int(11) DEFAULT NULL,
  `movil3` int(11) DEFAULT NULL,
  `probabilidad_movil3` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL3` int(11) DEFAULT NULL,
  `TIPODOC_MOVIL3` varchar(20) DEFAULT NULL,
  `DOC_MOVIL3` int(11) DEFAULT NULL,
  `movil4` int(11) DEFAULT NULL,
  `probabilidad_movil4` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL4` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL4` varchar(20) DEFAULT NULL,
  `DOC_MOVIL4` int(11) DEFAULT NULL,
  `movil5` int(11) DEFAULT NULL,
  `probabilidad_movil5` int(11) DEFAULT NULL,
  `OPERADOR_MOVIL5` varchar(20) DEFAULT NULL,
  `TIPODOC_MOVIL5` varchar(20) DEFAULT NULL,
  `DOC_MOVIL5` int(11) DEFAULT NULL,
  `DEPARTAMENTO` varchar(20) DEFAULT NULL,
  `DISTRITO` varchar(20) DEFAULT NULL,
  `FE_ALTA_PC` varchar(20) DEFAULT NULL,
  `FLAG_ALTO_VALOR` varchar(20) DEFAULT NULL,
  `Ciclo` int(11) DEFAULT NULL,
  KEY `Cliente` (`Cliente`),
  KEY `Telefono` (`Telefono`),
  KEY `Inscripcion` (`Inscripcion`),
  KEY `TIPODOC_MOVIL2` (`TIPODOC_MOVIL2`),
  KEY `DOCUMENTO_CLIENTE` (`DOCUMENTO_CLIENTE`),
  KEY `movil1` (`movil1`),
  KEY `movil2` (`movil2`),
  KEY `movil3` (`movil3`),
  KEY `Cliente_2` (`Cliente`,`movil4`),
  KEY `CABLE_CLIENTE_CMS` (`CABLE_CLIENTE_CMS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telefonos_cms` */

DROP TABLE IF EXISTS `telefonos_cms`;

CREATE TABLE `telefonos_cms` (
  `Cliente` int(11) DEFAULT NULL,
  `Cuenta` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `segmento` varchar(20) DEFAULT NULL,
  `TECNOLOGIA` varchar(6) DEFAULT NULL,
  `NOMBRE_CLIENTE` varchar(100) DEFAULT NULL,
  `TIPDOC` varchar(3) DEFAULT NULL,
  `NUMDOC` int(11) DEFAULT NULL,
  `NUMRUC` varchar(20) DEFAULT NULL,
  `Departamento` varchar(40) DEFAULT NULL,
  `Provincia` varchar(40) DEFAULT NULL,
  `Distrito` varchar(40) DEFAULT NULL,
  `DIRECCION_INSTALACION` varchar(200) DEFAULT NULL,
  `TELEFONO_VOIP` int(11) DEFAULT NULL,
  `FE_ALTA` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `tipodoc1` varchar(20) DEFAULT NULL,
  `numdoc1` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Fuente_Contacto` varchar(20) DEFAULT NULL,
  `Tipo_Producto` varchar(20) DEFAULT NULL,
  `Operador` varchar(20) DEFAULT NULL,
  `Flg_trafico` varchar(20) DEFAULT NULL,
  `PRIORIDAD` int(11) DEFAULT NULL,
  `tipodoc2` varchar(20) DEFAULT NULL,
  `numdoc2` int(11) DEFAULT NULL,
  `telfono2` int(11) DEFAULT NULL,
  `fuente_contacto2` varchar(20) DEFAULT NULL,
  `tipo_producto_2` varchar(20) DEFAULT NULL,
  `operador_2` varchar(20) DEFAULT NULL,
  `flg_trafico2` varchar(20) DEFAULT NULL,
  `prioridad_2` int(11) DEFAULT NULL,
  `tipodoc3` varchar(20) DEFAULT NULL,
  `numdoc3` int(11) DEFAULT NULL,
  `telfono3` int(11) DEFAULT NULL,
  `fuente_contacto3` varchar(20) DEFAULT NULL,
  `tipo_producto_3` varchar(20) DEFAULT NULL,
  `operador_3` varchar(20) DEFAULT NULL,
  `flg_trafico3` varchar(20) DEFAULT NULL,
  `prioridad_3` int(11) DEFAULT NULL,
  `tipodoc4` varchar(10) DEFAULT NULL,
  `numdoc4` varchar(20) DEFAULT NULL,
  `telfono4` int(11) DEFAULT NULL,
  `fuente_contacto4` varchar(50) DEFAULT NULL,
  `tipo_producto_4` varchar(50) DEFAULT NULL,
  `operador_4` varchar(50) DEFAULT NULL,
  `flg_trafico4` varchar(50) DEFAULT NULL,
  `prioridad_4` varchar(50) DEFAULT NULL,
  `CORREO_1` varchar(50) DEFAULT NULL,
  `CORREO_2` varchar(50) DEFAULT NULL,
  KEY `Cliente` (`Cliente`),
  KEY `NUMDOC` (`NUMDOC`),
  KEY `NUMRUC` (`NUMRUC`),
  KEY `TELEFONO_VOIP` (`TELEFONO_VOIP`),
  KEY `Telefono` (`Telefono`),
  KEY `numdoc2` (`numdoc2`),
  KEY `telfono2` (`telfono2`),
  KEY `numdoc3` (`numdoc3`),
  KEY `telfono3` (`telfono3`),
  KEY `numdoc4` (`numdoc4`),
  KEY `telfono4` (`telfono4`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `telefonos_cms_c` */

DROP TABLE IF EXISTS `telefonos_cms_c`;

CREATE TABLE `telefonos_cms_c` (
  `Cliente` int(11) DEFAULT NULL,
  `Cuenta` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `segmento` varchar(20) DEFAULT NULL,
  `TECNOLOGIA` varchar(6) DEFAULT NULL,
  `NOMBRE_CLIENTE` varchar(100) DEFAULT NULL,
  `TIPDOC` varchar(3) DEFAULT NULL,
  `NUMDOC` int(11) DEFAULT NULL,
  `NUMRUC` varchar(20) DEFAULT NULL,
  `Departamento` varchar(40) DEFAULT NULL,
  `Provincia` varchar(40) DEFAULT NULL,
  `Distrito` varchar(40) DEFAULT NULL,
  `DIRECCION_INSTALACION` varchar(200) DEFAULT NULL,
  `TELEFONO_VOIP` int(11) DEFAULT NULL,
  `FE_ALTA` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `tipodoc1` varchar(20) DEFAULT NULL,
  `numdoc1` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Fuente_Contacto` varchar(20) DEFAULT NULL,
  `Tipo_Producto` varchar(20) DEFAULT NULL,
  `Operador` varchar(20) DEFAULT NULL,
  `Flg_trafico` varchar(20) DEFAULT NULL,
  `PRIORIDAD` int(11) DEFAULT NULL,
  `tipodoc2` varchar(20) DEFAULT NULL,
  `numdoc2` int(11) DEFAULT NULL,
  `telfono2` int(11) DEFAULT NULL,
  `fuente_contacto2` varchar(20) DEFAULT NULL,
  `tipo_producto_2` varchar(20) DEFAULT NULL,
  `operador_2` varchar(20) DEFAULT NULL,
  `flg_trafico2` varchar(20) DEFAULT NULL,
  `prioridad_2` int(11) DEFAULT NULL,
  `tipodoc3` varchar(20) DEFAULT NULL,
  `numdoc3` int(11) DEFAULT NULL,
  `telfono3` int(11) DEFAULT NULL,
  `fuente_contacto3` varchar(20) DEFAULT NULL,
  `tipo_producto_3` varchar(20) DEFAULT NULL,
  `operador_3` varchar(20) DEFAULT NULL,
  `flg_trafico3` varchar(20) DEFAULT NULL,
  `prioridad_3` int(11) DEFAULT NULL,
  `tipodoc4` varchar(10) DEFAULT NULL,
  `numdoc4` varchar(20) DEFAULT NULL,
  `telfono4` int(11) DEFAULT NULL,
  `fuente_contacto4` varchar(50) DEFAULT NULL,
  `tipo_producto_4` varchar(50) DEFAULT NULL,
  `operador_4` varchar(50) DEFAULT NULL,
  `flg_trafico4` varchar(50) DEFAULT NULL,
  `prioridad_4` varchar(50) DEFAULT NULL,
  `CORREO_1` varchar(50) DEFAULT NULL,
  `CORREO_2` varchar(50) DEFAULT NULL,
  KEY `Cliente` (`Cliente`),
  KEY `NUMDOC` (`NUMDOC`),
  KEY `NUMRUC` (`NUMRUC`),
  KEY `TELEFONO_VOIP` (`TELEFONO_VOIP`),
  KEY `Telefono` (`Telefono`),
  KEY `numdoc2` (`numdoc2`),
  KEY `telfono2` (`telfono2`),
  KEY `numdoc3` (`numdoc3`),
  KEY `telfono3` (`telfono3`),
  KEY `numdoc4` (`numdoc4`),
  KEY `telfono4` (`telfono4`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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

/*Table structure for table `telefonoshfc_c` */

DROP TABLE IF EXISTS `telefonoshfc_c`;

CREATE TABLE `telefonoshfc_c` (
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

/*Table structure for table `ticketportroba` */

DROP TABLE IF EXISTS `ticketportroba`;

CREATE TABLE `ticketportroba` (
  `nodo` varchar(4) CHARACTER SET latin1 NOT NULL,
  `troba` varchar(5) CHARACTER SET latin1 NOT NULL,
  `amplificador` varchar(2) NOT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `eventid` int(11) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `usuario_origen` varchar(30) DEFAULT NULL,
  `usuario_termino` varchar(30) DEFAULT NULL,
  `fecha_termino` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nodo`,`troba`,`eventid`,`amplificador`),
  KEY `eventid` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tickets_dmpe` */

DROP TABLE IF EXISTS `tickets_dmpe`;

CREATE TABLE `tickets_dmpe` (
  `eventid` int(11) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `fecha_termino` varchar(20) DEFAULT NULL,
  `usuario_origen` varchar(30) DEFAULT NULL,
  `usuario_termino` varchar(30) DEFAULT NULL,
  `agente` varchar(50) DEFAULT NULL,
  UNIQUE KEY `eventid` (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tickets_dmpe_back` */

DROP TABLE IF EXISTS `tickets_dmpe_back`;

CREATE TABLE `tickets_dmpe_back` (
  `eventid` int(11) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `fecha_termino` varchar(20) DEFAULT NULL,
  `usuario_origen` varchar(30) DEFAULT NULL,
  `usuario_termino` varchar(30) DEFAULT NULL,
  `agente` varchar(50) DEFAULT NULL,
  UNIQUE KEY `eventid` (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tickets_dmpe_c` */

DROP TABLE IF EXISTS `tickets_dmpe_c`;

CREATE TABLE `tickets_dmpe_c` (
  `eventid` int(11) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `fecha_termino` varchar(20) DEFAULT NULL,
  `usuario_origen` varchar(30) DEFAULT NULL,
  `usuario_termino` varchar(30) DEFAULT NULL,
  `agente` varchar(50) DEFAULT NULL,
  UNIQUE KEY `eventid` (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tipoEquipos` */

DROP TABLE IF EXISTS `tipoEquipos`;

CREATE TABLE `tipoEquipos` (
  `fabricante` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `soporte` varchar(2) DEFAULT NULL,
  `wifi` varchar(20) DEFAULT NULL,
  UNIQUE KEY `fabricante_2` (`fabricante`,`modelo`),
  KEY `fabricante` (`fabricante`),
  KEY `modelo` (`modelo`),
  KEY `soporte` (`soporte`),
  KEY `wifi` (`wifi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `top100200` */

DROP TABLE IF EXISTS `top100200`;

CREATE TABLE `top100200` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `clave` varchar(6) NOT NULL,
  PRIMARY KEY (`clave`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `top` (`top`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `top_trobas` */

DROP TABLE IF EXISTS `top_trobas`;

CREATE TABLE `top_trobas` (
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `estatus` varchar(40) NOT NULL DEFAULT '',
  KEY `nodotroba` (`nodotroba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `torreshfc` */

DROP TABLE IF EXISTS `torreshfc`;

CREATE TABLE `torreshfc` (
  `oui` varchar(8) NOT NULL,
  PRIMARY KEY (`oui`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `trabajo` */

DROP TABLE IF EXISTS `trabajo`;

CREATE TABLE `trabajo` (
  `trabajo` varchar(100) DEFAULT NULL,
  KEY `NewIndex1` (`trabajo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados` */

DROP TABLE IF EXISTS `trabajos_programados`;

CREATE TABLE `trabajos_programados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodetrabajo` varchar(200) NOT NULL DEFAULT '',
  `tipodetrabajo1` varchar(200) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NewIndex1` (`tipodetrabajo1`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados_d` */

DROP TABLE IF EXISTS `trabajos_programados_d`;

CREATE TABLE `trabajos_programados_d` (
  `tipodetrabajo` varchar(200) NOT NULL DEFAULT '',
  `tipodetrabajo1` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tipodetrabajo`),
  KEY `NewIndex1` (`tipodetrabajo1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `troba_tiptec` */

DROP TABLE IF EXISTS `troba_tiptec`;

CREATE TABLE `troba_tiptec` (
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `TIPTEC` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `HFC` decimal(23,0) DEFAULT NULL,
  `CATV` decimal(23,0) DEFAULT NULL,
  `GPON` decimal(23,0) DEFAULT NULL,
  `TOTAL` bigint(21) NOT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`),
  KEY `TIPTEC` (`TIPTEC`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `trobas_criticas_n` */

DROP TABLE IF EXISTS `trobas_criticas_n`;

CREATE TABLE `trobas_criticas_n` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `critica` int(1) NOT NULL DEFAULT '0',
  `noalerta` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `critica` (`critica`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_digitalizadas` */

DROP TABLE IF EXISTS `trobas_digitalizadas`;

CREATE TABLE `trobas_digitalizadas` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `zona` varchar(10) NOT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `nodotroba` varchar(10) NOT NULL DEFAULT '',
  `amplif` varchar(10) DEFAULT NULL,
  `eecc` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `fechan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`nodotroba`),
  KEY `idxNodo` (`nodo`),
  KEY `idxTroba` (`troba`)
) ENGINE=InnoDB AUTO_INCREMENT=947632 DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_fuentes` */

DROP TABLE IF EXISTS `trobas_fuentes`;

CREATE TABLE `trobas_fuentes` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `clave` varchar(6) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `mac4` varchar(20) DEFAULT NULL,
  `respaldo` varchar(100) DEFAULT NULL,
  `descricion` varchar(100) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`clave`,`mac`),
  KEY `NewIndex2` (`mac3`),
  KEY `NewIndex3` (`nodo`),
  KEY `NewIndex4` (`troba`),
  KEY `NewIndex5` (`mac4`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_olt` */

DROP TABLE IF EXISTS `trobas_olt`;

CREATE TABLE `trobas_olt` (
  `cmts` varchar(50) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `troba` varchar(11) DEFAULT NULL,
  `descriporig` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`interface`),
  KEY `cmts_2` (`cmts`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trobascriticas` */

DROP TABLE IF EXISTS `trobascriticas`;

CREATE TABLE `trobascriticas` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`nodo`,`troba`),
  KEY `NewIndex2` (`nodo`),
  KEY `NewIndex3` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trobaxinterface` */

DROP TABLE IF EXISTS `trobaxinterface`;

CREATE TABLE `trobaxinterface` (
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  KEY `cmts` (`cmts`),
  KEY `f_v` (`f_v`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
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
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

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

/*Table structure for table `zona_coronavirus` */

DROP TABLE IF EXISTS `zona_coronavirus`;

CREATE TABLE `zona_coronavirus` (
  `nodo` varchar(2) DEFAULT NULL,
  `plano` varchar(4) DEFAULT NULL,
  `troba` varchar(6) NOT NULL,
  PRIMARY KEY (`troba`),
  KEY `nodo` (`nodo`),
  KEY `plano` (`plano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `zonasxy` */

DROP TABLE IF EXISTS `zonasxy`;

CREATE TABLE `zonasxy` (
  `jefatura` varchar(20) NOT NULL,
  `latitud` varchar(20) CHARACTER SET utf8 NOT NULL,
  `longitud` varchar(29) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`jefatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `zonificacion` */

DROP TABLE IF EXISTS `zonificacion`;

CREATE TABLE `zonificacion` (
  `dpto` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `mdf` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `xunion` varchar(50) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `region` varchar(40) DEFAULT NULL,
  `jef_cmr` varchar(50) DEFAULT NULL,
  `xxllavemar` varchar(50) DEFAULT NULL,
  `det_region` varchar(50) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `jefatura` varchar(40) DEFAULT NULL,
  `prem_mas` varchar(40) DEFAULT NULL,
  `xxeecc` varchar(40) DEFAULT NULL,
  `supervisor` varchar(40) DEFAULT NULL,
  `entrenador` varchar(100) DEFAULT NULL,
  `microzona` varchar(40) DEFAULT NULL,
  `zona` varchar(40) DEFAULT NULL,
  `zon_region` varchar(40) DEFAULT NULL,
  `xllavemar2` varchar(40) DEFAULT NULL,
  `playas` varchar(40) DEFAULT NULL,
  `eecc` varchar(40) DEFAULT NULL,
  `mzona_catv` varchar(40) DEFAULT NULL,
  `mzona_dth` varchar(40) DEFAULT NULL,
  `jefa_nuevo` varchar(40) DEFAULT NULL,
  `jefa_tac` varchar(40) DEFAULT NULL,
  `bono` varchar(40) DEFAULT NULL,
  `mzona_tac` varchar(40) DEFAULT NULL,
  `mzona_8k` varchar(40) DEFAULT NULL,
  `terreno` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`tipo`),
  KEY `NewIndex2` (`mdf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_carga_degradados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_carga_degradados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_carga_degradados`()
BEGIN
	
	delete from catalogos.`analgesico` where mensaje='NO GENERAR AVERIA </BR> CLIENTE CON DEUDA(DISMINUCION DE CANALES Y/O VELOCIDAD)';
	insert ignore catalogos.analgesico
	SELECT a.cliente,'NO GENERAR AVERIA </BR> CLIENTE CON DEUDA(DISMINUCION DE CANALES Y/O VELOCIDAD)' 
	FROM catalogos.`planta_movistar1`  a  INNER JOIN catalogos.degrada b
	ON a.telefono=b.telefono;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_telef_cms_new` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_telef_cms_new` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_telef_cms_new`()
BEGIN
	UPDATE catalogos.`planta_telef_cms_new` a FORCE INDEX(servicio,idxcliente)
	INNER JOIN  multiconsulta.nclientes_c b FORCE INDEX(idxcodserv,NewIndex1)
	ON a.`servicio`=b.`codserv` AND a.`cliente`=b.`IDCLIENTECRM`
	SET a.NODO=SUBSTR(b.NODO,1,2),a.troba=b.TROBA 
	WHERE b.NODO NOT IN ('','0');
	
	
	SELECT * FROM catalogos.`planta_telef_cms_new` 
	INTO OUTFILE '/temp/planta_telef_cms.csv' 
	FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_amplifxpuerto` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_amplifxpuerto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_amplifxpuerto`()
BEGIN
REPLACE ccm1.`cantroba` 
SELECT nodo,troba,COUNT(*)AS cant,CONCAT(nodo,troba) ,NOW()
FROM multiconsulta.`nclientes`
WHERE SUBSTR(nodo,1,1)<>''
GROUP BY 1,2;
truncate catalogos.`amplixpuerto_temp1`;
insert ignore catalogos.`amplixpuerto_temp1`
	SELECT IF(cmts='','SINDATO',cmts) AS cmts,IF(cmts='','SINDATO',f_v) AS f_v,nodo,troba,amplificador,concat(nodo,troba,amplificador) as clave
	FROM multiconsulta.`nclientes`
	WHERE cmts<>''
	GROUP BY 1,2,3,4,5 
	HAVING(amplificador<>'')
	ORDER BY 3,4,5;
	
	TRUNCATE TABLE catalogos.amplifxpuerto_c;
	INSERT IGNORE  catalogos.amplifxpuerto_c
	SELECT xx.* FROM catalogos.`amplixpuerto_temp1`  xx
	WHERE cmts<>'SINDATO';
	
	INSERT IGNORE `amplifxpuerto_c`
	SELECT xx.* FROM catalogos.`amplixpuerto_temp1` xx force index (clave) 
	LEFT JOIN `amplifxpuerto_c` b FORCE INDEX (clave)
	ON xx.clave AND b.clave
	WHERE xx.cmts='SINDATO' AND b.troba IS NULL;
	
TRUNCATE catalogos.`amplixpuerto_temp1`;
INSERT IGNORE catalogos.`amplixpuerto_temp1`
	SELECT 'SINDATO' cmts,'SINDATO' AS f_v,nodo,PLANO AS troba,codlex AS amplificador ,concat(nodo,troba,codlex) as clave
	FROM cms.`planta_clarita`
	GROUP BY 1,2,3,4,5 
	HAVING(codlex<>'')
	ORDER BY 3,4,5;	
	
	
	
	INSERT IGNORE catalogos.amplifxpuerto_c
	SELECT xx.* FROM catalogos.`amplixpuerto_temp1` xx FORCE INDEX (clave) 
	LEFT JOIN catalogos.`amplifxpuerto_c` b force index (clave)
	ON xx.clave=b.clave 
	WHERE xx.cmts='SINDATO' AND b.troba IS NULL;
	
	SELECT `cmts`,`f_v`,`nodo`,`troba`,`amplificador` FROM catalogos.amplifxpuerto_c INTO OUTFILE '/temp/amplifxpuerto.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
	
	RENAME TABLE catalogos.amplifxpuerto TO catalogos.amplifxpuerto_d,
		catalogos.amplifxpuerto_c TO catalogos.amplifxpuerto,
		catalogos.amplifxpuerto_d TO catalogos.amplifxpuerto_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_llamadas_mes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_llamadas_mes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_llamadas_mes`()
BEGIN
	SELECT 'fecha','hora','resultado','Cant' 
	UNION
	SELECT
	  SUBSTR(`inf`.`fecha`,1,8) AS `fecha`,
	  CONCAT('[',SUBSTR(`inf`.`fecha`,10,2),IF(((SUBSTR(`inf`.`fecha`,13,2) >= '00') AND (SUBSTR(`inf`.`fecha`,13,2) <= '15')),']00-15',IF(((SUBSTR(`inf`.`fecha`,13,2) >= '16') AND (SUBSTR(`inf`.`fecha`,13,2) <= '30')),']16-30',IF(((SUBSTR(`inf`.`fecha`,13,2) >= '31') AND (SUBSTR(`inf`.`fecha`,13,2) <= '45')),']31-45',IF(((SUBSTR(`inf`.`fecha`,13,2) >= '46') AND (SUBSTR(`inf`.`fecha`,13,2) <= '60')),']45-59',''))))) AS `hora`,
	  IF(`inf`.`fechaticket` = 'Telefono no Alarmado',`inf`.`fechaticket`,
	  IF(`inf`.`agente` IN ('HFC MANUAL','MASIVA HFC','MASIVA HFC CONFIRMADA','MASIVA HFC MANUAL'),'ALERTA MASIVA HFC',
	  IF(`inf`.`agente` = 'FTTx MANUAL','ALERTA MASIVA FTTH',
	  IF((`inf`.`agente` IS NULL OR `inf`.`fechaticket` IS NULL) ,'Telefono no Alarmado','Telefono no Alarmado'
	  )))) AS `resultado`,
	  COUNT(0) AS `Cant`
	FROM `inf_hfc_dmpe` `inf`
	WHERE 
	DATEDIFF(NOW(),CONCAT(SUBSTR(fecha,1,4),'-',SUBSTR(fecha,5,2),'-',SUBSTR(fecha,7,2)))>=0 AND DATEDIFF(NOW(),CONCAT(SUBSTR(fecha,1,4),'-',SUBSTR(fecha,5,2),'-',SUBSTR(fecha,7,2)))<=30 AND 
	(SUBSTR(`inf`.`fecha`,10,2)IN('00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23'))
	GROUP BY 1,2,3
	INTO OUTFILE '/temp/llamadas_mes.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/*Table structure for table `dmpe_view` */

DROP TABLE IF EXISTS `dmpe_view`;

/*!50001 DROP VIEW IF EXISTS `dmpe_view` */;
/*!50001 DROP TABLE IF EXISTS `dmpe_view` */;

/*!50001 CREATE TABLE  `dmpe_view`(
 `fecha` varchar(10) ,
 `hora` varchar(9) ,
 `resultado` varchar(20) ,
 `Cant` bigint(21) 
)*/;

/*Table structure for table `redesip_view` */

DROP TABLE IF EXISTS `redesip_view`;

/*!50001 DROP VIEW IF EXISTS `redesip_view` */;
/*!50001 DROP TABLE IF EXISTS `redesip_view` */;

/*!50001 CREATE TABLE  `redesip_view`(
 `cmts` varchar(85) ,
 `scopesgroup` varchar(20) ,
 `total` decimal(32,0) ,
 `used` decimal(32,0) ,
 `available` decimal(32,0) ,
 `porc` decimal(39,4) ,
 `estado` varchar(5) ,
 `cmts_ip` varchar(30) 
)*/;

/*Table structure for table `segmentos_view` */

DROP TABLE IF EXISTS `segmentos_view`;

/*!50001 DROP VIEW IF EXISTS `segmentos_view` */;
/*!50001 DROP TABLE IF EXISTS `segmentos_view` */;

/*!50001 CREATE TABLE  `segmentos_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `segmento` varchar(41) 
)*/;

/*Table structure for table `trobas_digi_view` */

DROP TABLE IF EXISTS `trobas_digi_view`;

/*!50001 DROP VIEW IF EXISTS `trobas_digi_view` */;
/*!50001 DROP TABLE IF EXISTS `trobas_digi_view` */;

/*!50001 CREATE TABLE  `trobas_digi_view`(
 `nodo` varchar(10) ,
 `troba` varchar(10) ,
 `fecha` varchar(10) 
)*/;

/*Table structure for table `zonales_catv_view` */

DROP TABLE IF EXISTS `zonales_catv_view`;

/*!50001 DROP VIEW IF EXISTS `zonales_catv_view` */;
/*!50001 DROP TABLE IF EXISTS `zonales_catv_view` */;

/*!50001 CREATE TABLE  `zonales_catv_view`(
 `nodo` varchar(10) ,
 `jefatura` varchar(40) ,
 `eecc` varchar(40) ,
 `entrenador` varchar(100) 
)*/;

/*View structure for view dmpe_view */

/*!50001 DROP TABLE IF EXISTS `dmpe_view` */;
/*!50001 DROP VIEW IF EXISTS `dmpe_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `dmpe_view` AS (select substr(`inf`.`fecha`,1,10) AS `fecha`,if(((substr(`inf`.`fecha`,15,2) >= '00') and (substr(`inf`.`fecha`,15,2) <= '10')),concat('[',substr(`inf`.`fecha`,12,2),']','00-10'),if(((substr(`inf`.`fecha`,15,2) >= '11') and (substr(`inf`.`fecha`,15,2) <= '20')),concat('[',substr(`inf`.`fecha`,12,2),']','11-20'),if(((substr(`inf`.`fecha`,15,2) >= '21') and (substr(`inf`.`fecha`,15,2) <= '30')),concat('[',substr(`inf`.`fecha`,12,2),']','21-30'),if(((substr(`inf`.`fecha`,15,2) >= '31') and (substr(`inf`.`fecha`,15,2) <= '40')),concat('[',substr(`inf`.`fecha`,12,2),']','31-40'),if(((substr(`inf`.`fecha`,15,2) >= '41') and (substr(`inf`.`fecha`,15,2) <= '50')),concat('[',substr(`inf`.`fecha`,12,2),']','41-50'),if(((substr(`inf`.`fecha`,15,2) >= '51') and (substr(`inf`.`fecha`,15,2) <= '59')),concat('[',substr(`inf`.`fecha`,12,2),']','51-59'),'')))))) AS `hora`,if((`inf`.`descripcion` = 'OK'),'Telefono no Alarmado','Telefono Alarmado') AS `resultado`,count(0) AS `Cant` from `inf_hfc_dmpe` `inf` where (((to_days(now()) - to_days(`inf`.`fecha`)) = 0) and (substr(`inf`.`fecha`,12,2) in ('00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23')) and (timediff(now(),`inf`.`fecha`) >= '00:00:00')) group by 1,2,3) */;

/*View structure for view redesip_view */

/*!50001 DROP TABLE IF EXISTS `redesip_view` */;
/*!50001 DROP VIEW IF EXISTS `redesip_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `redesip_view` AS (select concat(`a`.`cmts`,'</br>',`b`.`cmts`) AS `cmts`,`a`.`scopesgroup` AS `scopesgroup`,sum(`a`.`total`) AS `total`,sum(`a`.`used`) AS `used`,sum(`a`.`available`) AS `available`,((sum(`a`.`used`) / sum(`a`.`total`)) * 100) AS `porc`,if(isnull(`b`.`cmts`),'Nuevo','') AS `estado`,`a`.`cmts` AS `cmts_ip` from (`catalogos`.`redesip_n` `a` left join `ccm1`.`cmts_ip` `b` on((`a`.`cmts` = `b`.`realname`))) where ((`a`.`scopesgroup` not in ('CPE-IP-FIJA','GRUPOS')) and (`a`.`cmts` not in ('SG_AREQ7_C100G','CMTS-CASA','CMTS-CISCO-MAQUETA')) and (`a`.`type` is not null) and (`b`.`cmts` is not null)) group by `a`.`cmts`,`a`.`scopesgroup` order by sum(`a`.`available`)) */;

/*View structure for view segmentos_view */

/*!50001 DROP TABLE IF EXISTS `segmentos_view` */;
/*!50001 DROP VIEW IF EXISTS `segmentos_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `segmentos_view` AS (select `premium_fases`.`nodo` AS `nodo`,`premium_fases`.`trobaf` AS `troba`,concat(`premium_fases`.`grupo`,' ',`premium_fases`.`grupo_microzona`) AS `segmento` from `premium_fases` where (`premium_fases`.`sw` = 1)) */;

/*View structure for view trobas_digi_view */

/*!50001 DROP TABLE IF EXISTS `trobas_digi_view` */;
/*!50001 DROP VIEW IF EXISTS `trobas_digi_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `trobas_digi_view` AS (select `trobas_digitalizadas`.`nodo` AS `nodo`,`trobas_digitalizadas`.`troba` AS `troba`,`trobas_digitalizadas`.`fecha` AS `fecha` from `trobas_digitalizadas` where ((to_days(now()) - to_days(`trobas_digitalizadas`.`fechan`)) <= 30)) */;

/*View structure for view zonales_catv_view */

/*!50001 DROP TABLE IF EXISTS `zonales_catv_view` */;
/*!50001 DROP VIEW IF EXISTS `zonales_catv_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `zonales_catv_view` AS (select `zonificacion`.`mdf` AS `nodo`,`zonificacion`.`jefatura` AS `jefatura`,`zonificacion`.`eecc` AS `eecc`,`zonificacion`.`entrenador` AS `entrenador` from `zonificacion` where ((`zonificacion`.`tipo` = 'NODO/DTH') or (`zonificacion`.`tipo` = 'NODO/CATV'))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
