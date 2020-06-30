/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - ccm1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1`;

/*Table structure for table `Status_cablemodems` */

DROP TABLE IF EXISTS `Status_cablemodems`;

CREATE TABLE `Status_cablemodems` (
  `cmts` varchar(20) DEFAULT NULL,
  `sinippublica` int(11) DEFAULT NULL,
  `bpi_wait` decimal(23,0) DEFAULT NULL,
  `cc_pending` decimal(23,0) DEFAULT NULL,
  `init_o` decimal(23,0) DEFAULT NULL,
  `init_i` decimal(23,0) DEFAULT NULL,
  `init_io` decimal(23,0) DEFAULT NULL,
  `init_dr` decimal(23,0) DEFAULT NULL,
  `init_d` decimal(23,0) DEFAULT NULL,
  `init_r` decimal(23,0) DEFAULT NULL,
  `init_r1` decimal(23,0) DEFAULT NULL,
  `init_r2` decimal(23,0) DEFAULT NULL,
  `init_rc` decimal(23,0) DEFAULT NULL,
  `init_t` decimal(23,0) DEFAULT NULL,
  `reject` decimal(23,0) DEFAULT NULL,
  `p_online` decimal(23,0) DEFAULT NULL,
  `w_expire_pt` decimal(23,0) DEFAULT NULL,
  `wonlineBpiSucc` decimal(23,0) DEFAULT NULL,
  `online_pt` decimal(23,0) DEFAULT NULL,
  `w_online_pt` decimal(23,0) DEFAULT NULL,
  `online_d` decimal(23,0) DEFAULT NULL,
  `online` decimal(23,0) DEFAULT NULL,
  `offline` decimal(23,0) DEFAULT NULL,
  `total` bigint(21) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv` */

DROP TABLE IF EXISTS `averias_catv`;

