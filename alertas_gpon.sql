/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - alertas_gpon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alertas_gpon` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alertas_gpon`;

/*Table structure for table `dslam_mon` */

DROP TABLE IF EXISTS `dslam_mon`;

CREATE TABLE `dslam_mon` (
  `id` int(11) NOT NULL,
  `DSLAM` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_problemas_volcado` */

DROP TABLE IF EXISTS `gpon_problemas_volcado`;

CREATE TABLE `gpon_problemas_volcado` (
  `LINE_ID` int(11) DEFAULT NULL,
  `DSLAM` varchar(29) DEFAULT NULL,
  `DSLAM_IP` varchar(22) DEFAULT NULL,
  `PORT` varchar(19) DEFAULT NULL,
  `CHIPSET_VENDOR` varchar(14) DEFAULT NULL,
  `CHIPSET_MODEL` varchar(22) DEFAULT NULL,
  `CHIPSET_VERSION` varchar(22) DEFAULT NULL,
  `CHIPSET_SERIAL_NUMBER` varchar(22) DEFAULT NULL,
  `CIRCUIT_ID` varchar(22) DEFAULT NULL,
  `ESTIMATION_DATE` varchar(21) DEFAULT NULL,
  `RANGO` int(11) DEFAULT NULL,
  `TX_POWER_DS` varchar(13) DEFAULT NULL,
  `RX_POWER_DS` varchar(16) DEFAULT NULL,
  `TX_POWER_US` varchar(14) DEFAULT NULL,
  `RX_POWER_US` varchar(16) DEFAULT NULL,
  `DS_ATTENUATION` varchar(15) DEFAULT NULL,
  `US_ATTENUATION` varchar(15) DEFAULT NULL,
  `TEMPERATURE_OLT` int(11) DEFAULT NULL,
  `CURRENT_OLT` int(11) DEFAULT NULL,
  `VOLTAGE_OLT` varchar(13) DEFAULT NULL,
  `TEMPERATURE_ONT` int(11) DEFAULT NULL,
  `CURRENT_ONT` int(11) DEFAULT NULL,
  `VOLTAGE_ONT` varchar(14) DEFAULT NULL,
  `LINK_STATE_DESCRIPTION` varchar(12) DEFAULT NULL,
  `LINK_QUALITY` int(11) DEFAULT NULL,
  `LINK_QUALITY_DESCRIPTION` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_FAULT` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_ALARM` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_REINIT` varchar(13) DEFAULT NULL,
  `LQ_DESCRIPTION_DS_POWER` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_DS_ERRORS` varchar(13) DEFAULT NULL,
  `LQ_DESCRIPTION_US_POWER` varchar(16) DEFAULT NULL,
  `LQ_DESCRIPTION_US_ERRORS` varchar(16) DEFAULT NULL,
  `SHORT_TERM_LINK_QUALITY` int(11) DEFAULT NULL,
  `SHORT_TERM_LINK_QUALITY_DESCR` varchar(27) DEFAULT NULL,
  `FAULT` int(11) DEFAULT NULL,
  `FAULT_DESCRIPTION` varchar(24) DEFAULT NULL,
  `FAULT_LOCATION` varchar(10) DEFAULT NULL,
  `FAULT_LOCATION_DESCRIPTION` varchar(13) DEFAULT NULL,
  `HIGH_LEVEL_ACTION` varchar(22) DEFAULT NULL,
  `DS_BIP8_ERROR_RAW` int(11) DEFAULT NULL,
  `DS_BIP8_ERROR_X1_DESCRIPTION` varchar(16) DEFAULT NULL,
  `US_BIP8_ERROR_RAW` int(11) DEFAULT NULL,
  `US_BIP8_ERROR_X1_DESCRIPTION` varchar(16) DEFAULT NULL,
  `FIBER_SEGMENT_1_NAME` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_1_LENGTH` varchar(10) DEFAULT NULL,
  `SPLITTER_1_NAME` varchar(10) DEFAULT NULL,
  `SPLITTER_1_RATIO` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_2_NAME` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_2_LENGTH` varchar(10) DEFAULT NULL,
  `SPLITTER_2_NAME` varchar(10) DEFAULT NULL,
  `SPLITTER_2_RATIO` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_3_NAME` varchar(10) DEFAULT NULL,
  `FIBER_SEGMENT_3_LENGTH` varchar(10) DEFAULT NULL,
  `PUERTO` varchar(10) DEFAULT NULL,
  KEY `LINE_ID` (`LINE_ID`),
  KEY `DSLAM` (`DSLAM`),
  KEY `DSLAM_IP` (`DSLAM_IP`),
  KEY `PORT` (`PORT`),
  KEY `FAULT_DESCRIPTION` (`FAULT_DESCRIPTION`),
  KEY `puerto` (`PUERTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gpon_resul_mon` */

DROP TABLE IF EXISTS `gpon_resul_mon`;

CREATE TABLE `gpon_resul_mon` (
  `LINE_ID` int(11) NOT NULL,
  `FAULD_DESCRIPTION` varchar(80) DEFAULT NULL,
  `DSLAM` varchar(100) DEFAULT NULL,
  `FECHAHORA` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LINE_ID`),
  KEY `DSLAM` (`DSLAM`),
  KEY `FAULD_DESCRIPTION` (`FAULD_DESCRIPTION`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `sp_detecta_problemas_volcado` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_detecta_problemas_volcado` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`UserMultiWeb`@`%` PROCEDURE `sp_detecta_problemas_volcado`()
BEGIN
	TRUNCATE alertas_gpon.gpon_problemas_volcado;
	INSERT IGNORE alertas_gpon.gpon_problemas_volcado
	SELECT a.*,substr(a.PORT,1,LOCATE('#',a.port)-1) as PUERTO FROM catalogos.gpon_volcado a
	WHERE FAULT_DESCRIPTION NOT IN ('NO_FAULT_FOUND','UNKNOWN');
    END */$$
DELIMITER ;

/*Table structure for table `view_dslam_fault` */

DROP TABLE IF EXISTS `view_dslam_fault`;

/*!50001 DROP VIEW IF EXISTS `view_dslam_fault` */;
/*!50001 DROP TABLE IF EXISTS `view_dslam_fault` */;

/*!50001 CREATE TABLE  `view_dslam_fault`(
 `DSLAM` varchar(29) ,
 `FIBER_CUT` decimal(23,0) ,
 `MILD_CONNECTOR_ISSUE` decimal(23,0) ,
 `SEVERE_CONNECTOR_ISSUE` decimal(23,0) ,
 `NO_FAULT_FOUND` decimal(23,0) ,
 `UNKNOWN` decimal(23,0) ,
 `TOTAL` bigint(21) 
)*/;

/*Table structure for table `view_puertos_alertados` */

DROP TABLE IF EXISTS `view_puertos_alertados`;

/*!50001 DROP VIEW IF EXISTS `view_puertos_alertados` */;
/*!50001 DROP TABLE IF EXISTS `view_puertos_alertados` */;

/*!50001 CREATE TABLE  `view_puertos_alertados`(
 `DSLAM` varchar(29) ,
 `PUERTO` varchar(10) ,
 `CANT` bigint(21) 
)*/;

/*Table structure for table `view_puertos_fault` */

DROP TABLE IF EXISTS `view_puertos_fault`;

/*!50001 DROP VIEW IF EXISTS `view_puertos_fault` */;
/*!50001 DROP TABLE IF EXISTS `view_puertos_fault` */;

/*!50001 CREATE TABLE  `view_puertos_fault`(
 `DSLAM` varchar(29) ,
 `PUERTO` varchar(10) ,
 `FIBER_CUT` decimal(23,0) ,
 `MILD_CONNECTOR_ISSUE` decimal(23,0) ,
 `SEVERE_CONNECTOR_ISSUE` decimal(23,0) ,
 `NO_FAULT_FOUND` decimal(23,0) ,
 `UNKNOWN` decimal(23,0) ,
 `CANT` bigint(21) 
)*/;

/*View structure for view view_dslam_fault */

/*!50001 DROP TABLE IF EXISTS `view_dslam_fault` */;
/*!50001 DROP VIEW IF EXISTS `view_dslam_fault` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `view_dslam_fault` AS (select `gpon_problemas_volcado`.`DSLAM` AS `DSLAM`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'FIBER_CUT'),1,0)) AS `FIBER_CUT`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'MILD_CONNECTOR_ISSUE'),1,0)) AS `MILD_CONNECTOR_ISSUE`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'SEVERE_CONNECTOR_ISSUE'),1,0)) AS `SEVERE_CONNECTOR_ISSUE`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'NO_FAULT_FOUND'),1,0)) AS `NO_FAULT_FOUND`,sum(if(((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'UNKNOWN') or (`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = '')),1,0)) AS `UNKNOWN`,count(0) AS `TOTAL` from `gpon_problemas_volcado` group by 1 order by count(0) desc) */;

