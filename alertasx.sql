/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - alertasx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alertasx` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alertasx`;

/*Table structure for table `afectacionttpp_dmpe` */

DROP TABLE IF EXISTS `afectacionttpp_dmpe`;

CREATE TABLE `afectacionttpp_dmpe` (
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
  `tiempo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `finicio` varchar(31) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `sw` int(1) NOT NULL,
  `fechaproc` varchar(20) DEFAULT NULL,
  KEY `cliente` (`cliente`,`servicio`),
  KEY `sw` (`sw`),
  KEY `fechaproc` (`fechaproc`),
  KEY `NODO` (`NODO`),
  KEY `troba` (`troba`),
  KEY `apmlificador` (`apmlificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `afectacionttpp_dmpe_7dias` */

DROP TABLE IF EXISTS `afectacionttpp_dmpe_7dias`;

CREATE TABLE `afectacionttpp_dmpe_7dias` (
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
  `tiempo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `finicio` varchar(31) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `sw` int(1) NOT NULL,
  `fechaproc` varchar(20) DEFAULT NULL,
  KEY `cliente` (`cliente`,`servicio`),
  KEY `sw` (`sw`),
  KEY `fechaproc` (`fechaproc`),
  KEY `NODO` (`NODO`),
  KEY `troba` (`troba`),
  KEY `apmlificador` (`apmlificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alerta_edificio_sw` */

DROP TABLE IF EXISTS `alerta_edificio_sw`;

CREATE TABLE `alerta_edificio_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `sw` (`sw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_dmpe` */

DROP TABLE IF EXISTS `alertas_dmpe`;

CREATE TABLE `alertas_dmpe` (
  `telf_comp` int(11) DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `alerta` varchar(200) DEFAULT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `coordx` varchar(20) DEFAULT NULL,
  `coordy` varchar(20) DEFAULT NULL,
  `rangot` varchar(6) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `tiptec` (`tiptec`),
  KEY `alerta` (`alerta`(191)),
  KEY `cliente` (`cliente`),
  KEY `usuario` (`usuario`),
  KEY `eventid` (`eventid`),
  KEY `coordx` (`coordx`),
  KEY `coordy` (`coordy`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_dmpe_c` */

DROP TABLE IF EXISTS `alertas_dmpe_c`;

CREATE TABLE `alertas_dmpe_c` (
  `telf_comp` int(11) DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `alerta` varchar(200) DEFAULT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `coordx` varchar(20) DEFAULT NULL,
  `coordy` varchar(20) DEFAULT NULL,
  `rangot` varchar(6) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `tiptec` (`tiptec`),
  KEY `alerta` (`alerta`(191)),
  KEY `cliente` (`cliente`),
  KEY `usuario` (`usuario`),
  KEY `eventid` (`eventid`),
  KEY `coordx` (`coordx`),
  KEY `coordy` (`coordy`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_dmpe_d` */

DROP TABLE IF EXISTS `alertas_dmpe_d`;

CREATE TABLE `alertas_dmpe_d` (
  `telf_comp` int(11) DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `alerta` varchar(200) DEFAULT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `coordx` varchar(20) DEFAULT NULL,
  `coordy` varchar(20) DEFAULT NULL,
  `rangot` varchar(6) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `tiptec` (`tiptec`),
  KEY `alerta` (`alerta`(191)),
  KEY `cliente` (`cliente`),
  KEY `usuario` (`usuario`),
  KEY `eventid` (`eventid`),
  KEY `coordx` (`coordx`),
  KEY `coordy` (`coordy`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_dmpe_historico` */

DROP TABLE IF EXISTS `alertas_dmpe_historico`;

CREATE TABLE `alertas_dmpe_historico` (
  `idcall` int(11) NOT NULL AUTO_INCREMENT,
  `telf_comp` int(11) DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `alerta` varchar(200) DEFAULT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `coordx` varchar(20) DEFAULT NULL,
  `coordy` varchar(20) DEFAULT NULL,
  `rangot` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`idcall`),
  UNIQUE KEY `telf_comp` (`telf_comp`,`cliente`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `tiptec` (`tiptec`),
  KEY `alerta` (`alerta`(191)),
  KEY `cliente` (`cliente`),
  KEY `eventid` (`eventid`),
  KEY `fechahora` (`fechahora`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM AUTO_INCREMENT=4373114 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_dmpe_historico_back` */

DROP TABLE IF EXISTS `alertas_dmpe_historico_back`;

CREATE TABLE `alertas_dmpe_historico_back` (
  `idcall` int(11) NOT NULL AUTO_INCREMENT,
  `telf_comp` int(11) DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `alerta` varchar(200) DEFAULT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `coordx` varchar(20) DEFAULT NULL,
  `coordy` varchar(20) DEFAULT NULL,
  `rangot` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`idcall`),
  UNIQUE KEY `telf_comp` (`telf_comp`,`cliente`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `tiptec` (`tiptec`),
  KEY `alerta` (`alerta`(191)),
  KEY `cliente` (`cliente`),
  KEY `eventid` (`eventid`),
  KEY `fechahora` (`fechahora`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM AUTO_INCREMENT=3741844 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_edificio` */

DROP TABLE IF EXISTS `alertas_edificio`;

CREATE TABLE `alertas_edificio` (
  `desdtt` varchar(100) DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL,
  `nro` varchar(20) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecha_hora_ini` varchar(20) DEFAULT NULL,
  `fecha_hora_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  UNIQUE KEY `desdtt_3` (`desdtt`,`via`,`nro`),
  KEY `desdtt_2` (`desdtt`),
  KEY `via` (`via`),
  KEY `nro` (`nro`),
  KEY `desdtt` (`desdtt`,`via`,`nro`,`fecha_hora_ini`),
  KEY `fecha_hora_ini` (`fecha_hora_ini`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_edificio_c` */

DROP TABLE IF EXISTS `alertas_edificio_c`;

CREATE TABLE `alertas_edificio_c` (
  `desdtt` varchar(100) DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL,
  `nro` varchar(20) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  KEY `desdtt` (`desdtt`,`via`,`nro`),
  KEY `desdtt_2` (`desdtt`),
  KEY `via` (`via`),
  KEY `nro` (`nro`),
  KEY `desdtt_3` (`desdtt`,`via`,`nro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_energia` */

DROP TABLE IF EXISTS `alertas_energia`;

CREATE TABLE `alertas_energia` (
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ipaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `latitudx` varchar(20) DEFAULT NULL,
  `longitudy` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `InputVoltagefinalcolor` varchar(6) CHARACTER SET utf8 NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputVoltagefinalcolor` varchar(6) CHARACTER SET utf8 NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `OutputCurrentfinalcolor` varchar(6) CHARACTER SET utf8 NOT NULL,
  `TotalStringVoltagefinal` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `TotalStringVoltagefinalcolor` varchar(6) CHARACTER SET utf8 NOT NULL,
  `ColorTemperatura` varchar(6) DEFAULT NULL,
  `EstadoTemperatura` float DEFAULT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `colorinversor` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `puntaje` double DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `resultadosnmp` varchar(20) DEFAULT NULL,
  `tienebateria` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `puntajef` double DEFAULT NULL,
  `fechahora_ges` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `usuario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `tecnico` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `estado_ges` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `porc_caida` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `serv_afectado` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `numreq` int(11) DEFAULT NULL,
  `remedy` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `idcausalert` int(11) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `fechahora_caida` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `caida` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `oui` varchar(6) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `ipaddress` (`ipaddress`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_nodo_masaverias` */

DROP TABLE IF EXISTS `alertas_nodo_masaverias`;

CREATE TABLE `alertas_nodo_masaverias` (
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Nodo',
  `hoy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_nodo_masde4llamadas_final` */

DROP TABLE IF EXISTS `alertas_nodo_masde4llamadas_final`;

CREATE TABLE `alertas_nodo_masde4llamadas_final` (
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertas_reporte` */

DROP TABLE IF EXISTS `alertas_reporte`;

CREATE TABLE `alertas_reporte` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `trabprog` varchar(200) DEFAULT NULL,
  `aver` int(11) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `consultas` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `critico` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `estadomasiva` varchar(20) DEFAULT NULL,
  `alertaestado` varchar(20) DEFAULT NULL,
  `fgest` varchar(20) DEFAULT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`jefatura`,`nodo`,`troba`,`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `alertasrf` */

DROP TABLE IF EXISTS `alertasrf`;

CREATE TABLE `alertasrf` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_UP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_DN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrUP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrDN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cantcli` int(11) DEFAULT NULL,
  `fechadeproceso` varchar(20) DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `porc_afec` int(11) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`Interface`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fechadeproceso` (`fechadeproceso`),
  KEY `TipoRuido` (`TipoRuido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertasrf_c` */

DROP TABLE IF EXISTS `alertasrf_c`;

CREATE TABLE `alertasrf_c` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_UP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_DN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrUP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrDN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cantcli` int(11) DEFAULT NULL,
  `fechadeproceso` varchar(20) DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `porc_afec` int(11) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`Interface`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fechadeproceso` (`fechadeproceso`),
  KEY `TipoRuido` (`TipoRuido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertasrf_int` */

DROP TABLE IF EXISTS `alertasrf_int`;

CREATE TABLE `alertasrf_int` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_UP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_DN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrUP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrDN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `afec` decimal(23,0) DEFAULT NULL,
  `nivel` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cancli` bigint(21) DEFAULT NULL,
  `porc` decimal(30,4) DEFAULT NULL,
  `averias` int(11) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `nodotroba` varchar(6) DEFAULT NULL,
  `priorizada` varchar(2) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`Interface`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `TipoRuido` (`TipoRuido`),
  KEY `nivel` (`nivel`),
  KEY `priorizada` (`priorizada`),
  KEY `nodotroba` (`nodotroba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `alertasrf_r` */

DROP TABLE IF EXISTS `alertasrf_r`;

CREATE TABLE `alertasrf_r` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_UP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Pwr_DN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrUP` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SnrDN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_hora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cantcli` int(11) DEFAULT NULL,
  `fechadeproceso` varchar(20) DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `porc_afec` int(11) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`Interface`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fechadeproceso` (`fechadeproceso`),
  KEY `TipoRuido` (`TipoRuido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `apacheb` */

DROP TABLE IF EXISTS `apacheb`;

CREATE TABLE `apacheb` (
  `parametro` varchar(100) DEFAULT NULL COMMENT 'Parametro a medir',
  `valor` varchar(100) DEFAULT NULL COMMENT 'Campo temporal ue se disgrega en otros adicionales',
  `vmin` varchar(11) DEFAULT NULL COMMENT 'Valor Minimo',
  `meanmas` varchar(11) DEFAULT NULL COMMENT 'media maxima',
  `meanmenos` varchar(11) DEFAULT NULL COMMENT 'media minima',
  `median` varchar(11) DEFAULT NULL COMMENT 'mediana',
  `vmax` varchar(11) DEFAULT NULL COMMENT 'maximo',
  `fechahora` varchar(20) DEFAULT NULL COMMENT 'fecha y hora del proceso',
  `detalle` varchar(200) DEFAULT NULL COMMENT 'campo temporal de llenado de datos del txt'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `apacheb_c` */

DROP TABLE IF EXISTS `apacheb_c`;

CREATE TABLE `apacheb_c` (
  `parametro` varchar(100) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `vmin` varchar(11) DEFAULT NULL,
  `meanmas` varchar(11) DEFAULT NULL,
  `meanmenos` varchar(11) DEFAULT NULL,
  `median` varchar(11) DEFAULT NULL,
  `vmax` varchar(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `detalle` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `apagamodem_cuarentena` */

DROP TABLE IF EXISTS `apagamodem_cuarentena`;

CREATE TABLE `apagamodem_cuarentena` (
  `idbitacora` int(20) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `tipoaveria` varchar(20) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `idcliente` (`idcliente`),
  KEY `fechahora` (`fechahora`),
  KEY `usuario` (`usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `auditoria_rf` */

DROP TABLE IF EXISTS `auditoria_rf`;

CREATE TABLE `auditoria_rf` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `Min_USPwr` double(19,2) DEFAULT NULL,
  `Pro_USPwr` double(19,2) DEFAULT NULL,
  `Max_USPwr` double(19,2) DEFAULT NULL,
  `USSnr` double(19,2) DEFAULT NULL,
  `Min_DSPwr` double(19,2) DEFAULT NULL,
  `Pro_DSPwr` double(19,2) DEFAULT NULL,
  `Max_DSPwr` double(19,2) DEFAULT NULL,
  `DSSnr` double(19,2) DEFAULT NULL,
  `Cant_CM` bigint(21) NOT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `microzona` varchar(20) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `averiamasiva` int(11) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_nodo` */

DROP TABLE IF EXISTS `averias_nodo`;

CREATE TABLE `averias_nodo` (
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Nodo',
  `fecha` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hora` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `numdia` int(1) DEFAULT NULL,
  `desdia` varchar(10) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`fecha`,`hora`),
  KEY `nodo` (`nodo`),
  KEY `fecha` (`fecha`),
  KEY `hora` (`hora`),
  KEY `numdia` (`numdia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `bitacora_torre` */

DROP TABLE IF EXISTS `bitacora_torre`;

CREATE TABLE `bitacora_torre` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `consultas` int(11) DEFAULT NULL,
  `averias` int(11) DEFAULT NULL,
  `ultreq` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `trabprog` varchar(1000) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `observacion` varchar(1000) DEFAULT NULL,
  `fechahoragest` varchar(20) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `fecha_update` varchar(20) DEFAULT NULL,
  `porc_caida` varchar(20) DEFAULT NULL,
  `serv_afectado` varchar(20) DEFAULT NULL,
  `remedy` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`codmasiva`,`estado`,`observacion`(300),`usuario`,`fechahoragest`,`jefatura`,`trabprog`(300)),
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `usuario` (`usuario`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `bitacora_torre_d` */

DROP TABLE IF EXISTS `bitacora_torre_d`;

CREATE TABLE `bitacora_torre_d` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `consultas` int(11) DEFAULT NULL,
  `averias` int(11) DEFAULT NULL,
  `ultreq` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `trabprog` varchar(1000) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `observacion` varchar(1000) DEFAULT NULL,
  `fechahoragest` varchar(20) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `fecha_update` varchar(20) DEFAULT NULL,
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `usuario` (`usuario`),
  KEY `estado` (`estado`),
  KEY `jefatura` (`jefatura`,`nodo`,`troba`,`codmasiva`,`trabprog`(300),`estado`,`observacion`(300),`usuario`,`fechahoragest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_final` */

DROP TABLE IF EXISTS `caidas_final`;

CREATE TABLE `caidas_final` (
  `idcaida` int(11) NOT NULL AUTO_INCREMENT,
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcaida`),
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`),
  KEY `estado` (`estado`),
  KEY `amplif` (`amplif`)
) ENGINE=MyISAM AUTO_INCREMENT=2392 DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new` */

DROP TABLE IF EXISTS `caidas_new`;

CREATE TABLE `caidas_new` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`),
  KEY `estado` (`estado`),
  KEY `amplif` (`amplif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_amplif` */

DROP TABLE IF EXISTS `caidas_new_amplif`;

CREATE TABLE `caidas_new_amplif` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_amplif_c` */

DROP TABLE IF EXISTS `caidas_new_amplif_c`;

CREATE TABLE `caidas_new_amplif_c` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_c` */

DROP TABLE IF EXISTS `caidas_new_c`;

CREATE TABLE `caidas_new_c` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_t` */

DROP TABLE IF EXISTS `caidas_t`;

CREATE TABLE `caidas_t` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplif` (`amplif`),
  KEY `offline` (`offline`),
  KEY `umbral` (`umbral`),
  KEY `Caida` (`Caida`),
  KEY `tiempo` (`tiempo`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_t_amplif` */

DROP TABLE IF EXISTS `caidas_t_amplif`;

CREATE TABLE `caidas_t_amplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados` */

DROP TABLE IF EXISTS `clientes_alertados`;

CREATE TABLE `clientes_alertados` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`MACADDRESS`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados_7_dias` */

DROP TABLE IF EXISTS `clientes_alertados_7_dias`;

CREATE TABLE `clientes_alertados_7_dias` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`MACADDRESS`,`fecha_hora`(10)),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `criticos_coe` */

DROP TABLE IF EXISTS `criticos_coe`;

CREATE TABLE `criticos_coe` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `Caida` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Masiva` int(11),
  `edopend` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `STATUS` varchar(71) CHARACTER SET utf8 DEFAULT NULL,
  `entidad` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tipoaveria` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `criticos_coe_c` */

DROP TABLE IF EXISTS `criticos_coe_c`;

CREATE TABLE `criticos_coe_c` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `Caida` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Masiva` int(11),
  `edopend` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `STATUS` varchar(71) CHARACTER SET utf8 DEFAULT NULL,
  `entidad` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tipoaveria` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `criticos_view` */

DROP TABLE IF EXISTS `criticos_view`;

CREATE TABLE `criticos_view` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `Caida` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Masiva` int(11),
  `edopend` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `STATUS` varchar(71) CHARACTER SET utf8 DEFAULT NULL,
  `entidad` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tipoaveria` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `criticos_view_c` */

DROP TABLE IF EXISTS `criticos_view_c`;

CREATE TABLE `criticos_view_c` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `Caida` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Masiva` int(11),
  `edopend` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `STATUS` varchar(71) CHARACTER SET utf8 DEFAULT NULL,
  `entidad` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tipoaveria` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuarentena_altas` */

DROP TABLE IF EXISTS `cuarentena_altas`;

CREATE TABLE `cuarentena_altas` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `fecha_liquidacion` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_x` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_y` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `codmotv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `desmotv` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `tipreqini` varchar(2) CHARACTER SET utf8 NOT NULL,
  `desobsordtrab` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento',
  `codigomotivoreq` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Motivo Requerimiento',
  `codctr` int(11) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `pctr` varchar(100) DEFAULT NULL,
  `qctr` varchar(100) DEFAULT NULL,
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Caida` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Masiva` int(11),
  `edopend` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `STATUS` varchar(71) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tipoaveria` varchar(50) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `tipreqini` (`tipreqini`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuarentena_altas_c` */

DROP TABLE IF EXISTS `cuarentena_altas_c`;

CREATE TABLE `cuarentena_altas_c` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `fecha_liquidacion` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
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
  `Masiva` int(11),
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
  `Masiva` int(11),
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

/*Table structure for table `cuarentena_averias_c` */

DROP TABLE IF EXISTS `cuarentena_averias_c`;

CREATE TABLE `cuarentena_averias_c` (
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
  `Masiva` int(11),
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

/*Table structure for table `cuarentena_averias_sur` */

DROP TABLE IF EXISTS `cuarentena_averias_sur`;

CREATE TABLE `cuarentena_averias_sur` (
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
  `Masiva` int(11),
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

/*Table structure for table `cuarentena_averias_sur_c` */

DROP TABLE IF EXISTS `cuarentena_averias_sur_c`;

CREATE TABLE `cuarentena_averias_sur_c` (
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
  `Masiva` int(11),
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

/*Table structure for table `cuarentena_averiasp` */

DROP TABLE IF EXISTS `cuarentena_averiasp`;

CREATE TABLE `cuarentena_averiasp` (
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
  `Masiva` int(11),
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

/*Table structure for table `cuarentena_averiasp_c` */

DROP TABLE IF EXISTS `cuarentena_averiasp_c`;

CREATE TABLE `cuarentena_averiasp_c` (
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
  `Masiva` int(11),
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

/*Table structure for table `cuarentena_criticos` */

DROP TABLE IF EXISTS `cuarentena_criticos`;

CREATE TABLE `cuarentena_criticos` (
  `idempresacrm` int(11) DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `RxPwrdBmv` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
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
  `estado` varchar(82) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_x` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_y` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `codreq` bigint(11) DEFAULT NULL,
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
  `Caida` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Masiva` bigint(11) DEFAULT NULL,
  `edopend` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tipoaveria` varchar(20) DEFAULT NULL,
  `st` int(1) NOT NULL DEFAULT '0',
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `macstate` (`macstate`),
  KEY `MACADDRESS` (`MACADDRESS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuarentena_mtotal` */

DROP TABLE IF EXISTS `cuarentena_mtotal`;

CREATE TABLE `cuarentena_mtotal` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `Masiva` int(11),
  `edopend` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `STATUS` varchar(71) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tipoaveria` varchar(50) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `FECHAACTIVACION` (`FECHAACTIVACION`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuarentena_mtotal_c` */

DROP TABLE IF EXISTS `cuarentena_mtotal_c`;

CREATE TABLE `cuarentena_mtotal_c` (
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
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
  `Masiva` int(11),
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

/*Table structure for table `dashboard` */

DROP TABLE IF EXISTS `dashboard`;

CREATE TABLE `dashboard` (
  `id` int(11) DEFAULT NULL,
  `tipo` varchar(120) DEFAULT NULL,
  `codmotv` varchar(20) DEFAULT NULL,
  `cant` double DEFAULT NULL,
  `clientes` double DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `enlace` varchar(80) DEFAULT NULL,
  KEY `tipo` (`tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `datliq_masiva` */

DROP TABLE IF EXISTS `datliq_masiva`;

CREATE TABLE `datliq_masiva` (
  `codreqmnt` int(11) NOT NULL,
  `codtecliq` varchar(20) DEFAULT NULL,
  `codliq` varchar(4) DEFAULT NULL,
  `detliq` varchar(4) DEFAULT NULL,
  `observacion` varchar(500) DEFAULT NULL,
  `afectacion` varchar(100) DEFAULT NULL,
  `contrata` varchar(100) DEFAULT NULL,
  `nombretecnico` varchar(100) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codreqmnt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `detalle_caidas_energia` */

DROP TABLE IF EXISTS `detalle_caidas_energia`;

CREATE TABLE `detalle_caidas_energia` (
  `idclientecrm` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `fecha_hora_caida` varchar(20) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha_hora_gest` varchar(20) DEFAULT NULL,
  UNIQUE KEY `idclientecrm` (`idclientecrm`,`fecha_hora_caida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `frame_failed` */

DROP TABLE IF EXISTS `frame_failed`;

CREATE TABLE `frame_failed` (
  `ExtendingPORT` varchar(20) DEFAULT NULL,
  `FrameState` varchar(20) DEFAULT NULL,
  `LastofflineReason` varchar(50) DEFAULT NULL,
  `FrameDescription` varchar(10) DEFAULT NULL,
  `olt` varchar(50) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  KEY `ExtendingPORT` (`ExtendingPORT`),
  KEY `FrameState` (`FrameState`),
  KEY `LastofflineReason` (`LastofflineReason`),
  KEY `FrameDescription` (`FrameDescription`),
  KEY `olt` (`olt`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `frame_failed_c` */

DROP TABLE IF EXISTS `frame_failed_c`;

CREATE TABLE `frame_failed_c` (
  `ExtendingPORT` varchar(20) DEFAULT NULL,
  `FrameState` varchar(20) DEFAULT NULL,
  `LastofflineReason` varchar(50) DEFAULT NULL,
  `FrameDescription` varchar(10) DEFAULT NULL,
  `olt` varchar(50) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  KEY `ExtendingPORT` (`ExtendingPORT`),
  KEY `FrameState` (`FrameState`),
  KEY `LastofflineReason` (`LastofflineReason`),
  KEY `FrameDescription` (`FrameDescription`),
  KEY `olt` (`olt`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp` */

DROP TABLE IF EXISTS `fuentes_snmp`;

CREATE TABLE `fuentes_snmp` (
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ipaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `latitudx` varchar(20) DEFAULT NULL,
  `longitudy` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `resultadosnmp` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha` (`fechahora`),
  KEY `version` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist` */

DROP TABLE IF EXISTS `fuentes_snmp_hist`;

CREATE TABLE `fuentes_snmp_hist` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_historico` */

DROP TABLE IF EXISTS `fuentes_snmp_historico`;

CREATE TABLE `fuentes_snmp_historico` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_historico_bck` */

DROP TABLE IF EXISTS `fuentes_snmp_historico_bck`;

CREATE TABLE `fuentes_snmp_historico_bck` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `geoalertas_estados` */

DROP TABLE IF EXISTS `geoalertas_estados`;

CREATE TABLE `geoalertas_estados` (
  `idestado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `atendida` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idestado`)
) ENGINE=Aria AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 PAGE_CHECKSUM=1;

/*Table structure for table `gestion_alert` */

DROP TABLE IF EXISTS `gestion_alert`;

CREATE TABLE `gestion_alert` (
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
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_alert_backup` */

DROP TABLE IF EXISTS `gestion_alert_backup`;

CREATE TABLE `gestion_alert_backup` (
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
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_alert_c` */

DROP TABLE IF EXISTS `gestion_alert_c`;

CREATE TABLE `gestion_alert_c` (
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
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_alert_temp` */

DROP TABLE IF EXISTS `gestion_alert_temp`;

CREATE TABLE `gestion_alert_temp` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gestion_alert_temp_x` */

DROP TABLE IF EXISTS `gestion_alert_temp_x`;

CREATE TABLE `gestion_alert_temp_x` (
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
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_alert_ult_ges` */

DROP TABLE IF EXISTS `gestion_alert_ult_ges`;

CREATE TABLE `gestion_alert_ult_ges` (
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
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_cuarentena` */

DROP TABLE IF EXISTS `gestion_cuarentena`;

CREATE TABLE `gestion_cuarentena` (
  `idbitacora` int(20) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `tipoaveria` varchar(40) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `idcliente` (`idcliente`),
  KEY `fechahora` (`fechahora`),
  KEY `usuario` (`usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=21877 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gestion_fuentes_snmp` */

DROP TABLE IF EXISTS `gestion_fuentes_snmp`;

CREATE TABLE `gestion_fuentes_snmp` (
  `idusuario` int(10) NOT NULL,
  `nodo` varchar(2) NOT NULL,
  `troba` varchar(4) NOT NULL,
  `mac` varchar(20) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `estado_gestion` varchar(200) DEFAULT NULL,
  `observacion` varchar(200) NOT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `llamadas_reiteradas` */

DROP TABLE IF EXISTS `llamadas_reiteradas`;

CREATE TABLE `llamadas_reiteradas` (
  `cliente` int(10) DEFAULT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `telf_comp` int(11) DEFAULT NULL,
  `tdia` int(11) DEFAULT NULL,
  KEY `cliente` (`cliente`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `tiptec` (`tiptec`),
  KEY `telf_comp` (`telf_comp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadasdmpexdia` */

DROP TABLE IF EXISTS `llamadasdmpexdia`;

CREATE TABLE `llamadasdmpexdia` (
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `numdia` int(1) DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  UNIQUE KEY `nodo_2` (`fecha`,`hora`,`numdia`),
  KEY `fecha` (`fecha`),
  KEY `hora` (`hora`),
  KEY `numdia` (`numdia`),
  KEY `desdia` (`desdia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadasdmpexdia_nodo` */

DROP TABLE IF EXISTS `llamadasdmpexdia_nodo`;

CREATE TABLE `llamadasdmpexdia_nodo` (
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `numdia` int(1) DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`fecha`,`hora`,`numdia`),
  KEY `nodo` (`nodo`),
  KEY `fecha` (`fecha`),
  KEY `hora` (`hora`),
  KEY `numdia` (`numdia`),
  KEY `desdia` (`desdia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadasdmpexdia_troba` */

DROP TABLE IF EXISTS `llamadasdmpexdia_troba`;

CREATE TABLE `llamadasdmpexdia_troba` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `numdia` int(1) DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`fecha`,`hora`,`numdia`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `fecha` (`fecha`),
  KEY `hora` (`hora`),
  KEY `numdia` (`numdia`),
  KEY `desdia` (`desdia`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadashfc` */

DROP TABLE IF EXISTS `llamadashfc`;

CREATE TABLE `llamadashfc` (
  `idclientecrm` double DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `De` int(11) DEFAULT NULL,
  `Day` varchar(20) DEFAULT NULL,
  `Hora` varchar(5) DEFAULT NULL,
  UNIQUE KEY `De_2` (`De`,`Day`,`Hora`),
  KEY `De` (`De`),
  KEY `idclientecrm` (`idclientecrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `mapas_nodos` */

DROP TABLE IF EXISTS `mapas_nodos`;

CREATE TABLE `mapas_nodos` (
  `nombre` varchar(142) CHARACTER SET latin1 DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `servicio` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `direc_inst` varchar(90) CHARACTER SET latin1 DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `codlex` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `codtap` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `X` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Y` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(20) CHARACTER SET utf8 NOT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `SnrDN` varchar(6) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `SnrUP` varchar(6) DEFAULT NULL,
  `USPwr` varchar(6) DEFAULT NULL,
  `cmts` varchar(30) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  KEY `cliente` (`cliente`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `jefatura` (`jefatura`),
  KEY `tiptec` (`tiptec`),
  KEY `color` (`color`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `mapas_nodos_c` */

DROP TABLE IF EXISTS `mapas_nodos_c`;

CREATE TABLE `mapas_nodos_c` (
  `nombre` varchar(142) CHARACTER SET latin1 DEFAULT NULL,
  `cliente` int(10) DEFAULT NULL,
  `servicio` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nodo` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `direc_inst` varchar(90) CHARACTER SET latin1 DEFAULT NULL,
  `tiptec` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `codlex` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `codtap` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `X` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Y` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(20) CHARACTER SET utf8 NOT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `SnrDN` varchar(6) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `SnrUP` varchar(6) DEFAULT NULL,
  `USPwr` varchar(6) DEFAULT NULL,
  `cmts` varchar(30) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  KEY `cliente` (`cliente`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `jefatura` (`jefatura`),
  KEY `tiptec` (`tiptec`),
  KEY `color` (`color`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `marca_modelo_docsis_total` */

DROP TABLE IF EXISTS `marca_modelo_docsis_total`;

CREATE TABLE `marca_modelo_docsis_total` (
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Empresa` varchar(3) DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `idxmac` (`MACAddress`),
  KEY `idxdocsis` (`docsis`),
  KEY `idxcodcli` (`NroCliente`),
  KEY `CMTS` (`CMTS`),
  KEY `Fabricante` (`Fabricante`),
  KEY `Modelo` (`Modelo`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_catv` */

DROP TABLE IF EXISTS `masivas_catv`;

CREATE TABLE `masivas_catv` (
  `zonal` varchar(3) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `trabprog` varchar(53) DEFAULT NULL,
  `tipotrab` varchar(200) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  KEY `zonal` (`zonal`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `mensajes_env` */

DROP TABLE IF EXISTS `mensajes_env`;

CREATE TABLE `mensajes_env` (
  `mensaje` varchar(150) DEFAULT NULL,
  `fecha` varchar(15) DEFAULT NULL,
  `estado` varchar(40) DEFAULT NULL,
  UNIQUE KEY `mensaje` (`mensaje`,`fecha`),
  KEY `fecha` (`fecha`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `monitor_averias` */

DROP TABLE IF EXISTS `monitor_averias`;

CREATE TABLE `monitor_averias` (
  `jefatura` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cpend` bigint(21) NOT NULL DEFAULT '0',
  `consultas` bigint(21) DEFAULT '0',
  `ultreq` int(11) DEFAULT NULL,
  `fec_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  KEY `jefatura` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `monitor_averias_c` */

DROP TABLE IF EXISTS `monitor_averias_c`;

CREATE TABLE `monitor_averias_c` (
  `jefatura` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cpend` bigint(21) NOT NULL DEFAULT '0',
  `consultas` bigint(21) DEFAULT '0',
  `ultreq` int(11) DEFAULT NULL,
  `fec_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `monitor_averias_gpon` */

DROP TABLE IF EXISTS `monitor_averias_gpon`;

CREATE TABLE `monitor_averias_gpon` (
  `jefatura` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cpend` bigint(21) NOT NULL DEFAULT '0',
  `consultas` bigint(21) DEFAULT '0',
  `ultreq` int(11) DEFAULT NULL,
  `fec_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `monitor_averias_gpon_c` */

DROP TABLE IF EXISTS `monitor_averias_gpon_c`;

CREATE TABLE `monitor_averias_gpon_c` (
  `jefatura` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cpend` bigint(21) NOT NULL DEFAULT '0',
  `consultas` bigint(21) DEFAULT '0',
  `ultreq` int(11) DEFAULT NULL,
  `fec_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  KEY `jefatura` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `niveles_new` */

DROP TABLE IF EXISTS `niveles_new`;

CREATE TABLE `niveles_new` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `tc` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(6) DEFAULT NULL,
  `pwr_up` varchar(6) DEFAULT NULL,
  `snr_up` varchar(6) DEFAULT NULL,
  `pwr_dn` varchar(6) DEFAULT NULL,
  `snr_dn` varchar(6) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `caida` varchar(2) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`nodo`,`troba`,`caida`,`fecha_hora`),
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `caida` (`caida`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `niveles_new_c` */

DROP TABLE IF EXISTS `niveles_new_c`;

CREATE TABLE `niveles_new_c` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `tc` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(6) DEFAULT NULL,
  `pwr_up` varchar(6) DEFAULT NULL,
  `snr_up` varchar(6) DEFAULT NULL,
  `pwr_dn` varchar(6) DEFAULT NULL,
  `snr_dn` varchar(6) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `caida` varchar(2) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`nodo`,`troba`,`caida`,`fecha_hora`),
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `caida` (`caida`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `offline_total` */

DROP TABLE IF EXISTS `offline_total`;

CREATE TABLE `offline_total` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` int(11) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados` */

DROP TABLE IF EXISTS `puertos_down_saturados`;

CREATE TABLE `puertos_down_saturados` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  `rangosat` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`),
  KEY `rangosat` (`rangosat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_60_70` */

DROP TABLE IF EXISTS `puertos_down_saturados_60_70`;

CREATE TABLE `puertos_down_saturados_60_70` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_70_80` */

DROP TABLE IF EXISTS `puertos_down_saturados_70_80`;

CREATE TABLE `puertos_down_saturados_70_80` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_80_90` */

DROP TABLE IF EXISTS `puertos_down_saturados_80_90`;

CREATE TABLE `puertos_down_saturados_80_90` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_90_100` */

DROP TABLE IF EXISTS `puertos_down_saturados_90_100`;

CREATE TABLE `puertos_down_saturados_90_100` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `remedys_hfc` */

DROP TABLE IF EXISTS `remedys_hfc`;

CREATE TABLE `remedys_hfc` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `remedy` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `remedy` (`remedy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reporte_ptos` */

DROP TABLE IF EXISTS `reporte_ptos`;

CREATE TABLE `reporte_ptos` (
  `it` int(11) DEFAULT NULL,
  `cmts` varchar(80) DEFAULT NULL,
  `down` varchar(30) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `rangosat` varchar(50) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `impacto` int(11) DEFAULT NULL,
  `troba` varchar(200) DEFAULT NULL,
  `microzona` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `status_global` */

DROP TABLE IF EXISTS `status_global`;

CREATE TABLE `status_global` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `hora` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecha_hora` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  UNIQUE KEY `llave` (`hora`,`fecha_hora`,`cmts`,`estado`),
  KEY `cmts` (`cmts`),
  KEY `estado` (`estado`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `hora` (`hora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `sw_alertasdmpe` */

DROP TABLE IF EXISTS `sw_alertasdmpe`;

CREATE TABLE `sw_alertasdmpe` (
  `sw` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `sw_dashboard` */

DROP TABLE IF EXISTS `sw_dashboard`;

CREATE TABLE `sw_dashboard` (
  `sw` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tecnicos` */

DROP TABLE IF EXISTS `tecnicos`;

CREATE TABLE `tecnicos` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa` varchar(30) DEFAULT NULL,
  `ruta` varchar(20) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `nombre1` varchar(100) DEFAULT NULL,
  `rpm1` varchar(10) DEFAULT NULL,
  `nombre2` varchar(100) DEFAULT NULL,
  `rpm2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item`),
  KEY `NewIndex2` (`empresa`),
  KEY `NewIndex1` (`dni`),
  KEY `NewIndex3` (`nombre1`),
  KEY `NewIndex4` (`rpm1`),
  KEY `NewIndex5` (`nombre2`),
  KEY `NewIndex6` (`rpm2`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_m` */

DROP TABLE IF EXISTS `umbral_m`;

CREATE TABLE `umbral_m` (
  `reg` int(11) NOT NULL,
  `porc` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `dia1` int(11) DEFAULT NULL,
  `noche` int(11) DEFAULT NULL,
  `noche1` int(11) DEFAULT NULL,
  `calls` int(11) DEFAULT NULL,
  PRIMARY KEY (`reg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `alertas_edificios` */

/*!50003 DROP PROCEDURE IF EXISTS  `alertas_edificios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `alertas_edificios`()
BEGIN
	##
	UPDATE alertasx.alerta_edificio_sw SET sw=1,fechahora=NOW();
	##
	TRUNCATE TABLE trabajos.`edif_level`;
	INSERT ignore trabajos.`edif_level`
	SELECT DISTINCT a.macaddress,a.`EMPRESA`,a.`IDCLIENTECRM`,a.`idempresacrm`,
	a.`idservicio`,a.`idproducto`,a.`idventa`,a.`NAMECLIENT`,a.`NODO`,a.`TROBA`,
	a.`amplificador`,a.`tap`,a.`telf1`,a.`telf2`,a.`f_v`,a.`regver`,
	a.`cmts`,a.`SERVICEPACKAGECRMID`,a.`SERVICEPACKAGE`,a.`CANTPCS`,a.`FECHAALTA`,
	a.`FECHAACTIVACION`,a.`ESTADO`,a.`SCOPESGROUP`,a.`SCOPESGROUPCM`,a.`SCOPESGROUPMTA`,
	a.`MTAMAC`,a.`IDSERVICIOMTA`,a.`IDPRODUCTOMTA`,
	a.`IDVENTAMTA`,a.`MTAMODELNAME`,a.`CMTSID`,a.`UBICACIONENLARED`,a.`IPCM`,
	a.`DOCSISVERSION`,a.`movil1`,a.`mac2`,a.`mac3`,a.`direccion`,a.`codserv`,
	a.`fecha_upload`,a.`naked`,a.`numcoo_x`,a.`numcoo_y`,a.`desdtt`,
	a.`via`,a.`nro`,c.`USPwr`,c.`USMER_SNR`,c.`DSPwr`,c.`DSMER_SNR`,
	IF((c.USPwr <=35 OR c.USPwr >=56 ) AND USPwr<>'-' ,'Niveles NO OK',
	IF(c.USMER_SNR <=27 AND c.USMER_SNR >0.00 AND USPwr<>'-' ,'Niveles NO OK', 
	IF((c.DSPwr <-12 OR c.DSPwr >12 ) AND USPwr<>'-','Niveles NO OK', 
	IF(c.DSMER_SNR <=30 AND USPwr<>'-' ,'Niveles NO OK','OK')))) AS estado_l
	FROM trabajos.`dataedif_t1` a FORCE INDEX(mac2)
	INNER JOIN ccm1.scm_phy_r c FORCE INDEX(NewIndex1,DSMER_SNR)
	ON a.mac2=c.`MACAddress`
	WHERE c.`DSMER_SNR` NOT LIKE '--%';
	##	
	TRUNCATE TABLE alertasx.alertas_edificio_c;
	INSERT IGNORE alertasx.alertas_edificio_c
	(SELECT a.desdtt,a.via,a.nro,COUNT(*) AS cant 
	FROM trabajos.edif_level a FORCE INDEX(estado_l,nro)
	WHERE a.estado_l = 'Niveles NO OK' AND a.nro>0 GROUP BY 1,2,3 HAVING COUNT(*)>4);
	##
	TRUNCATE alertasx.`alertas_edificio`;
	INSERT IGNORE alertasx.`alertas_edificio`
	SELECT a.`desdtt`,a.`via`,a.`nro`,a.`cant`,
	NOW() AS `fecha_hora_ini`,'' AS `fecha_hora_fin`,'CONTINUA' AS `estado` 
	FROM alertasx.`alertas_edificio_c` a
	GROUP BY a.desdtt,a.via,a.nro;
	##	
	UPDATE alertasx.`alertas_edificio` a FORCE INDEX(desdtt_2,via,nro) 
	LEFT JOIN alertasx.`alertas_edificio_c` b FORCE INDEX(desdtt_2,via,nro) 
	ON a.desdtt=b.desdtt AND a.via=b.via AND a.nro=b.nro
	SET fecha_hora_fin = NOW(),estado='LEVANTO'
	WHERE b.desdtt IS NULL;
	##	
	UPDATE alertasx.`alertas_edificio` a  FORCE INDEX(desdtt_2,via,nro) 
	LEFT JOIN alertasx.`alertas_edificio_c` b FORCE INDEX(desdtt_2,via,nro) 
	ON a.desdtt=b.desdtt AND a.via=b.via AND a.nro=b.nro
	SET fecha_hora_ini = NOW(),fecha_hora_fin = '',estado='CONTINUA'
	WHERE b.desdtt  IS NOT NULL AND estado='LEVANTO';
	##
	UPDATE alertasx.alerta_edificio_sw SET sw=0,fechahora=NOW();
END */$$
DELIMITER ;

/* Procedure structure for procedure `alerta_edificios_data` */

/*!50003 DROP PROCEDURE IF EXISTS  `alerta_edificios_data` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `alerta_edificios_data`()
BEGIN
	INSERT IGNORE `trabajos`.`dataedif_t1`
	SELECT a.*,b.desdtt,b.via,b.nro FROM multiconsulta.nclientes_c a FORCE INDEX(idxcodserv)
	INNER JOIN trabajos.`dataedif_hfc` b  FORCE INDEX(SERVICIO)
	ON a.codserv=b.SERVICIO WHERE a.codserv <>2009353 AND a.codserv>0;
	##
	UPDATE `trabajos`.`dataedif_t1` a FORCE INDEX(codserv)
	 INNER JOIN trabajos.`dataedif_hfc` b FORCE INDEX(SERVICIO)
	ON a.`codserv`=b.`SERVICIO` SET a.`direccion`=b.`DIREC_INST`
	WHERE a.codserv NOT IN (2009353,0);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `clientes_alertados` */

/*!50003 DROP PROCEDURE IF EXISTS  `clientes_alertados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `clientes_alertados`()
BEGIN
	TRUNCATE TABLE `clientes_alertados_c`;
	INSERT IGNORE `clientes_alertados_c`
	SELECT a.`IDCLIENTECRM`,a.`MACADDRESS`,'CAIDA MASIVA',b.macstate AS mactate,a.nodo,a.troba,amplificador,c.`fecha_hora` FROM multiconsulta.nclientes a 
	INNER JOIN alertasx.`caidas_new` c
	ON a.nodo=c.nodo AND a.troba=c.`troba` AND c.`Caida`='SI'
	LEFT JOIN ccm1.scm_total b
	ON a.`mac2`=b.`MACAddress` 
	WHERE b.macstate='offline'
	GROUP BY a.`mac2`;
		
	INSERT IGNORE `clientes_alertados_c`
	SELECT a.`IDCLIENTECRM`,a.`MACADDRESS`,'CAIDA SENAL','online' AS  mactate,a.nodo,a.troba,amplificador,c.`fecha_hora` FROM multiconsulta.nclientes a 
	INNER JOIN alertasx.`niveles_new` c
	ON a.nodo=c.nodo AND a.troba=c.`troba` AND c.`Caida`='SI'
	INNER JOIN ccm1.scm_phy_t b
	ON a.`mac2`=b.`MACAddress` 	
	GROUP BY a.`mac2`;
	
	DELETE FROM `clientes_alertados_7_dias` WHERE DATEDIFF(NOW(),fecha_hora)>7;
	INSERT IGNORE `clientes_alertados_7_dias` SELECT * FROM `clientes_alertados_c`;	
	
	RENAME TABLE clientes_alertados TO clientes_alertados_d,
		clientes_alertados_c TO clientes_alertados,
		clientes_alertados_d TO clientes_alertados_c;
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_dashboard` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_dashboard` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_dashboard`()
BEGIN
update alertasx.sw_dashboard set sw=1;
### Cuarentena
TRUNCATE TABLE catalogos.`movistar_total_temp`;
INSERT IGNORE catalogos.`movistar_total_temp`
SELECT xx.* FROM (SELECT a.*  FROM catalogos.movistar_total a 
WHERE DATEDIFF(NOW(),a.fechaalta)<=30 ) xx
INNER JOIN multiconsulta.nclientes_c c
ON xx.clientecms=c.idclientecrm;
###############Criticos COE ################
TRUNCATE TABLE alertasx.criticos_coe_c;
INSERT IGNORE alertasx.criticos_coe_c
SELECT
  a.idempresacrm    AS idempresacrm,
  a.IDCLIENTECRM    AS IDCLIENTECRM,
  mt.nomcli AS NAMECLIENT,
  b.cmts            AS cmts,
  IF((b.MACState = 'offline'),b.Interface,c.Interface) AS interface,
  IF(ISNULL(c.MACAddress),b.MACState,'online') AS macstate,
  b.RxPwrdBmv       AS RxPwrdBmv,
  c.USPwr           AS USPwr,
  c.USMER_SNR       AS USMER_SNR,
  c.DSPwr           AS DSPwr,
  c.DSMER_SNR       AS DSMER_SNR,
  a.direccion,
  mt.nodo  AS NODO,
  mt.troba AS TROBA,
  mt.codlex AS amplificador,
  mt.codtap AS tap,
  a.telf1,
  a.telf2,
  a.movil1,
  a.MACADDRESS      AS MACADDRESS,
  a.SERVICEPACKAGE  AS SERVICEPACKAGE,
  a.`FECHAACTIVACION`,
  a.estado,
  a.numcoo_x,
  a.numcoo_y,
  d.codreq          AS codreq,
  d.codmotv         AS codmotv,
  d.desmotv         AS desmotv,
  d.tipreqini       AS tipreqini,
  d.desobsordtrab   AS desobsordtrab,
  e.codigotiporeq   AS codigotiporeq,
  e.codigomotivoreq AS codigomotivoreq,
  0 AS codctr,
  ''        AS contrata,
  cp.desctr         AS pctr,
  cq.desctr         AS qctr,
  d.fec_registro    AS fecharegistro,
  IF((ca.nodo IS NOT NULL),'Caida','') AS Caida,
  m.codreqmnt       AS Masiva,
  '' AS edopend,
  IF(a.estado='Inactivo','8.-Servicio Suspendido',
  IF(mt.nomcli LIKE "pruebas%qa%",'9.-Servicios de Prueba',
  IF(((b.MACState = 'offline') AND ISNULL(c.DSMER_SNR)),'2.- Offline - NO OK',IF((c.DSMER_SNR = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',IF((ISNULL(c.DSMER_SNR) AND (b.MACState IN ('w-online','online','operational'))),'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',IF((ISNULL(b.MACState) AND ISNULL(c.DSMER_SNR)),'5.-Incierto - Validar',IF(((b.MACState NOT IN ('w-online','online','operational','offline')) AND ISNULL(c.DSMER_SNR)),'3.-Modem no Sincronizado - No hay niveles no se puede validar',IF((((REPLACE(c.USPwr,'!','') < 35) OR (REPLACE(c.USPwr,'!','') > 57)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF(((c.USMER_SNR < 25) AND (c.USMER_SNR > 0.00) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF((((c.DSPwr < -(10)) OR (c.DSPwr > 12)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF((ISNULL(c.DSPwr) AND (b.MACState <> 'offline')),'5.-Incierto - Validar',IF(((c.DSMER_SNR < 27) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF(((c.DSPwr = '-') AND (c.DSMER_SNR = '-')),'6.-CMTS No reporta Niveles','7.-OK'))))))))))))) AS STATUS,'' AS tipoaveria,''
FROM catalogos.bd_criticos_coe mt FORCE INDEX(cliente)
           INNER JOIN multiconsulta.nclientes_c a FORCE INDEX(NewIndex1,NewIndex4)
             ON mt.cliente = a.IDCLIENTECRM 
          LEFT JOIN ccm1.scm_total_r b FORCE INDEX(MACAddress)
            ON a.mac2 = b.MACAddress 
         LEFT JOIN ccm1.scm_phy_r c FORCE INDEX(NewIndex1)
           ON a.mac2 = c.MACAddress
        LEFT JOIN cms.req_pend_macro_final d FORCE INDEX(codcli)
          ON a.IDCLIENTECRM = d.codcli
       LEFT JOIN cms.aver_liq_catv_pais e FORCE INDEX(NewIndex1)
         ON a.IDCLIENTECRM = e.codigodelcliente
              AND TO_DAYS(NOW()) - TO_DAYS(e.fecha_liquidacion) <= 1
      LEFT JOIN catalogos.codctr cp FORCE INDEX(PRIMARY)
        ON d.codctr = cp.codctr
     LEFT JOIN catalogos.codctr cq  FORCE INDEX(PRIMARY)
       ON e.contrata = cq.codctr
    LEFT JOIN alertasx.caidas_new ca  FORCE INDEX(nodo,troba)
      ON mt.nodo = ca.nodo
           AND mt.troba = ca.troba
           AND ca.Caida = 'SI'
   LEFT JOIN dbpext.masivas_temp m  FORCE INDEX(NewIndex1,NewIndex2)
     ON mt.nodo = m.codnod
          AND mt.troba = m.nroplano
          ;          
 
UPDATE   alertasx.`criticos_coe` a INNER JOIN multiconsulta.`nclientes` b
ON a.`MACADDRESS`=b.`macaddress`
SET a.estado= b.estado ,a.direccion=b.direccion;
 
RENAME TABLE alertasx.criticos_coe TO alertasx.criticos_coe_d,
	alertasx.criticos_coe_c TO alertasx.criticos_coe,
	alertasx.criticos_coe_d TO alertasx.criticos_coe_c;
/*
TRUNCATE TABLE alertasx.cuarentena_altas_c;
INSERT IGNORE alertasx.cuarentena_altas_c
SELECT
  a.idempresacrm    AS idempresacrm,
  a.IDCLIENTECRM    AS IDCLIENTECRM,
  CONCAT(TRIM(mt.nombres),' ',TRIM(mt.apellido_materno),' ',TRIM(mt.apellido_paterno)) AS NAMECLIENT,
  b.cmts            AS cmts,
  IF((b.MACState = 'offline'),b.Interface,c.Interface) AS interface,
  IF(ISNULL(c.MACAddress),b.MACState,'online') AS macstate,
  b.RxPwrdBmv       AS RxPwrdBmv,
  c.USPwr           AS USPwr,
  c.USMER_SNR       AS USMER_SNR,
  c.DSPwr           AS DSPwr,
  c.DSMER_SNR       AS DSMER_SNR,
  CONCAT(TRIM(mt.tipo_de_via),' ',TRIM(mt.nombre_de_la_via),' ',TRIM(mt.numero),' Piso: ',TRIM(mt.piso),' Int: ',TRIM(mt.interior),' Mz:',TRIM(mt.manzana),' Lt:',TRIM(mt.lote)) AS direccion,
  mt.nodo            AS NODO,
  mt.plano           AS TROBA,
  mt.lex AS amplificador,
  mt.tap AS tap,
  mt.telefono_de_contacto AS telf1,
  mt.celular_de_contacto AS telf2,
  0 AS movil1,
  a.MACADDRESS      AS MACADDRESS,
  a.SERVICEPACKAGE  AS SERVICEPACKAGE,
  mt.fecha_liquidacion,
  mt.ESTADO          AS estado,
  '' AS numcoo_x,
  '' AS numcoo_y,
  d.codreq          AS codreq,
  d.codmotv         AS codmotv,
  d.desmotv         AS desmotv,
  d.tipreqini       AS tipreqini,
  d.desobsordtrab   AS desobsordtrab,
  e.codigotiporeq   AS codigotiporeq,
  e.codigomotivoreq AS codigomotivoreq,
  0 AS codctr,
  mt.contrata        AS contrata,
  cp.desctr         AS pctr,
  cq.desctr         AS qctr,
  d.fec_registro    AS fecharegistro,
  IF((ca.nodo IS NOT NULL),'Caida','') AS Caida,
  m.codreqmnt       AS Masiva,
  '' AS edopend,
  IF(a.estado='Inactivo','8.-Servicio Suspendido',
  IF(mt.nombres LIKE "pruebas%qa%",'9.-Servicios de Prueba',
  IF(((b.MACState = 'offline') AND ISNULL(c.DSMER_SNR)),'2.- Offline - NO OK',IF((c.DSMER_SNR = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',IF((ISNULL(c.DSMER_SNR) AND (b.MACState IN ('w-online','online','operational'))),'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',IF((ISNULL(b.MACState) AND ISNULL(c.DSMER_SNR)),'5.-Incierto - Validar',IF(((b.MACState NOT IN ('w-online','online','operational','offline')) AND ISNULL(c.DSMER_SNR)),'3.-Modem no Sincronizado - No hay niveles no se puede validar',IF((((REPLACE(c.USPwr,'!','') < 35) OR (REPLACE(c.USPwr,'!','') > 57)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF(((c.USMER_SNR < 25) AND (c.USMER_SNR > 0.00) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF((((c.DSPwr < -(10)) OR (c.DSPwr > 12)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF((ISNULL(c.DSPwr) AND (b.MACState <> 'offline')),'5.-Incierto - Validar',IF(((c.DSMER_SNR < 27) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF(((c.DSPwr = '-') AND (c.DSMER_SNR = '-')),'6.-CMTS No reporta Niveles','7.-OK'))))))))))))) AS STATUS,'' AS tipoaveria,'','',''
FROM cms.prov_liq_catv_pais mt
           INNER JOIN ccm1_temporal.`cmactivosdiario` a
             ON mt.codigo_del_cliente = a.IDCLIENTECRM  AND mt.codigo_del_grupo_req='AL'
          LEFT JOIN ccm1.scm_total b
            ON a.mac2 = b.MACAddress
         LEFT JOIN ccm1.scm_phy_t c
           ON a.mac2 = c.MACAddress
        LEFT JOIN cms.req_pend_macro_final d
          ON a.IDCLIENTECRM = d.codcli
       LEFT JOIN cms.aver_liq_catv_pais e
         ON a.IDCLIENTECRM = e.codigodelcliente
              AND TO_DAYS(NOW()) - TO_DAYS(e.fecha_liquidacion) <= 1
      LEFT JOIN catalogos.codctr cp
        ON d.codctr = cp.codctr
     LEFT JOIN catalogos.codctr cq
       ON e.contrata = cq.codctr
    LEFT JOIN alertasx.caidas_new ca
      ON mt.nodo = ca.nodo
           AND mt.plano = ca.troba
           AND ca.Caida = 'SI'
   LEFT JOIN dbpext.masivas_temp m
     ON mt.nodo = m.codnod
          AND mt.plano = m.nroplano
          WHERE DATEDIFF(NOW(),mt.fecha_liquidacion) <= 1
          ;          
UPDATE `cuarentena_altas_c` a INNER JOIN  (SELECT * FROM alertasx.`gestion_cuarentena` WHERE idbitacora IN (SELECT MAX(idbitacora) AS idbitacora FROM alertasx.gestion_cuarentena GROUP BY idcliente)) AS gc 
 ON a.idclientecrm=gc.idcliente
 SET a.tipoaveria=gc.tipoaveria,a.observaciones=gc.observaciones,a.usuario=gc.usuario,a.fechahora=gc.fechahora;
 
UPDATE   alertasx.`cuarentena_altas` a INNER JOIN multiconsulta.`nclientes` b
ON a.`MACADDRESS`=b.`macaddress`
SET a.estado= b.estado ;
 
RENAME TABLE alertasx.cuarentena_altas TO alertasx.cuarentena_altas_d,
	alertasx.cuarentena_altas_c TO alertasx.cuarentena_altas,
	alertasx.cuarentena_altas_d TO alertasx.cuarentena_altas_c;
	
################################
#### Cuarentena Averias
TRUNCATE TABLE cms.aver_liq_catv_pais_temp;
INSERT IGNORE cms.aver_liq_catv_pais_temp
SELECT xx.* FROM (SELECT mt.* FROM cms.aver_liq_catv_pais mt
           LEFT JOIN  alertasx.cuarentena_averias a
           ON mt.codigodelcliente = a.IDCLIENTECRM AND mt.codigodelgruporeq='RA' 
           WHERE a.`IDCLIENTECRM` IS NULL  AND DATEDIFF(NOW(),mt.fecha_liquidacion)<=3) xx
           INNER JOIN multiconsulta.nclientes c
           ON xx.`codigodelcliente`=c.`IDCLIENTECRM`
           WHERE c.`idempresacrm` IS NOT NULL;
        
TRUNCATE TABLE alertasx.cuarentena_averias_c;
INSERT IGNORE alertasx.cuarentena_averias_c
SELECT
  a.idempresacrm    AS idempresacrm,
  a.IDCLIENTECRM    AS IDCLIENTECRM,
  a.NAMECLIENT      AS NAMECLIENT,
  mt.codigoreq,
  mt.fecha_liquidacion,
  mt.contrata AS contrataliq,
  mt.codigotiporeq,
  mt.`codigomotivoreq`,
  mt.tecnico,
  mt.`codigodeliquidacion`,
  mt.`detalle_liquidacion`,
  a.cmts            AS cmts,
  IF((b.MACState = 'offline'),b.Interface,c.Interface) AS interface,
  IF(ISNULL(c.MACAddress),b.MACState,'online') AS macstate,
  b.RxPwrdBmv       AS RxPwrdBmv,
  c.USPwr           AS USPwr,
  c.USMER_SNR       AS USMER_SNR,
  c.DSPwr           AS DSPwr,
  c.DSMER_SNR       AS DSMER_SNR,
  a.direccion       AS direccion,
  a.NODO            AS NODO,
  a.TROBA           AS TROBA,
  a.amplificador    AS amplificador,
  a.tap             AS tap,
  a.telf1           AS telf1,
  a.telf2           AS telf2,
  a.movil1          AS movil1,
  a.MACADDRESS      AS MACADDRESS,
  a.SERVICEPACKAGE  AS SERVICEPACKAGE,
  a.FECHAACTIVACION AS FECHAACTIVACION,
  a.ESTADO          AS estado,
  a.numcoo_x        AS numcoo_x,
  a.numcoo_y        AS numcoo_y,
  d.codreq          AS codreq,
  d.codmotv         AS codmotv,
  d.desmotv         AS desmotv,
  d.tipreqini       AS tipreqini,
  d.desobsordtrab   AS desobsordtrab,
  e.`codigo_tipo_req`   AS codigotiporeq,
  e.`codigo_motivo_req` AS codigomotivoreq,
  0 AS codctr,
  mt.contrata        AS contrata,
  cp.desctr         AS pctr,
  cq.desctr         AS qctr,
  d.fec_registro    AS fecharegistro,
  IF((ca.nodo IS NOT NULL),'Caida','') AS Caida,
  m.codreqmnt       AS Masiva,
  '' AS edopend,
  IF(a.estado='Inactivo','8.-Servicio Suspendido',
  IF(a.nameclient LIKE "pruebas%qa%",'9.-Servicios de Prueba',
  IF(((b.MACState = 'offline') AND ISNULL(c.DSMER_SNR)),'2.- Offline - NO OK',IF((c.DSMER_SNR = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',IF((ISNULL(c.DSMER_SNR) AND (b.MACState IN ('w-online','online','operational'))),'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',IF((ISNULL(b.MACState) AND ISNULL(c.DSMER_SNR)),'5.-Incierto - Validar',IF(((b.MACState NOT IN ('w-online','online','operational','offline')) AND ISNULL(c.DSMER_SNR)),'3.-Modem no Sincronizado - No hay niveles no se puede validar',IF((((REPLACE(c.USPwr,'!','') < 35) OR (REPLACE(c.USPwr,'!','') > 57)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF(((c.USMER_SNR < 25) AND (c.USMER_SNR > 0.00) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF((((c.DSPwr < -(10)) OR (c.DSPwr > 12)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF((ISNULL(c.DSPwr) AND (b.MACState <> 'offline')),'5.-Incierto - Validar',IF(((c.DSMER_SNR < 27) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',IF(((c.DSPwr = '-') AND (c.DSMER_SNR = '-')),'6.-CMTS No reporta Niveles','7.-OK'))))))))))))) AS STATUS,'' AS tipoaveria,'','',''
  
FROM cms.aver_liq_catv_pais_temp mt 
           INNER JOIN multiconsulta.nclientes a FORCE INDEX (NewIndex1)
             ON mt.`codigodelcliente` = a.IDCLIENTECRM AND mt.`codigodelgruporeq`='RA'
          LEFT JOIN ccm1.scm_total b FORCE INDEX (MACAddress)
            ON a.mac2 = b.MACAddress
         LEFT JOIN ccm1.scm_phy_t c FORCE INDEX (NewIndex1)
           ON a.mac2 = c.MACAddress
        LEFT JOIN cms.req_pend_macro_final d FORCE INDEX (codcli)
          ON a.IDCLIENTECRM = d.codcli
       LEFT JOIN cms.prov_liq_catv_pais e FORCE INDEX (NewIndex2)
         ON a.IDCLIENTECRM = e.`codigo_del_cliente`
              AND TO_DAYS(NOW()) - TO_DAYS(e.fecha_liquidacion) < 7
      LEFT JOIN catalogos.codctr cp 
        ON d.codctr = cp.codctr
     LEFT JOIN catalogos.codctr cq
       ON e.contrata = cq.codctr
    LEFT JOIN alertasx.caidas_new ca FORCE INDEX (nodo,troba,nodo_2,Caida)
      ON a.NODO = ca.nodo
           AND a.TROBA = ca.troba
           AND ca.Caida = 'SI'
   LEFT JOIN dbpext.masivas_temp m FORCE INDEX (NewIndex1,NewIndex2,NewIndex4)
     ON a.NODO = m.codnod AND a.TROBA = m.nroplano
  WHERE DATEDIFF(NOW(),mt.fecha_liquidacion)<=1;
          
          
#WHERE NOT a.NAMECLIENT LIKE '%PRUEBAS QA%';
UPDATE `cuarentena_averias_c` a INNER JOIN  (SELECT * FROM alertasx.`gestion_cuarentena` WHERE idbitacora IN (SELECT MAX(idbitacora) AS idbitacora FROM alertasx.gestion_cuarentena GROUP BY idcliente)) AS gc 
 ON a.idclientecrm=gc.idcliente
 SET a.tipoaveria=gc.tipoaveria,a.observaciones=gc.observaciones,a.usuario=gc.usuario,a.fechahora=gc.fechahora;
UPDATE   alertasx.`cuarentena_averias` a INNER JOIN multiconsulta.`nclientes` b
ON a.`MACADDRESS`=b.`macaddress`
SET a.estado= b.estado ; 
 
RENAME TABLE alertasx.cuarentena_averias TO alertasx.cuarentena_averias_d,
	alertasx.cuarentena_averias_c TO alertasx.cuarentena_averias,
	alertasx.cuarentena_averias_d TO alertasx.cuarentena_averias_c;
*/
#Dashboard	
	TRUNCATE TABLE alertasx.`dashboard`;
	INSERT INTO alertasx.`dashboard`
	SELECT 1,'PROBLEMAS INTRAWAY (DHCP-TFTP)' AS tipo,'',0 AS cant, SUM(init_d+init_o+sinippublica+init_i) AS clientes ,IF(SUM(init_d+init_o+sinippublica+init_i)<1000,'green','red') AS color,'monitor_init.php' AS enlace FROM ccm1.`Status_cablemodems` HAVING(SUM(init_d+init_o+sinippublica+init_i)>1000);
	INSERT INTO alertasx.`dashboard`
	SELECT 2,'CMTS PROBLEMAS IP' AS tipo,'',COUNT(*) AS cant , 0 AS clientes ,IF(COUNT(*)>1,'red','green') AS color,'monitor_ips.php' AS enlace    FROM catalogos.`redesip_view` WHERE available<10 AND  available>=0 HAVING (COUNT(*)>0);
	INSERT INTO alertasx.`dashboard`
	SELECT 3,CONCAT('<<<<<< MEGA MASIVA TROBAS CAIDAS Nodo: ',nodo,' >>>>>>>') AS tipo,'' ,COUNT(*) AS cant ,SUM(offline) AS clientes ,'#FF8040' AS color,CONCAT('monitor_geo_alertas_caidas.php?nodo=',nodo) AS enlace FROM alertasx.`caidas_new` WHERE Caida='SI'  AND TIME(NOW())<'23:59:59' AND TIME(NOW())>'07:30:00' GROUP BY nodo HAVING(COUNT(*)>=3);
	INSERT INTO alertasx.`dashboard`
	SELECT 3,'TROBAS CAIDAS' AS tipo ,'',COUNT(*) AS cant ,SUM(offline) AS clientes ,'#FFBB77' AS color,'monitor_geo_alertas_caidas.php' AS enlace FROM alertasx.`caidas_new` WHERE Caida='SI';
	INSERT INTO alertasx.`dashboard`
	SELECT 3,'CAIDAS AMP' AS tipo,'', COUNT(*) AS cant,SUM(offline) AS clientes ,'#FFEEDD' AS color,'monitor_geo_alertas_amplif.php' AS enlace  FROM alertasx.`caidas_new_amplif` WHERE Caida='SI';
	INSERT INTO alertasx.`dashboard`
	SELECT 4,CONCAT('MASIVAS PENDIENTES -->',codnod) AS tipo,'',COUNT(*) AS cant , SUM(Cantidad_Requerida) AS clientes,'#74E8FE' AS color,'monitor_masivas.php' AS enlace   FROM dbpext.`masivas_tempx` WHERE codreqmnt>300000 GROUP BY 2 HAVING(COUNT(*))>=3;
	INSERT INTO alertasx.`dashboard`
	SELECT 4,'MASIVAS PENDIENTES TOTAL' AS tipo,'',COUNT(*) AS cant , SUM(IF(Cantidad_Requerida<2500,Cantidad_Requerida,0)) AS clientes,'#74E8FE' AS color,'monitor_masivas.php' AS enlace   FROM dbpext.`masivas_tempx` WHERE codreqmnt>300000 ;
	INSERT INTO alertasx.`dashboard`
	SELECT 5,CONCAT('TOTAL CLIENTES: ') AS tipo,'',0 AS cant,COUNT(*) AS clientes,'#2F4F4F' AS color,'cuarentena_movistar_total.php' AS enlace  FROM alertasx.`cuarentena_mtotal`  a ;
	
	INSERT INTO alertasx.`dashboard`
	SELECT 6,'PUERTOS SATURADOS >80% (CASA)' AS tipo,'',COUNT(*) AS cant, SUM(b.clientes) AS clientes,'#FEFE74' AS color,'view_saturacion.php?ncmts=CASA' AS enlace
	FROM alertasx.`puertos_down_saturados` a
	INNER JOIN (SELECT cmts,down,clientes FROM reportes.portadorasxpuerto_tr GROUP BY cmts,down) b
	ON a.cmts=b.cmts AND a.down=b.down
	LEFT JOIN ccm1.cmts_ip cm ON a.cmts=cm.cmts
	WHERE  a.saturado='CONTINUA' AND SUBSTR(a.down,1,1)="'" AND a.rangosat IN ('90_100','80_90');
	INSERT INTO alertasx.`dashboard`
	SELECT 7,'PUERTOS SATURADOS >80% (CISCO)' AS tipo,'',COUNT(*) AS cant, SUM(b.clientes) AS clientes,'#FEFE74' AS color,'view_saturacion.php?ncmts=CISCO' AS enlace
	FROM alertasx.`puertos_down_saturados` a
	INNER JOIN (SELECT cmts,down,clientes FROM reportes.portadorasxpuerto_tr GROUP BY cmts,down)  b
	ON a.cmts=b.cmts AND a.down=b.down
	LEFT JOIN ccm1.cmts_ip cm ON a.cmts=cm.cmts
	WHERE  a.saturado='CONTINUA' and a.cant>3 AND SUBSTR(a.down,1,1)="C" AND a.rangosat IN ('90_100','80_90');
	INSERT INTO alertasx.`dashboard`
	SELECT 8,concat('Llamadas :',nodo,'-',troba),'',0, COUNT(*) ,'#FFFF2B','monitor_alertas_consultas.php' FROM alertasx.`alertas_dmpe`  GROUP BY 1,2 ORDER BY COUNT(*) DESC LIMIT 10;
	UPDATE alertasx.sw_dashboard SET sw=0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_Status_Global` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_Status_Global` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `SP_Status_Global`()
BEGIN
	INSERT IGNORE alertasx.status_global
	SELECT a.cmts,b.estado,COUNT(*) AS cant,SUBSTR(NOW(),12,2) AS hora,SUBSTR(NOW(),1,10) AS fecha_hora FROM ccm1.scm_total a INNER JOIN catalogos.macstate b ON a.macstate =b.macstate
	GROUP BY 1,2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tickets_calls` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tickets_calls` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_tickets_calls`()
BEGIN
	SELECT 'nodo','troba','cant','llam','umbral','tiempo'  union
	SELECT a.nodo,a.troba,b.cant,a.cant as llam,c.calls as umbral,12 as tiempo FROM alertasx.alertas_dmpe_view  a 
		INNER JOIN catalogos.`clientesxtroba_dmpe` b ON a.nodo=b.nodo AND a.troba=b.troba
		INNER JOIN alertasx.`umbral_m` c ON b.cant=c.reg
		WHERE eventid=0
		HAVING a.cant>=c.calls
	INTO OUTFILE '/temp/ticket_calls.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_afectacion_ttpp_dmpe` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_afectacion_ttpp_dmpe` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_afectacion_ttpp_dmpe`()
BEGIN
INSERT IGNORE `inf_hfc_dmpe_e` 
SELECT * FROM `inf_hfc_dmpe` 
WHERE DATEDIFF(NOW(),
CONCAT(
SUBSTR(fecha,1,4),'-',
SUBSTR(fecha,5,2),'-',
SUBSTR(fecha,7,2))
)>30;
DELETE FROM `inf_hfc_dmpe`
WHERE DATEDIFF(NOW(),
CONCAT(
SUBSTR(fecha,1,4),'-',
SUBSTR(fecha,5,2),'-',
SUBSTR(fecha,7,2))
)>30;
truncate alertasx.afectacionttpp_dmpe;
INSERT IGNORE alertasx.afectacionttpp_dmpe 
SELECT b.*,SUBSTR(TIMEDIFF(CONCAT(a.finicio,' ',a.htermino),NOW()),1,2) AS tiempo,CONCAT(a.finicio,' ',a.hinicio) AS finicio,d.macstate,e.`DSMER_SNR`,e.`DSPwr`,e.`USMER_SNR`,e.`USPwr` , 0 AS sw,NOW() AS fechaproc 
FROM (SELECT nodo,troba,amp,finicio,hinicio,htermino 
FROM dbpext.`trabajos_programados_noc` 
WHERE estado='ENPROCESO' AND DATEDIFF(NOW(),FINICIO)=0) a 
INNER JOIN catalogos.`planta_telef_cms_new` b FORCE INDEX(NODO,troba,cliente) ON a.`NODO`=b.`NODO` AND a.`TROBA`=b.`troba` AND TRIM(amp) IN ('TODO','TODOS','TODAS','') 
LEFT JOIN multiconsulta.nclientes c FORCE INDEX (NewIndex1,NewIndex4) ON b.`cliente`=c.`IDCLIENTECRM` AND b.nodo=c.nodo AND b.`troba`=c.troba 
LEFT JOIN ccm1.scm_total d FORCE INDEX(MACAddress) ON c.`mac2`=d.`MACAddress` 
LEFT JOIN ccm1.scm_phy_t e FORCE INDEX(NewIndex1) ON c.`mac2`=e.`MACAddress` 
WHERE d.`MACState`='offline' OR (e.`DSMER_SNR`<29 AND e.`DSMER_SNR`>0) OR e.`DSPwr`<-10 OR e.`DSPwr`>11 OR e.`USMER_SNR`<=26 OR e.`USPwr`<35 OR e.`USPwr`>=57 
GROUP BY b.cliente,b.`servicio` HAVING tiempo>'00';
SELECT a.`cliente`,a.`servicio`,a.`NODO`,a.`troba`,a.`apmlificador`,a.`NUMERODOC`,a.`NUMERORUC`,a.`telf1`,a.`telf2`,a.`telf3`,a.`telf4`,a.`telf5`,a.`telf6`,a.`telf7`,a.`telf8`,a.`telf9`,a.`telf10`,a.`telfono2`,a.`telf11`,a.`telf12`,a.`tiptec`,a.`tiempo`,a.`finicio`  
FROM alertasx.`afectacionttpp_dmpe` a LEFT JOIN  alertasx.afectacionttpp_dmpe_7dias b
ON a.cliente=b.cliente AND a.servicio=b.servicio
WHERE DATEDIFF(NOW(),b.fechaproc)>7 OR b.cliente IS NULL OR DATEDIFF(NOW(),b.fechaproc)=0
INTO OUTFILE '/temp/clientes_alertados_2.csv' 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
insert ignore alertasx.`afectacionttpp_dmpe_7dias`
SELECT * FROM alertasx.`afectacionttpp_dmpe`;
DELETE FROM alertasx.`afectacionttpp_dmpe_7dias` WHERE DATEDIFF(NOW(),fechaproc)>7;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_alertas_energia` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_alertas_energia` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_alertas_energia`()
BEGIN
REPLACE alertasx.alertas_energia
SELECT 
zz.macaddress,
zz.ipaddress,
zz.nodo,
zz.troba,
zz.distrito,
zz.direccion,
zz.latitudx,
zz.longitudy,
zz.cmts,
zz.interface,
zz.InputVoltagefinal,
zz.InputVoltagefinalcolor,
zz.OutputVoltagefinal,
zz.OutputVoltagefinalcolor,
zz.OutputCurrentfinal,
zz.OutputCurrentfinalcolor,
zz.TotalStringVoltagefinal,
zz.TotalStringVoltagefinalcolor,
zz.ColorTemperatura,
zz.EstadoTemperatura,
zz.EstadoInversor,
zz.colorinversor,
zz.puntaje,
zz.fechahora,
zz.resultadosnmp,
zz.tienebateria,
zz.id,
zz.puntajef,
zz.fechahora_ges,
zz.observaciones,
zz.usuario,
zz.tecnico,
zz.estado_ges,
zz.porc_caida,
zz.serv_afectado,
zz.numreq,
zz.remedy,
zz.idcausalert,
zz.cancli,
zz.offline,
zz.codmasiva,
zz.fechahora_caida,
zz.caida,
SUBSTR(REPLACE(zz.macaddress,'.',''),1,6) AS oui FROM
(SELECT mt.*,g.fechahora AS fechahora_ges,g.observaciones,g.usuario,g.tecnico,g.estado AS estado_ges,g.porc_caida,g.serv_afectado,g.numreq,g.remedy,g.idcausalert,
cc.cancli,cc.offline,cc.codmasiva,cc.fecha_hora AS fechahora_caida,IF(cc.`Caida`='SI','CAIDA','') AS caida
  FROM
(SELECT xx.* FROM
(SELECT a.*,1 AS id,IF(TotalStringVoltagefinalcolor='RED',100,IF(TotalStringVoltagefinalcolor='ORANGE',80,0))+a.puntaje AS puntajef  FROM alertasx.fuentes_view a
WHERE a.tienebateria IS NULL AND  a.resultadosnmp ='SNMPOK' AND TotalStringVoltagefinal>0
UNION
SELECT a.*,2 AS id,IF(TotalStringVoltagefinalcolor='RED',100,IF(TotalStringVoltagefinalcolor='ORANGE',80,0))+a.puntaje AS puntajef  FROM alertasx.fuentes_view a
WHERE a.tienebateria IS NULL AND  a.resultadosnmp ='SNMPOK' AND TotalStringVoltagefinal=0
UNION
SELECT a.*,3 AS id,IF(TotalStringVoltagefinalcolor='RED',100,IF(TotalStringVoltagefinalcolor='ORANGE',80,0))+a.puntaje AS puntajef FROM alertasx.fuentes_view a
WHERE a.tienebateria='N' AND  a.resultadosnmp ='SNMPOK'
UNION
SELECT a.*,4 AS id,IF(TotalStringVoltagefinalcolor='RED',100,IF(TotalStringVoltagefinalcolor='ORANGE',80,0))+a.puntaje AS puntajef  FROM alertasx.fuentes_view a
WHERE a.tienebateria IS NULL  AND  a.resultadosnmp <>'SNMPOK'  AND TotalStringVoltagefinal>0
UNION
SELECT a.*,4 AS id,IF(TotalStringVoltagefinalcolor='RED',100,IF(TotalStringVoltagefinalcolor='ORANGE',80,0))+a.puntaje AS puntajef  FROM alertasx.fuentes_view a
WHERE a.tienebateria IS NULL  AND  a.resultadosnmp <>'SNMPOK'  AND TotalStringVoltagefinal=0
UNION
SELECT a.*,5 AS id,IF(TotalStringVoltagefinalcolor='RED',100,IF(TotalStringVoltagefinalcolor='ORANGE',80,0))+a.puntaje AS puntajef  FROM alertasx.fuentes_view a
WHERE a.tienebateria='N' AND  a.resultadosnmp <>'SNMPOK')
xx
) mt
LEFT JOIN alertasx.caidas_new cc
ON mt.nodo=cc.nodo AND mt.troba=cc.troba AND cc.Caida='SI'
LEFT JOIN
(SELECT a.* FROM alertasx.gestion_alert a
INNER JOIN
(SELECT nodo,troba,MAX(fechahora) AS fechahora
FROM alertasx.gestion_alert
WHERE DATEDIFF(NOW(),fechahora)<=10
AND nodo<>''
GROUP BY 1,2) b
ON a.nodo=b.nodo AND a.troba=b.troba AND a.fechahora=b.fechahora) g
ON cc.nodo=g.nodo AND cc.troba=g.troba AND cc.Caida='SI'
) zz
ORDER BY zz.caida DESC,zz.id,zz.puntajef DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_alertas_dmpe` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_alertas_dmpe` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_alertas_dmpe`()
BEGIN
UPDATE alertasx.`alertas_dmpe_c` a INNER JOIN cms.`planta_clarita` b
ON a.`cliente`=b.cliente
SET a.amplificador=b.codlex;
UPDATE `alertasx`.`alertas_dmpe_c` a INNER JOIN `analitycs`.`xy_nuevo2019` b
ON a.`cliente`=b.`codclicms` SET a.`coordx`=b.`longitud` , a.`coordy`=b.`latitud`;
UPDATE `alertasx`.`alertas_dmpe_c` 
SET rangot=
IF(SUBSTR(fechahora,15,2)>=0 AND SUBSTR(fechahora,15,2)<=15 ,'00-15',
IF(SUBSTR(fechahora,15,2)>=16 AND SUBSTR(fechahora,15,2)<=30 ,'16-30',
IF(SUBSTR(fechahora,15,2)>=31 AND SUBSTR(fechahora,15,2)<=45 ,'31-45',
IF(SUBSTR(fechahora,15,2)>=46 AND SUBSTR(fechahora,15,2)<=60 ,'46-59',''
)))) where rangot='';
UPDATE `alertasx`.`alertas_dmpe_c` SET usuario='' WHERE usuario IN 
('Caida de Trafico (Vector SAT)',
'Saturacion por Trafico (Vector');
UPDATE `alertasx`.`alertas_dmpe_c` a INNER JOIN cms.`planta_clarita` b
ON a.`cliente`=b.`cliente` SET a.`coordx`=b.`numcoo_x` , a.`coordy`=b.`numcoo_y`
WHERE a.coordx='' AND SUBSTR(b.numcoo_x,1,1)='-';
INSERT IGNORE alertasx.alertas_dmpe_d SELECT * FROM alertasx.alertas_dmpe_c;
INSERT IGNORE alertasx.alertas_dmpe SELECT * FROM alertasx.alertas_dmpe_c;
INSERT IGNORE alertasx.alertas_dmpe_historico SELECT NULL,a.* FROM alertasx.alertas_dmpe_c a;
REPLACE   alertasx.llamadasdmpexdia_nodo
SELECT nodo,SUBSTR(a.fechahora,1,10) AS fecha,
IF(SUBSTR(a.fechahora,15,2) >='00' AND SUBSTR(a.fechahora,15,2) <='10', CONCAT('[',SUBSTR(a.fechahora,12,2),']','00-10'),
IF(SUBSTR(a.fechahora,15,2) >='11' AND SUBSTR(a.fechahora,15,2) <='20', CONCAT('[',SUBSTR(a.fechahora,12,2),']','11-20'),
IF(SUBSTR(a.fechahora,15,2) >='21' AND SUBSTR(a.fechahora,15,2) <='30', CONCAT('[',SUBSTR(a.fechahora,12,2),']','21-30'),
IF(SUBSTR(a.fechahora,15,2) >='31' AND SUBSTR(a.fechahora,15,2) <='40', CONCAT('[',SUBSTR(a.fechahora,12,2),']','31-40'),
IF(SUBSTR(a.fechahora,15,2) >='41' AND SUBSTR(a.fechahora,15,2) <='50', CONCAT('[',SUBSTR(a.fechahora,12,2),']','41-50'),
IF(SUBSTR(a.fechahora,15,2) >='51' AND SUBSTR(a.fechahora,15,2) <='59', CONCAT('[',SUBSTR(a.fechahora,12,2),']','51-59'),
'NO')))))) AS hora,
DAYOFWEEK(fechahora) AS numdia,desdia,COUNT(*) cant 
FROM alertasx.`alertas_dmpe_d` a LEFT JOIN catalogos.`dias` b
ON DAYOFWEEK(a.fechahora)=b.dia
WHERE YEAR(a.fechahora)=YEAR(NOW()) AND LENGTH(TRIM(nodo))=2 AND DATEDIFF(NOW(),a.fechahora)<=30
GROUP BY 1,2,3,4;
REPLACE   alertasx.llamadasdmpexdia
SELECT SUBSTR(a.fechahora,1,10) AS fecha,
IF(SUBSTR(a.fechahora,15,2) >='00' AND SUBSTR(a.fechahora,15,2) <='10', CONCAT('[',SUBSTR(a.fechahora,12,2),']','00-10'),
IF(SUBSTR(a.fechahora,15,2) >='11' AND SUBSTR(a.fechahora,15,2) <='20', CONCAT('[',SUBSTR(a.fechahora,12,2),']','11-20'),
IF(SUBSTR(a.fechahora,15,2) >='21' AND SUBSTR(a.fechahora,15,2) <='30', CONCAT('[',SUBSTR(a.fechahora,12,2),']','21-30'),
IF(SUBSTR(a.fechahora,15,2) >='31' AND SUBSTR(a.fechahora,15,2) <='40', CONCAT('[',SUBSTR(a.fechahora,12,2),']','31-40'),
IF(SUBSTR(a.fechahora,15,2) >='41' AND SUBSTR(a.fechahora,15,2) <='50', CONCAT('[',SUBSTR(a.fechahora,12,2),']','41-50'),
IF(SUBSTR(a.fechahora,15,2) >='51' AND SUBSTR(a.fechahora,15,2) <='59', CONCAT('[',SUBSTR(a.fechahora,12,2),']','51-59'),
'NO')))))) AS hora,
DAYOFWEEK(fechahora) AS numdia,desdia,COUNT(*) cant 
FROM alertasx.`alertas_dmpe_historico` a LEFT JOIN catalogos.`dias` b
ON DAYOFWEEK(a.fechahora)=b.dia
WHERE YEAR(a.fechahora)=YEAR(NOW()) AND LENGTH(TRIM(nodo))=2 AND DATEDIFF(NOW(),a.fechahora)<=30
GROUP BY 1,2,3;
##Recoleccion de tickets
INSERT IGNORE catalogos.ticketportroba
SELECT a.`nodo`,a.`troba`,a.`amplificador`,IF(b.`IDINCIDENCIA` IS NULL,SUBSTR(MIN(a.`fechahora`),1,16),CONCAT(b.`FECHA_INICIO`,' ',b.`HORA_INICIO`)),a.eventid,IF(b.`CODINCIDENCIA` IS NULL,'ABIERTO',IF(b.estado='VIGENTE','ABIERTO',b.estado)),b.`USUARIO_CREACION`,b.`USUARIO_MODIFICACION`,CONCAT(b.`FECHA_FIN`,' ',b.`HORA_FIN`) 
FROM alertasx.alertas_dmpe a
LEFT JOIN gampe_ivr.`reporteTickets` b
ON a.eventid=b.`IDINCIDENCIA`
WHERE a.eventid>0
GROUP BY nodo,troba,eventid;
INSERT IGNORE catalogos.ticketportroba
SELECT b.nodo,b.troba,b.amplificador,CONCAT(b.FECHA_INICIO,' ',b.HORA_INICIO),
b.IDINCIDENCIA,IF(b.estado='VIGENTE','ABIERTO',b.estado),b.USUARIO_CREACION,b.USUARIO_MODIFICACION,
CONCAT(b.FECHA_FIN,' ',b.HORA_FIN) 
FROM gampe_ivr.reporteTickets b 
LEFT JOIN alertasx.alertas_dmpe a
ON b.IDINCIDENCIA = a.eventid
WHERE a.eventid IS NULL AND b.nodo<>'' AND b.troba<>''
GROUP BY b.nodo,b.troba,IDINCIDENCIA;
##
TRUNCATE TABLE alertasx.`alertas_nodo_masde4llamadas_final` ;
INSERT IGNORE alertasx.`alertas_nodo_masde4llamadas_final` 
SELECT nodo FROM (
SELECT a.nodo,a.desdia,a.prom,b.hoy FROM 
(SELECT nodo,desdia,ROUND(AVG(prom)) AS prom  FROM
(SELECT nodo,fecha,desdia,SUM(cant) AS prom FROM alertasx.`llamadasdmpexdia_nodo` 
WHERE DAYOFWEEK(fecha)=DAYOFWEEK(NOW()) AND DATEDIFF(NOW(),fecha)<=30 AND DATEDIFF(NOW(),fecha)>=1 AND
hora<=
IF(MINUTE(NOW())>=0 AND MINUTE(NOW())<=10,CONCAT('[',HOUR(NOW()),']','00-10'),  
IF(MINUTE(NOW())>=11 AND MINUTE(NOW())<=20,CONCAT('[',HOUR(NOW()),']','11-20'),  
IF(MINUTE(NOW())>=21 AND MINUTE(NOW())<=30,CONCAT('[',HOUR(NOW()),']','21-30'),  
IF(MINUTE(NOW())>=31 AND MINUTE(NOW())<=40,CONCAT('[',HOUR(NOW()),']','31-40'),  
IF(MINUTE(NOW())>=41 AND MINUTE(NOW())<=50,CONCAT('[',HOUR(NOW()),']','41-50'),  
IF(MINUTE(NOW())>=51 AND MINUTE(NOW())<=59,CONCAT('[',HOUR(NOW()),']','51-59')
,'')))))) 
GROUP BY nodo,fecha HAVING SUM(cant)>0) k 
GROUP BY k.nodo HAVING(COUNT(*)>=4)) a
LEFT JOIN 
(SELECT nodo,desdia,SUM(cant) AS hoy FROM alertasx.`llamadasdmpexdia_nodo` 
WHERE DATEDIFF(NOW(),fecha)=0 AND 
hora<=
IF(MINUTE(NOW())>=0 AND MINUTE(NOW())<=10,CONCAT('[',HOUR(NOW()),']','00-10'),  
IF(MINUTE(NOW())>=11 AND MINUTE(NOW())<=20,CONCAT('[',HOUR(NOW()),']','11-20'),  
IF(MINUTE(NOW())>=21 AND MINUTE(NOW())<=30,CONCAT('[',HOUR(NOW()),']','21-30'),  
IF(MINUTE(NOW())>=31 AND MINUTE(NOW())<=40,CONCAT('[',HOUR(NOW()),']','31-40'),  
IF(MINUTE(NOW())>=41 AND MINUTE(NOW())<=50,CONCAT('[',HOUR(NOW()),']','41-50'),  
IF(MINUTE(NOW())>=51 AND MINUTE(NOW())<=59,CONCAT('[',HOUR(NOW()),']','51-59')
,''))))))
GROUP BY nodo) b
ON a.nodo=b.nodo ) xx
WHERE hoy/prom>1.20 
GROUP BY nodo order by hoy desc;
REPLACE   alertasx.llamadasdmpexdia_troba
SELECT nodo,troba,SUBSTR(a.fechahora,1,10) AS fecha,
IF(SUBSTR(a.fechahora,15,2) >='00' AND SUBSTR(a.fechahora,15,2) <='10', CONCAT('[',SUBSTR(a.fechahora,12,2),']','00-10'),
IF(SUBSTR(a.fechahora,15,2) >='11' AND SUBSTR(a.fechahora,15,2) <='20', CONCAT('[',SUBSTR(a.fechahora,12,2),']','11-20'),
IF(SUBSTR(a.fechahora,15,2) >='21' AND SUBSTR(a.fechahora,15,2) <='30', CONCAT('[',SUBSTR(a.fechahora,12,2),']','21-30'),
IF(SUBSTR(a.fechahora,15,2) >='31' AND SUBSTR(a.fechahora,15,2) <='40', CONCAT('[',SUBSTR(a.fechahora,12,2),']','31-40'),
IF(SUBSTR(a.fechahora,15,2) >='41' AND SUBSTR(a.fechahora,15,2) <='50', CONCAT('[',SUBSTR(a.fechahora,12,2),']','41-50'),
IF(SUBSTR(a.fechahora,15,2) >='51' AND SUBSTR(a.fechahora,15,2) <='59', CONCAT('[',SUBSTR(a.fechahora,12,2),']','51-59'),
'NO')))))) AS hora,
DAYOFWEEK(fechahora) AS numdia,desdia,COUNT(*) cant 
FROM alertasx.`alertas_dmpe_d` a LEFT JOIN catalogos.`dias` b
ON DAYOFWEEK(a.fechahora)=b.dia
WHERE YEAR(a.fechahora)=YEAR(NOW()) AND LENGTH(TRIM(nodo))=2 AND DATEDIFF(NOW(),a.fechahora)<=30
GROUP BY 1,2,3,4,5;
UPDATE catalogos.`ticketportroba` a  LEFT JOIN catalogos.`tickets_dmpe` b
ON a.eventid=b.eventid
SET a.estado='CERRADA' 
WHERE b.estado='CERRADA' OR b.estado IS NULL;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_averiasxnodo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_averiasxnodo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_averiasxnodo`()
BEGIN
DELETE FROM cms.averias_ingresadas  WHERE  DATEDIFF(NOW(),fecharegistro)>31;
INSERT IGNORE cms.averias_ingresadas
 SELECT codigoreq,codigodelcliente,codigodelservicio,codnod,plano,fecharegistro 
 FROM cms.`aver_liq_catv_pais` WHERE codigodelgruporeq IN ('RA') AND  DATEDIFF(NOW(),fecharegistro)<=1;
 
INSERT IGNORE cms.averias_ingresadas 
 SELECT `codreq`,`codcli`,`codsrv`,`codnod`,`nroplano`,`fec_registro` FROM  cms.`req_pend_macro` 
 WHERE tipreqini IN ('RA','R7','RP');
 
REPLACE   alertasx.`averias_nodo`
 SELECT codnod AS nodo,SUBSTR(fecharegistro,1,10) AS fecha,
IF(SUBSTR(fecharegistro,15,2)>=0 AND SUBSTR(fecharegistro,15,2)<=10,CONCAT('[',SUBSTR(fecharegistro,12,2),']','00-10'),  
IF(SUBSTR(fecharegistro,15,2)>=11 AND SUBSTR(fecharegistro,15,2)<=20,CONCAT('[',SUBSTR(fecharegistro,12,2),']','11-20'),  
IF(SUBSTR(fecharegistro,15,2)>=21 AND SUBSTR(fecharegistro,15,2)<=30,CONCAT('[',SUBSTR(fecharegistro,12,2),']','21-30'),  
IF(SUBSTR(fecharegistro,15,2)>=31 AND SUBSTR(fecharegistro,15,2)<=40,CONCAT('[',SUBSTR(fecharegistro,12,2),']','31-40'),  
IF(SUBSTR(fecharegistro,15,2)>=41 AND SUBSTR(fecharegistro,15,2)<=50,CONCAT('[',SUBSTR(fecharegistro,12,2),']','41-50'),  
IF(SUBSTR(fecharegistro,15,2)>=51 AND SUBSTR(fecharegistro,15,2)<=59,CONCAT('[',SUBSTR(fecharegistro,12,2),']','51-59'),'')))))) AS hora,
DAYOFWEEK(fecharegistro) AS numdia,b.desdia,
COUNT(*) AS cant
 FROM cms.`averias_ingresadas` a
 left join catalogos.`dias` b
 on DAYOFWEEK(fecharegistro)=b.dia
 WHERE DATEDIFF(NOW(),fecharegistro)<=1
 GROUP BY 1,2,3;
 
 TRUNCATE TABLE alertasx.`alertas_nodo_masaverias` ;
INSERT IGNORE alertasx.`alertas_nodo_masaverias` 
SELECT nodo,hoy FROM (
SELECT a.nodo,a.desdia,a.prom,b.hoy FROM 
(SELECT nodo,desdia,ROUND(AVG(prom)) AS prom  FROM
(SELECT nodo,fecha,desdia,SUM(cant) AS prom FROM alertasx.`averias_nodo`
WHERE DAYOFWEEK(fecha)=DAYOFWEEK(NOW()) AND DATEDIFF(NOW(),fecha)<=30 AND DATEDIFF(NOW(),fecha)>=1 AND
hora<=
IF(MINUTE(NOW())>=0 AND MINUTE(NOW())<=10,CONCAT('[',HOUR(NOW()),']','00-10'),  
IF(MINUTE(NOW())>=11 AND MINUTE(NOW())<=20,CONCAT('[',HOUR(NOW()),']','11-20'),  
IF(MINUTE(NOW())>=21 AND MINUTE(NOW())<=30,CONCAT('[',HOUR(NOW()),']','21-30'),  
IF(MINUTE(NOW())>=31 AND MINUTE(NOW())<=40,CONCAT('[',HOUR(NOW()),']','31-40'),  
IF(MINUTE(NOW())>=41 AND MINUTE(NOW())<=50,CONCAT('[',HOUR(NOW()),']','41-50'),  
IF(MINUTE(NOW())>=51 AND MINUTE(NOW())<=59,CONCAT('[',HOUR(NOW()),']','51-59')
,'')))))) 
GROUP BY nodo,fecha HAVING SUM(cant)>0) k 
GROUP BY k.nodo HAVING(COUNT(*)>=4)) a
LEFT JOIN 
(SELECT nodo,desdia,SUM(cant) AS hoy FROM alertasx.`averias_nodo` 
WHERE DATEDIFF(NOW(),fecha)=0 AND 
hora<=
IF(MINUTE(NOW())>=0 AND MINUTE(NOW())<=10,CONCAT('[',HOUR(NOW()),']','00-10'),  
IF(MINUTE(NOW())>=11 AND MINUTE(NOW())<=20,CONCAT('[',HOUR(NOW()),']','11-20'),  
IF(MINUTE(NOW())>=21 AND MINUTE(NOW())<=30,CONCAT('[',HOUR(NOW()),']','21-30'),  
IF(MINUTE(NOW())>=31 AND MINUTE(NOW())<=40,CONCAT('[',HOUR(NOW()),']','31-40'),  
IF(MINUTE(NOW())>=41 AND MINUTE(NOW())<=50,CONCAT('[',HOUR(NOW()),']','41-50'),  
IF(MINUTE(NOW())>=51 AND MINUTE(NOW())<=59,CONCAT('[',HOUR(NOW()),']','51-59')
,''))))))
GROUP BY nodo) b
ON a.nodo=b.nodo ) xx
WHERE hoy/prom>1.20 
GROUP BY nodo ORDER BY hoy DESC;
 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_detalle_energia` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_detalle_energia` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `SP_detalle_energia`()
BEGIN
	INSERT IGNORE detalle_caidas_energia
	SELECT nc.idclientecrm,nc.nameclient,nc.nodo,nc.troba,nc.cmts,nc.f_v,nc.macaddress,st.macstate,st.fecha_hora AS fecha_hora_caida,nt.estado,nt.fechahora AS fecha_hora_gest FROM multiconsulta.nclientes nc INNER JOIN 
	(SELECT a.nodo,a.troba,a.fecha_hora,b.estado,b.fechahora FROM alertasx.`caidas_new` a INNER JOIN alertasx.`gestion_alert`  b
	ON a.nodo=b.nodo AND a.troba=b.troba AND TIMEDIFF(a.`fecha_hora`,b.`fechahora`)<='00:10:00.0000000' 
	WHERE a.estado='CONTINUA' AND b.`estado` IN ('Cayo Luz Domiciliaria','Asignado: Energia')
	GROUP BY a.nodo,a.troba) nt
	ON nc.nodo=nt.nodo AND nc.troba=nt.troba
	INNER JOIN ccm1.scm_total st
	ON nc.mac2=st.`MACAddress`
	WHERE st.`MACState` ='offline' AND nc.estado='Activo';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_diagnostico_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_diagnostico_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_diagnostico_cliente`(in codcli int)
BEGIN
	#select mac2,estado,idproducto,nodo,troba,cmts,f_v as interface from multiconsulta.nclientes where idclientecrm = codcli;
	select concat(a.macaddress,' Estado Modem') as EstadoModem,a.macstate as resultado from ccm1.scm_total a where a.macaddress in (SELECT mac2 FROM multiconsulta.nclientes WHERE idclientecrm = codcli) group by 1
	union
	SELECT CONCAT(b.macaddress,' Parametros RF') AS EstadoModem,
	CONCAT('PwrUP:',
	b.USPwr,IF((SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='USPwr' AND (b.USPwr > MAX OR b.USPwr< MIN)) IS NULL,'',(SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='USPwr' AND (b.USPwr > MAX*1 OR b.USPwr< MIN*1))),
	' SnrUP:',
	b.USMER_SNR,IF((SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='USMER_SNR' AND b.USMER_SNR<MAX) IS NULL,'',(SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='USMER_SNR' AND b.USMER_SNR<MAX*1)),
	' PwrDN:',
	b.DSPwr,IF((SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='DSPwr' AND (b.DSPwr > MAX OR b.DSPwr < MIN)) IS NULL,'',(SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='DSPwr' AND (b.DSPwr > MAX*1 OR b.DSPwr< MIN*1))),
	' SnrDN:',
	b.DSMER_SNR,IF((SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='DSMER_SNR' AND b.DSMER_SNR<MAX) IS NULL,'',(SELECT ' -->NIVEL MALO ' FROM catalogos.`parametros_rf` WHERE nrf='DSMER_SNR' AND b.DSMER_SNR<MAX*1))
	) AS resultado FROM ccm1.scm_phy_t b WHERE b.macaddress IN (SELECT mac2 FROM multiconsulta.nclientes WHERE idclientecrm = codcli) GROUP BY 1 
	union
	select concat(c.nodo,' ',c.troba,' Caidas Masivas') AS EstadoModem,if(c.Caida='SI','Caida','No Caida') as resultado from alertasx.`caidas_new` c where concat(c.nodo,c.troba) in (select concat(nodo,troba) from multiconsulta.nclientes where idclientecrm = codcli) group by 1
	union
	SELECT CONCAT(d.nodo,' ',d.troba,' Caidas RF') as EstadoModem,IF(d.caida='SI','MASIVO RF','No RF') AS resultado FROM alertasx.`niveles_new` d WHERE CONCAT(d.nodo,d.troba) IN (SELECT CONCAT(nodo,troba) FROM multiconsulta.nclientes WHERE idclientecrm = codcli) group by 1
	union
	SELECT CONCAT(d.nodo,' ',d.troba,' Alertas Masivas') AS EstadoModem,tipo AS resultado FROM alertasx.clientes_alertados d WHERE idclientecrm = codcli
	union
	SELECT 'Saturacion: ',if(count(*)>=1,'SI','NO') AS resultado FROM reportes.`clientes_en_puerto_saturado` d WHERE idclientecrm = codcli;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_llamadas_reiteradas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_llamadas_reiteradas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_llamadas_reiteradas`()
BEGIN
TRUNCATE TABLE alertasx.llamadas_reiteradas;
INSERT INTO alertasx.llamadas_reiteradas
(SELECT cliente ,nodo,troba,tiptec,COUNT(*)  AS cant,telf_comp,9999 tdia FROM 
(SELECT cliente,SUBSTR(fechahora,1,10) AS fecha ,nodo,troba,tiptec,telf_comp
FROM alertasx.`alertas_dmpe_historico`
WHERE DATEDIFF(NOW(),fechahora)<=15
GROUP BY 1,2 ) xx
GROUP BY cliente 
HAVING COUNT(*) > 5
);
UPDATE alertasx.`llamadas_reiteradas` a 
INNER JOIN 
(SELECT CONCAT(IF(AREA>0,AREA,''),telefono) AS telefono,COUNT(*) AS cant FROM catalogos.`inf_hfc_dmpe` WHERE 
DATEDIFF(NOW(),CONCAT(SUBSTR(fecha,1,4),'-',SUBSTR(fecha,5,2),'-',SUBSTR(fecha,7,2),' ',SUBSTR(fecha,10,8)) )<=15
GROUP BY 1 HAVING COUNT(*)>5) b
ON a.telf_comp=b.telefono
SET a.tdia=b.cant;
update alertasx.`llamadas_reiteradas` set tdia=cant where tdia=9999 or tdia=0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_monitor_averias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_monitor_averias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_monitor_averias`()
BEGIN
TRUNCATE TABLE alertasx.monitor_averias_c;
INSERT INTO alertasx.monitor_averias_c
SELECT b.jefatura,a.nodo,a.troba,a.cpend,0 AS consultas,e.codreq AS ultreq,e.fec_registro
FROM cms.req_pend_view a 
LEFT JOIN catalogos.jefaturas b
ON a.nodo=b.nodo 
INNER JOIN cms.`ultreq_view` e
ON a.nodo=e.`codnod` AND a.troba=e.`nroplano`
#LEFT JOIN multiconsulta.consultas_view d
#ON a.`nodo`=d.nodo AND a.troba=d.troba AND DATEDIFF(NOW(),d.fechahora)=0
GROUP BY a.nodo,a.troba
HAVING a.cpend>2;
RENAME TABLE alertasx.monitor_averias TO alertasx.monitor_averias_d,alertasx.monitor_averias_c TO alertasx.monitor_averias,alertasx.monitor_averias_d TO alertasx.monitor_averias_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_monitor_averias_gpon` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_monitor_averias_gpon` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_monitor_averias_gpon`()
BEGIN
TRUNCATE TABLE alertasx.monitor_averias_gpon_c;
INSERT INTO alertasx.monitor_averias_gpon_c
SELECT b.jefatura,a.nodo,a.troba,a.cpend,d.`cant` AS consultas,e.codreq AS ultreq,e.fec_registro
FROM cms.req_pend_view_gpon a 
LEFT JOIN catalogos.jefaturas b
ON a.nodo=b.nodo 
INNER JOIN cms.`ultreq_view` e
ON a.nodo=e.`codnod` AND a.troba=e.`nroplano`
LEFT JOIN multiconsulta.consultas_view d
ON a.`nodo`=d.nodo AND a.troba=d.troba AND DATEDIFF(NOW(),d.fechahora)=0
GROUP BY a.nodo,a.troba;
RENAME TABLE alertasx.monitor_averias_gpon TO alertasx.monitor_averias_gpon_d,alertasx.monitor_averias_gpon_c TO alertasx.monitor_averias_gpon,alertasx.monitor_averias_gpon_d TO alertasx.monitor_averias_gpon_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_msj_nodo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_msj_nodo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_msj_nodo`()
BEGIN
insert ignore alertasx.mensajes_env
SELECT CONCAT(b.celular,',',TRIM(b.nombre),' Por favor revisar la grafica de Llamadas del Nodo ',a.nodo,'- Alerta detectada') AS mensaje,SUBSTR(NOW(),1,15) AS fecha ,SPACE(20) AS estado  FROM
(SELECT a.nodo,COUNT(a.cant) AS veces,'x' AS sw 
FROM alertasx.`alerta_nodo_llamadas_view` a 
WHERE TIMEDIFF(NOW(),CONCAT(SUBSTR(NOW(),1,10),' ',a.minuto))<='00:30:00.000000' AND Cant>=3 
GROUP BY a.nodo HAVING(COUNT(a.Cant)>=3)) a
INNER JOIN 
(SELECT celular,nombre,'x' AS sw FROM catalogos.`telcontacto_msj`) b
ON a.sw=b.sw;
select mensaje from alertasx.`mensajes_env` where estado='' INTO OUTFILE '/temp/msj_nodo.txt';
update alertasx.`mensajes_env` set estado='Enviado' where estado='';
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saturados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saturados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_saturados`()
BEGIN
		TRUNCATE  alertasx.puertos_down_saturados_90_100;
	
	INSERT IGNORE alertasx.puertos_down_saturados_90_100
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE  uso BETWEEN 91 AND 100  AND DATEDIFF(NOW(),fecha_hora)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE  alertasx.puertos_down_saturados_80_90;
	
	INSERT IGNORE alertasx.puertos_down_saturados_80_90
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE  uso BETWEEN 81 AND 90 AND DATEDIFF(NOW(),fecha_hora)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE  alertasx.puertos_down_saturados_70_80;
	
	INSERT IGNORE alertasx.puertos_down_saturados_70_80
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE  uso BETWEEN 71 AND 80 AND DATEDIFF(NOW(),fecha_hora)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE  alertasx.puertos_down_saturados_60_70;
	
	INSERT IGNORE alertasx.puertos_down_saturados_60_70
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE   uso BETWEEN 60 AND 70    AND DATEDIFF(NOW(),`fecha_hora`)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE TABLE alertasx.puertos_down_saturados;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'90_100' FROM alertasx.puertos_down_saturados_90_100 a GROUP BY cmts,down;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'80_90' FROM alertasx.puertos_down_saturados_80_90 a GROUP BY cmts,down;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'70-80' FROM alertasx.puertos_down_saturados_70_80 a GROUP BY cmts,down;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'60-70' FROM alertasx.puertos_down_saturados_60_70 a GROUP BY cmts,down;
	
	
	TRUNCATE TABLE reportes.clientes_en_puerto_saturado;
	
	INSERT IGNORE reportes.clientes_en_puerto_saturado  
	SELECT   
	a.`IDCLIENTECRM`,
	a.`nameclient`,
	a.`direccion`,
	a.`NODO`,
	a.`TROBA`,
	a.`amplificador`,
	a.`tap`,
	a.`telf1`,
	a.`telf2`,
	a.`movil1`,
	a.`MACADDRESS`,
	a.`SERVICEPACKAGE`,
	a.`SCOPESGROUP`,
	'' AS RxPwrdBmv,
	'' AS USPwr,
	'' AS USMER_SNR,
	'' AS DSPwr,
	'' AS DSMER_SNR,
	'' AS STATUS,
	a.f_v AS `INTERFACE`,
	a.`CMTS`,
	c.`down`,
	a.`fecha_upload`
	,'PUERTO DOWN SATURADO' 
	FROM multiconsulta.nclientes a FORCE INDEX (idxfv,cmts)
	INNER JOIN reportes.`portadorasxpuerto_tr` c FORCE INDEX(cmts,interface)
	ON a.cmts=c.cmts AND a.f_v=c.interface  
	INNER JOIN alertasx.`puertos_down_saturados` ps FORCE INDEX(cmts,rangosat)
	ON c.cmts=ps.cmts AND REPLACE(c.down,"'","")=REPLACE(ps.down,"'","")
	WHERE a.nodo<>'' and ps.rangosat IN ('70_80','90_100','80_90') AND ps.saturado='CONTINUA'
	GROUP BY a.macaddress;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mapa_nodos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mapa_nodos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_mapa_nodos`()
BEGIN
/*
truncate table  alertasx.mapas_nodos;
insert IGNORE alertasx.mapas_nodos
SELECT
CONCAT(TRIM(d.nombre),' ',TRIM(d.ape_pat),' ',TRIM(d.ape_mat)) AS nombre,
d.cliente,
d.servicio,
d.nodo,
d.troba,
d.direc_inst,
if(d.tiptec='','MonoTV',d.tiptec) as tiptec,
d.codlex,
d.codtap,
d.numcoo_x AS X ,
d.numcoo_y AS Y,
IF(c.nodo IS NOT NULL OR m.codnod IS NOT NULL ,'puntorojo.png' ,IF(sc.macstate LIKE '%online%' OR sc.macstate LIKE '%on-line%','puntoverde.png',IF(sc.macstate='offline','puntomorado.png','puntoazul.png'))) AS color,
j.jefatura,'','','','',if(sc.cmts is not null,sc.cmts,pt.cmts) as cmts,IF(pt.cmts IS NOT NULL,pt.interface,sc.interface) AS interface
FROM alertasx.alertas_dmpe a FORCE INDEX (cliente)
INNER JOIN cms.planta_clarita d FORCE INDEX (CLIENTE)
        ON a.cliente=d.CLIENTE
LEFT JOIN multiconsulta.nclientes nc
ON a.cliente=nc.idclientecrm AND a.nodo=nc.nodo AND a.troba=nc.troba
LEFT JOIN alertasx.`caidas_new` c ON a.`nodo`=c.nodo AND a.`troba`=c.troba AND c.Caida='SI'
LEFT JOIN dbpext.`masivas_tempx` m ON d.nodo=m.codnod AND d.plano=m.nroplano
LEFT JOIN catalogos.`jefaturas` j
ON a.nodo=j.nodo
LEFT JOIN ccm1.scm_total sc
ON nc.mac2=sc.macaddress
LEFT JOIN ccm1.scm_phy_t pt
ON nc.mac2=pt.macaddress
WHERE TIMEDIFF(NOW(),a.fechahora)<='14:00:00.000000' AND  d.numcoo_x<>0 AND SUBSTR(d.numcoo_x,1,1)='-' AND SUBSTR(d.numcoo_y,1,1)='-';
TRUNCATE TABLE alertasx.`mapas_nodos_c`;
INSERT INTO alertasx.`mapas_nodos_c`
SELECT nombre,cliente,servicio,nodo,troba,direc_inst,tiptec,codlex,codtap,X ,Y,
IF(codreqmnt>0,'puntorojo.png',
IF(resultado = 'Incierto - Validar' AND tiptec='MonoTV','puntoazul.png',
IF(resultado = 'Offline - NO OK','puntonegro.png',
IF(resultado IN ('Caida Modems - Problema PEXT','SNRUP DETERIODADO - VER HISTORICO','Caida Modems - Problema PEXT(Amplif)'),'puntorojo.png',
IF(resultado IN ('Incierto - Validar','OK'),'puntoverde.png',
IF(resultado IN ('Niveles RF  Malos - Problema PEXT'),'puntoambar.png',
IF(resultado IN ('Niveles RF  Malos - Problema Red Cliente','Problema Red Cliente'),'puntorosado.png',color))))))) AS color,
jefatura,DSMER_SNR,DSPwr,USMER_SNR,USPwr,cmts,interface
FROM
(SELECT ev.*,
IF(ev.CaidaA='SI' AND (ev.macstate='offline' OR ev.macstate = 'init(d)' OR ev.macstate = 'init(i)' OR ev.macstate = 'init(io)' OR ev.macstate = 'init(o)'
OR ev.macstate = 'init(r)' OR ev.macstate = 'init(r1)'  OR ev.macstate = 'init(t)' OR ev.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT(Amplif)',
IF(ev.CaidaM='SI' AND (ev.macstate='offline' OR ev.macstate = 'init(d)' OR ev.macstate = 'init(i)' OR ev.macstate = 'init(io)' OR ev.macstate = 'init(o)'
OR ev.macstate = 'init(r)' OR ev.macstate = 'init(r1)'  OR ev.macstate = 'init(t)' OR ev.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT',
IF(ev.CaidaS='SI','Niveles RF  Malos - Problema PEXT',
if(ev.rfcmts is not null,'SNRUP DETERIODADO - VER HISTORICO',
IF(ev.macstate='offline','Offline - NO OK',
IF(ev.USMER_SNR * 1 < 27 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USMER_SNR * 1 < 27 AND ev.USPwr * 1<36 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USPwr * 1 < 36 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USPwr * 1 > 55 AND ev.DSPwr > - 5 AND ev.DSPwr < 10 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.DSPwr * 1 > 10 AND ev.USPwr * 1 < 36  ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USPwr * 1 < 35 AND ev.USPwr * 1 > 0 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USPwr * 1 < 35 AND ev.DSPwr * 1 > 10 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.DSPwr * 1 > 15 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USPwr * 1 > 55 AND ev.DSPwr > 10 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.USMER_SNR * 1 < 30 AND ev.DSPwr * 1 > 10 ,'Niveles RF  Malos - Problema PEXT',
IF(ev.macstate = 'init(d)' OR ev.macstate = 'init(i)' OR ev.macstate = 'init(io)' OR ev.macstate = 'init(o)' 
OR ev.macstate = 'init(r)' OR ev.macstate = 'init(r1)'
OR ev.macstate = 'init(t)' OR ev.macstate = 'bpi(wait)','Problema Red Cliente',
IF(ev.DSPwr < -5*1 AND ev.USPwr*1 > 55,'Niveles RF  Malos - Problema Red Cliente',
IF(ev.DSPwr < -5*1 OR ev.DSPwr*1 > 10,'Niveles RF  Malos - Problema Red Cliente',
IF(ev.DSPwr < -5*1 AND ev.DSMER_SNR*1 < 30 ,'Niveles RF  Malos - Problema Red Cliente',
IF(ev.DSPwr='' AND ev.DSMER_SNR=''  AND ev.macstate = 'online','Incierto - Validar',
IF(ev.DSPwr='' AND ev.DSMER_SNR='' AND ev.macstate = '','Modem no registrado en CMTS',
IF(ev.DSPwr IS NULL AND ev.macstate IS NULL, 'Incierto - Validar',
'OK')))))))))))))))))))))) AS resultado
FROM
(
SELECT e.Caida AS CaidaA,f.Caida AS CaidaM,g.Caida AS CaidaS,h.codreqmnt,dt.docsis,macstate,b.idclientecrm,
b.macaddress,rf.cmts as rfcmts,
dt.Fabricante AS marca,dt.Modelo,dt.hwversion,dt.Versioon, d.USPwr,d.`DSMER_SNR`,d.`USMER_SNR`,d.`DSPwr`
,IF(c.cmts IS NOT NULL,c.cmts,d.cmts) AS cmts,IF(d.cmts IS NOT NULL,d.interface,c.interface) AS interface,
IF(c.numcpe<=1,'NO','SI') AS tieneip,IF(ps.tipopuerto IS NULL,'NO','SI') AS downsaturado,aa.nombre,aa.cliente,
aa.servicio,aa.nodo,aa.troba,aa.direc_inst,aa.tiptec,aa.codlex,aa.codtap,aa.X,aa.Y,aa.color,aa.jefatura
  FROM alertasx.`mapas_nodos` aa
        LEFT JOIN multiconsulta.nclientes b
        ON aa.cliente=b.idclientecrm
        LEFT JOIN ccm1.scm_total c
        ON b.mac2=c.MACAddress
        LEFT JOIN ccm1.scm_phy_t d
        ON b.mac2=d.MACAddress
        LEFT JOIN alertasx.alertasrf rf
        ON d.cmts=rf.cmts AND d.interface=rf.interface and rf.TipoRuido in ('ALTO','MEDIO')
        LEFT JOIN alertasx.caidas_new_amplif e
        ON b.nodo=e.nodo AND b.troba=e.troba AND b.amplificador=e.amplificador AND e.Caida='SI'
        LEFT JOIN alertasx.caidas_new f
        ON b.nodo=f.nodo AND b.troba=f.troba AND f.Caida='SI'
        LEFT JOIN alertasx.niveles_new g
        ON b.nodo=g.nodo AND b.troba=g.troba AND g.Caida='SI'
        LEFT JOIN dbpext.masivas_tempx h
        ON b.nodo=h.codnod AND b.troba=h.nroplano
        LEFT JOIN cms.req_pend_macro_final rp
        ON b.IDCLIENTECRM=rp.codcli
        LEFT JOIN catalogos.movistar_total mt
        ON b.idclientecrm=mt.clientecms
        LEFT JOIN ccm1_data.marca_modelo_docsis_total_final dt
        ON b.macaddress=dt.macaddress
        LEFT JOIN reportes.clientes_en_puerto_saturado ps
        ON aa.cliente=ps.IDCLIENTECRM
 )  ev
) ff;
rename table alertasx.mapas_nodos to alertasx.mapas_nodos_d,alertasx.mapas_nodos_c TO alertasx.mapas_nodos,
alertasx.mapas_nodos_d TO alertasx.mapas_nodos_c;
call alertasx.sp_llamadas_reiteradas;
*/ 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_preventivos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_preventivos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_preventivos`()
BEGIN
truncate catalogos.clientesxpuerto;
insert ignore catalogos.clientesxpuerto
SELECT cmts,REPLACE(interface,'#','') AS interface,COUNT(*) AS cantcli FROM `ccm1`.scm_phy_t
GROUP BY 1,2
having count(*)>20;
replace catalogos.clientesxpuerto
SELECT cmts,interface,COUNT(*) AS cantcli FROM `ccm1`.scm_total
GROUP BY 1,2
HAVING COUNT(*)>20;
TRUNCATE alertasx.alertasrf;
INSERT ignore alertasx.alertasrf
SELECT xx.*,cp.cantcli,NOW() AS fechadeproceso,'',0 FROM 
(SELECT `cmts`,interface,`description`,`powerup_prom` AS Pwr_UP,`powerds_prom` AS Pwr_DN,`snr_avg` AS SnrUP,`snr_down` AS SnrDN,fecha_hora 
FROM ccm1.`scm_phy_hist`
WHERE DATEDIFF(NOW(),fecha_hora)<=1 AND SUBSTR(fecha_hora,12,2)>=8 AND SUBSTR(fecha_hora,12,2)<=20 AND 
(
(`powerup_prom`>56 OR `powerup_prom`<35)
OR 
(`powerds_prom`>10 OR `powerds_prom`<-10) 
OR 
(`snr_avg`<=30 AND `snr_avg`>5) 
OR 
(`snr_down`<30 AND `snr_down`>0)
)
AND interface NOT LIKE ("%#")
GROUP BY cmts,interface,fecha_hora
ORDER BY fecha_hora DESC) xx
INNER JOIN catalogos.`clientesxpuerto` cp
ON xx.cmts=cp.cmts AND xx.interface=cp.interface
WHERE TIMEDIFF(NOW(),xx.fecha_hora)<='84:00:00.000000'
GROUP BY xx.cmts,xx.interface
HAVING COUNT(*)>=2 ;
INSERT IGNORE alertasx.alertasrf
SELECT xx.*,cp.cantcli,NOW() AS fechadeproceso,'',0 FROM 
(SELECT `cmts`,interface,`description`,`powerup_prom` AS Pwr_UP,`powerds_prom` AS Pwr_DN,`snr_avg` AS SnrUP,`snr_down` AS SnrDN,fecha_hora 
FROM ccm1.`scm_phy_hist_final`
WHERE DATEDIFF(NOW(),fecha_hora)<=1 AND SUBSTR(fecha_hora,12,2)>=8 AND SUBSTR(fecha_hora,12,2)<=20 AND 
(
(`powerup_prom`>56 OR `powerup_prom`<35)
OR 
(`powerds_prom`>10 OR `powerds_prom`<-10) 
OR 
(`snr_avg`<=30 AND `snr_avg`>5) 
OR 
(`snr_down`<30 AND `snr_down`>0)
)
AND interface NOT LIKE ("%#")
GROUP BY cmts,interface,fecha_hora
ORDER BY fecha_hora DESC) xx
INNER JOIN catalogos.`clientesxpuerto` cp
ON xx.cmts=cp.cmts AND xx.interface=cp.interface
WHERE TIMEDIFF(NOW(),xx.fecha_hora)<='84:00:00.000000'
GROUP BY xx.cmts,xx.interface
HAVING COUNT(*)>=2 ;
UPDATE alertasx.alertasrf SET TipoRuido='' WHERE SnrUP>32 AND TipoRuido='';
UPDATE alertasx.alertasrf SET TipoRuido='Leve' WHERE SnrUP>30 AND SnrUP<=32  AND TipoRuido='';
UPDATE alertasx.alertasrf SET TipoRuido='Medio' WHERE SnrUP>28 AND SnrUP<=30  AND TipoRuido='';
UPDATE alertasx.alertasrf SET TipoRuido='Alto' WHERE SnrUP<=28  AND TipoRuido='';
UPDATE alertasx.alertasrf SET TipoRuido='PwrUP' WHERE (Pwr_UP>56 OR Pwr_UP<35)  AND TipoRuido='';
UPDATE alertasx.alertasrf SET TipoRuido='PwrDN' WHERE (Pwr_DN>10 OR Pwr_DN<-10)  AND TipoRuido='';
UPDATE alertasx.alertasrf SET TipoRuido='SNRDN' WHERE SnrDN<30 AND SnrDN>0  AND TipoRuido='';
#--------------
TRUNCATE TABLE alertasx.alertasrf_int;
INSERT IGNORE alertasx.alertasrf_int
(SELECT xx.*,afec/cancli*100 AS porc,av.averias,'','',''  FROM
(SELECT a.cmts,
a.`Interface`,
a.`description`,
a.`Pwr_UP`,
a.`Pwr_DN`,
a.`SnrUP`,
a.`SnrDN`,
a.`TipoRuido`,
SUM(IF(b.`USMER_SNR`<=30,1,0)) AS afec,
'<=30' AS nivel,
IF(a.cantcli>COUNT(*),a.cantcli,COUNT(*) ) AS cancli
FROM alertasx.alertasrf a 
INNER JOIN ccm1.`scm_phy_t` b
ON a.cmts=b.cmts AND a.`Interface`=b.`Interface`
WHERE TipoRuido IN ('Alto','Medio','Leve') AND a.`SnrUP`<=28
GROUP BY a.cmts,a.`Interface`
UNION
SELECT a.cmts,
a.`Interface`,
a.`description`,
a.`Pwr_UP`,
a.`Pwr_DN`,
a.`SnrUP`,
a.`SnrDN`,
a.`TipoRuido`,
SUM(IF(b.`USMER_SNR`<=30,1,0)) AS afec,
'<=30' AS nivel,
IF(a.cantcli>COUNT(*),a.cantcli,COUNT(*) ) AS cancli
FROM alertasx.alertasrf a 
INNER JOIN ccm1.`scm_phy_t` b
ON a.cmts=b.cmts AND a.`Interface`=b.`Interface`
WHERE TipoRuido IN ('Alto','Medio','Leve')  AND a.`SnrUP`<=30
GROUP BY a.cmts,a.`Interface`)
xx
left join alertasx.averias_puerto_view av
on xx.cmts=av.cmts and xx.interface=av.interface
WHERE afec>10);
UPDATE alertasx.`alertasrf_int` a SET a.averias=0 WHERE averias IS NULL;
UPDATE alertasx.`alertasrf_int` a SET a.area ='';
UPDATE alertasx.`alertasrf_int` a SET a.area ='DESPLIEGUE' WHERE nivel='<=30' AND porc>50;
UPDATE alertasx.`alertasrf_int` a SET a.area ='CORRECTIVO' WHERE nivel='<=30' AND porc<=50;
UPDATE alertasx.`alertasrf_int` a INNER JOIN catalogos.`etiqueta_puertos` b 
ON a.cmts=b.cmts AND a.`Interface`=b.`interface`
SET a.`description`=b.`description`;
UPDATE `alertasrf_int` SET nodotroba=REPLACE(SUBSTR(description,1,7),' ','');
UPDATE alertasrf_int a LEFT JOIN catalogos.`distritos_priorizados` b
ON a.`nodotroba`=b.`nodotroba`
SET a.priorizada=IF(b.nodotroba IS NOT NULL,'SI','NO');
#---------------
    END */$$
DELIMITER ;

/*Table structure for table `alerta_dmpe_hist_view` */

DROP TABLE IF EXISTS `alerta_dmpe_hist_view`;

/*!50001 DROP VIEW IF EXISTS `alerta_dmpe_hist_view` */;
/*!50001 DROP TABLE IF EXISTS `alerta_dmpe_hist_view` */;

/*!50001 CREATE TABLE  `alerta_dmpe_hist_view`(
 `nodo` varchar(4) ,
 `troba` varchar(5) ,
 `cant` bigint(21) ,
 `ultimallamada` varchar(20) ,
 `eventid` int(11) ,
 `usuario` varchar(30) ,
 `fecha_inicio` varchar(20) ,
 `estado_alerta` varchar(30) ,
 `usuario_termino` varchar(30) ,
 `fecha_termino` varchar(20) 
)*/;

/*Table structure for table `alerta_dmpe_troba_hist_view` */

DROP TABLE IF EXISTS `alerta_dmpe_troba_hist_view`;

/*!50001 DROP VIEW IF EXISTS `alerta_dmpe_troba_hist_view` */;
/*!50001 DROP TABLE IF EXISTS `alerta_dmpe_troba_hist_view` */;

/*!50001 CREATE TABLE  `alerta_dmpe_troba_hist_view`(
 `nodo` varchar(4) ,
 `troba` varchar(5) ,
 `cant` decimal(42,0) ,
 `trobas` bigint(21) ,
 `promediocall` decimal(21,0) ,
 `ultimallamada` varchar(20) 
)*/;

/*Table structure for table `alerta_dmpe_troba_view` */

DROP TABLE IF EXISTS `alerta_dmpe_troba_view`;

/*!50001 DROP VIEW IF EXISTS `alerta_dmpe_troba_view` */;
/*!50001 DROP TABLE IF EXISTS `alerta_dmpe_troba_view` */;

/*!50001 CREATE TABLE  `alerta_dmpe_troba_view`(
 `nodo` varchar(4) ,
 `troba` varchar(5) ,
 `cant` decimal(42,0) ,
 `trobas` bigint(21) ,
 `promediocall` decimal(21,0) ,
 `ultimallamada` varchar(20) 
)*/;

/*Table structure for table `alerta_ips` */

DROP TABLE IF EXISTS `alerta_ips`;

/*!50001 DROP VIEW IF EXISTS `alerta_ips` */;
/*!50001 DROP TABLE IF EXISTS `alerta_ips` */;

/*!50001 CREATE TABLE  `alerta_ips`(
 `cmts` varchar(85) ,
 `scopesgroup` varchar(20) ,
 `total` decimal(32,0) ,
 `used` decimal(32,0) ,
 `available` decimal(32,0) ,
 `porc` decimal(39,4) ,
 `color` varchar(6) 
)*/;

/*Table structure for table `alerta_nodo_llamadas_view` */

DROP TABLE IF EXISTS `alerta_nodo_llamadas_view`;

/*!50001 DROP VIEW IF EXISTS `alerta_nodo_llamadas_view` */;
/*!50001 DROP TABLE IF EXISTS `alerta_nodo_llamadas_view` */;

/*!50001 CREATE TABLE  `alerta_nodo_llamadas_view`(
 `nodo` varchar(4) ,
 `minuto` varchar(5) ,
 `Cant` bigint(21) 
)*/;

/*Table structure for table `alertas_dhcp` */

DROP TABLE IF EXISTS `alertas_dhcp`;

/*!50001 DROP VIEW IF EXISTS `alertas_dhcp` */;
/*!50001 DROP TABLE IF EXISTS `alertas_dhcp` */;

/*!50001 CREATE TABLE  `alertas_dhcp`(
 `cmts` varchar(20) ,
 `alerta` varchar(4) ,
 `dhcp` decimal(25,0) ,
 `tftp` decimal(23,0) 
)*/;

/*Table structure for table `alertas_dmpe_nodo_view` */

DROP TABLE IF EXISTS `alertas_dmpe_nodo_view`;

/*!50001 DROP VIEW IF EXISTS `alertas_dmpe_nodo_view` */;
/*!50001 DROP TABLE IF EXISTS `alertas_dmpe_nodo_view` */;

/*!50001 CREATE TABLE  `alertas_dmpe_nodo_view`(
 `nodo` varchar(4) ,
 `cant` decimal(42,0) ,
 `trobas` bigint(21) ,
 `promediocall` decimal(21,0) ,
 `ultimallamada` varchar(20) 
)*/;

/*Table structure for table `alertas_dmpe_view` */

DROP TABLE IF EXISTS `alertas_dmpe_view`;

/*!50001 DROP VIEW IF EXISTS `alertas_dmpe_view` */;
/*!50001 DROP TABLE IF EXISTS `alertas_dmpe_view` */;

/*!50001 CREATE TABLE  `alertas_dmpe_view`(
 `nodo` varchar(4) ,
 `troba` varchar(5) ,
 `cant` bigint(21) ,
 `ultimallamada` varchar(20) ,
 `eventid` int(11) ,
 `usuario` varchar(30) ,
 `fecha_inicio` varchar(20) ,
 `estado_alerta` varchar(30) ,
 `usuario_termino` varchar(30) ,
 `fecha_termino` varchar(20) 
)*/;

/*Table structure for table `alertas_dmpe_x_troba_view` */

DROP TABLE IF EXISTS `alertas_dmpe_x_troba_view`;

/*!50001 DROP VIEW IF EXISTS `alertas_dmpe_x_troba_view` */;
/*!50001 DROP TABLE IF EXISTS `alertas_dmpe_x_troba_view` */;

/*!50001 CREATE TABLE  `alertas_dmpe_x_troba_view`(
 `nodo` varchar(4) ,
 `troba` varchar(5) ,
 `cant` bigint(21) ,
 `eventid` int(11) ,
 `ultimallamada` varchar(20) 
)*/;

/*Table structure for table `averias_puerto_view` */

DROP TABLE IF EXISTS `averias_puerto_view`;

/*!50001 DROP VIEW IF EXISTS `averias_puerto_view` */;
/*!50001 DROP TABLE IF EXISTS `averias_puerto_view` */;

/*!50001 CREATE TABLE  `averias_puerto_view`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `averias` bigint(21) 
)*/;

/*Table structure for table `cmts_probl_ips_view` */

DROP TABLE IF EXISTS `cmts_probl_ips_view`;

/*!50001 DROP VIEW IF EXISTS `cmts_probl_ips_view` */;
/*!50001 DROP TABLE IF EXISTS `cmts_probl_ips_view` */;

/*!50001 CREATE TABLE  `cmts_probl_ips_view`(
 `cmts` varchar(30) ,
 `scopesgroup` varchar(20) ,
 `fecha` varchar(13) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `fuentes_view` */

DROP TABLE IF EXISTS `fuentes_view`;

/*!50001 DROP VIEW IF EXISTS `fuentes_view` */;
/*!50001 DROP TABLE IF EXISTS `fuentes_view` */;

/*!50001 CREATE TABLE  `fuentes_view`(
 `macaddress` varchar(20) ,
 `ipaddress` varchar(20) ,
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `distrito` varchar(80) ,
 `direccion` varchar(200) ,
 `latitudx` varchar(20) ,
 `longitudy` varchar(20) ,
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `InputVoltagefinal` float ,
 `InputVoltagefinalcolor` varchar(7) ,
 `OutputVoltagefinal` float ,
 `OutputVoltagefinalcolor` varchar(7) ,
 `OutputCurrentfinal` float ,
 `OutputCurrentfinalcolor` varchar(7) ,
 `TotalStringVoltagefinal` varchar(12) ,
 `TotalStringVoltagefinalcolor` varchar(7) ,
 `EstadoInversor` int(11) ,
 `ColorTemperatura` varchar(7) ,
 `EstadoTemperatura` float ,
 `colorinversor` varchar(7) ,
 `estadoInversorText` varchar(35) ,
 `TamperStatusText` varchar(7) ,
 `TamperStatusColor` varchar(7) ,
 `AperturaPuerta` int(11) ,
 `MinorAlarmText` varchar(8) ,
 `MinorAlarmColor` varchar(7) ,
 `AlarmaMenor` int(11) ,
 `MajorAlarmText` varchar(8) ,
 `MajorAlarmColor` varchar(7) ,
 `AlarmaMayor` int(11) ,
 `BatteryVoltageValor` varchar(50) ,
 `CorrienteCargaBateria` float ,
 `CorrienteDescargaBateria` float ,
 `CargaBateriaAmperios` float ,
 `DescargaBateriaAmperios` float ,
 `EstadoSoporteBateriaTexto` varchar(82) ,
 `EstadoSoporteBateriaColor` varchar(7) ,
 `SoporteVoltageBateria` int(11) ,
 `fecha_bateria_antigua` date ,
 `antiguedad_bateria_years` bigint(21) ,
 `antiguedad_bateria_month` bigint(21) ,
 `antiguedad_bateria_days` bigint(21) ,
 `puntaje` double ,
 `fechahora` varchar(20) ,
 `resultadosnmp` varchar(20) ,
 `tienebateria` varchar(1) 
)*/;

/*Table structure for table `ips_disponible_view` */

DROP TABLE IF EXISTS `ips_disponible_view`;

/*!50001 DROP VIEW IF EXISTS `ips_disponible_view` */;
/*!50001 DROP TABLE IF EXISTS `ips_disponible_view` */;

/*!50001 CREATE TABLE  `ips_disponible_view`(
 `cmtshfc` varchar(50) ,
 `cmts` varchar(30) ,
 `scopesgroup` varchar(20) ,
 `total` decimal(32,0) ,
 `usado` decimal(32,0) ,
 `disponible` decimal(32,0) 
)*/;

/*Table structure for table `masivas_count_view` */

DROP TABLE IF EXISTS `masivas_count_view`;

/*!50001 DROP VIEW IF EXISTS `masivas_count_view` */;
/*!50001 DROP TABLE IF EXISTS `masivas_count_view` */;

/*!50001 CREATE TABLE  `masivas_count_view`(
 `nodo` varchar(50) ,
 `troba` varchar(50) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `ultimaGestion_alert_view` */

DROP TABLE IF EXISTS `ultimaGestion_alert_view`;

/*!50001 DROP VIEW IF EXISTS `ultimaGestion_alert_view` */;
/*!50001 DROP TABLE IF EXISTS `ultimaGestion_alert_view` */;

/*!50001 CREATE TABLE  `ultimaGestion_alert_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `fechahora` varchar(20) 
)*/;

/*View structure for view alerta_dmpe_hist_view */

/*!50001 DROP TABLE IF EXISTS `alerta_dmpe_hist_view` */;
/*!50001 DROP VIEW IF EXISTS `alerta_dmpe_hist_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alerta_dmpe_hist_view` AS (select `a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,count(0) AS `cant`,max(`a`.`fechahora`) AS `ultimallamada`,max(`a`.`eventid`) AS `eventid`,`b`.`usuario_origen` AS `usuario`,`b`.`fecha_inicio` AS `fecha_inicio`,`b`.`estado` AS `estado_alerta`,`b`.`usuario_termino` AS `usuario_termino`,`b`.`fecha_termino` AS `fecha_termino` from (`alertasx`.`alertas_dmpe_historico` `a` left join `catalogos`.`tickets_dmpe` `b` on((`a`.`eventid` = `b`.`eventid`))) where (`a`.`nodo` <> '') group by 1,2 order by count(0) desc) */;

/*View structure for view alerta_dmpe_troba_hist_view */

/*!50001 DROP TABLE IF EXISTS `alerta_dmpe_troba_hist_view` */;
/*!50001 DROP VIEW IF EXISTS `alerta_dmpe_troba_hist_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alerta_dmpe_troba_hist_view` AS (select `a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,sum(`a`.`cant`) AS `cant`,count(0) AS `trobas`,round(avg(`a`.`cant`),0) AS `promediocall`,max(`a`.`ultimallamada`) AS `ultimallamada` from `alertasx`.`alerta_dmpe_hist_view` `a` group by `a`.`nodo`,`a`.`troba` order by 3 desc) */;

/*View structure for view alerta_dmpe_troba_view */

/*!50001 DROP TABLE IF EXISTS `alerta_dmpe_troba_view` */;
/*!50001 DROP VIEW IF EXISTS `alerta_dmpe_troba_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alerta_dmpe_troba_view` AS (select `a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,sum(`a`.`cant`) AS `cant`,count(0) AS `trobas`,round(avg(`a`.`cant`),0) AS `promediocall`,max(`a`.`ultimallamada`) AS `ultimallamada` from `alertasx`.`alertas_dmpe_view` `a` group by `a`.`nodo`,`a`.`troba` order by 3 desc) */;

/*View structure for view alerta_ips */

/*!50001 DROP TABLE IF EXISTS `alerta_ips` */;
/*!50001 DROP VIEW IF EXISTS `alerta_ips` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alerta_ips` AS (select `a`.`cmts` AS `cmts`,`a`.`scopesgroup` AS `scopesgroup`,`a`.`total` AS `total`,`a`.`used` AS `used`,`a`.`available` AS `available`,`a`.`porc` AS `porc`,if(((`a`.`available` < 150) and (`a`.`porc` > 90)),'red',if(((`a`.`available` >= 151) and (`a`.`available` <= 250) and (`a`.`porc` > 40)),'orange',if((`a`.`porc` < 40),'green','green'))) AS `color` from `catalogos`.`redesip_view` `a` order by if(((`a`.`available` < 150) and (`a`.`porc` > 90)),'red',if(((`a`.`available` >= 151) and (`a`.`available` <= 250) and (`a`.`porc` > 40)),'orange',if((`a`.`porc` < 40),'green','green'))) desc,`a`.`porc` desc) */;

/*View structure for view alerta_nodo_llamadas_view */

/*!50001 DROP TABLE IF EXISTS `alerta_nodo_llamadas_view` */;
/*!50001 DROP VIEW IF EXISTS `alerta_nodo_llamadas_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alerta_nodo_llamadas_view` AS (select `a`.`nodo` AS `nodo`,substr(`a`.`fechahora`,12,5) AS `minuto`,count(0) AS `Cant` from (`alertas_dmpe` `a` join `alertas_nodo_masde4llamadas_final` `b` on((`a`.`nodo` = `b`.`nodo`))) where ((timediff(now(),`a`.`fechahora`) <= '02:00:00.000000') and (`a`.`nodo` <> '')) group by 1,2) */;

/*View structure for view alertas_dhcp */

/*!50001 DROP TABLE IF EXISTS `alertas_dhcp` */;
/*!50001 DROP VIEW IF EXISTS `alertas_dhcp` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alertas_dhcp` AS (select `ccm1`.`Status_cablemodems`.`cmts` AS `cmts`,if((((`ccm1`.`Status_cablemodems`.`sinippublica` + `ccm1`.`Status_cablemodems`.`init_d`) + `ccm1`.`Status_cablemodems`.`init_i`) > 100),'DHCP',if((`ccm1`.`Status_cablemodems`.`init_i` > 100),'TFTP','')) AS `alerta`,((`ccm1`.`Status_cablemodems`.`sinippublica` + `ccm1`.`Status_cablemodems`.`init_d`) + `ccm1`.`Status_cablemodems`.`init_i`) AS `dhcp`,`ccm1`.`Status_cablemodems`.`init_o` AS `tftp` from `ccm1`.`Status_cablemodems` having (`alerta` <> '')) */;

/*View structure for view alertas_dmpe_nodo_view */

/*!50001 DROP TABLE IF EXISTS `alertas_dmpe_nodo_view` */;
/*!50001 DROP VIEW IF EXISTS `alertas_dmpe_nodo_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alertas_dmpe_nodo_view` AS (select `a`.`nodo` AS `nodo`,sum(`a`.`cant`) AS `cant`,count(0) AS `trobas`,round(avg(`a`.`cant`),0) AS `promediocall`,max(`a`.`ultimallamada`) AS `ultimallamada` from `alertasx`.`alertas_dmpe_view` `a` group by `a`.`nodo` having (sum(`a`.`cant`) > 50) order by 2 desc) */;

/*View structure for view alertas_dmpe_view */

/*!50001 DROP TABLE IF EXISTS `alertas_dmpe_view` */;
/*!50001 DROP VIEW IF EXISTS `alertas_dmpe_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alertas_dmpe_view` AS (select `a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,`a`.`cant` AS `cant`,`a`.`ultimallamada` AS `ultimallamada`,`a`.`eventid` AS `eventid`,`b`.`usuario_origen` AS `usuario`,`b`.`fecha_inicio` AS `fecha_inicio`,`b`.`estado` AS `estado_alerta`,`b`.`usuario_termino` AS `usuario_termino`,`b`.`fecha_termino` AS `fecha_termino` from (`alertasx`.`alertas_dmpe_x_troba_view` `a` left join `catalogos`.`ticketportroba` `b` FORCE INDEX (`eventid`) on((`a`.`eventid` = `b`.`eventid`))) group by 1,2 order by count(0) desc) */;

/*View structure for view alertas_dmpe_x_troba_view */

/*!50001 DROP TABLE IF EXISTS `alertas_dmpe_x_troba_view` */;
/*!50001 DROP VIEW IF EXISTS `alertas_dmpe_x_troba_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `alertas_dmpe_x_troba_view` AS (select `a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,count(0) AS `cant`,max(`a`.`eventid`) AS `eventid`,max(`a`.`fechahora`) AS `ultimallamada` from `alertas_dmpe` `a` group by 1,2 order by count(0) desc) */;

/*View structure for view averias_puerto_view */

/*!50001 DROP TABLE IF EXISTS `averias_puerto_view` */;
/*!50001 DROP VIEW IF EXISTS `averias_puerto_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `averias_puerto_view` AS (select `b`.`cmts` AS `cmts`,`b`.`f_v` AS `interface`,count(0) AS `averias` from (`cms`.`req_pend_macro_final` `a` join `multiconsulta`.`nclientes` `b` on((`a`.`codcli` = `b`.`IDCLIENTECRM`))) where (`b`.`cmts` <> '') group by 1,2) */;

/*View structure for view cmts_probl_ips_view */

/*!50001 DROP TABLE IF EXISTS `cmts_probl_ips_view` */;
/*!50001 DROP VIEW IF EXISTS `cmts_probl_ips_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `cmts_probl_ips_view` AS (select `ccm1`.`historico_probl_ips`.`cmts` AS `cmts`,`ccm1`.`historico_probl_ips`.`scopesgroup` AS `scopesgroup`,substr(`ccm1`.`historico_probl_ips`.`fecha_hora`,1,13) AS `fecha`,count(0) AS `cant` from `ccm1`.`historico_probl_ips` where (`ccm1`.`historico_probl_ips`.`available` < 10) group by 1,2,3) */;

/*View structure for view fuentes_view */

/*!50001 DROP TABLE IF EXISTS `fuentes_view` */;
/*!50001 DROP VIEW IF EXISTS `fuentes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `fuentes_view` AS (select `a`.`macaddress` AS `macaddress`,`a`.`ipaddress` AS `ipaddress`,`a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,`a`.`distrito` AS `distrito`,`a`.`direccion` AS `direccion`,`a`.`latitudx` AS `latitudx`,`a`.`longitudy` AS `longitudy`,`a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`a`.`InputVoltagefinal` AS `InputVoltagefinal`,if((`a`.`InputVoltagefinal` > 250),'#fc7474',if(((`a`.`InputVoltagefinal` > 230) and (`a`.`InputVoltagefinal` <= 250)),'#febf4a',if(((`a`.`InputVoltagefinal` >= 190) and (`a`.`InputVoltagefinal` <= 230)),'#6ebd6e',if(((`a`.`InputVoltagefinal` >= 180) and (`a`.`InputVoltagefinal` <= 190)),'#febf4a',if((`a`.`InputVoltagefinal` < 180),'#fc7474',''))))) AS `InputVoltagefinalcolor`,`a`.`OutputVoltagefinal` AS `OutputVoltagefinal`,if((`a`.`OutputVoltagefinal` > 95),'#fc7474',if(((`a`.`OutputVoltagefinal` > 90) and (`a`.`OutputVoltagefinal` <= 95)),'#febf4a',if(((`a`.`OutputVoltagefinal` >= 60) and (`a`.`OutputVoltagefinal` <= 90)),'#6ebd6e',if(((`a`.`OutputVoltagefinal` >= 40) and (`a`.`OutputVoltagefinal` <= 60)),'#febf4a',if((`a`.`OutputVoltagefinal` < 40),'#fc7474',''))))) AS `OutputVoltagefinalcolor`,`a`.`OutputCurrentfinal` AS `OutputCurrentfinal`,if((`a`.`OutputCurrentfinal` > 17),'#fc7474',if(((`a`.`OutputCurrentfinal` > 15) and (`a`.`OutputCurrentfinal` <= 17)),'#febf4a',if(((`a`.`OutputCurrentfinal` >= 4) and (`a`.`OutputCurrentfinal` <= 15)),'#6ebd6e',if(((`a`.`OutputCurrentfinal` > 0) and (`a`.`OutputCurrentfinal` <= 4)),'#febf4a',if((`a`.`OutputCurrentfinal` <= 0),'#fc7474',''))))) AS `OutputCurrentfinalcolor`,if(((`a`.`TotalStringVoltagefinal` = 0) and (`b`.`tienebateria` = 'N')),'SnBat',`a`.`TotalStringVoltagefinal`) AS `TotalStringVoltagefinal`,if(((`a`.`TotalStringVoltagefinal` > 45) and (`a`.`InputVoltagefinal` = 0)),'#fc7474',if(((`a`.`TotalStringVoltagefinal` > 44) and (`a`.`TotalStringVoltagefinal` <= 45) and (`a`.`InputVoltagefinal` < 180)),'#febf4a',if(((`a`.`TotalStringVoltagefinal` >= 33) and (`a`.`TotalStringVoltagefinal` <= 44) and (`a`.`InputVoltagefinal` > 190)),'#6ebd6e',if(((`a`.`TotalStringVoltagefinal` > 0) and (`a`.`TotalStringVoltagefinal` <= 33) and (`a`.`InputVoltagefinal` < 190)),'#febf4a',if(((`a`.`TotalStringVoltagefinal` <= 0) and (`a`.`InputVoltagefinal` < 180) and isnull(`b`.`tienebateria`)),'#fc7474',''))))) AS `TotalStringVoltagefinalcolor`,`a`.`EstadoInversor` AS `EstadoInversor`,if(((`a`.`temperature` >= -(50)) and (`a`.`temperature` <= 80)),'#6ebd6e',if(((`a`.`temperature` >= 81) and (`a`.`temperature` <= 120)),'#febf4a',if((`a`.`temperature` >= 121),'#fc7474',''))) AS `ColorTemperatura`,`a`.`temperature` AS `EstadoTemperatura`,if((`a`.`EstadoInversor` = 1),'#6ebd6e',if(((`a`.`EstadoInversor` >= 2) and (`a`.`EstadoInversor` <= 5)),'#fc7474','')) AS `colorinversor`,if((`a`.`EstadoInversor` = 1),'APAGADO',if((`a`.`EstadoInversor` = 2),'ENCENDIDO: FALLO DE LINEA CA',if((`a`.`EstadoInversor` = 3),'ENCENDIDO: EN CICLO DE PRUEBA LOCAL',if((`a`.`EstadoInversor` = 4),'ENCENDIDO: PRUEBA REMOTA INICIADA ',if((`a`.`EstadoInversor` = 5),'ALARMA: ULTIMA PRUEBA FALLIDA','NO ACCESIBLE'))))) AS `estadoInversorText`,if((`a`.`TamperStatus` = 1),'CERRADO',if((`a`.`TamperStatus` = 2),'ABIERTO','')) AS `TamperStatusText`,if((`a`.`TamperStatus` = 1),'#6ebd6e',if((`a`.`TamperStatus` = 2),'#fc7474','')) AS `TamperStatusColor`,`a`.`TamperStatus` AS `AperturaPuerta`,if((`a`.`MinorAlarm` = 1),'OK',if((`a`.`MinorAlarm` = 2),'ALARMADO','')) AS `MinorAlarmText`,if((`a`.`MinorAlarm` = 1),'#6ebd6e',if((`a`.`MinorAlarm` = 2),'#fc7474','')) AS `MinorAlarmColor`,`a`.`MinorAlarm` AS `AlarmaMenor`,if((`a`.`MajorAlarm` = 1),'OK',if((`a`.`MajorAlarm` = 2),'ALARMADO','')) AS `MajorAlarmText`,if((`a`.`MajorAlarm` = 1),'#6ebd6e',if((`a`.`MajorAlarm` = 2),'#fc7474','')) AS `MajorAlarmColor`,`a`.`MajorAlarm` AS `AlarmaMayor`,`a`.`BatteryVoltage` AS `BatteryVoltageValor`,`a`.`StringChargeCurrent` AS `CorrienteCargaBateria`,`a`.`StringDischargeCurrent` AS `CorrienteDescargaBateria`,`a`.`StringChargeCurrent` AS `CargaBateriaAmperios`,`a`.`StringDischargeCurrent` AS `DescargaBateriaAmperios`,if((`a`.`BatteryVoltageSupport` = 2),'Solo está disponible el voltaje de batería de cadena completa',if((`a`.`BatteryVoltageSupport` = 3),'Tanto la batería individual como los voltajes de cadena completa están disponibles',if((`a`.`BatteryVoltageSupport` = 1),'No hay monitoreo de voltaje de batería disponible','NO ACCESIBLE'))) AS `EstadoSoporteBateriaTexto`,if((`a`.`BatteryVoltageSupport` = 2),'#febf4a',if((`a`.`BatteryVoltageSupport` = 3),'#6ebd6e',if((`a`.`BatteryVoltageSupport` = 1),'#fc7474','WHITE'))) AS `EstadoSoporteBateriaColor`,`a`.`BatteryVoltageSupport` AS `SoporteVoltageBateria`,`b`.`fecha_bateria_antigua` AS `fecha_bateria_antigua`,timestampdiff(YEAR,`b`.`fecha_bateria_antigua`,now()) AS `antiguedad_bateria_years`,timestampdiff(MONTH,(`b`.`fecha_bateria_antigua` + interval timestampdiff(YEAR,`b`.`fecha_bateria_antigua`,now()) year),now()) AS `antiguedad_bateria_month`,timestampdiff(DAY,(`b`.`fecha_bateria_antigua` + interval timestampdiff(MONTH,`b`.`fecha_bateria_antigua`,now()) month),now()) AS `antiguedad_bateria_days`,((if((`a`.`resultadosnmp` = 'SNMPOK'),((((((if((`a`.`InputVoltagefinal` > 250),'9',if(((`a`.`InputVoltagefinal` > 230) and (`a`.`InputVoltagefinal` <= 250)),'5',if(((`a`.`InputVoltagefinal` >= 190) and (`a`.`InputVoltagefinal` <= 230) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`InputVoltagefinal` >= 180) and (`a`.`InputVoltagefinal` <= 190)),'5',if((`a`.`InputVoltagefinal` < 180),'9',''))))) + if((`a`.`OutputVoltagefinal` > 95),'9',if(((`a`.`OutputVoltagefinal` > 90) and (`a`.`OutputVoltagefinal` <= 95)),'5',if(((`a`.`OutputVoltagefinal` >= 60) and (`a`.`OutputVoltagefinal` <= 90) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`OutputVoltagefinal` >= 40) and (`a`.`OutputVoltagefinal` <= 60)),'5',if((`a`.`OutputVoltagefinal` < 40),'9','')))))) + if((`a`.`OutputCurrentfinal` > 17),'9',if(((`a`.`OutputCurrentfinal` > 15) and (`a`.`OutputCurrentfinal` <= 17)),'5',if(((`a`.`OutputCurrentfinal` >= 4) and (`a`.`OutputCurrentfinal` <= 15) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`OutputCurrentfinal` > 0) and (`a`.`OutputCurrentfinal` <= 4)),'5',if((`a`.`OutputCurrentfinal` <= 0),'9','')))))) + if((`a`.`TotalStringVoltagefinal` > 45),'18',if(((`a`.`TotalStringVoltagefinal` > 44) and (`a`.`TotalStringVoltagefinal` <= 45)),'9',if(((`a`.`TotalStringVoltagefinal` >= 33) and (`a`.`TotalStringVoltagefinal` <= 44) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`TotalStringVoltagefinal` > 0) and (`a`.`TotalStringVoltagefinal` <= 33)),'9',if((`a`.`TotalStringVoltagefinal` <= 0),'18','')))))) + if(((`a`.`InputVoltagefinal` > 0) and (`a`.`OutputVoltagefinal` > 0) and (`a`.`OutputCurrentfinal` > 0) and (`a`.`TotalStringVoltagefinal` <> 0)),100,50)) + if((`b`.`tienebateria` = 'N'),0,100)) + if(((`a`.`TotalStringVoltagefinal` = 0) and (`a`.`resultadosnmp` = 'SNMPOK')),0,100)),0) + if((`a`.`EstadoInversor` = 1),0,if((`a`.`EstadoInversor` = 2),8,if((`a`.`EstadoInversor` = 0),9,if((`a`.`EstadoInversor` > 2),8,0))))) + if(((`a`.`temperature` >= -(30)) and (`a`.`temperature` <= 80)),'9',if(((`a`.`temperature` >= 81) and (`a`.`temperature` <= 120)),'5',if((`a`.`temperature` >= 121),'0','0')))) AS `puntaje`,`a`.`fechahora` AS `fechahora`,`a`.`resultadosnmp` AS `resultadosnmp`,`b`.`tienebateria` AS `tienebateria` from (`alertasx`.`fuentes_snmp` `a` left join `catalogos`.`db_fuentes` `b` on((replace(`a`.`macaddress`,'.','') = `b`.`mac`)))) */;

/*View structure for view ips_disponible_view */

/*!50001 DROP TABLE IF EXISTS `ips_disponible_view` */;
/*!50001 DROP VIEW IF EXISTS `ips_disponible_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `ips_disponible_view` AS (select `b`.`cmts` AS `cmtshfc`,`a`.`cmts` AS `cmts`,`a`.`scopesgroup` AS `scopesgroup`,sum(`a`.`total`) AS `total`,sum(`a`.`used`) AS `usado`,sum(`a`.`available`) AS `disponible` from (`catalogos`.`redesip_n` `a` left join `ccm1`.`cmts_ip` `b` on((`a`.`cmts` = `b`.`realname`))) where ((`a`.`scopesgroup` is not null) and (`b`.`cmts` is not null)) group by `a`.`cmts`,`a`.`scopesgroup` having (`disponible` <= 5)) */;

/*View structure for view masivas_count_view */

/*!50001 DROP TABLE IF EXISTS `masivas_count_view` */;
/*!50001 DROP VIEW IF EXISTS `masivas_count_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `masivas_count_view` AS (select `z`.`codnod` AS `nodo`,`z`.`nroplano` AS `troba`,count(0) AS `cant` from `dbpext`.`masivas_historicox` `z` where ((to_days(now()) - to_days(concat(substr(`z`.`fecreg`,7,4),'-',substr(`z`.`fecreg`,4,2),'-',substr(`z`.`fecreg`,1,2)))) <= 30) group by 1,2 order by 3 desc) */;

/*View structure for view ultimaGestion_alert_view */

/*!50001 DROP TABLE IF EXISTS `ultimaGestion_alert_view` */;
/*!50001 DROP VIEW IF EXISTS `ultimaGestion_alert_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `ultimaGestion_alert_view` AS (select `gestion_alert`.`nodo` AS `nodo`,`gestion_alert`.`troba` AS `troba`,max(`gestion_alert`.`fechahora`) AS `fechahora` from `gestion_alert` where ((to_days(now()) - to_days(`gestion_alert`.`fechahora`)) = 0) group by `gestion_alert`.`nodo`,`gestion_alert`.`troba`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
