/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - intercambioIW
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`intercambioIW` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `intercambioIW`;

/*Table structure for table `clientes_desconciliados_inicial` */

DROP TABLE IF EXISTS `clientes_desconciliados_inicial`;

CREATE TABLE `clientes_desconciliados_inicial` (
  `idclientecrm` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `fecha_cambio` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idclientecrm`,`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `UsuariosMulticonsultaView` */

DROP TABLE IF EXISTS `UsuariosMulticonsultaView`;

/*!50001 DROP VIEW IF EXISTS `UsuariosMulticonsultaView` */;
/*!50001 DROP TABLE IF EXISTS `UsuariosMulticonsultaView` */;

/*!50001 CREATE TABLE  `UsuariosMulticonsultaView`(
 `idusuario` int(10) unsigned ,
 `usuario` varchar(50) ,
 `estado` varchar(8) ,
 `empresa` varchar(50) ,
 `area` varchar(20) ,
 `dni` varchar(20) ,
 `nombre` varchar(100) ,
 `correo` varchar(100) ,
 `celular` varchar(9) ,
 `idpromotor` int(11) 
)*/;

/*Table structure for table `cgnat_a_cpe_view` */

DROP TABLE IF EXISTS `cgnat_a_cpe_view`;

/*!50001 DROP VIEW IF EXISTS `cgnat_a_cpe_view` */;
/*!50001 DROP TABLE IF EXISTS `cgnat_a_cpe_view` */;

/*!50001 CREATE TABLE  `cgnat_a_cpe_view`(
 `idclientecrm` int(11) ,
 `fecha_cambio` varchar(20) ,
 `idusuario` int(11) ,
 `porque` varchar(100) ,
 `idproducto` double 
)*/;

/*Table structure for table `cgnat_cpe_view_2` */

DROP TABLE IF EXISTS `cgnat_cpe_view_2`;

/*!50001 DROP VIEW IF EXISTS `cgnat_cpe_view_2` */;
/*!50001 DROP TABLE IF EXISTS `cgnat_cpe_view_2` */;

/*!50001 CREATE TABLE  `cgnat_cpe_view_2`(
 `idclientecrm` int(11) ,
 `fecha_cambio` varchar(20) ,
 `idusuario` int(11) ,
 `porque` varchar(100) ,
 `idproducto` double 
)*/;

/*View structure for view UsuariosMulticonsultaView */

/*!50001 DROP TABLE IF EXISTS `UsuariosMulticonsultaView` */;
/*!50001 DROP VIEW IF EXISTS `UsuariosMulticonsultaView` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `UsuariosMulticonsultaView` AS (select `us`.`idusuario` AS `idusuario`,`us`.`usuario` AS `usuario`,if((`us`.`estado` = 'A'),'Activo','Inactivo') AS `estado`,`us`.`empresa` AS `empresa`,`us`.`area` AS `area`,`us`.`dni` AS `dni`,`us`.`nombre` AS `nombre`,`us`.`correo` AS `correo`,`us`.`celular` AS `celular`,`us`.`idPromotor` AS `idpromotor` from `ccm1`.`usuarios` `us`) */;

/*View structure for view cgnat_a_cpe_view */

/*!50001 DROP TABLE IF EXISTS `cgnat_a_cpe_view` */;
/*!50001 DROP VIEW IF EXISTS `cgnat_a_cpe_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `cgnat_a_cpe_view` AS (select `multiconsulta`.`cgnat_a_cpe`.`idclientecrm` AS `idclientecrm`,`multiconsulta`.`cgnat_a_cpe`.`fecha_cambio` AS `fecha_cambio`,`multiconsulta`.`cgnat_a_cpe`.`idusuario` AS `idusuario`,`multiconsulta`.`cgnat_a_cpe`.`porque` AS `porque`,`multiconsulta`.`cgnat_a_cpe`.`idproducto` AS `idproducto` from `multiconsulta`.`cgnat_a_cpe` where (`multiconsulta`.`cgnat_a_cpe`.`porque` = 'CAMARA')) */;

/*View structure for view cgnat_cpe_view_2 */

/*!50001 DROP TABLE IF EXISTS `cgnat_cpe_view_2` */;
/*!50001 DROP VIEW IF EXISTS `cgnat_cpe_view_2` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `cgnat_cpe_view_2` AS (select `multiconsulta`.`cgnat_a_cpe`.`idclientecrm` AS `idclientecrm`,`multiconsulta`.`cgnat_a_cpe`.`fecha_cambio` AS `fecha_cambio`,`multiconsulta`.`cgnat_a_cpe`.`idusuario` AS `idusuario`,`multiconsulta`.`cgnat_a_cpe`.`porque` AS `porque`,`multiconsulta`.`cgnat_a_cpe`.`idproducto` AS `idproducto` from `multiconsulta`.`cgnat_a_cpe`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
