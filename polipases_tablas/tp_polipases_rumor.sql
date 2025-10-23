-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: tp_polipases
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
-- Table structure for table `rumor`
--

DROP TABLE IF EXISTS `rumor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rumor` (
  `id_rumor` int NOT NULL AUTO_INCREMENT,
  `jugador_idjugador_rumor` int DEFAULT NULL,
  `equipo_idequipo_viejo_rumor` int DEFAULT NULL,
  `equipo_idequipo_nuevo_rumor` int DEFAULT NULL,
  `usuario_id_usuario` int DEFAULT NULL,
  `es_correcto` varchar(45) DEFAULT NULL,
  `valoracion` int DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_rumor`),
  KEY `fk_Rumor_Jugador1` (`jugador_idjugador_rumor`),
  KEY `fk_Rumor_Equipo1` (`equipo_idequipo_viejo_rumor`),
  KEY `fk_Rumor_Equipo2` (`equipo_idequipo_nuevo_rumor`),
  KEY `fk_Rumor_Usuario1` (`usuario_id_usuario`),
  CONSTRAINT `fk_Rumor_Equipo1` FOREIGN KEY (`equipo_idequipo_viejo_rumor`) REFERENCES `equipo` (`id_equipo`),
  CONSTRAINT `fk_Rumor_Equipo2` FOREIGN KEY (`equipo_idequipo_nuevo_rumor`) REFERENCES `equipo` (`id_equipo`),
  CONSTRAINT `fk_Rumor_Jugador1` FOREIGN KEY (`jugador_idjugador_rumor`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumor`
--

LOCK TABLES `rumor` WRITE;
/*!40000 ALTER TABLE `rumor` DISABLE KEYS */;
INSERT INTO `rumor` VALUES (14,1,10,1,1,'POR_DEFINIR',12,'2025-10-13'),(15,2,7,3,2,'POR_DEFINIR',10,'2025-10-11'),(16,3,4,6,3,'POR_DEFINIR',NULL,NULL),(17,4,3,2,4,'POR_DEFINIR',NULL,NULL),(18,5,6,4,5,'POR_DEFINIR',NULL,NULL),(19,6,9,7,6,'POR_DEFINIR',NULL,NULL),(20,7,5,8,7,'POR_DEFINIR',NULL,NULL),(21,8,1,2,8,'POR_DEFINIR',NULL,NULL),(22,9,2,3,9,'POR_DEFINIR',NULL,NULL),(23,10,1,4,10,'POR_DEFINIR',NULL,NULL),(24,14,24,25,24,'CORRECTO',NULL,NULL);
/*!40000 ALTER TABLE `rumor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 11:57:38
