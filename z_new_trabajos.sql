/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - z_new_trabajos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_new_trabajos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_new_trabajos`;

/*Table structure for table `asign_trabajos_supervidor` */

DROP TABLE IF EXISTS `asign_trabajos_supervidor`;

CREATE TABLE `asign_trabajos_supervidor` (
  `id` int(11) NOT NULL,
  `idsupervisor` int(11) DEFAULT NULL,
  `idtrabajos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `nodo_troba` */

DROP TABLE IF EXISTS `nodo_troba`;

CREATE TABLE `nodo_troba` (
  `nodo` varchar(4) DEFAULT NULL,
  `plano` varchar(5) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`plano`),
  KEY `nodo` (`nodo`),
  KEY `plano` (`plano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `supervisor` */

DROP TABLE IF EXISTS `supervisor`;

CREATE TABLE `supervisor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supervisor` varchar(150) DEFAULT NULL,
  `supervisor1` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_trabajos_programados` */

DROP TABLE IF EXISTS `tipo_trabajos_programados`;

CREATE TABLE `tipo_trabajos_programados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodetrabajo` varchar(200) NOT NULL DEFAULT '',
  `tipodetrabajo1` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NewIndex1` (`tipodetrabajo1`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Table structure for table `trabajo` */

DROP TABLE IF EXISTS `trabajo`;

CREATE TABLE `trabajo` (
  `trabajo` varchar(100) DEFAULT NULL,
  KEY `NewIndex1` (`trabajo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados` */

DROP TABLE IF EXISTS `trabajos_programados`;

CREATE TABLE `trabajos_programados` (
  `ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `AMP` varchar(80) DEFAULT NULL,
  `TIPODETRABAJO` varchar(200) DEFAULT NULL,
  `SUPERVISOR` varchar(150) DEFAULT NULL,
  `FINICIO` varchar(20) DEFAULT NULL,
  `HINICIO` varchar(10) DEFAULT NULL,
  `HTERMINO` varchar(10) DEFAULT NULL,
  `HORARIO` varchar(10) DEFAULT NULL,
  `CORTESN` varchar(10) DEFAULT NULL,
  `OPERADOR` varchar(100) DEFAULT NULL,
  `FECHA` varchar(20) DEFAULT NULL,
  `HORA` varchar(10) DEFAULT NULL,
  `TRABAJO` varchar(100) DEFAULT NULL,
  `REMEDY` varchar(20) DEFAULT NULL,
  `TECNICO` varchar(100) DEFAULT NULL,
  `RPM` varchar(10) DEFAULT NULL,
  `CONTRATA` varchar(50) DEFAULT NULL,
  `HORACIERRE` varchar(10) DEFAULT NULL,
  `OBSERVACIONES` varchar(500) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `fecha_apertura` varchar(20) DEFAULT NULL,
  `fecha_cierre` varchar(20) DEFAULT NULL,
  `fecha_cancela` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `usuario_apertura` varchar(20) DEFAULT NULL,
  `usuario_cierre` varchar(20) DEFAULT NULL,
  `usuario_cancela` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`),
  KEY `ESTADO` (`ESTADO`),
  KEY `SUPERVISOR` (`SUPERVISOR`)
) ENGINE=MyISAM AUTO_INCREMENT=59043 DEFAULT CHARSET=latin1;

/*Table structure for table `digitalizacion_view` */

DROP TABLE IF EXISTS `digitalizacion_view`;

/*!50001 DROP VIEW IF EXISTS `digitalizacion_view` */;
/*!50001 DROP TABLE IF EXISTS `digitalizacion_view` */;

/*!50001 CREATE TABLE  `digitalizacion_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(10) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(20) ,
 `fecha_cierre` varchar(20) ,
 `fecha_registro` varchar(20) ,
 `MENSAJE` varchar(56) 
)*/;

/*Table structure for table `trabajos_pendientes_view` */

DROP TABLE IF EXISTS `trabajos_pendientes_view`;

/*!50001 DROP VIEW IF EXISTS `trabajos_pendientes_view` */;
/*!50001 DROP TABLE IF EXISTS `trabajos_pendientes_view` */;

/*!50001 CREATE TABLE  `trabajos_pendientes_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(10) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(20) 
)*/;

/*View structure for view digitalizacion_view */

/*!50001 DROP TABLE IF EXISTS `digitalizacion_view` */;
/*!50001 DROP VIEW IF EXISTS `digitalizacion_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `digitalizacion_view` AS (select `a`.`NODO` AS `nodo`,`a`.`TROBA` AS `troba`,`a`.`TIPODETRABAJO` AS `TIPODETRABAJO`,`a`.`ESTADO` AS `ESTADO`,max(`a`.`FINICIO`) AS `finicio`,max(`a`.`fecha_apertura`) AS `fecha_apertura`,max(`a`.`fecha_cierre`) AS `fecha_cierre`,max(`a`.`fecha_registro`) AS `fecha_registro`,if((((to_days(now()) - to_days(max(`a`.`fecha_registro`))) <= 8) and (`b`.`sede` = 'LIMA')),'<b>Generar Rutina I128</b></br>DIGITALIZACION NUEVA</BR>',if((((to_days(now()) - to_days(max(`a`.`fecha_registro`))) <= 15) and (`b`.`sede` <> 'LIMA')),'DIGITALIZACION NUEVA</br><b>Generar Rutina I128</b></BR>','DIGITALIZACION ANTIGUA')) AS `MENSAJE` from (`z_new_trabajos`.`trabajos_programados` `a` join `z_new_ccm`.`zonales_nodos_eecc` `b` on((`a`.`NODO` = `b`.`nodo`))) where (((`a`.`TIPODETRABAJO` = 'DIGITALIZACION') or (`a`.`TIPODETRABAJO` = 13)) and (`a`.`ESTADO` not in ('CANCELADO','PENDIENTE')) and (`a`.`NODO` in ('A1','A2','A3','A4','A5','A6','A7','A8','A9','AR','CU'))) group by `a`.`NODO`,`a`.`TROBA` order by `a`.`NODO`,`a`.`TROBA`,`a`.`fecha_registro` desc) */;

/*View structure for view trabajos_pendientes_view */

/*!50001 DROP TABLE IF EXISTS `trabajos_pendientes_view` */;
/*!50001 DROP VIEW IF EXISTS `trabajos_pendientes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `trabajos_pendientes_view` AS (select `trabajos_programados`.`NODO` AS `nodo`,`trabajos_programados`.`TROBA` AS `troba`,`trabajos_programados`.`TIPODETRABAJO` AS `TIPODETRABAJO`,`trabajos_programados`.`ESTADO` AS `ESTADO`,`trabajos_programados`.`FINICIO` AS `finicio`,`trabajos_programados`.`fecha_apertura` AS `fecha_apertura` from `trabajos_programados` where (((to_days(now()) - to_days(`trabajos_programados`.`FINICIO`)) <= 0) and (`trabajos_programados`.`ESTADO` = 'ENPROCESO')) group by `trabajos_programados`.`NODO`,`trabajos_programados`.`TROBA`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
