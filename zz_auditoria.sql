/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - zz_auditoria
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zz_auditoria` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `zz_auditoria`;

/*Table structure for table `log_acceso` */

DROP TABLE IF EXISTS `log_acceso`;

CREATE TABLE `log_acceso` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `acceso_exitoso` char(2) NOT NULL,
  `sistema_operativo` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4941 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_cm_activacion` */

DROP TABLE IF EXISTS `log_cm_activacion`;

CREATE TABLE `log_cm_activacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `idcliente` varchar(50) DEFAULT NULL,
  `macAddress` varchar(17) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `nuevoEstado` varchar(50) DEFAULT NULL,
  `motivo` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_cm_reset_itw` */

DROP TABLE IF EXISTS `log_cm_reset_itw`;

CREATE TABLE `log_cm_reset_itw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `codCliente` varchar(50) DEFAULT NULL,
  `servicio` varchar(50) DEFAULT NULL,
  `producto` varchar(50) DEFAULT NULL,
  `venta` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_cm_scopesgroup` */

DROP TABLE IF EXISTS `log_cm_scopesgroup`;

CREATE TABLE `log_cm_scopesgroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `idcliente` varchar(50) DEFAULT NULL,
  `macAddress` varchar(17) DEFAULT NULL,
  `scopeGroup` varchar(50) DEFAULT NULL,
  `nuevoScopeGroup` varchar(50) DEFAULT NULL,
  `motivo` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=216369 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_cm_velocidades` */

DROP TABLE IF EXISTS `log_cm_velocidades`;

