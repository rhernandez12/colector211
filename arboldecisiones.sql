/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - arboldecisiones
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`arboldecisiones` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `arboldecisiones`;

/*Table structure for table `averias7dias` */

DROP TABLE IF EXISTS `averias7dias`;

CREATE TABLE `averias7dias` (
  `codli` int(11) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `fecreg` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `fecreg` (`fecreg`),
  KEY `codli` (`codli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `averias8dias_mas` */

DROP TABLE IF EXISTS `averias8dias_mas`;

CREATE TABLE `averias8dias_mas` (
  `codli` int(11) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `fecreg` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `fecreg` (`fecreg`),
  KEY `codli` (`codli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `decisiones` */

DROP TABLE IF EXISTS `decisiones`;

CREATE TABLE `decisiones` (
  `iddecision` int(11) NOT NULL AUTO_INCREMENT,
  `idclientecrm` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `solucion` int(11) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `paso17` int(11) unsigned DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `paso22` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddecision`),
  KEY `idusuario` (`usuario`),
  KEY `fechahora` (`fechahora`),
  KEY `paso0` (`paso0`),
  KEY `paso1` (`paso1`),
  KEY `paso2` (`paso2`),
  KEY `paso3` (`paso3`),
  KEY `paso4` (`paso4`),
  KEY `iclientecrm` (`idclientecrm`),
  KEY `paso5` (`paso5`),
  KEY `paso6` (`paso6`),
  KEY `paso7` (`paso7`),
  KEY `paso8` (`paso8`),
  KEY `paso9` (`paso9`),
  KEY `paso10` (`paso10`),
  KEY `paso11` (`paso11`),
  KEY `paso12` (`paso12`),
  KEY `paso13` (`paso13`),
  KEY `paso14` (`paso14`),
  KEY `paso15` (`paso15`),
  KEY `paso16` (`paso16`),
  KEY `paso17` (`paso17`),
  KEY `paso18` (`paso18`),
  KEY `paso19` (`paso19`),
  KEY `paso20` (`paso20`),
  KEY `paso21` (`paso21`),
  KEY `paso22` (`paso22`)
) ENGINE=MyISAM AUTO_INCREMENT=4029934 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `decisiones_c` */

DROP TABLE IF EXISTS `decisiones_c`;

CREATE TABLE `decisiones_c` (
  `iddecision` int(11) NOT NULL AUTO_INCREMENT,
  `idclientecrm` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `solucion` int(11) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `paso17` int(11) unsigned DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `paso22` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddecision`),
  KEY `idusuario` (`usuario`),
  KEY `fechahora` (`fechahora`),
  KEY `paso0` (`paso0`),
  KEY `paso1` (`paso1`),
  KEY `paso2` (`paso2`),
  KEY `paso3` (`paso3`),
  KEY `paso4` (`paso4`),
  KEY `iclientecrm` (`idclientecrm`),
  KEY `paso5` (`paso5`),
  KEY `paso6` (`paso6`),
  KEY `paso7` (`paso7`),
  KEY `paso8` (`paso8`),
  KEY `paso9` (`paso9`),
  KEY `paso10` (`paso10`),
  KEY `paso11` (`paso11`),
  KEY `paso12` (`paso12`),
  KEY `paso13` (`paso13`),
  KEY `paso14` (`paso14`),
  KEY `paso15` (`paso15`),
  KEY `paso16` (`paso16`),
  KEY `paso17` (`paso17`),
  KEY `paso18` (`paso18`),
  KEY `paso19` (`paso19`),
  KEY `paso20` (`paso20`),
  KEY `paso21` (`paso21`),
  KEY `paso22` (`paso22`)
) ENGINE=MyISAM AUTO_INCREMENT=1160294 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `decisiones_hoy` */

DROP TABLE IF EXISTS `decisiones_hoy`;

CREATE TABLE `decisiones_hoy` (
  `iddecision` int(11) NOT NULL AUTO_INCREMENT,
  `idclientecrm` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `solucion` int(11) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `paso17` int(11) unsigned DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `paso22` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddecision`),
  KEY `idusuario` (`usuario`),
  KEY `fechahora` (`fechahora`),
  KEY `paso0` (`paso0`),
  KEY `paso1` (`paso1`),
  KEY `paso2` (`paso2`),
  KEY `paso3` (`paso3`),
  KEY `paso4` (`paso4`),
  KEY `iclientecrm` (`idclientecrm`),
  KEY `paso5` (`paso5`),
  KEY `paso6` (`paso6`),
  KEY `paso7` (`paso7`),
  KEY `paso8` (`paso8`),
  KEY `paso9` (`paso9`),
  KEY `paso10` (`paso10`),
  KEY `paso11` (`paso11`),
  KEY `paso12` (`paso12`),
  KEY `paso13` (`paso13`),
  KEY `paso14` (`paso14`),
  KEY `paso15` (`paso15`),
  KEY `paso16` (`paso16`),
  KEY `paso17` (`paso17`),
  KEY `paso18` (`paso18`),
  KEY `paso19` (`paso19`),
  KEY `paso20` (`paso20`),
  KEY `paso21` (`paso21`),
  KEY `paso22` (`paso22`)
) ENGINE=MyISAM AUTO_INCREMENT=6402 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `decisiones_ultima_semana` */

DROP TABLE IF EXISTS `decisiones_ultima_semana`;

CREATE TABLE `decisiones_ultima_semana` (
  `iddecision` int(11) NOT NULL AUTO_INCREMENT,
  `idclientecrm` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `solucion` int(11) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `paso17` int(11) unsigned DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `paso22` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddecision`),
  KEY `idusuario` (`usuario`),
  KEY `fechahora` (`fechahora`),
  KEY `paso0` (`paso0`),
  KEY `paso1` (`paso1`),
  KEY `paso2` (`paso2`),
  KEY `paso3` (`paso3`),
  KEY `paso4` (`paso4`),
  KEY `iclientecrm` (`idclientecrm`),
  KEY `paso5` (`paso5`),
  KEY `paso6` (`paso6`),
  KEY `paso7` (`paso7`),
  KEY `paso8` (`paso8`),
  KEY `paso9` (`paso9`),
  KEY `paso10` (`paso10`),
  KEY `paso11` (`paso11`),
  KEY `paso12` (`paso12`),
  KEY `paso13` (`paso13`),
  KEY `paso14` (`paso14`),
  KEY `paso15` (`paso15`),
  KEY `paso16` (`paso16`),
  KEY `paso17` (`paso17`),
  KEY `paso18` (`paso18`),
  KEY `paso19` (`paso19`),
  KEY `paso20` (`paso20`),
  KEY `paso21` (`paso21`),
  KEY `paso22` (`paso22`)
) ENGINE=MyISAM AUTO_INCREMENT=4029934 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `detalles_solucion_decisiones` */

DROP TABLE IF EXISTS `detalles_solucion_decisiones`;

