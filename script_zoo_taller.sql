/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zoo_taller
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pa` varchar(50) NOT NULL,
  `apellido_ma` varchar(50) DEFAULT NULL,
  `telefono` char(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `rfc` char(13) NOT NULL,
  `sexo` enum('Masculino','Femenino','Otro') NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `rfc` (`rfc`),
  UNIQUE KEY `correo` (`correo`),
  UNIQUE KEY `telefono_2` (`telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,'Juan','García','López','5512345678','juan.garcia@email.com','GALJ880101ABC','Masculino'),
(2,'María','Rodríguez','Martínez','5523456789','maria.rodriguez@email.com','ROMM900202DEF','Femenino'),
(3,'Carlos','Hernández','Pérez','5534567890','carlos.hernandez@email.com','HEPC850303GHI','Masculino'),
(4,'Ana','Martínez','Gómez','5545678901','ana.martinez@email.com','MAGA920404JKL','Femenino'),
(5,'Luis','López','Sánchez','5556789012','luis.lopez@email.com','LOSL870505MNO','Masculino'),
(6,'Laura','Gómez','Fernández','5567890123','laura.gomez@email.com','GOFL910606PQR','Otro'),
(7,'Pedro','Díaz','Ramírez','5578901234','pedro.diaz@email.com','DIRP890707STU','Masculino'),
(8,'Sofía','Pérez','Torres','5589012345','sofia.perez@email.com','PETS930808VWX','Otro'),
(9,'Jorge','Sánchez',NULL,'5590123456','jorge.sanchez@email.com','SAVJ860909YZA','Masculino'),
(10,'Patricia','Ramírez','Cruz','5511234567','patricia.ramirez@email.com','RACP940101BCD','Femenino'),
(11,'Miguel','Flores','Morales','5522345678','miguel.flores@email.com','FLMM880202EFG','Masculino'),
(12,'Adriana','González','Ortiz','5533456789','adriana.gonzalez@email.com','GOOA910303HIJ','Femenino'),
(13,'Fernando','Torres','Reyes','5544567890','fernando.torres@email.com','TORF890404KLM','Masculino'),
(14,'Gabriela','Vázquez','Jiménez','5555678901','gabriela.vazquez@email.com','VAJG920505NOP','Femenino'),
(15,'Ricardo','Castillo','Navarro','5566789012','ricardo.castillo@email.com','CANR870606QRS','Otro'),
(16,'Daniela','Cruz','Mendoza','5577890123','daniela.cruz@email.com','CRMD930707TUV','Femenino'),
(17,'Alejandro','Reyes','Guerrero','5588901234','alejandro.reyes@email.com','REGA890808WXY','Masculino'),
(18,'Verónica','Ortiz','Silva','5599012345','veronica.ortiz@email.com','ORVS940909ZAB','Femenino'),
(19,'José','Morales','Castro','5510123456','jose.morales@email.com','MOCJ860101CDE','Masculino'),
(20,'Teresa','Jiménez','Romero','5521234567','teresa.jimenez@email.com','JIRT910202FGH','Femenino'),
(21,'Roberto','Navarro','Herrera','5532345678','roberto.navarro@email.com','NAHR880303IJK','Masculino'),
(22,'Lucía','Mendoza','Flores','5543456789','lucia.mendoza@email.com','MEFL920404LMN','Femenino'),
(23,'Francisco','Guerrero','Ruiz','5554567890','francisco.guerrero@email.com','GURF890505OPQ','Masculino'),
(24,'Mariana','Silva','Díaz','5565678901','mariana.silva@email.com','SIDM930606RST','Femenino'),
(25,'Arturo','Castro',NULL,'5576789012','arturo.castro@email.com','CAMA870707UVW','Otro'),
(26,'Isabel','Romero','Álvarez','5587890123','isabel.romero@email.com','ROAI940808XYZ','Femenino'),
(27,'Eduardo','Herrera','Vega','5598901234','eduardo.herrera@email.com','HEVE900909ABC','Masculino'),
(28,'Carmen','Ruiz','Campos','5519012345','carmen.ruiz@email.com','RUCC910101DEF','Femenino'),
(29,'Raúl','Medina','Ríos','5520123456','raul.medina@email.com','MERI880202GHI','Masculino'),
(30,'Diana','Álvarez','Salazar','5531234567','diana.alvarez@email.com','ALSD930303JKL','Femenino'),
(31,'Manuel','Vega','Delgado','5542345678','manuel.vega@email.com','VEDM890404MNO','Masculino'),
(32,'Alejandra','Campos','Ortega','5553456789','alejandra.campos@email.com','CAOA920505PQR','Otro'),
(33,'Javier','Ríos','Contreras','5564567890','javier.rios@email.com','RICJ870606STU','Masculino'),
(34,'Brenda','Salazar',NULL,'5575678901','brenda.salazar@email.com','SAPB940707VWX','Femenino'),
(35,'Oscar','Delgado','Lara','5586789012','oscar.delgado@email.com','DELO900808YZA','Otro'),
(36,'Silvia','Ortega','Miranda','5597890123','silvia.ortega@email.com','ORMS910909BCD','Femenino'),
(37,'Héctor','Contreras','Cortés','5518901234','hector.contreras@email.com','COCH880101EFG','Masculino'),
(38,'Claudia','Pacheco','Núñez','5529012345','claudia.pacheco@email.com','PANC920202HIJ','Femenino'),
(39,'Sergio','Lara',NULL,'5530123456','sergio.lara@email.com','LAMS890303KLM','Masculino'),
(40,'Natalia','Miranda',NULL,'5541234567','natalia.miranda@email.com','MIVN940404NOP','Femenino'),
(41,'Guillermo','Cortés','Aguilar','5552345678','guillermo.cortes@email.com','COAG900505QRS','Masculino'),
(42,'Rosa','Núñez','Rosas','5563456789','rosa.nunez@email.com','NURR910606TUV','Femenino'),
(43,'Alberto','Mejía',NULL,'5574567890','alberto.mejia@email.com','MEMA870707WXY','Masculino'),
(44,'Leticia','Valdez','Cervantes','5585678901','leticia.valdez@email.com','VACL920808ZAB','Femenino'),
(45,'Felipe','Aguilar','Rocha','5596789012','felipe.aguilar@email.com','AGRF890909CDE','Masculino'),
(46,'Yolanda','Rosas',NULL,'5517890123','yolanda.rosas@email.com','ROEY930101FGH','Femenino'),
(47,'Rodrigo','Méndez','Soria','5528901234','rodrigo.mendez@email.com','MESR880202IJK','Otro'),
(48,'Beatriz','Cervantes','Tapia','5539012345','beatriz.cervantes@email.com','CETB940303LMN','Femenino'),
(49,'Gerardo','Rocha','Luna','5540123456','gerardo.rocha@email.com','ROLG900404OPQ','Masculino'),
(50,'Alicia','Espinoza',NULL,'5551234567','alicia.espinoza@email.com','ESMA910505RST','Femenino'),
(51,'Marcos','Soria','Barrera','5562345678','marcos.soria@email.com','SOBM870606UVW','Masculino'),
(52,'Irma','Tapia','Cárdenas','5573456789','irma.tapia@email.com','TACI920707XYZ','Otro'),
(53,'Enrique','Luna','Acosta','5584567890','enrique.luna@email.com','LUAE890808ABC','Masculino'),
(54,'Lourdes','Maldonado','Peña','5595678901','lourdes.maldonado@email.com','MAPL930909DEF','Femenino'),
(55,'Hugo','Barrera','León','5516789012','hugo.barrera@email.com','BALH880101GHI','Masculino'),
(56,'Norma','Cárdenas','Fuentes','5527890123','norma.cardenas@email.com','CAFN910202JKL','Femenino'),
(57,'Rubén','Acosta','Villarreal','5538901234','ruben.acosta@email.com','ACVR890303MNO','Masculino'),
(58,'Elena','Peña','Zamora','5549012345','elena.pena@email.com','PEZE940404PQR','Femenino'),
(59,'Alfonso','León','Galván','5550123456','alfonso.leon@email.com','LEGA900505STU','Masculino'),
(60,'Rocío','Fuentes','Ibarra','5561234567','rocio.fuentes@email.com','FUIR910606VWX','Femenino'),
(61,'Saúl','Villarreal','Juárez','5572345678','saul.villarreal@email.com','VIJS870707YZA','Masculino'),
(62,'Victoria','Zamora','Ochoa','5583456789','victoria.zamora@email.com','ZAOV920808BCD','Femenino'),
(63,'Federico','Galván','Quintero','5594567890','federico.galvan@email.com','GAQF890909EFG','Masculino'),
(64,'Olivia','Ibarra',NULL,'5515678901','olivia.ibarra@email.com','IBVO930101HIJ','Femenino'),
(65,'René','Juárez','Zúñiga','5526789012','rene.juarez@email.com','JUZR880202KLM','Masculino'),
(66,'Margarita','Ochoa',NULL,'5537890123','margarita.ochoa@email.com','OCRM940303NOP','Otro');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_fac` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emi` date NOT NULL,
  `rfc` char(13) DEFAULT 'ZTH240523L91',
  `rfc_cli` char(13) NOT NULL,
  `raz_social` varchar(50) DEFAULT 'ZOO Taller de Hojalatería S.A. de C.V',
  `forma_pago` enum('EFECTIVO','TARJETA') NOT NULL DEFAULT 'EFECTIVO',
  `costo_final` decimal(7,2) NOT NULL,
  `id_ord_pago` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_fac`),
  KEY `id_ord_pago` (`id_ord_pago`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_ord_pago`) REFERENCES `ord_pago` (`id_ord_pago`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES
(1,'2023-12-03','ZTH240523L91','ROMM900202DEF','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',11500.00,2,23),
(2,'2023-12-03','ZTH240523L91','GOOA910303HIJ','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',5500.00,3,45),
(3,'2023-12-04','ZTH240523L91','MAGA920404JKL','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',7500.00,4,12),
(5,'2023-12-04','ZTH240523L91','CAMA870707UVW','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',1800.00,6,34),
(6,'2023-12-05','ZTH240523L91','GALJ880101ABC','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',1800.00,7,1),
(7,'2023-12-05','ZTH240523L91','PETS930808VWX','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1100.00,8,56),
(8,'2023-12-05','ZTH240523L91','CANR870606QRS','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2400.00,9,17),
(9,'2023-12-06','ZTH240523L91','GALJ880101ABC','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2000.00,10,7),
(10,'2023-12-06','ZTH240523L91','HEPC850303GHI','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',3200.00,11,3),
(11,'2023-12-06','ZTH240523L91','FLMM880202EFG','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2500.00,15,19),
(12,'2023-12-07','ZTH240523L91','GOOA910303HIJ','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1500.00,16,41),
(13,'2023-12-07','ZTH240523L91','PETS930808VWX','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',2800.00,17,8),
(14,'2023-12-07','ZTH240523L91','GOOA910303HIJ','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1800.00,19,50),
(15,'2023-12-08','ZTH240523L91','CANR870606QRS','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1500.00,20,53),
(16,'2023-12-08','ZTH240523L91','HEPC850303GHI','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',3200.00,21,16),
(17,'2023-12-08','ZTH240523L91','SIDM930606RST','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',2200.00,22,31),
(18,'2023-12-09','ZTH240523L91','MEFL920404LMN','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2800.00,23,25),
(19,'2023-12-09','ZTH240523L91','NAHR880303IJK','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',3500.00,24,60),
(20,'2023-12-10','ZTH240523L91','JIRT910202FGH','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',4200.00,25,37),
(21,'2023-12-10','ZTH240523L91','MOCJ860101CDE','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',3800.00,26,47),
(22,'2023-12-11','ZTH240523L91','CRMD930707TUV','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',3200.00,27,14),
(23,'2023-12-11','ZTH240523L91','REGA890808WXY','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',4200.00,28,66),
(24,'2023-12-12','ZTH240523L91','ORVS940909ZAB','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',3500.00,29,19),
(26,'2023-12-03','ZTH240523L91','ROMM900202DEF','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',11500.00,2,23),
(27,'2023-12-03','ZTH240523L91','GOOA910303HIJ','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',5500.00,3,45),
(28,'2023-12-04','ZTH240523L91','MAGA920404JKL','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',7500.00,4,12),
(30,'2023-12-04','ZTH240523L91','CAMA870707UVW','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',1800.00,6,34),
(31,'2023-12-05','ZTH240523L91','GALJ880101ABC','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',1800.00,7,1),
(32,'2023-12-05','ZTH240523L91','PETS930808VWX','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1100.00,8,56),
(33,'2023-12-05','ZTH240523L91','CANR870606QRS','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2400.00,9,17),
(34,'2023-12-06','ZTH240523L91','GALJ880101ABC','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2000.00,10,7),
(35,'2023-12-06','ZTH240523L91','HEPC850303GHI','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',3200.00,11,3),
(36,'2023-12-06','ZTH240523L91','FLMM880202EFG','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2500.00,15,19),
(37,'2023-12-07','ZTH240523L91','GOOA910303HIJ','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1500.00,16,41),
(38,'2023-12-07','ZTH240523L91','PETS930808VWX','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',2800.00,17,8),
(39,'2023-12-07','ZTH240523L91','GOOA910303HIJ','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1800.00,19,50),
(40,'2023-12-08','ZTH240523L91','CANR870606QRS','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',1500.00,20,53),
(41,'2023-12-08','ZTH240523L91','HEPC850303GHI','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',3200.00,21,16),
(42,'2023-12-08','ZTH240523L91','SIDM930606RST','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',2200.00,22,31),
(43,'2023-12-09','ZTH240523L91','MEFL920404LMN','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',2800.00,23,25),
(44,'2023-12-09','ZTH240523L91','NAHR880303IJK','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',3500.00,24,60),
(45,'2023-12-10','ZTH240523L91','JIRT910202FGH','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',4200.00,25,37),
(46,'2023-12-10','ZTH240523L91','MOCJ860101CDE','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',3800.00,26,47),
(47,'2023-12-11','ZTH240523L91','CRMD930707TUV','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',3200.00,27,14),
(48,'2023-12-11','ZTH240523L91','REGA890808WXY','ZOO Taller de Hojalatería S.A. de C.V','TARJETA',4200.00,28,66),
(49,'2023-12-12','ZTH240523L91','ORVS940909ZAB','ZOO Taller de Hojalatería S.A. de C.V','EFECTIVO',3500.00,29,19);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mec_ord`
--

DROP TABLE IF EXISTS `mec_ord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mec_ord` (
  `estatus` tinyint(1) NOT NULL,
  `fecha_asig` date NOT NULL,
  `fecha_comple` date DEFAULT NULL,
  `id_mec` int(11) NOT NULL,
  `id_ord_tra` int(11) NOT NULL,
  KEY `id_mec` (`id_mec`),
  KEY `id_ord_tra` (`id_ord_tra`),
  CONSTRAINT `mec_ord_ibfk_1` FOREIGN KEY (`id_mec`) REFERENCES `mecanico` (`id_mec`),
  CONSTRAINT `mec_ord_ibfk_2` FOREIGN KEY (`id_ord_tra`) REFERENCES `ord_tra` (`id_ord_tra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mec_ord`
--

LOCK TABLES `mec_ord` WRITE;
/*!40000 ALTER TABLE `mec_ord` DISABLE KEYS */;
INSERT INTO `mec_ord` VALUES
(1,'2023-11-01','2023-11-02',41,1),
(1,'2023-11-02','2023-11-03',42,1),
(1,'2023-11-02','2023-11-04',43,2),
(1,'2023-11-04','2023-11-05',44,2),
(1,'2023-11-01','2023-11-03',1,3),
(1,'2023-11-03','2023-11-04',2,3),
(1,'2023-11-02','2023-11-04',61,4),
(1,'2023-11-04','2023-11-05',62,4),
(1,'2023-11-04','2023-11-06',63,5),
(1,'2023-11-06','2023-11-07',64,5),
(1,'2023-11-05','2023-11-06',21,6),
(1,'2023-11-06','2023-11-07',22,6),
(1,'2023-11-07','2023-11-08',3,7),
(1,'2023-11-08','2023-11-09',4,7),
(1,'2023-11-07','2023-11-08',65,8),
(1,'2023-11-08','2023-11-09',66,8),
(1,'2023-11-07','2023-11-09',5,9),
(1,'2023-11-09','2023-11-10',6,9),
(1,'2023-11-08','2023-11-09',45,10),
(1,'2023-11-09','2023-11-10',46,10),
(1,'2023-11-11','2023-11-12',47,11),
(1,'2023-11-12','2023-11-13',48,11),
(1,'2023-11-14','2023-11-16',23,12),
(1,'2023-11-16','2023-11-17',24,12),
(1,'2023-11-16','2023-11-18',7,13),
(1,'2023-11-18','2023-11-19',8,13),
(1,'2023-11-17','2023-11-19',25,14),
(1,'2023-11-19','2023-11-20',26,14),
(1,'2023-11-19','2023-11-21',49,15),
(1,'2023-11-21','2023-11-22',50,15),
(1,'2023-11-21','2023-11-23',9,16),
(1,'2023-11-23','2023-11-24',10,16),
(1,'2023-11-22','2023-11-25',67,17),
(1,'2023-11-25','2023-11-26',68,17),
(1,'2023-11-24','2023-11-26',11,18),
(1,'2023-11-26','2023-11-27',12,18),
(1,'2023-12-01','2023-12-03',27,19),
(1,'2023-12-03','2023-12-04',28,19),
(1,'2023-12-03','2023-12-05',69,20),
(1,'2023-12-05','2023-12-06',70,20),
(1,'2023-11-29','2023-12-02',71,21),
(1,'2023-12-02','2023-12-03',72,21),
(1,'2023-11-28','2023-12-01',51,22),
(1,'2023-12-01','2023-12-02',52,22),
(1,'2023-11-30','2023-12-03',13,23),
(1,'2023-12-03','2023-12-04',14,23),
(1,'2023-11-29','2023-12-02',73,24),
(1,'2023-12-02','2023-12-03',74,24),
(1,'2023-11-30','2023-12-03',15,25),
(1,'2023-12-03','2023-12-04',16,25),
(1,'2023-12-02','2023-12-05',29,26),
(1,'2023-12-05','2023-12-06',30,26),
(1,'2023-12-01','2023-12-04',31,27),
(1,'2023-12-04','2023-12-05',32,27),
(1,'2023-12-02','2023-12-05',33,28),
(1,'2023-12-05','2023-12-06',34,28),
(1,'2023-12-04','2023-12-07',53,29),
(1,'2023-12-07','2023-12-08',54,29),
(1,'2023-12-03','2023-12-07',17,30),
(1,'2023-12-07','2023-12-08',18,30),
(1,'2023-11-03','2023-11-05',55,31),
(0,'2023-11-08',NULL,56,31),
(1,'2023-11-04','2023-11-05',75,32),
(0,'2023-11-05',NULL,76,32),
(1,'2023-11-05','2023-11-08',57,33),
(0,'2023-11-12',NULL,58,33),
(1,'2023-11-03','2023-11-05',77,34),
(0,'2023-11-10',NULL,78,34),
(1,'2023-11-07','2023-11-09',19,35),
(0,'2023-11-09',NULL,20,35),
(1,'2023-11-08','2023-11-10',79,36),
(0,'2023-11-15',NULL,80,36),
(1,'2023-11-06','2023-11-08',59,37),
(0,'2023-11-08',NULL,60,37),
(1,'2023-11-08','2023-11-09',61,38),
(0,'2023-11-09',NULL,62,38),
(1,'2023-11-09','2023-11-10',1,39),
(0,'2023-11-10',NULL,2,39),
(1,'2023-11-06','2023-11-09',63,40),
(0,'2023-11-09',NULL,64,40),
(1,'2023-11-10','2023-11-14',3,41),
(0,'2023-11-14',NULL,4,41),
(0,'2023-11-11',NULL,65,42),
(1,'2023-11-09','2023-11-12',35,43),
(0,'2023-11-12',NULL,36,43),
(1,'2023-11-10','2023-11-20',67,44),
(0,'2023-11-20',NULL,68,44),
(1,'2023-11-11','2023-11-15',41,45),
(0,'2023-11-15',NULL,42,45),
(1,'2023-11-12','2023-11-14',43,46),
(0,'2023-11-14',NULL,44,46),
(1,'2023-11-09','2023-11-13',37,47),
(0,'2023-11-13',NULL,38,47),
(1,'2023-11-10','2023-11-14',5,48),
(0,'2023-11-14',NULL,6,48),
(1,'2023-11-13','2023-11-16',69,49),
(0,'2023-11-16',NULL,70,49),
(1,'2023-11-14','2023-11-18',45,50),
(0,'2023-11-18',NULL,46,50),
(1,'2023-11-12','2023-11-15',47,51),
(0,'2023-11-15',NULL,48,51),
(1,'2023-11-13','2023-11-15',7,52),
(0,'2023-11-15',NULL,8,52),
(1,'2023-11-15','2023-11-17',71,53),
(0,'2023-11-17',NULL,72,53),
(1,'2023-11-16','2023-11-19',39,54),
(0,'2023-11-19',NULL,40,54),
(1,'2023-11-15','2023-11-16',9,55),
(0,'2023-11-16',NULL,10,55),
(1,'2023-11-17','2023-11-19',11,56),
(0,'2023-11-19',NULL,12,56),
(1,'2023-11-18','2023-11-21',21,57),
(0,'2023-11-21',NULL,22,57),
(1,'2023-11-19','2023-11-22',23,58),
(0,'2023-11-22',NULL,24,58),
(1,'2023-11-18','2023-11-21',49,59),
(0,'2023-11-21',NULL,50,59),
(1,'2023-11-20','2023-11-22',25,60),
(0,'2023-11-22',NULL,26,60),
(1,'2023-11-21','2023-11-23',51,61),
(0,'2023-11-23',NULL,52,61),
(1,'2023-11-20','2023-11-22',27,62),
(0,'2023-11-22',NULL,28,62),
(1,'2023-11-22','2023-11-23',53,63),
(0,'2023-11-23',NULL,54,63),
(1,'2023-11-23','2023-11-24',29,64),
(0,'2023-11-24',NULL,30,64),
(1,'2023-11-23','2023-11-25',13,65),
(0,'2023-11-25',NULL,14,65),
(1,'2023-11-25','2023-11-27',31,66),
(0,'2023-11-27',NULL,32,66),
(1,'2023-11-24','2023-11-27',15,67),
(0,'2023-11-27',NULL,16,67),
(1,'2023-11-26','2023-11-28',75,68),
(0,'2023-11-28',NULL,76,68),
(1,'2023-11-25','2023-11-27',55,69),
(0,'2023-11-27',NULL,56,69),
(1,'2023-11-27','2023-11-28',77,70),
(0,'2023-11-28',NULL,78,70),
(1,'2023-11-26','2023-11-28',57,71),
(0,'2023-11-28',NULL,58,71),
(1,'2023-11-28','2023-11-30',79,72),
(0,'2023-11-30',NULL,80,72),
(1,'2023-11-27','2023-11-29',17,73),
(0,'2023-11-29',NULL,18,73),
(1,'2023-12-10','2023-12-11',59,74),
(0,'2023-12-11',NULL,60,74),
(1,'2023-12-09','2023-12-12',33,75),
(0,'2023-12-12',NULL,34,75),
(1,'2023-12-11','2023-12-13',41,76),
(0,'2023-12-13',NULL,42,76),
(1,'2023-12-10','2023-12-12',35,77),
(0,'2023-12-12',NULL,36,77),
(1,'2023-12-12','2023-12-13',19,78),
(0,'2023-12-13',NULL,20,78),
(1,'2023-12-11','2023-12-14',1,79),
(0,'2023-12-14',NULL,2,79),
(1,'2023-12-13','2023-12-15',37,80),
(0,'2023-12-15',NULL,38,80),
(1,'2023-12-12','2023-12-15',3,81),
(0,'2023-12-15',NULL,4,81),
(1,'2023-12-14','2023-12-16',41,82),
(0,'2023-12-16',NULL,42,82),
(1,'2023-12-13','2023-12-16',61,83),
(0,'2023-12-16',NULL,62,83),
(1,'2023-12-15','2023-12-16',39,84),
(0,'2023-12-16',NULL,40,84),
(1,'2023-12-14','2023-12-17',5,85),
(0,'2023-12-17',NULL,6,85),
(1,'2023-12-16','2023-12-18',21,86),
(0,'2023-12-18',NULL,22,86),
(1,'2023-12-15','2023-12-18',43,87),
(0,'2023-12-18',NULL,44,87),
(1,'2023-12-17','2023-12-19',7,88),
(0,'2023-12-19',NULL,8,88),
(1,'2023-12-16','2023-12-19',63,89),
(0,'2023-12-19',NULL,64,89),
(1,'2023-12-18','2023-12-19',9,90),
(0,'2023-12-19',NULL,10,90),
(1,'2023-12-19','2023-12-21',61,91),
(0,'2023-12-21',NULL,62,91),
(1,'2023-12-20','2023-12-22',41,92),
(0,'2023-12-22',NULL,42,92),
(1,'2023-12-21','2023-12-23',21,93),
(0,'2023-12-23',NULL,22,93),
(1,'2023-12-22','2023-12-24',63,94),
(0,'2023-12-24',NULL,64,94),
(1,'2023-12-23','2023-12-26',23,95),
(0,'2023-12-26',NULL,24,95),
(1,'2023-12-24','2023-12-27',25,96),
(0,'2023-12-27',NULL,26,96),
(1,'2023-12-25','2023-12-28',65,97),
(0,'2023-12-28',NULL,66,97),
(1,'2023-12-26','2023-12-29',27,98),
(0,'2023-12-29',NULL,28,98),
(1,'2023-12-27','2023-12-30',43,99),
(0,'2023-12-30',NULL,44,99),
(1,'2023-12-28','2023-12-31',67,100),
(0,'2023-12-31',NULL,68,100),
(1,'2023-11-01','2023-11-04',43,1),
(1,'2023-11-04','2023-11-05',65,4),
(1,'2023-11-08','2023-11-09',67,8),
(1,'2023-11-23','2023-11-24',11,16),
(1,'2023-12-01','2023-12-02',54,22),
(0,'2023-11-08',NULL,57,31),
(1,'2023-11-24','2023-11-27',14,67),
(0,'2023-11-27',NULL,18,67);
/*!40000 ALTER TABLE `mec_ord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanico`
--

DROP TABLE IF EXISTS `mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanico` (
  `id_mec` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pa` varchar(50) NOT NULL,
  `apellido_ma` varchar(50) DEFAULT NULL,
  `sexo` enum('Masculino','Femenino','Otro') NOT NULL,
  `id_suc` char(4) NOT NULL,
  PRIMARY KEY (`id_mec`),
  KEY `id_suc` (`id_suc`),
  CONSTRAINT `mecanico_ibfk_1` FOREIGN KEY (`id_suc`) REFERENCES `sucursal` (`id_suc`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanico`
--

LOCK TABLES `mecanico` WRITE;
/*!40000 ALTER TABLE `mecanico` DISABLE KEYS */;
INSERT INTO `mecanico` VALUES
(1,'Juan','Pérez','Gómez','Masculino','ALTZ'),
(2,'Luis','Ramírez','López','Masculino','ALTZ'),
(3,'Carlos','Fernández','Martínez','Masculino','ALTZ'),
(4,'Miguel','Sánchez','Díaz','Masculino','ALTZ'),
(5,'Andrés','García','Hernández','Masculino','ALTZ'),
(6,'Jorge','Morales','Torres','Masculino','ALTZ'),
(7,'Raúl','Vargas','Flores','Masculino','ALTZ'),
(8,'Diego','Mendoza','Ortiz','Masculino','ALTZ'),
(9,'Óscar','Silva','Castillo','Masculino','ALTZ'),
(10,'Ricardo','Ruiz','Medina','Masculino','ALTZ'),
(11,'Fernando','Pardo',NULL,'Masculino','ALTZ'),
(12,'Roberto','Navarro','Ríos','Masculino','ALTZ'),
(13,'Eduardo','Cruz',NULL,'Masculino','ALTZ'),
(14,'María','López','Santos','Femenino','ALTZ'),
(15,'Lucía','Molina','Vega','Femenino','ALTZ'),
(16,'Sofía','Campos','Nava','Femenino','ALTZ'),
(17,'Ana','Gil','Ponce','Femenino','ALTZ'),
(18,'Patricia','Rojas',NULL,'Femenino','ALTZ'),
(19,'Alex','Reyes','Cárdenas','Otro','ALTZ'),
(20,'Sam','Castro',NULL,'Otro','ALTZ'),
(21,'Manuel','Ortiz','Guzmán','Masculino','CMLN'),
(22,'Sergio','Herrera','Soto','Masculino','CMLN'),
(23,'Raúl','Márquez','Ramos','Masculino','CMLN'),
(24,'José','Flores','Reyes','Masculino','CMLN'),
(25,'Enrique','Vega','Cortez','Masculino','CMLN'),
(26,'Alberto','Navarro',NULL,'Masculino','CMLN'),
(27,'Francisco','Moreno','Delgado','Masculino','CMLN'),
(28,'Héctor','Gil','Mendoza','Masculino','CMLN'),
(29,'Diego','Rivas','Figueroa','Masculino','CMLN'),
(30,'Julio','Salazar','Romero','Masculino','CMLN'),
(31,'Andrés','Luna',NULL,'Masculino','CMLN'),
(32,'Iván','Ramos','Herrera','Masculino','CMLN'),
(33,'Pablo','Soto','Vega','Masculino','CMLN'),
(34,'Claudia','Mendoza','Santos','Femenino','CMLN'),
(35,'Gabriela','Jiménez',NULL,'Femenino','CMLN'),
(36,'Elena','Cruz','Lara','Femenino','CMLN'),
(37,'Marisol','Reyes','Flores','Femenino','CMLN'),
(38,'Verónica','Torres','Delgado','Femenino','CMLN'),
(39,'Alexis','Cárdenas','Pérez','Otro','CMLN'),
(40,'Sasha','Vargas',NULL,'Otro','CMLN'),
(41,'David','Flores','López','Masculino','CTRO'),
(42,'Ernesto','Morales','García','Masculino','CTRO'),
(43,'Fabián','Rojas','Sánchez','Masculino','CTRO'),
(44,'Gilberto','López','Ramírez','Masculino','CTRO'),
(45,'Ignacio','Ortiz','Flores','Masculino','CTRO'),
(46,'Javier','Molina',NULL,'Masculino','CTRO'),
(47,'Kevin','Vega','Pérez','Masculino','CTRO'),
(48,'Leonardo','Soto','Martínez','Masculino','CTRO'),
(49,'Mario','Castillo','Navarro','Masculino','CTRO'),
(50,'Nicolás','Ramírez','Luna','Masculino','CTRO'),
(51,'Óscar','González',NULL,'Masculino','CTRO'),
(52,'Patricio','Hernández','Mendoza','Masculino','CTRO'),
(53,'Raúl','Pérez','Ríos','Masculino','CTRO'),
(54,'Sandra','Flores','Gil','Femenino','CTRO'),
(55,'Teresa','Luna','Rojas','Femenino','CTRO'),
(56,'Valeria','González',NULL,'Femenino','CTRO'),
(57,'Yolanda','Moreno','Ortiz','Femenino','CTRO'),
(58,'Zulema','Vargas','Mendoza','Femenino','CTRO'),
(59,'Adrian','Silva','Ponce','Otro','CTRO'),
(60,'Blake','Gil',NULL,'Otro','CTRO'),
(61,'Antonio','López','Santos','Masculino','SALQ'),
(62,'Bruno','Mendoza','Vega','Masculino','SALQ'),
(63,'Cristian','Campos','Nava','Masculino','SALQ'),
(64,'Daniel','Gil','Ponce','Masculino','SALQ'),
(65,'Esteban','Rojas',NULL,'Masculino','SALQ'),
(66,'Federico','Reyes','Cárdenas','Masculino','SALQ'),
(67,'Gabriel','Castro','Núñez','Masculino','SALQ'),
(68,'Hugo','Ramírez','López','Masculino','SALQ'),
(69,'Isaac','Soto','Gómez','Masculino','SALQ'),
(70,'Joaquín','Vargas','Hernández','Masculino','SALQ'),
(71,'Luis','Pérez',NULL,'Masculino','SALQ'),
(72,'Mario','Ortiz','Luna','Masculino','SALQ'),
(73,'Norberto','Flores','Ríos','Masculino','SALQ'),
(74,'Patricia','Moreno','Flores','Femenino','SALQ'),
(75,'Rosa','González','López','Femenino','SALQ'),
(76,'Silvia','Hernández',NULL,'Femenino','SALQ'),
(77,'Tania','Mendoza','Pérez','Femenino','SALQ'),
(78,'Úrsula','Ramírez','Torres','Femenino','SALQ'),
(79,'Ariel','Gómez','Martínez','Otro','SALQ'),
(80,'Cris','Díaz',NULL,'Otro','SALQ'),
(81,'Luis','Pérez','García','Masculino','CTRO'),
(82,'Ana','López','Martínez','Femenino','CTRO'),
(83,'Carlos','Ramírez','Soto','Masculino','ALTZ'),
(84,'María','Hernández','Ruiz','Femenino','ALTZ'),
(85,'Jorge','Díaz','Torres','Masculino','SALQ'),
(86,'Elena','Vargas','Castro','Femenino','SALQ'),
(87,'Ricardo','Mendoza','Silva','Masculino','CMLN'),
(88,'Patricia','Ortega','Flores','Femenino','CMLN');
/*!40000 ALTER TABLE `mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ord_pago`
--

DROP TABLE IF EXISTS `ord_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ord_pago` (
  `id_ord_pago` int(11) NOT NULL AUTO_INCREMENT,
  `costo_final` decimal(7,2) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `forma_pago` enum('EFECTIVO','TARJETA','S/PAGO') NOT NULL DEFAULT 'S/PAGO',
  `id_ord_tra` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_ord_pago`),
  KEY `id_ord_tra` (`id_ord_tra`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `ord_pago_ibfk_1` FOREIGN KEY (`id_ord_tra`) REFERENCES `ord_tra` (`id_ord_tra`),
  CONSTRAINT `ord_pago_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ord_pago`
--

LOCK TABLES `ord_pago` WRITE;
/*!40000 ALTER TABLE `ord_pago` DISABLE KEYS */;
INSERT INTO `ord_pago` VALUES
(1,4750.00,1,'EFECTIVO',1,7),
(2,11500.00,1,'TARJETA',2,23),
(3,5500.00,1,'EFECTIVO',3,45),
(4,7500.00,1,'TARJETA',4,12),
(5,2200.00,0,'S/PAGO',5,5),
(6,1800.00,1,'EFECTIVO',6,34),
(7,1800.00,1,'EFECTIVO',7,1),
(8,1100.00,1,'TARJETA',8,56),
(9,2400.00,1,'EFECTIVO',9,17),
(10,2000.00,1,'EFECTIVO',10,7),
(11,3200.00,1,'TARJETA',11,3),
(12,2800.00,0,'S/PAGO',12,35),
(13,1800.00,1,'EFECTIVO',13,29),
(14,2200.00,1,'TARJETA',14,62),
(15,2500.00,1,'EFECTIVO',15,19),
(16,1500.00,1,'TARJETA',16,41),
(17,2800.00,1,'TARJETA',17,8),
(18,1800.00,0,'S/PAGO',18,20),
(19,1800.00,1,'TARJETA',19,50),
(20,1500.00,1,'TARJETA',20,53),
(21,3200.00,1,'EFECTIVO',21,16),
(22,2200.00,1,'TARJETA',22,31),
(23,2800.00,1,'EFECTIVO',23,25),
(24,3500.00,1,'TARJETA',24,60),
(25,4200.00,1,'EFECTIVO',25,37),
(26,3800.00,1,'TARJETA',26,47),
(27,3200.00,1,'EFECTIVO',27,14),
(28,4200.00,1,'TARJETA',28,66),
(29,3500.00,1,'EFECTIVO',29,19),
(30,3800.00,0,'S/PAGO',30,53),
(31,8250.00,1,'EFECTIVO',31,14),
(32,4800.00,1,'TARJETA',32,28),
(33,18500.00,1,'EFECTIVO',33,47),
(34,9500.00,1,'EFECTIVO',34,10),
(35,6500.00,0,'S/PAGO',35,5),
(36,10500.00,1,'EFECTIVO',36,29),
(37,3200.00,1,'TARJETA',37,31),
(38,4000.00,1,'TARJETA',38,64),
(39,3200.00,1,'TARJETA',39,25),
(40,4800.00,1,'EFECTIVO',40,40),
(41,6200.00,1,'TARJETA',41,1),
(42,22000.00,0,'S/PAGO',42,24),
(43,5200.00,1,'TARJETA',43,58),
(44,38000.00,1,'EFECTIVO',44,36),
(45,14500.00,1,'TARJETA',45,38),
(46,4500.00,1,'EFECTIVO',46,15),
(47,8500.00,1,'TARJETA',47,42),
(48,4800.00,0,'S/PAGO',48,13),
(49,6800.00,1,'TARJETA',49,20),
(50,6800.00,1,'EFECTIVO',50,2),
(51,4200.00,1,'TARJETA',51,51),
(52,3500.00,1,'EFECTIVO',52,56),
(53,3800.00,1,'TARJETA',53,32),
(54,5800.00,0,'S/PAGO',54,23),
(55,3200.00,1,'TARJETA',55,9),
(56,2500.00,1,'EFECTIVO',56,61),
(57,4200.00,1,'TARJETA',57,26),
(58,3800.00,1,'EFECTIVO',58,28),
(59,5200.00,1,'TARJETA',59,43),
(60,2800.00,0,'S/PAGO',60,11),
(61,3200.00,1,'TARJETA',61,11),
(62,3500.00,1,'EFECTIVO',62,54),
(63,3500.00,1,'TARJETA',63,62),
(64,2200.00,1,'EFECTIVO',64,22),
(65,3200.00,0,'S/PAGO',65,65),
(66,3800.00,1,'EFECTIVO',66,38),
(67,3200.00,1,'TARJETA',67,44),
(68,1800.00,1,'EFECTIVO',68,4),
(69,2800.00,1,'TARJETA',69,59),
(70,3500.00,1,'EFECTIVO',70,22),
(71,4800.00,1,'TARJETA',71,27),
(72,3200.00,0,'S/PAGO',72,17),
(73,3800.00,1,'TARJETA',73,49),
(74,3500.00,1,'EFECTIVO',74,50),
(75,2200.00,1,'TARJETA',75,10),
(76,4200.00,1,'EFECTIVO',76,55),
(77,3200.00,1,'TARJETA',77,4),
(78,4800.00,1,'EFECTIVO',78,33),
(79,4200.00,0,'S/PAGO',79,32),
(80,2800.00,1,'EFECTIVO',80,46),
(81,2200.00,1,'TARJETA',81,21),
(82,3800.00,1,'EFECTIVO',82,63),
(83,3200.00,1,'TARJETA',83,65),
(84,4200.00,1,'EFECTIVO',84,2),
(85,4800.00,1,'TARJETA',85,8),
(86,3500.00,0,'S/PAGO',86,16),
(87,1800.00,1,'TARJETA',87,35),
(88,4200.00,1,'EFECTIVO',88,57),
(89,4800.00,1,'TARJETA',89,41),
(90,1800.00,1,'EFECTIVO',90,13),
(91,3200.00,1,'TARJETA',91,48),
(92,3800.00,0,'S/PAGO',92,26),
(93,3500.00,1,'TARJETA',93,30),
(94,2800.00,1,'EFECTIVO',94,52),
(95,3200.00,1,'TARJETA',95,59),
(96,4200.00,1,'EFECTIVO',96,18),
(97,4800.00,1,'TARJETA',97,44),
(98,4200.00,1,'EFECTIVO',98,6),
(99,3500.00,1,'TARJETA',99,39),
(100,1800.00,1,'EFECTIVO',100,34);
/*!40000 ALTER TABLE `ord_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ord_tra`
--

DROP TABLE IF EXISTS `ord_tra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ord_tra` (
  `id_ord_tra` int(11) NOT NULL AUTO_INCREMENT,
  `descrip` varchar(200) NOT NULL,
  `fecha_ingre` date NOT NULL,
  `fecha_entrega_est` date NOT NULL,
  `estado` enum('COMPLETADO','PROCESO') NOT NULL,
  `costo` decimal(7,2) NOT NULL,
  `id_veh` int(11) NOT NULL,
  PRIMARY KEY (`id_ord_tra`),
  KEY `id_veh` (`id_veh`),
  CONSTRAINT `ord_tra_ibfk_1` FOREIGN KEY (`id_veh`) REFERENCES `vehiculo` (`id_veh`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ord_tra`
--

LOCK TABLES `ord_tra` WRITE;
/*!40000 ALTER TABLE `ord_tra` DISABLE KEYS */;
INSERT INTO `ord_tra` VALUES
(1,'Reparación de colisión frontal menor','2023-11-01','2023-11-05','COMPLETADO',4750.00,7),
(2,'Reparación de impacto lateral completo','2023-11-02','2023-11-10','COMPLETADO',11500.00,23),
(3,'Reemplazo de puerta completa','2023-11-01','2023-11-07','COMPLETADO',5500.00,45),
(4,'Pintura de media unidad (un lado)','2023-11-02','2023-11-08','COMPLETADO',7500.00,12),
(5,'Retoque de pintura en un panel','2023-11-06','2023-11-08','COMPLETADO',2200.00,68),
(6,'Reparación de abolladuras sin pintar (PDR)','2023-11-04','2023-11-06','COMPLETADO',1800.00,34),
(7,'Pulido y encerado profesional','2023-11-05','2023-11-06','COMPLETADO',1800.00,89),
(8,'Restauración de faros opacos','2023-11-07','2023-11-08','COMPLETADO',1100.00,56),
(9,'Restauración de molduras cromadas','2023-11-07','2023-11-09','COMPLETADO',2400.00,17),
(10,'Instalación de deflectores de lluvia','2023-11-08','2023-11-09','COMPLETADO',2000.00,91),
(11,'Mantenimiento preventivo de carrocería','2023-11-11','2023-11-13','COMPLETADO',3200.00,3),
(12,'Reemplazo de retrovisor derecho','2023-11-14','2023-11-16','COMPLETADO',2800.00,78),
(13,'Alineación de puertas','2023-11-16','2023-11-18','COMPLETADO',1800.00,29),
(14,'Reparación de cerradura de puerta','2023-11-17','2023-11-19','COMPLETADO',2200.00,62),
(15,'Pintura de espejos laterales','2023-11-19','2023-11-21','COMPLETADO',2500.00,95),
(16,'Instalación de antena nueva','2023-11-21','2023-11-23','COMPLETADO',1500.00,41),
(17,'Pintura de tapacubos','2023-11-22','2023-11-25','COMPLETADO',2800.00,8),
(18,'Reemplazo de emblemas','2023-11-24','2023-11-26','COMPLETADO',1800.00,73),
(19,'Pintura de tapa de gasolina','2023-12-01','2023-12-03','COMPLETADO',1800.00,50),
(20,'Reemplazo de antena de radio','2023-12-03','2023-12-05','COMPLETADO',1500.00,84),
(21,'Reparación de sistema de audio','2023-11-29','2023-12-02','COMPLETADO',3200.00,16),
(22,'Pintura de marco de espejos','2023-11-28','2023-12-01','COMPLETADO',2200.00,99),
(23,'Reemplazo de burletes','2023-11-30','2023-12-03','COMPLETADO',2800.00,25),
(24,'Reparación de sistema de navegación','2023-11-29','2023-12-02','COMPLETADO',3500.00,60),
(25,'Instalación de cámara de reversa','2023-11-30','2023-12-04','COMPLETADO',4200.00,37),
(26,'Reparación de sistema de seguridad','2023-12-02','2023-12-05','COMPLETADO',3800.00,82),
(27,'Pintura de marco de puertas','2023-12-01','2023-12-04','COMPLETADO',3200.00,14),
(28,'Reparación de sistema de asistencia','2023-12-02','2023-12-05','COMPLETADO',4200.00,66),
(29,'Pintura de marco de parabrisas','2023-12-04','2023-12-07','COMPLETADO',3500.00,19),
(30,'Instalación de luces diurnas','2023-12-03','2023-12-07','COMPLETADO',3800.00,53),
(31,'Reparación de sistema de infoentretenimiento','2023-12-05','2023-12-08','PROCESO',3200.00,71),
(32,'Pintura de marco de ventanillas','2023-12-04','2023-12-07','PROCESO',2800.00,28),
(33,'Reemplazo de luz trasera','2023-12-06','2023-12-08','PROCESO',2200.00,47),
(34,'Reparación de sistema de alerta','2023-12-05','2023-12-08','PROCESO',3500.00,92),
(35,'Pintura de marco de capó','2023-12-07','2023-12-10','PROCESO',3200.00,5),
(36,'Instalación de sensores de lluvia','2023-12-06','2023-12-10','PROCESO',4200.00,76),
(37,'Reparación de sistema de comodidad','2023-12-08','2023-12-11','PROCESO',3800.00,31),
(38,'Pintura de marco de portón','2023-12-07','2023-12-10','PROCESO',3500.00,64),
(39,'Reemplazo de luz delantera','2023-12-09','2023-12-11','PROCESO',2800.00,97),
(40,'Reparación de sistema de monitoreo','2023-12-08','2023-12-11','PROCESO',4200.00,40),
(41,'Enderezado de estructura tras choque trasero','2023-11-03','2023-11-12','PROCESO',8250.00,1),
(42,'Cambio de guardafango delantero','2023-11-04','2023-11-09','PROCESO',4800.00,24),
(43,'Pintura completa de vehículo','2023-11-05','2023-11-20','PROCESO',18500.00,58),
(44,'Reparación de daños por granizo','2023-11-03','2023-11-15','PROCESO',9500.00,36),
(45,'Restauración de corrosión en paneles','2023-11-07','2023-11-14','PROCESO',6500.00,79),
(46,'Instalación de kit aerodinámico','2023-11-08','2023-11-18','PROCESO',10500.00,15),
(47,'Corrección de rayaduras profundas','2023-11-06','2023-11-10','PROCESO',3200.00,42),
(48,'Protección anti-corrosión de bajos','2023-11-08','2023-11-10','PROCESO',4000.00,93),
(49,'Reemplazo de parabrisas','2023-11-09','2023-11-11','PROCESO',3200.00,20),
(50,'Reparación de capó abollado','2023-11-06','2023-11-12','PROCESO',4800.00,67),
(51,'Reparación de portón trasero','2023-11-10','2023-11-17','PROCESO',6200.00,51),
(52,'Aplicación de vinilo protector (PPF)','2023-11-11','2023-11-25','PROCESO',22000.00,85),
(53,'Personalización de parrilla delantera','2023-11-09','2023-11-16','PROCESO',5200.00,32),
(54,'Restauración de vehículo clásico','2023-11-10','2023-12-20','PROCESO',38000.00,74),
(55,'Reparación de daños por inundación','2023-11-11','2023-11-25','PROCESO',14500.00,9),
(56,'Aplicación de cera cerámica','2023-11-12','2023-11-15','PROCESO',4500.00,61),
(57,'Reparación de techo solar','2023-11-09','2023-11-18','PROCESO',8500.00,26),
(58,'Instalación de spoiler trasero','2023-11-10','2023-11-17','PROCESO',4800.00,98),
(59,'Reparación de marco de parabrisas','2023-11-13','2023-11-20','PROCESO',6800.00,43),
(60,'Reparación de colisión frontal media','2023-11-14','2023-11-22','PROCESO',6800.00,70),
(61,'Enderezado de panel lateral izquierdo','2023-11-12','2023-11-17','PROCESO',4200.00,11),
(62,'Pintura de defensa delantera','2023-11-13','2023-11-16','PROCESO',3500.00,54),
(63,'Reparación de abolladura en puerta trasera','2023-11-15','2023-11-18','PROCESO',3800.00,87),
(64,'Pintura de techo completo','2023-11-16','2023-11-22','PROCESO',5800.00,22),
(65,'Restauración de llantas rayadas','2023-11-15','2023-11-17','PROCESO',3200.00,65),
(66,'Reparación de sistema de apertura de capó','2023-11-17','2023-11-20','PROCESO',2500.00,38),
(67,'Reemplazo de molduras laterales','2023-11-18','2023-11-22','PROCESO',4200.00,81),
(68,'Pintura de parachoques trasero','2023-11-19','2023-11-23','PROCESO',3800.00,4),
(69,'Instalación de barras de techo','2023-11-18','2023-11-22','PROCESO',5200.00,59),
(70,'Reparación de sistema de cierre centralizado','2023-11-20','2023-11-23','PROCESO',2800.00,96),
(71,'Reemplazo de juntas de ventanas','2023-11-21','2023-11-24','PROCESO',3200.00,27),
(72,'Reparación de sistema de elevavidrios','2023-11-20','2023-11-23','PROCESO',3500.00,72),
(73,'Pintura de manijas de puertas','2023-11-22','2023-11-24','PROCESO',1800.00,49),
(74,'Reparación de sistema de limpiaparabrisas','2023-11-23','2023-11-25','PROCESO',2200.00,83),
(75,'Reparación de sistema de descongelación','2023-11-23','2023-11-26','PROCESO',3200.00,10),
(76,'Pintura de marco de ventanas','2023-11-25','2023-11-28','PROCESO',3500.00,55),
(77,'Instalación de luces adicionales','2023-11-24','2023-11-28','PROCESO',4200.00,90),
(78,'Reparación de sistema de climatización','2023-11-26','2023-11-29','PROCESO',3800.00,33),
(79,'Pintura de estribos','2023-11-25','2023-11-28','PROCESO',3200.00,77),
(80,'Reemplazo de viseras','2023-11-27','2023-11-29','PROCESO',1800.00,46),
(81,'Reparación de sistema de iluminación','2023-11-26','2023-11-29','PROCESO',2800.00,21),
(82,'Pintura de parrilla delantera','2023-11-28','2023-12-01','PROCESO',3500.00,63),
(83,'Instalación de sensores de estacionamiento','2023-11-27','2023-11-30','PROCESO',4800.00,88),
(84,'Pintura de marco de ventanilla trasera','2023-12-10','2023-12-13','PROCESO',3200.00,2),
(85,'Instalación de sensores de presión','2023-12-09','2023-12-13','PROCESO',3800.00,69),
(86,'Reparación de sistema de conectividad','2023-12-11','2023-12-14','PROCESO',3500.00,94),
(87,'Pintura de marco de alerón','2023-12-10','2023-12-13','PROCESO',2800.00,35),
(88,'Reemplazo de luz de freno','2023-12-12','2023-12-14','PROCESO',2200.00,57),
(89,'Reparación de sistema de diagnóstico','2023-12-11','2023-12-14','PROCESO',4200.00,80),
(90,'Pintura de marco de spoiler','2023-12-13','2023-12-16','PROCESO',3200.00,13),
(91,'Instalación de sistema de reconocimiento','2023-12-12','2023-12-16','PROCESO',4800.00,48),
(92,'Reparación de sistema de telemetría','2023-12-14','2023-12-17','PROCESO',4200.00,75),
(93,'Pintura de marco de deflector','2023-12-13','2023-12-16','PROCESO',2800.00,30),
(94,'Reemplazo de luz de marcha','2023-12-15','2023-12-17','PROCESO',2200.00,52),
(95,'Reparación de sistema de registro','2023-12-14','2023-12-17','PROCESO',3800.00,86),
(96,'Pintura de marco de estribo','2023-12-16','2023-12-19','PROCESO',3200.00,18),
(97,'Instalación de sistema de monitoreo de presión','2023-12-15','2023-12-19','PROCESO',4200.00,44),
(98,'Reparación de sistema de asistencia de estacionamiento','2023-12-17','2023-12-20','PROCESO',4800.00,6),
(99,'Pintura de marco de guardafango','2023-12-16','2023-12-19','PROCESO',3500.00,39),
(100,'Reemplazo de luz de placa','2023-12-18','2023-12-20','PROCESO',1800.00,100),
(101,'Servicio general','2023-12-15','2023-12-17','PROCESO',2500.00,101),
(102,'Servicio general','2023-12-16','2023-12-18','PROCESO',2600.00,102),
(103,'Servicio general','2023-12-17','2023-12-19','PROCESO',2400.00,103),
(104,'Servicio general','2023-12-18','2023-12-20','PROCESO',2550.00,104),
(105,'Servicio general','2023-12-19','2023-12-21','PROCESO',2700.00,105),
(106,'Servicio general','2023-12-20','2023-12-22','PROCESO',2650.00,106),
(107,'Servicio general','2023-12-21','2023-12-23','PROCESO',2500.00,107),
(108,'Servicio general','2023-12-22','2023-12-24','PROCESO',2600.00,108),
(109,'Servicio general','2023-12-23','2023-12-25','PROCESO',2400.00,109),
(110,'Servicio general','2023-12-24','2023-12-26','PROCESO',2550.00,110),
(111,'Servicio general','2023-12-15','2023-12-16','PROCESO',2500.00,111),
(112,'Servicio general','2023-12-15','2023-12-17','PROCESO',2600.00,112),
(113,'Servicio general','2023-12-15','2023-12-18','PROCESO',2400.00,113),
(114,'Servicio general','2023-12-15','2023-12-19','PROCESO',2550.00,114),
(115,'Servicio general','2023-12-15','2023-12-20','PROCESO',2700.00,115),
(116,'Servicio general','2023-12-16','2023-12-18','PROCESO',2650.00,116),
(117,'Servicio general','2023-12-17','2023-12-19','PROCESO',2500.00,117),
(118,'Servicio general','2023-12-18','2023-12-20','PROCESO',2600.00,118),
(119,'Servicio general','2023-12-19','2023-12-21','PROCESO',2400.00,119),
(120,'Servicio general','2023-12-20','2023-12-22','PROCESO',2550.00,120);
/*!40000 ALTER TABLE `ord_tra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `id_suc` char(4) NOT NULL,
  `colonia` varchar(60) NOT NULL,
  `calle` varchar(120) NOT NULL,
  `num_ext` varchar(7) NOT NULL,
  `num_tel` char(10) NOT NULL,
  PRIMARY KEY (`id_suc`),
  UNIQUE KEY `num_tel` (`num_tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES
('ALTZ','Altozano','Lobo de Mar','120','5537308927'),
('CMLN','Camelinas','Capibara','777','5585678927'),
('CTRO','Centro','Tucan','297','5592577537'),
('SALQ','Salida Quiroga','Oso Pardo','37','5585612537');
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `id_veh` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `anio` year(4) NOT NULL,
  `placas` varchar(7) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_suc` char(4) NOT NULL,
  PRIMARY KEY (`id_veh`),
  UNIQUE KEY `placas` (`placas`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_suc` (`id_suc`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `vehiculo_ibfk_2` FOREIGN KEY (`id_suc`) REFERENCES `sucursal` (`id_suc`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES
(1,'Toyota','Corolla',2018,'PLT0001',1,'ALTZ'),
(2,'Nissan','Versa',2020,'PLT0002',2,'CMLN'),
(3,'Volkswagen','Jetta',2017,'PLT0003',3,'CTRO'),
(4,'Chevrolet','Aveo',2015,'PLT0004',4,'SALQ'),
(5,'Ford','Fiesta',2016,'PLT0005',5,'ALTZ'),
(6,'Honda','Civic',2019,'PLT0006',6,'CMLN'),
(7,'Mazda','3',2018,'PLT0007',7,'CTRO'),
(8,'Hyundai','Elantra',2021,'PLT0008',8,'SALQ'),
(9,'Kia','Rio',2017,'PLT0009',9,'ALTZ'),
(10,'Seat','Ibiza',2019,'PLT0010',10,'CMLN'),
(11,'Renault','Duster',2020,'PLT0011',11,'CTRO'),
(12,'BMW','X1',2021,'PLT0012',12,'SALQ'),
(13,'Audi','A3',2018,'PLT0013',13,'ALTZ'),
(14,'Mercedes-Benz','C200',2017,'PLT0014',14,'CMLN'),
(15,'Jeep','Compass',2022,'PLT0015',15,'CTRO'),
(16,'Chevrolet','Spark',2016,'PLT0016',16,'SALQ'),
(17,'Volkswagen','Vento',2019,'PLT0017',17,'ALTZ'),
(18,'Toyota','Yaris',2021,'PLT0018',18,'CMLN'),
(19,'Nissan','Sentra',2016,'PLT0019',19,'CTRO'),
(20,'Ford','Focus',2014,'PLT0020',20,'SALQ'),
(21,'Chevrolet','Cruze',2015,'PLT0021',21,'ALTZ'),
(22,'Honda','Accord',2017,'PLT0022',22,'CMLN'),
(23,'Mazda','CX-5',2020,'PLT0023',23,'CTRO'),
(24,'Hyundai','Tucson',2019,'PLT0024',24,'SALQ'),
(25,'Kia','Sportage',2021,'PLT0025',25,'ALTZ'),
(26,'Seat','León',2018,'PLT0026',26,'CMLN'),
(27,'Renault','Kwid',2022,'PLT0027',27,'CTRO'),
(28,'BMW','320i',2016,'PLT0028',28,'SALQ'),
(29,'Audi','Q3',2021,'PLT0029',29,'ALTZ'),
(30,'Mercedes-Benz','GLA',2020,'PLT0030',30,'CMLN'),
(31,'Jeep','Renegade',2019,'PLT0031',31,'CTRO'),
(32,'Chevrolet','Onix',2021,'PLT0032',32,'SALQ'),
(33,'Volkswagen','Taos',2022,'PLT0033',33,'ALTZ'),
(34,'Toyota','Hilux',2018,'PLT0034',34,'CMLN'),
(35,'Nissan','NP300',2019,'PLT0035',35,'CTRO'),
(36,'Ford','Ranger',2020,'PLT0036',36,'SALQ'),
(37,'Honda','HR-V',2021,'PLT0037',37,'ALTZ'),
(38,'Mazda','CX-3',2017,'PLT0038',38,'CMLN'),
(39,'Hyundai','Accent',2016,'PLT0039',39,'CTRO'),
(40,'Kia','Forte',2019,'PLT0040',40,'SALQ'),
(41,'Seat','Arona',2020,'PLT0041',41,'ALTZ'),
(42,'Renault','Oroch',2021,'PLT0042',42,'CMLN'),
(43,'BMW','X3',2019,'PLT0043',43,'CTRO'),
(44,'Audi','A4',2020,'PLT0044',44,'SALQ'),
(45,'Mercedes-Benz','CLA',2018,'PLT0045',45,'ALTZ'),
(46,'Jeep','Cherokee',2017,'PLT0046',46,'CMLN'),
(47,'Chevrolet','Tracker',2020,'PLT0047',47,'CTRO'),
(48,'Volkswagen','Polo',2015,'PLT0048',48,'SALQ'),
(49,'Toyota','Prius',2022,'PLT0049',49,'ALTZ'),
(50,'Nissan','Kicks',2021,'PLT0050',50,'CMLN'),
(51,'Ford','EcoSport',2019,'PLT0051',51,'CTRO'),
(52,'Honda','City',2015,'PLT0052',52,'SALQ'),
(53,'Mazda','2',2016,'PLT0053',53,'ALTZ'),
(54,'Hyundai','Creta',2020,'PLT0054',54,'CMLN'),
(55,'Kia','Picanto',2018,'PLT0055',55,'CTRO'),
(56,'Seat','Toledo',2017,'PLT0056',56,'SALQ'),
(57,'Renault','Logan',2019,'PLT0057',57,'ALTZ'),
(58,'BMW','X5',2022,'PLT0058',58,'CMLN'),
(59,'Audi','Q5',2017,'PLT0059',59,'CTRO'),
(60,'Mercedes-Benz','GLB',2021,'PLT0060',60,'SALQ'),
(61,'Jeep','Wrangler',2020,'PLT0061',61,'ALTZ'),
(62,'Chevrolet','Suburban',2018,'PLT0062',62,'CMLN'),
(63,'Volkswagen','Tiguan',2019,'PLT0063',63,'CTRO'),
(64,'Toyota','Rav4',2021,'PLT0064',64,'SALQ'),
(65,'Nissan','X-Trail',2020,'PLT0065',65,'ALTZ'),
(66,'Ford','Escape',2018,'PLT0066',66,'CMLN'),
(67,'Honda','Pilot',2017,'PLT0067',2,'CTRO'),
(68,'Mazda','6',2016,'PLT0068',5,'SALQ'),
(69,'Hyundai','Santa Fe',2022,'PLT0069',8,'ALTZ'),
(70,'Kia','Seltos',2021,'PLT0070',11,'CMLN'),
(71,'Seat','Ateca',2020,'PLT0071',14,'CTRO'),
(72,'Renault','Stepway',2018,'PLT0072',17,'SALQ'),
(73,'BMW','i3',2019,'PLT0073',20,'ALTZ'),
(74,'Audi','e-tron',2021,'PLT0074',23,'CMLN'),
(75,'Mercedes-Benz','EQB',2022,'PLT0075',26,'CTRO'),
(76,'Jeep','Gladiator',2020,'PLT0076',29,'SALQ'),
(77,'Chevrolet','Tahoe',2021,'PLT0077',32,'ALTZ'),
(78,'Volkswagen','T-Cross',2022,'PLT0078',35,'CMLN'),
(79,'Toyota','Corolla Cross',2021,'PLT0079',38,'CTRO'),
(80,'Hyundai','Palisade',2021,'PLT0080',41,'SALQ'),
(81,'Kia','Stinger',2020,'PLT0081',44,'ALTZ'),
(82,'Seat','Tarraco',2022,'PLT0082',47,'CMLN'),
(83,'Renault','Captur',2019,'PLT0083',50,'CTRO'),
(84,'BMW','Z4',2018,'PLT0084',53,'SALQ'),
(85,'Audi','A6',2021,'PLT0085',56,'ALTZ'),
(86,'Mercedes-Benz','E300',2019,'PLT0086',59,'CMLN'),
(87,'Jeep','Grand Cherokee',2022,'PLT0087',62,'CTRO'),
(88,'Chevrolet','Blazer',2020,'PLT0088',65,'SALQ'),
(89,'Volkswagen','Passat',2017,'PLT0089',1,'ALTZ'),
(90,'Toyota','Camry',2016,'PLT0090',4,'CMLN'),
(91,'Nissan','Altima',2018,'PLT0091',7,'CTRO'),
(92,'Ford','Fusion',2019,'PLT0092',10,'SALQ'),
(93,'Honda','Odyssey',2020,'PLT0093',13,'ALTZ'),
(94,'Mazda','MX-5',2022,'PLT0094',16,'CMLN'),
(95,'Hyundai','Kona',2017,'PLT0095',19,'CTRO'),
(96,'Kia','Niro',2016,'PLT0096',22,'SALQ'),
(97,'Seat','Alhambra',2021,'PLT0097',25,'ALTZ'),
(98,'Renault','Scenic',2019,'PLT0098',28,'CMLN'),
(99,'BMW','X6',2022,'PLT0099',31,'CTRO'),
(100,'Audi','Q7',2020,'PLT0100',34,'SALQ'),
(101,'Nissan','Versa',2020,'ABC1001',1,'CTRO'),
(102,'Toyota','Corolla',2019,'ABC1002',2,'CTRO'),
(103,'Honda','Civic',2018,'ABC1003',3,'ALTZ'),
(104,'Mazda','3',2021,'ABC1004',4,'ALTZ'),
(105,'Ford','Fiesta',2017,'ABC1005',5,'SALQ'),
(106,'Chevrolet','Aveo',2016,'ABC1006',6,'SALQ'),
(107,'Volkswagen','Jetta',2022,'ABC1007',7,'CMLN'),
(108,'Kia','Rio',2020,'ABC1008',8,'CMLN'),
(109,'Hyundai','Accent',2019,'ABC1009',1,'CTRO'),
(110,'Renault','Logan',2018,'ABC1010',2,'CTRO'),
(111,'Seat','Ibiza',2021,'ABC1011',3,'ALTZ'),
(112,'Peugeot','208',2017,'ABC1012',4,'ALTZ'),
(113,'Suzuki','Swift',2016,'ABC1013',5,'SALQ'),
(114,'Fiat','Argo',2022,'ABC1014',6,'SALQ'),
(115,'Jeep','Renegade',2020,'ABC1015',7,'CMLN'),
(116,'Chevrolet','Onix',2019,'ABC1016',8,'CMLN'),
(117,'Nissan','Sentra',2018,'ABC1017',1,'CTRO'),
(118,'Toyota','Yaris',2021,'ABC1018',2,'CTRO'),
(119,'Honda','Fit',2017,'ABC1019',3,'ALTZ'),
(120,'Mazda','CX-3',2016,'ABC1020',4,'ALTZ');
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 19:40:00
