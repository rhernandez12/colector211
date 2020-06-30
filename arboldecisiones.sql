/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - arboldecisiones
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `arboldecisiones`;

/*Table structure for table `decisiones` */

DROP TABLE IF EXISTS `decisiones`;

CREATE TABLE `decisiones` (
  `iddecision` int(11) NOT NULL AUTO_INCREMENT,
  `idclientecrm` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `solucion` int(11) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `paso17` int(11) unsigned DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `paso22` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddecision`),
  KEY `idusuario` (`usuario`),
  KEY `fechahora` (`fechahora`),
  KEY `paso0` (`paso0`),
  KEY `paso1` (`paso1`),
  KEY `paso2` (`paso2`),
  KEY `paso3` (`paso3`),
  KEY `paso4` (`paso4`),
  KEY `iclientecrm` (`idclientecrm`),
  KEY `paso5` (`paso5`),
  KEY `paso6` (`paso6`),
  KEY `paso7` (`paso7`),
  KEY `paso8` (`paso8`),
  KEY `paso9` (`paso9`),
  KEY `paso10` (`paso10`),
  KEY `paso11` (`paso11`),
  KEY `paso12` (`paso12`),
  KEY `paso13` (`paso13`),
  KEY `paso14` (`paso14`),
  KEY `paso15` (`paso15`),
  KEY `paso16` (`paso16`),
  KEY `paso17` (`paso17`),
  KEY `paso18` (`paso18`),
  KEY `paso19` (`paso19`),
  KEY `paso20` (`paso20`),
  KEY `paso21` (`paso21`),
  KEY `paso22` (`paso22`)
) ENGINE=MyISAM AUTO_INCREMENT=581389 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `detalles_solucion_decisiones` */

DROP TABLE IF EXISTS `detalles_solucion_decisiones`;

CREATE TABLE `detalles_solucion_decisiones` (
  `idDecisionArbol` int(11) DEFAULT NULL,
  `ultimoPaso` varchar(50) DEFAULT NULL,
  `id_ultimo_paso` int(11) DEFAULT NULL,
  `det_ultimo_paso` varchar(100) DEFAULT NULL,
  UNIQUE KEY `idDecisionArbol` (`idDecisionArbol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `marcaRapida` */

DROP TABLE IF EXISTS `marcaRapida`;

CREATE TABLE `marcaRapida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(100) DEFAULT NULL,
  `sw` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `mensajeArbol` */

DROP TABLE IF EXISTS `mensajeArbol`;

CREATE TABLE `mensajeArbol` (
  `idmensaje` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(35) DEFAULT NULL,
  `paso00` int(1) unsigned zerofill DEFAULT NULL,
  `paso01` int(1) unsigned zerofill DEFAULT NULL,
  `paso02` int(1) unsigned zerofill DEFAULT NULL,
  `paso03` int(1) unsigned zerofill DEFAULT NULL,
  `paso04` int(1) unsigned zerofill DEFAULT NULL,
  `paso05` int(1) unsigned zerofill DEFAULT NULL,
  `paso06` int(1) unsigned zerofill DEFAULT NULL,
  `paso07` int(1) unsigned zerofill DEFAULT NULL,
  `paso08` int(1) unsigned zerofill DEFAULT NULL,
  `paso09` int(1) unsigned zerofill DEFAULT NULL,
  `paso10` int(1) unsigned zerofill DEFAULT NULL,
  `paso11` int(1) unsigned zerofill DEFAULT NULL,
  `paso12` int(1) unsigned zerofill DEFAULT NULL,
  `paso13` int(1) unsigned zerofill DEFAULT NULL,
  `paso14` int(1) unsigned zerofill DEFAULT NULL,
  `paso15` int(1) unsigned zerofill DEFAULT NULL,
  `paso16` int(1) unsigned zerofill DEFAULT NULL,
  `paso17` int(1) unsigned zerofill DEFAULT NULL,
  `paso18` int(1) unsigned zerofill DEFAULT NULL,
  `paso19` int(1) unsigned zerofill DEFAULT NULL,
  `paso20` int(1) unsigned zerofill DEFAULT NULL,
  `paso21` int(1) unsigned zerofill DEFAULT NULL,
  `mensajeCompleto` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idmensaje`),
  KEY `mensaje` (`mensaje`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso00` */

DROP TABLE IF EXISTS `paso00`;

CREATE TABLE `paso00` (
  `id` int(11) NOT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso01` */

DROP TABLE IF EXISTS `paso01`;

CREATE TABLE `paso01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso0` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso0` (`paso0`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso02` */

DROP TABLE IF EXISTS `paso02`;

CREATE TABLE `paso02` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso1` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso1` (`paso1`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso03` */

DROP TABLE IF EXISTS `paso03`;

CREATE TABLE `paso03` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso2` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso2` (`paso2`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso04` */

DROP TABLE IF EXISTS `paso04`;

CREATE TABLE `paso04` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(1500) DEFAULT NULL,
  `paso3` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso3` (`paso3`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso05` */

DROP TABLE IF EXISTS `paso05`;

CREATE TABLE `paso05` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso4` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso4` (`paso4`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso06` */

DROP TABLE IF EXISTS `paso06`;

CREATE TABLE `paso06` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(500) DEFAULT NULL,
  `paso5` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso5` (`paso5`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso07` */

DROP TABLE IF EXISTS `paso07`;

CREATE TABLE `paso07` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(500) DEFAULT NULL,
  `paso6` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso6` (`paso6`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso08` */

DROP TABLE IF EXISTS `paso08`;

CREATE TABLE `paso08` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(500) DEFAULT NULL,
  `paso7` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso7` (`paso7`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso09` */

DROP TABLE IF EXISTS `paso09`;

CREATE TABLE `paso09` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso8` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso8` (`paso8`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso10` */

DROP TABLE IF EXISTS `paso10`;

CREATE TABLE `paso10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso9` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso9` (`paso9`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso11` */

DROP TABLE IF EXISTS `paso11`;

CREATE TABLE `paso11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso10` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso10` (`paso10`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso12` */

DROP TABLE IF EXISTS `paso12`;

CREATE TABLE `paso12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso11` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso11` (`paso11`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso13` */

DROP TABLE IF EXISTS `paso13`;

CREATE TABLE `paso13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(1000) DEFAULT NULL,
  `paso12` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso12` (`paso12`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso14` */

DROP TABLE IF EXISTS `paso14`;

CREATE TABLE `paso14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso13` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso13` (`paso13`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso15` */

DROP TABLE IF EXISTS `paso15`;

CREATE TABLE `paso15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso14` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso14` (`paso14`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso16` */

DROP TABLE IF EXISTS `paso16`;

CREATE TABLE `paso16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso15` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso15` (`paso15`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso17` */

DROP TABLE IF EXISTS `paso17`;

CREATE TABLE `paso17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso16` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso16` (`paso16`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso18` */

DROP TABLE IF EXISTS `paso18`;

CREATE TABLE `paso18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso17` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso17` (`paso17`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso19` */

DROP TABLE IF EXISTS `paso19`;

CREATE TABLE `paso19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso18` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso18` (`paso18`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso20` */

DROP TABLE IF EXISTS `paso20`;

CREATE TABLE `paso20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso19` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso19` (`paso19`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso21` */

DROP TABLE IF EXISTS `paso21`;

CREATE TABLE `paso21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso20` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso19` (`paso20`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `paso22` */

DROP TABLE IF EXISTS `paso22`;

CREATE TABLE `paso22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(200) DEFAULT NULL,
  `paso21` int(11) DEFAULT NULL,
  `img_total` varchar(100) DEFAULT NULL,
  `img_negocios` varchar(100) DEFAULT NULL,
  `img_masivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paso19` (`paso21`),
  KEY `imagen` (`img_total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `pasosArbol` */

DROP TABLE IF EXISTS `pasosArbol`;

CREATE TABLE `pasosArbol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `pasoAnterior` varchar(50) DEFAULT NULL,
  `tablaSiguiente` varchar(50) DEFAULT NULL,
  `tablaAnterior` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reportearbol` */

DROP TABLE IF EXISTS `reportearbol`;

CREATE TABLE `reportearbol` (
  `iddecision` int(11) NOT NULL DEFAULT '0',
  `idclientecrm` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `ldmarca_rapida` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `idpaso` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `tbpaso` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `marcarapida` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ultimopaso` varchar(200) CHARACTER SET utf8 NOT NULL,
  `resultadoarbol` varchar(300) DEFAULT NULL,
  KEY `iddecision` (`iddecision`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `ldmarca_rapida` (`ldmarca_rapida`),
  KEY `idpaso` (`idpaso`),
  KEY `tbpaso` (`tbpaso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tbresumen` */

DROP TABLE IF EXISTS `tbresumen`;

CREATE TABLE `tbresumen` (
  `detalle` varchar(300) DEFAULT NULL,
  `solucion` varchar(100) DEFAULT NULL,
  UNIQUE KEY `detalle` (`detalle`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `sp_arbol` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_arbol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_arbol`()
BEGIN
	SELECT 
	a.id AS id00,a.detalle AS paso00,a.img_total as img_total00,a.img_negocios AS img_negocios00,a.img_masivo AS img_masivo00,
	b.id AS id01,b.detalle AS paso01,b.img_total AS img_total01,b.img_negocios AS img_negocios01,b.img_masivo AS img_masivo01,
	c.id AS id02,c.detalle AS paso02,c.img_total AS img_total02,c.img_negocios AS img_negocios02,c.img_masivo AS img_masivo02,
	d.id AS id03,d.detalle AS paso03,d.img_total AS img_total03,d.img_negocios AS img_negocios03,d.img_masivo AS img_masivo03,
	e.id AS id04,e.detalle AS paso04,e.img_total AS img_total04,e.img_negocios AS img_negocios04,e.img_masivo AS img_masivo04,
	f.id AS id05,f.detalle AS paso05,f.img_total AS img_total05,f.img_negocios AS img_negocios05,f.img_masivo AS img_masivo05,
	g.id AS id06,g.detalle AS paso06,g.img_total AS img_total06,g.img_negocios AS img_negocios06,g.img_masivo AS img_masivo06,
	h.id AS id07,h.detalle AS paso07,h.img_total AS img_total07,h.img_negocios AS img_negocios07,h.img_masivo AS img_masivo07,
	i.id AS id08,i.detalle AS paso08,i.img_total AS img_total08,i.img_negocios AS img_negocios08,i.img_masivo AS img_masivo08,
	j.id AS id09,j.detalle AS paso09,j.img_total AS img_total09,j.img_negocios AS img_negocios09,j.img_masivo AS img_masivo09,
	k.id AS id10,k.detalle AS paso10,k.img_total AS img_total10,k.img_negocios AS img_negocios10,k.img_masivo AS img_masivo10,
	l.id AS id11,l.detalle AS paso11,l.img_total AS img_total11,l.img_negocios AS img_negocios11,l.img_masivo AS img_masivo11,
	m.id AS id12,m.detalle AS paso12,m.img_total AS img_total12,m.img_negocios AS img_negocios12,m.img_masivo AS img_masivo12,
	n.id AS id13,n.detalle AS paso13,n.img_total AS img_total13,n.img_negocios AS img_negocios13,n.img_masivo AS img_masivo13,
	o.id AS id14,o.detalle AS paso14,o.img_total AS img_total14,o.img_negocios AS img_negocios14,o.img_masivo AS img_masivo14,
	p.id AS id15,p.detalle AS paso15,p.img_total AS img_total15,p.img_negocios AS img_negocios15,p.img_masivo AS img_masivo15,
	q.id AS id16,q.detalle AS paso16,q.img_total AS img_total16,q.img_negocios AS img_negocios16,q.img_masivo AS img_masivo16,
	r.id AS id17,r.detalle AS paso17,r.img_total AS img_total17,r.img_negocios AS img_negocios17,r.img_masivo AS img_masivo17,
	s.id AS id18,s.detalle AS paso18,s.img_total AS img_total18,s.img_negocios AS img_negocios18,s.img_masivo AS img_masivo18,
	t.id AS id19,t.detalle AS paso19,t.img_total AS img_total19,t.img_negocios AS img_negocios19,t.img_masivo AS img_masivo19,
	u.id AS id20,u.detalle AS paso20,u.img_total AS img_total20,u.img_negocios AS img_negocios20,u.img_masivo AS img_masivo20,
	v.id AS id21,v.detalle AS paso21,v.img_total AS img_total21,v.img_negocios AS img_negocios21,v.img_masivo AS img_masivo21,
	w.id AS id22,w.detalle AS paso22,w.img_total AS img_total22,w.img_negocios AS img_negocios22,w.img_masivo AS img_masivo22
	FROM arboldecisiones.paso00 a 
	LEFT JOIN arboldecisiones.paso01 b
	ON a.id=b.paso0
	LEFT JOIN arboldecisiones.paso02 c
	ON b.id=c.paso1
	LEFT JOIN arboldecisiones.paso03 d
	ON c.id=d.paso2
	LEFT JOIN arboldecisiones.paso04 e
	ON d.id=e.paso3
	LEFT JOIN arboldecisiones.paso05 f
	ON e.id=f.paso4
	LEFT JOIN arboldecisiones.paso06 g
	ON f.id=g.paso5
	LEFT JOIN arboldecisiones.paso07 h
	ON g.id=h.paso6
	LEFT JOIN arboldecisiones.paso08 i
	ON h.id=i.paso7
	LEFT JOIN arboldecisiones.paso09 j
	ON i.id=j.paso8
	LEFT JOIN arboldecisiones.paso10 k
	ON j.id=k.paso9
	LEFT JOIN arboldecisiones.paso11 l
	ON k.id=l.paso10
	LEFT JOIN arboldecisiones.paso12 m
	ON l.id=m.paso11
	LEFT JOIN arboldecisiones.paso13 n
	ON m.id=n.paso12
	LEFT JOIN arboldecisiones.paso14 o
	ON n.id=o.paso13
	LEFT JOIN arboldecisiones.paso15 p
	ON o.id=p.paso14
	LEFT JOIN arboldecisiones.paso16 q
	ON p.id=q.paso15
	LEFT JOIN arboldecisiones.paso17 r
	ON q.id=r.paso16
	LEFT JOIN arboldecisiones.paso18 s
	ON r.id=s.paso17
	LEFT JOIN arboldecisiones.paso19 t
	ON s.id=t.paso18
	LEFT JOIN arboldecisiones.paso20 u
	ON t.id=u.paso19
	LEFT JOIN arboldecisiones.paso21 v
	ON u.id=v.paso20
	LEFT JOIN arboldecisiones.paso22 w
	ON v.id=w.paso21;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_new_reporte_arbol` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_new_reporte_arbol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_new_reporte_arbol`()
BEGIN
	TRUNCATE TABLE arboldecisiones.reportearbol;
	INSERT IGNORE arboldecisiones.reportearbol
	SELECT a.iddecision,a.`idclientecrm`,a.`fechahora`,
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
	SPACE(300) AS resultado_arbol
	FROM arboldecisiones.`decisiones` a
	WHERE DATEDIFF(NOW(),fechahora)<=7;
	
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso00 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso00';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso01 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso01';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso02 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso02';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso03 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso03';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso04 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso04';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso05 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso05';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso06 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso06';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso07 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso07';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso08 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso08';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso09 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso09';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso10 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso10';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso11 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso11';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso12 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso12';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso13 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso13';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso14 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso14';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso15 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso15';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso16 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso16';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso17 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso17';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso18 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso18';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso19 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso19';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso20 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso20';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso21 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso21';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.paso22 b ON a.`idpaso`=b.`id` SET a.`ultimopaso`=b.`detalle` WHERE  a.tbpaso='paso22';
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.marcaRapida b ON a.`ldmarca_rapida`=b.id SET marcarapida=detalle;
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.tbresumen b ON a.`ultimopaso`=b.`detalle` SET a.`resultadoarbol`=CONCAT('FA :',b.`solucion`);
	UPDATE arboldecisiones.reportearbol a INNER JOIN arboldecisiones.marcaRapida b ON a.ldmarca_rapida = b.`id` SET a.`resultadoarbol`=CONCAT('MR :',b.`detalle`) WHERE a.`resultadoarbol` IS NULL OR a.ldmarca_rapida>0;
	 
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
