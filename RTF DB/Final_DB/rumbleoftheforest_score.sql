CREATE DATABASE  IF NOT EXISTS `rumbleoftheforest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rumbleoftheforest`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rumbleoftheforest
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `id_score` int unsigned NOT NULL AUTO_INCREMENT,
  `total_score` int NOT NULL,
  `lost_life` int NOT NULL,
  `damage_taken` int NOT NULL,
  `damage_inflicted` int NOT NULL,
  `id_score_enemies` int unsigned DEFAULT NULL,
  `id_score_notes` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_score`),
  KEY `id_score_enemies_idx` (`id_score_enemies`),
  KEY `id_score_notes` (`id_score_notes`),
  CONSTRAINT `id_score_enemies` FOREIGN KEY (`id_score_enemies`) REFERENCES `score_enemies` (`id_score_enemies`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `id_score_notes` FOREIGN KEY (`id_score_notes`) REFERENCES `score_notes` (`id_score_notes`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,153500,76,107,1945,NULL,NULL),(2,785670,12,571,1419,NULL,NULL),(3,611764,4,405,290,NULL,NULL),(4,789238,81,74,440,NULL,NULL),(5,41449,14,506,1995,NULL,NULL),(6,987182,98,515,1333,NULL,NULL),(7,806852,93,521,1759,NULL,NULL),(8,704317,13,389,1253,NULL,NULL),(9,506604,1,157,584,NULL,NULL),(10,165686,52,454,159,NULL,NULL),(11,475348,28,664,155,NULL,NULL),(12,331228,77,598,1749,NULL,NULL),(13,23508,16,355,159,NULL,NULL),(14,640561,82,647,1588,NULL,NULL),(15,404286,7,188,549,NULL,NULL),(16,887657,97,12,1275,NULL,NULL),(17,656492,65,537,652,NULL,NULL),(18,761117,52,290,1402,NULL,NULL),(19,407191,21,2,248,NULL,NULL),(20,621710,20,190,1713,NULL,NULL),(21,182430,16,660,1526,NULL,NULL),(22,737468,62,445,24,NULL,NULL),(23,250987,91,592,899,NULL,NULL),(24,557780,46,476,439,NULL,NULL),(25,543046,20,73,1956,NULL,NULL),(26,693132,34,325,1193,NULL,NULL),(27,938540,79,129,656,NULL,NULL),(28,457713,81,83,1662,NULL,NULL),(29,96757,2,688,429,NULL,NULL),(30,500021,93,359,786,NULL,NULL),(31,411801,95,205,57,NULL,NULL),(32,900764,9,579,1986,NULL,NULL),(33,72830,68,745,1761,NULL,NULL),(34,274043,15,689,1603,NULL,NULL),(35,339232,83,258,436,NULL,NULL),(36,816145,18,289,380,NULL,NULL),(37,599834,77,549,997,NULL,NULL),(38,53988,45,51,1159,NULL,NULL),(39,431363,29,492,10,NULL,NULL),(40,274145,43,712,1112,NULL,NULL),(41,888257,98,151,846,NULL,NULL),(42,445059,35,215,1555,NULL,NULL),(43,165274,56,394,108,NULL,NULL),(44,840071,3,739,1204,NULL,NULL),(45,552751,22,65,477,NULL,NULL),(46,553787,27,507,388,NULL,NULL),(47,574188,44,485,1547,NULL,NULL),(48,409457,96,510,1099,NULL,NULL),(49,937917,29,176,1257,NULL,NULL),(50,238594,27,656,1178,NULL,NULL),(51,123878,75,522,200,NULL,NULL),(52,137405,95,309,1918,NULL,NULL),(53,116516,66,155,390,NULL,NULL),(54,228912,49,485,817,NULL,NULL),(55,975757,6,632,400,NULL,NULL),(56,897445,29,66,744,NULL,NULL),(57,139207,13,144,951,NULL,NULL),(58,81093,2,417,1020,NULL,NULL),(59,260246,97,285,414,NULL,NULL),(60,243926,15,567,862,NULL,NULL),(61,101054,32,57,667,NULL,NULL),(62,450089,97,140,1920,NULL,NULL),(63,604945,53,230,488,NULL,NULL),(64,851865,67,582,1268,NULL,NULL),(65,176631,25,707,1717,NULL,NULL),(66,86498,5,417,217,NULL,NULL),(67,421779,55,378,1039,NULL,NULL),(68,211290,99,14,197,NULL,NULL),(69,455443,51,313,1067,NULL,NULL),(70,755533,23,423,1431,NULL,NULL),(71,545667,75,614,108,NULL,NULL),(72,183425,72,187,186,NULL,NULL),(73,913845,0,593,1161,NULL,NULL),(74,618351,35,240,166,NULL,NULL),(75,880933,19,497,884,NULL,NULL),(76,261805,90,635,599,NULL,NULL),(77,165376,58,610,502,NULL,NULL),(78,176787,9,17,433,NULL,NULL),(79,52938,50,425,1427,NULL,NULL),(80,506752,43,411,676,NULL,NULL),(81,6066,19,477,1291,NULL,NULL),(82,458859,71,128,45,NULL,NULL),(83,380491,67,563,1825,NULL,NULL),(84,531824,44,708,1036,NULL,NULL),(85,916208,75,712,901,NULL,NULL),(86,915556,95,211,370,NULL,NULL),(87,212777,95,176,1739,NULL,NULL),(88,65028,35,127,1815,NULL,NULL),(89,186546,71,141,44,NULL,NULL),(90,909921,25,1,1835,NULL,NULL),(91,642394,53,3,494,NULL,NULL),(92,362612,63,644,1848,NULL,NULL),(93,998449,96,239,258,NULL,NULL),(94,231965,72,242,58,NULL,NULL),(95,323466,55,332,1957,NULL,NULL),(96,337545,5,714,1305,NULL,NULL),(97,791237,57,547,1582,NULL,NULL),(98,472002,12,346,1713,NULL,NULL),(99,748401,23,177,1174,NULL,NULL),(100,959175,57,314,1336,NULL,NULL),(101,564983,61,78,14,NULL,NULL),(102,365314,11,244,119,NULL,NULL),(103,504858,83,729,1655,NULL,NULL),(104,14030,46,664,562,NULL,NULL),(105,103942,76,622,1271,NULL,NULL),(106,536700,83,38,751,NULL,NULL),(107,477480,63,109,1373,NULL,NULL),(108,987999,59,114,383,NULL,NULL),(109,106810,80,299,580,NULL,NULL),(110,269108,9,637,281,NULL,NULL),(111,97662,67,134,119,NULL,NULL),(112,710443,91,30,1833,NULL,NULL),(113,773960,34,189,1824,NULL,NULL),(114,829626,69,490,962,NULL,NULL),(115,905098,64,277,1376,NULL,NULL),(116,673561,14,176,1701,NULL,NULL),(117,353749,89,218,561,NULL,NULL),(118,621591,35,623,996,NULL,NULL),(119,320255,50,359,1714,NULL,NULL),(120,228874,92,728,1045,NULL,NULL);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `score_BEFORE_INSERT` BEFORE INSERT ON `score` FOR EACH ROW BEGIN
	if new.lost_life < 0 then
		set new.lost_life = 0;
	end if;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `score_BEFORE_UPDATE` BEFORE UPDATE ON `score` FOR EACH ROW BEGIN
	if new.lost_life < 0 then
		set new.lost_life = 0;
	end if;
END */;;
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

-- Dump completed on 2022-05-04 13:32:10