CREATE TABLE `averias_catv` (
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

/*Table structure for table `averias_catv_new` */

DROP TABLE IF EXISTS `averias_catv_new`;

CREATE TABLE `averias_catv_new` (
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

/*Table structure for table `averias_catv_new_c` */

DROP TABLE IF EXISTS `averias_catv_new_c`;

CREATE TABLE `averias_catv_new_c` (
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

/*Table structure for table `averias_m1` */

DROP TABLE IF EXISTS `averias_m1`;

CREATE TABLE `averias_m1` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex5` (`codreq`,`codcli`),
  KEY `NewIndex1` (`codcli`),
  KEY `NewIndex2` (`codnod`),
  KEY `NewIndex3` (`nroplano`),
  KEY `NewIndex4` (`codreq`),
  KEY `idxestado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_m1_new` */

DROP TABLE IF EXISTS `averias_m1_new`;

CREATE TABLE `averias_m1_new` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `tipodeingreso` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codreq`),
  KEY `NewIndex2` (`tipodeliquidacion`),
  KEY `NewIndex3` (`tipodeingreso`),
  KEY `NewIndex4` (`tipodeliquidacion`),
  KEY `NewIndex5` (`codnod`,`nroplano`),
  KEY `dia_mov` (`dia_mov`),
  KEY `codcli` (`codcli`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_m1_new_c` */

DROP TABLE IF EXISTS `averias_m1_new_c`;

CREATE TABLE `averias_m1_new_c` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `tipodeingreso` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codreq`),
  KEY `NewIndex2` (`tipodeliquidacion`),
  KEY `NewIndex3` (`tipodeingreso`),
  KEY `NewIndex4` (`tipodeliquidacion`),
  KEY `NewIndex5` (`codnod`,`nroplano`),
  KEY `codcli` (`codcli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cantroba` */

DROP TABLE IF EXISTS `cantroba`;

CREATE TABLE `cantroba` (
  `nodo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`clave`),
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cantroba_amplif` */

DROP TABLE IF EXISTS `cantroba_amplif`;

CREATE TABLE `cantroba_amplif` (
  `nodo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amplificador` varchar(20) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`clave`),
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip` */

DROP TABLE IF EXISTS `cmts_ip`;

CREATE TABLE `cmts_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `comunidad` varchar(30) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL,
  `tacacs` varchar(1) DEFAULT NULL,
  `grupo` varchar(1) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `realname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `flag` (`flag`),
  KEY `grupo` (`grupo`),
  KEY `id` (`id`),
  KEY `realname` (`realname`),
  KEY `marca` (`marca`)
) ENGINE=MyISAM AUTO_INCREMENT=482 DEFAULT CHARSET=latin1;

/*Table structure for table `historico_activaciones` */

DROP TABLE IF EXISTS `historico_activaciones`;

CREATE TABLE `historico_activaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idcliente` int(20) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `idusuario` (`idusuario`),
  KEY `idcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11158 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `historico_grafi_averias_jefatura` */

DROP TABLE IF EXISTS `historico_grafi_averias_jefatura`;

CREATE TABLE `historico_grafi_averias_jefatura` (
  `desdia` varchar(25) DEFAULT NULL,
  `hora` varchar(25) DEFAULT NULL,
  `hoy` varchar(25) DEFAULT NULL,
  `ayer` varchar(25) DEFAULT NULL,
  `antes` varchar(25) DEFAULT NULL,
  `llamadas` varchar(25) DEFAULT NULL,
  `liq` varchar(25) DEFAULT NULL,
  `diaayer` varchar(25) DEFAULT NULL,
  `arbol` varchar(25) DEFAULT NULL,
  `arboltot` varchar(25) DEFAULT NULL,
  `fechaReporte` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `historico_probl_ips` */

DROP TABLE IF EXISTS `historico_probl_ips`;

CREATE TABLE `historico_probl_ips` (
  `cmts` varchar(30) DEFAULT NULL,
  `scopesgroup` varchar(20) DEFAULT NULL,
  `total` decimal(32,0) DEFAULT NULL,
  `used` decimal(32,0) DEFAULT NULL,
  `available` decimal(32,0) DEFAULT NULL,
  `porc` decimal(39,4) DEFAULT NULL,
  `color` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`scopesgroup`,`fecha_hora`(13)),
  KEY `cmts` (`cmts`),
  KEY `scopesgroup` (`scopesgroup`),
  KEY `fecha_hora` (`fecha_hora`(13))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `historico_refresh` */

DROP TABLE IF EXISTS `historico_refresh`;

CREATE TABLE `historico_refresh` (
  `codcli` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `numser` varchar(50) DEFAULT NULL,
  `codmat` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `codcli` (`codcli`),
  KEY `codsrv` (`codsrv`),
  KEY `numser` (`numser`),
  KEY `codmat` (`codmat`),
  KEY `usuario` (`usuario`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `historico_velocidades` */

DROP TABLE IF EXISTS `historico_velocidades`;

CREATE TABLE `historico_velocidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `macaddress` varchar(20) DEFAULT NULL,
  `servicepackagecrmid` varchar(100) DEFAULT NULL,
  `servicepackage` varchar(100) DEFAULT NULL,
  `idusuario` int(16) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `idclientecrm` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `macaddress` (`macaddress`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `servicepackagecrmid` (`servicepackagecrmid`),
  KEY `servicepackage` (`servicepackage`),
  KEY `idusuario` (`idusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=144940 DEFAULT CHARSET=latin1;

/*Table structure for table `level_troba_hist` */

DROP TABLE IF EXISTS `level_troba_hist`;

CREATE TABLE `level_troba_hist` (
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
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `level_troba_hist_final` */

DROP TABLE IF EXISTS `level_troba_hist_final`;

CREATE TABLE `level_troba_hist_final` (
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
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `partial_service` */

DROP TABLE IF EXISTS `partial_service`;

CREATE TABLE `partial_service` (
  `macaddress` varchar(20) NOT NULL DEFAULT '',
  `interface` varchar(20) DEFAULT NULL,
  `bonding` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `sw` varchar(1) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `cmts` (`cmts`),
  KEY `bonding` (`bonding`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `partial_service_final` */

DROP TABLE IF EXISTS `partial_service_final`;

CREATE TABLE `partial_service_final` (
  `macaddress` varchar(20) NOT NULL DEFAULT '',
  `interface` varchar(20) DEFAULT NULL,
  `bonding` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `sw` varchar(1) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `cmts` (`cmts`),
  KEY `bonding` (`bonding`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `permisosArbol` */

DROP TABLE IF EXISTS `permisosArbol`;

CREATE TABLE `permisosArbol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `detalle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `scm_phy_f` */

DROP TABLE IF EXISTS `scm_phy_f`;

CREATE TABLE `scm_phy_f` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `Sid` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `Timing_Offset` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `Mode_` varchar(20) DEFAULT NULL,
  `DOCSIS_Prov` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`Interface`),
  KEY `NewIndex3` (`Sid`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_hist` */

DROP TABLE IF EXISTS `scm_phy_hist`;

CREATE TABLE `scm_phy_hist` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  `puerto` varchar(50) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex7` (`fecha_hora`),
  KEY `puerto` (`puerto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_hist_backup` */

DROP TABLE IF EXISTS `scm_phy_hist_backup`;

CREATE TABLE `scm_phy_hist_backup` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex2` (`powerup_prom`),
  KEY `NewIndex4` (`powerds_prom`),
  KEY `NewIndex5` (`snr_avg`),
  KEY `NewIndex6` (`snr_down`),
  KEY `NewIndex7` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_hist_d` */

DROP TABLE IF EXISTS `scm_phy_hist_d`;

CREATE TABLE `scm_phy_hist_d` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex7` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_hist_final` */

DROP TABLE IF EXISTS `scm_phy_hist_final`;

CREATE TABLE `scm_phy_hist_final` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  `puerto` varchar(50) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex7` (`fecha_hora`),
  KEY `puerto` (`puerto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_hist_final_d` */

DROP TABLE IF EXISTS `scm_phy_hist_final_d`;

CREATE TABLE `scm_phy_hist_final_d` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex7` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_r` */

DROP TABLE IF EXISTS `scm_phy_r`;

CREATE TABLE `scm_phy_r` (
  `MACAddress` varchar(14) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `Sid` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `Timing_Offset` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `Mode_` varchar(20) DEFAULT NULL,
  `DOCSIS_Prov` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`Interface`),
  KEY `NewIndex3` (`Sid`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_t` */

DROP TABLE IF EXISTS `scm_phy_t`;

CREATE TABLE `scm_phy_t` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `Sid` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `Timing_Offset` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `Mode_` varchar(20) DEFAULT NULL,
  `DOCSIS_Prov` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`Interface`),
  KEY `NewIndex3` (`Sid`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum` */

DROP TABLE IF EXISTS `scm_sum`;

CREATE TABLE `scm_sum` (
  `interface` varchar(9) DEFAULT NULL,
  `cm_tot` int(11) DEFAULT NULL,
  `cm_reg` int(11) DEFAULT NULL,
  `cm_oper` int(11) DEFAULT NULL,
  `cm_unreg` int(11) DEFAULT NULL,
  `cm_offline` int(11) DEFAULT NULL,
  `widband` int(11) DEFAULT NULL,
  `inicrc` int(11) DEFAULT NULL,
  `initd` int(11) DEFAULT NULL,
  `initio` int(11) DEFAULT NULL,
  `init0` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(10) DEFAULT NULL,
  `Interface6` varchar(10) DEFAULT NULL,
  KEY `idxInterface` (`interface`),
  KEY `idxCmts` (`cmts`),
  KEY `idxDescrip` (`description`),
  KEY `idxInterface6` (`Interface6`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta` */

DROP TABLE IF EXISTS `scm_sum_alerta`;

CREATE TABLE `scm_sum_alerta` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(9) DEFAULT NULL,
  `cm_tot` int(11) DEFAULT NULL,
  `cm_reg` int(11) DEFAULT NULL,
  `cm_oper` int(11) DEFAULT NULL,
  `cm_unreg` int(11) DEFAULT NULL,
  `cm_offline` int(11) DEFAULT NULL,
  `widband` int(11) DEFAULT NULL,
  `inicrc` int(11) DEFAULT NULL,
  `initd` int(11) DEFAULT NULL,
  `initio` int(11) DEFAULT NULL,
  `init0` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(10) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  KEY `interface` (`interface`),
  KEY `cmts` (`cmts`,`interface`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `fecha_hora_f` (`fecha_hora_f`),
  KEY `cmts_2` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta_c` */

DROP TABLE IF EXISTS `scm_sum_alerta_c`;

CREATE TABLE `scm_sum_alerta_c` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(12) DEFAULT NULL,
  `cm_tot` int(11) DEFAULT NULL,
  `cm_reg` int(11) DEFAULT NULL,
  `cm_oper` int(11) DEFAULT NULL,
  `cm_unreg` int(11) DEFAULT NULL,
  `cm_offline` int(11) DEFAULT NULL,
  `widband` int(11) DEFAULT NULL,
  `inicrc` int(11) DEFAULT NULL,
  `initd` int(11) DEFAULT NULL,
  `initio` int(11) DEFAULT NULL,
  `init0` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(10) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  KEY `interface` (`interface`),
  KEY `cmts` (`cmts`,`interface`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `fecha_hora_f` (`fecha_hora_f`),
  KEY `cmts_2` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta_temp` */

DROP TABLE IF EXISTS `scm_sum_alerta_temp`;

CREATE TABLE `scm_sum_alerta_temp` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(9) DEFAULT NULL,
  `cm_tot` int(11) DEFAULT NULL,
  `cm_reg` int(11) DEFAULT NULL,
  `cm_oper` int(11) DEFAULT NULL,
  `cm_unreg` int(11) DEFAULT NULL,
  `cm_offline` int(11) DEFAULT NULL,
  `widband` int(11) DEFAULT NULL,
  `inicrc` int(11) DEFAULT NULL,
  `initd` int(11) DEFAULT NULL,
  `initio` int(11) DEFAULT NULL,
  `init0` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(10) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  KEY `interface` (`interface`),
  KEY `cmts` (`cmts`,`interface`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `fecha_hora_f` (`fecha_hora_f`),
  KEY `cmts_2` (`cmts`)
) ENGINE=Aria DEFAULT CHARSET=latin1 PAGE_CHECKSUM=1;

/*Table structure for table `scm_sum_final` */

DROP TABLE IF EXISTS `scm_sum_final`;

CREATE TABLE `scm_sum_final` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `sincroniz` decimal(23,0) DEFAULT NULL,
  `cm_offline` decimal(23,0) DEFAULT NULL,
  `total` decimal(24,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_final_c` */

DROP TABLE IF EXISTS `scm_sum_final_c`;

CREATE TABLE `scm_sum_final_c` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `sincroniz` decimal(23,0) DEFAULT NULL,
  `cm_offline` decimal(23,0) DEFAULT NULL,
  `total` decimal(24,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total` */

DROP TABLE IF EXISTS `scm_total`;

CREATE TABLE `scm_total` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

/*Table structure for table `scm_total_f` */

DROP TABLE IF EXISTS `scm_total_f`;

CREATE TABLE `scm_total_f` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

/*Table structure for table `scm_total_r` */

DROP TABLE IF EXISTS `scm_total_r`;

CREATE TABLE `scm_total_r` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

/*Table structure for table `session_time` */

DROP TABLE IF EXISTS `session_time`;

CREATE TABLE `session_time` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tiempo` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

/*Table structure for table `umbral` */

DROP TABLE IF EXISTS `umbral`;

CREATE TABLE `umbral` (
  `reg` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`reg`),
  KEY `NewIndex2` (`umbral`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `user_modulos` */

DROP TABLE IF EXISTS `user_modulos`;

CREATE TABLE `user_modulos` (
  `idmodulo` int(11) NOT NULL AUTO_INCREMENT,
  `enlace` varchar(200) DEFAULT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `carpeta` varchar(50) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CALLx` int(1) DEFAULT NULL,
  `CCM1` int(1) DEFAULT NULL,
  `CGM1` int(1) DEFAULT NULL,
  `INGENIERIA` int(1) DEFAULT NULL,
  `PEXT` int(1) DEFAULT NULL,
  `CORE` int(1) DEFAULT NULL,
  `CRITICOS` int(1) DEFAULT NULL,
  `EECC` int(1) DEFAULT NULL,
  `CDC` int(1) DEFAULT NULL,
  `EXTRA` int(1) DEFAULT NULL,
  `PINT` int(1) DEFAULT NULL,
  `COM` int(1) DEFAULT NULL,
  `CALL101` int(1) DEFAULT NULL,
  `NOC` int(1) DEFAULT NULL,
  `NOCEXT` int(1) DEFAULT NULL,
  `SEGU` int(1) DEFAULT NULL,
  `ATTDIF` int(1) DEFAULT NULL,
  `SUPERVISOREC` int(1) DEFAULT NULL,
  `TRASU` int(1) DEFAULT NULL,
  `SEGURIDAD` int(1) DEFAULT NULL,
  `CALLBACK` int(1) DEFAULT NULL,
  `ENERGIA` int(1) DEFAULT NULL,
  UNIQUE KEY `idmodulo` (`idmodulo`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

/*Table structure for table `user_modulos_back` */

DROP TABLE IF EXISTS `user_modulos_back`;

CREATE TABLE `user_modulos_back` (
  `idmodulo` int(11) NOT NULL AUTO_INCREMENT,
  `enlace` varchar(200) DEFAULT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `carpeta` varchar(50) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `CALLx` int(1) DEFAULT NULL,
  `CCM1` int(1) DEFAULT NULL,
  `CGM1` int(1) DEFAULT NULL,
  `INGENIERIA` int(1) DEFAULT NULL,
  `PEXT` int(1) DEFAULT NULL,
  `CORE` int(1) DEFAULT NULL,
  `CRITICOS` int(1) DEFAULT NULL,
  `EECC` int(1) DEFAULT NULL,
  `CDC` int(1) DEFAULT NULL,
  `EXTRA` int(1) DEFAULT NULL,
  `PINT` int(1) DEFAULT NULL,
  UNIQUE KEY `idmodulo` (`idmodulo`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Table structure for table `usuario_permiso_arbol` */

DROP TABLE IF EXISTS `usuario_permiso_arbol`;

CREATE TABLE `usuario_permiso_arbol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_permiso_arbol` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idusuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `refresh` varchar(1) DEFAULT NULL,
  `scopes` varchar(1) DEFAULT NULL,
  `veloc_activa` varchar(1) DEFAULT NULL,
  `aperturatrab` varchar(1) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `fechainic` varchar(20) DEFAULT NULL,
  `cambio` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(9) DEFAULT NULL,
  `anuncios` char(2) DEFAULT NULL,
  `idPromotor` int(11) DEFAULT '0',
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `NewIndex1` (`usuario`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `NewIndex2` (`empresa`),
  KEY `NewIndex3` (`area`),
  KEY `idPromotor` (`idPromotor`)
) ENGINE=MyISAM AUTO_INCREMENT=4266408 DEFAULT CHARSET=latin1;

/*Table structure for table `usuariosAdministradores` */

DROP TABLE IF EXISTS `usuariosAdministradores`;

CREATE TABLE `usuariosAdministradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuario` (`idusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `usuarios_accesos` */

DROP TABLE IF EXISTS `usuarios_accesos`;

CREATE TABLE `usuarios_accesos` (
  `idusuario` int(11) NOT NULL,
  `idmodulo` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`,`idmodulo`),
  KEY `idmodulo` (`idmodulo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_accesos_back` */

DROP TABLE IF EXISTS `usuarios_accesos_back`;

CREATE TABLE `usuarios_accesos_back` (
  `idusuario` int(11) NOT NULL,
  `idmodulo` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`,`idmodulo`),
  KEY `idmodulo` (`idmodulo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_arbol` */

DROP TABLE IF EXISTS `usuarios_arbol`;

CREATE TABLE `usuarios_arbol` (
  `idarbol` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idarbol`),
  UNIQUE KEY `idusuario` (`idusuario`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `usuarios_area_obje_multiconsulta` */

DROP TABLE IF EXISTS `usuarios_area_obje_multiconsulta`;

CREATE TABLE `usuarios_area_obje_multiconsulta` (
  `area` varchar(20) NOT NULL,
  `objeto` int(11) NOT NULL,
  PRIMARY KEY (`area`,`objeto`),
  KEY `area` (`area`),
  KEY `objeto` (`objeto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_areas` */

DROP TABLE IF EXISTS `usuarios_areas`;

CREATE TABLE `usuarios_areas` (
  `area` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_backup` */

DROP TABLE IF EXISTS `usuarios_backup`;

CREATE TABLE `usuarios_backup` (
  `idusuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `refresh` varchar(1) DEFAULT NULL,
  `scopes` varchar(1) DEFAULT NULL,
  `veloc_activa` varchar(1) DEFAULT NULL,
  `aperturatrab` varchar(1) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `fechainic` varchar(20) DEFAULT NULL,
  `cambio` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `celular` varchar(9) DEFAULT NULL,
  `anuncios` char(2) DEFAULT NULL,
  `idPromotor` int(11) DEFAULT '0',
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `NewIndex1` (`usuario`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `NewIndex2` (`empresa`),
  KEY `NewIndex3` (`area`),
  KEY `idPromotor` (`idPromotor`)
) ENGINE=MyISAM AUTO_INCREMENT=4266211 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_cambios_password` */

DROP TABLE IF EXISTS `usuarios_cambios_password`;

CREATE TABLE `usuarios_cambios_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `historial` varchar(250) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10951 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `usuarios_empresas` */

DROP TABLE IF EXISTS `usuarios_empresas`;

CREATE TABLE `usuarios_empresas` (
  `empresa` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_intentos_errados` */

DROP TABLE IF EXISTS `usuarios_intentos_errados`;

CREATE TABLE `usuarios_intentos_errados` (
  `usuario` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `fecha_hora` (`fecha_hora`),
  KEY `usuario` (`usuario`),
  KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_objetos_multiconsulta` */

DROP TABLE IF EXISTS `usuarios_objetos_multiconsulta`;

CREATE TABLE `usuarios_objetos_multiconsulta` (
  `idobjeto` int(11) DEFAULT NULL,
  `objeto` varchar(20) DEFAULT NULL,
  `desobjeto` varchar(30) DEFAULT NULL,
  `imagen` varchar(30) DEFAULT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  UNIQUE KEY `idobjeto` (`idobjeto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_perfiles` */

DROP TABLE IF EXISTS `usuarios_perfiles`;

CREATE TABLE `usuarios_perfiles` (
  `idperfil` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(20) DEFAULT NULL,
  `mostrar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idperfil`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_sesion` */

DROP TABLE IF EXISTS `usuarios_sesion`;

CREATE TABLE `usuarios_sesion` (
  `idsesion` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `sesion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `idsesion` (`idsesion`),
  UNIQUE KEY `idx_sesion` (`sesion`)
) ENGINE=MyISAM AUTO_INCREMENT=4814417 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_sesion_logs` */

DROP TABLE IF EXISTS `usuarios_sesion_logs`;

CREATE TABLE `usuarios_sesion_logs` (
  `idsesion` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `sesion` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `fechamov` datetime DEFAULT NULL,
  PRIMARY KEY (`idsesion`),
  KEY `idxidusuario` (`idusuario`),
  KEY `fechamov` (`fechamov`)
) ENGINE=MyISAM AUTO_INCREMENT=509884 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_zonales` */

DROP TABLE IF EXISTS `usuarios_zonales`;

CREATE TABLE `usuarios_zonales` (
  `idusuario_zonal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL,
  `zonal` varchar(4) NOT NULL,
  `activo` smallint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusuario_zonal`),
  UNIQUE KEY `idxunico` (`idusuario`,`zonal`),
  KEY `idxzonal` (`zonal`)
) ENGINE=MyISAM AUTO_INCREMENT=50824 DEFAULT CHARSET=latin1;

/*Table structure for table `zonales_nodos_eecc` */

DROP TABLE IF EXISTS `zonales_nodos_eecc`;

CREATE TABLE `zonales_nodos_eecc` (
  `nodo` varchar(2) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `jefatura` varchar(3) DEFAULT NULL,
  `eecc` varchar(30) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `serviciosbasico` varchar(50) DEFAULT NULL,
  `servicioseconomico` varchar(50) DEFAULT NULL,
  `nodotroba` varchar(20) DEFAULT NULL,
  `totaldeservicios` int(11) DEFAULT NULL,
  `amplificadores` int(11) DEFAULT NULL,
  `taps` int(11) DEFAULT NULL,
  `sede` varchar(10) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `jefatura` (`jefatura`),
  KEY `sede` (`sede`),
  KEY `zonal` (`zonal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_depura_usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_depura_usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_depura_usuarios`()
BEGIN
	DELETE FROM `usuarios_accesos` 
	WHERE idusuario NOT IN (SELECT idusuario FROM ccm1.`usuarios` WHERE estado ='A');
	DELETE FROM `usuarios` WHERE estado='I' AND DATEDIFF(NOW(),cambio)>90;
	delete from usuarios where idusuario not in (1,4254451,4,5,4266398,27) and area='EXTRA';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_scm_sum_final` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_scm_sum_final` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `SP_scm_sum_final`()
BEGIN
    TRUNCATE TABLE ccm1.scm_sum_final_c ;
	INSERT IGNORE ccm1.scm_sum_final_c
	SELECT cmts,interface,description,sincroniz,offline AS cm_offline, total FROM ccm1.resumen_cm_view_cisco GROUP BY 1,2;
	
	INSERT IGNORE ccm1.scm_sum_final_c
	SELECT cmts,interface,description,sincroniz,offline AS cm_offline, total FROM ccm1.resumen_cm_view_casa GROUP BY 1,2;
	INSERT IGNORE ccm1.scm_sum_final_c
	SELECT  cmts,interface,description,sincroniz,cm_offline, total 	FROM ccm1.resumen_cm_view_huawei GROUP BY 1,2;
	
	rename table ccm1.scm_sum_final to ccm1.scm_sum_final_d,ccm1.scm_sum_final_c to ccm1.scm_sum_final,ccm1.scm_sum_final_d to ccm1.scm_sum_final_c;
    END */$$
DELIMITER ;

/*Table structure for table `casa_interface_view` */

DROP TABLE IF EXISTS `casa_interface_view`;

/*!50001 DROP VIEW IF EXISTS `casa_interface_view` */;
/*!50001 DROP TABLE IF EXISTS `casa_interface_view` */;

/*!50001 CREATE TABLE  `casa_interface_view`(
 `cmts` varchar(20) ,
 `Interface` varchar(20) ,
 `sincroniz` bigint(21) 
)*/;

/*Table structure for table `casa_interface_view_offline` */

DROP TABLE IF EXISTS `casa_interface_view_offline`;

/*!50001 DROP VIEW IF EXISTS `casa_interface_view_offline` */;
/*!50001 DROP TABLE IF EXISTS `casa_interface_view_offline` */;

/*!50001 CREATE TABLE  `casa_interface_view_offline`(
 `cmts` varchar(20) ,
 `Interface` varchar(20) ,
 `offline` bigint(21) 
)*/;

/*Table structure for table `cisco_interface_view` */

DROP TABLE IF EXISTS `cisco_interface_view`;

/*!50001 DROP VIEW IF EXISTS `cisco_interface_view` */;
/*!50001 DROP TABLE IF EXISTS `cisco_interface_view` */;

/*!50001 CREATE TABLE  `cisco_interface_view`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `sincroniz` bigint(21) 
)*/;

/*Table structure for table `cisco_interface_view_offline` */

DROP TABLE IF EXISTS `cisco_interface_view_offline`;

/*!50001 DROP VIEW IF EXISTS `cisco_interface_view_offline` */;
/*!50001 DROP TABLE IF EXISTS `cisco_interface_view_offline` */;

/*!50001 CREATE TABLE  `cisco_interface_view_offline`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `offline` bigint(21) 
)*/;

/*Table structure for table `listafuentes_view` */

DROP TABLE IF EXISTS `listafuentes_view`;

/*!50001 DROP VIEW IF EXISTS `listafuentes_view` */;
/*!50001 DROP TABLE IF EXISTS `listafuentes_view` */;

/*!50001 CREATE TABLE  `listafuentes_view`(
 `macaddress` varchar(20) ,
 `InputVoltage` varchar(86) ,
 `OutputVoltage` varchar(86) ,
 `OutputCurrent` varchar(87) ,
 `TotalStringVoltage` varchar(86) 
)*/;

/*Table structure for table `microzonas_view` */

DROP TABLE IF EXISTS `microzonas_view`;

/*!50001 DROP VIEW IF EXISTS `microzonas_view` */;
/*!50001 DROP TABLE IF EXISTS `microzonas_view` */;

/*!50001 CREATE TABLE  `microzonas_view`(
 `jefatura` varchar(20) ,
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `partial_service_total_view` */

DROP TABLE IF EXISTS `partial_service_total_view`;

/*!50001 DROP VIEW IF EXISTS `partial_service_total_view` */;
/*!50001 DROP TABLE IF EXISTS `partial_service_total_view` */;

/*!50001 CREATE TABLE  `partial_service_total_view`(
 `cmts` varchar(5) ,
 `B1x1` decimal(23,0) ,
 `B1x2` decimal(23,0) ,
 `B1x3` decimal(23,0) ,
 `B1x4` decimal(23,0) ,
 `B1x5` decimal(23,0) ,
 `B1x6` decimal(23,0) ,
 `B1x7` decimal(23,0) ,
 `B1x8` decimal(23,0) ,
 `B2x1` decimal(23,0) ,
 `B2x2` decimal(23,0) ,
 `B2x3` decimal(23,0) ,
 `B2x4` decimal(23,0) ,
 `B2x5` decimal(23,0) ,
 `B2x6` decimal(23,0) ,
 `B2x7` decimal(23,0) ,
 `B3x1` decimal(23,0) ,
 `B3x2` decimal(23,0) ,
 `B4x1` decimal(23,0) ,
 `B4x2` decimal(23,0) ,
 `B5x1` decimal(23,0) ,
 `B5x2` decimal(23,0) ,
 `B6x1` decimal(23,0) ,
 `B6x2` decimal(23,0) ,
 `B7x1` decimal(23,0) ,
 `B8x1` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `partial_service_view` */

DROP TABLE IF EXISTS `partial_service_view`;

/*!50001 DROP VIEW IF EXISTS `partial_service_view` */;
/*!50001 DROP TABLE IF EXISTS `partial_service_view` */;

/*!50001 CREATE TABLE  `partial_service_view`(
 `cmts` varchar(20) ,
 `B1x1` decimal(23,0) ,
 `B1x2` decimal(23,0) ,
 `B1x3` decimal(23,0) ,
 `B1x4` decimal(23,0) ,
 `B1x5` decimal(23,0) ,
 `B1x6` decimal(23,0) ,
 `B1x7` decimal(23,0) ,
 `B1x8` decimal(23,0) ,
 `B2x1` decimal(23,0) ,
 `B2x2` decimal(23,0) ,
 `B2x3` decimal(23,0) ,
 `B2x4` decimal(23,0) ,
 `B2x5` decimal(23,0) ,
 `B2x6` decimal(23,0) ,
 `B2x7` decimal(23,0) ,
 `B3x1` decimal(23,0) ,
 `B3x2` decimal(23,0) ,
 `B4x1` decimal(23,0) ,
 `B4x2` decimal(23,0) ,
 `B5x1` decimal(23,0) ,
 `B5x2` decimal(23,0) ,
 `B6x1` decimal(23,0) ,
 `B6x2` decimal(23,0) ,
 `B7x1` decimal(23,0) ,
 `B8x1` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `resumen_cm_view_casa` */

DROP TABLE IF EXISTS `resumen_cm_view_casa`;

/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_casa` */;
/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_casa` */;

/*!50001 CREATE TABLE  `resumen_cm_view_casa`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `description` varchar(100) ,
 `sincroniz` bigint(21) ,
 `offline` bigint(21) ,
 `total` bigint(22) 
)*/;

/*Table structure for table `resumen_cm_view_cisco` */

DROP TABLE IF EXISTS `resumen_cm_view_cisco`;

/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_cisco` */;
/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_cisco` */;

/*!50001 CREATE TABLE  `resumen_cm_view_cisco`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `description` varchar(100) ,
 `sincroniz` bigint(21) ,
 `offline` bigint(21) ,
 `total` bigint(22) 
)*/;

/*Table structure for table `resumen_cm_view_huawei` */

DROP TABLE IF EXISTS `resumen_cm_view_huawei`;

/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_huawei` */;
/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_huawei` */;

/*!50001 CREATE TABLE  `resumen_cm_view_huawei`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `description` varchar(100) ,
 `sincroniz` decimal(23,0) ,
 `cm_offline` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `v_averias_x_nodo_troba_by_codreq` */

DROP TABLE IF EXISTS `v_averias_x_nodo_troba_by_codreq`;

/*!50001 DROP VIEW IF EXISTS `v_averias_x_nodo_troba_by_codreq` */;
/*!50001 DROP TABLE IF EXISTS `v_averias_x_nodo_troba_by_codreq` */;

/*!50001 CREATE TABLE  `v_averias_x_nodo_troba_by_codreq`(
 `codnod` varchar(2) ,
 `nroplano` varchar(4) ,
 `dia_mov` varchar(20) ,
 `fec_mov` varchar(20) ,
 `tipreqini` varchar(2) 
)*/;

/*View structure for view casa_interface_view */

/*!50001 DROP TABLE IF EXISTS `casa_interface_view` */;
/*!50001 DROP VIEW IF EXISTS `casa_interface_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `casa_interface_view` AS (select `a`.`cmts` AS `cmts`,replace(replace(`a`.`Interface`,'*',''),'#','') AS `Interface`,count(0) AS `sincroniz` from (`scm_total` `a` join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((`a`.`MACState` in ('online','online(d)','online(pt)','online-d','online-pt','p-online','w-online','w-online(pt)','wonline')) and (`b`.`marca` = 'CASA')) group by `a`.`cmts`,replace(replace(`a`.`Interface`,'*',''),'#','')) */;

/*View structure for view casa_interface_view_offline */

/*!50001 DROP TABLE IF EXISTS `casa_interface_view_offline` */;
/*!50001 DROP VIEW IF EXISTS `casa_interface_view_offline` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `casa_interface_view_offline` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `Interface`,count(0) AS `offline` from (`scm_total` `a` join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((`a`.`MACState` = 'offline') and (`b`.`marca` = 'CASA')) group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view cisco_interface_view */

/*!50001 DROP TABLE IF EXISTS `cisco_interface_view` */;
/*!50001 DROP VIEW IF EXISTS `cisco_interface_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `cisco_interface_view` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,count(0) AS `sincroniz` from (`scm_phy_t` `a` join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where (`b`.`marca` = 'CISCO') group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view cisco_interface_view_offline */

/*!50001 DROP TABLE IF EXISTS `cisco_interface_view_offline` */;
/*!50001 DROP VIEW IF EXISTS `cisco_interface_view_offline` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `cisco_interface_view_offline` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,count(0) AS `offline` from (`scm_total` `a` join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((`a`.`MACState` = 'offline') and (`b`.`marca` = 'CISCO')) group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view listafuentes_view */

/*!50001 DROP TABLE IF EXISTS `listafuentes_view` */;
/*!50001 DROP VIEW IF EXISTS `listafuentes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `listafuentes_view` AS (select `alertasx`.`fuentes_snmp`.`macaddress` AS `macaddress`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.2.1.23.1 -r 1') AS `InputVoltage`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.2.1.22.1 -r 1') AS `OutputVoltage`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.5.1.3.1.1 -r 1') AS `OutputCurrent`,concat('snmpget -v2c -c MODEM8K_PILOTO ',`alertasx`.`fuentes_snmp`.`ipaddress`,' 1.3.6.1.4.1.5591.1.4.2.1.28.1 -r 1') AS `TotalStringVoltage` from `alertasx`.`fuentes_snmp`) */;

/*View structure for view microzonas_view */

/*!50001 DROP TABLE IF EXISTS `microzonas_view` */;
/*!50001 DROP VIEW IF EXISTS `microzonas_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `microzonas_view` AS (select `mz`.`microzona` AS `jefatura`,`d`.`NODO` AS `nodo`,`d`.`TROBA` AS `troba`,count(0) AS `cant` from ((((`multiconsulta`.`multi_consultas` `a` join `multiconsulta`.`nclientes` `d` on((`a`.`dato` = `d`.`IDCLIENTECRM`))) left join `ccm1`.`scm_total` `e` on((`d`.`mac2` = `e`.`MACAddress`))) left join `ccm1`.`scm_phy_t` `f` on((`d`.`mac2` = `f`.`MACAddress`))) join `catalogos`.`microzonas` `mz` on(((`d`.`NODO` = `mz`.`nodo`) and (`d`.`TROBA` = `mz`.`troba`)))) where (((to_days(now()) - to_days(`a`.`fechahora`)) = 0) and (`mz`.`flag` = 1)) group by `mz`.`microzona`,`d`.`NODO`,`d`.`TROBA`) */;

/*View structure for view partial_service_total_view */

/*!50001 DROP TABLE IF EXISTS `partial_service_total_view` */;
/*!50001 DROP VIEW IF EXISTS `partial_service_total_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `partial_service_total_view` AS (select 'TOTAL' AS `cmts`,sum(if((`ps`.`bonding` = '1x1'),1,0)) AS `B1x1`,sum(if((`ps`.`bonding` = '1x2'),1,0)) AS `B1x2`,sum(if((`ps`.`bonding` = '1x3'),1,0)) AS `B1x3`,sum(if((`ps`.`bonding` = '1x4'),1,0)) AS `B1x4`,sum(if((`ps`.`bonding` = '1x5'),1,0)) AS `B1x5`,sum(if((`ps`.`bonding` = '1x6'),1,0)) AS `B1x6`,sum(if((`ps`.`bonding` = '1x7'),1,0)) AS `B1x7`,sum(if((`ps`.`bonding` = '1x8'),1,0)) AS `B1x8`,sum(if((`ps`.`bonding` = '2x1'),1,0)) AS `B2x1`,sum(if((`ps`.`bonding` = '2x2'),1,0)) AS `B2x2`,sum(if((`ps`.`bonding` = '2x3'),1,0)) AS `B2x3`,sum(if((`ps`.`bonding` = '2x4'),1,0)) AS `B2x4`,sum(if((`ps`.`bonding` = '2x5'),1,0)) AS `B2x5`,sum(if((`ps`.`bonding` = '2x6'),1,0)) AS `B2x6`,sum(if((`ps`.`bonding` = '2x7'),1,0)) AS `B2x7`,sum(if((`ps`.`bonding` = '3x1'),1,0)) AS `B3x1`,sum(if((`ps`.`bonding` = '3x2'),1,0)) AS `B3x2`,sum(if((`ps`.`bonding` = '4x1'),1,0)) AS `B4x1`,sum(if((`ps`.`bonding` = '4x2'),1,0)) AS `B4x2`,sum(if((`ps`.`bonding` = '5x1'),1,0)) AS `B5x1`,sum(if((`ps`.`bonding` = '5x2'),1,0)) AS `B5x2`,sum(if((`ps`.`bonding` = '6x1'),1,0)) AS `B6x1`,sum(if((`ps`.`bonding` = '6x2'),1,0)) AS `B6x2`,sum(if((`ps`.`bonding` = '7x1'),1,0)) AS `B7x1`,sum(if((`ps`.`bonding` = '8x1'),1,0)) AS `B8x1`,count(0) AS `total` from `partial_service_final` `ps`) */;

/*View structure for view partial_service_view */

/*!50001 DROP TABLE IF EXISTS `partial_service_view` */;
/*!50001 DROP VIEW IF EXISTS `partial_service_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `partial_service_view` AS (select `ps`.`cmts` AS `cmts`,sum(if((`ps`.`bonding` = '1x1'),1,0)) AS `B1x1`,sum(if((`ps`.`bonding` = '1x2'),1,0)) AS `B1x2`,sum(if((`ps`.`bonding` = '1x3'),1,0)) AS `B1x3`,sum(if((`ps`.`bonding` = '1x4'),1,0)) AS `B1x4`,sum(if((`ps`.`bonding` = '1x5'),1,0)) AS `B1x5`,sum(if((`ps`.`bonding` = '1x6'),1,0)) AS `B1x6`,sum(if((`ps`.`bonding` = '1x7'),1,0)) AS `B1x7`,sum(if((`ps`.`bonding` = '1x8'),1,0)) AS `B1x8`,sum(if((`ps`.`bonding` = '2x1'),1,0)) AS `B2x1`,sum(if((`ps`.`bonding` = '2x2'),1,0)) AS `B2x2`,sum(if((`ps`.`bonding` = '2x3'),1,0)) AS `B2x3`,sum(if((`ps`.`bonding` = '2x4'),1,0)) AS `B2x4`,sum(if((`ps`.`bonding` = '2x5'),1,0)) AS `B2x5`,sum(if((`ps`.`bonding` = '2x6'),1,0)) AS `B2x6`,sum(if((`ps`.`bonding` = '2x7'),1,0)) AS `B2x7`,sum(if((`ps`.`bonding` = '3x1'),1,0)) AS `B3x1`,sum(if((`ps`.`bonding` = '3x2'),1,0)) AS `B3x2`,sum(if((`ps`.`bonding` = '4x1'),1,0)) AS `B4x1`,sum(if((`ps`.`bonding` = '4x2'),1,0)) AS `B4x2`,sum(if((`ps`.`bonding` = '5x1'),1,0)) AS `B5x1`,sum(if((`ps`.`bonding` = '5x2'),1,0)) AS `B5x2`,sum(if((`ps`.`bonding` = '6x1'),1,0)) AS `B6x1`,sum(if((`ps`.`bonding` = '6x2'),1,0)) AS `B6x2`,sum(if((`ps`.`bonding` = '7x1'),1,0)) AS `B7x1`,sum(if((`ps`.`bonding` = '8x1'),1,0)) AS `B8x1`,count(0) AS `total` from `partial_service_final` `ps` group by `ps`.`cmts`) */;

/*View structure for view resumen_cm_view_casa */

/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_casa` */;
/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_casa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_cm_view_casa` AS (select `a`.`cmts` AS `cmts`,`b`.`Interface` AS `interface`,`c`.`description` AS `description`,`a`.`sincroniz` AS `sincroniz`,if(isnull(`b`.`offline`),0,`b`.`offline`) AS `offline`,(`a`.`sincroniz` + if(isnull(`b`.`offline`),0,`b`.`offline`)) AS `total` from (((`ccm1`.`casa_interface_view` `a` left join `ccm1`.`casa_interface_view_offline` `b` on(((`a`.`cmts` = `b`.`cmts`) and (`a`.`Interface` = `b`.`Interface`)))) join `catalogos`.`etiqueta_puertos` `c` on(((`a`.`cmts` = `c`.`cmts`) and (`a`.`Interface` = `c`.`interface`)))) join `ccm1`.`cmts_ip` `d` on((`a`.`cmts` = `d`.`cmts`))) where (`d`.`marca` = 'CASA') group by `a`.`cmts`,`b`.`Interface`) */;

/*View structure for view resumen_cm_view_cisco */

/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_cisco` */;
/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_cisco` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_cm_view_cisco` AS (select `a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`c`.`description` AS `description`,`a`.`sincroniz` AS `sincroniz`,if(isnull(`b`.`offline`),0,`b`.`offline`) AS `offline`,(`a`.`sincroniz` + if(isnull(`b`.`offline`),0,`b`.`offline`)) AS `total` from (((`ccm1`.`cisco_interface_view` `a` left join `ccm1`.`cisco_interface_view_offline` `b` on(((`a`.`cmts` = `b`.`cmts`) and (`a`.`interface` = `b`.`interface`)))) join `catalogos`.`etiqueta_puertos` `c` on(((`a`.`cmts` = `c`.`cmts`) and (`a`.`interface` = `c`.`interface`)))) join `ccm1`.`cmts_ip` `d` on((`a`.`cmts` = `d`.`cmts`))) where (`d`.`marca` = 'CISCO')) */;

/*View structure for view resumen_cm_view_huawei */

/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_huawei` */;
/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_huawei` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_cm_view_huawei` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,`ep`.`description` AS `description`,sum(if((`a`.`MACState` = 'offline'),0,1)) AS `sincroniz`,sum(if((`a`.`MACState` = 'offline'),1,0)) AS `cm_offline`,count(`a`.`MACState`) AS `total` from (`ccm1`.`scm_total` `a` FORCE INDEX (`Interface`) left join `catalogos`.`etiqueta_puertos` `ep` on(((`a`.`cmts` = `ep`.`cmts`) and (`a`.`Interface` = `ep`.`interface`)))) where (`a`.`Interface` like 'H%') group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view v_averias_x_nodo_troba_by_codreq */

/*!50001 DROP TABLE IF EXISTS `v_averias_x_nodo_troba_by_codreq` */;
/*!50001 DROP VIEW IF EXISTS `v_averias_x_nodo_troba_by_codreq` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `v_averias_x_nodo_troba_by_codreq` AS (select `averias_m1_new`.`codnod` AS `codnod`,`averias_m1_new`.`nroplano` AS `nroplano`,`averias_m1_new`.`dia_mov` AS `dia_mov`,`averias_m1_new`.`fec_mov` AS `fec_mov`,`averias_m1_new`.`tipreqini` AS `tipreqini` from `averias_m1_new` group by `averias_m1_new`.`codreq`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
