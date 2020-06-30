/*
SQLyog Community
MySQL - 10.1.40-MariaDB-0ubuntu0.18.04.1 : Database - arbol_reportes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`arbol_reportes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `arbol_reportes`;

/*Table structure for table `reporte_arbol_final` */

DROP TABLE IF EXISTS `reporte_arbol_final`;

CREATE TABLE `reporte_arbol_final` (
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `DIA` varchar(5) DEFAULT NULL,
  `idclientecrm` int(11) DEFAULT NULL,
  `Marcacion_Rapida` varchar(100) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `detalle0` varchar(200) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `detalle1` varchar(200) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `detalle2` varchar(200) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `detalle3` varchar(200) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `detalle4` varchar(1500) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `detalle5` varchar(200) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `detalle6` varchar(500) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `detalle7` varchar(500) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `detalle8` varchar(500) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `detalle9` varchar(200) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `detalle10` varchar(200) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `detalle11` varchar(200) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `detalle12` varchar(200) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `detalle13` varchar(1000) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `detalle14` varchar(200) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `detalle15` varchar(200) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `detalle16` varchar(200) DEFAULT NULL,
  `paso17` int(11) unsigned DEFAULT NULL,
  `detalle17` varchar(200) DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `detalle18` varchar(200) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `detalle19` varchar(200) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `detalle20` varchar(200) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `detalle21` varchar(200) DEFAULT NULL,
  `paso22` int(11) DEFAULT NULL,
  `detalle22` varchar(200) DEFAULT NULL,
  `ultimopaso` varchar(200) CHARACTER SET utf8,
  `resultadoarbol` varchar(300) DEFAULT NULL,
  KEY `idclientecrm` (`idclientecrm`),
  KEY `usuario` (`usuario`),
  KEY `fechahora` (`fechahora`),
  KEY `DIA` (`DIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reportearbol` */

DROP TABLE IF EXISTS `reportearbol`;

CREATE TABLE `reportearbol` (
  `iddecision` int(11) NOT NULL DEFAULT '0',
  `idclientecrm` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `ldmarca_rapida` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `idpaso` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `tbpaso` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `marcarapida` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ultimopaso` varchar(200) CHARACTER SET utf8 NOT NULL,
  `resultadoarbol` varchar(300) DEFAULT NULL,
  `averia` int(11) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  KEY `iddecision` (`iddecision`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `ldmarca_rapida` (`ldmarca_rapida`),
  KEY `idpaso` (`idpaso`),
  KEY `tbpaso` (`tbpaso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `sp_reporte_arbol` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_reporte_arbol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_reporte_arbol`()
BEGIN
	TRUNCATE TABLE arbol_reportes.reportearbol;
	INSERT IGNORE arbol_reportes.reportearbol
	SELECT a.iddecision,a.`idclientecrm`,a.`fechahora`,a.usuario,
	IF(solucion>0,solucion,'') AS ldmarca_rapida,
	IF(paso22>0,paso22,
	IF(paso21>0,paso21,
	IF(paso20>0,paso20,
	IF(paso19>0,paso19,
	IF(paso18>0,paso18,
	IF(paso17>0,paso17,
	IF(paso18>0,paso16,
	IF(paso16>0,paso15,
	IF(paso15>0,paso14,
	IF(paso14>0,paso13,
	IF(paso13>0,paso12,
	IF(paso12>0,paso11,
	IF(paso11>0,paso11,
	IF(paso10>0,paso10,
	IF(paso9>0,paso9,
	IF(paso8>0,paso8,
	IF(paso7>0,paso7,
	IF(paso6>0,paso6,
	IF(paso5>0,paso5,
	IF(paso4>0,paso4,
	IF(paso3>0,paso3,
	IF(paso2>0,paso2,
	IF(paso1>0,paso1,
	IF(paso0>0,paso0,'')))))))))))))))))))))))) AS idpaso,
	IF(paso22>0,'paso22',
	IF(paso21>0,'paso21',
	IF(paso20>0,'paso20',
	IF(paso19>0,'paso19',
	IF(paso18>0,'paso18',
	IF(paso17>0,'paso17',
	IF(paso18>0,'paso16',
	IF(paso16>0,'paso15',
	IF(paso15>0,'paso14',
	IF(paso14>0,'paso13',
	IF(paso13>0,'paso12',
	IF(paso12>0,'paso11',
	IF(paso11>0,'paso11',
	IF(paso10>0,'paso10',
	IF(paso9>0,'paso09',
	IF(paso8>0,'paso08',
	IF(paso7>0,'paso07',
	IF(paso6>0,'paso06',
	IF(paso5>0,'paso05',
	IF(paso4>0,'paso04',
	IF(paso3>0,'paso03',
	IF(paso2>0,'paso02',
	IF(paso1>0,'paso01',
	IF(paso0>0,'paso00','')))))))))))))))))))))))) AS tbpaso,
	SPACE(150) AS marcarapida,
	SPACE(200) AS ultimopaso,
	SPACE(300) AS resultado_arbol,0 AS averia,SPACE(20) AS fecreg
	FROM arboldecisiones.`decisiones` a
	WHERE fechahora>='2020-05-01 00:00:00';
	
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso00 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso00';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso01 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso01';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso02 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso02';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso03 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso03';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso04 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso04';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso05 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso05';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso06 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso06';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso07 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso07';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso08 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso08';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso09 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso09';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso10 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso10';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso11 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso11';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso12 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso12';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso13 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso13';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso14 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso14';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso15 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso15';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso16 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso16';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso17 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso17';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso18 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso18';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso19 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso19';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso20 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso20';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso21 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso21';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.paso22 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso22';
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.marcaRapida b ON a.`ldmarca_rapida`=b.id SET marcarapida=detalle;
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.tbresumen b ON a.`ultimopaso`=b.`detalle` SET a.`resultadoarbol`=CONCAT('FA :',b.`solucion`);
	UPDATE arbol_reportes.reportearbol a INNER JOIN arboldecisiones.marcaRapida b ON a.ldmarca_rapida = b.`id` SET a.`resultadoarbol`=CONCAT('MR :',b.`detalle`) WHERE a.`resultadoarbol` IS NULL OR a.ldmarca_rapida>0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_reporte_arbol_final` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_reporte_arbol_final` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`rfalla`@`%` PROCEDURE `sp_reporte_arbol_final`()
BEGIN
    TRUNCATE TABLE arbol_reportes.reporte_arbol_final;
    INSERT IGNORE arbol_reportes.reporte_arbol_final
    
	SELECT a.usuario AS usuario,a.fechahora AS fechahora,CONCAT(SUBSTR(a.fechahora,6,2),'_',SUBSTR(a.fechahora,9,2)) AS DIA,a.idclientecrm AS idclientecrm,mr.detalle AS Marcacion_Rapida,a.paso0 AS paso0,b.detalle AS detalle0,a.paso1 AS paso1,c.detalle AS detalle1,a.paso2 AS paso2,d.detalle AS detalle2,a.paso3 AS paso3,e.detalle AS detalle3,a.paso4 AS paso4,f.detalle AS detalle4,a.paso5 AS paso5,g.detalle AS detalle5,a.paso6 AS paso6,h.detalle AS detalle6,a.paso7 AS paso7,i.detalle AS detalle7,a.paso8 AS paso8,j.detalle AS detalle8,a.paso9 AS paso9,k.detalle AS detalle9,a.paso10 AS paso10,l.detalle AS detalle10,a.paso11 AS paso11,m.detalle AS detalle11,a.paso12 AS paso12,n.detalle AS detalle12,a.paso13 AS paso13,o.detalle AS detalle13,a.paso14 AS paso14,p.detalle AS detalle14,a.paso15 AS paso15,q.detalle AS detalle15,a.paso16 AS paso16,r.detalle AS detalle16,a.paso17 AS paso17,s.detalle AS detalle17,a.paso18 AS paso18,t.detalle AS detalle18,a.paso19 AS paso19,u.detalle AS detalle19,a.paso20 AS paso20,v.detalle AS detalle20,a.paso21 AS paso21,w.detalle AS detalle21,a.paso22 AS paso22,z.detalle AS detalle22,ra.ultimopaso,ra.resultadoarbol 
	FROM ((((((((((((((((((((((((arboldecisiones.decisiones a FORCE INDEX (paso22) FORCE INDEX (paso21) FORCE INDEX (paso20) FORCE INDEX (paso19) FORCE INDEX (paso18) FORCE INDEX (paso17) FORCE INDEX (paso16) FORCE INDEX (paso15) FORCE INDEX (paso14) FORCE INDEX (paso13) FORCE INDEX (paso12) FORCE INDEX (paso11) FORCE INDEX (paso10) FORCE INDEX (paso9) FORCE INDEX (paso8) FORCE INDEX (paso7) FORCE INDEX (paso6) FORCE INDEX (paso5) FORCE INDEX (paso4) FORCE INDEX (paso3) FORCE INDEX (paso2) FORCE INDEX (paso1) FORCE INDEX (paso0) 
	LEFT JOIN arboldecisiones.paso00 b ON((a.paso0 = b.id))) 
	LEFT JOIN arboldecisiones.paso01 c ON((a.paso1 = c.id))) 
	LEFT JOIN arboldecisiones.paso02 d ON((a.paso2 = d.id))) 
	LEFT JOIN arboldecisiones.paso03 e ON((a.paso3 = e.id))) 
	LEFT JOIN arboldecisiones.paso04 f ON((a.paso4 = f.id))) 
	LEFT JOIN arboldecisiones.paso05 g ON((a.paso5 = g.id))) 
	LEFT JOIN arboldecisiones.paso06 h ON((a.paso6 = h.id))) 
	LEFT JOIN arboldecisiones.paso07 i ON((a.paso7 = i.id))) 
	LEFT JOIN arboldecisiones.paso08 j ON((a.paso8 = j.id))) 
	LEFT JOIN arboldecisiones.paso09 k ON((a.paso9 = k.id))) 
	LEFT JOIN arboldecisiones.paso10 l ON((a.paso10 = l.id))) 
	LEFT JOIN arboldecisiones.paso11 m ON((a.paso11 = m.id))) 
	LEFT JOIN arboldecisiones.paso12 n ON((a.paso12 = n.id))) 
	LEFT JOIN arboldecisiones.paso13 o ON((a.paso13 = o.id))) 
	LEFT JOIN arboldecisiones.paso14 p ON((a.paso14 = p.id))) 
	LEFT JOIN arboldecisiones.paso15 q ON((a.paso15 = q.id))) 
	LEFT JOIN arboldecisiones.paso16 r ON((a.paso16 = r.id))) 
	LEFT JOIN arboldecisiones.paso17 s ON((a.paso17 = s.id))) 
	LEFT JOIN arboldecisiones.paso18 t ON((a.paso18 = t.id))) 
	LEFT JOIN arboldecisiones.paso19 u ON((a.paso19 = u.id))) 
	LEFT JOIN arboldecisiones.paso20 v ON((a.paso20 = v.id))) 
	LEFT JOIN arboldecisiones.paso21 w ON((a.paso21 = w.id))) 
	LEFT JOIN arboldecisiones.paso22 z ON((a.paso22 = z.id))) 
	LEFT JOIN arboldecisiones.marcaRapida mr ON((a.solucion = mr.id))) 
	LEFT JOIN reportearbol ra ON a.iddecision=ra.iddecision
	WHERE a.fechahora>='2020-05-01 00:00:00' AND a.usuario NOT IN ('rfalla','jargotes');
	
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle0=REPLACE(detalle0,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle1=REPLACE(detalle1,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle2=REPLACE(detalle2,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle3=REPLACE(detalle3,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle4=REPLACE(detalle4,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle5=REPLACE(detalle5,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle6=REPLACE(detalle6,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle7=REPLACE(detalle7,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle8=REPLACE(detalle8,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle9=REPLACE(detalle9,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle10=REPLACE(detalle10,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle11=REPLACE(detalle11,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle12=REPLACE(detalle12,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle13=REPLACE(detalle13,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET detalle14=REPLACE(detalle14,',',' ');
UPDATE arbol_reportes.`reporte_arbol_final` SET ultimopaso=REPLACE(ultimopaso,',',' ');
SELECT 'usuario','fechahora','DIA','idclientecrm','Marcacion_Rapida','paso0','detalle0','paso1','detalle1','paso2','detalle2','paso3','detalle3','paso4','detalle4','paso5','detalle5','paso6','detalle6','paso7','detalle7','paso8','detalle8','paso9','detalle9','paso10','detalle10','paso11','detalle11','paso12','detalle12','paso13','detalle13','paso14','detalle14','paso15','detalle15','paso16','detalle16','paso17','detalle17','paso18','detalle18','paso19','detalle19','paso20','detalle20','paso21','detalle21','paso22','detalle22','ultimopaso','resultadoarbol'
UNION
SELECT * FROM arbol_reportes.`reporte_arbol_final` INTO OUTFILE '/temp/reporte_arbol_final.csv'
FIELDS TERMINATED BY ';' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
