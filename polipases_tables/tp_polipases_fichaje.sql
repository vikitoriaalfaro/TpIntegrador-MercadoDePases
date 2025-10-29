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
-- Table structure for table `fichaje`
--

DROP TABLE IF EXISTS `fichaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fichaje` (
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
  CONSTRAINT `fk_Fichaje_Equipo1` FOREIGN KEY (`equipo_idequipo_viejo`) REFERENCES `equipo` (`id_equipo`),
  CONSTRAINT `fk_Fichaje_Equipo2` FOREIGN KEY (`equipo_idequipo_nuevo`) REFERENCES `equipo` (`id_equipo`),
  CONSTRAINT `fk_Fichaje_Jugador1` FOREIGN KEY (`jugador_idjugador`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichaje`
--

LOCK TABLES `fichaje` WRITE;
/*!40000 ALTER TABLE `fichaje` DISABLE KEYS */;
INSERT INTO `fichaje` VALUES (34,1,2,1,10,75000000,'2025-07-01 12:00:00','2028-06-30'),(35,2,7,3,7,150000000,'2025-07-05 15:30:00','2029-06-30'),(36,3,4,6,9,120000000,'2025-07-10 10:00:00','2028-07-01'),(37,4,3,2,17,85000000,'2025-07-15 18:45:00','2027-06-30'),(38,5,6,4,4,60000000,'2025-07-20 11:20:00','2028-06-30'),(39,6,9,7,7,25000000,'2025-07-25 09:00:00','2026-06-30'),(40,7,5,8,11,90000000,'2025-07-28 13:00:00','2029-06-30'),(41,8,1,2,21,70000000,'2025-08-01 20:15:00','2028-07-01'),(42,9,2,3,8,95000000,'2025-08-05 14:45:00','2029-06-30'),(43,10,1,4,1,65000000,'2025-08-10 16:30:00','2027-06-30'),(44,14,24,25,13,5000000,'2025-10-23 00:00:00','2029-10-05');
/*!40000 ALTER TABLE `fichaje` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `despuesDeRealizarFichaje` AFTER INSERT ON `fichaje` FOR EACH ROW begin
update rumor set esCorrecto="CORRECTO" where jugador_idjugador_rumor=new.jugador_idjugador and equipo_idequipo_nuevo_rumor=new.equipo_idequipo_nuevo and equipo_idequipo_viejo_rumor=new.equipo_idequipo_viejo;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-29  9:52:42
