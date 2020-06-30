/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - adsl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`adsl` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `adsl`;

/*Table structure for table `PlantaAdsl` */

DROP TABLE IF EXISTS `PlantaAdsl`;

CREATE TABLE `PlantaAdsl` (
  `INSCRIPCIO` varchar(15) NOT NULL,
  `APPATER` varchar(50) DEFAULT NULL,
  `APMATER` varchar(50) DEFAULT NULL,
  `NOMBRE` varchar(64) DEFAULT NULL,
  `NATURA` varchar(9) DEFAULT NULL,
  `SEG` varchar(9) DEFAULT NULL,
  `SUBSEG` varchar(9) DEFAULT NULL,
  `CICLO` varchar(4) DEFAULT NULL,
  `FEULTM` varchar(26) DEFAULT NULL,
  `CODCLIE` varchar(9) DEFAULT NULL,
  `CODCTA` varchar(9) DEFAULT NULL,
  `CODCLIET` varchar(9) DEFAULT NULL,
  `CODCTAT` varchar(9) DEFAULT NULL,
  `IDPC` varchar(9) DEFAULT NULL,
  `CODPC` varchar(9) DEFAULT NULL,
  `IDNUMPRIN` varchar(1) DEFAULT NULL,
  `SUBPC` varchar(9) DEFAULT NULL,
  `ESTPC` varchar(2) DEFAULT NULL,
  `MOTEST` varchar(9) DEFAULT NULL,
  `FEACT` varchar(15) DEFAULT NULL,
  `USOPC` varchar(9) DEFAULT NULL,
  `TIPOPC` varchar(9) DEFAULT NULL,
  `FEMPC` varchar(26) DEFAULT NULL,
  `ZONATELF` varchar(3) DEFAULT NULL,
  `FEACTS` int(11) DEFAULT NULL,
  `FULTMNC` varchar(26) DEFAULT NULL,
  `CODDIRI` varchar(9) DEFAULT NULL,
  `CODLOC` varchar(9) DEFAULT NULL,
  `CODPOS` varchar(10) DEFAULT NULL,
  `CODMUN` varchar(9) DEFAULT NULL,
  `CODPROV` varchar(9) DEFAULT NULL,
  `CODSUBL` varchar(9) DEFAULT NULL,
  `PCDI` varchar(40) DEFAULT NULL,
  `SCDI` varchar(40) DEFAULT NULL,
  `DIRVAL` varchar(1) DEFAULT NULL,
  `esp1` varchar(1) DEFAULT NULL,
  `NOMCALLE` varchar(60) DEFAULT NULL,
  `NUMCALLE` varchar(6) DEFAULT NULL,
  `TIPOCALLE` varchar(3) DEFAULT NULL,
  `FUMDIR` varchar(26) DEFAULT NULL,
  `IDUPSC` varchar(12) DEFAULT NULL,
  `CODPS` varchar(9) DEFAULT NULL,
  `FIVPS` varchar(10) DEFAULT NULL,
  `FUMDPS` varchar(26) DEFAULT NULL,
  `ZONAL` varchar(3) DEFAULT NULL,
  `CODCIU` varchar(5) DEFAULT NULL,
  `MDF` varchar(6) DEFAULT NULL,
  `CABEC` varchar(3) DEFAULT NULL,
  `TECCEN` varchar(13) DEFAULT NULL,
  `SECTOR` varchar(4) DEFAULT NULL,
  `MZA` varchar(4) DEFAULT NULL,
  `TIPOSPD` varchar(3) DEFAULT NULL,
  `POSDSLAM` varchar(10) DEFAULT NULL,
  `PROVEED` varchar(3) DEFAULT NULL,
  `CABPRIM` varchar(4) DEFAULT NULL,
  `ARMARIO` varchar(5) DEFAULT NULL,
  `PARPRIM` varchar(10) DEFAULT NULL,
  `CAJATERM` varchar(4) DEFAULT NULL,
  `BORNE` varchar(10) DEFAULT NULL,
  `TIPO_LINEA` varchar(4) DEFAULT NULL,
  `TIPO_TECNO` varchar(4) DEFAULT NULL,
  `PRODUCTO` varchar(10) DEFAULT NULL,
  `SPEEDY` varchar(3) DEFAULT NULL,
  `EXCLUYE` varchar(8) DEFAULT NULL,
  `REGION` varchar(20) DEFAULT NULL,
  `JEFCOM` varchar(7) DEFAULT NULL,
  `CO_EJEC` varchar(2) DEFAULT NULL,
  `CD1` varchar(2) DEFAULT NULL,
  `CODSEG` varchar(2) DEFAULT NULL,
  `DCODSEG` varchar(20) DEFAULT NULL,
  `SEG_SLAS` varchar(11) DEFAULT NULL,
  `TOP_NOTOP` varchar(17) DEFAULT NULL,
  `EECC_REG` varchar(8) DEFAULT NULL,
  `ZON_REGION` varchar(4) DEFAULT NULL,
  `JEFATU_NUE` varchar(4) DEFAULT NULL,
  `PREM_MAS` varchar(7) DEFAULT NULL,
  `JEF_REGION` varchar(20) DEFAULT NULL,
  `DET_REGION` varchar(12) DEFAULT NULL,
  `MICROZONA` varchar(15) DEFAULT NULL,
  `GRUPO_MICR` varchar(15) DEFAULT NULL,
  `DES_TECCEN` varchar(8) DEFAULT NULL,
  `PLAYAS` varchar(2) DEFAULT NULL,
  `BONO` varchar(3) DEFAULT NULL,
  `CODCLICMS` varchar(10) DEFAULT NULL,
  `CODSERVCMS` varchar(10) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `FL_MANT` varchar(1) DEFAULT NULL,
  `PRODCOMER` varchar(100) DEFAULT NULL,
  `MODNAKED` varchar(40) DEFAULT NULL,
  `SUB_NEG` varchar(20) DEFAULT NULL,
  `TIPO_ADSL` varchar(20) DEFAULT NULL,
  `DPTO` varchar(30) DEFAULT NULL,
  `PROV` varchar(30) DEFAULT NULL,
  `NOM_DIST` varchar(50) DEFAULT NULL,
  `MZ_LLAVE` varchar(25) DEFAULT NULL,
  `DRSPEEDY` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`INSCRIPCIO`),
  KEY `APPATER` (`APPATER`),
  KEY `APMATER` (`APMATER`),
  KEY `NOMBRE` (`NOMBRE`),
  KEY `FEACTS` (`FEACTS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
