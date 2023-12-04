-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: 34.71.12.223    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'c082eea2-3f62-11ee-96c9-9249a2c188d6:1-216768';

--
-- Table structure for table `car_information`
--

DROP TABLE IF EXISTS `car_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vin` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `model_year` int NOT NULL,
  `location_id` int DEFAULT NULL,
  `car_type_id` int DEFAULT NULL,
  `cafv_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_information___fk` (`location_id`),
  KEY `car_information_car_type_car_type_id_fk` (`car_type_id`),
  KEY `car_information_vehicle_eligibility_cafv_id_fk` (`cafv_id`),
  CONSTRAINT `car_information_car_type_car_type_id_fk` FOREIGN KEY (`car_type_id`) REFERENCES `car_type` (`id`),
  CONSTRAINT `car_information_vehicle_eligibility_cafv_id_fk` FOREIGN KEY (`cafv_id`) REFERENCES `vehicle_eligibility` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_information`
--

LOCK TABLES `car_information` WRITE;
/*!40000 ALTER TABLE `car_information` DISABLE KEYS */;
INSERT INTO `car_information` VALUES (1,'5YJ3E1EB4L','TESLA','MODEL 3',2020,1,1,2),(2,'5YJ3E1EA7K','TESLA','MODEL 3',2019,2,1,2),(3,'7JRBR0FL9M','VOLVO','S60',2021,1,2,1),(4,'5YJXCBE21K','TESLA','MODEL X',2019,1,1,2),(5,'5UXKT0C5XH','BMW','X5',2017,2,2,1),(6,'1N4AZ0CP4F','NISSAN','LEAF',2015,2,1,2),(7,'5YJ3E1EBXJ','TESLA','MODEL 3',2018,1,1,2),(8,'WDC0G5EB0K','MERCEDES-BENZ','GLC-CLASS',2019,1,2,1),(9,'1N4AZ0CP3D','NISSAN','LEAF',2013,1,1,2),(10,'KNDCC3LD9K','KIA','NIRO',2019,1,2,1),(11,'KNDJX3AE8G','KIA','SOUL',2016,2,1,2),(12,'KNDC3DLCXN','KIA','EV6',2022,2,1,3),(13,'1G1RB6S59J','CHEVROLET','VOLT',2018,1,2,2),(14,'5YJSA1CG3D','TESLA','MODEL S',2013,1,1,2),(15,'1FADP3R48H','FORD','FOCUS',2017,2,1,2),(16,'5YJSA1E26H','TESLA','MODEL S',2017,1,1,2),(17,'1N4AZ1CP6K','NISSAN','LEAF',2019,1,1,2),(18,'1N4AZ1CP2K','NISSAN','LEAF',2019,1,1,2),(19,'1N4AZ0CP9D','NISSAN','LEAF',2013,1,1,2),(20,'5YJ3E1EA3J','TESLA','MODEL 3',2018,1,1,2),(21,'5YJXCBE2XH','TESLA','MODEL X',2017,1,1,2),(22,'5YJSA1E23G','TESLA','MODEL S',2016,1,1,2),(23,'1N4BZ0CP1H','NISSAN','LEAF',2017,1,1,2),(24,'5YJ3E1EA7J','TESLA','MODEL 3',2018,1,1,2),(25,'1N4BZ0CP4G','NISSAN','LEAF',2016,1,1,2),(26,'JN1AZ0CP0B','NISSAN','LEAF',2011,2,1,2),(27,'JN1AZ0CP0C','NISSAN','LEAF',2012,1,1,2),(28,'1N4AZ0CP6D','NISSAN','LEAF',2013,1,1,2),(29,'5YJ3E1EB3J','TESLA','MODEL 3',2018,1,1,2),(30,'5YJ3E1EBXJ','TESLA','MODEL 3',2018,1,1,2),(31,'5YJ3E1EB9M','TESLA','MODEL 3',2021,2,1,3),(32,'JN1AZ0CP0C','NISSAN','LEAF',2012,1,1,2),(33,'5YJ3E1EB2J','TESLA','MODEL 3',2018,1,1,2),(34,'7JRH60FD2N','VOLVO','S60',2022,1,2,2),(35,'7SAYGAEE2N','TESLA','MODEL Y',2022,1,1,3),(36,'WBY1Z8C30H','BMW','I3',2017,1,2,2),(37,'1N4BZ0CP9G','NISSAN','LEAF',2016,1,1,2),(38,'JN1AZ0CPXB','NISSAN','LEAF',2011,1,1,2),(39,'5YJ3E1EB8K','TESLA','MODEL 3',2019,1,1,2),(40,'5UXTA6C09P','BMW','X5',2023,2,2,2),(41,'5YJ3E1EA4H','TESLA','MODEL 3',2017,1,1,2),(42,'1N4AZ0CP3D','NISSAN','LEAF',2013,1,1,2),(43,'5YJYGDEF5L','TESLA','MODEL Y',2020,1,1,2),(44,'5YJ3E1EA7L','TESLA','MODEL 3',2020,1,1,2),(45,'5YJ3E1EB5L','TESLA','MODEL 3',2020,1,1,2),(46,'5YJ3E1EA2L','TESLA','MODEL 3',2020,1,1,2),(47,'5YJYGDEEXL','TESLA','MODEL Y',2020,1,1,2),(48,'1N4AZ0CP8F','NISSAN','LEAF',2015,1,1,2),(49,'5YJSA1E23G','TESLA','MODEL S',2016,2,1,2),(50,'1N4AZ0CP8D','NISSAN','LEAF',2013,1,1,2),(51,'1G1FY6S00L','CHEVROLET','BOLT EV',2020,1,1,2),(52,'WBY1Z8C55H','BMW','I3',2017,2,2,2),(53,'1FADP5CU1E','FORD','C-MAX',2014,1,2,1),(54,'5YJSA1H13E','TESLA','MODEL S',2014,2,1,2),(55,'1N4AZ1CP6K','NISSAN','LEAF',2019,1,1,2),(56,'1G1RD6E40E','CHEVROLET','VOLT',2014,2,2,2),(57,'1N4AZ0CP3F','NISSAN','LEAF',2015,1,1,2),(58,'3FA6P0PU9E','FORD','FUSION',2014,1,2,1),(59,'KNDCC3LD5K','KIA','NIRO',2019,1,2,1),(60,'1N4AZ1CP2K','NISSAN','LEAF',2019,1,1,2),(61,'WBY7Z8C59J','BMW','I3',2018,2,2,2),(62,'1N4AZ0CP7E','NISSAN','LEAF',2014,1,1,2),(63,'1N4BZ0CP6H','NISSAN','LEAF',2017,1,1,2),(64,'1N4AZ1CP6K','NISSAN','LEAF',2019,1,1,2),(65,'KNDCE3LG6K','KIA','NIRO',2019,2,1,2),(66,'LYVBR0DM5K','VOLVO','XC60',2019,1,2,1),(67,'5UXTS1C08L','BMW','X3',2020,1,2,1),(68,'5YJ3E1EB2L','TESLA','MODEL 3',2020,1,1,2),(69,'WMWXP3C08M','MINI','HARDTOP',2021,2,1,2),(70,'5YJXCDE21K','TESLA','MODEL X',2019,1,1,2),(71,'JN1AZ0CPXC','NISSAN','LEAF',2012,1,1,2),(72,'JTDKARFP6J','TOYOTA','PRIUS PRIME',2018,2,2,1),(73,'1N4BZ0CP4H','NISSAN','LEAF',2017,1,1,2),(74,'3FA6P0PU8D','FORD','FUSION',2013,1,2,1),(75,'1G1FX6S07J','CHEVROLET','BOLT EV',2018,1,1,2),(76,'3C3CFFGE5G','FIAT','500',2016,1,1,2),(77,'KNDCC3LG0L','KIA','NIRO',2020,1,1,2),(78,'JTDKARFP1H','TOYOTA','PRIUS PRIME',2017,1,2,1),(79,'7SAYGDEE6N','TESLA','MODEL Y',2022,1,1,3),(80,'5UXKT0C50G','BMW','X5',2016,2,2,1),(81,'5YJYGDEE7M','TESLA','MODEL Y',2021,1,1,3),(82,'JTMAB3FV2P','TOYOTA','RAV4 PRIME',2023,1,2,2),(83,'5YJ3E1EA1J','TESLA','MODEL 3',2018,1,1,2),(84,'5YJSA1E26J','TESLA','MODEL S',2018,2,1,2),(85,'3FA6P0SU5E','FORD','FUSION',2014,1,2,1),(86,'5YJ3E1EA3J','TESLA','MODEL 3',2018,1,1,2),(87,'5UXTA6C00P','BMW','X5',2023,1,2,2),(88,'JN1AZ0CPXC','NISSAN','LEAF',2012,1,1,2),(89,'1G1RD6E43F','CHEVROLET','VOLT',2015,1,2,2),(90,'7FCEHDB7XN','RIVIAN','EDV',2022,1,1,3),(91,'1FADP5CU2D','FORD','C-MAX',2013,1,2,1),(92,'5YJ3E1EB5J','TESLA','MODEL 3',2018,2,1,2),(93,'3FA6P0SUXG','FORD','FUSION',2016,1,2,1),(94,'5YJ3E1EB3J','TESLA','MODEL 3',2018,1,1,2),(95,'1FADP5CU5G','FORD','C-MAX',2016,1,2,1),(96,'JN1AZ0CP5C','NISSAN','LEAF',2012,1,1,2),(97,'5YJ3E1EA7L','TESLA','MODEL 3',2020,1,1,2),(98,'5YJ3E1EC5L','TESLA','MODEL 3',2020,1,1,2),(99,'7SAYGDEE5P','TESLA','MODEL Y',2023,2,1,3);
/*!40000 ALTER TABLE `car_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_type`
--

DROP TABLE IF EXISTS `car_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_type` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_type`
--

LOCK TABLES `car_type` WRITE;
/*!40000 ALTER TABLE `car_type` DISABLE KEYS */;
INSERT INTO `car_type` VALUES (1,'Battery Electric Vehicle (BEV)','runs entirely on an electric battery, eliminating the need for traditional fuel sources and producing zero emissions'),(2,'Plug-in Hybrid Electric Vehicle (PHEV)','uses both an internal combustion engine and an electric battery, offering a dual-power source for increased efficiency and lower emissions');
/*!40000 ALTER TABLE `car_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `county` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'San Diego','La Jolla','CA',92093),(2,'San Mateo','Daly City','CA',94014);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_eligibility`
--

DROP TABLE IF EXISTS `vehicle_eligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_eligibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clean_alt_fuel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_eligibility`
--

LOCK TABLES `vehicle_eligibility` WRITE;
/*!40000 ALTER TABLE `vehicle_eligibility` DISABLE KEYS */;
INSERT INTO `vehicle_eligibility` VALUES (1,'Not eligible due to low battery range'),(2,'Clean Alternative Fuel Vehicle Eligible'),(3,'Eligibility unknown as battery range has not been researched');
/*!40000 ALTER TABLE `vehicle_eligibility` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 22:12:22
