/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.25 : Database - empresa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `empresa`;

/*Table structure for table `departamento` */

CREATE TABLE `departamento` (
  `codigo_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre_depto` varchar(75) DEFAULT NULL,
  `presupuesto` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `departamento` */

insert  into `departamento`(`codigo_departamento`,`nombre_depto`,`presupuesto`) values (1,'Gerencia',55000),(2,'Administración y Finanzas',118000),(3,'Contabilidad',63550),(4,'RRHH',45000),(5,'Proyectos',1305000),(6,'Comercial',354647),(7,'Mercadeo',556000),(8,'Produccion',13500300),(9,'Logistica',5905400),(10,'Bodega',2566500),(11,'Inteligencia',65000),(12,'Informática',157000),(13,'Investigacion',157000),(14,'Control de calidad',40000);

/*Table structure for table `empleado` */

CREATE TABLE `empleado` (
  `dpi` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(125) DEFAULT NULL,
  `cod_depto` int DEFAULT NULL,
  PRIMARY KEY (`dpi`),
  KEY `cod_depto` (`cod_depto`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`cod_depto`) REFERENCES `departamento` (`codigo_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `empleado` */

insert  into `empleado`(`dpi`,`nombre`,`apellidos`,`cod_depto`) values (10569,'BELGICA ANABELLA','DERAS ROMAN',13),(10755,'EVER LIBERATO','MARTINEZ BARRIOS',12),(10882,'DELHI YOHANA','OROZCO JUAREZ',7),(11267,'FABIAN HERIBERTO','MOLINA SOSA',2),(11518,'DELCY NOHEMI','SALGUERO ESQUIVEL',9),(11583,'GUSTAVO ADOLFO','TABIN GRAMAJO',11),(11725,'WILFIDO','PANTALEON PACHECO',9),(12360,'FABIAN ALBERTO','RAMOS BARAHONA',8),(12816,'OCTAVIO','CHEGUEN GONZALEZ',1),(12871,'HENRY ESTEBAN','SOSOF RAMIREZ',3),(13071,'DAVID YURAMBIR','RIVERA ALVARADO',5),(13176,'FABIAN','DE LEON PEREZ',9),(13332,'DAVID OSWALDO','QUIYUCH TOCAY',7),(13365,'WENDY LISBETH','MARROQUIN CASTILLO',5),(13382,'BELBETH YESENIA','HERNANDEZ GONZALEZ',4),(13621,'ADELIO','PEREZ Y PEREZ',9),(13729,'ZULY MAYTE','SANDOVAL SANDOVAL',13),(13837,'BELMIN PINEDA','GONZALEZ',1),(14055,'FRANCISCO RAUL','ALVARADO CHAVEZ',5),(14693,'GARY ALEXANDER','CONTRERAS NAJERA',3),(15112,'TERESA DE JESUS','VASQUEZ VILLATORO',3),(15251,'ADELFA VERONICA','PEREZ LOPEZ',5),(15277,'DAYRIN LIZMENIA','TEO SALGUERO',1),(15628,'EZVIN OSWALDO','GUERRA GALVEZ',11),(15752,'ADELSO','ZUÑIGA REGALADO',1),(15802,'ROSA ODILIA','NAVASSI DIAZ',13),(16052,'DAYRIN ROCIO','MEJIA',8),(16177,'WILFREDO','ALDANA ARCHILA',10),(16194,'DEGLY LEONEL','RODERICOMORALES NOGUERA',5),(16199,'DEBORA GREACE','AVILA CHACON',5),(16407,'SANDRA LISSETTE','MORALES RAMIREZ',8),(16423,'FREDY ESTUARDO','OGALDEZ FERNANDEZ',7),(16967,'AARON ISAAC','PAR GUITZ',3),(16970,'KARLA OLIVIA','IXMUCANEALVA ARROYO',7),(17193,'KARLA MARIELA','DE LEON LOPEZ',10),(17449,'BELSY YUCELA','SOLANO CRUZ',3),(17606,'FRANZ ROBERTO','POLANCO MEJIA',9),(17668,'LIDIA ENCARNACION','COY MACZ',4),(18005,'INGRID YESENIA','LOPEZ GALVEZ',3),(18228,'ADELY NATYNELLY','MARGOTTIUL CU',10),(18302,'FABIOLA CORINA','MANZANERO GARCIA',3),(18303,'HENRY ERNESTO','RODRIGUEZ VILLALTA',8),(18600,'BELICA ANABELA','MIRANDA MONZON',6),(19107,'CARMEN LUCIA','ACU RECINOS',5),(19261,'YESIKA MANUELA','MACARIO TAQUIEJ',7),(19484,'INGRID YESENIA','CHAVARRIA MORAN',5),(19855,'GREYS MARIANA','PINTO',6),(19969,'EZZIO GIANCARLO','GUILLEN AYAU',1),(20112,'EDGAR ROLANDO','ORTIZ GONZALEZ',4),(20252,'DEBORA CELESTE','CHAN GUERRA',3),(20275,'ZULY GABRIELA','ALVARADO BARRIOS',4),(20391,'DEBORA GUISELA','MEJICANOS',10),(20418,'DEBORA RAQUEL','JUAREZ FUENTES',4),(20523,'DAVID LIONEL','PIVARAL ALBUREZ',12),(20561,'BELSY LORENA','DE LEON GODINEZ',8),(20627,'FRANCISCO RAYMUNDO','UJPAN VASQUEZ',3),(20784,'DAVID JOSUE','LOPHES GUZMAN',7),(20930,'EDGAR ROLANDO','LOPEZ TOJES',2),(20940,'CARMEN LUCIA','NAJARRO RUANO',9),(20963,'GABRIELA SOFIA','PORTILLO LOPEZ',2),(21112,'DEBRAH ESTHER','LOBOS TOLEDO',11),(21163,'BELLANIRA DANALY','MEDRANO MORALES',11),(21454,'LIDIA ELIZABETH','SOLARES',2),(21707,'DEBORAH VIOLETA','SIERRA LOPEZ',13),(21712,'GILMAR ALEXANDER','CUC GUERRERO',7),(21731,'ZULMY RAQUEL','GARCIA CISNEROS',2),(21957,'DELBERT URIEL','DOMINGUEZ MARTINEZ',12),(22011,'BEIMER DANILO','PEREZ BAUTISTA',2),(22073,'DEBBIE DEL CARMEN','SOLOMAN ORTIZ',1),(22183,'FRED ERICK','RENEGARCIA GARCIA',10),(22263,'TERESA DE JESUS','GONZALEZ TELON',3),(22595,'EVER MANOLO','MORALES LOPEZ',6),(22661,'DEBRACK INDIRA','LOYO BRAN',6),(22891,'DAVID MOISES','ELIAS AGUILAR',4),(23204,'ROSALICIA','GUZMAN ALDANA',6),(23517,'GARDENIA ENEDINA','MAZA CASTELLANOS',4),(23647,'DEBORA RENEE','RODRIGUEZ RECINOS',1),(24270,'JUAN CARLOS','AMARRA ROBLES',9),(24367,'BELSY KORINA','ALVARADO HERNANDEZ',5),(24434,'DAVID RIGOBERTO','VILLEDA SANCHEZ',6),(24517,'CARMEN MARIA','AREVALO HERNANDEZ',10),(24546,'DEICY MARILIS','PINEDA REVOLORIO',8),(24618,'FABIAN ALFONSO','GARCIA ALVARADO',12),(24815,'DAVID URBANO','PIVARAL GONZALEZ',6),(24823,'DELFINA JEANNETTE','GARCIA MORALES',10),(25551,'DEISY VANESSA','FRANCO CERNA',3),(25659,'SANDRA IVONNE','MARTINEZ AGUILAR',11),(25757,'BECERA SUZZETH','OVALLE ROLDAN',7),(26053,'DEBORA MARIE','ESTHERPALACIOS VALDEZ',7),(28948238,'ESTHER','VASQUEZ',14);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
