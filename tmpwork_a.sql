/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - tmpwork_a
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `tmpwork_a`;

/*Table structure for table `control` */

DROP TABLE IF EXISTS `control`;

CREATE TABLE `control` (
  `carga_casa` int(1) DEFAULT NULL,
  `fecha_casa` varchar(20) DEFAULT NULL,
  `carga_casa_scm` char(1) DEFAULT NULL,
  `fecha_carga_scm` varchar(20) DEFAULT NULL,
  `carga_huawei` int(1) DEFAULT NULL,
  `fecha_huawei` varchar(20) DEFAULT NULL,
  `carga_cisco` int(1) DEFAULT NULL,
  `fecha_cisco` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `limpiaSw` */

/*!50003 DROP PROCEDURE IF EXISTS  `limpiaSw` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `limpiaSw`()
BEGIN
	#switch tmpworka
	UPDATE `tmpwork_a`.`control` SET carga_casa=0,carga_casa_scm=0,carga_huawei=0,carga_cisco=0;
	#SWITCH huawei
	UPDATE `tmpwork_b`.`cisco_phy_sw` SET sw=0;
	UPDATE `tmpwork_b`.`cisco_scm_sw` SET sw=0;
	UPDATE `tmpwork_b`.`cisco_sw` SET sw=0;
	#SWITCH huawei
	UPDATE `tmpwork_c`.`huawei_phy_sw` SET sw=0;
	UPDATE `tmpwork_c`.`huawei_scm_sw` SET sw=0;
	#SWITCH CASA
	UPDATE `tmpwork_casa`.`casa_phy_sw` SET sw=0;
	UPDATE `tmpwork_casa`.`casa_scm_sw` SET sw=0;
	UPDATE `tmpwork_casa`.`cmts_casa_sw` SET scm_phy_t=0,scm_total_off=0,scm_total_on=0,fechahora_total_on=0,fechahora_total_off=0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `limpiasw_phy` */

/*!50003 DROP PROCEDURE IF EXISTS  `limpiasw_phy` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `limpiasw_phy`()
BEGIN
	repair table `tmpwork_a`.`control`;
	UPDATE `tmpwork_a`.`control` SET carga_casa=0;
	REPAIR TABLE tmpwork_casa.casa_phy_sw;
	UPDATE tmpwork_casa.casa_phy_sw SET sw=0,fecha_hora=NOW();
	repair table tmpwork_casa.cmts_casa_sw;
	UPDATE tmpwork_casa.`cmts_casa_sw` SET scm_phy_t=0,fechahora_phy_t=NOW();
	repair table tmpwork_c.huawei_phy_sw;
	UPDATE tmpwork_c.huawei_phy_sw SET sw=0,fechahora=NOW();
	repair table tmpwork_b.cisco_sw;
	UPDATE tmpwork_b.cisco_sw SET sw=0,fechahora=NOW();
    END */$$
DELIMITER ;

/* Procedure structure for procedure `limpiasw_scm` */

/*!50003 DROP PROCEDURE IF EXISTS  `limpiasw_scm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `limpiasw_scm`()
BEGIN
	repair table `tmpwork_a`.`control`;
	UPDATE `tmpwork_a`.`control` SET carga_casa_scm=0,carga_huawei=0,carga_cisco=0;
	#SWITCH cisco
	repair table `tmpwork_b`.`cisco_scm_sw`;
	UPDATE `tmpwork_b`.`cisco_scm_sw` SET sw=0;
	#SWITCH cisco
	REPAIR TABLE `tmpwork_b`.`cisco_sw`;
	UPDATE `tmpwork_b`.`cisco_sw` SET sw=0;
	#SWITCH huawei
	repair table `tmpwork_c`.`huawei_scm_sw`;
	UPDATE `tmpwork_c`.`huawei_scm_sw` SET sw=0;
	REPAIR TABLE `tmpwork_casa`.`cmts_casa_sw`;	
	UPDATE `tmpwork_casa`.`cmts_casa_sw` SET scm_total_off=0,scm_total_on=0,fechahora_total_on=0,fechahora_total_off=0;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