CREATE TABLE `detalles_solucion_decisiones` (
  `idDecisionArbol` int(11) DEFAULT NULL,
  `ultimoPaso` varchar(50) DEFAULT NULL,
  `id_ultimo_paso` int(11) DEFAULT NULL,
  `det_ultimo_paso` varchar(100) DEFAULT NULL,
  UNIQUE KEY `idDecisionArbol` (`idDecisionArbol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `detalles_solucion_decisiones_d` */

DROP TABLE IF EXISTS `detalles_solucion_decisiones_d`;

CREATE TABLE `detalles_solucion_decisiones_d` (
  `idDecisionArbol` int(11) DEFAULT NULL,
  `ultimoPaso` varchar(50) DEFAULT NULL,
  `id_ultimo_paso` int(11) DEFAULT NULL,
  `det_ultimo_paso` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `marcaRapida` */

DROP TABLE IF EXISTS `marcaRapida`;

CREATE TABLE `marcaRapida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `mensajeArbol` */

DROP TABLE IF EXISTS `mensajeArbol`;

CREATE TABLE `mensajeArbol` (
  `idmensaje` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(35) DEFAULT NULL,
  `paso00` int(1) unsigned zerofill DEFAULT NULL,
  `paso01` int(1) unsigned zerofill DEFAULT NULL,
  `paso02` int(1) unsigned zerofill DEFAULT NULL,
  `paso03` int(1) unsigned zerofill DEFAULT NULL,
  `paso04` int(1) unsigned zerofill DEFAULT NULL,
  `paso05` int(1) unsigned zerofill DEFAULT NULL,
  `paso06` int(1) unsigned zerofill DEFAULT NULL,
  `paso07` int(1) unsigned zerofill DEFAULT NULL,
  `paso08` int(1) unsigned zerofill DEFAULT NULL,
  `paso09` int(1) unsigned zerofill DEFAULT NULL,
  `paso10` int(1) unsigned zerofill DEFAULT NULL,
  `paso11` int(1) unsigned zerofill DEFAULT NULL,
  `paso12` int(1) unsigned zerofill DEFAULT NULL,
  `paso13` int(1) unsigned zerofill DEFAULT NULL,
  `paso14` int(1) unsigned zerofill DEFAULT NULL,
  `paso15` int(1) unsigned zerofill DEFAULT NULL,
  `paso16` int(1) unsigned zerofill DEFAULT NULL,
  `paso17` int(1) unsigned zerofill DEFAULT NULL,
  `paso18` int(1) unsigned zerofill DEFAULT NULL,
  `paso19` int(1) unsigned zerofill DEFAULT NULL,
  `paso20` int(1) unsigned zerofill DEFAULT NULL,
  `paso21` int(1) unsigned zerofill DEFAULT NULL,
  `paso22` int(1) unsigned zerofill DEFAULT NULL,
  `mensajeCompleto` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idmensaje`),
  KEY `mensaje` (`mensaje`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso00` */

DROP TABLE IF EXISTS `paso00`;

CREATE TABLE `paso00` (
  `id` int(11) NOT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso01` */

DROP TABLE IF EXISTS `paso01`;

CREATE TABLE `paso01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso0` (`paso0`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso02` */

DROP TABLE IF EXISTS `paso02`;

CREATE TABLE `paso02` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso1` (`paso1`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso03` */

DROP TABLE IF EXISTS `paso03`;

CREATE TABLE `paso03` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso2` (`paso2`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso04` */

DROP TABLE IF EXISTS `paso04`;

CREATE TABLE `paso04` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(1500) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso3` (`paso3`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso05` */

DROP TABLE IF EXISTS `paso05`;

CREATE TABLE `paso05` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso4` (`paso4`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso06` */

DROP TABLE IF EXISTS `paso06`;

CREATE TABLE `paso06` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(500) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso5` (`paso5`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso07` */

DROP TABLE IF EXISTS `paso07`;

CREATE TABLE `paso07` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(500) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso6` (`paso6`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso08` */

DROP TABLE IF EXISTS `paso08`;

CREATE TABLE `paso08` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(500) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso7` (`paso7`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso09` */

DROP TABLE IF EXISTS `paso09`;

CREATE TABLE `paso09` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso8` (`paso8`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso10` */

DROP TABLE IF EXISTS `paso10`;

CREATE TABLE `paso10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso9` (`paso9`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso11` */

DROP TABLE IF EXISTS `paso11`;

CREATE TABLE `paso11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso10` (`paso10`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso12` */

DROP TABLE IF EXISTS `paso12`;

CREATE TABLE `paso12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso11` (`paso11`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso13` */

DROP TABLE IF EXISTS `paso13`;

CREATE TABLE `paso13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(1000) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso12` (`paso12`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso14` */

DROP TABLE IF EXISTS `paso14`;

CREATE TABLE `paso14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso13` (`paso13`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso15` */

DROP TABLE IF EXISTS `paso15`;

CREATE TABLE `paso15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso14` (`paso14`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso16` */

DROP TABLE IF EXISTS `paso16`;

CREATE TABLE `paso16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso15` (`paso15`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso17` */

DROP TABLE IF EXISTS `paso17`;

CREATE TABLE `paso17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso16` (`paso16`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso18` */

DROP TABLE IF EXISTS `paso18`;

CREATE TABLE `paso18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso17` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso17` (`paso17`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso19` */

DROP TABLE IF EXISTS `paso19`;

CREATE TABLE `paso19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso18` (`paso18`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso20` */

DROP TABLE IF EXISTS `paso20`;

CREATE TABLE `paso20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso19` (`paso19`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso21` */

DROP TABLE IF EXISTS `paso21`;

CREATE TABLE `paso21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso19` (`paso20`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso22` */

DROP TABLE IF EXISTS `paso22`;

CREATE TABLE `paso22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso19` (`paso21`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `pasosArbol` */

DROP TABLE IF EXISTS `pasosArbol`;

CREATE TABLE `pasosArbol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `pasoAnterior` varchar(50) DEFAULT NULL,
  `tablaSiguiente` varchar(50) DEFAULT NULL,
  `tablaAnterior` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reporte_final_arbol` */

DROP TABLE IF EXISTS `reporte_final_arbol`;

CREATE TABLE `reporte_final_arbol` (
  `FECHA` varchar(10) DEFAULT NULL,
  `RESULTADO_ARBOL` varchar(300) DEFAULT NULL,
  `SOL_EN_LINEA` decimal(23,0) DEFAULT NULL,
  `NO_SOL` decimal(23,0) DEFAULT NULL,
  `TOTAL` bigint(21) NOT NULL,
  `PORC` decimal(29,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reportearbol` */

DROP TABLE IF EXISTS `reportearbol`;

CREATE TABLE `reportearbol` (
  `iddecision` int(11) NOT NULL DEFAULT '0',
  `idclientecrm` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `ldmarca_rapida` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `idpaso` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `tbpaso` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `marcarapida` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ultimopaso` varchar(200) CHARACTER SET utf8 NOT NULL,
  `resultadoarbol` varchar(300) DEFAULT NULL,
  `averia` int(11) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  KEY `iddecision` (`iddecision`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `ldmarca_rapida` (`ldmarca_rapida`),
  KEY `idpaso` (`idpaso`),
  KEY `tbpaso` (`tbpaso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reportearbol_antes` */

DROP TABLE IF EXISTS `reportearbol_antes`;

CREATE TABLE `reportearbol_antes` (
  `iddecision` int(11) NOT NULL DEFAULT '0',
  `idclientecrm` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `ldmarca_rapida` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `idpaso` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `tbpaso` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `marcarapida` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ultimopaso` varchar(200) CHARACTER SET utf8 NOT NULL,
  `resultadoarbol` varchar(300) DEFAULT NULL,
  `averia` int(11) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  KEY `iddecision` (`iddecision`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `ldmarca_rapida` (`ldmarca_rapida`),
  KEY `idpaso` (`idpaso`),
  KEY `tbpaso` (`tbpaso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tbresumen` */

DROP TABLE IF EXISTS `tbresumen`;

CREATE TABLE `tbresumen` (
  `detalle` varchar(300) DEFAULT NULL,
  `solucion` varchar(100) DEFAULT NULL,
  UNIQUE KEY `detalle` (`detalle`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `sp_new_reporte_arbol` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_new_reporte_arbol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_new_reporte_arbol`()
BEGIN
	TRUNCATE TABLE arboldecisiones.reportearbol;
	INSERT IGNORE arboldecisiones.reportearbol
	SELECT a.iddecision,a.`idclientecrm`,a.`fechahora`,a.usuario,
	IF(solucion>0,solucion,'') AS ldmarca_rapida,
	IF(paso22>0,paso22,
	IF(paso21>0,paso21,
	IF(paso20>0,paso20,
	IF(paso19>0,paso19,
	IF(paso18>0,paso18,
	IF(paso17>0,paso17,
	IF(paso18>0,paso16,
	IF(paso16>0,paso15,
	IF(paso15>0,paso14,
	IF(paso14>0,paso13,
	IF(paso13>0,paso12,
	IF(paso12>0,paso11,
	IF(paso11>0,paso11,
	IF(paso10>0,paso10,
	IF(paso9>0,paso9,
	IF(paso8>0,paso8,
	IF(paso7>0,paso7,
	IF(paso6>0,paso6,
	IF(paso5>0,paso5,
	IF(paso4>0,paso4,
	IF(paso3>0,paso3,
	IF(paso2>0,paso2,
	IF(paso1>0,paso1,
	IF(paso0>0,paso0,'')))))))))))))))))))))))) AS idpaso,
	IF(paso22>0,'paso22',
	IF(paso21>0,'paso21',
	IF(paso20>0,'paso20',
	IF(paso19>0,'paso19',
	IF(paso18>0,'paso18',
	IF(paso17>0,'paso17',
	IF(paso18>0,'paso16',
	IF(paso16>0,'paso15',
	IF(paso15>0,'paso14',
	IF(paso14>0,'paso13',
	IF(paso13>0,'paso12',
	IF(paso12>0,'paso11',
	IF(paso11>0,'paso11',
	IF(paso10>0,'paso10',
	IF(paso9>0,'paso09',
	IF(paso8>0,'paso08',
	IF(paso7>0,'paso07',
	IF(paso6>0,'paso06',
	IF(paso5>0,'paso05',
	IF(paso4>0,'paso04',
	IF(paso3>0,'paso03',
	IF(paso2>0,'paso02',
	IF(paso1>0,'paso01',
	IF(paso0>0,'paso00','')))))))))))))))))))))))) AS tbpaso,
	SPACE(150) AS marcarapida,
	SPACE(200) AS ultimopaso,
	space(300) as resultado_arbol,0 as averia,space(20) as fecreg
	FROM arboldecisiones.`decisiones` a
	WHERE DATEDIFF(NOW(),fechahora)<=7;
	INSERT IGNORE arboldecisiones.reportearbol
	SELECT a.iddecision,a.`idclientecrm`,a.`fechahora`,a.usuario,
	IF(solucion>0,solucion,'') AS ldmarca_rapida,
	IF(paso22>0,paso22,
	IF(paso21>0,paso21,
	IF(paso20>0,paso20,
	IF(paso19>0,paso19,
	IF(paso18>0,paso18,
	IF(paso17>0,paso17,
	IF(paso18>0,paso16,
	IF(paso16>0,paso15,
	IF(paso15>0,paso14,
	IF(paso14>0,paso13,
	IF(paso13>0,paso12,
	IF(paso12>0,paso11,
	IF(paso11>0,paso11,
	IF(paso10>0,paso10,
	IF(paso9>0,paso9,
	IF(paso8>0,paso8,
	IF(paso7>0,paso7,
	IF(paso6>0,paso6,
	IF(paso5>0,paso5,
	IF(paso4>0,paso4,
	IF(paso3>0,paso3,
	IF(paso2>0,paso2,
	IF(paso1>0,paso1,
	IF(paso0>0,paso0,'')))))))))))))))))))))))) AS idpaso,
	IF(paso22>0,'paso22',
	IF(paso21>0,'paso21',
	IF(paso20>0,'paso20',
	IF(paso19>0,'paso19',
	IF(paso18>0,'paso18',
	IF(paso17>0,'paso17',
	IF(paso18>0,'paso16',
	IF(paso16>0,'paso15',
	IF(paso15>0,'paso14',
	IF(paso14>0,'paso13',
	IF(paso13>0,'paso12',
	IF(paso12>0,'paso11',
	IF(paso11>0,'paso11',
	IF(paso10>0,'paso10',
	IF(paso9>0,'paso09',
	IF(paso8>0,'paso08',
	IF(paso7>0,'paso07',
	IF(paso6>0,'paso06',
	IF(paso5>0,'paso05',
	IF(paso4>0,'paso04',
	IF(paso3>0,'paso03',
	IF(paso2>0,'paso02',
	IF(paso1>0,'paso01',
	IF(paso0>0,'paso00','')))))))))))))))))))))))) AS tbpaso,
	SPACE(150) AS marcarapida,
	SPACE(200) AS ultimopaso,
	SPACE(300) AS resultado_arbol,0 AS averia,SPACE(20) AS fecreg
	FROM arboldecisiones.`decisiones_hoy` a
	WHERE DATEDIFF(NOW(),fechahora)<=7;
	
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso00 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` 	WHERE  a.tbpaso='paso00';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso01 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso01';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso02 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso02';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso03 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso03';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso04 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso04';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso05 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso05';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso06 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso06';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso07 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso07';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso08 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso08';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso09 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso09';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso10 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso10';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso11 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso11';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso12 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso12';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso13 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso13';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso14 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso14';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso15 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso15';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso16 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso16';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso17 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso17';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso18 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso18';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso19 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso19';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso20 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso20';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso21 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso21';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso22 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso22';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.marcaRapida b ON a.`ldmarca_rapida`=b.id SET marcarapida=detalle;
	
	UPDATE arboldecisiones.reportearbol a 
	left JOIN arboldecisiones.tbresumen b 
	ON a.`ultimopaso`=b.`detalle` 
	SET a.`resultadoarbol`=if(a.idpaso>0 and b.solucion is null,'FA: RAMA MODIFICADA' ,CONCAT('FA :',b.`solucion`));
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.marcaRapida b ON a.ldmarca_rapida = b.`id` SET a.`resultadoarbol`=CONCAT('MR :',b.`detalle`) WHERE a.`resultadoarbol` IS NULL OR a.ldmarca_rapida>0;
	DELETE FROM arboldecisiones.averias7dias 
	WHERE DATEDIFF(NOW(),fecreg)>7;
	INSERT IGNORE arboldecisiones.averias7dias 
	SELECT codcli,codreq,SUBSTR(fec_mov,1,16) AS fecreg 
	FROM ccm1.`averias_m1_new` WHERE DATEDIFF(NOW(),fec_mov)<=7;
	INSERT IGNORE arboldecisiones.averias7dias 
	SELECT codigodelcliente,codigoreq,SUBSTR(fecharegistro,1,16) AS fecreg 
	FROM cms.`aver_liq_catv_pais` WHERE DATEDIFF(NOW(),fecharegistro)<=7;
	
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.averias7dias b ON a.`idclientecrm`=b.`codli` SET a.`averia`=b.`codreq`,a.`fecreg`=b.`fecreg` WHERE timeDIFF(b.fecreg,a.`fechahora`)<='01:00:00.00000' and TIMEDIFF(b.fecreg,a.`fechahora`)>='-00:02:00.00000';
	UPDATE arboldecisiones.reportearbol a INNER JOIN cms.req_pend_macro_final b ON a.`idclientecrm`=b.`codcli` SET a.`averia`=b.`codreq`,a.`fecreg`=b.`fec_registro` WHERE timeDIFF(b.`fec_registro`,a.`fechahora`)<='01:00:00.00000' AND TIMEDIFF(b.fec_registro,a.`fechahora`)>='-00:02:00.00000';
	TRUNCATE TABLE arboldecisiones.reporte_final_arbol;
	INSERT INTO arboldecisiones.reporte_final_arbol
	SELECT SUBSTR(a.fechahora,1,10) AS FECHA,a.resultadoarbol AS RESULTADO_ARBOL,
	SUM(IF(averia=0,1,0)) AS SOL_EN_LINEA,SUM(IF(averia>0,1,0)) AS NO_SOL,COUNT(*) AS TOTAL,
	ROUND((SUM(IF(averia=0,1,0))/COUNT(*))*100,2) AS PORC  
	FROM `arboldecisiones`.`reportearbol`  a 
	GROUP BY 1,2;
	select 'FECHA','RESULTADO_ARBOL','SOL_EN_LINEA','NO_SOL','TOTAL','PORC'
	union
	SELECT * FROM arboldecisiones.reporte_final_arbol 
	INTO OUTFILE '/temp/ReporteFinalArbol.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
	select 'IDDECISION','IDCLIENTECRM','FECHAHORA','USUARIO','LDMARCA_RAPIDA','IDPASO','TBPASO','MARCARAPIDA','ULTIMOPASO','RESULTADOARBOL','AVERIA','FECREG'
	union
	SELECT * FROM arboldecisiones.`reportearbol` INTO OUTFILE '/temp/ResultadoArbol.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_arbol` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_arbol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_arbol`()
BEGIN
	SELECT 
	a.id AS id00,a.detalle AS paso00,a.img_total as img_total00,a.img_negocios AS img_negocios00,a.img_masivo AS img_masivo00,
	b.id AS id01,b.detalle AS paso01,b.img_total AS img_total01,b.img_negocios AS img_negocios01,b.img_masivo AS img_masivo01,
	c.id AS id02,c.detalle AS paso02,c.img_total AS img_total02,c.img_negocios AS img_negocios02,c.img_masivo AS img_masivo02,
	d.id AS id03,d.detalle AS paso03,d.img_total AS img_total03,d.img_negocios AS img_negocios03,d.img_masivo AS img_masivo03,
	e.id AS id04,e.detalle AS paso04,e.img_total AS img_total04,e.img_negocios AS img_negocios04,e.img_masivo AS img_masivo04,
	f.id AS id05,f.detalle AS paso05,f.img_total AS img_total05,f.img_negocios AS img_negocios05,f.img_masivo AS img_masivo05,
	g.id AS id06,g.detalle AS paso06,g.img_total AS img_total06,g.img_negocios AS img_negocios06,g.img_masivo AS img_masivo06,
	h.id AS id07,h.detalle AS paso07,h.img_total AS img_total07,h.img_negocios AS img_negocios07,h.img_masivo AS img_masivo07,
	i.id AS id08,i.detalle AS paso08,i.img_total AS img_total08,i.img_negocios AS img_negocios08,i.img_masivo AS img_masivo08,
	j.id AS id09,j.detalle AS paso09,j.img_total AS img_total09,j.img_negocios AS img_negocios09,j.img_masivo AS img_masivo09,
	k.id AS id10,k.detalle AS paso10,k.img_total AS img_total10,k.img_negocios AS img_negocios10,k.img_masivo AS img_masivo10,
	l.id AS id11,l.detalle AS paso11,l.img_total AS img_total11,l.img_negocios AS img_negocios11,l.img_masivo AS img_masivo11,
	m.id AS id12,m.detalle AS paso12,m.img_total AS img_total12,m.img_negocios AS img_negocios12,m.img_masivo AS img_masivo12,
	n.id AS id13,n.detalle AS paso13,n.img_total AS img_total13,n.img_negocios AS img_negocios13,n.img_masivo AS img_masivo13,
	o.id AS id14,o.detalle AS paso14,o.img_total AS img_total14,o.img_negocios AS img_negocios14,o.img_masivo AS img_masivo14,
	p.id AS id15,p.detalle AS paso15,p.img_total AS img_total15,p.img_negocios AS img_negocios15,p.img_masivo AS img_masivo15,
	q.id AS id16,q.detalle AS paso16,q.img_total AS img_total16,q.img_negocios AS img_negocios16,q.img_masivo AS img_masivo16,
	r.id AS id17,r.detalle AS paso17,r.img_total AS img_total17,r.img_negocios AS img_negocios17,r.img_masivo AS img_masivo17,
	s.id AS id18,s.detalle AS paso18,s.img_total AS img_total18,s.img_negocios AS img_negocios18,s.img_masivo AS img_masivo18,
	t.id AS id19,t.detalle AS paso19,t.img_total AS img_total19,t.img_negocios AS img_negocios19,t.img_masivo AS img_masivo19,
	u.id AS id20,u.detalle AS paso20,u.img_total AS img_total20,u.img_negocios AS img_negocios20,u.img_masivo AS img_masivo20,
	v.id AS id21,v.detalle AS paso21,v.img_total AS img_total21,v.img_negocios AS img_negocios21,v.img_masivo AS img_masivo21,
	w.id AS id22,w.detalle AS paso22,w.img_total AS img_total22,w.img_negocios AS img_negocios22,w.img_masivo AS img_masivo22
	FROM arboldecisiones.paso00 a 
	LEFT JOIN arboldecisiones.paso01 b
	ON a.id=b.paso0
	LEFT JOIN arboldecisiones.paso02 c
	ON b.id=c.paso1
	LEFT JOIN arboldecisiones.paso03 d
	ON c.id=d.paso2
	LEFT JOIN arboldecisiones.paso04 e
	ON d.id=e.paso3
	LEFT JOIN arboldecisiones.paso05 f
	ON e.id=f.paso4
	LEFT JOIN arboldecisiones.paso06 g
	ON f.id=g.paso5
	LEFT JOIN arboldecisiones.paso07 h
	ON g.id=h.paso6
	LEFT JOIN arboldecisiones.paso08 i
	ON h.id=i.paso7
	LEFT JOIN arboldecisiones.paso09 j
	ON i.id=j.paso8
	LEFT JOIN arboldecisiones.paso10 k
	ON j.id=k.paso9
	LEFT JOIN arboldecisiones.paso11 l
	ON k.id=l.paso10
	LEFT JOIN arboldecisiones.paso12 m
	ON l.id=m.paso11
	LEFT JOIN arboldecisiones.paso13 n
	ON m.id=n.paso12
	LEFT JOIN arboldecisiones.paso14 o
	ON n.id=o.paso13
	LEFT JOIN arboldecisiones.paso15 p
	ON o.id=p.paso14
	LEFT JOIN arboldecisiones.paso16 q
	ON p.id=q.paso15
	LEFT JOIN arboldecisiones.paso17 r
	ON q.id=r.paso16
	LEFT JOIN arboldecisiones.paso18 s
	ON r.id=s.paso17
	LEFT JOIN arboldecisiones.paso19 t
	ON s.id=t.paso18
	LEFT JOIN arboldecisiones.paso20 u
	ON t.id=u.paso19
	LEFT JOIN arboldecisiones.paso21 v
	ON u.id=v.paso20
	LEFT JOIN arboldecisiones.paso22 w
	ON v.id=w.paso21;
    END */$$
DELIMITER ;

/*Table structure for table `averxdia_view` */

DROP TABLE IF EXISTS `averxdia_view`;

/*!50001 DROP VIEW IF EXISTS `averxdia_view` */;
/*!50001 DROP TABLE IF EXISTS `averxdia_view` */;

/*!50001 CREATE TABLE  `averxdia_view`(
 `dia` varchar(5) ,
 `Averias_Total` bigint(21) 
)*/;

/*Table structure for table `reiteradasxdia_view` */

DROP TABLE IF EXISTS `reiteradasxdia_view`;

/*!50001 DROP VIEW IF EXISTS `reiteradasxdia_view` */;
/*!50001 DROP TABLE IF EXISTS `reiteradasxdia_view` */;

/*!50001 CREATE TABLE  `reiteradasxdia_view`(
 `idclientecrm` int(11) ,
 `fechahora` varchar(20) ,
 `codreq` int(16) ,
 `fec_mov` varchar(20) ,
 `dia` varchar(5) 
)*/;

/*Table structure for table `reporte_arbol_view` */

DROP TABLE IF EXISTS `reporte_arbol_view`;

/*!50001 DROP VIEW IF EXISTS `reporte_arbol_view` */;
/*!50001 DROP TABLE IF EXISTS `reporte_arbol_view` */;

/*!50001 CREATE TABLE  `reporte_arbol_view`(
 `usuario` varchar(20) ,
 `fechahora` varchar(20) ,
 `DIA` varchar(5) ,
 `idclientecrm` int(11) ,
 `estado` varchar(1) ,
 `codreq` bigint(11) ,
 `codnod` varchar(2) ,
 `codmotv` varchar(4) ,
 `tipreqini` varchar(2) ,
 `tipreqfin` varchar(2) ,
 `fec_registro` varchar(20) ,
 `paso0` int(11) ,
 `detalle0` varchar(200) ,
 `paso1` int(11) ,
 `detalle1` varchar(200) ,
 `paso2` int(11) ,
 `detalle2` varchar(200) ,
 `paso3` int(11) ,
 `detalle3` varchar(200) ,
 `paso4` int(11) ,
 `detalle4` varchar(1500) ,
 `paso5` int(11) ,
 `detalle5` varchar(200) ,
 `paso6` int(11) ,
 `detalle6` varchar(500) ,
 `paso7` int(11) ,
 `detalle7` varchar(500) ,
 `paso8` int(11) ,
 `detalle8` varchar(500) ,
 `paso9` int(11) ,
 `detalle9` varchar(200) ,
 `paso10` int(11) ,
 `detalle10` varchar(200) ,
 `paso11` int(11) ,
 `detalle11` varchar(200) ,
 `paso12` int(11) ,
 `detalle12` varchar(200) ,
 `paso13` int(11) ,
 `detalle13` varchar(1000) ,
 `paso14` int(11) ,
 `detalle14` varchar(200) ,
 `paso15` int(11) ,
 `detalle15` varchar(200) ,
 `paso16` int(11) ,
 `detalle16` varchar(200) ,
 `paso17` int(11) unsigned ,
 `detalle17` varchar(200) ,
 `paso18` int(11) ,
 `detalle18` varchar(200) ,
 `paso19` int(11) ,
 `detalle19` varchar(200) ,
 `paso20` int(11) ,
 `detalle20` varchar(200) ,
 `paso21` int(11) ,
 `detalle21` varchar(200) ,
 `paso22` int(11) ,
 `detalle22` varchar(200) 
)*/;

/*Table structure for table `reporte_arbol_view_snbandejas` */

DROP TABLE IF EXISTS `reporte_arbol_view_snbandejas`;

/*!50001 DROP VIEW IF EXISTS `reporte_arbol_view_snbandejas` */;
/*!50001 DROP TABLE IF EXISTS `reporte_arbol_view_snbandejas` */;

/*!50001 CREATE TABLE  `reporte_arbol_view_snbandejas`(
 `usuario` varchar(20) ,
 `fechahora` varchar(20) ,
 `DIA` varchar(5) ,
 `idclientecrm` int(11) ,
 `estado` varchar(1) ,
 `codreq` bigint(11) ,
 `codnod` varchar(2) ,
 `codmotv` varchar(4) ,
 `tipreqini` varchar(2) ,
 `tipreqfin` varchar(2) ,
 `fec_registro` varchar(20) ,
 `paso0` int(11) ,
 `detalle0` varchar(200) ,
 `paso1` int(11) ,
 `detalle1` varchar(200) ,
 `paso2` int(11) ,
 `detalle2` varchar(200) ,
 `paso3` int(11) ,
 `detalle3` varchar(200) ,
 `paso4` int(11) ,
 `detalle4` varchar(1500) ,
 `paso5` int(11) ,
 `detalle5` varchar(200) ,
 `paso6` int(11) ,
 `detalle6` varchar(500) ,
 `paso7` int(11) ,
 `detalle7` varchar(500) ,
 `paso8` int(11) ,
 `detalle8` varchar(500) ,
 `paso9` int(11) ,
 `detalle9` varchar(200) ,
 `paso10` int(11) ,
 `detalle10` varchar(200) ,
 `paso11` int(11) ,
 `detalle11` varchar(200) ,
 `paso12` int(11) ,
 `detalle12` varchar(200) ,
 `paso13` int(11) ,
 `detalle13` varchar(1000) ,
 `paso14` int(11) ,
 `detalle14` varchar(200) ,
 `paso15` int(11) ,
 `detalle15` varchar(200) ,
 `paso16` int(11) ,
 `detalle16` varchar(200) ,
 `paso17` int(11) unsigned ,
 `detalle17` varchar(200) ,
 `paso18` int(11) ,
 `detalle18` varchar(200) ,
 `paso19` int(11) ,
 `detalle19` varchar(200) ,
 `paso20` int(11) ,
 `detalle20` varchar(200) ,
 `paso21` int(11) ,
 `detalle21` varchar(200) ,
 `paso22` int(11) ,
 `detalle22` varchar(200) 
)*/;

/*Table structure for table `resumen_comparativo` */

DROP TABLE IF EXISTS `resumen_comparativo`;

/*!50001 DROP VIEW IF EXISTS `resumen_comparativo` */;
/*!50001 DROP TABLE IF EXISTS `resumen_comparativo` */;

/*!50001 CREATE TABLE  `resumen_comparativo`(
 `dia` varchar(5) ,
 `AvConBandeja` decimal(23,0) ,
 `AvSinBandeja` decimal(23,0) ,
 `SolConBandeja` decimal(23,0) ,
 `SolSinBandeja` decimal(23,0) ,
 `TotalArbol` bigint(21) ,
 `PorConBandeja` decimal(29,2) ,
 `PorSinBandeja` decimal(29,2) ,
 `Averias_Total` bigint(21) ,
 `PorcAveriasArbol` decimal(29,2) ,
 `Reiteradas` bigint(21) 
)*/;

/*Table structure for table `resumen_reitxdia_view` */

DROP TABLE IF EXISTS `resumen_reitxdia_view`;

/*!50001 DROP VIEW IF EXISTS `resumen_reitxdia_view` */;
/*!50001 DROP TABLE IF EXISTS `resumen_reitxdia_view` */;

/*!50001 CREATE TABLE  `resumen_reitxdia_view`(
 `dia` varchar(5) ,
 `reit` bigint(21) 
)*/;

/*Table structure for table `resumen_view` */

DROP TABLE IF EXISTS `resumen_view`;

/*!50001 DROP VIEW IF EXISTS `resumen_view` */;
/*!50001 DROP TABLE IF EXISTS `resumen_view` */;

/*!50001 CREATE TABLE  `resumen_view`(
 `dia` varchar(5) ,
 `Averia` decimal(23,0) ,
 `Solucion` decimal(23,0) ,
 `Total` bigint(21) ,
 `Porc` decimal(29,2) 
)*/;

/*Table structure for table `resumen_view_snbandejas` */

DROP TABLE IF EXISTS `resumen_view_snbandejas`;

/*!50001 DROP VIEW IF EXISTS `resumen_view_snbandejas` */;
/*!50001 DROP TABLE IF EXISTS `resumen_view_snbandejas` */;

/*!50001 CREATE TABLE  `resumen_view_snbandejas`(
 `dia` varchar(5) ,
 `Averia` decimal(23,0) ,
 `Solucion` decimal(23,0) ,
 `Total` bigint(21) ,
 `Porc` decimal(29,2) 
)*/;

/*View structure for view averxdia_view */

/*!50001 DROP TABLE IF EXISTS `averxdia_view` */;
/*!50001 DROP VIEW IF EXISTS `averxdia_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `averxdia_view` AS (select concat(substr(`a`.`dia_mov`,6,2),'_',substr(`a`.`dia_mov`,9,2)) AS `dia`,count(0) AS `Averias_Total` from `ccm1`.`averias_m1_new` `a` where ((`a`.`tipreqini` in ('RA','R7','RP')) and ((to_days(now()) - to_days(`a`.`dia_mov`)) >= 0) and (`a`.`dia_mov` >= '2019-04-12')) group by concat(substr(`a`.`dia_mov`,6,2),'_',substr(`a`.`dia_mov`,9,2))) */;

/*View structure for view reiteradasxdia_view */

/*!50001 DROP TABLE IF EXISTS `reiteradasxdia_view` */;
/*!50001 DROP VIEW IF EXISTS `reiteradasxdia_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `reiteradasxdia_view` AS (select `a`.`idclientecrm` AS `idclientecrm`,`a`.`fechahora` AS `fechahora`,`b`.`codreq` AS `codreq`,`b`.`fec_mov` AS `fec_mov`,concat(substr(`a`.`fechahora`,6,2),'_',substr(`a`.`fechahora`,9,2)) AS `dia` from (`arboldecisiones`.`reporte_arbol_view` `a` join `ccm1`.`averias_m1_new` `b` on((`a`.`idclientecrm` = `b`.`codcli`))) where (isnull(`a`.`codreq`) and (timediff(`b`.`fec_mov`,`a`.`fechahora`) <= '84:00:00') and (`b`.`fec_mov` > `a`.`fechahora`) and (`a`.`fechahora` > '2019-04-12')) group by `a`.`idclientecrm`) */;

/*View structure for view reporte_arbol_view */

/*!50001 DROP TABLE IF EXISTS `reporte_arbol_view` */;
/*!50001 DROP VIEW IF EXISTS `reporte_arbol_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `reporte_arbol_view` AS (select `a`.`usuario` AS `usuario`,`a`.`fechahora` AS `fechahora`,concat(substr(`a`.`fechahora`,6,2),'_',substr(`a`.`fechahora`,9,2)) AS `DIA`,`a`.`idclientecrm` AS `idclientecrm`,if((`rp`.`codreq` is not null),'A',if((`lq`.`codigoreq` is not null),'A','')) AS `estado`,if(isnull(`rp`.`codreq`),`lq`.`codigoreq`,`rp`.`codreq`) AS `codreq`,if(isnull(`rp`.`codnod`),`lq`.`codnod`,`rp`.`codnod`) AS `codnod`,if(isnull(`rp`.`codmotv`),`lq`.`codigomotivoreq`,`rp`.`codmotv`) AS `codmotv`,if(isnull(`rp`.`tipreqini`),`lq`.`codigodelgruporeq`,`rp`.`tipreqini`) AS `tipreqini`,if(isnull(`rp`.`tipreqfin`),`lq`.`codigotiporeq`,`rp`.`tipreqfin`) AS `tipreqfin`,if(isnull(`rp`.`fec_registro`),`lq`.`fecharegistro`,`rp`.`fec_registro`) AS `fec_registro`,`a`.`paso0` AS `paso0`,`b`.`detalle` AS `detalle0`,`a`.`paso1` AS `paso1`,`c`.`detalle` AS `detalle1`,`a`.`paso2` AS `paso2`,`d`.`detalle` AS `detalle2`,`a`.`paso3` AS `paso3`,`e`.`detalle` AS `detalle3`,`a`.`paso4` AS `paso4`,`f`.`detalle` AS `detalle4`,`a`.`paso5` AS `paso5`,`g`.`detalle` AS `detalle5`,`a`.`paso6` AS `paso6`,`h`.`detalle` AS `detalle6`,`a`.`paso7` AS `paso7`,`i`.`detalle` AS `detalle7`,`a`.`paso8` AS `paso8`,`j`.`detalle` AS `detalle8`,`a`.`paso9` AS `paso9`,`k`.`detalle` AS `detalle9`,`a`.`paso10` AS `paso10`,`l`.`detalle` AS `detalle10`,`a`.`paso11` AS `paso11`,`m`.`detalle` AS `detalle11`,`a`.`paso12` AS `paso12`,`n`.`detalle` AS `detalle12`,`a`.`paso13` AS `paso13`,`o`.`detalle` AS `detalle13`,`a`.`paso14` AS `paso14`,`p`.`detalle` AS `detalle14`,`a`.`paso15` AS `paso15`,`q`.`detalle` AS `detalle15`,`a`.`paso16` AS `paso16`,`r`.`detalle` AS `detalle16`,`a`.`paso17` AS `paso17`,`s`.`detalle` AS `detalle17`,`a`.`paso18` AS `paso18`,`t`.`detalle` AS `detalle18`,`a`.`paso19` AS `paso19`,`u`.`detalle` AS `detalle19`,`a`.`paso20` AS `paso20`,`v`.`detalle` AS `detalle20`,`a`.`paso21` AS `paso21`,`w`.`detalle` AS `detalle21`,`a`.`paso22` AS `paso22`,`z`.`detalle` AS `detalle22` from (((((((((((((((((((((((((`arboldecisiones`.`decisiones` `a` left join `arboldecisiones`.`paso00` `b` on((`a`.`paso0` = `b`.`id`))) left join `arboldecisiones`.`paso01` `c` on((`a`.`paso1` = `c`.`id`))) left join `arboldecisiones`.`paso02` `d` on((`a`.`paso2` = `d`.`id`))) left join `arboldecisiones`.`paso03` `e` on((`a`.`paso3` = `e`.`id`))) left join `arboldecisiones`.`paso04` `f` on((`a`.`paso4` = `f`.`id`))) left join `arboldecisiones`.`paso05` `g` on((`a`.`paso5` = `g`.`id`))) left join `arboldecisiones`.`paso06` `h` on((`a`.`paso6` = `h`.`id`))) left join `arboldecisiones`.`paso07` `i` on((`a`.`paso7` = `i`.`id`))) left join `arboldecisiones`.`paso08` `j` on((`a`.`paso8` = `j`.`id`))) left join `arboldecisiones`.`paso09` `k` on((`a`.`paso9` = `k`.`id`))) left join `arboldecisiones`.`paso10` `l` on((`a`.`paso10` = `l`.`id`))) left join `arboldecisiones`.`paso11` `m` on((`a`.`paso11` = `m`.`id`))) left join `arboldecisiones`.`paso12` `n` on((`a`.`paso12` = `n`.`id`))) left join `arboldecisiones`.`paso13` `o` on((`a`.`paso13` = `o`.`id`))) left join `arboldecisiones`.`paso14` `p` on((`a`.`paso14` = `p`.`id`))) left join `arboldecisiones`.`paso15` `q` on((`a`.`paso15` = `q`.`id`))) left join `arboldecisiones`.`paso16` `r` on((`a`.`paso16` = `r`.`id`))) left join `arboldecisiones`.`paso17` `s` on((`a`.`paso17` = `s`.`id`))) left join `arboldecisiones`.`paso18` `t` on((`a`.`paso18` = `t`.`id`))) left join `arboldecisiones`.`paso19` `u` on((`a`.`paso19` = `u`.`id`))) left join `arboldecisiones`.`paso20` `v` on((`a`.`paso20` = `v`.`id`))) left join `arboldecisiones`.`paso21` `w` on((`a`.`paso21` = `w`.`id`))) left join `arboldecisiones`.`paso22` `z` on((`a`.`paso22` = `z`.`id`))) left join `cms`.`req_pend_macro_final` `rp` on(((`a`.`idclientecrm` = `rp`.`codcli`) and (`rp`.`codctr` not in (442,429,457)) and ((to_days(`rp`.`fec_registro`) - to_days(`a`.`fechahora`)) = 0)))) left join `cms`.`aver_liq_catv_pais` `lq` on(((`a`.`idclientecrm` = `lq`.`codigodelcliente`) and (`lq`.`contrata` in (442,429,457)) and ((to_days(`lq`.`fecharegistro`) - to_days(`a`.`fechahora`)) = 0)))) where (((to_days(now()) - to_days(`a`.`fechahora`)) <= 15) and (`a`.`usuario` not in ('rfalla','jargotes'))) group by `a`.`idclientecrm`,substr(`a`.`fechahora`,1,10)) */;

/*View structure for view reporte_arbol_view_snbandejas */

/*!50001 DROP TABLE IF EXISTS `reporte_arbol_view_snbandejas` */;
/*!50001 DROP VIEW IF EXISTS `reporte_arbol_view_snbandejas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `reporte_arbol_view_snbandejas` AS (select `a`.`usuario` AS `usuario`,`a`.`fechahora` AS `fechahora`,concat(substr(`a`.`fechahora`,6,2),'_',substr(`a`.`fechahora`,9,2)) AS `DIA`,`a`.`idclientecrm` AS `idclientecrm`,if((`rp`.`codreq` is not null),'A',if((`lq`.`codigoreq` is not null),'A','')) AS `estado`,if(isnull(`rp`.`codreq`),`lq`.`codigoreq`,`rp`.`codreq`) AS `codreq`,if(isnull(`rp`.`codnod`),`lq`.`codnod`,`rp`.`codnod`) AS `codnod`,if(isnull(`rp`.`codmotv`),`lq`.`codigomotivoreq`,`rp`.`codmotv`) AS `codmotv`,if(isnull(`rp`.`tipreqini`),`lq`.`codigodelgruporeq`,`rp`.`tipreqini`) AS `tipreqini`,if(isnull(`rp`.`tipreqfin`),`lq`.`codigotiporeq`,`rp`.`tipreqfin`) AS `tipreqfin`,if(isnull(`rp`.`fec_registro`),`lq`.`fecharegistro`,`rp`.`fec_registro`) AS `fec_registro`,`a`.`paso0` AS `paso0`,`b`.`detalle` AS `detalle0`,`a`.`paso1` AS `paso1`,`c`.`detalle` AS `detalle1`,`a`.`paso2` AS `paso2`,`d`.`detalle` AS `detalle2`,`a`.`paso3` AS `paso3`,`e`.`detalle` AS `detalle3`,`a`.`paso4` AS `paso4`,`f`.`detalle` AS `detalle4`,`a`.`paso5` AS `paso5`,`g`.`detalle` AS `detalle5`,`a`.`paso6` AS `paso6`,`h`.`detalle` AS `detalle6`,`a`.`paso7` AS `paso7`,`i`.`detalle` AS `detalle7`,`a`.`paso8` AS `paso8`,`j`.`detalle` AS `detalle8`,`a`.`paso9` AS `paso9`,`k`.`detalle` AS `detalle9`,`a`.`paso10` AS `paso10`,`l`.`detalle` AS `detalle10`,`a`.`paso11` AS `paso11`,`m`.`detalle` AS `detalle11`,`a`.`paso12` AS `paso12`,`n`.`detalle` AS `detalle12`,`a`.`paso13` AS `paso13`,`o`.`detalle` AS `detalle13`,`a`.`paso14` AS `paso14`,`p`.`detalle` AS `detalle14`,`a`.`paso15` AS `paso15`,`q`.`detalle` AS `detalle15`,`a`.`paso16` AS `paso16`,`r`.`detalle` AS `detalle16`,`a`.`paso17` AS `paso17`,`s`.`detalle` AS `detalle17`,`a`.`paso18` AS `paso18`,`t`.`detalle` AS `detalle18`,`a`.`paso19` AS `paso19`,`u`.`detalle` AS `detalle19`,`a`.`paso20` AS `paso20`,`v`.`detalle` AS `detalle20`,`a`.`paso21` AS `paso21`,`w`.`detalle` AS `detalle21`,`a`.`paso22` AS `paso22`,`z`.`detalle` AS `detalle22` from (((((((((((((((((((((((((`arboldecisiones`.`decisiones` `a` left join `arboldecisiones`.`paso00` `b` on((`a`.`paso0` = `b`.`id`))) left join `arboldecisiones`.`paso01` `c` on((`a`.`paso1` = `c`.`id`))) left join `arboldecisiones`.`paso02` `d` on((`a`.`paso2` = `d`.`id`))) left join `arboldecisiones`.`paso03` `e` on((`a`.`paso3` = `e`.`id`))) left join `arboldecisiones`.`paso04` `f` on((`a`.`paso4` = `f`.`id`))) left join `arboldecisiones`.`paso05` `g` on((`a`.`paso5` = `g`.`id`))) left join `arboldecisiones`.`paso06` `h` on((`a`.`paso6` = `h`.`id`))) left join `arboldecisiones`.`paso07` `i` on((`a`.`paso7` = `i`.`id`))) left join `arboldecisiones`.`paso08` `j` on((`a`.`paso8` = `j`.`id`))) left join `arboldecisiones`.`paso09` `k` on((`a`.`paso9` = `k`.`id`))) left join `arboldecisiones`.`paso10` `l` on((`a`.`paso10` = `l`.`id`))) left join `arboldecisiones`.`paso11` `m` on((`a`.`paso11` = `m`.`id`))) left join `arboldecisiones`.`paso12` `n` on((`a`.`paso12` = `n`.`id`))) left join `arboldecisiones`.`paso13` `o` on((`a`.`paso13` = `o`.`id`))) left join `arboldecisiones`.`paso14` `p` on((`a`.`paso14` = `p`.`id`))) left join `arboldecisiones`.`paso15` `q` on((`a`.`paso15` = `q`.`id`))) left join `arboldecisiones`.`paso16` `r` on((`a`.`paso16` = `r`.`id`))) left join `arboldecisiones`.`paso17` `s` on((`a`.`paso17` = `s`.`id`))) left join `arboldecisiones`.`paso18` `t` on((`a`.`paso18` = `t`.`id`))) left join `arboldecisiones`.`paso19` `u` on((`a`.`paso19` = `u`.`id`))) left join `arboldecisiones`.`paso20` `v` on((`a`.`paso20` = `v`.`id`))) left join `arboldecisiones`.`paso21` `w` on((`a`.`paso21` = `w`.`id`))) left join `arboldecisiones`.`paso22` `z` on((`a`.`paso22` = `z`.`id`))) left join `cms`.`req_pend_macro_final` `rp` on(((`a`.`idclientecrm` = `rp`.`codcli`) and (`rp`.`codctr` not in (442,429,457)) and ((to_days(`rp`.`fec_registro`) - to_days(`a`.`fechahora`)) = 0)))) left join `cms`.`aver_liq_catv_pais` `lq` on(((`a`.`idclientecrm` = `lq`.`codigodelcliente`) and (`lq`.`contrata` not in (442,429,457)) and ((to_days(`lq`.`fecharegistro`) - to_days(`a`.`fechahora`)) = 0)))) where (((to_days(now()) - to_days(`a`.`fechahora`)) <= 15) and (`a`.`usuario` not in ('rfalla','jargotes'))) group by `a`.`idclientecrm`,substr(`a`.`fechahora`,1,10)) */;

/*View structure for view resumen_comparativo */

/*!50001 DROP TABLE IF EXISTS `resumen_comparativo` */;
/*!50001 DROP VIEW IF EXISTS `resumen_comparativo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_comparativo` AS (select `a`.`dia` AS `dia`,`a`.`Averia` AS `AvConBandeja`,`b`.`Averia` AS `AvSinBandeja`,`a`.`Solucion` AS `SolConBandeja`,`b`.`Solucion` AS `SolSinBandeja`,`a`.`Total` AS `TotalArbol`,`a`.`Porc` AS `PorConBandeja`,`b`.`Porc` AS `PorSinBandeja`,`c`.`Averias_Total` AS `Averias_Total`,round(((`a`.`Averia` / `c`.`Averias_Total`) * 100),2) AS `PorcAveriasArbol`,`r`.`reit` AS `Reiteradas` from (((`arboldecisiones`.`resumen_view` `a` left join `arboldecisiones`.`resumen_view_snbandejas` `b` on((`a`.`dia` = `b`.`dia`))) left join `arboldecisiones`.`averxdia_view` `c` on((`a`.`dia` = `c`.`dia`))) left join `arboldecisiones`.`resumen_reitxdia_view` `r` on((`a`.`dia` = `r`.`dia`)))) */;

/*View structure for view resumen_reitxdia_view */

/*!50001 DROP TABLE IF EXISTS `resumen_reitxdia_view` */;
/*!50001 DROP VIEW IF EXISTS `resumen_reitxdia_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_reitxdia_view` AS (select `reiteradasxdia_view`.`dia` AS `dia`,count(0) AS `reit` from `arboldecisiones`.`reiteradasxdia_view` group by `reiteradasxdia_view`.`dia`) */;

/*View structure for view resumen_view */

/*!50001 DROP TABLE IF EXISTS `resumen_view` */;
/*!50001 DROP VIEW IF EXISTS `resumen_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_view` AS (select `reporte_arbol_view`.`DIA` AS `dia`,sum(if((`reporte_arbol_view`.`estado` = 'A'),1,0)) AS `Averia`,sum(if((`reporte_arbol_view`.`estado` = 'A'),0,1)) AS `Solucion`,count(0) AS `Total`,(round((sum(if((`reporte_arbol_view`.`estado` = 'A'),0,1)) / count(0)),2) * 100) AS `Porc` from `arboldecisiones`.`reporte_arbol_view` group by `reporte_arbol_view`.`DIA`) */;

/*View structure for view resumen_view_snbandejas */

/*!50001 DROP TABLE IF EXISTS `resumen_view_snbandejas` */;
/*!50001 DROP VIEW IF EXISTS `resumen_view_snbandejas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `resumen_view_snbandejas` AS (select `reporte_arbol_view_snbandejas`.`DIA` AS `dia`,sum(if((`reporte_arbol_view_snbandejas`.`estado` = 'A'),1,0)) AS `Averia`,sum(if((`reporte_arbol_view_snbandejas`.`estado` = 'A'),0,1)) AS `Solucion`,count(0) AS `Total`,(round((sum(if((`reporte_arbol_view_snbandejas`.`estado` = 'A'),0,1)) / count(0)),2) * 100) AS `Porc` from `arboldecisiones`.`reporte_arbol_view_snbandejas` group by `reporte_arbol_view_snbandejas`.`DIA`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
