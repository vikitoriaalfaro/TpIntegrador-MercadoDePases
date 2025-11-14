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
-- Table structure for table `like_usuario_xi_ideal`
--

DROP TABLE IF EXISTS `like_usuario_xi_ideal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_usuario_xi_ideal` (
  `idlike_usuario_xi` int NOT NULL AUTO_INCREMENT,
  `id_del_usuario_en_like` int DEFAULT NULL,
  `id_del_xi_en_like` int DEFAULT NULL,
  `fecha_like` date DEFAULT NULL,
  PRIMARY KEY (`idlike_usuario_xi`),
  KEY `fk_like_usuario_xi_ideal_1_idx` (`id_del_usuario_en_like`),
  KEY `fk_like_usuario_xi_ideal_2_idx` (`id_del_xi_en_like`),
  CONSTRAINT `fk_like_usuario_xi_ideal_1` FOREIGN KEY (`id_del_usuario_en_like`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_like_usuario_xi_ideal_2` FOREIGN KEY (`id_del_xi_en_like`) REFERENCES `xi_ideal` (`id_xi_ideal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_usuario_xi_ideal`
--

LOCK TABLES `like_usuario_xi_ideal` WRITE;
/*!40000 ALTER TABLE `like_usuario_xi_ideal` DISABLE KEYS */;
INSERT INTO `like_usuario_xi_ideal` VALUES (1,25,1,'2025-09-06');
/*!40000 ALTER TABLE `like_usuario_xi_ideal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-14 11:58:25
