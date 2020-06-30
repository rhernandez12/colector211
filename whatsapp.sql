/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - whatsapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`whatsapp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `whatsapp`;

/*Table structure for table `catalogo_chat` */

DROP TABLE IF EXISTS `catalogo_chat`;

CREATE TABLE `catalogo_chat` (
  `chat` varchar(600) DEFAULT NULL,
  `catalogo` bigint(21) NOT NULL,
  `catalogochat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `fechahora` varchar(20) DEFAULT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `operador` varchar(50) DEFAULT NULL,
  `iditem` int(11) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  `chat` varchar(600) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `catalogacion` varchar(100) DEFAULT NULL,
  KEY `fechahora` (`fechahora`,`origen`),
  KEY `origen` (`origen`),
  KEY `numero` (`numero`),
  KEY `catalogacion` (`catalogacion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_movil` */

DROP TABLE IF EXISTS `planta_movil`;

CREATE TABLE `planta_movil` (
  `TELEFONO` int(11) DEFAULT NULL,
  `TIPO_PROD` varchar(20) DEFAULT NULL,
  `tipo_doc` varchar(20) DEFAULT NULL,
  `Nro_doc` varchar(10) DEFAULT NULL,
  `Estado` varchar(200) DEFAULT NULL,
  KEY `Nro_doc` (`Nro_doc`),
  KEY `tipo_doc` (`tipo_doc`),
  KEY `TELEFONO` (`TELEFONO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `planta_whatsapp` */

DROP TABLE IF EXISTS `planta_whatsapp`;

CREATE TABLE `planta_whatsapp` (
  `cliente` int(10) DEFAULT NULL,
  `NODO` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `apmlificador` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `NUMERODOC` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  KEY `cliente` (`cliente`),
  KEY `NODO` (`NODO`),
  KEY `troba` (`troba`),
  KEY `apmlificador` (`apmlificador`),
  KEY `NUMERODOC` (`NUMERODOC`),
  KEY `TELEFONO` (`TELEFONO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `query` */

DROP TABLE IF EXISTS `query`;

CREATE TABLE `query` (
  `detalle` varchar(100) DEFAULT NULL,
  `query` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `rep_atencion` */

DROP TABLE IF EXISTS `rep_atencion`;

CREATE TABLE `rep_atencion` (
  `IdCaso` int(11) DEFAULT NULL,
  `Operador_Abre` varchar(50) DEFAULT NULL,
  `Grupo` varchar(30) DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Proveedor_Abre` varchar(40) DEFAULT NULL,
  `Skill` varchar(80) DEFAULT NULL,
  `Operador_Cierra` varchar(40) DEFAULT NULL,
  `Nombre_Operador_Cierra` varchar(40) DEFAULT NULL,
  `Proveedor_Cierra` varchar(50) DEFAULT NULL,
  `IdUsuario` varchar(40) DEFAULT NULL,
  `Canal` varchar(30) DEFAULT NULL,
  `Evento1` varchar(30) DEFAULT NULL,
  `Tiempo1` varchar(20) DEFAULT NULL,
  `Evento2` varchar(30) DEFAULT NULL,
  `Tiempo2` varchar(20) DEFAULT NULL,
  `Duracion` varchar(10) DEFAULT NULL,
  `Tipologia` varchar(250) DEFAULT NULL,
  `1raRespuesta` varchar(50) DEFAULT NULL,
  `1erMensaje` varchar(20) DEFAULT NULL,
  `TiempoCola` varchar(10) DEFAULT NULL,
  `Esperacliente` int(11) DEFAULT NULL,
  `MensajesOperador` int(11) DEFAULT NULL,
  `Mensajescliente` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  UNIQUE KEY `IdCaso_2` (`IdCaso`,`IdUsuario`,`Tiempo1`,`Tiempo2`),
  KEY `IdCaso` (`IdCaso`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `telefono` (`telefono`),
  KEY `Evento1` (`Evento1`),
  KEY `Evento2` (`Evento2`),
  KEY `Tiempo1` (`Tiempo1`),
  KEY `Tiempo2` (`Tiempo2`),
  KEY `Duracion` (`Duracion`),
  KEY `1erMensaje` (`1erMensaje`),
  KEY `TiempoCola` (`TiempoCola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
