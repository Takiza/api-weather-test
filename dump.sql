-- MySQL dump 10.13  Distrib 5.6.43, for Win32 (AMD64)
--
-- Host: localhost    Database: test_task_junior
-- ------------------------------------------------------
-- Server version	5.6.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weather_data`
--

DROP TABLE IF EXISTS `weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_data` (
  `City` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Temp` int(11) NOT NULL,
  `Pressure` int(11) NOT NULL,
  `Humidity` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_data`
--

LOCK TABLES `weather_data` WRITE;
/*!40000 ALTER TABLE `weather_data` DISABLE KEYS */;
INSERT INTO `weather_data` VALUES ('London','1575471600',6,1019,76,0),('London','1575482400',5,1021,85,1),('London','1575493200',4,1021,88,2),('London','1575504000',3,1022,90,3),('London','1575514800',3,1020,88,4),('London','1575525600',3,1022,89,5),('London','1575536400',4,1022,92,6),('London','1575547200',7,1021,80,7),('London','1575558000',7,1018,86,8),('London','1575568800',7,1017,72,9),('London','1575579600',8,1016,70,10),('London','1575590400',9,1014,79,11),('London','1575601200',10,1011,87,12),('London','1575612000',11,1009,91,13),('London','1575622800',11,1007,88,14),('London','1575633600',12,1005,88,15),('London','1575644400',13,1004,72,16),('London','1575655200',10,1006,70,17),('London','1575666000',9,1009,77,18),('London','1575676800',8,1010,83,19),('London','1575687600',8,1010,79,20),('London','1575698400',9,1011,75,21),('London','1575709200',8,1012,78,22),('London','1575720000',9,1013,73,23),('London','1575730800',9,1012,76,24),('London','1575741600',9,1010,82,25),('London','1575752400',9,1007,83,26),('London','1575763200',11,1002,88,27),('London','1575774000',13,1000,91,28),('London','1575784800',11,1003,66,29),('London','1575795600',9,1006,64,30),('London','1575806400',10,1006,61,31),('London','1575817200',10,1004,60,32),('London','1575828000',10,1001,63,33),('London','1575838800',8,1002,59,34),('London','1575849600',7,1003,59,35),('London','1575860400',7,1004,64,36),('London','1575871200',8,1004,67,37),('London','1575882000',8,1005,68,38),('London','1575892800',9,1006,68,39),('Birmingham','1575471600',6,1018,87,0),('Birmingham','1575482400',4,1020,91,1),('Birmingham','1575493200',3,1020,92,2),('Birmingham','1575504000',3,1021,92,3),('Birmingham','1575514800',3,1020,95,4),('Birmingham','1575525600',3,1021,92,5),('Birmingham','1575536400',3,1020,91,6),('Birmingham','1575547200',6,1018,80,7),('Birmingham','1575558000',7,1015,81,8),('Birmingham','1575568800',8,1013,83,9),('Birmingham','1575579600',10,1011,88,10),('Birmingham','1575590400',10,1010,90,11),('Birmingham','1575601200',11,1006,90,12),('Birmingham','1575612000',11,1005,92,13),('Birmingham','1575622800',11,1002,92,14),('Birmingham','1575633600',12,1001,80,15),('Birmingham','1575644400',10,1002,74,16),('Birmingham','1575655200',8,1005,81,17),('Birmingham','1575666000',7,1007,83,18),('Birmingham','1575676800',7,1008,85,19),('Birmingham','1575687600',8,1009,81,20),('Birmingham','1575698400',8,1010,81,21),('Birmingham','1575709200',7,1011,88,22),('Birmingham','1575720000',9,1011,76,23),('Birmingham','1575730800',9,1009,81,24),('Birmingham','1575741600',8,1006,85,25),('Birmingham','1575752400',8,1002,88,26),('Birmingham','1575763200',11,998,91,27),('Birmingham','1575774000',10,1000,80,28),('Birmingham','1575784800',8,1002,74,29),('Birmingham','1575795600',7,1003,75,30),('Birmingham','1575806400',9,1002,65,31),('Birmingham','1575817200',8,999,75,32),('Birmingham','1575828000',7,998,72,33),('Birmingham','1575838800',6,1000,69,34),('Birmingham','1575849600',5,1001,77,35),('Birmingham','1575860400',6,1001,79,36),('Birmingham','1575871200',6,1002,86,37),('Birmingham','1575882000',7,1004,84,38),('Birmingham','1575892800',7,1007,81,39),('Manchester','1575471600',7,1017,87,0),('Manchester','1575482400',6,1019,89,1),('Manchester','1575493200',5,1019,89,2),('Manchester','1575504000',4,1020,97,3),('Manchester','1575514800',3,1018,94,4),('Manchester','1575525600',3,1019,90,5),('Manchester','1575536400',4,1018,84,6),('Manchester','1575547200',6,1015,82,7),('Manchester','1575558000',7,1011,83,8),('Manchester','1575568800',8,1009,88,9),('Manchester','1575579600',9,1007,95,10),('Manchester','1575590400',9,1006,95,11),('Manchester','1575601200',10,1003,97,12),('Manchester','1575612000',10,1002,96,13),('Manchester','1575622800',10,999,92,14),('Manchester','1575633600',9,998,85,15),('Manchester','1575644400',8,999,76,16),('Manchester','1575655200',8,1002,77,17),('Manchester','1575666000',8,1004,79,18),('Manchester','1575676800',7,1005,82,19),('Manchester','1575687600',7,1007,83,20),('Manchester','1575698400',7,1008,83,21),('Manchester','1575709200',6,1009,87,22),('Manchester','1575720000',7,1009,86,23),('Manchester','1575730800',7,1006,85,24),('Manchester','1575741600',8,1003,87,25),('Manchester','1575752400',8,998,91,26),('Manchester','1575763200',10,995,96,27),('Manchester','1575774000',9,997,71,28),('Manchester','1575784800',7,998,69,29),('Manchester','1575795600',7,999,79,30),('Manchester','1575806400',7,998,59,31),('Manchester','1575817200',6,995,84,32),('Manchester','1575828000',6,994,72,33),('Manchester','1575838800',6,996,66,34),('Manchester','1575849600',6,997,76,35),('Manchester','1575860400',6,998,73,36),('Manchester','1575871200',6,999,76,37),('Manchester','1575882000',6,1003,85,38),('Manchester','1575892800',6,1007,66,39);
/*!40000 ALTER TABLE `weather_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06  8:47:46
