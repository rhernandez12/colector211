/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - ws_soap_api
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ws_soap_api` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ws_soap_api`;

/*Table structure for table `api_services` */

DROP TABLE IF EXISTS `api_services`;

CREATE TABLE `api_services` (
  `token_temporary` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_service` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_service` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_service` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
