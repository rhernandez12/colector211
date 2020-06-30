/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - system_prueba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`system_prueba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `system_prueba`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `idarea` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `idempresa` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Table structure for table `modulos` */

DROP TABLE IF EXISTS `modulos`;

CREATE TABLE `modulos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `icon` char(25) DEFAULT NULL,
  `documentation` varchar(100) NOT NULL,
  `estatus` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `perfil` */

DROP TABLE IF EXISTS `perfil`;

CREATE TABLE `perfil` (
  `idperfil` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idperfil`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Table structure for table `prueba_test` */

DROP TABLE IF EXISTS `prueba_test`;

CREATE TABLE `prueba_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contenido` varchar(125) NOT NULL,
  `caracter` char(50) NOT NULL,
  `numeros` decimal(25,10) NOT NULL,
  `fecha` datetime NOT NULL,
  `fecha_char` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `sesiones_log` */

DROP TABLE IF EXISTS `sesiones_log`;

CREATE TABLE `sesiones_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL,
  `ip` varchar(50) NOT NULL,
  `sesion` varchar(250) NOT NULL,
  `fecha_mov` datetime NOT NULL,
  `estado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sesion_user` (`idusuario`),
  CONSTRAINT `fk_sesion_user` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `sesiones_usuario` */

DROP TABLE IF EXISTS `sesiones_usuario`;

CREATE TABLE `sesiones_usuario` (
  `idsesiones` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL,
  `ip` varchar(100) NOT NULL,
  `sesion` varchar(250) NOT NULL,
  `fecha_mov` datetime NOT NULL,
  PRIMARY KEY (`idsesiones`),
  KEY `idsesiones` (`idsesiones`),
  KEY `sesion_us` (`idusuario`),
  CONSTRAINT `sesion_us` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `update_user_password` */

DROP TABLE IF EXISTS `update_user_password`;

CREATE TABLE `update_user_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL,
  `clave` varchar(150) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `idusuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `dni` int(12) unsigned NOT NULL,
  `idempresa` int(3) unsigned NOT NULL,
  `idarea` int(2) unsigned NOT NULL,
  `idperfil` int(2) unsigned NOT NULL,
  `estado` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fechainic` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `cambio` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `NewIndex1` (`usuario`),
  KEY `NewIndex2` (`idempresa`),
  KEY `NewIndex3` (`idarea`),
  KEY `NewIndex4` (`idperfil`),
  CONSTRAINT `Usuario_Area` FOREIGN KEY (`idarea`) REFERENCES `area` (`idarea`),
  CONSTRAINT `Usuario_Empresa` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`),
  CONSTRAINT `Usuario_Perfil` FOREIGN KEY (`idperfil`) REFERENCES `perfil` (`idperfil`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/* Trigger structure for table `sesiones_usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tgr_create_sesion_log` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'rfalla'@'%' */ /*!50003 TRIGGER `tgr_create_sesion_log` AFTER INSERT ON `sesiones_usuario` FOR EACH ROW 
	insert into system_prueba.`sesiones_log` values(null,NEW.idusuario,NEW.ip,NEW.sesion,NEW.fecha_mov,'creado') */$$


DELIMITER ;

/* Trigger structure for table `sesiones_usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tgr_update_sesion_log` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'rfalla'@'%' */ /*!50003 TRIGGER `tgr_update_sesion_log` BEFORE UPDATE ON `sesiones_usuario` FOR EACH ROW 
	INSERT INTO system_prueba.`sesiones_log` VALUES(NULL,NEW.idusuario,NEW.ip,NEW.sesion,NEW.fecha_mov,'ACTUALIZADO') */$$


DELIMITER ;

/* Trigger structure for table `usuario` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tgr_update_usuario_pass` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'rfalla'@'%' */ /*!50003 TRIGGER `tgr_update_usuario_pass` BEFORE UPDATE ON `usuario` FOR EACH ROW BEGIN
     IF NEW.clave <> OLD.clave THEN
	INSERT INTO system_prueba.`update_user_password` VALUES(0,OLD.idusuario,NEW.clave,now());
     END IF;
     END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
