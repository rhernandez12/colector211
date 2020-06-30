/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - zz_new_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zz_new_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `zz_new_system`;

/*Table structure for table `api_services` */

DROP TABLE IF EXISTS `api_services`;

CREATE TABLE `api_services` (
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(125) DEFAULT NULL,
  `token` text,
  `time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `backup_masivas` */

DROP TABLE IF EXISTS `backup_masivas`;

CREATE TABLE `backup_masivas` (
  `check` int(11) NOT NULL DEFAULT '0',
  `numfrecave` int(11) NOT NULL,
  `tipfrecave` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `fecreg` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `codofcadm` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `codcmts` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `codnod` varchar(2) CHARACTER SET latin1 NOT NULL,
  `nroplano` varchar(4) CHARACTER SET latin1 NOT NULL,
  `codtrtrn` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `edofrecave` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `cantreq` int(11) DEFAULT NULL,
  `nrocant` int(11) DEFAULT NULL,
  `fecultact` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `coddpt` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `codpvc` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `codreqmnt` int(11) NOT NULL,
  `codctr` int(11) DEFAULT NULL,
  `codedo` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `fecliq` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `indorigreq` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `cantreqliq` int(11) DEFAULT NULL,
  `codareahbl` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `indactuacion` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `indseginc` int(11) DEFAULT NULL,
  `indinc` int(11) DEFAULT NULL,
  `codinc` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_upload` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `clientes_cuarentenas` */

DROP TABLE IF EXISTS `clientes_cuarentenas`;

CREATE TABLE `clientes_cuarentenas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idCuarentenas` bigint(20) DEFAULT NULL,
  `idCliente` varchar(50) DEFAULT NULL,
  `entidad` varchar(100) DEFAULT NULL,
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(5) DEFAULT NULL,
  `servicePackageCrmid` varchar(25) DEFAULT NULL,
  `scopesGroup` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idCliente`),
  KEY `idcuarentena` (`idCuarentenas`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB AUTO_INCREMENT=19675 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `control_migracion` */

DROP TABLE IF EXISTS `control_migracion`;

CREATE TABLE `control_migracion` (
  `estado` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuarentenas_total` */

DROP TABLE IF EXISTS `cuarentenas_total`;

CREATE TABLE `cuarentenas_total` (
  `idGestionCuarentena` int(11) DEFAULT NULL,
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
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
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
  `Masiva` int(11) DEFAULT NULL,
  `edopend` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `STATUS` varchar(71) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `entidad` varchar(100) DEFAULT NULL,
  `tipoaveria` varchar(50) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `idGestionCuarentena` (`idGestionCuarentena`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `nodo` (`NODO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cuarentenas_total_c` */

DROP TABLE IF EXISTS `cuarentenas_total_c`;

CREATE TABLE `cuarentenas_total_c` (
  `idGestionCuarentena` int(11) DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double NOT NULL,
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
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
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
  `Masiva` int(11) DEFAULT NULL,
  `edopend` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `STATUS` varchar(71) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `entidad` varchar(100) DEFAULT NULL,
  `tipoaveria` varchar(50) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `idGestionCuarentena` (`idGestionCuarentena`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `nodo` (`NODO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `dashboard` */

DROP TABLE IF EXISTS `dashboard`;

CREATE TABLE `dashboard` (
  `codigo` int(3) DEFAULT NULL,
  `tipo` varchar(120) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `cant` int(5) DEFAULT NULL,
  `clientes` int(5) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `categoria` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `empresas` */

DROP TABLE IF EXISTS `empresas`;

CREATE TABLE `empresas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `gestion_cuarentena` */

DROP TABLE IF EXISTS `gestion_cuarentena`;

CREATE TABLE `gestion_cuarentena` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `clientes` int(11) DEFAULT NULL,
  `trobas` int(11) DEFAULT NULL,
  `servicePackageCrmid` varchar(25) DEFAULT NULL,
  `scopesGroup` varchar(15) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  `cuadroMando` enum('Activo','Inactivo') DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_unico` (`nombre`),
  KEY `identificador` (`id`),
  KEY `trobas` (`trobas`),
  KEY `clientes` (`clientes`),
  KEY `servicePackageCrmid` (`servicePackageCrmid`),
  KEY `scopesGroup` (`scopesGroup`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_arbol_tot` */

DROP TABLE IF EXISTS `graf_arbol_tot`;

CREATE TABLE `graf_arbol_tot` (
  `jefatura` varchar(20) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `hora` varchar(2) DEFAULT NULL,
  `arboltot` bigint(21) NOT NULL,
  KEY `hora` (`hora`),
  KEY `arboltot` (`arboltot`),
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_ayer` */

DROP TABLE IF EXISTS `graf_ayer`;

CREATE TABLE `graf_ayer` (
  `jefatura` varchar(20) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hora` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `desdia` (`desdia`),
  KEY `hora` (`hora`),
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_hoy` */

DROP TABLE IF EXISTS `graf_hoy`;

CREATE TABLE `graf_hoy` (
  `jefatura` varchar(20) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hora` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `desdia` (`desdia`),
  KEY `hora` (`hora`),
  KEY `aver` (`aver`),
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_liquidaciones` */

DROP TABLE IF EXISTS `graf_liquidaciones`;

CREATE TABLE `graf_liquidaciones` (
  `jefatura` varchar(20) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `Hora` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `liq` bigint(21) NOT NULL,
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`),
  KEY `hora` (`Hora`),
  KEY `liq` (`liq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_llamadas` */

DROP TABLE IF EXISTS `graf_llamadas`;

CREATE TABLE `graf_llamadas` (
  `jefatura` varchar(20) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `horallam` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL,
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`),
  KEY `horallam` (`horallam`),
  KEY `llamadas` (`llamadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `graf_promedio` */

DROP TABLE IF EXISTS `graf_promedio`;

CREATE TABLE `graf_promedio` (
  `jefatura` varchar(20) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `dia_mov` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `desdia` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `hora` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  `nro_reqs` int(11) NOT NULL,
  KEY `dia_mov` (`dia_mov`),
  KEY `desdia` (`desdia`),
  KEY `hora` (`hora`),
  KEY `jefatura` (`jefatura`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `parametros` */

DROP TABLE IF EXISTS `parametros`;

CREATE TABLE `parametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `period` int(11) NOT NULL,
  `time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `parametros_colores` */

DROP TABLE IF EXISTS `parametros_colores`;

CREATE TABLE `parametros_colores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalle` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parametros` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `parametros_rf` */

DROP TABLE IF EXISTS `parametros_rf`;

CREATE TABLE `parametros_rf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `power_down_min` double DEFAULT NULL,
  `power_down_max` double DEFAULT NULL,
  `power_up_min` double DEFAULT NULL,
  `power_up_max` double DEFAULT NULL,
  `snr_down_min` double DEFAULT NULL,
  `snr_down_max` double DEFAULT NULL,
  `snr_up_min` double DEFAULT NULL,
  `snr_up_max` double DEFAULT NULL,
  `colores` text COLLATE utf8mb4_unicode_ci,
  `mensajes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `permiso_role` */

DROP TABLE IF EXISTS `permiso_role`;

CREATE TABLE `permiso_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permiso_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permiso_role_permiso_id_foreign` (`permiso_id`),
  KEY `permiso_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permiso_role_permiso_id_foreign` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`),
  CONSTRAINT `permiso_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `permiso_user` */

DROP TABLE IF EXISTS `permiso_user`;

CREATE TABLE `permiso_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permiso_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `tipo` enum('Asignado','Retirado') COLLATE utf8mb4_unicode_ci DEFAULT 'Asignado',
  PRIMARY KEY (`id`),
  KEY `permiso_user_permiso_id_foreign` (`permiso_id`),
  KEY `permiso_user_user_id_foreign` (`user_id`),
  CONSTRAINT `permiso_user_permiso_id_foreign` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`),
  CONSTRAINT `permiso_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` enum('null','Modulo','Submodulo') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` bigint(20) DEFAULT '0',
  `referencia` bigint(20) DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especial` enum('SI','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `referencia` bigint(20) DEFAULT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `temporal_clientes_codigos` */

DROP TABLE IF EXISTS `temporal_clientes_codigos`;

CREATE TABLE `temporal_clientes_codigos` (
  `codcli` varchar(50) NOT NULL,
  `idusuario` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `temporal_clientes_mac` */

DROP TABLE IF EXISTS `temporal_clientes_mac`;

CREATE TABLE `temporal_clientes_mac` (
  `macaddress` varchar(17) NOT NULL,
  `idusuario` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `temporal_cuarentenas` */

DROP TABLE IF EXISTS `temporal_cuarentenas`;

CREATE TABLE `temporal_cuarentenas` (
  `codcli` varchar(50) DEFAULT NULL,
  `idusuario` bigint(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  `cuadroMando` enum('Activo','Inactivo') DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `entidad` varchar(100) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `temporal_masivas` */

DROP TABLE IF EXISTS `temporal_masivas`;

CREATE TABLE `temporal_masivas` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_cuarentenas` */

DROP TABLE IF EXISTS `tipo_cuarentenas`;

CREATE TABLE `tipo_cuarentenas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `trobas_cuarentenas` */

DROP TABLE IF EXISTS `trobas_cuarentenas`;

CREATE TABLE `trobas_cuarentenas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idCuarentenas` bigint(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `idCuarentena` (`idCuarentenas`)
) ENGINE=InnoDB AUTO_INCREMENT=966 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ultimos_accesos` */

DROP TABLE IF EXISTS `ultimos_accesos`;

CREATE TABLE `ultimos_accesos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET dec8 NOT NULL,
  `acceso_exitoso` char(2) CHARACTER SET dec8 NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4941 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ultimos_passwords` */

DROP TABLE IF EXISTS `ultimos_passwords`;

CREATE TABLE `ultimos_passwords` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `pass_old` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci COMMENT 'Almacena el id de la sesión del usuario',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `migrado` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_empresa_id_foreign` (`empresa_id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* Procedure structure for procedure `sp_cuarentenas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_cuarentenas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_cuarentenas`()
BEGIN
/*    
    #DELETE FROM zz_new_system.`cuarentena_averias_c` WHERE DATEDIFF(NOW(),fecha_liquidacion)>3;
 TRUNCATE zz_new_system.`cuarentenas_total_c`;
INSERT IGNORE zz_new_system.cuarentenas_total_c
SELECT  
  tc.`idCuarentenas`AS idGestionCuarentena,
  a.idempresacrm    AS idempresacrm,
  a.IDCLIENTECRM    AS IDCLIENTECRM,
  a.NAMECLIENT      AS NAMECLIENT,
  mt.codigoreq AS codigoreq,
  mt.fecha_liquidacion AS fecha_liquidacion,
  mt.contrata AS contrataliq,
  mt.codigotiporeq AS codigotipo_req,
  mt.`codigomotivoreq` AS codigomotivo_req,
  mt.tecnico AS tecnico,
  mt.`codigodeliquidacion` AS codigodeliquidacion,
  mt.`detalle_liquidacion` AS detalle_liquidacion,
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
  a.SCOPESGROUP     AS  SCOPESGROUP,
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
  IF(((b.MACState = 'offline') AND ISNULL(c.DSMER_SNR)),'2.- Offline - NO OK',
  IF((c.DSMER_SNR = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',
  IF((ISNULL(c.DSMER_SNR) AND (b.MACState IN ('w-online','online','operational'))),
	'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',
  IF((ISNULL(b.MACState) AND ISNULL(c.DSMER_SNR)),'5.-Incierto - Validar',
  IF(((b.MACState NOT IN ('w-online','online','operational','offline')) AND ISNULL(c.DSMER_SNR)),
	'3.-Modem no Sincronizado - No hay niveles no se puede validar',
  IF((((REPLACE(c.USPwr,'!','') < 35) OR (REPLACE(c.USPwr,'!','') > 57)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF(((c.USMER_SNR < 25) AND (c.USMER_SNR > 0.00) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF((((c.DSPwr < -(10)) OR (c.DSPwr > 12)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF((ISNULL(c.DSPwr) AND (b.MACState <> 'offline')),'5.-Incierto - Validar',
  IF(((c.DSMER_SNR < 27) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF(((c.DSPwr = '-') AND (c.DSMER_SNR = '-')),'6.-CMTS No reporta Niveles','7.-OK'))))))))))))) AS STATUS,
  '' AS `entidad`,'' AS tipoaveria,'' AS observaciones,'' AS usuario,'' AS fechahora
  
FROM zz_new_system.trobas_cuarentenas tc FORCE INDEX (nodo,troba,idCuarentena)
	INNER JOIN zz_new_system.`gestion_cuarentena` gc FORCE INDEX (identificador,trobas,servicePackageCrmid,scopesGroup)
		ON tc.`idCuarentenas` = gc.id AND gc.trobas > 0 AND gc.estado = 'Activo' AND gc.tipo='AVERIAS'
	LEFT JOIN multiconsulta.nclientes a FORCE INDEX (NewIndex1,NODO,TROBA,idx3,scopegroupIndex)
              ON tc.`nodo`=a.`NODO` AND tc.`troba`=a.`TROBA`
               AND CASE WHEN CHARACTER_LENGTH(gc.servicePackageCrmid) > 0 THEN gc.servicePackageCrmid =a.`SERVICEPACKAGECRMID` ELSE 1=1 END
               AND CASE WHEN CHARACTER_LENGTH(gc.scopesGroup) > 0 THEN gc.scopesGroup =a.`SCOPESGROUP` ELSE 1=1 END
	LEFT JOIN cms.aver_liq_catv_pais_temp mt FORCE INDEX (NewIndex1)
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
     WHERE  DATEDIFF(NOW(),mt.fecha_liquidacion)<= 3
    
  #UNION---------------
  UNION 
  ##UNION--------------
  SELECT
  cc.`idCuarentenas` AS idGestionCuarentena,
  a.idempresacrm    AS idempresacrm,
  a.IDCLIENTECRM    AS IDCLIENTECRM,
  a.NAMECLIENT      AS NAMECLIENT,
  mt.codigoreq AS codigoreq,
  mt.fecha_liquidacion AS fecha_liquidacion,
  mt.contrata AS contrataliq,
  mt.codigotiporeq AS codigotipo_req,
  mt.`codigomotivoreq` AS codigomotivo_req,
  mt.tecnico AS tecnico,
  mt.`codigodeliquidacion` AS codigodeliquidacion,
  mt.`detalle_liquidacion` AS detalle_liquidacion,
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
  a.SCOPESGROUP     AS  SCOPESGROUP,
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
  `d`.`codctr`          AS `codctr`,
  mt.contrata        AS contrata,
  cp.desctr         AS pctr,
  cq.desctr         AS qctr,
  d.fec_registro    AS fecharegistro,
  IF((ca.nodo IS NOT NULL),'Caida','') AS Caida,
  m.codreqmnt       AS Masiva,
  IF((`d`.`codreq` IS NOT NULL),'P',IF((`e`.`contrata` IS NOT NULL),'Q','')) AS `edopend`,
  IF(a.estado='Inactivo','8.-Servicio Suspendido',
  IF(a.nameclient LIKE "pruebas%qa%",'9.-Servicios de Prueba',
  IF(((b.MACState = 'offline') AND ISNULL(c.DSMER_SNR)),'2.- Offline - NO OK',
  IF((c.DSMER_SNR = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',
  IF((ISNULL(c.DSMER_SNR) AND (b.MACState IN ('w-online','online','operational'))),
	'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',
  IF((ISNULL(b.MACState) AND ISNULL(c.DSMER_SNR)),'5.-Incierto - Validar',
  IF(((b.MACState NOT IN ('w-online','online','operational','offline')) AND ISNULL(c.DSMER_SNR)),
	'3.-Modem no Sincronizado - No hay niveles no se puede validar',
  IF((((REPLACE(c.USPwr,'!','') < 35) OR (REPLACE(c.USPwr,'!','') > 57)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF(((c.USMER_SNR < 25) AND (c.USMER_SNR > 0.00) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF((((c.DSPwr < -(10)) OR (c.DSPwr > 12)) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF((ISNULL(c.DSPwr) AND (b.MACState <> 'offline')),'5.-Incierto - Validar',
  IF(((c.DSMER_SNR < 27) AND (REPLACE(c.USPwr,'!','') <> '-')),'1.-Niveles NO OK',
  IF(((c.DSPwr = '-') AND (c.DSMER_SNR = '-')),'6.-CMTS No reporta Niveles','7.-OK'))))))))))))) AS STATUS,
  '' AS `entidad`,'' AS tipoaveria,'' AS observaciones,'' AS usuario,'' AS fechahora
  
FROM zz_new_system.clientes_cuarentenas cc FORCE INDEX (idcliente,idCuarentena)
	INNER JOIN zz_new_system.gestion_cuarentena gc FORCE INDEX (identificador,trobas)
		ON cc.idCuarentenas = gc.id AND gc.clientes > 0 AND gc.estado = 'Activo' AND gc.tipo='AVERIAS'
	INNER JOIN multiconsulta.nclientes a FORCE INDEX (NewIndex1,NODO,TROBA)
              ON cc.idCliente = a.IDCLIENTECRM
	LEFT JOIN cms.aver_liq_catv_pais_temp mt FORCE INDEX (NewIndex1)
            ON  cc.`idCliente` = mt.`codigodelcliente` AND mt.`codigodelgruporeq`='RA'
            AND DATEDIFF(NOW(),mt.fecha_liquidacion)<= 3
        LEFT JOIN ccm1.scm_total b FORCE INDEX (MACAddress)
            ON a.mac2 = b.MACAddress
         LEFT JOIN ccm1.scm_phy_t c FORCE INDEX (NewIndex1)
           ON a.mac2 = c.MACAddress
        LEFT JOIN cms.req_pend_macro_final d FORCE INDEX (codcli)
          ON cc.idCliente = d.codcli
       LEFT JOIN cms.prov_liq_catv_pais e FORCE INDEX (NewIndex2)
         ON cc.idCliente = e.`codigo_del_cliente`
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
     
 #UNION
 UNION
 #UNION
 SELECT xz.* FROM (
   SELECT 
   gc.id AS idGestionCuarentena,
  `a`.`idempresacrm`    AS `idempresacrm`,
  `a`.`IDCLIENTECRM`    AS `IDCLIENTECRM`,
  `a`.`NAMECLIENT`      AS `NAMECLIENT`,
  e.codigoreq AS codigoreq,
  e.fecha_liquidacion AS fecha_liquidacion,
  e.contrata AS  contrataliq,
  e.codigotiporeq AS codigotipo_req,
  e.codigomotivoreq AS codigomotivo_req,
  e.tecnico AS tecnico,
  e.codigodeliquidacion AS codigodeliquidacion,
  e.detalle_liquidacion AS detalle_liquidacion,
  `a`.`cmts`            AS `cmts`,
  IF((`b`.`MACState` = 'Offline'),`b`.`Interface`,`c`.`Interface`) AS `interface`,
  IF(ISNULL(`c`.`MACAddress`),`b`.`MACState`,'online') AS `macstate`,
  `b`.`RxPwrdBmv`       AS `RxPwrdBmv`,
  `c`.`USPwr`           AS `USPwr`,
  `c`.`USMER_SNR`       AS `USMER_SNR`,
  `c`.`DSPwr`           AS `DSPwr`,
  `c`.`DSMER_SNR`       AS `DSMER_SNR`,
  `a`.`direccion`       AS `direccion`,
  `a`.`NODO`            AS `NODO`,
  `a`.`TROBA`           AS `TROBA`,
  `a`.`amplificador`    AS `amplificador`,
  `a`.`tap`             AS `tap`,
  `a`.`telf1`           AS `telf1`,
  `a`.`telf2`           AS `telf2`,
  `a`.`movil1`          AS `movil1`,
  `a`.`MACADDRESS`      AS `MACADDRESS`,
  `a`.`SERVICEPACKAGE`  AS `SERVICEPACKAGE`,
   a.SCOPESGROUP     	AS  SCOPESGROUP,
  `a`.`FECHAACTIVACION` AS `FECHAACTIVACION`,
  `a`.`ESTADO`          AS `estado`,
  `a`.`numcoo_x`        AS `numcoo_x`,
  `a`.`numcoo_y`        AS `numcoo_y`,
  `d`.`codreq`          AS `codreq`,
  `d`.`codmotv`         AS `codmotv`,
  `d`.`desmotv`         AS `desmotv`,
  `d`.`tipreqini`       AS `tipreqini`,
  `d`.`desobsordtrab`   AS `desobsordtrab`,
  `e`.`codigotiporeq`   AS `codigotiporeq`,
  `e`.`codigomotivoreq` AS `codigomotivoreq`,
  `d`.`codctr`          AS `codctr`,
  `e`.`contrata`        AS `contrata`,
  `cp`.`desctr`         AS `pctr`,
  `cq`.`desctr`         AS `qctr`,
  `d`.`fec_registro`    AS `fecharegistro`,
  IF((`ca`.`nodo` IS NOT NULL),'Caida','') AS `Caida`,
  `m`.`codreqmnt`       AS `Masiva`,
  
  IF((`d`.`codreq` IS NOT NULL),'P',IF((`e`.`contrata` IS NOT NULL),'Q','')) AS `edopend`,
  IF(a.estado='Inactivo','8.-Servicio Suspendido',
  IF(a.nameclient LIKE "pruebas%qa%",'9.-Servicios de Prueba',
  IF((`b`.`MACState` = 'Offline'),'2.- Offline - NO OK',
  IF((`c`.`DSMER_SNR` = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',
  IF((ISNULL(`c`.`DSMER_SNR`) AND (`b`.`MACState` IN ('w-online','online','operational'))),
	'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente', 
  IF((ISNULL(`b`.`MACState`) AND ISNULL(`c`.`DSMER_SNR`)),'5.-Incierto - Validar',
  IF(((`b`.`MACState` NOT IN ('w-online','online','operational','offline')) AND ISNULL(`c`.`DSMER_SNR`)),
	'3.-Modem no Sincronizado - No hay niveles no se puede validar',IF((((REPLACE(`c`.`USPwr`,'!','') < 35) OR 
     (REPLACE(`c`.`USPwr`,'!','') > 57)) AND (REPLACE(`c`.`USPwr`,'!','') <> '-')),'1.-Niveles NO OK',
  IF(((`c`.`USMER_SNR` < 25) AND (`c`.`USMER_SNR` > 0.00) AND (REPLACE(`c`.`USPwr`,'!','') <> '-')),'1.-Niveles NO OK',
  IF((((`c`.`DSPwr` < -(10)) OR (`c`.`DSPwr` > 12)) AND (REPLACE(`c`.`USPwr`,'!','') <> '-')),'1.-Niveles NO OK',
  IF((ISNULL(`c`.`DSPwr`) AND (`b`.`MACState` <> 'Offline')),'5.-Incierto - Validar',
  IF(((`c`.`DSMER_SNR` < 27) AND (REPLACE(`c`.`USPwr`,'!','') <> '-')),'1.-Niveles NO OK',
  IF(((`c`.`DSPwr` = '-') AND (`c`.`DSMER_SNR` = '-')),'6.-CMTS No reporta Niveles','7.-OK'))))))))))))) AS `STATUS`,
  `cc`.`entidad` AS `entidad`,'' AS tipoaveria,'' AS observaciones,'' AS usuario,'' AS fechahora
FROM 
	zz_new_system.clientes_cuarentenas cc FORCE INDEX (idcliente,idCuarentena)
	INNER JOIN zz_new_system.gestion_cuarentena gc FORCE INDEX (identificador,trobas)
		ON cc.idCuarentenas = gc.id AND gc.clientes > 0 AND gc.estado = 'Activo' AND gc.tipo='CRITICOS'
	LEFT JOIN `multiconsulta`.`nclientes_c` `a` FORCE INDEX (NewIndex1)
		ON `cc`.`idCliente` = `a`.`IDCLIENTECRM`
	LEFT JOIN `ccm1`.`scm_total` `b`  FORCE INDEX (MACAddress)
		ON  `a`.`mac2` = `b`.`MACAddress` 
	LEFT JOIN `ccm1`.`scm_phy_t` `c` FORCE INDEX (NewIndex1) 
		ON  `a`.`mac2` = `c`.`MACAddress`
	LEFT JOIN `cms`.`req_pend_macro` `d` FORCE INDEX (codcli)
		ON  `a`.`IDCLIENTECRM` = `d`.`codcli`
	LEFT JOIN `cms`.`aver_liq_catv_pais` `e` FORCE INDEX (NewIndex1)
		ON 
		`a`.`IDCLIENTECRM` = `e`.`codigodelcliente` AND ((TO_DAYS(NOW()) - TO_DAYS(`e`.`fecha_liquidacion`)) < 7)
	LEFT JOIN `catalogos`.`codctr` `cp` 
		ON  `d`.`codctr` = `cp`.`codctr` 
	LEFT JOIN `catalogos`.`codctr` `cq` 
		ON  `e`.`contrata` = `cq`.`codctr` 
	LEFT JOIN `alertasx`.`caidas_new` `ca` FORCE INDEX (nodo,troba,nodo_2,Caida)
		ON  `a`.`NODO` = `ca`.`nodo`  AND  `a`.`TROBA` = `ca`.`troba`  AND  `ca`.`Caida` = 'SI' 
	LEFT JOIN `dbpext`.`masivas_temp` `m` FORCE INDEX (NewIndex1,NewIndex2,NewIndex4)
		ON  `a`.`NODO` = `m`.`codnod`  AND  `a`.`TROBA` = `m`.`nroplano` 
		WHERE   NOT `a`.`NAMECLIENT` LIKE '%PRUEBAS QA%'
ORDER BY 
IF(a.estado='Inactivo','8.-Servicio Suspendido',
IF(a.nameclient LIKE "pruebas%qa%",'9.-Servicios de Prueba',
IF(((`b`.`MACState` = 'Offline') AND ISNULL(`b`.`MACAddress`)),'2.- Offline - NO OK',
IF((`c`.`DSMER_SNR` = '-----'),'3.-Modem Sincronizado - Cmts no aun no lee niveles',IF((ISNULL(`c`.`DSMER_SNR`)
AND (`b`.`MACState` IN('w-online','online','operational'))),'4.-Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',IF((ISNULL(`b`.`MACState`)
AND ISNULL(`c`.`DSMER_SNR`)),'2.-Offline - NO OK',IF(((`b`.`MACState` NOT IN('w-online','online','operational','offline'))
AND ISNULL(`c`.`DSMER_SNR`)),'3.-Modem no Sincronizado - No hay niveles no se puede validar',IF((((`c`.`USPwr` < 35)        OR (`c`.`USPwr` > 57))
AND (`c`.`USPwr` <> '-')),'1.-Niveles NO OK',IF(((`c`.`USMER_SNR` < 25) 
AND (`c`.`USMER_SNR` > 0.00) AND (`c`.`USPwr` <> '-')),'1.-Niveles NO OK',IF((((`c`.`DSPwr` <  - (10)) OR (`c`.`DSPwr` > 12))
AND (`c`.`USPwr` <> '-')),'1.-Niveles NO OK',IF(ISNULL(`c`.`DSPwr`),'5.-Incierto - Validar',IF(((`c`.`DSMER_SNR` < 27)
AND (`c`.`USPwr` <> '-')),'1.-Niveles NO OK',IF(((`c`.`DSPwr` = '-')
AND (`c`.`DSMER_SNR` = '-')),'6.-CMTS No reporta Niveles',
'7.-OK')))))))))))))
)xz;
     
#ACTUALIZA CON CUADRO DE GESTION
UPDATE zz_new_system.`cuarentenas_total_c` a INNER JOIN  
	(SELECT * FROM alertasx.gestion_cuarentena WHERE idbitacora IN (
		SELECT MAX(idbitacora) AS idbitacora FROM alertasx.gestion_cuarentena GROUP BY idcliente)
	) AS gc 
ON a.idclientecrm=gc.idcliente
SET a.tipoaveria=gc.tipoaveria,a.observaciones=gc.observaciones,a.usuario=gc.usuario,a.fechahora=gc.fechahora;
  
#ACTUALIZA CON NCLIENTES 
UPDATE zz_new_system.`cuarentenas_total_c` a INNER JOIN multiconsulta.`nclientes` b
ON a.`MACADDRESS`=b.`macaddress`
SET a.estado= b.estado; 
 
RENAME TABLE zz_new_system.cuarentenas_total TO zz_new_system.cuarentenas_total_d,
	zz_new_system.cuarentenas_total_c TO zz_new_system.cuarentenas_total,
	zz_new_system.cuarentenas_total_d TO zz_new_system.cuarentenas_total_c;
 
  */ 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_dashboard3` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_dashboard3` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_dashboard3`()
BEGIN
##Eliminar tabla dashboard
TRUNCATE TABLE zz_new_system.dashboard;
##Insertar registros de la Tabla Dashboard de Produccion
/*
INSERT INTO zz_new_system.dashboard
SELECT a.*, "" AS categoria FROM alertasx.dashboard a
WHERE SUBSTR(tipo,1,14) NOT IN ('MOVISTAR TOTAL','CLIENTES CRITI','TOTAL CLIENTES','ALTAS NUEVAS: ') 
AND tipo NOT LIKE 'AVERIAS%';
*/
#
##Insertar Datos de Intraway
INSERT INTO zz_new_system.dashboard
SELECT 1,'PROBLEMAS INTRAWAY (DHCP-TFTP)' AS tipo,'',0 AS cant,SUM(init_d+init_o+sinippublica+init_i) AS clientes,
IF(SUM(init_d+init_o+sinippublica+init_i)<1000,'green','red') AS color,'monitor_init.php' AS url,'Intraway' AS categoria 
FROM ccm1.Status_cablemodems 
HAVING(SUM(init_d+init_o+sinippublica+init_i)>1000);
#
##Insertar Datos por Problemas de IP
INSERT INTO zz_new_system.dashboard
SELECT 2,'CMTS PROBLEMAS IP' AS tipo,'',COUNT(*) AS cant,0 AS clientes,IF(COUNT(*)>1,'red','green') AS color,'monitor_ips.php' AS url,
'Problemas IP' AS categoria    
FROM catalogos.redesip_view 
WHERE available<10 AND available>=0 
HAVING (COUNT(*)>0);
#
##Insertar Datos de Mega Masivas Trobas
INSERT INTO zz_new_system.dashboard
SELECT 3,CONCAT('MEGA MASIVA TROBAS CAIDAS Nodo: ',nodo) AS tipo,nodo,COUNT(*) AS cant,SUM(offline) AS clientes,'#8B0000' AS color,
'monitor_geo_alertas_caidas' AS url,'Mega Masivas' AS categoria
FROM alertasx.caidas_new 
WHERE Caida='SI' AND TIME(NOW())<'23:59:59' AND TIME(NOW())>'07:30:00' 
GROUP BY nodo HAVING(COUNT(*)>=3);
#
##Insertar Datos de Caidas por Trobas
INSERT INTO zz_new_system.dashboard
SELECT 3,'CAIDAS TROBAS' AS tipo,'',COUNT(*) AS cant,SUM(offline) AS clientes,'red' AS color,'monitor_geo_alertas_caidas' AS url,
'Caidas Trobas' AS categoria 
FROM alertasx.caidas_new 
WHERE Caida='SI';
#
##Insertar Datos de Caidas por Amplificador
INSERT INTO zz_new_system.dashboard
SELECT 3,'CAIDAS AMPLIFICADOR' AS tipo,'',COUNT(*) AS cant,SUM(offline) AS clientes,'red' AS color,'monitor_geo_alertas_amplif' AS url,
'Caidas Amplificador' AS categoria  
FROM alertasx.caidas_new_amplif 
WHERE Caida='SI';
#
##Insertar Datos de Masivas Pendientes
INSERT INTO zz_new_system.dashboard
SELECT 4,CONCAT('MASIVAS PENDIENTES -->',codnod) AS tipo,codnod,COUNT(*) AS cant,SUM(Cantidad_Requerida) AS clientes,'red' AS color,
'monitor_masivas' AS enlace, 'Masivas Pendientes' AS categoria   
FROM dbpext.masivas_tempx 
WHERE codreqmnt>300000 
GROUP BY 2 HAVING(COUNT(*))>=3;
#
##Insertar Datos de Masivas Pendientes Total
INSERT INTO zz_new_system.dashboard
SELECT 4,'MASIVAS PENDIENTES TOTAL' AS tipo,'',COUNT(*) AS cant,SUM(IF(Cantidad_Requerida<2500,Cantidad_Requerida,0)) AS clientes,
'red' AS color,'monitor_masivas' AS url,'Masivas Pendientes'   
FROM dbpext.masivas_tempx WHERE codreqmnt>300000;
#
##Insertar Datos de Total Clientes
/*
INSERT INTO zz_new_system.dashboard
SELECT 5,CONCAT('TOTAL CLIENTES: ') AS tipo,'',0 AS cant,COUNT(*) AS clientes,'#2F4F4F' AS color,'cuarentena_movistar_total.php' AS enlace  
FROM alertasx.cuarentena_mtotal a;
*/
#
##Insertar Datos de Clientes Movistar Total
/*
INSERT INTO zz_new_system.dashboard
SELECT 5,CONCAT('MOVISTAR TOTAL (Averias):',b.tipreqini,'-' ,b.`codmotv`) AS tipo,'',0 AS cant,COUNT(*) AS clientes,'gray' AS color,
'cuarentena_movistar_total.php' AS enlace    
FROM catalogos.movistar_total a 
INNER JOIN cms.req_pend_macro b ON a.clientecms=b.codcli
WHERE DATEDIFF(NOW(),b.fec_registro)<=7
GROUP BY 2;
*/
#
##Insertar Datos de Puertos Saturados de Casa
INSERT INTO zz_new_system.dashboard
SELECT 6,'PUERTOS SATURADOS >80% (CASA)' AS tipo,'',COUNT(*) AS cant,SUM(b.clientes) AS clientes,'red' AS color,
'view_saturacion.php?ncmts=CASA' AS url,'Puertos Saturados' AS categoria
FROM alertasx.puertos_down_saturados a
INNER JOIN (SELECT cmts,down,clientes FROM reportes.portadorasxpuerto_tr GROUP BY cmts,down) b ON a.cmts=b.cmts AND a.down=b.down
LEFT JOIN ccm1.cmts_ip cm ON a.cmts=cm.cmts
WHERE a.saturado='CONTINUA' AND SUBSTR(a.down,1,1)="'" AND a.rangosat IN ('90_100','80_90');
#
##Insertar Datos de Puertos Saturados de Cisco
INSERT INTO zz_new_system.dashboard
SELECT 7,'PUERTOS SATURADOS >80% (CISCO)' AS tipo,'',COUNT(*) AS cant, SUM(b.clientes) AS clientes,'red' AS color,
'view_saturacion.php?ncmts=CISCO' AS url,'Puertos Saturados' AS categoria
FROM alertasx.puertos_down_saturados a
INNER JOIN (SELECT cmts,down,clientes FROM reportes.portadorasxpuerto_tr GROUP BY cmts,down) b ON a.cmts=b.cmts AND a.down=b.down
LEFT JOIN ccm1.cmts_ip cm ON a.cmts=cm.cmts
WHERE a.saturado='CONTINUA' AND SUBSTR(a.down,1,1)="C" AND a.rangosat IN ('90_100','80_90');
#
##Insertar Datos de Clientes Criticos
/*
INSERT INTO zz_new_system.dashboard
SELECT 8,CONCAT('CLIENTES CRITICOS : ',STATUS) AS tipo,'', 0 AS cant, COUNT(*) AS clientes,
IF(SUBSTR(STATUS,1,1) IN (3,6,4,5,7) AND a.estado='Activo' ,'green',
IF(SUBSTR(STATUS,1,1)=1 AND tipoaveria ='' AND a.estado='Activo' ,'red',
IF(SUBSTR(STATUS,1,1)=1 AND TRIM(tipoaveria)='' AND a.estado='Activo' ,'red',
IF(SUBSTR(STATUS,1,1)=1 AND tipoaveria='NO DESEA ATENCION' AND a.estado='Activo' ,'green',
IF(SUBSTR(STATUS,1,1)=1 AND tipoaveria IN ('PUNTUAL','MASIVA','Masiva','Puntual') AND a.estado='Activo' ,'red',
IF(SUBSTR(STATUS,1,1)=2 AND tipoaveria IN ('NO DESEA ATENCION','APAGA MODEM') AND a.estado='Activo' ,'green',
IF(SUBSTR(STATUS,1,1)=2 AND tipoaveria IN ('PUNTUAL','MASIVA','Masiva','Puntual') AND a.estado='Activo' ,'orange',
IF(SUBSTR(STATUS,1,1)=2 AND tipoaveria ='' AND a.estado='Activo' ,'orange',
IF(SUBSTR(STATUS,1,1)=2 AND TRIM(tipoaveria)='' AND a.estado='Activo' ,'orange',
IF(SUBSTR(STATUS,1,1)=2 AND tipoaveria IS NULL AND a.estado='Activo' ,'orange',
IF(a.estado='Inactivo','brown','green'))))))))))) AS color, 'cuarentena_movistar_total.php' AS url,'Clientes Criticos' AS categoria  
FROM alertasx.criticos_view a 
GROUP BY 2,6;
*/
#
##Insertar Datos de Total Averias Hoy
INSERT INTO zz_new_system.dashboard
SELECT 9,CONCAT('TOTAL AVERIAS INGRESADAS HOY ') AS tipo,'',0 AS cant,COUNT(*) AS clientes,'#2F4F4F' AS color,
'grafica_averias_jefatura.php' AS url, 'Averias' AS categoria  
FROM (SELECT * FROM ccm1.averias_m1_new  a INNER JOIN catalogos.jefaturas jj ON a.codnod=jj.nodo
WHERE DATEDIFF(NOW(),fec_mov)=0 AND tipreqini IN ('R7','RA','RP') GROUP BY a.codreq) xx;
#
##Insertar registros de cuarentena
INSERT INTO zz_new_system.dashboard
SELECT IF(a.tipo="AVERIAS","22","23") AS codigo, CONCAT("CUARENTENAS ",a.tipo," - ",a.nombre) AS detalle, a.id AS nodo,
COUNT(DISTINCT(b.nodo)) AS cant2, COUNT(DISTINCT(b.IDCLIENTECRM)) AS cant1,
IF(a.tipo="AVERIAS","green","orange") AS color, "/admin/cuarentena/" AS url, 
IF(a.tipo='AVERIAS','Cuarentena Averias','Cuarentena Criticos') AS categoria
FROM zz_new_system.gestion_cuarentena a
INNER JOIN zz_new_system.cuarentenas_total b ON a.id=b.idGestionCuarentena
WHERE a.cuadroMando='Activo' AND a.estado='Activo'
GROUP BY detalle;
#
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_grafica_averias_x_jefatura_troba` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_grafica_averias_x_jefatura_troba` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_grafica_averias_x_jefatura_troba`()
BEGIN
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_promedio;
	INSERT INTO zz_new_system.graf_promedio
	SELECT DISTINCT
	CASE 
	  WHEN SUBSTR(a.nroplano,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CONCAT(a.codnod,a.nroplano) AS troba, a.dia_mov,b.desdia,LPAD(TRIM(SUBSTR(a.fec_mov,12,2)),2,'0') AS hora,COUNT(*) AS aver,
	cont_reqs.nro_reqs
	FROM ccm1.v_averias_x_nodo_troba_by_codreq a 
	INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia 
	INNER JOIN (
		SELECT reqs.desdia, reqs.hora, COUNT(*) AS nro_reqs
		FROM (
		SELECT a.dia_mov,b.desdia,SUBSTR(fec_mov,12,2) AS hora,COUNT(*) AS aver FROM ccm1.v_averias_x_nodo_troba_by_codreq a 
		INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia 
		WHERE tipreqini IN ('R7','RA','RP') AND DATEDIFF(NOW(),dia_mov)<=30 AND DATEDIFF(NOW(),dia_mov)>=0 AND DAYOFWEEK(a.dia_mov)=DAYOFWEEK(NOW())
		GROUP BY 1,2,3) reqs
		GROUP BY reqs.desdia, reqs.hora
	) cont_reqs ON cont_reqs.desdia = b.desdia AND cont_reqs.hora = LPAD(TRIM(SUBSTR(a.fec_mov,12,2)),2,'0')
	LEFT JOIN catalogos.jefaturas jj ON a.codnod=jj.nodo	
	WHERE tipreqini IN ('R7','RA','RP') 
	  AND DATEDIFF(NOW(),dia_mov)<=30 AND DATEDIFF(NOW(),dia_mov)>=0 AND DAYOFWEEK(a.dia_mov)=DAYOFWEEK(NOW())
	GROUP BY jefatura, troba, dia_mov, desdia, hora;	
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_ayer;
	INSERT INTO zz_new_system.graf_ayer
	SELECT DISTINCT
	CASE 
	  WHEN SUBSTR(a.nroplano,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CONCAT(a.codnod,a.nroplano) AS troba, b.desdia,LPAD(TRIM(SUBSTR(a.fec_mov,12,2)),2,'0') AS hora,COUNT(*) AS aver 
	FROM ccm1.v_averias_x_nodo_troba_by_codreq a 
	INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia
	LEFT JOIN catalogos.jefaturas jj ON a.codnod=jj.nodo	
	WHERE tipreqini IN ('R7','RA','RP') 
	  AND DATEDIFF(NOW(),a.dia_mov)=1
	GROUP BY jefatura, troba, desdia, hora;
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_hoy;
	INSERT INTO zz_new_system.graf_hoy
	SELECT DISTINCT
	CASE 
	  WHEN SUBSTR(a.nroplano,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CONCAT(a.codnod,a.nroplano) AS troba, b.desdia,LPAD(TRIM(SUBSTR(a.fec_mov,12,2)),2,'0') AS hora,COUNT(*) AS aver 
	FROM ccm1.v_averias_x_nodo_troba_by_codreq a 
	INNER JOIN catalogos.dias b ON DAYOFWEEK(a.dia_mov)=b.dia 
	LEFT JOIN catalogos.jefaturas jj ON a.codnod=jj.nodo	
	WHERE tipreqini IN ('R7','RA','RP') 
	  AND DATEDIFF(NOW(),a.dia_mov)=0
	GROUP BY jefatura, troba, desdia, hora;
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_arbol_tot;
	INSERT INTO zz_new_system.graf_arbol_tot
	SELECT DISTINCT 
	CASE 
	  WHEN SUBSTR(c.troba_real,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CASE
	  WHEN c.nodo_real IS NULL OR c.troba_real IS NULL THEN 'Otros'
	  ELSE CONCAT(c.nodo_real,c.troba_real) 
	END AS troba, 
	LPAD(TRIM(SUBSTR(dh.fechahora,12,2)),2,'0') AS hora ,COUNT(*) AS arboltot 
	FROM arboldecisiones.`decisiones_hoy` dh
	LEFT JOIN arboldecisiones.v_clientes_arboldec_con_nodo_troba c ON dh.idclientecrm = c.idclientecrm
	  -- clientes que no estan ni en nclientes ni en planta clarita!! --- Se agruparan como "Otros"
	LEFT JOIN catalogos.jefaturas jj ON c.nodo_real=jj.nodo
	WHERE DATEDIFF(NOW(),dh.fechahora)=0
	GROUP BY jefatura, troba, hora;
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_arbol_hoy;
	INSERT INTO zz_new_system.graf_arbol_hoy
	SELECT DISTINCT 
	CASE 
	  WHEN SUBSTR(resumen.troba_real,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CASE
	  WHEN resumen.nodo_real IS NULL OR resumen.troba_real IS NULL THEN 'Otros'
	  ELSE CONCAT(resumen.nodo_real,resumen.troba_real) 
	END AS troba, 
	-- resumen.troba_real, resumen.nodo_real,
	resumen.hora, SUM(resumen.arbol) AS arbol 
	FROM (	
	  SELECT DISTINCT 'req_pend_macro_final' AS tipo, a1.fec_registro AS fecharegistro, c1.troba_real, c1.nodo_real, LPAD(TRIM(SUBSTR(a1.fec_registro,12,2)),2,'0') AS hora, COUNT(DISTINCT b1.`fechahora`) AS arbol 
	  FROM cms.`req_pend_macro_final` a1 
	  LEFT JOIN arboldecisiones.`decisiones_hoy` b1 ON a1.`codcli`=b1.`idclientecrm` 
  	    AND DATEDIFF(NOW(),a1.`fec_registro`)=0 
	    AND DATEDIFF(NOW(),b1.`fechahora`)=0 
	  LEFT JOIN arboldecisiones.v_clientes_arboldec_con_nodo_troba_fecha c1 ON a1.`codcli` = c1.idclientecrm
  	    AND DATEDIFF(NOW(),a1.`fec_registro`)=0 
	    AND DATEDIFF(NOW(),c1.`fechahora`)=0 
	  WHERE DATEDIFF(NOW(),a1.`fec_registro`)=0 
	  GROUP BY tipo, fecharegistro, c1.troba_real, c1.nodo_real, hora
	  UNION
	  SELECT DISTINCT 'aver_liq_catv_pais' AS tipo, a2.fecharegistro AS fecharegistro, c2.troba_real, c2.nodo_real, LPAD(TRIM(SUBSTR(a2.fecharegistro,12,2)),2,'0') AS hora, COUNT(DISTINCT b2.`fechahora`) AS arbol 
	  FROM cms.`aver_liq_catv_pais` a2
	  LEFT JOIN arboldecisiones.`decisiones_hoy` b2 ON a2.`codigodelcliente`=b2.`idclientecrm` 
	    AND DATEDIFF(NOW(),a2.`fecharegistro`)=0 
	    AND DATEDIFF(NOW(),b2.`fechahora`)=0 
	  LEFT JOIN arboldecisiones.v_clientes_arboldec_con_nodo_troba_fecha c2 ON a2.`codigodelcliente` = c2.idclientecrm
  	    AND DATEDIFF(NOW(),a2.`fecharegistro`)=0 
	    AND DATEDIFF(NOW(),c2.`fechahora`)=0 
	  WHERE DATEDIFF(NOW(),a2.`fecharegistro`)=0 
	  GROUP BY tipo, fecharegistro, c2.troba_real, c2.nodo_real, hora
	  
	) resumen
	LEFT JOIN catalogos.jefaturas jj ON resumen.nodo_real=jj.nodo
	WHERE DATEDIFF(NOW(),resumen.fecharegistro)=0 
        GROUP BY jefatura, troba, resumen.hora;
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_llamadas;
	INSERT INTO  zz_new_system.graf_llamadas
	SELECT DISTINCT
	CASE 
	  WHEN SUBSTR(a.troba,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CASE
	  WHEN a.nodo IS NULL OR a.troba IS NULL THEN 'Otros'
	  ELSE CONCAT(a.nodo,a.troba) 
	END AS troba, 
        LPAD(TRIM(SUBSTR(a.fechahora,12,2)),2,'0') AS horallam, COUNT(*) AS llamadas 
        FROM alertasx.`alertas_dmpe` a 
        LEFT JOIN catalogos.jefaturas jj ON a.nodo=jj.nodo
        GROUP BY jefatura, troba, horallam;
	#############################################################
	TRUNCATE TABLE zz_new_system.graf_liquidaciones;
	INSERT INTO zz_new_system.graf_liquidaciones
	SELECT DISTINCT
	CASE 
	  WHEN SUBSTR(a.plano,1,1) = 'G' THEN 'GPON'
	  WHEN jj.jefatura IS NOT NULL THEN jj.jefatura
	  ELSE 'Otros'
	END AS jefatura, 
	CASE
	  WHEN a.codnod IS NULL OR a.plano IS NULL THEN 'Otros'
	  ELSE CONCAT(a.codnod,a.plano) 
	END AS troba, 
	LPAD(TRIM(SUBSTR(a.fecha_liquidacion,12,2)),2,'0') Hora, COUNT(*) AS liq 
	FROM cms.aver_liq_catv_pais a 
	LEFT JOIN catalogos.jefaturas jj ON a.codnod=jj.nodo -- and DATEDIFF(NOW(),a.fecha_liquidacion)=0 
        WHERE DATEDIFF(NOW(),a.fecha_liquidacion)=0 
	GROUP BY jefatura, troba, Hora ;
    END */$$
DELIMITER ;

/*Table structure for table `v_graf_promedio_x_dia_hora` */

DROP TABLE IF EXISTS `v_graf_promedio_x_dia_hora`;

/*!50001 DROP VIEW IF EXISTS `v_graf_promedio_x_dia_hora` */;
/*!50001 DROP TABLE IF EXISTS `v_graf_promedio_x_dia_hora` */;

/*!50001 CREATE TABLE  `v_graf_promedio_x_dia_hora`(
 `desdia` varchar(20) ,
 `hora` varchar(2) ,
 `aver` decimal(21,0) 
)*/;

/*View structure for view v_graf_promedio_x_dia_hora */

/*!50001 DROP TABLE IF EXISTS `v_graf_promedio_x_dia_hora` */;
/*!50001 DROP VIEW IF EXISTS `v_graf_promedio_x_dia_hora` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `v_graf_promedio_x_dia_hora` AS (select `c`.`desdia` AS `desdia`,`c`.`hora` AS `hora`,round(avg(`c`.`aver`),0) AS `aver` from `graf_promedio` `c` group by `c`.`desdia`,`c`.`hora`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
