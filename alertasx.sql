/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - alertasx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `alertasx`;

/*Table structure for table `fuentes_snmp` */

DROP TABLE IF EXISTS `fuentes_snmp`;

CREATE TABLE `fuentes_snmp` (
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ipaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `latitudx` varchar(20) DEFAULT NULL,
  `longitudy` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `resultadosnmp` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha` (`fechahora`),
  KEY `version` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_a` */

DROP TABLE IF EXISTS `fuentes_snmp_a`;

CREATE TABLE `fuentes_snmp_a` (
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ipaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `latitudx` varchar(20) DEFAULT NULL,
  `longitudy` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `resultadosnmp` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist` */

DROP TABLE IF EXISTS `fuentes_snmp_hist`;

CREATE TABLE `fuentes_snmp_hist` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist_b` */

DROP TABLE IF EXISTS `fuentes_snmp_hist_b`;

CREATE TABLE `fuentes_snmp_hist_b` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist_c` */

DROP TABLE IF EXISTS `fuentes_snmp_hist_c`;

CREATE TABLE `fuentes_snmp_hist_c` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist_d` */

DROP TABLE IF EXISTS `fuentes_snmp_hist_d`;

CREATE TABLE `fuentes_snmp_hist_d` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist_e` */

DROP TABLE IF EXISTS `fuentes_snmp_hist_e`;

CREATE TABLE `fuentes_snmp_hist_e` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `fuentes_snmp_hist_estructura` */

DROP TABLE IF EXISTS `fuentes_snmp_hist_estructura`;

CREATE TABLE `fuentes_snmp_hist_estructura` (
  `macadDress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `InputVoltagefinal` float NOT NULL,
  `OutputVoltagefinal` float NOT NULL,
  `OutputCurrentfinal` float NOT NULL,
  `TotalStringVoltagefinal` float NOT NULL,
  `EstadoInversor` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `TamperStatus` int(11) DEFAULT NULL,
  `MinorAlarm` int(11) DEFAULT NULL,
  `MajorAlarm` int(11) DEFAULT NULL,
  `Batteries` int(11) DEFAULT NULL,
  `BatteryStrings` int(11) DEFAULT NULL,
  `BatteryVoltageSupport` int(11) DEFAULT NULL,
  `StringChargeCurrent` float DEFAULT NULL,
  `StringDischargeCurrent` float DEFAULT NULL,
  `BatteryVoltage` varchar(50) DEFAULT NULL,
  UNIQUE KEY `macadDress_2` (`macadDress`,`fechahora`),
  KEY `macadDress` (`macadDress`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `sp_actualiza_estados_fuentes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualiza_estados_fuentes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_actualiza_estados_fuentes`()
BEGIN
REPLACE alertasx.fuentes_snmp_a 
SELECT c.* FROM alertasx.fuentes_snmp c WHERE c.resultadosnmp='SNMPOK'  AND c.`InputVoltagefinal`>180;
    END */$$
DELIMITER ;

/*Table structure for table `alertas_energia_real_view` */

DROP TABLE IF EXISTS `alertas_energia_real_view`;

/*!50001 DROP VIEW IF EXISTS `alertas_energia_real_view` */;
/*!50001 DROP TABLE IF EXISTS `alertas_energia_real_view` */;

/*!50001 CREATE TABLE  `alertas_energia_real_view`(
 `macaddress` varchar(20) ,
 `ipaddress` varchar(20) ,
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `distrito` varchar(80) ,
 `direccion` varchar(200) ,
 `latitudx` varchar(20) ,
 `longitudy` varchar(20) ,
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `InputVoltagefinal` float ,
 `OutputVoltagefinal` float ,
 `OutputCurrentfinal` float ,
 `TotalStringVoltagefinal` float ,
 `EstadoInversor` int(11) ,
 `resultadosnmp` varchar(20) ,
 `fechahora` varchar(20) 
)*/;

/*Table structure for table `fuentes_view` */

DROP TABLE IF EXISTS `fuentes_view`;

/*!50001 DROP VIEW IF EXISTS `fuentes_view` */;
/*!50001 DROP TABLE IF EXISTS `fuentes_view` */;

/*!50001 CREATE TABLE  `fuentes_view`(
 `macaddress` varchar(20) ,
 `ipaddress` varchar(20) ,
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `distrito` varchar(80) ,
 `direccion` varchar(200) ,
 `latitudx` varchar(20) ,
 `longitudy` varchar(20) ,
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `InputVoltagefinal` float ,
 `InputVoltagefinalcolor` varchar(7) ,
 `OutputVoltagefinal` float ,
 `OutputVoltagefinalcolor` varchar(7) ,
 `OutputCurrentfinal` float ,
 `OutputCurrentfinalcolor` varchar(7) ,
 `TotalStringVoltagefinal` varchar(12) ,
 `TotalStringVoltagefinalcolor` varchar(7) ,
 `EstadoInversor` int(11) ,
 `ColorTemperatura` varchar(7) ,
 `EstadoTemperatura` float ,
 `colorinversor` varchar(7) ,
 `estadoInversorText` varchar(35) ,
 `TamperStatusText` varchar(7) ,
 `TamperStatusColor` varchar(7) ,
 `AperturaPuerta` int(11) ,
 `MinorAlarmText` varchar(8) ,
 `MinorAlarmColor` varchar(7) ,
 `AlarmaMenor` int(11) ,
 `MajorAlarmText` varchar(8) ,
 `MajorAlarmColor` varchar(7) ,
 `AlarmaMayor` int(11) ,
 `BatteryVoltageValor` varchar(50) ,
 `CorrienteCargaBateria` float ,
 `CorrienteDescargaBateria` float ,
 `CargaBateriaAmperios` float ,
 `DescargaBateriaAmperios` float ,
 `EstadoSoporteBateriaTexto` varchar(82) ,
 `EstadoSoporteBateriaColor` varchar(7) ,
 `SoporteVoltageBateria` int(11) ,
 `fecha_bateria_antigua` date ,
 `antiguedad_bateria_years` bigint(21) ,
 `antiguedad_bateria_month` bigint(21) ,
 `antiguedad_bateria_days` bigint(21) ,
 `puntaje` double ,
 `fechahora` varchar(20) ,
 `resultadosnmp` varchar(20) ,
 `tienebateria` varchar(1) 
)*/;

/*Table structure for table `listafuentes_view` */

DROP TABLE IF EXISTS `listafuentes_view`;

/*!50001 DROP VIEW IF EXISTS `listafuentes_view` */;
/*!50001 DROP TABLE IF EXISTS `listafuentes_view` */;

/*!50001 CREATE TABLE  `listafuentes_view`(
 `macaddress` varchar(20) ,
 `marca` varchar(50) ,
 `InputVoltage` varchar(108) ,
 `OutputVoltage` varchar(108) ,
 `OutputCurrent` varchar(108) ,
 `TotalStringVoltage` varchar(108) ,
 `TamperStatus` varchar(108) ,
 `InverterStatus` varchar(108) ,
 `MinorAlarm` varchar(108) ,
 `MajorAlarm` varchar(108) ,
 `temperature` varchar(108) ,
 `Batteries` varchar(108) ,
 `BatteryStrings` varchar(108) ,
 `BatteryVoltageSupport` varchar(108) ,
 `StringChargeCurrent` varchar(108) ,
 `StringDischargeCurrent` varchar(108) ,
 `BatteryVoltage` varchar(108) 
)*/;

/*View structure for view alertas_energia_real_view */

/*!50001 DROP TABLE IF EXISTS `alertas_energia_real_view` */;
/*!50001 DROP VIEW IF EXISTS `alertas_energia_real_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `alertas_energia_real_view` AS (select `a`.`macaddress` AS `macaddress`,`a`.`ipaddress` AS `ipaddress`,`a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,`a`.`distrito` AS `distrito`,`a`.`direccion` AS `direccion`,`a`.`latitudx` AS `latitudx`,`a`.`longitudy` AS `longitudy`,`a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`a`.`InputVoltagefinal` AS `InputVoltagefinal`,`a`.`OutputVoltagefinal` AS `OutputVoltagefinal`,`a`.`OutputCurrentfinal` AS `OutputCurrentfinal`,`a`.`TotalStringVoltagefinal` AS `TotalStringVoltagefinal`,`a`.`EstadoInversor` AS `EstadoInversor`,`a`.`resultadosnmp` AS `resultadosnmp`,`a`.`fechahora` AS `fechahora` from (`fuentes_snmp` `a` join `fuentes_snmp_a` `b` on((`a`.`macaddress` = `b`.`macaddress`))) where ((`a`.`resultadosnmp` = 'SNMPOK') and (`a`.`InputVoltagefinal` < 180))) */;

/*View structure for view fuentes_view */

/*!50001 DROP TABLE IF EXISTS `fuentes_view` */;
/*!50001 DROP VIEW IF EXISTS `fuentes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `fuentes_view` AS (select `a`.`macaddress` AS `macaddress`,`a`.`ipaddress` AS `ipaddress`,`a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,`a`.`distrito` AS `distrito`,`a`.`direccion` AS `direccion`,`a`.`latitudx` AS `latitudx`,`a`.`longitudy` AS `longitudy`,`a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`a`.`InputVoltagefinal` AS `InputVoltagefinal`,if((`a`.`InputVoltagefinal` > 250),'#fc7474',if(((`a`.`InputVoltagefinal` > 230) and (`a`.`InputVoltagefinal` <= 250)),'#febf4a',if(((`a`.`InputVoltagefinal` >= 190) and (`a`.`InputVoltagefinal` <= 230)),'#6ebd6e',if(((`a`.`InputVoltagefinal` >= 180) and (`a`.`InputVoltagefinal` <= 190)),'#febf4a',if((`a`.`InputVoltagefinal` < 180),'#fc7474',''))))) AS `InputVoltagefinalcolor`,`a`.`OutputVoltagefinal` AS `OutputVoltagefinal`,if((`a`.`OutputVoltagefinal` > 95),'#fc7474',if(((`a`.`OutputVoltagefinal` > 90) and (`a`.`OutputVoltagefinal` <= 95)),'#febf4a',if(((`a`.`OutputVoltagefinal` >= 60) and (`a`.`OutputVoltagefinal` <= 90)),'#6ebd6e',if(((`a`.`OutputVoltagefinal` >= 40) and (`a`.`OutputVoltagefinal` <= 60)),'#febf4a',if((`a`.`OutputVoltagefinal` < 40),'#fc7474',''))))) AS `OutputVoltagefinalcolor`,`a`.`OutputCurrentfinal` AS `OutputCurrentfinal`,if((`a`.`OutputCurrentfinal` > 17),'#fc7474',if(((`a`.`OutputCurrentfinal` > 15) and (`a`.`OutputCurrentfinal` <= 17)),'#febf4a',if(((`a`.`OutputCurrentfinal` >= 4) and (`a`.`OutputCurrentfinal` <= 15)),'#6ebd6e',if(((`a`.`OutputCurrentfinal` > 0) and (`a`.`OutputCurrentfinal` <= 4)),'#febf4a',if((`a`.`OutputCurrentfinal` <= 0),'#fc7474',''))))) AS `OutputCurrentfinalcolor`,if(((`a`.`TotalStringVoltagefinal` = 0) and (`b`.`tienebateria` = 'N')),'SnBat',`a`.`TotalStringVoltagefinal`) AS `TotalStringVoltagefinal`,if(((`a`.`TotalStringVoltagefinal` > 45) and (`a`.`InputVoltagefinal` = 0)),'#fc7474',if(((`a`.`TotalStringVoltagefinal` > 44) and (`a`.`TotalStringVoltagefinal` <= 45) and (`a`.`InputVoltagefinal` < 180)),'#febf4a',if(((`a`.`TotalStringVoltagefinal` >= 33) and (`a`.`TotalStringVoltagefinal` <= 44) and (`a`.`InputVoltagefinal` > 190)),'#6ebd6e',if(((`a`.`TotalStringVoltagefinal` > 0) and (`a`.`TotalStringVoltagefinal` <= 33) and (`a`.`InputVoltagefinal` < 190)),'#febf4a',if(((`a`.`TotalStringVoltagefinal` <= 0) and (`a`.`InputVoltagefinal` < 180) and isnull(`b`.`tienebateria`)),'#fc7474',''))))) AS `TotalStringVoltagefinalcolor`,`a`.`EstadoInversor` AS `EstadoInversor`,if(((`a`.`temperature` >= -(50)) and (`a`.`temperature` <= 80)),'#6ebd6e',if(((`a`.`temperature` >= 81) and (`a`.`temperature` <= 120)),'#febf4a',if((`a`.`temperature` >= 121),'#fc7474',''))) AS `ColorTemperatura`,`a`.`temperature` AS `EstadoTemperatura`,if((`a`.`EstadoInversor` = 1),'#6ebd6e',if(((`a`.`EstadoInversor` >= 2) and (`a`.`EstadoInversor` <= 5)),'#fc7474','')) AS `colorinversor`,if((`a`.`EstadoInversor` = 1),'APAGADO',if((`a`.`EstadoInversor` = 2),'ENCENDIDO: FALLO DE LINEA CA',if((`a`.`EstadoInversor` = 3),'ENCENDIDO: EN CICLO DE PRUEBA LOCAL',if((`a`.`EstadoInversor` = 4),'ENCENDIDO: PRUEBA REMOTA INICIADA ',if((`a`.`EstadoInversor` = 5),'ALARMA: ULTIMA PRUEBA FALLIDA','SIN ACCESO'))))) AS `estadoInversorText`,if((`a`.`TamperStatus` = 1),'CERRADO',if((`a`.`TamperStatus` = 2),'ABIERTO','')) AS `TamperStatusText`,if((`a`.`TamperStatus` = 1),'#6ebd6e',if((`a`.`TamperStatus` = 2),'#fc7474','')) AS `TamperStatusColor`,`a`.`TamperStatus` AS `AperturaPuerta`,if((`a`.`MinorAlarm` = 1),'OK',if((`a`.`MinorAlarm` = 2),'ALARMADO','')) AS `MinorAlarmText`,if((`a`.`MinorAlarm` = 1),'#6ebd6e',if((`a`.`MinorAlarm` = 2),'#fc7474','')) AS `MinorAlarmColor`,`a`.`MinorAlarm` AS `AlarmaMenor`,if((`a`.`MajorAlarm` = 1),'OK',if((`a`.`MajorAlarm` = 2),'ALARMADO','')) AS `MajorAlarmText`,if((`a`.`MajorAlarm` = 1),'#6ebd6e',if((`a`.`MajorAlarm` = 2),'#fc7474','')) AS `MajorAlarmColor`,`a`.`MajorAlarm` AS `AlarmaMayor`,`a`.`BatteryVoltage` AS `BatteryVoltageValor`,`a`.`StringChargeCurrent` AS `CorrienteCargaBateria`,`a`.`StringDischargeCurrent` AS `CorrienteDescargaBateria`,`a`.`StringChargeCurrent` AS `CargaBateriaAmperios`,`a`.`StringDischargeCurrent` AS `DescargaBateriaAmperios`,if((`a`.`BatteryVoltageSupport` = 2),'Solo está disponible el voltaje de batería de cadena completa',if((`a`.`BatteryVoltageSupport` = 3),'Tanto la batería individual como los voltajes de cadena completa están disponibles',if((`a`.`BatteryVoltageSupport` = 1),'No hay monitoreo de voltaje de batería disponible','NO ACCESIBLE'))) AS `EstadoSoporteBateriaTexto`,if((`a`.`BatteryVoltageSupport` = 2),'#febf4a',if((`a`.`BatteryVoltageSupport` = 3),'#6ebd6e',if((`a`.`BatteryVoltageSupport` = 1),'#fc7474','WHITE'))) AS `EstadoSoporteBateriaColor`,`a`.`BatteryVoltageSupport` AS `SoporteVoltageBateria`,`b`.`fecha_bateria_antigua` AS `fecha_bateria_antigua`,timestampdiff(YEAR,`b`.`fecha_bateria_antigua`,now()) AS `antiguedad_bateria_years`,timestampdiff(MONTH,(`b`.`fecha_bateria_antigua` + interval timestampdiff(YEAR,`b`.`fecha_bateria_antigua`,now()) year),now()) AS `antiguedad_bateria_month`,timestampdiff(DAY,(`b`.`fecha_bateria_antigua` + interval timestampdiff(MONTH,`b`.`fecha_bateria_antigua`,now()) month),now()) AS `antiguedad_bateria_days`,((if((`a`.`resultadosnmp` = 'SNMPOK'),((((((if((`a`.`InputVoltagefinal` > 250),'9',if(((`a`.`InputVoltagefinal` > 230) and (`a`.`InputVoltagefinal` <= 250)),'5',if(((`a`.`InputVoltagefinal` >= 190) and (`a`.`InputVoltagefinal` <= 230) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`InputVoltagefinal` >= 180) and (`a`.`InputVoltagefinal` <= 190)),'5',if((`a`.`InputVoltagefinal` < 180),'9',''))))) + if((`a`.`OutputVoltagefinal` > 95),'9',if(((`a`.`OutputVoltagefinal` > 90) and (`a`.`OutputVoltagefinal` <= 95)),'5',if(((`a`.`OutputVoltagefinal` >= 60) and (`a`.`OutputVoltagefinal` <= 90) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`OutputVoltagefinal` >= 40) and (`a`.`OutputVoltagefinal` <= 60)),'5',if((`a`.`OutputVoltagefinal` < 40),'9','')))))) + if((`a`.`OutputCurrentfinal` > 17),'9',if(((`a`.`OutputCurrentfinal` > 15) and (`a`.`OutputCurrentfinal` <= 17)),'5',if(((`a`.`OutputCurrentfinal` >= 4) and (`a`.`OutputCurrentfinal` <= 15) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`OutputCurrentfinal` > 0) and (`a`.`OutputCurrentfinal` <= 4)),'5',if((`a`.`OutputCurrentfinal` <= 0),'9','')))))) + if((`a`.`TotalStringVoltagefinal` > 45),'18',if(((`a`.`TotalStringVoltagefinal` > 44) and (`a`.`TotalStringVoltagefinal` <= 45)),'9',if(((`a`.`TotalStringVoltagefinal` >= 33) and (`a`.`TotalStringVoltagefinal` <= 44) and (`b`.`tienebateria` = 'N')),'0',if(((`a`.`TotalStringVoltagefinal` > 0) and (`a`.`TotalStringVoltagefinal` <= 33)),'9',if((`a`.`TotalStringVoltagefinal` <= 0),'18','')))))) + if(((`a`.`InputVoltagefinal` > 0) and (`a`.`OutputVoltagefinal` > 0) and (`a`.`OutputCurrentfinal` > 0) and (`a`.`TotalStringVoltagefinal` <> 0)),100,50)) + if((`b`.`tienebateria` = 'N'),0,100)) + if(((`a`.`TotalStringVoltagefinal` = 0) and (`a`.`resultadosnmp` = 'SNMPOK')),0,100)),0) + if((`a`.`EstadoInversor` = 1),0,if((`a`.`EstadoInversor` = 2),8,if((`a`.`EstadoInversor` = 0),9,if((`a`.`EstadoInversor` > 2),8,0))))) + if(((`a`.`temperature` >= -(30)) and (`a`.`temperature` <= 80)),'9',if(((`a`.`temperature` >= 81) and (`a`.`temperature` <= 120)),'5',if((`a`.`temperature` >= 121),'0','0')))) AS `puntaje`,`a`.`fechahora` AS `fechahora`,`a`.`resultadosnmp` AS `resultadosnmp`,`b`.`tienebateria` AS `tienebateria` from (`alertasx`.`fuentes_snmp` `a` left join `catalogos`.`db_fuentes` `b` on((replace(`a`.`macaddress`,'.','') = `b`.`mac`)))) */;

/*View structure for view listafuentes_view */

/*!50001 DROP TABLE IF EXISTS `listafuentes_view` */;
/*!50001 DROP VIEW IF EXISTS `listafuentes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `listafuentes_view` AS (select `a`.`macaddress` AS `macaddress`,`b`.`marca` AS `marca`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`InputVoltage`,' -r 1') AS `InputVoltage`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`OutputVoltage`,' -r 1') AS `OutputVoltage`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`OutputCurrent`,' -r 1') AS `OutputCurrent`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`TotalStringVoltage`,' -r 1') AS `TotalStringVoltage`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`tamper`,' -r 1') AS `TamperStatus`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`InverterStatus`,' -r 1') AS `InverterStatus`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`MinorAlarm`,' -r 1') AS `MinorAlarm`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`MajorAlarm`,' -r 1') AS `MajorAlarm`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`temperature`,' -r 1') AS `temperature`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`Batteries`,' -r 1') AS `Batteries`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`BatteryStrings`,' -r 1') AS `BatteryStrings`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`BatteryVoltageSupport`,' -r 1') AS `BatteryVoltageSupport`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`StringChargeCurrent`,' -r 1') AS `StringChargeCurrent`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`StringDischargeCurrent`,' -r 1') AS `StringDischargeCurrent`,concat('snmpwalk -v2c -c MODEM8K_PILOTO ',`a`.`ipaddress`,' ',`b`.`BatteryVoltage`,' -r 1') AS `BatteryVoltage` from (`alertasx`.`fuentes_snmp` `a` left join `catalogos`.`oui_fuentes` `b` on(((substr(replace(`a`.`macaddress`,'.',''),1,6) = `b`.`oui_fuentes`) and (`a`.`version` = `b`.`version`)))) where (`a`.`ipaddress` not in ('-','0.0.0.0'))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
