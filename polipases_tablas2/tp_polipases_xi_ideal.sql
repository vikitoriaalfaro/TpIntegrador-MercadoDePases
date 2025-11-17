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
-- Table structure for table `xi_ideal`
--

DROP TABLE IF EXISTS `xi_ideal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xi_ideal` (
  `id_xi_ideal` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_jugador1` int DEFAULT NULL,
  `id_jugador2` int DEFAULT NULL,
  `id_jugador3` int DEFAULT NULL,
  `id_jugador4` int DEFAULT NULL,
  `id_jugador5` int DEFAULT NULL,
  `id_jugador6` int DEFAULT NULL,
  `id_jugador7` int DEFAULT NULL,
  `id_jugador8` int DEFAULT NULL,
  `id_jugador9` int DEFAULT NULL,
  `id_jugador10` int DEFAULT NULL,
  `id_jugador11` int DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_xi_ideal`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_jugador1` (`id_jugador1`),
  KEY `id_jugador2` (`id_jugador2`),
  KEY `id_jugador3` (`id_jugador3`),
  KEY `id_jugador4` (`id_jugador4`),
  KEY `id_jugador5` (`id_jugador5`),
  KEY `id_jugador6` (`id_jugador6`),
  KEY `id_jugador7` (`id_jugador7`),
  KEY `id_jugador8` (`id_jugador8`),
  KEY `id_jugador9` (`id_jugador9`),
  KEY `id_jugador10` (`id_jugador10`),
  KEY `id_jugador11` (`id_jugador11`),
  CONSTRAINT `xi_ideal_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `xi_ideal_ibfk_10` FOREIGN KEY (`id_jugador9`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_11` FOREIGN KEY (`id_jugador10`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_12` FOREIGN KEY (`id_jugador11`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_2` FOREIGN KEY (`id_jugador1`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_3` FOREIGN KEY (`id_jugador2`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_4` FOREIGN KEY (`id_jugador3`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_5` FOREIGN KEY (`id_jugador4`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_6` FOREIGN KEY (`id_jugador5`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_7` FOREIGN KEY (`id_jugador6`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_8` FOREIGN KEY (`id_jugador7`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `xi_ideal_ibfk_9` FOREIGN KEY (`id_jugador8`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `despuesDeCrearXIIdeal` AFTER INSERT ON `xi_ideal` FOR EACH ROW begin
update usuario set puntos=puntos+10 where id_usuario=new.id_usuario;
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

-- Dump completed on 2025-11-17 12:41:51
