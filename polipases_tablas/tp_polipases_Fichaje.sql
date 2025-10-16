-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: tp_polipases
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

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
-- Table structure for table `Fichaje`
--

DROP TABLE IF EXISTS `Fichaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fichaje` (
  `id_fichaje` int NOT NULL AUTO_INCREMENT,
  `jugador_idjugador` int DEFAULT NULL,
  `equipo_idequipo_viejo` int DEFAULT NULL,
  `equipo_idequipo_nuevo` int DEFAULT NULL,
  `num_camiseta` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `duracion_contrato` date DEFAULT NULL,
  PRIMARY KEY (`id_fichaje`),
  KEY `fk_Fichaje_Jugador1` (`jugador_idjugador`),
  KEY `fk_Fichaje_Equipo1` (`equipo_idequipo_viejo`),
  KEY `fk_Fichaje_Equipo2` (`equipo_idequipo_nuevo`),
  CONSTRAINT `fk_Fichaje_Equipo1` FOREIGN KEY (`equipo_idequipo_viejo`) REFERENCES `Equipo` (`id_equipo`),
  CONSTRAINT `fk_Fichaje_Equipo2` FOREIGN KEY (`equipo_idequipo_nuevo`) REFERENCES `Equipo` (`id_equipo`),
  CONSTRAINT `fk_Fichaje_Jugador1` FOREIGN KEY (`jugador_idjugador`) REFERENCES `Jugador` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fichaje`
--

LOCK TABLES `Fichaje` WRITE;
/*!40000 ALTER TABLE `Fichaje` DISABLE KEYS */;
INSERT INTO `Fichaje` VALUES (1,1,1,2,22,120000000,'2025-07-20 15:30:00','2030-06-30'),(2,2,2,1,9,160000000,'2025-07-25 12:00:00','2029-06-30'),(3,3,3,2,17,95000000,'2025-08-01 10:15:00','2028-06-30');
/*!40000 ALTER TABLE `Fichaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16  9:47:37
