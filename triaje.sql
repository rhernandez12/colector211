/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - triaje
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`triaje` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `triaje`;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `codctr_final` int(11) NOT NULL,
  `area_final` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codctr_final`),
  KEY `codctr_final` (`codctr_final`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `averias_revisadas` */

DROP TABLE IF EXISTS `averias_revisadas`;

CREATE TABLE `averias_revisadas` (
  `codofcadm` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `tip_ing` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `estadomdm` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Direccion` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `nodocms` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `trobacms` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `nodohfc` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `trobahfc` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tap` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `desmotv` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `desnomctr` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `premium` varchar(7) CHARACTER SET utf8 NOT NULL,
  `movistar_total` varchar(14) CHARACTER SET utf8 NOT NULL,
  `codmotv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `scopesgroup` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `RxPwrdBmv` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `masiva` varchar(10) CHARACTER SET utf8 NOT NULL,
  `edoserv` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `zonal` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fecreg` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `dias` int(7) DEFAULT NULL,
  `desc_motivo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `fecrevision` varchar(20) DEFAULT NULL,
  `codctr_final` int(11) DEFAULT NULL,
  `area_final` varchar(10) DEFAULT NULL,
  `ultimagestion` varchar(100) DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `observacionescms` varchar(100) DEFAULT NULL,
  `motivotransferencia` varchar(100) DEFAULT NULL,
  `telef1` int(11) DEFAULT NULL,
  `telef2` int(11) DEFAULT NULL,
  `telef3` int(11) DEFAULT NULL,
  `fec_prog` varchar(20) DEFAULT NULL,
  `servicepackagecrmid` varchar(30) DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `codofcadm` (`codofcadm`),
  KEY `codcli` (`codcli`),
  KEY `tip_ing` (`tip_ing`),
  KEY `estadomdm` (`estadomdm`),
  KEY `nodocms` (`nodocms`),
  KEY `trobacms` (`trobacms`),
  KEY `nodohfc` (`nodohfc`),
  KEY `trobahfc` (`trobahfc`),
  KEY `codigotiporeq` (`codigotiporeq`),
  KEY `codctr` (`codctr`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `macstate` (`macstate`),
  KEY `zonal` (`zonal`),
  KEY `macaddress` (`macaddress`),
  KEY `fecreg` (`fecreg`),
  KEY `servicepackagecrmid` (`servicepackagecrmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `averias_revisadas_c` */

DROP TABLE IF EXISTS `averias_revisadas_c`;

CREATE TABLE `averias_revisadas_c` (
  `codofcadm` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `tip_ing` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `estadomdm` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Direccion` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `nodocms` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `trobacms` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `nodohfc` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `trobahfc` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tap` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `desmotv` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `desnomctr` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `premium` varchar(7) CHARACTER SET utf8 NOT NULL,
  `movistar_total` varchar(14) CHARACTER SET utf8 NOT NULL,
  `codmotv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `scopesgroup` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `RxPwrdBmv` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `masiva` varchar(10) CHARACTER SET utf8 NOT NULL,
  `edoserv` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `zonal` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fecreg` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `dias` int(7) DEFAULT NULL,
  `desc_motivo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `fecrevision` varchar(20) DEFAULT NULL,
  `codctr_final` int(11) DEFAULT NULL,
  `area_final` varchar(10) DEFAULT NULL,
  `ultimagestion` varchar(100) DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `observacionescms` varchar(100) DEFAULT NULL,
  `motivotransferencia` varchar(100) DEFAULT NULL,
  `telef1` int(11) DEFAULT NULL,
  `telef2` int(11) DEFAULT NULL,
  `telef3` int(11) DEFAULT NULL,
  `fec_prog` varchar(20) DEFAULT NULL,
  `servicepackagecrmid` varchar(30) DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `codofcadm` (`codofcadm`),
  KEY `codcli` (`codcli`),
  KEY `tip_ing` (`tip_ing`),
  KEY `estadomdm` (`estadomdm`),
  KEY `nodocms` (`nodocms`),
  KEY `trobacms` (`trobacms`),
  KEY `nodohfc` (`nodohfc`),
  KEY `trobahfc` (`trobahfc`),
  KEY `codigotiporeq` (`codigotiporeq`),
  KEY `codctr` (`codctr`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `macstate` (`macstate`),
  KEY `zonal` (`zonal`),
  KEY `macaddress` (`macaddress`),
  KEY `fecreg` (`fecreg`),
  KEY `servicepackagecrmid` (`servicepackagecrmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `averias_suspendidos` */

DROP TABLE IF EXISTS `averias_suspendidos`;

CREATE TABLE `averias_suspendidos` (
  `codofcadm` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `tip_ing` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `estadomdm` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Direccion` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `nodocms` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `trobacms` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `nodohfc` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `trobahfc` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tap` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `desmotv` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `desnomctr` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `premium` varchar(7) CHARACTER SET utf8 NOT NULL,
  `movistar_total` varchar(14) CHARACTER SET utf8 NOT NULL,
  `codmotv` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `interface` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `scopesgroup` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `macstate` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `RxPwrdBmv` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `masiva` varchar(10) CHARACTER SET utf8 NOT NULL,
  `edoserv` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `zonal` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fecreg` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `dias` int(7) DEFAULT NULL,
  `desc_motivo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `fecrevision` varchar(20) DEFAULT NULL,
  `codctr_final` int(11) DEFAULT NULL,
  `area_final` varchar(10) DEFAULT NULL,
  `ultimagestion` varchar(100) DEFAULT NULL,
  `TipoRuido` varchar(10) DEFAULT NULL,
  `observacionescms` varchar(100) DEFAULT NULL,
  `motivotransferencia` varchar(100) DEFAULT NULL,
  `telef1` int(11) DEFAULT NULL,
  `telef2` int(11) DEFAULT NULL,
  `telef3` int(11) DEFAULT NULL,
  `fec_prog` varchar(20) DEFAULT NULL,
  `servicepackagecrmid` varchar(30) DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `codofcadm` (`codofcadm`),
  KEY `codcli` (`codcli`),
  KEY `tip_ing` (`tip_ing`),
  KEY `estadomdm` (`estadomdm`),
  KEY `nodocms` (`nodocms`),
  KEY `trobacms` (`trobacms`),
  KEY `nodohfc` (`nodohfc`),
  KEY `trobahfc` (`trobahfc`),
  KEY `codigotiporeq` (`codigotiporeq`),
  KEY `codctr` (`codctr`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `macstate` (`macstate`),
  KEY `zonal` (`zonal`),
  KEY `macaddress` (`macaddress`),
  KEY `fecreg` (`fecreg`),
  KEY `servicepackagecrmid` (`servicepackagecrmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `estados_contrata` */

DROP TABLE IF EXISTS `estados_contrata`;

CREATE TABLE `estados_contrata` (
  `estado` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `codctr` varchar(15) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `gestion_triaje` */

DROP TABLE IF EXISTS `gestion_triaje`;

CREATE TABLE `gestion_triaje` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `codigoCliente` double DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `codigoServicio` int(20) DEFAULT NULL,
  `codigoRequerimiento` varchar(20) DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `segundaLinea` varchar(30) DEFAULT NULL,
  `resultadoSegundaLinea` varchar(50) DEFAULT NULL,
  `detalleResultado` varchar(50) DEFAULT NULL,
  `personaContacto` varchar(25) DEFAULT NULL,
  `numeroContacto` varchar(10) DEFAULT NULL,
  `observacionResultado` text,
  `EstadoDelCaso` varchar(25) DEFAULT NULL,
  `ResultadoVisita` varchar(25) DEFAULT NULL,
  `observacionVisitaTecnica` text,
  `fechaRegistro` datetime DEFAULT NULL,
  KEY `macAddressIndex` (`mac`),
  KEY `fechaRegistroIndex` (`fechaRegistro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `transferencias` */

DROP TABLE IF EXISTS `transferencias`;

CREATE TABLE `transferencias` (
  `codreq` int(11) DEFAULT NULL,
  `codctr_origen` int(11) DEFAULT NULL,
  `codctr_destino` int(11) DEFAULT NULL,
  `area_origen` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `area_destino` varchar(10) DEFAULT NULL,
  `codtecliq` varchar(6) CHARACTER SET utf8 NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `mot_trans` varchar(4) CHARACTER SET utf8 NOT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  KEY `codreq` (`codreq`),
  KEY `codctr_origen` (`codctr_origen`),
  KEY `codctr_destino` (`codctr_destino`),
  KEY `area_origen` (`area_origen`),
  KEY `area_destino` (`area_destino`),
  KEY `nodo` (`nodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `sp_triaje_01` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_triaje_01` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_triaje_01`()
BEGIN
TRUNCATE  triaje.averias_revisadas_c ;
/*--Limpieza del dato de la direccion --*/
update cms.req_pend_macro_final set desnomvia=substr(desnomvia,1,length(trim(desnomvia))-2);
/*--Data de averias pendientes --*/
TRUNCATE TABLE dbpext.`masivas_temp_c`;
INSERT INTO dbpext.`masivas_temp_c` SELECT * FROM dbpext.masivas_temp ;
TRUNCATE TABLE alertasx.caidas_new_amplif_c;
INSERT INTO alertasx.caidas_new_amplif_c SELECT * FROM alertasx.caidas_new_amplif WHERE Caida='SI';
TRUNCATE TABLE alertasx.caidas_new_c;
INSERT INTO alertasx.caidas_new_c SELECT * FROM alertasx.caidas_new  WHERE Caida='SI';
TRUNCATE TABLE alertasx.niveles_new_c; 
INSERT INTO alertasx.niveles_new_c SELECT * FROM alertasx.niveles_new;
TRUNCATE TABLE alertasx.alertasrf_r ;
INSERT INTO alertasx.alertasrf_r SELECT * FROM alertasx.alertasrf;
INSERT INTO triaje.averias_revisadas_c 
SELECT a.codofcadm , a.codreq,
a.codedo AS estado,
a.codcli,
IF( desobsordtrab LIKE '%RECIBE MENOS%' OR desobsordtrab LIKE '%LENIT%' OR desobsordtrab LIKE '%VEL%' OR desobsordtrab LIKE '%LENTITUD%'
OR desobsordtrab LIKE '%-LENT-%' OR desobsordtrab LIKE '%LENT%' OR desobsordtrab LIKE '%PAQUETES%' ,'LENTITUD',
IF( desobsordtrab LIKE '%ENGANCHA%' OR desobsordtrab LIKE '%SPPEDY%' OR desobsordtrab LIKE '%SPEEDY%' OR desobsordtrab LIKE '%NO NAV%'
OR desobsordtrab LIKE '%NO NVG%' OR desobsordtrab LIKE '%ON.LINE%' OR desobsordtrab LIKE '%SIN POTENCIA%' OR desobsordtrab LIKE '%DOCSIS%'
OR desobsordtrab LIKE '%SIN REVERSA%' OR desobsordtrab LIKE '%ON-LINE%' OR desobsordtrab LIKE '%READY%' OR desobsordtrab LIKE '%REDY%'
OR desobsordtrab LIKE '% IP %' OR desobsordtrab LIKE '%OFF%' OR desobsordtrab LIKE '%ON LINE%' OR desobsordtrab LIKE '%ONLINE%'
OR desobsordtrab LIKE '%ROUTER%' OR desobsordtrab LIKE '%READY%' OR desobsordtrab LIKE '%HFC%' OR desobsordtrab LIKE '%NAVEGA%'
OR desobsordtrab LIKE '%MODEM%' OR desobsordtrab LIKE '%MODEN%' OR desobsordtrab LIKE '%PROBLEMA CN%' OR desobsordtrab LIKE '%MOVISTAR 1%'
OR desobsordtrab LIKE '%M1%' OR desobsordtrab LIKE '%READY%' OR desobsordtrab LIKE '%INTRA%' OR desobsordtrab LIKE '%NAVEG%'
OR desobsordtrab LIKE '%INTER%' OR desobsordtrab LIKE '%SINCRO%','No Navega',
IF(desobsordtrab LIKE '%TRABAJOS PR%','TRABAJOS PROGRAMADOS',
IF(desobsordtrab LIKE '%MEDIA%NETWORK%' OR desobsordtrab LIKE '%CABECERA%' OR desobsordtrab LIKE '%EASY DIGITAL%','MASIVO DECODER',
IF(desobsordtrab LIKE '%DIGITALIZA%' OR desobsordtrab LIKE '%ZONA DIGI%','DIGITALIZACION',
IF(desobsordtrab LIKE '%SATURA%' OR desobsordtrab LIKE '%PUERTO%SATURADO%','SATURACION',
IF(desobsordtrab LIKE '%MALA TRANSFERENCIA%','MALA TRANSFERENCIA',
IF( desobsordtrab LIKE '%WI.FI%' OR desobsordtrab LIKE '%WI-FI%' OR desobsordtrab LIKE '%WI FI%' OR desobsordtrab LIKE '%WIFI%'
OR desobsordtrab LIKE '%WIREL%' OR desobsordtrab LIKE '%REPETID%' OR desobsordtrab LIKE '%REPTID%' ,'WIFI',
IF(desobsordtrab LIKE '%RUIDO%' OR desobsordtrab LIKE '%PW UP%' OR desobsordtrab LIKE '%PW DOW%' OR desobsordtrab LIKE '%PW DW%' OR desobsordtrab LIKE '%MALOS PARAMETROS%' OR desobsordtrab LIKE '%PARAMETROS INESTABLES%' OR desobsordtrab LIKE '%PARAMETROS ROJO%' ,'MALOS PARAMETROS',
IF( desobsordtrab LIKE '%CTRL%' OR desobsordtrab LIKE '%CONTROL%' OR desobsordtrab LIKE '%REMOTO%' ,'CONTROL REMOTO',
IF(desobsordtrab LIKE '%LINEA%' OR desobsordtrab LIKE '%VOIP%' OR desobsordtrab LIKE '%SIN LIN%' OR desobsordtrab LIKE '%REALIZA LLAMADA%' OR desobsordtrab LIKE '%REALIZAR LLAMADAS%' OR desobsordtrab LIKE '%TELEFONO%' OR desobsordtrab LIKE '%TELEFONO%','VOIP',
IF( codmotv IN ('R040','R041','R042','R002','R001') OR desobsordtrab LIKE '%NO VISUALIZA%' OR desobsordtrab LIKE '%LLUVIA%'
OR desobsordtrab LIKE '%PANTALLA NEGRA%' OR desobsordtrab LIKE '%SINSEÑAL%'
OR desobsordtrab LIKE '%SEÑAL%DISTORSION%' OR desobsordtrab LIKE '%NO HAY SEÑAL%' 
OR desobsordtrab LIKE '%LLUVIOSA%' OR desobsordtrab LIKE '%TV%' OR desobsordtrab LIKE '%AB MALASE%' OR desobsordtrab LIKE '%NO TIENE SE%'
OR desobsordtrab LIKE '%AB SN SE%' OR desobsordtrab LIKE '%PIXELE%' OR desobsordtrab LIKE '%PROBLEMAS DE CONEX%' OR desobsordtrab LIKE '%AB SINSE%'
OR desobsordtrab LIKE '%NO MUESTRA%' OR desobsordtrab LIKE '%NO PUEDE VER%' OR desobsordtrab LIKE '%CABLE%' OR desobsordtrab LIKE '%NO CUENTA CON SER%'
OR desobsordtrab LIKE '%CATV%' OR desobsordtrab LIKE '%CATV-SEN%' OR desobsordtrab LIKE '%PROBL. CON SE%' OR desobsordtrab LIKE '%CANALES%'
OR desobsordtrab LIKE '%CORTES%' OR desobsordtrab LIKE '%DADES TEC%' OR desobsordtrab = 'AVERIA APC' OR desobsordtrab = 'AB SIN SE' OR desobsordtrab LIKE '%SIN SE%'
OR desobsordtrab LIKE '%SIN SE%' OR desobsordtrab LIKE '%RUIDO Y BAJO REN%' OR desobsordtrab LIKE '%RUIDO EN SEG%' OR desobsordtrab LIKE '%SIN SE%'
OR desobsordtrab LIKE '%PIXELEADA%' OR desobsordtrab LIKE '%POTENC%' OR desobsordtrab LIKE '%PEXT%' OR desobsordtrab LIKE '%SNR%' OR desobsordtrab LIKE '%MALA SE%'
OR desobsordtrab LIKE '%AUDIO%' 
OR desobsordtrab LIKE '%MASIVA%' ,'MALA SENAL/SIN SENAL',
IF( codmotv='R102' OR desobsordtrab LIKE '%DVR%' OR desobsordtrab LIKE '%TARJETA%' OR desobsordtrab LIKE '%DISCO%' OR desobsordtrab LIKE '%DECO%'
OR desobsordtrab LIKE '%DCO%','DECODER',
IF( codmotv='R038','AVERIA DTH', IF( codmotv='R103','TV DESPROGRAMADO', 
IF( desobsordtrab LIKE '%CALIDAD%' ,'DATOS', 'OTROS'))))))))))))))))
AS tip_ing ,
IF(ip.cmtshfc IS NOT NULL,CONCAT('IPS ',ip.scopesgroup,' AGOTADAS'),
IF(m.codreqmnt>0 , 'Averia Masiva - Problema PEXT',
IF(e.Caida='SI' AND (b.macstate='offline' OR b.macstate = 'init(d)' OR b.macstate = 'init(i)' OR b.macstate = 'init(io)' OR b.macstate = 'init(o)'
OR b.macstate = 'init(r)' OR b.macstate = 'init(r1)'  OR b.macstate = 'init(t)' OR b.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT(Amplif)',
IF(f.Caida='SI' AND (b.macstate='offline' OR b.macstate = 'init(d)' OR b.macstate = 'init(i)' OR b.macstate = 'init(io)' OR b.macstate = 'init(o)'
OR b.macstate = 'init(r)' OR b.macstate = 'init(r1)'  OR b.macstate = 'init(t)' OR b.macstate = 'bpi(wait)'),'Caida Modems - Problema PEXT',
IF(g.Caida='SI','Niveles RF  Malos - Problema PEXT',
IF(rf.cmts IS NOT NULL,'Problemas de RF  - Validado en Historico de Puerto',
IF(b.macstate='offline','Offline - NO OK',
IF(c.USMER_SNR * 1 < 27 ,'Niveles RF  Malos - Problema PEXT',
IF(c.USMER_SNR * 1 < 27 AND c.USPwr * 1<36 ,'Niveles RF  Malos - Problema PEXT',
IF(c.USPwr * 1 < 36 ,'Niveles RF  Malos - Problema PEXT',
IF(c.USPwr * 1 > 55 AND c.DSPwr > - 5 AND c.DSPwr < 10 ,'Niveles RF  Malos - Problema PEXT',
IF(c.DSPwr * 1 > 10 AND c.USPwr * 1 < 36  ,'Niveles RF  Malos - Problema PEXT',
IF(c.USPwr * 1 < 35 AND c.USPwr * 1 > 0 ,'Niveles RF  Malos - Problema PEXT',
IF(c.USPwr * 1 < 35 AND c.DSPwr * 1 > 10 ,'Niveles RF  Malos - Problema PEXT',
IF(c.DSPwr * 1 > 15 ,'Niveles RF  Malos - Problema PEXT',
IF(c.USPwr * 1 > 55 AND c.DSPwr > 10 ,'Niveles RF  Malos - Problema PEXT',
IF(c.USMER_SNR * 1 < 30 AND c.DSPwr * 1 > 10 ,'Niveles RF  Malos - Problema PEXT',
IF(b.macstate = 'init(d)' OR b.macstate = 'init(i)' OR b.macstate = 'init(io)' OR b.macstate = 'init(o)' OR b.macstate = 'init(r)' OR b.macstate = 'init(r1)'
OR b.macstate = 'init(t)' OR b.macstate = 'bpi(wait)','Problema Red Cliente',
IF(c.DSPwr<>'' AND c.DSPwr < - 5 AND c.USPwr > 55,'Niveles RF  Malos - Problema Red Cliente',
IF((c.DSPwr<>'' AND c.DSPwr < - 5) OR c.DSPwr > 10,'Niveles RF  Malos - Problema Red Cliente',
IF(c.DSPwr<>'' AND c.DSPwr < - 5 AND c.DSMER_SNR < 30 ,'Niveles RF  Malos - Problema Red Cliente',
IF(c.USPwr>53* 1 AND c.USPwr * 1 <= 58 AND c.USMER_SNR * 1 >= 30  AND c.DSPwr > - 5 AND c.DSPwr < 12,'Niveles RF  Malos - Problema Red Cliente',
IF(c.DSPwr='' AND c.DSMER_SNR=''  AND b.macstate = 'online','OK',
IF(c.DSPwr='' AND c.DSMER_SNR='' AND b.macstate = '','Modem no registrado en CMTS',
IF(b.MACState IN ('init','init(t)','init(r2)','init(r1)'),'Proceso de sincronismo - Volver a Validar',
IF(b.MACState IN ('init(d)','DHCP','init(o)'),'Posible Problema con el DHCP' ,
IF(c.DSPwr IS NULL AND b.macstate IS NULL, 'OK',
IF((ps.IDCLIENTECRM IS NOT NULL OR sat.Semana36 IN ('Sat_81-90','Sat_>90')),'Puerto Saturado',
'OK')))))))))))))))))))))))))))) AS estadomdm,a.area,
CONCAT(TRIM(a.destipvia),' ',
REPLACE(a.desnomvia,',',' '),' Num:',
a.numvia ,' Piso:',
REPLACE(a.despis ,',',''),' Int:',
a.desint,' Mz:',
REPLACE(a.desmzn,',',''),' Lt:',
REPLACE(a.deslot,',','')) AS Direccion,
a.codnod AS nodocms,
a.nroplano AS trobacms,
nc.nodo AS nodohfc,
nc.troba AS trobahfc,
a.codlex AS amplificador,
a.codtap AS tap,
a.desmotv,
a.tipreqini AS codigotiporeq,
a.codctr,
a.desnomctr,
IF(pr.troba IS NOT NULL,'PREMIUM','MASIVO') AS premium,
IF(mt.clientecms IS NULL,'','MOVISTAR TOTAL') AS movistar_total,
codmotv,
IF(c.macaddress IS NOT NULL,c.cmts,IF(b.MACState IS NOT NULL,b.cmts,'')) AS cmts,
IF(b.MACState ='offline',b.interface,c.interface) AS interface,
nc.scopesgroup,
IF(c.macaddress IS NOT NULL,'online',IF(b.MACState IS NOT NULL,b.MACState,'')) AS macstate,
IF(b.MACState <>'offline',b.RxPwrdBmv,' ') AS RxPwrdBmv,
IF(b.MACState <>'offline',c.USPwr,' ') AS USPwr,
IF(b.MACState <>'offline',c.USMER_SNR,' ') AS USMER_SNR,
IF(b.MACState <>'offline',c.DSPwr,' ') AS DSPwr,
IF(b.MACState <>'offline',c.DSMER_SNR,' ') AS DSMER_SNR,
IF(m.codnod IS NULL,'Individual','Masiva') AS masiva,
IF(nc.estado='Activo','Servicio Activo', IF(nc.estado='Inactivo','Servicio Suspendido','')) AS edoserv ,
zo.jefatura AS zonal,
nc.macaddress,CONCAT(a.fec_registro,' ',SUBSTR(a.fec_regist,12,5)) AS fecreg,
DATEDIFF(NOW(),CONCAT(a.fec_registro,' ',SUBSTR(a.fec_regist,12,5))) AS dias,
REPLACE(REPLACE(a.desobsordtrab,',',' '),';',' ') AS desc_motivo,
NOW() AS fecrevision,0 AS codctr_final,'' AS area_final,SPACE(100) AS ultimagestion,'','','',tm.telef1,tm.telef2,tm.telef3,fec_prog,nc.servicepackagecrmid
FROM cms.req_pend_macro_final a
LEFT JOIN multiconsulta.nclientes_c nc ON a.codcli=nc.idclientecrm
LEFT JOIN ccm1.scm_total_r b ON nc.mac2=b.MACAddress
LEFT JOIN ccm1.scm_phy_r c ON nc.mac2=c.MACAddress
LEFT JOIN alertasx.`alertasrf_r` rf ON c.cmts=rf.cmts AND c.interface=rf.interface
LEFT JOIN catalogos.jefaturas zo ON a.codnod=zo.nodo
LEFT JOIN catalogos.premium pr ON CONCAT(nc.nodo,nc.troba)=pr.troba
LEFT JOIN catalogos.movistar_total mt ON a.codcli=mt.clientecms
LEFT JOIN dbpext.masivas_temp_c m ON (a.codnod = m.codnod AND a.nroplano=m.nroplano) OR (nc.nodo = m.codnod AND nc.troba=m.nroplano)  
AND a.codnod=nc.nodo
LEFT JOIN alertasx.caidas_new_amplif_c e ON nc.nodo=e.nodo AND nc.troba=e.troba AND nc.amplificador=e.amplificador AND e.Caida='SI'
LEFT JOIN alertasx.caidas_new_c f ON nc.nodo=f.nodo AND nc.troba=f.troba AND f.Caida='SI'
LEFT JOIN alertasx.niveles_new_c g  ON nc.nodo=g.nodo AND nc.troba=g.troba AND g.Caida='SI'
LEFT JOIN reportes.clientes_en_puerto_saturado ps ON nc.macaddress=ps.MACADDRESS
LEFT JOIN catalogos.saturaciones_olt sat
ON CONCAT(nc.nodo,nc.troba)=sat.Puerto
LEFT JOIN alertasx.`ips_disponible_view` ip
ON nc.cmts=ip.cmtshfc AND nc.scopesgroup=ip.scopesgroup
LEFT JOIN catalogos.`telef_multi` tm ON a.codcli=tm.codcli
WHERE a.tipreqini='RA'
GROUP BY a.codreq
LIMIT 10000
;
#Deteccion de problemas en el DHCP
UPDATE triaje.averias_revisadas_c a INNER JOIN alertasx.`alertas_dhcp` b
ON a.cmts=b.cmts SET a.estadomdm=CONCAT('PROBLEMA DHCP / ',a.estadomdm)
WHERE a.tip_ing IN ('WIFI','No Navega','OTROS') AND a.macstate NOT IN ('online','offline') AND  a.macstate<>'';
#---------------------------------------------
#Aqui comienza el llenado de la nueva Contrata
#---------------------------------------------
#Llenado de contratas red Cliente como Contrata Final
UPDATE `averias_revisadas` a INNER JOIN `coberturas_eecc_view` b 
ON a.nodocms=b.nodo SET a.codctr_final = b.codctr_rdc,area_final='REDCLTE' WHERE a.codctr>0 AND estadomdm LIKE "%Red Cliente%";
#Contrata 435 para Puertos saturados
UPDATE averias_revisadas SET codctr_final=435,area_final='INGENIERIA' WHERE codctr>0 AND estadomdm='Puerto Saturado';
#Contratas de PEXT para puertos en los que se detecta Ruido electrico en el historico de niveles
UPDATE `averias_revisadas` a INNER JOIN `coberturas_eecc_view` b ON a.nodocms=b.nodo 
SET a.codctr_final = b.codctr_pext  ,a.area_final='PLTAEXT' 
WHERE a.codctr>0 AND estadomdm LIKE "%PEXT%" OR estadomdm LIKE "%Historico%";
#Casos que no voip back lucho llerena , no va a campo
UPDATE averias_revisadas SET codctr_final=353,area_final='GAC-VOIP' WHERE codctr>0 AND tip_ing IN ('VOIP');
#Casos que no deben ir a campo Guillermo arbaiza
UPDATE averias_revisadas SET codctr_final=451,area_final='GES-COE' WHERE codctr>0 AND tip_ing IN ('CONTROL REMOTO','MALA TRANSFERENCIA');
#wifi al COE
UPDATE averias_revisadas SET codctr_final=451,area_final='GES-COE' WHERE codctr>0 AND tip_ing  = 'WIFI' And estadomdm = 'OK';
#Reclamos de señal , lentitud, no navega y que en el diagnostico estan ok
UPDATE averias_revisadas SET codctr_final=451,area_final='GES-COE' WHERE codctr>0 AND estadomdm in ('OK') and tip_ing IN ('MALA SENAL/SIN SENAL','No Navega','LENTITUD','MALOS PARAMETROS','OTROS');
#Casos de deco a RDC
UPDATE averias_revisadas SET codctr_final=codctr,area_final='REDCLTE' WHERE codctr>0 AND tip_ing IN ('DECODER');
#Casos a bandeja de cabecera cuando se encuentren problemas en el DHCP
update `averias_revisadas` set codctr_final=60,area_final='PLT-INT' where codctr>0 AND estadomdm like 'PROBLEMA DHCP%';
#Se coloca la ultima gestion realizada por la TC a cada troba
UPDATE `averias_revisadas` a INNER JOIN ultima_gestion_view b 
ON a.nodohfc=b.nodo  AND a.trobahfc=b.troba SET a.codctr_final = b.codctr,ultimagestion=b.estado WHERE a.codctr>0 AND codctr_final=0;
#Identificacion del area destino de cada avería
UPDATE averias_revisadas a INNER JOIN catalogos.`codcontrata` b 
ON a.codctr_final=b.codctr_pext SET a.area_final=b.area_mant where a.codctr>0 ; 
#Identificacion del area destino de cada avería
UPDATE triaje.averias_revisadas_c a INNER JOIN catalogos.`codcontrata` b 
ON a.codctr_final=b.codctr_rdc SET a.area_final=b.description where a.codctr>0  ;
#COPIA CONTRATA A LOS QUE TIENEN 0
UPDATE triaje.averias_revisadas_c SET codctr_final=codctr , area_final=AREA WHERE codctr>0 AND codctr_final=0;
#Identificacion del area destino de cada avería
UPDATE triaje.averias_revisadas_c a INNER JOIN catalogos.`codctr` b 
ON a.codctr_final=b.codctr SET a.area_final=b.desctr WHERE a.codctr>0 AND area_final='';
#Corrige areas
update triaje.averias_revisadas_c a INNER JOIN triaje.areas b
on a.codctr_final=b.codctr_final set a.area_final=b.area_final where a.codctr>0;
#UPDATE triaje.averias_revisadas_c a INNER JOIN triaje.areas b
#ON a.codctr=b.codctr_final SET a.area=b.area_final;
UPDATE averias_revisadas SET codctr_final=451,area_final='GES-COE' WHERE codctr=429;
#UPDATE  triaje.averias_revisadas_c a inner join  alertasx.`alertasrf` b on a.cmts=b.cmts and a.interface=b.interface  SET a.TipoRuido=b.TipoRuido;
UPDATE triaje.averias_revisadas_c a INNER JOIN alertasx.`alertasrf` b 
ON a.cmts=b.cmts AND a.interface=b.interface 
SET a.TipoRuido=b.TipoRuido,
a.observacionescms=CONCAT('Nodo:',nodohfc,' TROBA:',a.trobahfc,' TC - Ruido ',b.TipoRuido,' SnrUP: ',b.SnrUP),
motivotransferencia='En CMS Elegir bandeja 336 y Motivo de Transferencia MT13',
codctr_final=336,area_final='MANT-PREV' 
WHERE a.codctr>0 and b.TipoRuido<>'SnrOK' and a.codofcadm='LIM' 
AND a.tip_ing in ('MALA SENAL/SIN SENAL','No Navega','LENTITUD');
UPDATE triaje.averias_revisadas_c a INNER JOIN alertasx.`alertasrf` b 
ON a.cmts=b.cmts AND a.interface=b.interface 
SET a.observacionescms=CONCAT('Nodo:',nodohfc,' TROBA:',' TC - Ruido ',' Revisar Problemas RF PwrUP: ',b.Pwr_UP,' Pwr_DN: ',b.Pwr_DN,' SnrDN: ',b.SnrDN),
motivotransferencia='En CMS Elegir bandeja 336 y Motivo de Transferencia MT13',
codctr_final=336,area_final='MANT-PREV' 
WHERE a.codctr>0 AND b.TipoRuido='' AND a.codofcadm='LIM' 
AND a.tip_ing IN ('MALA SENAL/SIN SENAL','No Navega','LENTITUD');
INSERT ignore `triaje`.`averias_suspendidos` SELECT * FROM triaje.averias_revisadas_c WHERE edoserv='Servicio Suspendido';
rename table triaje.averias_revisadas to triaje.averias_revisadas_d,
             triaje.averias_revisadas_c TO triaje.averias_revisadas,
             triaje.averias_revisadas_d TO triaje.averias_revisadas_c;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_transferencias` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_transferencias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_transferencias`()
BEGIN
truncate table triaje.transferencias;
INSERT IGNORE triaje.transferencias
SELECT 
a.codreq,
a.codctr AS codctr_origen,
a.codctr_final AS codctr_destino,
a.area AS area_origen,
a.area_final AS area_destino,
'MNT001' AS codtecliq,
IF(a.observacionescms<>'',a.observacionescms,a.desc_motivo) AS observaciones,
'MT13' AS mot_trans,
nodocms as nodo
FROM triaje.`averias_revisadas` a
WHERE codctr<>codctr_final AND a.area<>'LIQUIDACIO' AND codctr NOT IN (0,336,451,429)
AND a.fecreg>'2019-12-19 09:30 00:00' and a.nodocms='SJ';
 
select * from triaje.`transferencias` 
into outfile '/temp/transferencias_req.csv' 
fields terminated by ',' lines terminated by '\r\n';
END */$$
DELIMITER ;

/*Table structure for table `coberturas_eecc_view` */

DROP TABLE IF EXISTS `coberturas_eecc_view`;

/*!50001 DROP VIEW IF EXISTS `coberturas_eecc_view` */;
/*!50001 DROP TABLE IF EXISTS `coberturas_eecc_view` */;

/*!50001 CREATE TABLE  `coberturas_eecc_view`(
 `nodo` varchar(5) ,
 `eecc` varchar(20) ,
 `codctr_pext` int(11) ,
 `codctr_rdc` int(11) ,
 `area_mant` varchar(20) 
)*/;

/*Table structure for table `proactivo_view` */

DROP TABLE IF EXISTS `proactivo_view`;

/*!50001 DROP VIEW IF EXISTS `proactivo_view` */;
/*!50001 DROP TABLE IF EXISTS `proactivo_view` */;

/*!50001 CREATE TABLE  `proactivo_view`(
 `codofcadm` varchar(3) ,
 `codreq` int(11) ,
 `codcli` int(11) ,
 `estado` varchar(2) ,
 `tip_ing` varchar(20) ,
 `estadomdm` varchar(50) ,
 `Direccion` varchar(120) ,
 `nodohfc` varchar(2) ,
 `trobahfc` varchar(4) ,
 `amplificador` varchar(2) ,
 `tap` varchar(2) ,
 `codigotiporeq` varchar(2) ,
 `codctr` int(11) ,
 `codmotv` varchar(4) ,
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `macaddress` varchar(20) ,
 `fecreg` varchar(26) ,
 `desc_motivo` varchar(200) ,
 `edoserv` varchar(19) ,
 `Pwr_DN` varchar(10) ,
 `Pwr_UP` varchar(10) ,
 `SnrDN` varchar(10) ,
 `SnrUP` varchar(10) ,
 `TipoRuido` varchar(10) ,
 `observacionescms` varchar(39) ,
 `motivo` varchar(56) 
)*/;

/*Table structure for table `revision_averias_view` */

DROP TABLE IF EXISTS `revision_averias_view`;

/*!50001 DROP VIEW IF EXISTS `revision_averias_view` */;
/*!50001 DROP TABLE IF EXISTS `revision_averias_view` */;

/*!50001 CREATE TABLE  `revision_averias_view`(
 `tip_ing` varchar(20) ,
 `area` varchar(20) ,
 `area_final` varchar(10) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `ultima_gestion_dia` */

DROP TABLE IF EXISTS `ultima_gestion_dia`;

/*!50001 DROP VIEW IF EXISTS `ultima_gestion_dia` */;
/*!50001 DROP TABLE IF EXISTS `ultima_gestion_dia` */;

/*!50001 CREATE TABLE  `ultima_gestion_dia`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `fechahora` varchar(20) 
)*/;

/*Table structure for table `ultima_gestion_view` */

DROP TABLE IF EXISTS `ultima_gestion_view`;

/*!50001 DROP VIEW IF EXISTS `ultima_gestion_view` */;
/*!50001 DROP TABLE IF EXISTS `ultima_gestion_view` */;

/*!50001 CREATE TABLE  `ultima_gestion_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `estado` varchar(30) ,
 `fechahora` varchar(20) ,
 `observaciones` varchar(500) ,
 `numreq` int(11) ,
 `codctr` varchar(11) 
)*/;

/*View structure for view coberturas_eecc_view */

/*!50001 DROP TABLE IF EXISTS `coberturas_eecc_view` */;
/*!50001 DROP VIEW IF EXISTS `coberturas_eecc_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `coberturas_eecc_view` AS (select `a`.`nodo` AS `nodo`,`a`.`eecc` AS `eecc`,`b`.`codctr_pext` AS `codctr_pext`,`b`.`codctr_rdc` AS `codctr_rdc`,`b`.`area_mant` AS `area_mant` from (`catalogos`.`jefaturas` `a` join `catalogos`.`codcontrata` `b` on((`a`.`eecc` = `b`.`description`))) where (length(`a`.`nodo`) = 2)) */;

/*View structure for view proactivo_view */

/*!50001 DROP TABLE IF EXISTS `proactivo_view` */;
/*!50001 DROP VIEW IF EXISTS `proactivo_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `proactivo_view` AS (select `a`.`codofcadm` AS `codofcadm`,`a`.`codreq` AS `codreq`,`a`.`codcli` AS `codcli`,`a`.`estado` AS `estado`,`a`.`tip_ing` AS `tip_ing`,`a`.`estadomdm` AS `estadomdm`,`a`.`Direccion` AS `Direccion`,`a`.`nodohfc` AS `nodohfc`,`a`.`trobahfc` AS `trobahfc`,`a`.`amplificador` AS `amplificador`,`a`.`tap` AS `tap`,`a`.`codigotiporeq` AS `codigotiporeq`,`a`.`codctr` AS `codctr`,`a`.`codmotv` AS `codmotv`,`a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`a`.`macaddress` AS `macaddress`,`a`.`fecreg` AS `fecreg`,`a`.`desc_motivo` AS `desc_motivo`,`a`.`edoserv` AS `edoserv`,`c`.`Pwr_DN` AS `Pwr_DN`,`c`.`Pwr_UP` AS `Pwr_UP`,`c`.`SnrDN` AS `SnrDN`,`c`.`SnrUP` AS `SnrUP`,`c`.`TipoRuido` AS `TipoRuido`,concat('TC - Ruido ',`c`.`TipoRuido`,' SnrUP: ',`c`.`SnrUP`) AS `observacionescms`,'En CMS Elegir bandeja 336 y Motivo de Transferencia MT13' AS `motivo` from (`triaje`.`averias_revisadas` `a` join `alertasx`.`alertasrf` `c` on(((`a`.`cmts` = `c`.`cmts`) and (`a`.`interface` = `c`.`Interface`) and (`c`.`TipoRuido` in ('MEDIO','ALTO','LEVE')) and (`a`.`codofcadm` = 'LIM') and (`a`.`tip_ing` in ('No Navega','LENTITUD','MALA SENAL/SIN SENAL')))))) */;

/*View structure for view revision_averias_view */

/*!50001 DROP TABLE IF EXISTS `revision_averias_view` */;
/*!50001 DROP VIEW IF EXISTS `revision_averias_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `revision_averias_view` AS (select `a`.`tip_ing` AS `tip_ing`,`a`.`area` AS `area`,`a`.`area_final` AS `area_final`,count(0) AS `cant` from `averias_revisadas` `a` group by 1,2,3) */;

/*View structure for view ultima_gestion_dia */

/*!50001 DROP TABLE IF EXISTS `ultima_gestion_dia` */;
/*!50001 DROP VIEW IF EXISTS `ultima_gestion_dia` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `ultima_gestion_dia` AS (select `alertasx`.`gestion_alert`.`nodo` AS `nodo`,`alertasx`.`gestion_alert`.`troba` AS `troba`,max(`alertasx`.`gestion_alert`.`fechahora`) AS `fechahora` from `alertasx`.`gestion_alert` where (((to_days(now()) - to_days(`alertasx`.`gestion_alert`.`fechahora`)) <= 0) and (`alertasx`.`gestion_alert`.`estado` not in ('Masiva : Liquidada','Validacion para liquidar','En Proceso de liquidacion Automática','Incidencia en Liquidación','Enviada:COT para liquidar','Enviada:ATENTO para liquidar'))) group by 1,2) */;

/*View structure for view ultima_gestion_view */

/*!50001 DROP TABLE IF EXISTS `ultima_gestion_view` */;
/*!50001 DROP VIEW IF EXISTS `ultima_gestion_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`rfalla`@`%` SQL SECURITY DEFINER VIEW `ultima_gestion_view` AS (select `a`.`nodo` AS `nodo`,`a`.`troba` AS `troba`,`a`.`estado` AS `estado`,`a`.`fechahora` AS `fechahora`,`a`.`observaciones` AS `observaciones`,`a`.`numreq` AS `numreq`,if((`c`.`codctr` = 'PEXT'),`d`.`codctr_pext`,if((`c`.`codctr` = 'RDC'),`d`.`codctr_rdc`,if((`c`.`codctr` = 'TTPP'),365,if((`c`.`codctr` = 'INGENIERIA'),435,if((`c`.`codctr` = 'ENPEXT'),223,if((`c`.`codctr` = 'ENPINTPEXT'),222,if((`c`.`codctr` = 'PINTPEXT'),218,if((`c`.`codctr` = 'ENERGIA'),211,if((`c`.`codctr` = 'FIBRA'),209,if((`c`.`codctr` = 'PINT'),209,'')))))))))) AS `codctr` from (((((`alertasx`.`gestion_alert` `a` join `triaje`.`ultima_gestion_dia` `b` on(((`a`.`nodo` = `b`.`nodo`) and (`a`.`troba` = `b`.`troba`) and (`a`.`fechahora` = `b`.`fechahora`)))) left join `triaje`.`estados_contrata` `c` on((`a`.`estado` = `c`.`estado`))) left join `triaje`.`coberturas_eecc_view` `d` on((`a`.`nodo` = `d`.`nodo`))) left join `alertasx`.`caidas_new` `cn` on(((`a`.`nodo` = `cn`.`nodo`) and (`a`.`troba` = `cn`.`troba`) and (`cn`.`Caida` = 'SI')))) left join `alertasx`.`caidas_new` `cf` on(((`a`.`nodo` = `cf`.`nodo`) and (`a`.`troba` = `cf`.`troba`) and (`cf`.`Caida` = 'NO') and (timediff(now(),`cf`.`fecha_fin`) <= '04:00:00.00000'))))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
