/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - robosydanos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`robosydanos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `robosydanos`;

/*Table structure for table `CR_mensual` */

DROP TABLE IF EXISTS `CR_mensual`;

CREATE TABLE `CR_mensual` (
  `Mes` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `planta` decimal(63,0) DEFAULT NULL,
  `llamadas` decimal(63,0) DEFAULT NULL,
  `CR` decimal(65,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ContactRate` */

DROP TABLE IF EXISTS `ContactRate`;

CREATE TABLE `ContactRate` (
  `fecha` varchar(20) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observacion` varchar(500) NOT NULL DEFAULT '',
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `clientes` varchar(20) NOT NULL DEFAULT '',
  `llamadas` varchar(15) NOT NULL DEFAULT '',
  `CR` varchar(50) NOT NULL DEFAULT '',
  `longitud` varchar(100) NOT NULL DEFAULT '',
  `latitud` varchar(50) NOT NULL DEFAULT '',
  `region` varchar(30) DEFAULT NULL,
  `jefatura` varchar(30) DEFAULT NULL,
  `nodo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ContactRate2` */

DROP TABLE IF EXISTS `ContactRate2`;

CREATE TABLE `ContactRate2` (
  `fecha` varchar(20) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observacion` varchar(500) NOT NULL DEFAULT '',
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `clientes` varchar(20) NOT NULL DEFAULT '',
  `llamadas` varchar(15) NOT NULL DEFAULT '',
  `CR` decimal(10,1) DEFAULT NULL,
  `longitud` varchar(100) NOT NULL DEFAULT '',
  `latitud` varchar(50) NOT NULL DEFAULT '',
  `region` varchar(30) DEFAULT NULL,
  `jefatura` varchar(30) DEFAULT NULL,
  `nodo` varchar(30) DEFAULT NULL,
  `idcausa` varchar(30) DEFAULT NULL,
  `causa` varchar(100) DEFAULT NULL,
  `mes` varchar(30) DEFAULT NULL,
  `llamadas_R` varchar(30) DEFAULT NULL,
  `CR_R` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `JULIO` */

DROP TABLE IF EXISTS `JULIO`;

CREATE TABLE `JULIO` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `nro_cli` float DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  `mes` varchar(20) DEFAULT NULL,
  `semana` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `REGION` */

DROP TABLE IF EXISTS `REGION`;

CREATE TABLE `REGION` (
  `region` varchar(20) NOT NULL DEFAULT '',
  `jefatura` varchar(20) NOT NULL DEFAULT '',
  `nodo` varchar(15) NOT NULL DEFAULT '',
  `nodotroba` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `RYD` */

DROP TABLE IF EXISTS `RYD`;

CREATE TABLE `RYD` (
  `PTR` varchar(20) NOT NULL DEFAULT '',
  `EST_INNOVA` varchar(50) NOT NULL DEFAULT '',
  `IMPUTACION` varchar(15) NOT NULL DEFAULT '',
  `TIPO_DE_PLANTA` varchar(50) NOT NULL DEFAULT '',
  `TIPO_DE_PROYECTO` varchar(100) NOT NULL DEFAULT '',
  `CATEGORIA` varchar(50) NOT NULL DEFAULT '',
  `TITULO_DE_TRABAJO` varchar(500) NOT NULL DEFAULT '',
  `JEFATURA_PTR` varchar(20) NOT NULL DEFAULT '',
  `JEFATURA` varchar(20) NOT NULL DEFAULT '',
  `ZONAL` varchar(10) NOT NULL DEFAULT '',
  `MDF` varchar(10) NOT NULL DEFAULT '',
  `F_APROB` varchar(30) NOT NULL DEFAULT '',
  `Cco` varchar(20) NOT NULL DEFAULT '',
  `AF` varchar(20) NOT NULL DEFAULT '',
  `GRAFO` varchar(20) NOT NULL DEFAULT '',
  `EECC` varchar(20) NOT NULL DEFAULT '',
  `PTO_CAN` varchar(20) NOT NULL DEFAULT '',
  `PTO_CEL` varchar(20) NOT NULL DEFAULT '',
  `PTO_EMP` varchar(20) NOT NULL DEFAULT '',
  `Valoriz_M_Obra_igv` varchar(30) NOT NULL DEFAULT '',
  `Valoriz_Material` varchar(30) NOT NULL DEFAULT '',
  `VR` varchar(300) NOT NULL DEFAULT '',
  `VD` varchar(300) NOT NULL DEFAULT '',
  `PEP` varchar(50) NOT NULL DEFAULT '',
  `SOLPE` varchar(20) NOT NULL DEFAULT '',
  `H_GESTION` varchar(30) NOT NULL DEFAULT '',
  `F_HG` varchar(20) NOT NULL DEFAULT '',
  `OBS` varchar(500) NOT NULL DEFAULT '',
  `DEPARTAMENTO` varchar(20) NOT NULL DEFAULT '',
  `PROVINCIA` varchar(20) NOT NULL DEFAULT '',
  `DISTRITO` varchar(20) NOT NULL DEFAULT '',
  `F_ULT_EST` varchar(20) NOT NULL DEFAULT '',
  `F_CREAC_PROP` varchar(20) NOT NULL DEFAULT '',
  `USU_REGISTRO` varchar(20) NOT NULL DEFAULT '',
  `MONTO_LICENCIA` varchar(20) NOT NULL DEFAULT '',
  KEY `PTR` (`PTR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `RYD2` */

DROP TABLE IF EXISTS `RYD2`;

CREATE TABLE `RYD2` (
  `PTR` varchar(20) NOT NULL DEFAULT '',
  `EST_INNOVA` varchar(50) NOT NULL DEFAULT '',
  `IMPUTACION` varchar(15) NOT NULL DEFAULT '',
  `TIPO_DE_PLANTA` varchar(50) NOT NULL DEFAULT '',
  `TIPO_DE_PROYECTO` varchar(100) NOT NULL DEFAULT '',
  `CATEGORIA` varchar(50) NOT NULL DEFAULT '',
  `TITULO_DE_TRABAJO` varchar(500) NOT NULL DEFAULT '',
  `JEFATURA_PTR` varchar(20) NOT NULL DEFAULT '',
  `JEFATURA` varchar(20) NOT NULL DEFAULT '',
  `ZONAL` varchar(10) NOT NULL DEFAULT '',
  `MDF` varchar(10) NOT NULL DEFAULT '',
  `F_APROB` varchar(30) NOT NULL DEFAULT '',
  `Cco` varchar(20) NOT NULL DEFAULT '',
  `AF` varchar(20) NOT NULL DEFAULT '',
  `GRAFO` varchar(20) NOT NULL DEFAULT '',
  `EECC` varchar(20) NOT NULL DEFAULT '',
  `PTO_CAN` varchar(20) NOT NULL DEFAULT '',
  `PTO_CEL` varchar(20) NOT NULL DEFAULT '',
  `PTO_EMP` varchar(20) NOT NULL DEFAULT '',
  `Valoriz_M_Obra_igv` varchar(30) NOT NULL DEFAULT '',
  `Valoriz_Material` varchar(30) NOT NULL DEFAULT '',
  `VR` varchar(300) NOT NULL DEFAULT '',
  `VD` varchar(300) NOT NULL DEFAULT '',
  `PEP` varchar(50) NOT NULL DEFAULT '',
  `SOLPE` varchar(20) NOT NULL DEFAULT '',
  `H_GESTION` varchar(30) NOT NULL DEFAULT '',
  `F_HG` varchar(20) NOT NULL DEFAULT '',
  `OBS` varchar(500) NOT NULL DEFAULT '',
  `DEPARTAMENTO` varchar(20) NOT NULL DEFAULT '',
  `PROVINCIA` varchar(20) NOT NULL DEFAULT '',
  `DISTRITO` varchar(20) NOT NULL DEFAULT '',
  `F_ULT_EST` varchar(20) NOT NULL DEFAULT '',
  `F_CREAC_PROP` varchar(20) NOT NULL DEFAULT '',
  `USU_REGISTRO` varchar(20) NOT NULL DEFAULT '',
  `MONTO_LICENCIA` varchar(20) NOT NULL DEFAULT '',
  `año` int(4) DEFAULT NULL,
  `dia_ap` int(3) DEFAULT NULL,
  `mes_ap` varchar(30) NOT NULL DEFAULT '',
  `dia_cre` int(3) DEFAULT NULL,
  `mes_cre` varchar(30) NOT NULL DEFAULT '',
  `total` decimal(10,4) DEFAULT NULL,
  `mes_ap_orden` int(3) DEFAULT NULL,
  `mes_cre_orden` int(3) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `averias` */

DROP TABLE IF EXISTS `averias`;

CREATE TABLE `averias` (
  `codigo_req` varchar(20) NOT NULL DEFAULT '',
  `codigomotivoreq` varchar(20) NOT NULL DEFAULT '',
  `desc_motivo` varchar(20) NOT NULL DEFAULT '',
  `tipo_act` varchar(20) NOT NULL DEFAULT '',
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `servicio` varchar(20) NOT NULL DEFAULT '',
  `año` varchar(20) NOT NULL DEFAULT '',
  `dia` varchar(20) NOT NULL DEFAULT '',
  `mes` varchar(20) NOT NULL DEFAULT '',
  `dia_c` varchar(20) NOT NULL DEFAULT '',
  `mes_c` varchar(20) NOT NULL DEFAULT '',
  `llave` varchar(20) NOT NULL DEFAULT '',
  `FECHAREGISTRO` varchar(20) NOT NULL DEFAULT '',
  `REGION` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `borrar_llamadas` */

DROP TABLE IF EXISTS `borrar_llamadas`;

CREATE TABLE `borrar_llamadas` (
  `InteractionID` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecha` varchar(10) CHARACTER SET utf8 NOT NULL,
  `nac_unificado` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `plataforma` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tiposerv` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nodotroba` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `region` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `origen` varchar(16) CHARACTER SET utf8 NOT NULL,
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `nro_cli` float DEFAULT NULL,
  `repetidas` int(10) DEFAULT NULL,
  KEY `troba_fecha` (`troba_fecha`),
  KEY `cod_fecha` (`cod_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `borrar_llamadas_copy` */

DROP TABLE IF EXISTS `borrar_llamadas_copy`;

CREATE TABLE `borrar_llamadas_copy` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `llamadas` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `borrar_llamadas_copy_06` */

DROP TABLE IF EXISTS `borrar_llamadas_copy_06`;

CREATE TABLE `borrar_llamadas_copy_06` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `nro_cli` float DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `borrar_llamadas_copy_07` */

DROP TABLE IF EXISTS `borrar_llamadas_copy_07`;

CREATE TABLE `borrar_llamadas_copy_07` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `nro_cli` float DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  `semana` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `borrar_llamadas_copy_09` */

DROP TABLE IF EXISTS `borrar_llamadas_copy_09`;

CREATE TABLE `borrar_llamadas_copy_09` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `llamadas` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `borrar_llamadas_copy_8` */

DROP TABLE IF EXISTS `borrar_llamadas_copy_8`;

CREATE TABLE `borrar_llamadas_copy_8` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `nro_cli` float DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `clienteshfc_x_troba` */

DROP TABLE IF EXISTS `clienteshfc_x_troba`;

CREATE TABLE `clienteshfc_x_troba` (
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(100) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `desnodo` varchar(40) NOT NULL DEFAULT '',
  `cmts` varchar(35) NOT NULL DEFAULT '',
  `region` varchar(20) NOT NULL DEFAULT '',
  `jefatura` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `grupo_microzona` varchar(15) NOT NULL DEFAULT '',
  `NODOTROBA` varchar(20) NOT NULL DEFAULT '',
  KEY `clave` (`clave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `contact_rate` */

DROP TABLE IF EXISTS `contact_rate`;

CREATE TABLE `contact_rate` (
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(17) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `mes` varchar(10) NOT NULL DEFAULT '',
  `ABANDONO` decimal(10,0) NOT NULL DEFAULT '0',
  `llamadas` decimal(41,0) DEFAULT NULL,
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefatura` varchar(25) NOT NULL DEFAULT '',
  `nombre_CMTS_OLT` varchar(30) NOT NULL DEFAULT '',
  `marca_CMTS_OLT` varchar(20) NOT NULL DEFAULT '',
  `marca_TROBA` varchar(20) NOT NULL DEFAULT '',
  `respaldo_energia` varchar(25) NOT NULL DEFAULT '',
  `respaldo_cabecera` varchar(25) NOT NULL DEFAULT '',
  `indicador` varchar(20) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `grupo_planta` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `dar_det` */

DROP TABLE IF EXISTS `dar_det`;

CREATE TABLE `dar_det` (
  `reg_ptr` varchar(20) NOT NULL DEFAULT '',
  `tc_material` varchar(20) NOT NULL DEFAULT '',
  `cod_obra` varchar(20) NOT NULL DEFAULT '',
  `desc_mat_mo` varchar(300) NOT NULL DEFAULT '',
  `precio_cable` decimal(10,4) DEFAULT NULL,
  `cantidad_cable` decimal(10,4) DEFAULT NULL,
  `preciario` varchar(20) NOT NULL DEFAULT '',
  `baremo` varchar(20) NOT NULL DEFAULT '',
  `tipo_material` varchar(20) NOT NULL DEFAULT '',
  `centro` varchar(10) NOT NULL DEFAULT '',
  `almacen` varchar(10) NOT NULL DEFAULT '',
  `fec_registro` varchar(20) NOT NULL DEFAULT '',
  `usu_registro` varchar(30) NOT NULL DEFAULT '',
  `Jefatura` varchar(20) NOT NULL DEFAULT '',
  `Tip_Planta` varchar(10) NOT NULL DEFAULT '',
  `Contrata` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dar_det1` */

DROP TABLE IF EXISTS `dar_det1`;

CREATE TABLE `dar_det1` (
  `reg_ptr` varchar(20) NOT NULL DEFAULT '',
  `tc_material` varchar(20) NOT NULL DEFAULT '',
  `cod_obra` varchar(20) NOT NULL DEFAULT '',
  `desc_mat_mo` varchar(300) NOT NULL DEFAULT '',
  `precio_cable` decimal(10,4) DEFAULT NULL,
  `cantidad_cable` decimal(10,4) DEFAULT NULL,
  `preciario` varchar(20) NOT NULL DEFAULT '',
  `baremo` varchar(20) NOT NULL DEFAULT '',
  `tipo_material` varchar(20) NOT NULL DEFAULT '',
  `centro` varchar(10) NOT NULL DEFAULT '',
  `almacen` varchar(10) NOT NULL DEFAULT '',
  `fec_registro` varchar(20) NOT NULL DEFAULT '',
  `usu_registro` varchar(30) NOT NULL DEFAULT '',
  `Jefatura` varchar(20) NOT NULL DEFAULT '',
  `Tip_Planta` varchar(10) NOT NULL DEFAULT '',
  `Contrata` varchar(20) NOT NULL DEFAULT '',
  `total_cable` decimal(10,4) DEFAULT NULL,
  `capacidad_cable` varchar(20) NOT NULL DEFAULT '',
  KEY `reg_ptr` (`reg_ptr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `darkoptr` */

DROP TABLE IF EXISTS `darkoptr`;

CREATE TABLE `darkoptr` (
  `PTR` varchar(20) NOT NULL DEFAULT '',
  `EST_INNOVA` varchar(50) NOT NULL DEFAULT '',
  `IMPUTACION` varchar(15) NOT NULL DEFAULT '',
  `TIPO_DE_PLANTA` varchar(50) NOT NULL DEFAULT '',
  `TIPO_DE_PROYECTO` varchar(100) NOT NULL DEFAULT '',
  `CATEGORIA` varchar(50) NOT NULL DEFAULT '',
  `TITULO_DE_TRABAJO` varchar(500) NOT NULL DEFAULT '',
  `JEFATURA_PTR` varchar(20) NOT NULL DEFAULT '',
  `JEFATURA` varchar(20) NOT NULL DEFAULT '',
  `ZONAL` varchar(10) NOT NULL DEFAULT '',
  `MDF` varchar(10) NOT NULL DEFAULT '',
  `F_APROB` varchar(30) NOT NULL DEFAULT '',
  `Cco` varchar(20) NOT NULL DEFAULT '',
  `AF` varchar(20) NOT NULL DEFAULT '',
  `GRAFO` varchar(20) NOT NULL DEFAULT '',
  `EECC` varchar(20) NOT NULL DEFAULT '',
  `PTO_CAN` varchar(20) NOT NULL DEFAULT '',
  `PTO_CEL` varchar(20) NOT NULL DEFAULT '',
  `PTO_EMP` varchar(20) NOT NULL DEFAULT '',
  `Valoriz_M_Obra_igv` varchar(30) NOT NULL DEFAULT '',
  `Valoriz_Material` varchar(30) NOT NULL DEFAULT '',
  `VR` varchar(300) NOT NULL DEFAULT '',
  `VD` varchar(300) NOT NULL DEFAULT '',
  `PEP` varchar(50) NOT NULL DEFAULT '',
  `SOLPE` varchar(20) NOT NULL DEFAULT '',
  `H_GESTION` varchar(30) NOT NULL DEFAULT '',
  `F_HG` varchar(20) NOT NULL DEFAULT '',
  `OBS` varchar(500) NOT NULL DEFAULT '',
  `DEPARTAMENTO` varchar(20) NOT NULL DEFAULT '',
  `PROVINCIA` varchar(20) NOT NULL DEFAULT '',
  `DISTRITO` varchar(20) NOT NULL DEFAULT '',
  `F_ULT_EST` varchar(20) NOT NULL DEFAULT '',
  `F_CREAC_PROP` varchar(20) NOT NULL DEFAULT '',
  `USU_REGISTRO` varchar(20) NOT NULL DEFAULT '',
  `MONTO_LICENCIA` varchar(20) NOT NULL DEFAULT '',
  KEY `PTR` (`PTR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `darkoptr2` */

DROP TABLE IF EXISTS `darkoptr2`;

CREATE TABLE `darkoptr2` (
  `PTR` varchar(20) NOT NULL DEFAULT '',
  `EST_INNOVA` varchar(50) NOT NULL DEFAULT '',
  `IMPUTACION` varchar(15) NOT NULL DEFAULT '',
  `TIPO_DE_PLANTA` varchar(50) NOT NULL DEFAULT '',
  `TIPO_DE_PROYECTO` varchar(100) NOT NULL DEFAULT '',
  `CATEGORIA` varchar(50) NOT NULL DEFAULT '',
  `TITULO_DE_TRABAJO` varchar(500) NOT NULL DEFAULT '',
  `JEFATURA_PTR` varchar(20) NOT NULL DEFAULT '',
  `JEFATURA` varchar(20) NOT NULL DEFAULT '',
  `ZONAL` varchar(10) NOT NULL DEFAULT '',
  `MDF` varchar(10) NOT NULL DEFAULT '',
  `F_APROB` varchar(30) NOT NULL DEFAULT '',
  `Cco` varchar(20) NOT NULL DEFAULT '',
  `AF` varchar(20) NOT NULL DEFAULT '',
  `GRAFO` varchar(20) NOT NULL DEFAULT '',
  `EECC` varchar(20) NOT NULL DEFAULT '',
  `PTO_CAN` varchar(20) NOT NULL DEFAULT '',
  `PTO_CEL` varchar(20) NOT NULL DEFAULT '',
  `PTO_EMP` varchar(20) NOT NULL DEFAULT '',
  `Valoriz_M_Obra_igv` varchar(30) NOT NULL DEFAULT '',
  `Valoriz_Material` varchar(30) NOT NULL DEFAULT '',
  `VR` varchar(300) NOT NULL DEFAULT '',
  `VD` varchar(300) NOT NULL DEFAULT '',
  `PEP` varchar(50) NOT NULL DEFAULT '',
  `SOLPE` varchar(20) NOT NULL DEFAULT '',
  `H_GESTION` varchar(30) NOT NULL DEFAULT '',
  `F_HG` varchar(20) NOT NULL DEFAULT '',
  `OBS` varchar(500) NOT NULL DEFAULT '',
  `DEPARTAMENTO` varchar(20) NOT NULL DEFAULT '',
  `PROVINCIA` varchar(20) NOT NULL DEFAULT '',
  `DISTRITO` varchar(20) NOT NULL DEFAULT '',
  `F_ULT_EST` varchar(20) NOT NULL DEFAULT '',
  `F_CREAC_PROP` varchar(20) NOT NULL DEFAULT '',
  `USU_REGISTRO` varchar(20) NOT NULL DEFAULT '',
  `MONTO_LICENCIA` varchar(20) NOT NULL DEFAULT '',
  `dia_ap` int(3) DEFAULT NULL,
  `mes_ap` varchar(30) NOT NULL DEFAULT '',
  `dia_cre` int(3) DEFAULT NULL,
  `mes_cre` varchar(30) NOT NULL DEFAULT '',
  `total` decimal(10,4) DEFAULT NULL,
  `mes_ap_orden` int(3) DEFAULT NULL,
  `mes_cre_orden` int(3) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `datos_reales` */

DROP TABLE IF EXISTS `datos_reales`;

CREATE TABLE `datos_reales` (
  `fecha` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nodotroba` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `SUM(llamadas)` decimal(42,0) DEFAULT NULL,
  `nro_cli` float DEFAULT NULL,
  `CR` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `detalle_TTPP` */

DROP TABLE IF EXISTS `detalle_TTPP`;

CREATE TABLE `detalle_TTPP` (
  `CONCAT(nodo,troba)` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `fechaapertura` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `LLAVE` varchar(17) CHARACTER SET latin1 DEFAULT NULL,
  `supervisortdp` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `tipodetrabajo` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `finicio` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(10) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `detalle_trazabilidad` */

DROP TABLE IF EXISTS `detalle_trazabilidad`;

CREATE TABLE `detalle_trazabilidad` (
  `nod_trob` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `fechahora` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `causa` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_new` varchar(20) NOT NULL DEFAULT '',
  `fecha_troba` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gestion_alert` */

DROP TABLE IF EXISTS `gestion_alert`;

CREATE TABLE `gestion_alert` (
  `llave` varchar(17) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `nodotroba` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fechaInicio` varchar(25) NOT NULL DEFAULT '',
  `fechaFin` varchar(25) NOT NULL DEFAULT '',
  `observaciones` varchar(150) NOT NULL DEFAULT '',
  `estado` varchar(30) NOT NULL DEFAULT '',
  `idcausalert` int(3) NOT NULL DEFAULT '0',
  `causalert` varchar(60) NOT NULL DEFAULT '',
  `cms_estado` varchar(40) NOT NULL DEFAULT '',
  `cms_cnombre_contrata` varchar(60) NOT NULL DEFAULT '',
  `cms_observaciones` varchar(120) NOT NULL DEFAULT '',
  `region` varchar(20) NOT NULL DEFAULT '',
  `jefatura` varchar(35) NOT NULL DEFAULT '',
  `llaveNodo` varchar(25) NOT NULL DEFAULT '',
  `grupo` varchar(13) NOT NULL DEFAULT '',
  `impacto` varchar(20) NOT NULL DEFAULT '',
  `impacto2` int(4) NOT NULL DEFAULT '0',
  `excluye` varchar(10) NOT NULL DEFAULT '',
  `grupo_masiva` varchar(35) NOT NULL DEFAULT '',
  KEY `llave` (`llave`),
  KEY `idcausalert` (`idcausalert`),
  KEY `nodo` (`nodo`),
  KEY `nodotroba` (`nodotroba`),
  KEY `causalert` (`causalert`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `interaction_handling_v5` */

DROP TABLE IF EXISTS `interaction_handling_v5`;

CREATE TABLE `interaction_handling_v5` (
  `HandlingAttemptHint` varchar(10) NOT NULL DEFAULT '',
  `TenantName` varchar(20) NOT NULL DEFAULT '',
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `InteractionHandlingAttemptID` varchar(20) NOT NULL DEFAULT '',
  `InteractionType` varchar(20) NOT NULL DEFAULT '',
  `HandlingAttemptStart` varchar(20) NOT NULL DEFAULT '',
  `HandlingAttemptEnd` varchar(20) NOT NULL DEFAULT '',
  `StartTimestamp` varchar(20) NOT NULL DEFAULT '',
  `EndTimestamp` varchar(20) NOT NULL DEFAULT '',
  `Duration` varchar(20) NOT NULL DEFAULT '',
  `MediaType` varchar(20) NOT NULL DEFAULT '',
  `From_` varchar(40) NOT NULL DEFAULT '',
  `To_` varchar(40) NOT NULL DEFAULT '',
  `GUID` varchar(40) NOT NULL DEFAULT '',
  `LastIVR` varchar(20) NOT NULL DEFAULT '',
  `LastVQueue` varchar(20) NOT NULL DEFAULT '',
  `HandlingResource` varchar(35) NOT NULL DEFAULT '',
  `HandlingResourceType` varchar(20) NOT NULL DEFAULT '',
  `ResponseTime` varchar(20) NOT NULL DEFAULT '',
  `QueueTime` varchar(20) NOT NULL DEFAULT '',
  `RoutingPointTime` varchar(20) NOT NULL DEFAULT '',
  `TotalDuration` varchar(20) NOT NULL DEFAULT '',
  `CustomerEngageTime` varchar(20) NOT NULL DEFAULT '',
  `CustomerHoldTime` varchar(20) NOT NULL DEFAULT '',
  `CustomerHandleTime` varchar(20) NOT NULL DEFAULT '',
  `CustomerAlertTime` varchar(20) NOT NULL DEFAULT '',
  `CustomerDialTime` varchar(20) NOT NULL DEFAULT '',
  `CustomerWrapTime` varchar(20) NOT NULL DEFAULT '',
  `ConferenceInitiatedTime` varchar(20) NOT NULL DEFAULT '',
  `ConferenceReceivedTime` varchar(20) NOT NULL DEFAULT '',
  `RoutingTarget` varchar(50) NOT NULL DEFAULT '',
  `RoutingTargetType` varchar(20) NOT NULL DEFAULT '',
  `RoutingTargetSelected` varchar(45) NOT NULL DEFAULT '',
  `CustomerID` varchar(20) NOT NULL DEFAULT '',
  `ServiceType` varchar(20) NOT NULL DEFAULT '',
  `ServiceSubtype` varchar(45) NOT NULL DEFAULT '',
  `CustomerSegment` varchar(40) NOT NULL DEFAULT '',
  `BusinessResult` varchar(40) NOT NULL DEFAULT '',
  `ResourceState` varchar(20) NOT NULL DEFAULT '',
  `TechnicalResult` varchar(20) NOT NULL DEFAULT '',
  `TechnicalResultReason` varchar(20) NOT NULL DEFAULT '',
  `TechnicalResultResourceRole` varchar(20) NOT NULL DEFAULT '',
  `TechnicalResultRoleReason` varchar(20) NOT NULL DEFAULT '',
  `Active` varchar(20) NOT NULL DEFAULT '',
  `StopAction` varchar(20) NOT NULL DEFAULT '',
  `ConsultRcvTalkTime` varchar(20) NOT NULL DEFAULT '',
  `ConsultRcvHoldTime` varchar(20) NOT NULL DEFAULT '',
  `ConsultRcvWrapTime` varchar(20) NOT NULL DEFAULT '',
  `Place` varchar(30) NOT NULL DEFAULT '',
  `IVR_NAC` varchar(20) NOT NULL DEFAULT '',
  `DESK_NAC_MAD` varchar(20) NOT NULL DEFAULT '',
  `IVR_CONNID` varchar(20) NOT NULL DEFAULT '',
  `NAC_UNIFICADO` varchar(20) NOT NULL DEFAULT '',
  `ROUTING_POINT` varchar(25) NOT NULL DEFAULT '',
  `PLATAFORMA` varchar(50) NOT NULL DEFAULT '',
  `NEGOCIO` varchar(20) NOT NULL DEFAULT '',
  `SEGMENTO` varchar(25) NOT NULL DEFAULT '',
  `PROGRAMA_` varchar(40) NOT NULL DEFAULT '',
  `TIPO_GESTION` varchar(20) NOT NULL DEFAULT '',
  `SISTEMA_COMERCIAL` varchar(20) NOT NULL DEFAULT '',
  `ORIGEN_LLAMADA` varchar(45) NOT NULL DEFAULT '',
  `FECHA_FIN` varchar(20) NOT NULL DEFAULT '',
  `PLATAF_TIPO_ATENCION` varchar(35) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `CODCLISERV` varchar(20) NOT NULL DEFAULT '',
  `NODO` varchar(10) NOT NULL DEFAULT '',
  `NODOTROBA` varchar(15) NOT NULL DEFAULT '',
  `MDF` varchar(10) NOT NULL DEFAULT '',
  `ARMARIO` varchar(10) NOT NULL DEFAULT '',
  `MDF_CABPRIM` varchar(20) NOT NULL DEFAULT '',
  `TIPOSERV` varchar(10) NOT NULL DEFAULT '',
  `MODALIDAD` varchar(35) NOT NULL DEFAULT '',
  `MPPRODUCTO` varchar(35) NOT NULL DEFAULT '',
  `NVELOC` decimal(10,0) NOT NULL DEFAULT '0',
  `SUB_NEG` varchar(25) NOT NULL DEFAULT '',
  `REGION` varchar(15) NOT NULL DEFAULT '',
  `JEFATURA_CMR` varchar(30) NOT NULL DEFAULT '',
  `DPTO` varchar(35) NOT NULL DEFAULT '',
  `PROV` varchar(35) NOT NULL DEFAULT '',
  `NOM_DIST` varchar(45) NOT NULL DEFAULT '',
  `ABANDONO` decimal(10,0) NOT NULL DEFAULT '0',
  `COD_CLI_CABLE` varchar(20) NOT NULL DEFAULT '',
  `COD_SERV_CABLE` varchar(20) NOT NULL DEFAULT '',
  `GES_TELEFONO` varchar(20) NOT NULL DEFAULT '',
  `ARBOL_N1` varchar(40) NOT NULL DEFAULT '',
  `ARBOL_N2` varchar(40) NOT NULL DEFAULT '',
  `ARBOL_N3` varchar(40) NOT NULL DEFAULT '',
  `VOLCADO` varchar(40) NOT NULL DEFAULT '',
  `GRUPO_LLAMADA` varchar(40) NOT NULL DEFAULT '',
  `A1` varchar(20) NOT NULL DEFAULT '',
  `A2` varchar(20) NOT NULL DEFAULT '',
  KEY `InteractionHandlingAttemptID` (`InteractionHandlingAttemptID`),
  KEY `CODCLICMS` (`CODCLICMS`),
  KEY `IVR_CONNID` (`IVR_CONNID`),
  KEY `ROUTING_POINT` (`ROUTING_POINT`),
  KEY `NAC_UNIFICADO` (`NAC_UNIFICADO`),
  KEY `CustomerID` (`CustomerID`),
  KEY `CODCLISERV` (`CODCLISERV`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `llamadas_junio` */

DROP TABLE IF EXISTS `llamadas_junio`;

CREATE TABLE `llamadas_junio` (
  `InteractionID` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nac_unificado` varchar(20) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `plataforma` varchar(50) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(16) NOT NULL DEFAULT '',
  `troba_fecha` varchar(20) DEFAULT NULL,
  `grupo_masiva` varchar(50) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `evento` varchar(50) NOT NULL DEFAULT '',
  `observaciones` varchar(500) NOT NULL DEFAULT '',
  `top` varchar(15) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `cod_fecha` varchar(30) NOT NULL DEFAULT '',
  `nro_cli` float DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

/*Table structure for table `nro_clientes_nodotroba` */

DROP TABLE IF EXISTS `nro_clientes_nodotroba`;

CREATE TABLE `nro_clientes_nodotroba` (
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `clientes` int(10) DEFAULT NULL,
  KEY `nodotroba` (`nodotroba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `proyeccion` */

DROP TABLE IF EXISTS `proyeccion`;

CREATE TABLE `proyeccion` (
  `dias` decimal(48,4) DEFAULT NULL,
  `mes` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `domingos` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `temp1` */

DROP TABLE IF EXISTS `temp1`;

CREATE TABLE `temp1` (
  `mes` varchar(1) CHARACTER SET utf8 NOT NULL,
  `tiposerv` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nodotroba` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `planta` decimal(63,0) DEFAULT NULL,
  `llave` varchar(26) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `top_trobas` */

DROP TABLE IF EXISTS `top_trobas`;

CREATE TABLE `top_trobas` (
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `estatus` varchar(40) NOT NULL DEFAULT '',
  KEY `nodotroba` (`nodotroba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `trazabilidad_llamadas_eventos` */

DROP TABLE IF EXISTS `trazabilidad_llamadas_eventos`;

CREATE TABLE `trazabilidad_llamadas_eventos` (
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `m_causalert` varchar(40) NOT NULL DEFAULT '',
  `m_area_responsable` varchar(40) NOT NULL DEFAULT '',
  `m_fecha_inicio` varchar(20) NOT NULL DEFAULT '',
  `m_fecha_fin` varchar(20) NOT NULL DEFAULT '',
  `m_grupo` varchar(20) NOT NULL DEFAULT '',
  `m_observaciones` varchar(150) NOT NULL DEFAULT '',
  `T_LLAMADA` varchar(25) NOT NULL DEFAULT '',
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  `planta` int(5) NOT NULL DEFAULT '0',
  `mes` varchar(10) NOT NULL DEFAULT '',
  `semana` int(4) NOT NULL DEFAULT '0',
  `CMTS` varchar(45) NOT NULL DEFAULT '',
  `OLT` varchar(45) NOT NULL DEFAULT '',
  `marca_CMTS_OLT` varchar(20) NOT NULL DEFAULT '',
  `marca_TROBA` varchar(20) NOT NULL DEFAULT '',
  `respaldo_energia` varchar(25) NOT NULL DEFAULT '',
  `respaldo_cabecera` varchar(25) NOT NULL DEFAULT '',
  `region` varchar(20) NOT NULL DEFAULT '',
  `jefatura` varchar(25) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `departamento` varchar(40) NOT NULL DEFAULT '',
  `provincia` varchar(40) NOT NULL DEFAULT '',
  `distrito` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `trazabilidad_llamadas_resumen` */

DROP TABLE IF EXISTS `trazabilidad_llamadas_resumen`;

CREATE TABLE `trazabilidad_llamadas_resumen` (
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `fecha_hora` varchar(16) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(17) NOT NULL DEFAULT '',
  `ABANDONO` decimal(10,0) NOT NULL DEFAULT '0',
  `mes` varchar(10) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `nombre_CMTS_OLT` varchar(30) NOT NULL DEFAULT '',
  `marca_CMTS_OLT` varchar(20) NOT NULL DEFAULT '',
  `marca_TROBA` varchar(20) NOT NULL DEFAULT '',
  `respaldo_energia` varchar(25) NOT NULL DEFAULT '',
  `respaldo_cabecera` varchar(25) NOT NULL DEFAULT '',
  `semana` int(4) NOT NULL DEFAULT '0',
  `indicador` varchar(20) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `indicador2` varchar(25) NOT NULL DEFAULT '',
  `llamadas` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `trazabilidad_llamadas_resumen_backup` */

DROP TABLE IF EXISTS `trazabilidad_llamadas_resumen_backup`;

CREATE TABLE `trazabilidad_llamadas_resumen_backup` (
  `fecha` varchar(10) NOT NULL DEFAULT '',
  `fecha_hora` varchar(16) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `region` varchar(15) NOT NULL DEFAULT '',
  `jefcomercial` varchar(30) NOT NULL DEFAULT '',
  `grupo_llamada` varchar(50) NOT NULL DEFAULT '',
  `origen` varchar(17) NOT NULL DEFAULT '',
  `ABANDONO` decimal(10,0) NOT NULL DEFAULT '0',
  `mes` varchar(10) NOT NULL DEFAULT '',
  `nodo` varchar(10) NOT NULL DEFAULT '',
  `nombre_CMTS_OLT` varchar(30) NOT NULL DEFAULT '',
  `marca_CMTS_OLT` varchar(20) NOT NULL DEFAULT '',
  `marca_TROBA` varchar(20) NOT NULL DEFAULT '',
  `respaldo_energia` varchar(25) NOT NULL DEFAULT '',
  `respaldo_cabecera` varchar(25) NOT NULL DEFAULT '',
  `semana` int(4) NOT NULL DEFAULT '0',
  `indicador` varchar(20) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `indicador2` varchar(25) NOT NULL DEFAULT '',
  `troba_fecha` varchar(25) NOT NULL DEFAULT '',
  `grupo_masiva` varchar(35) NOT NULL DEFAULT '',
  `dmp` varchar(20) NOT NULL DEFAULT '',
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  KEY `troba_fecha` (`troba_fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `trazabilidad_llamadas_total` */

DROP TABLE IF EXISTS `trazabilidad_llamadas_total`;

CREATE TABLE `trazabilidad_llamadas_total` (
  `media_server_id` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `flujo` varchar(1500) CHARACTER SET latin1 DEFAULT '',
  `fecha_hora` datetime DEFAULT NULL,
  `ani` int(9) DEFAULT '0',
  `guid` varchar(40) CHARACTER SET latin1 DEFAULT '',
  `duracion` int(5) DEFAULT '0',
  `opc_menu1` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `nac` int(10) DEFAULT '0',
  `tipo_doc` varchar(3) CHARACTER SET latin1 DEFAULT '',
  `doc` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `tipo_cliente` varchar(50) DEFAULT '',
  `es_m1` varchar(20) DEFAULT '',
  `etiqueta` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `etiqueta2` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `etiqueta3` varchar(100) DEFAULT '',
  `opcion` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `auto` int(1) DEFAULT '0',
  `evento` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `causa_fin` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `routing_point` varchar(40) CHARACTER SET latin1 DEFAULT '',
  `detalle` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `fecha_num` int(8) DEFAULT NULL,
  `doc_aux` int(1) DEFAULT '0',
  `causa_aux` int(1) DEFAULT '0',
  `aux` int(1) DEFAULT '0',
  `departamento` varchar(100) DEFAULT '',
  `programa` varchar(100) DEFAULT '',
  `producto` varchar(100) DEFAULT '',
  `cod_dep` varchar(2) DEFAULT '',
  `fecha_proceso` varchar(20) DEFAULT '',
  `nac_ani` int(7) NOT NULL DEFAULT '0',
  `opcmenu` varchar(20) NOT NULL DEFAULT '',
  `grupo` varchar(40) NOT NULL DEFAULT '',
  `autogestion` varchar(45) NOT NULL DEFAULT '',
  `plataforma` varchar(35) NOT NULL DEFAULT '',
  `negocio` varchar(20) NOT NULL DEFAULT '',
  `tipo_llamada` varchar(35) NOT NULL DEFAULT '',
  `descripcion` varchar(35) NOT NULL DEFAULT '',
  `TIPOSERV` varchar(10) NOT NULL DEFAULT '',
  `CODCLICMS` varchar(20) NOT NULL DEFAULT '',
  `CODSERVCMS` varchar(20) NOT NULL DEFAULT '',
  `CODCLISERV` varchar(25) NOT NULL DEFAULT '',
  `NODOTROBA` varchar(15) NOT NULL DEFAULT '',
  `MDF_CABPRIM` varchar(20) NOT NULL DEFAULT '',
  `SUB_NEG` varchar(20) NOT NULL DEFAULT '',
  `REGION` varchar(20) NOT NULL DEFAULT '',
  `JEFCOMERCIAL` varchar(35) NOT NULL DEFAULT '',
  `DPTO` varchar(35) NOT NULL DEFAULT '',
  `PROV` varchar(35) NOT NULL DEFAULT '',
  `NOM_DIST` varchar(45) NOT NULL DEFAULT '',
  `A1` varchar(20) NOT NULL DEFAULT '',
  `A2` varchar(20) NOT NULL DEFAULT '',
  KEY `nac_ani` (`nac_ani`),
  KEY `media_server_id` (`media_server_id`),
  KEY `CODCLISERV` (`CODCLISERV`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `xy_cajas_trobas` */

DROP TABLE IF EXISTS `xy_cajas_trobas`;

CREATE TABLE `xy_cajas_trobas` (
  `cartodb_id` varchar(15) NOT NULL DEFAULT '',
  `the_geom` varchar(70) NOT NULL DEFAULT '',
  `mtgespktrm` varchar(25) NOT NULL DEFAULT '',
  `mtpkatrm` varchar(25) NOT NULL DEFAULT '',
  `mtfecactgi` varchar(15) NOT NULL DEFAULT '',
  `longitud` varchar(25) NOT NULL DEFAULT '',
  `latitud` varchar(25) NOT NULL DEFAULT '',
  `cod_pla` varchar(6) NOT NULL DEFAULT '',
  `co_tip` varchar(6) NOT NULL DEFAULT '',
  `tecnologia` varchar(10) NOT NULL DEFAULT '',
  KEY `mtgespktrm` (`mtgespktrm`),
  KEY `cod_pla` (`cod_pla`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
