/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - eqp_venta
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eqp_venta` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eqp_venta`;

/*Table structure for table `back_liquidacion` */

DROP TABLE IF EXISTS `back_liquidacion`;

CREATE TABLE `back_liquidacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requerimiento` int(11) NOT NULL,
  `contacto` varchar(15) DEFAULT NULL,
  `user_contact` varchar(35) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_servicio` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `requer_unique` (`requerimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `back_venta` */

DROP TABLE IF EXISTS `back_venta`;

CREATE TABLE `back_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` enum('SI','NO') NOT NULL,
  `observacion` varchar(500) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `liquidacion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `liquidacion_key` (`liquidacion_id`),
  CONSTRAINT `liquidacion_key` FOREIGN KEY (`liquidacion_id`) REFERENCES `back_liquidacion` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
