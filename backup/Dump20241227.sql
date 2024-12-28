-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: riverplate
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alineacion`
--

DROP TABLE IF EXISTS `alineacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alineacion` (
  `id_alineacion` int NOT NULL AUTO_INCREMENT,
  `detalle_alineacion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_alineacion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alineacion`
--

LOCK TABLES `alineacion` WRITE;
/*!40000 ALTER TABLE `alineacion` DISABLE KEYS */;
INSERT INTO `alineacion` VALUES (1,'4-1-2-1-2'),(2,'4-3-1-2'),(3,'4-2-3-1'),(4,'5-3-2'),(5,'4-3-3'),(6,'3-4-1-2'),(7,'4-1-4-1'),(8,'4-1-3-2'),(9,'4-2-2-2'),(10,'4-4-2');
/*!40000 ALTER TABLE `alineacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbitro`
--

DROP TABLE IF EXISTS `arbitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbitro` (
  `id_arbitro` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `pais_nacimiento` varchar(200) DEFAULT 'Argentina',
  PRIMARY KEY (`id_arbitro`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitro`
--

LOCK TABLES `arbitro` WRITE;
/*!40000 ALTER TABLE `arbitro` DISABLE KEYS */;
INSERT INTO `arbitro` VALUES (1,'Nazareno José','Arasa','Argentina'),(2,'Leandro Ezequiel','Rey Hilfer','Argentina'),(3,'Maximiliano Nicolás','Ramírez','Argentina'),(4,'Sebastián Alejandro','Zunino','Argentina'),(5,'Andrés','Merlos','Argentina'),(6,'Darío Humberto','Herrera','Argentina'),(7,'Pablo Gastón','Echavarría','Argentina'),(8,'Fernando David','Espinoza','Argentina'),(9,'Hernán','Mastrángelo','Argentina'),(10,'Facundo Raúl','Tello Figueroa','Argentina'),(11,'Yael Cristian','Falcón Pérez','Argentina'),(12,'Fernando','Echenique','Argentina'),(13,'Nicolás','Lamolina','Argentina'),(14,'Carlos Andrés','Gariano','Argentina'),(15,'Jorge Ignacio','Baliño','Argentina'),(16,'Silvio Aníbal','Trucco','Argentina'),(17,'Luis','Lobo Medina','Argentina'),(18,'Pablo Germán','Dóvalo','Argentina'),(19,'Ariel Maximiliano','Penel','Argentina'),(20,'Fernando Andrés','Rapallini','Argentina'),(21,'Sebastián Nicolás','Martínez Beligoy','Argentina'),(22,'Juan','Pafundi','Argentina'),(23,'Bryan Gustavo','Ferreyra','Argentina'),(24,'Pablo','Giménez','Argentina'),(25,'Franco Matías','Acita Moldes','Argentina'),(26,'Edgardo Daniel','Zamora','Argentina'),(27,'Wilmar Alexander','Roldán Pérez','Colombia'),(28,'Jesús Noel','Valenzuela Sáez','Venezuela'),(29,'Andrés Matías','Matonte Cabrera','Uruguay'),(30,'Raphael','Claus','Brasil'),(31,'Gustavo Adrián','Tejera Capó','Uruguay'),(32,'Andrés José','Rojas Noguera','Colombia');
/*!40000 ALTER TABLE `arbitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `id_club` int NOT NULL AUTO_INCREMENT,
  `id_estadio` int DEFAULT NULL,
  `nombre_club` varchar(200) DEFAULT NULL,
  `pais` varchar(200) DEFAULT 'Argentina',
  `socios` int DEFAULT NULL,
  PRIMARY KEY (`id_club`),
  KEY `fk_constraint_id_estadio_club` (`id_estadio`),
  CONSTRAINT `fk_constraint_id_estadio_club` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,1,'Club Atlético River Plate','Argentina',351000),(2,2,'Club Atlético Boca Juniors','Argentina',315879),(3,3,'Club Atlético Talleres','Argentina',71400),(4,4,'Racing Club de Avellaneda','Argentina',71104),(5,5,'Club Atlético Vélez Sarsfield','Argentina',56000),(6,6,'Club Atlético Huracán','Argentina',31000),(7,7,'Club Atlético San Lorenzo de Almagro','Argentina',56911),(8,8,'Club Atlético Lanús','Argentina',34484),(9,9,'Club Atlético Independiente de Avellaneda','Argentina',140000),(10,10,'Club Atlético Newells Old Boys','Argentina',70257),(11,11,'Club Atlético Rosario Central','Argentina',90512),(12,12,'Club Deportivo Godoy Cruz Antonio Tomba','Argentina',9400),(13,13,'Club Atlético Belgrano','Argentina',60000),(14,14,'Club Atlético Tucumán','Argentina',22648),(15,15,'Club Atlético Banfield','Argentina',13276),(16,16,'Club Estudiantes de La Plata','Argentina',51500),(17,17,'Club Atlético Platense','Argentina',7162),(18,18,'Club Atlético Unión','Argentina',15725),(19,19,'Club Atlético Central Córdoba','Argentina',3057),(20,20,'Club de Gimnasia y Esgrima La Plata','Argentina',27444),(21,21,'Instituto Atlético Central Córdoba','Argentina',33000),(22,22,'Club Atlético Tigre','Argentina',5000),(23,23,'Club Sportivo Independiente Rivadavia','Argentina',15000),(24,24,'Asociación Atlética Argentinos Juniors','Argentina',18210),(25,25,'Club Atlético Sarmiento','Argentina',5403),(26,26,'Club Social y Deportivo Defensa y Justicia','Argentina',7400),(27,27,'Club Atlético Barracas Central','Argentina',2326),(28,28,'Deportivo Riestra Asociación de Fomento Barrio Colón','Argentina',600),(29,NULL,'Club de Fútbol Monterrey Rayados A.C.','México',NULL),(30,NULL,'Club de Fútbol Pachuca','México',NULL),(31,NULL,'Club Atlético Excursionistas','Argentina',NULL),(32,32,'Deportivo Táchira Fútbol Club','Venezuela',NULL),(33,34,'Club Nacional de Football','Uruguay',85000),(34,NULL,'Club Libertad','Paraguay',NULL),(35,NULL,'Club Atlético Temperley','Argentina',8700),(36,NULL,'Millonarios Fútbol Club','Colombia',4000),(37,NULL,'Club Olimpia','Paraguay',11000),(38,35,'Corporación Club Social y Deportivo Colo-Colo','Chile',58500),(39,36,'Clube Atlético Mineiro','Brasil',85000),(40,NULL,'Al-Ittihad Football Club','Arabia Saudita',5000),(41,NULL,'Club The Strongest','Bolivia',8000),(42,NULL,'Club Almagro','Argentina',1500),(43,NULL,'Corporación Deportiva Club Atlético Nacional','Colombia',16000),(44,NULL,'Cádiz Club de Fútbol S.A.D','España',15218),(45,NULL,'Al-Ahli Saudi Football Club','Arabia Saudita',NULL),(46,NULL,'Sevilla Fútbol Club S.A.D.','España',39955),(47,NULL,'Real Betis Balompié','España',73439),(48,NULL,'Club Internacional de Fútbol Miami','Estados Unidos',NULL),(49,NULL,'Club de Fútbol Cruz Azul','México',472),(50,NULL,'Internacional de Porto Alegre','Brasil',140000),(51,NULL,'Montevideo Wanderers Fútbol Club','Uruguay',NULL),(52,31,'Club Atlético Colón','Argentina',25130),(53,NULL,'Manchester City Football Club','Inglaterra',NULL),(54,NULL,'Al-Nassr Football Club','Arabia Saudita',NULL),(55,NULL,'West Ham United Football Club','Inglaterra',NULL),(56,NULL,'Football Club Internazionale Milano','Italia',208631),(57,NULL,'Junior de Barranquilla','Colombia',NULL);
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_verificar_socios_club_insert` BEFORE INSERT ON `club` FOR EACH ROW BEGIN
    IF NEW.socios < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad de socios del club no puede ser negativa.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_verificar_socios_club_update` BEFORE UPDATE ON `club` FOR EACH ROW BEGIN
    IF NEW.socios < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad de socios del club no puede ser negativa.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `competicion`
--

DROP TABLE IF EXISTS `competicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competicion` (
  `id_competicion` int NOT NULL AUTO_INCREMENT,
  `nombre_competicion` varchar(200) DEFAULT NULL,
  `alcance` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_competicion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competicion`
--

LOCK TABLES `competicion` WRITE;
/*!40000 ALTER TABLE `competicion` DISABLE KEYS */;
INSERT INTO `competicion` VALUES (1,'Copa Libertadores','Internacional'),(2,'Primera División','Nacional'),(3,'Copa de la Liga Profesional','Nacional'),(4,'Copa Argentina','Nacional'),(5,'Supercopa Argentina','Nacional'),(6,'Amistoso','Nacional/internacional');
/*!40000 ALTER TABLE `competicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_partido`
--

DROP TABLE IF EXISTS `ct_partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ct_partido` (
  `id_ct_partido` int NOT NULL AUTO_INCREMENT,
  `id_ct` int DEFAULT NULL,
  `id_partido` int DEFAULT NULL,
  `id_rol_en_partido` int DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `amarilla` tinyint(1) DEFAULT NULL,
  `doble_amarilla` tinyint(1) DEFAULT NULL,
  `roja` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_ct_partido`),
  KEY `fk_constraint_id_ct_ctp` (`id_ct`),
  KEY `fk_constraint_id_partido_ctp` (`id_partido`),
  KEY `fk_constraint_id_rol_ctp` (`id_rol_en_partido`),
  CONSTRAINT `fk_constraint_id_ct_ctp` FOREIGN KEY (`id_ct`) REFERENCES `cuerpo_tecnico` (`id_ct`),
  CONSTRAINT `fk_constraint_id_partido_ctp` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`),
  CONSTRAINT `fk_constraint_id_rol_ctp` FOREIGN KEY (`id_rol_en_partido`) REFERENCES `rol_ct` (`id_rol_ct`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_partido`
--

LOCK TABLES `ct_partido` WRITE;
/*!40000 ALTER TABLE `ct_partido` DISABLE KEYS */;
INSERT INTO `ct_partido` VALUES (1,1,17,1,NULL,0,0,0),(2,1,18,1,NULL,0,0,0),(3,1,19,1,'Buen 11 inicial y cambios acertados.',0,0,0),(4,1,20,1,'Mal planteada la defensa, era preferible poner a Zabala antes que a Gattoni.',0,0,0),(5,1,21,1,'Hizo lo que pudo teniendo muchos jugadores lesionados.',0,0,0),(6,1,22,1,'Los cambios no ayudaron a conservar la ventaja.',0,0,0),(7,1,23,1,'Buen 11 inicial y cambios acertados.',0,0,0),(8,1,24,1,NULL,0,0,0);
/*!40000 ALTER TABLE `ct_partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuerpo_tecnico`
--

DROP TABLE IF EXISTS `cuerpo_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpo_tecnico` (
  `id_ct` int NOT NULL AUTO_INCREMENT,
  `id_ultimo_club_ct` int DEFAULT NULL,
  `id_rol_ct` int DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `pais_nacimiento` varchar(200) DEFAULT 'Argentina',
  `inicio_contrato` date DEFAULT NULL,
  `fin_contrato` date DEFAULT NULL,
  PRIMARY KEY (`id_ct`),
  KEY `fk_constraint_id_club_ct` (`id_ultimo_club_ct`),
  KEY `fk_constraint_id_rol_ct_ct` (`id_rol_ct`),
  CONSTRAINT `fk_constraint_id_club_ct` FOREIGN KEY (`id_ultimo_club_ct`) REFERENCES `club` (`id_club`),
  CONSTRAINT `fk_constraint_id_rol_ct_ct` FOREIGN KEY (`id_rol_ct`) REFERENCES `rol_ct` (`id_rol_ct`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo_tecnico`
--

LOCK TABLES `cuerpo_tecnico` WRITE;
/*!40000 ALTER TABLE `cuerpo_tecnico` DISABLE KEYS */;
INSERT INTO `cuerpo_tecnico` VALUES (1,40,1,'Marcelo Daniel','Gallardo','1976-01-18','Argentina','2024-08-05','2025-12-31'),(2,40,2,'Matías','Biscay','1973-03-05','Argentina','2024-08-05','2025-12-31'),(3,40,2,'Hernán Leonel','Buján','1974-12-05','Argentina','2024-08-05','2025-12-31'),(4,41,3,'Javier Osvaldo','Sodero','1964-07-17','Argentina','2024-08-05','2025-12-31'),(5,40,4,'Pablo','Dolce','1973-06-16','Argentina','2024-08-05','2025-12-31'),(6,1,5,'Jorge Manuel','Gordillo','1962-01-27','Argentina','1999-07-01',NULL),(7,42,5,'Javier Oscar','Alonso','1971-05-19','Argentina','2014-01-01',NULL),(8,22,6,'Alejandro','Albornoz','1983-04-16','Argentina','2024-08-05','2025-12-31'),(9,40,6,'Nahuel','Hidalgo','1991-08-25','Argentina','2024-08-05','2025-12-31');
/*!40000 ALTER TABLE `cuerpo_tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `id_estadio` int NOT NULL AUTO_INCREMENT,
  `nombre_estadio` varchar(200) DEFAULT NULL,
  `pais` varchar(200) DEFAULT 'Argentina',
  `ubicacion` varchar(200) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`id_estadio`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'Mâs Monumental','Argentina','CABA',84567),(2,'Alberto J. Armando','Argentina','CABA',57200),(3,'Mario Alberto Kempes','Argentina','Córdoba',57000),(4,'Presidente Perón','Argentina','Avellaneda',51389),(5,'José Amalfitani','Argentina','CABA',49747),(6,'Tomás Adolfo Ducó','Argentina','CABA',48314),(7,'Pedro Bidegain','Argentina','CABA',47964),(8,'Ciudad de Lanús - Néstor Díaz Pérez','Argentina','Lanús',45319),(9,'Libertadores de América - Ricardo Enrique Bochini','Argentina','Avellaneda',42069),(10,'Marcelo Bielsa','Argentina','Rosario',42000),(11,'Dr. Lisandro de la Torre','Argentina','Rosario',41654),(12,'Malvinas Argentinas','Argentina','Mendoza',38800),(13,'Julio César Villagra','Argentina','Córdoba',38500),(14,'Monumental José Fierro','Argentina','San Miguel de Tucumán',35200),(15,'Florencio Sola','Argentina','Banfield',34901),(16,'Jorge Luis Hirschi','Argentina','La Plata',32530),(17,'Ciudad de Vicente López','Argentina','Vicente López',32000),(18,'15 de Abril','Argentina','Santa Fe',30000),(19,'Único Madre de Ciudades','Argentina','Santiago del Estero',29000),(20,'Juan Carmelo Zerillo','Argentina','La Plata',27717),(21,'Juan Domingo Perón - Monumental Alta Córdoba','Argentina','Córdoba',26535),(22,'José Dellagiovanna','Argentina','Victoria',26282),(23,'Bautista Gargantini','Argentina','Mendoza',24000),(24,'Diego Armando Maradona','Argentina','CABA',22063),(25,'Eva Perón','Argentina','Junín',22000),(26,'Norberto Tomaghello','Argentina','Florencio Varela',20000),(27,'Claudio Fabián Tapia','Argentina','CABA',4400),(28,'Guillermo Laza','Argentina','CABA',3000),(29,'Cotton Bowl','Estados Unidos','Dallas',92100),(30,'Toyota Stadium','Estados Unidos','Frisco',20500),(31,'Brigadier General Estanislao López','Argentina','Ciudad de Santa Fe',40000),(32,'Polideportivo de Pueblo Nuevo','Venezuela','San Cristóbal',38755),(33,'Defensores del Chaco','Paraguay','Asunción',42354),(34,'Gran Parque Central','Uruguay','Montevideo',37000),(35,'Monumental David Arellano','Chile','Santiago de Chile',47000),(36,'Arena MRV - Presidente Elías Kalil','Brasil','Belo Horizonte',46000);
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_verificar_capacidad_estadio_insert` BEFORE INSERT ON `estadio` FOR EACH ROW BEGIN
    IF NEW.capacidad < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La capacidad del estadio no puede ser negativa.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_verificar_capacidad_estadio_update` BEFORE UPDATE ON `estadio` FOR EACH ROW BEGIN
    IF NEW.capacidad < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La capacidad del estadio no puede ser negativa.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `id_ultimo_club_jugador` int DEFAULT NULL,
  `id_posicion` int DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `dorsal` int DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `pais_nacimiento` varchar(200) DEFAULT 'Argentina',
  `inicio_contrato` date DEFAULT NULL,
  `fin_contrato` date DEFAULT NULL,
  `ultima_renovacion` date DEFAULT NULL,
  `prestamo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `fk_constraint_id_club_jugador` (`id_ultimo_club_jugador`),
  KEY `fk_constraint_id_posicion_jugador` (`id_posicion`),
  CONSTRAINT `fk_constraint_id_club_jugador` FOREIGN KEY (`id_ultimo_club_jugador`) REFERENCES `club` (`id_club`),
  CONSTRAINT `fk_constraint_id_posicion_jugador` FOREIGN KEY (`id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,43,1,'Franco Daniel','Armani',1,'1986-10-16','Argentina','2018-01-03','2026-12-31','2024-04-17',0),(2,44,1,'Jeremías Conan','Ledesma',25,'1993-02-13','Argentina','2024-07-06','2028-12-31',NULL,0),(3,45,2,'Paulo César','Díaz Huincales',17,'1994-08-25','Chile','2019-08-01','2027-12-31','2024-07-10',0),(4,46,2,'Federico','Gattoni',6,'1999-02-16','Argentina','2024-07-03','2025-06-30',NULL,1),(5,47,2,'Germán Alejo','Pezzella',33,'1991-06-27','Argentina','2024-08-05','2027-12-31',NULL,0),(6,48,2,'Leandro Martín','González Pírez',14,'1992-02-26','Argentina','2024-01-01','2025-12-31',NULL,0),(7,49,2,'Ramiro José','Funes Mori',3,'1991-03-05','Argentina','2023-07-18','2026-12-31',NULL,0),(8,1,2,'Daniel Lucas','Zabala',22,'2003-01-17','Argentina','2024-01-01','2026-12-31','2024-06-13',0),(9,46,3,'Marcos Javier','Acuña',24,'1991-10-28','Argentina','2024-08-20','2027-12-31',NULL,0),(10,3,3,'Enzo Hernán','Díaz',13,'1995-12-07','Argentina','2023-01-21','2026-12-31','2024-01-06',0),(11,10,3,'Milton Óscar','Casco',20,'1988-04-11','Argentina','2015-09-10','2025-12-31','2022-09-13',0),(12,50,4,'Fabricio Tomás','Bustos Sein',21,'1996-04-28','Argentina','2024-08-09','2027-12-31',NULL,0),(13,26,4,'Ariel Agustín','Sant Anna Quintero',27,'1997-09-27','Uruguay','2024-02-03','2027-12-31',NULL,0),(14,3,5,'Rodrigo Román','Villagra',23,'2001-02-14','Argentina','2024-02-03','2027-12-31',NULL,0),(15,51,5,'Nicolás','Fonseca',4,'1998-10-19','Italia','2023-08-15','2027-12-31',NULL,0),(16,29,5,'Claudio Matías','Kranevitter',5,'1993-05-21','Argentina','2023-01-01','2025-12-31',NULL,0),(17,52,6,'Rodrigo Germán','Aliendro',29,'1991-02-16','Argentina','2022-06-27','2026-12-31','2023-10-27',0),(18,1,7,'Santiago','Simón',31,'2002-06-13','Argentina','2021-07-01','2026-12-31','2024-01-19',0),(19,53,8,'Claudio Jeremías','Echeverri',19,'2006-01-02','Argentina','2024-01-26','2024-12-31',NULL,1),(20,1,8,'Franco','Mastantuono',30,'2007-08-14','Argentina','2024-01-01','2026-12-31','2024-03-19',0),(21,54,8,'Gonzalo Nicolás','Martínez',18,'1993-06-13','Argentina','2023-08-24','2030-12-31','2024-12-27',0),(22,55,8,'Manuel','Lanzini',10,'1993-02-15','Argentina','2023-08-02','2024-12-31',NULL,0),(23,39,8,'Ignacio Martín','Fernández',26,'1990-01-12','Argentina','2023-01-01','2025-12-31',NULL,0),(24,38,9,'Pablo César','Solari Ferreyra',36,'2001-03-22','Argentina','2022-07-18','2027-12-31','2024-04-16',0),(25,29,9,'Maximiliano Eduardo','Meza',8,'1992-12-15','Argentina','2024-08-15','2026-12-31',NULL,0),(26,1,9,'Ian Martín','Subiabre',38,'2007-01-01','Argentina','2024-01-01','2026-12-31','2024-01-06',0),(27,56,10,'Facundo','Colidio',11,'2000-01-04','Argentina','2023-07-21','2025-12-31',NULL,0),(28,7,10,'Adam Fernando','Bareiro Gamarra',7,'1996-07-26','Paraguay','2024-07-11','2027-12-31',NULL,0),(29,57,10,'Miguel Ángel','Borja Hernández',9,'1993-01-26','Colombia','2022-07-12','2025-12-31',NULL,0),(30,1,10,'Agustín Fabián','Ruberto',32,'2006-01-14','Argentina','2024-01-01','2027-12-31','2024-01-06',0);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador_partido`
--

DROP TABLE IF EXISTS `jugador_partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador_partido` (
  `id_jugador_partido` int NOT NULL AUTO_INCREMENT,
  `id_jugador` int DEFAULT NULL,
  `id_partido` int DEFAULT NULL,
  `minutos_jugados` int DEFAULT NULL,
  `goles` int DEFAULT NULL,
  `asistencias` int DEFAULT NULL,
  `goles_recibidos` int DEFAULT NULL,
  `amarilla` tinyint(1) DEFAULT NULL,
  `doble_amarilla` tinyint(1) DEFAULT NULL,
  `roja` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_jugador_partido`),
  KEY `fk_constraint_id_jugador_jp` (`id_jugador`),
  KEY `fk_constraint_id_partido_jp` (`id_partido`),
  CONSTRAINT `fk_constraint_id_jugador_jp` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `fk_constraint_id_partido_jp` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador_partido`
--

LOCK TABLES `jugador_partido` WRITE;
/*!40000 ALTER TABLE `jugador_partido` DISABLE KEYS */;
INSERT INTO `jugador_partido` VALUES (1,1,17,103,0,0,1,0,0,0),(2,24,17,79,2,0,NULL,0,0,0),(3,29,17,24,1,0,NULL,1,0,0),(4,19,17,79,0,1,NULL,0,0,0),(5,21,17,24,0,1,NULL,0,0,0),(6,18,17,96,0,1,NULL,0,0,0),(7,1,18,106,0,0,2,0,0,0),(8,24,18,79,1,0,NULL,1,0,0),(9,3,18,106,1,0,NULL,0,0,0),(10,27,18,106,1,0,NULL,0,0,0),(11,19,18,79,0,1,NULL,0,0,0),(12,21,18,27,0,1,NULL,0,0,0),(13,1,19,96,0,0,0,0,0,0),(14,20,19,28,0,1,NULL,0,0,0),(15,14,19,96,0,1,NULL,0,0,0),(16,3,19,96,1,0,NULL,0,0,0),(17,29,19,28,1,0,NULL,0,0,0),(18,25,19,83,1,0,NULL,1,0,0),(19,1,20,106,0,0,2,0,0,0),(20,27,20,66,1,0,NULL,1,0,0),(21,6,20,106,0,0,NULL,0,0,1),(22,1,21,102,0,0,1,1,0,0),(23,27,21,76,1,1,NULL,0,0,0),(24,25,21,68,1,1,NULL,0,0,0),(25,1,22,101,0,0,1,0,0,0),(26,25,22,101,1,0,NULL,0,0,0),(27,1,23,94,0,0,0,0,0,0),(28,19,23,64,0,1,NULL,0,0,0),(29,21,23,30,1,2,NULL,0,0,0),(30,29,23,29,1,0,NULL,0,0,0),(31,24,23,83,2,0,NULL,0,0,0),(32,1,24,100,0,0,1,0,0,0);
/*!40000 ALTER TABLE `jugador_partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesion`
--

DROP TABLE IF EXISTS `lesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesion` (
  `id_lesion` int NOT NULL AUTO_INCREMENT,
  `tipo_lesion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_lesion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesion`
--

LOCK TABLES `lesion` WRITE;
/*!40000 ALTER TABLE `lesion` DISABLE KEYS */;
INSERT INTO `lesion` VALUES (1,'Hernia inguinal'),(2,'Lesión muscular'),(3,'Distensión de muslo'),(4,'Esguince de tobillo'),(5,'Problemas musculares'),(6,'Tendinitis'),(7,'Desgarro en el isquiotibial');
/*!40000 ALTER TABLE `lesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesion_jugador`
--

DROP TABLE IF EXISTS `lesion_jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesion_jugador` (
  `id_lesion_jugador` int NOT NULL AUTO_INCREMENT,
  `id_jugador` int DEFAULT NULL,
  `id_lesion` int DEFAULT NULL,
  `fecha_lesion` date DEFAULT NULL,
  `partidos_perdidos` int DEFAULT NULL,
  PRIMARY KEY (`id_lesion_jugador`),
  KEY `fk_constraint_id_jugador_lj` (`id_jugador`),
  KEY `fk_constraint_id_lesion_lj` (`id_lesion`),
  CONSTRAINT `fk_constraint_id_jugador_lj` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `fk_constraint_id_lesion_lj` FOREIGN KEY (`id_lesion`) REFERENCES `lesion` (`id_lesion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesion_jugador`
--

LOCK TABLES `lesion_jugador` WRITE;
/*!40000 ALTER TABLE `lesion_jugador` DISABLE KEYS */;
INSERT INTO `lesion_jugador` VALUES (1,9,3,'2024-10-07',2),(2,9,6,'2024-10-22',2),(3,9,7,'2024-11-05',5),(4,10,1,'2024-11-08',6),(5,19,2,'2024-11-23',4),(6,13,3,'2024-11-27',4),(7,28,4,'2024-12-06',2),(8,3,5,'2024-12-14',1);
/*!40000 ALTER TABLE `lesion_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `id_partido` int NOT NULL AUTO_INCREMENT,
  `id_competicion` int DEFAULT NULL,
  `id_estadio` int DEFAULT NULL,
  `id_club` int DEFAULT NULL,
  `id_arbitro` int DEFAULT NULL,
  `id_alineacion` int DEFAULT NULL,
  `id_resultado` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `goles_realizados` int DEFAULT NULL,
  `goles_recibidos` int DEFAULT NULL,
  PRIMARY KEY (`id_partido`),
  KEY `fk_constraint_id_competicion_partido` (`id_competicion`),
  KEY `fk_constraint_id_estadio_partido` (`id_estadio`),
  KEY `fk_constraint_id_club_partido` (`id_club`),
  KEY `fk_constraint_id_arbitro_partido` (`id_arbitro`),
  KEY `fk_constraint_id_alineacion_partido` (`id_alineacion`),
  KEY `fk_constraint_id_resultado_partido` (`id_resultado`),
  CONSTRAINT `fk_constraint_id_alineacion_partido` FOREIGN KEY (`id_alineacion`) REFERENCES `alineacion` (`id_alineacion`),
  CONSTRAINT `fk_constraint_id_arbitro_partido` FOREIGN KEY (`id_arbitro`) REFERENCES `arbitro` (`id_arbitro`),
  CONSTRAINT `fk_constraint_id_club_partido` FOREIGN KEY (`id_club`) REFERENCES `club` (`id_club`),
  CONSTRAINT `fk_constraint_id_competicion_partido` FOREIGN KEY (`id_competicion`) REFERENCES `competicion` (`id_competicion`),
  CONSTRAINT `fk_constraint_id_estadio_partido` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`),
  CONSTRAINT `fk_constraint_id_resultado_partido` FOREIGN KEY (`id_resultado`) REFERENCES `resultado` (`id_resultado`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,2,1,6,12,3,2,'2024-08-10',1,1),(2,1,3,3,32,5,1,'2024-08-14',1,0),(3,2,20,20,9,7,2,'2024-08-17',1,1),(4,1,1,3,31,5,1,'2024-08-21',2,1),(5,2,1,10,2,3,2,'2024-08-25',0,0),(6,2,9,9,11,3,2,'2024-09-01',0,0),(7,2,1,14,4,5,1,'2024-09-13',4,1),(8,1,35,38,30,5,2,'2024-09-17',1,1),(9,2,2,2,3,6,1,'2024-09-21',1,0),(10,1,1,38,29,5,1,'2024-09-24',1,0),(11,2,1,3,10,5,3,'2024-09-29',0,1),(12,2,17,17,18,3,2,'2024-10-06',0,0),(13,2,1,5,11,3,2,'2024-10-18',1,1),(14,1,36,39,28,4,3,'2024-10-22',0,3),(15,2,26,26,3,3,2,'2024-10-25',0,0),(16,1,1,39,27,3,2,'2024-10-29',0,0),(17,2,1,15,21,2,1,'2024-11-02',3,1),(18,2,21,21,5,2,1,'2024-11-06',3,2),(19,2,1,27,12,2,1,'2024-11-10',3,0),(20,2,12,23,1,2,3,'2024-11-21',1,2),(21,2,16,16,19,2,1,'2024-11-29',2,1),(22,2,1,7,14,2,2,'2024-12-04',1,1),(23,2,1,11,11,2,1,'2024-12-08',4,0),(24,2,4,4,4,1,3,'2024-12-14',0,1),(25,2,1,15,11,5,1,'2024-12-27',2,0);
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_verificar_goles_partido_insert` BEFORE INSERT ON `partido` FOR EACH ROW BEGIN
    IF NEW.goles_realizados < 0 OR NEW.goles_recibidos < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Los goles realizados o recibidos no pueden ser negativos.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_verificar_goles_partido_update` BEFORE UPDATE ON `partido` FOR EACH ROW BEGIN
    IF NEW.goles_realizados < 0 OR NEW.goles_recibidos < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Los goles realizados o recibidos no pueden ser negativos.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `id_posicion` int NOT NULL AUTO_INCREMENT,
  `detalle_posicion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'Arquero'),(2,'Defensa central'),(3,'Lateral izquierdo'),(4,'Lateral derecho'),(5,'Pivote'),(6,'Mediocentro'),(7,'Interior derecho'),(8,'Mediocentro ofensivo'),(9,'Extremo derecho'),(10,'Delantero centro');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado` (
  `id_resultado` int NOT NULL AUTO_INCREMENT,
  `detalle_resultado` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_resultado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (1,'Victoria'),(2,'Empate'),(3,'Derrota');
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_ct`
--

DROP TABLE IF EXISTS `rol_ct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol_ct` (
  `id_rol_ct` int NOT NULL AUTO_INCREMENT,
  `detalle_rol_ct` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_rol_ct`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_ct`
--

LOCK TABLES `rol_ct` WRITE;
/*!40000 ALTER TABLE `rol_ct` DISABLE KEYS */;
INSERT INTO `rol_ct` VALUES (1,'Entrenador'),(2,'Entrenador asistente'),(3,'Entrenador de arqueros'),(4,'Preparador físico'),(5,'Entrenador de juveniles'),(6,'Analista de video');
/*!40000 ALTER TABLE `rol_ct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_calcular_antiguedad`
--

DROP TABLE IF EXISTS `vw_calcular_antiguedad`;
/*!50001 DROP VIEW IF EXISTS `vw_calcular_antiguedad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_calcular_antiguedad` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `antiguedad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_calcular_edad`
--

DROP TABLE IF EXISTS `vw_calcular_edad`;
/*!50001 DROP VIEW IF EXISTS `vw_calcular_edad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_calcular_edad` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `edad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cantidad_jugadores_club`
--

DROP TABLE IF EXISTS `vw_cantidad_jugadores_club`;
/*!50001 DROP VIEW IF EXISTS `vw_cantidad_jugadores_club`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cantidad_jugadores_club` AS SELECT 
 1 AS `nombre_club`,
 1 AS `cantidad_jugadores`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_contratos_por_vencer`
--

DROP TABLE IF EXISTS `vw_contratos_por_vencer`;
/*!50001 DROP VIEW IF EXISTS `vw_contratos_por_vencer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_contratos_por_vencer` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `fin_contrato`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_jugador_partido_detalle`
--

DROP TABLE IF EXISTS `vw_jugador_partido_detalle`;
/*!50001 DROP VIEW IF EXISTS `vw_jugador_partido_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_jugador_partido_detalle` AS SELECT 
 1 AS `fecha`,
 1 AS `nombre_competicion`,
 1 AS `nombre_estadio`,
 1 AS `nombre_club`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `minutos_jugados`,
 1 AS `goles`,
 1 AS `asistencias`,
 1 AS `goles_recibidos`,
 1 AS `amarilla`,
 1 AS `doble_amarilla`,
 1 AS `roja`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_partido_detalle`
--

DROP TABLE IF EXISTS `vw_partido_detalle`;
/*!50001 DROP VIEW IF EXISTS `vw_partido_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_partido_detalle` AS SELECT 
 1 AS `nombre_competicion`,
 1 AS `nombre_estadio`,
 1 AS `nombre_club`,
 1 AS `apellido`,
 1 AS `detalle_alineacion`,
 1 AS `detalle_resultado`,
 1 AS `fecha`,
 1 AS `goles_realizados`,
 1 AS `goles_recibidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'riverplate'
--
/*!50003 DROP FUNCTION IF EXISTS `fx_amarillas_competicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_amarillas_competicion`(_id_jugador INT, _id_competicion INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_amarillas INT;
    SELECT COALESCE(SUM(amarilla), 0) INTO total_amarillas FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_amarillas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fx_asistencias_competicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_asistencias_competicion`(_id_jugador INT, _id_competicion INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_asistencias INT;
    SELECT COALESCE(SUM(asistencias), 0) INTO total_asistencias FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_asistencias;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fx_goles_competicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_goles_competicion`(_id_jugador INT, _id_competicion INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_goles INT;
    SELECT COALESCE(SUM(goles), 0) INTO total_goles FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_goles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fx_rojas_competicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_rojas_competicion`(_id_jugador INT, _id_competicion INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_rojas INT;
    SELECT COALESCE(SUM(roja), 0) INTO total_rojas FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_rojas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_contrato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_contrato`(
    IN sp_id_jugador INT,
    IN sp_fin_contrato DATE,
    IN sp_ultima_renovacion DATE
)
BEGIN
    UPDATE jugador
    SET fin_contrato = sp_fin_contrato, ultima_renovacion = sp_ultima_renovacion
    WHERE id_jugador = sp_id_jugador;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_partido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_partido`(
    IN sp_id_competicion INT,
    IN sp_id_estadio INT,
    IN sp_id_club INT,
    IN sp_id_arbitro INT,
    IN sp_id_alineacion INT,
    IN sp_id_resultado INT,
    IN sp_fecha DATE,
    IN sp_goles_realizados INT,
    IN sp_goles_recibidos INT
)
BEGIN
    INSERT INTO partido(id_competicion, id_estadio, id_club, id_arbitro, id_alineacion, id_resultado, fecha,
    goles_realizados, goles_recibidos) VALUES (sp_id_competicion, sp_id_estadio, sp_id_club, sp_id_arbitro,
    sp_id_alineacion, sp_id_resultado, sp_fecha, sp_goles_realizados, sp_goles_recibidos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_calcular_antiguedad`
--

/*!50001 DROP VIEW IF EXISTS `vw_calcular_antiguedad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_calcular_antiguedad` AS select `jugador`.`nombre` AS `nombre`,`jugador`.`apellido` AS `apellido`,floor(((to_days(curdate()) - to_days(`jugador`.`inicio_contrato`)) / 365.25)) AS `antiguedad` from `jugador` order by floor(((to_days(curdate()) - to_days(`jugador`.`inicio_contrato`)) / 365.25)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_calcular_edad`
--

/*!50001 DROP VIEW IF EXISTS `vw_calcular_edad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_calcular_edad` AS select `jugador`.`nombre` AS `nombre`,`jugador`.`apellido` AS `apellido`,floor(((to_days(curdate()) - to_days(`jugador`.`fecha_nacimiento`)) / 365.25)) AS `edad` from `jugador` order by floor(((to_days(curdate()) - to_days(`jugador`.`fecha_nacimiento`)) / 365.25)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cantidad_jugadores_club`
--

/*!50001 DROP VIEW IF EXISTS `vw_cantidad_jugadores_club`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cantidad_jugadores_club` AS select `club`.`nombre_club` AS `nombre_club`,count(`jugador`.`nombre`) AS `cantidad_jugadores` from (`jugador` left join `club` on((`jugador`.`id_ultimo_club_jugador` = `club`.`id_club`))) group by `jugador`.`id_ultimo_club_jugador` order by `cantidad_jugadores` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_contratos_por_vencer`
--

/*!50001 DROP VIEW IF EXISTS `vw_contratos_por_vencer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_contratos_por_vencer` AS select `jugador`.`nombre` AS `nombre`,`jugador`.`apellido` AS `apellido`,`jugador`.`fin_contrato` AS `fin_contrato` from `jugador` where (year(`jugador`.`fin_contrato`) = year(curdate())) order by `jugador`.`fin_contrato` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_jugador_partido_detalle`
--

/*!50001 DROP VIEW IF EXISTS `vw_jugador_partido_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_jugador_partido_detalle` AS select `partido`.`fecha` AS `fecha`,`competicion`.`nombre_competicion` AS `nombre_competicion`,`estadio`.`nombre_estadio` AS `nombre_estadio`,`club`.`nombre_club` AS `nombre_club`,`jugador`.`nombre` AS `nombre`,`jugador`.`apellido` AS `apellido`,`jugador_partido`.`minutos_jugados` AS `minutos_jugados`,`jugador_partido`.`goles` AS `goles`,`jugador_partido`.`asistencias` AS `asistencias`,`jugador_partido`.`goles_recibidos` AS `goles_recibidos`,`jugador_partido`.`amarilla` AS `amarilla`,`jugador_partido`.`doble_amarilla` AS `doble_amarilla`,`jugador_partido`.`roja` AS `roja` from (((((`jugador_partido` left join `partido` on((`jugador_partido`.`id_partido` = `partido`.`id_partido`))) left join `jugador` on((`jugador_partido`.`id_jugador` = `jugador`.`id_jugador`))) left join `competicion` on((`partido`.`id_competicion` = `competicion`.`id_competicion`))) left join `estadio` on((`partido`.`id_estadio` = `estadio`.`id_estadio`))) left join `club` on((`partido`.`id_club` = `club`.`id_club`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_partido_detalle`
--

/*!50001 DROP VIEW IF EXISTS `vw_partido_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_partido_detalle` AS select `competicion`.`nombre_competicion` AS `nombre_competicion`,`estadio`.`nombre_estadio` AS `nombre_estadio`,`club`.`nombre_club` AS `nombre_club`,`arbitro`.`apellido` AS `apellido`,`alineacion`.`detalle_alineacion` AS `detalle_alineacion`,`resultado`.`detalle_resultado` AS `detalle_resultado`,`partido`.`fecha` AS `fecha`,`partido`.`goles_realizados` AS `goles_realizados`,`partido`.`goles_recibidos` AS `goles_recibidos` from ((((((`partido` left join `competicion` on((`partido`.`id_competicion` = `competicion`.`id_competicion`))) left join `estadio` on((`partido`.`id_estadio` = `estadio`.`id_estadio`))) left join `club` on((`partido`.`id_club` = `club`.`id_club`))) left join `arbitro` on((`partido`.`id_arbitro` = `arbitro`.`id_arbitro`))) left join `alineacion` on((`partido`.`id_alineacion` = `alineacion`.`id_alineacion`))) left join `resultado` on((`partido`.`id_resultado` = `resultado`.`id_resultado`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-27 22:54:46
