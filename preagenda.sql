/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - preagenda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`preagenda` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `preagenda`;

/*Table structure for table `agendas_mov` */

DROP TABLE IF EXISTS `agendas_mov`;

CREATE TABLE `agendas_mov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idagenda` int(11) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `quiebre` varchar(80) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `fechamov` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idagenda` (`idagenda`)
) ENGINE=MyISAM AUTO_INCREMENT=29953 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuposxnodo` */

DROP TABLE IF EXISTS `cuposxnodo`;

CREATE TABLE `cuposxnodo` (
  `cupoxturno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dia` */

DROP TABLE IF EXISTS `dia`;

CREATE TABLE `dia` (
  `fecha` varchar(10) NOT NULL,
  `dia` varchar(20) NOT NULL,
  PRIMARY KEY (`fecha`,`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `estados` */

DROP TABLE IF EXISTS `estados`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` char(80) DEFAULT NULL,
  `sw` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `nodocupos` */

DROP TABLE IF EXISTS `nodocupos`;

CREATE TABLE `nodocupos` (
  `nodo` varchar(2) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `turno` varchar(8) DEFAULT NULL,
  `cupo` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`fecha`,`turno`),
  KEY `nodo_2` (`nodo`),
  KEY `fecha` (`fecha`),
  KEY `turno` (`turno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `preagenda` */

DROP TABLE IF EXISTS `preagenda`;

CREATE TABLE `preagenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codcli` int(11) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `telefono1` int(10) DEFAULT NULL,
  `telefono2` int(10) DEFAULT NULL,
  `nameclient` varchar(150) DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `rangohorario` varchar(10) DEFAULT NULL,
  `tipoagenda` varchar(2) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `quiebre` varchar(80) DEFAULT NULL,
  `fecharegistroagenda` varchar(20) DEFAULT NULL,
  `tipocliagenda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codcli` (`codcli`),
  KEY `nodo` (`nodo`),
  KEY `telefono1` (`telefono1`),
  KEY `telefono2` (`telefono2`),
  KEY `codreq` (`codreq`)
) ENGINE=MyISAM AUTO_INCREMENT=30724 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `quiebre` */

DROP TABLE IF EXISTS `quiebre`;

CREATE TABLE `quiebre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiebre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `rangohorario` */

DROP TABLE IF EXISTS `rangohorario`;

CREATE TABLE `rangohorario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idturno` int(11) NOT NULL,
  `turno` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`,`idturno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tipoturno` */

DROP TABLE IF EXISTS `tipoturno`;

CREATE TABLE `tipoturno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipoturno` varchar(30) DEFAULT NULL,
  `idrangohorario` int(11) NOT NULL,
  `tipoagenda` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`idrangohorario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