/*View structure for view view_puertos_alertados */

/*!50001 DROP TABLE IF EXISTS `view_puertos_alertados` */;
/*!50001 DROP VIEW IF EXISTS `view_puertos_alertados` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `view_puertos_alertados` AS (select `gpon_problemas_volcado`.`DSLAM` AS `DSLAM`,`gpon_problemas_volcado`.`PUERTO` AS `PUERTO`,count(0) AS `CANT` from `gpon_problemas_volcado` group by 1,2 order by count(0) desc) */;

/*View structure for view view_puertos_fault */

/*!50001 DROP TABLE IF EXISTS `view_puertos_fault` */;
/*!50001 DROP VIEW IF EXISTS `view_puertos_fault` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`UserMultiWeb`@`%` SQL SECURITY DEFINER VIEW `view_puertos_fault` AS (select `gpon_problemas_volcado`.`DSLAM` AS `DSLAM`,`gpon_problemas_volcado`.`PUERTO` AS `PUERTO`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'FIBER_CUT'),1,0)) AS `FIBER_CUT`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'MILD_CONNECTOR_ISSUE'),1,0)) AS `MILD_CONNECTOR_ISSUE`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'SEVERE_CONNECTOR_ISSUE'),1,0)) AS `SEVERE_CONNECTOR_ISSUE`,sum(if((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'NO_FAULT_FOUND'),1,0)) AS `NO_FAULT_FOUND`,sum(if(((`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = 'UNKNOWN') or (`gpon_problemas_volcado`.`FAULT_DESCRIPTION` = '')),1,0)) AS `UNKNOWN`,count(0) AS `CANT` from `gpon_problemas_volcado` group by 1,2 order by count(0) desc) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