CREATE TABLE `log_cm_velocidades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `idcliente` varchar(50) DEFAULT NULL,
  `macAddress` varchar(17) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `nueva_velocidad` varchar(50) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `motivo` text,
  `fechaAccion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111821 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_modem_dhcp` */

DROP TABLE IF EXISTS `log_modem_dhcp`;

CREATE TABLE `log_modem_dhcp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `codCliente` varchar(50) NOT NULL,
  `macaddress` varchar(17) NOT NULL,
  `fabricante` varchar(30) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `dhcp_host` varchar(50) DEFAULT NULL,
  `dhcp_interface` varchar(50) DEFAULT NULL,
  `dhcp_mac` varchar(20) DEFAULT NULL,
  `dhcp_ip` varchar(20) DEFAULT NULL,
  `dhcp_nivel` varchar(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_modem_maping` */

DROP TABLE IF EXISTS `log_modem_maping`;

CREATE TABLE `log_modem_maping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `codCliente` varchar(50) NOT NULL,
  `macaddress` varchar(17) DEFAULT NULL,
  `fabricante` varchar(30) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `operacion` varchar(20) DEFAULT NULL,
  `service` varchar(30) DEFAULT NULL,
  `ipLan` varchar(20) DEFAULT NULL,
  `protocolo` varchar(20) DEFAULT NULL,
  `privatePort` varchar(20) DEFAULT NULL,
  `publicPort` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_modem_status` */

DROP TABLE IF EXISTS `log_modem_status`;

CREATE TABLE `log_modem_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `codCliente` varchar(50) NOT NULL,
  `macaddress` varchar(17) NOT NULL,
  `fabricante` varchar(30) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `frecuencia_up1` varchar(12) DEFAULT NULL,
  `power_up1` varchar(5) DEFAULT NULL,
  `frecuencua_up2` varchar(12) DEFAULT NULL,
  `power_up2` varchar(5) DEFAULT NULL,
  `frecuencia_down1` varchar(12) DEFAULT NULL,
  `snr_down1` varchar(5) DEFAULT NULL,
  `power_down1` varchar(5) DEFAULT NULL,
  `frecuencia_down2` varchar(12) DEFAULT NULL,
  `snr_down2` varchar(5) DEFAULT NULL,
  `power_down2` varchar(5) DEFAULT NULL,
  `frecuencia_down3` varchar(12) DEFAULT NULL,
  `snr_down3` varchar(5) DEFAULT NULL,
  `power_down3` varchar(5) DEFAULT NULL,
  `frecuencia_down4` varchar(12) DEFAULT NULL,
  `snr_down4` varchar(5) DEFAULT NULL,
  `power_down4` varchar(5) DEFAULT NULL,
  `frecuencia_down5` varchar(12) DEFAULT NULL,
  `snr_down5` varchar(5) DEFAULT NULL,
  `power_down5` varchar(5) DEFAULT NULL,
  `frecuencia_down6` varchar(12) DEFAULT NULL,
  `snr_down6` varchar(5) DEFAULT NULL,
  `power_down6` varchar(5) DEFAULT NULL,
  `frecuencia_down7` varchar(12) DEFAULT NULL,
  `snr_down7` varchar(5) DEFAULT NULL,
  `power_down7` varchar(5) DEFAULT NULL,
  `frecuencia_down8` varchar(12) DEFAULT NULL,
  `snr_down8` varchar(5) DEFAULT NULL,
  `power_down8` varchar(5) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_modem_wifi` */

DROP TABLE IF EXISTS `log_modem_wifi`;

CREATE TABLE `log_modem_wifi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `codCliente` varchar(50) DEFAULT NULL,
  `macaddress` varchar(17) DEFAULT NULL,
  `fabricante` varchar(30) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `firmware` varchar(50) DEFAULT NULL,
  `ssid` varchar(30) DEFAULT NULL,
  `interface` varchar(30) DEFAULT NULL,
  `channel` varchar(5) DEFAULT NULL,
  `bandwidth` varchar(12) DEFAULT NULL,
  `power` varchar(10) DEFAULT NULL,
  `secutiry1` varchar(50) DEFAULT NULL,
  `security2` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `ssid5G` varchar(30) DEFAULT NULL,
  `interface5G` varchar(30) DEFAULT NULL,
  `channel5G` varchar(5) DEFAULT NULL,
  `bandwidth5G` varchar(12) DEFAULT NULL,
  `power5G` varchar(10) DEFAULT NULL,
  `security5G` varchar(50) DEFAULT NULL,
  `password5G` varchar(50) DEFAULT NULL,
  `ssid_nuevo` varchar(30) DEFAULT NULL,
  `interface_nuevo` varchar(30) DEFAULT NULL,
  `channel_nuevo` varchar(5) DEFAULT NULL,
  `bandwidth_nuevo` varchar(12) DEFAULT NULL,
  `power_nuevo` varchar(10) DEFAULT NULL,
  `secutiry1_nuevo` varchar(50) DEFAULT NULL,
  `security2_nuevo` varchar(50) DEFAULT NULL,
  `password_nuevo` varchar(50) DEFAULT NULL,
  `ssid5G_nuevo` varchar(30) DEFAULT NULL,
  `interface5G_nuevo` varchar(30) DEFAULT NULL,
  `channel5G_nuevo` varchar(5) DEFAULT NULL,
  `bandwidth5G_nuevo` varchar(12) DEFAULT NULL,
  `power5G_nuevo` varchar(10) DEFAULT NULL,
  `security5G_nuevo` varchar(50) DEFAULT NULL,
  `password5G_nuevo` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_opciones_criticas` */

DROP TABLE IF EXISTS `log_opciones_criticas`;

CREATE TABLE `log_opciones_criticas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `direccion_ip` varchar(15) DEFAULT NULL,
  `estacion_trabajo` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_password` */

DROP TABLE IF EXISTS `log_password`;

CREATE TABLE `log_password` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `sistema_operativo` varchar(50) NOT NULL,
  `pass_old` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_roles` */

DROP TABLE IF EXISTS `log_roles`;

CREATE TABLE `log_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `accion` enum('store','update','delete') DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `acceso_total` enum('SI','NO') DEFAULT NULL,
  `rol_padre` varchar(50) DEFAULT NULL,
  `new_rol` varchar(50) DEFAULT NULL,
  `new_estado` char(1) DEFAULT NULL,
  `new_acceso_total` enum('SI','NO') DEFAULT NULL,
  `new_rol_padre` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_seguridad` */

DROP TABLE IF EXISTS `log_seguridad`;

CREATE TABLE `log_seguridad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) DEFAULT NULL,
  `id_parametro` int(10) DEFAULT NULL,
  `periodo_old` int(11) DEFAULT NULL,
  `periodo_new` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `description` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `log_usuario` */

DROP TABLE IF EXISTS `log_usuario`;

CREATE TABLE `log_usuario` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `sistema_operativo` varchar(50) NOT NULL,
  `estacion_trabajo` varchar(20) NOT NULL,
  `accion` varchar(15) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `new_empresa` varchar(50) DEFAULT NULL,
  `new_rol` varchar(50) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
