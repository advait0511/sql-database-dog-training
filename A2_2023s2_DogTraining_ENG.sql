-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dogtraining
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `attendance8875`
--

DROP TABLE IF EXISTS `attendance8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance8875` (
  `EventID` INT,
  `DogID` INT,
  PRIMARY KEY (`EventID`, `DogID`),
  KEY `fk_attendance_event` (`EventID`),
  KEY `fk_attendance_dog` (`DogID`),
  CONSTRAINT `fk_attendance_event` FOREIGN KEY (`EventID`) REFERENCES `event8875` (`EventID`),
  CONSTRAINT `fk_attendance_dog` FOREIGN KEY (`DogID`) REFERENCES `dog8875` (`DogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance8875`
--

LOCK TABLES `attendance8875` WRITE;
/*!40000 ALTER TABLE `attendance8875` DISABLE KEYS */;
INSERT INTO `attendance8875` VALUES (1,38),(1,46),(1,64),(1,69),(1,138),(2,23),(2,47),(2,89),(2,90),(2,112),(2,138),(3,12),(3,13),(3,16),(3,27),(3,59),(3,63),(3,91),(4,12),(4,105),(4,140),(5,28),(5,37),(5,46),(5,53),(5,97),(6,1),(6,9),(6,43),(6,62),(7,7),(7,16),(7,100),(7,105),(8,20),(8,47),(8,67),(9,35),(9,64),(10,20),(10,38),(10,45),(10,53),(10,64),(10,129),(10,134),(11,99),(11,103),(11,112),(11,115),(12,56),(12,77),(12,121),(12,128),(13,7),(13,10),(13,83),(13,86),(13,133),(13,142),(14,18),(14,50),(14,67),(14,88),(14,107),(14,108),(14,109),(15,33),(15,44),(15,55),(15,107),(16,38),(16,43),(16,94),(16,99),(17,15),(17,21),(17,29),(17,34),(17,45),(17,50),(17,51),(17,56),(17,75),(17,76),(17,90),(17,95),(17,118),(17,119),(17,124),(17,128),(17,131),(17,153),(18,37),(18,104),(18,111),(18,117),(19,8),(19,21),(19,40),(19,79),(19,133),(20,44),(20,46),(20,101),(21,31),(21,52),(21,98),(21,103),(21,140),(22,15),(22,38),(22,55),(22,73),(22,104),(23,17),(23,93),(23,123),(23,126),(24,87),(24,139),(24,142),(25,104),(25,134),(25,139),(26,98),(26,104),(26,134),(26,139),(27,23),(27,33),(27,39),(27,102),(28,15),(28,47),(28,48),(28,92),(28,140),(28,147),(28,150),(29,56),(29,74),(29,75),(29,124),(29,127),(29,153),(30,51),(30,58),(30,64),(30,124),(30,136),(30,140),(30,141),(31,1),(31,14),(31,80),(31,120),(31,121),(31,146),(32,5),(32,77),(32,92),(32,142),(32,147),(33,5),(33,7),(33,8),(33,25),(33,58),(33,85),(33,96),(34,25),(34,31),(34,58),(34,111),(34,136),(34,147),(35,3),(35,8),(35,9),(35,18),(35,69),(35,115),(35,133),(35,150),(36,7),(36,23),(36,51),(36,91),(36,98),(36,108),(36,128),(37,10),(37,25),(37,63),(37,64),(37,86),(37,90),(37,99),(37,117),(37,139),(38,1),(38,24),(38,42),(38,49),(38,62),(38,70),(38,80),(38,107),(38,136),(39,16),(39,58),(39,65),(39,69),(39,92),(39,118),(40,18),(40,29),(40,78),(41,1),(41,2),(41,6),(41,12),(41,19),(41,20),(41,27),(41,53),(41,61),(41,84),(41,91),(41,102),(41,103),(41,104),(41,105),(41,106),(41,108),(41,125),(41,133),(41,134),(41,135),(41,136),(41,141),(41,142),(41,149),(42,12),(42,58),(42,104),(43,2),(43,17),(43,18),(43,60),(44,12),(44,18),(44,47),(44,78),(44,83),(44,147),(45,17),(45,18),(45,47),(45,148),(45,153),(46,16),(46,58),(46,83),(46,85),(46,86),(46,98),(46,113),(47,19),(47,68),(47,70),(47,114),(47,118),(48,47),(48,106),(48,118),(48,127),(48,140),(49,20),(49,46),(49,75),(49,92),(49,139),(49,145),(49,149),(50,92),(50,93),(50,117),(50,125),(50,126),(50,130),(51,21),(51,26),(51,30),(51,97),(51,125),(51,130),(51,150),(52,7),(52,30),(52,80),(52,130),(52,132),(52,141),(53,17),(53,32),(53,53),(53,67),(53,98),(53,113),(53,154),(54,13),(54,40),(54,64),(54,90),(54,126),(54,139),(54,149),(54,150),(55,20),(55,25),(55,79),(55,92),(55,127),(55,128),(55,139),(56,3),(56,22),(56,23),(56,62),(56,91),(56,122),(56,140),(56,152),(57,5),(57,25),(57,26),(57,44),(57,146),(58,30),(58,78),(58,82),(58,134),(58,147),(59,9),(59,12),(59,61),(59,62),(59,74),(59,115),(60,1),(60,8),(60,50),(60,126),(61,3),(61,49),(61,65),(61,107),(61,133),(62,29),(62,49),(62,52),(62,79),(62,81),(62,113),(62,127),(62,133),(62,134),(63,12),(63,41),(63,66),(63,69),(63,84),(63,91),(63,104),(63,117),(63,144),(63,145),(64,14),(64,35),(64,37),(64,48),(64,54),(64,56),(64,81),(64,89),(64,99),(64,107),(64,115),(64,136),(65,6),(65,33),(65,40),(65,68),(65,90),(65,104),(65,106),(65,118),(65,136),(65,153),(66,9),(66,16),(66,25),(66,41),(66,77),(66,113),(66,119),(66,121),(66,140),(66,144),(66,146),(67,1),(67,3),(67,6),(67,8),(67,9),(67,10),(67,11),(67,16),(67,20),(67,24),(67,25),(67,26),(67,28),(67,29),(67,33),(67,38),(67,39),(67,43),(67,48),(67,51),(67,54),(67,55),(67,56),(67,57),(67,58),(67,59),(67,68),(67,73),(67,75),(67,76),(67,69),(67,77),(67,78),(67,79),(67,80),(67,81),(67,82),(67,83),(67,84),(67,91),(67,92),(67,97),(67,99),(67,100),(67,101),(67,102),(67,103),(67,108),(67,110),(67,115),(67,120),(67,121),(67,122),(67,123),(67,124),(67,129),(67,130),(67,131),(67,133),(67,134),(67,135),(67,137),(67,136),(67,138),(67,139),(67,149),(67,152),(67,153),(68,3),(68,101),(68,109),(68,110),(68,123),(69,23),(69,113),(69,133),(69,135),(69,145),(70,22),(70,32),(70,64),(70,87),(70,107),(70,149),(70,153),(71,24),(71,25),(71,27),(71,28),(71,53),(71,67),(71,98),(71,120),(72,4),(72,55),(72,68),(72,103),(72,112),(72,122),(73,46),(73,114),(73,115),(73,133),(73,137),(73,144),(74,11),(74,42),(74,74),(74,124),(74,129),(74,139),(74,141),(74,145),(75,45),(75,65),(75,68),(75,74),(75,103),(75,120),(75,121),(75,143),(76,26),(76,52),(76,94),(76,120),(76,136),(76,140),(77,3),(77,15),(77,57),(77,68),(77,100),(77,115),(78,6),(78,12),(78,22),(78,59),(78,121),(79,33),(79,39),(79,54),(79,101),(79,102),(79,103),(79,153),(80,37),(80,64),(80,70),(80,74),(80,78),(80,87),(80,97),(80,107),(80,137),(81,4),(81,28),(81,55),(81,69),(81,80),(81,101),(81,106),(81,133),(82,8),(82,16),(82,46),(82,74),(82,85),(82,106),(82,107),(83,27),(83,34),(83,36),(83,51),(83,59),(83,83),(84,16),(84,52),(84,63),(84,75),(84,98),(84,107),(84,141),(85,22),(85,28),(85,49),(85,56),(85,115),(85,140),(86,39),(86,40),(86,55),(86,64),(86,121),(86,136),(87,2),(87,7),(87,8),(87,15),(87,27),(87,28),(87,29),(87,30),(87,34),(87,40),(87,54),(87,60),(87,67),(87,71),(87,76),(87,83),(87,86),(87,96),(87,103),(87,109),(87,115),(87,117),(87,124),(87,127),(87,128),(87,129),(87,137),(87,138),(88,69),(88,73),(88,81),(88,85),(88,86),(88,87),(88,109),(88,124),(88,131),(89,26),(89,38),(89,47),(89,52),(89,60),(89,61),(89,71),(89,72),(89,81),(89,89),(89,94),(89,99),(90,5),(90,6),(90,14),(90,18),(90,27),(90,34),(90,55),(90,62),(90,69),(90,81),(90,89),(90,108),(90,120),(90,126),(90,136),(91,7),(91,11),(91,12),(91,15),(91,18),(91,29),(91,30),(91,34),(91,38),(91,44),(91,50),(91,53),(91,62),(91,63),(91,66),(91,70),(91,74),(91,73),(91,75),(91,76),(91,77),(91,91),(91,93),(91,96),(91,99),(91,101),(91,104),(91,107),(91,118),(91,119),(91,134),(91,138),(91,146),(91,153),(92,12),(92,13),(92,23),(92,24),(92,29),(92,30),(92,41),(92,53),(92,57),(92,70),(92,78),(92,80),(92,81),(92,118),(92,119),(92,130),(92,151),(93,10),(93,20),(93,21),(93,34),(93,69),(93,92),(93,109),(93,133),(93,134),(94,20),(94,81),(94,135),(95,42),(95,44),(95,56),(95,77),(95,93),(95,102),(95,138),(96,15),(96,54),(96,58),(96,79),(96,83),(96,84),(96,103),(96,128),(96,143),(96,152),(97,8),(97,12),(97,49),(97,57),(97,62),(97,63),(97,100),(97,113),(97,131),(97,139),(98,1),(98,4),(98,14),(98,34),(98,35),(98,42),(98,63),(98,66),(98,75),(98,122),(98,133),(99,120),(99,130),(99,140),(100,20),(100,24),(100,53),(100,75),(100,95),(100,100),(100,101),(100,116),(100,141),(100,144),(100,154),(101,25),(101,34),(101,42),(101,54),(101,55),(101,58),(101,75),(101,88),(101,98),(101,118),(101,145),(102,25),(102,34),(102,67),(102,68),(102,76),(102,92),(102,115),(102,137),(102,147),(103,14),(103,23),(103,41),(103,83),(103,90),(103,114),(103,131),(104,14),(104,30),(104,45),(104,49),(104,72),(104,81),(104,132),(104,136),(105,30),(105,63),(105,72),(105,93),(105,94),(105,98),(105,106),(106,1),(106,25),(106,66),(106,112),(106,128),(106,133),(106,150),(107,18),(107,24),(107,31),(107,47),(107,78),(107,88),(107,112),(107,121),(107,123),(107,130),(107,154),(108,3),(108,7),(108,16),(108,41),(108,50),(108,85),(108,90),(108,95),(108,122),(108,148),(109,40),(109,74),(109,99),(109,101),(109,111),(109,120),(109,123),(109,126),(109,134),(109,139),(110,4),(110,7),(110,16),(110,40),(110,48),(110,107),(110,120),(110,127),(110,142),(110,147),(111,5),(111,24),(111,28),(111,30),(111,35),(111,44),(111,47),(111,59),(111,64),(111,103),(111,109),(111,118),(111,125),(112,8),(112,10),(112,25),(112,39),(112,44),(112,61),(112,71),(112,76),(112,84),(112,94),(112,99),(112,101),(112,111),(113,22),(113,28),(113,41),(113,46),(113,55),(113,72),(113,75),(113,77),(113,83),(113,98),(113,102),(113,135),(114,10),(114,13),(114,18),(114,25),(114,30),(114,35),(114,44),(114,79),(114,107),(114,110),(114,113),(114,122),(114,135),(115,3),(115,15),(115,18),(115,29),(115,59),(115,76),(115,90),(115,107),(115,116),(115,117),(115,118),(115,126),(115,143),(116,10),(116,58),(116,73),(116,74),(116,105),(116,153),(117,2),(117,5),(117,8),(117,9),(117,13),(117,17),(117,19),(117,26),(117,30),(117,40),(117,50),(117,53),(117,56),(117,57),(117,67),(117,75),(117,76),(117,97),(117,101),(117,108),(117,118),(117,120),(117,132),(117,138),(117,140),(117,141),(117,143),(117,149);
/*!40000 ALTER TABLE `attendance8875` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking8875`
--

DROP TABLE IF EXISTS `booking8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking8875` (
  `BookingID` INT,
  `VenueID` INT NOT NULL,
  `DogID` INT NOT NULL,
  `ApptDate` DATE NOT NULL,
  `ApptTime` TEXT NOT NULL,
  `Trainer` INT NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `fk_booking_dog` (`DogID`),
  KEY `fk_booking_trainer` (`Trainer`),
  KEY `fk_booking_venue` (`VenueID`),
  CONSTRAINT `fk_booking_dog` FOREIGN KEY (`DogID`) REFERENCES `dog8875` (`DogID`),
  CONSTRAINT `fk_booking_trainer` FOREIGN KEY (`Trainer`) REFERENCES `trainer8875` (`StaffID`),
  CONSTRAINT `fk_booking_venue` FOREIGN KEY (`VenueID`) REFERENCES `venue8875` (`VenueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking8875`
--

LOCK TABLES `booking8875` WRITE;
/*!40000 ALTER TABLE `booking8875` DISABLE KEYS */;
INSERT INTO `booking8875` VALUES (1,1,1,'2020-10-15','3:00:00 PM',1),(2,2,5,'2020-10-31','11:00:00 AM',5),(3,2,3,'2020-09-05','9:00:00 AM',3),(4,2,2,'2020-09-05','10:00:00 AM',3),(5,4,4,'2020-04-04','2:30:00 PM',2),(6,3,5,'2019-11-13','11:00:00 AM',4),(7,5,7,'2020-08-10','2:00:00 PM',5),(8,2,2,'2020-10-05','9:00:00 AM',15),(9,2,3,'2020-10-05','10:00:00 AM',3),(10,1,8,'2020-11-04','4:00:00 PM',12),(11,4,109,'2021-03-08','10:30:00 AM',13),(12,3,48,'2022-01-13','12:00:00 PM',4),(13,3,71,'2021-10-16','3:30:00 PM',4),(14,1,11,'2020-08-20','2:30:00 PM',1),(15,4,62,'2021-01-24','4:00:00 PM',2),(16,5,118,'2020-04-30','9:30:00 AM',5),(17,5,132,'2021-01-30','11:00:00 AM',18),(18,1,140,'2019-01-11','2:00:00 PM',1),(19,1,64,'2022-04-03','3:30:00 PM',1),(20,4,152,'2020-05-18','2:00:00 PM',2),(21,1,144,'2023-02-20','1:00:00 PM',1),(22,2,14,'2019-06-03','4:00:00 PM',3),(23,4,144,'2021-07-15','12:00:00 PM',2),(24,3,29,'2020-07-02','4:00:00 PM',4),(25,2,67,'2022-06-12','9:30:00 AM',3),(26,1,9,'2021-08-03','1:30:00 PM',1),(27,2,71,'2022-06-05','9:30:00 AM',3),(28,5,129,'2022-04-30','2:00:00 PM',19),(29,3,33,'2021-04-11','11:00:00 AM',4),(30,1,48,'2022-07-21','10:30:00 AM',12),(31,2,79,'2021-11-27','9:30:00 AM',3),(32,2,134,'2022-12-31','3:00:00 PM',3),(33,3,40,'2023-01-30','11:00:00 AM',4),(34,2,25,'2019-11-18','2:00:00 PM',3),(35,4,110,'2019-04-02','10:00:00 AM',14),(36,1,86,'2020-07-16','2:00:00 PM',1),(37,2,101,'2019-04-28','3:00:00 PM',15),(38,4,24,'2022-04-20','11:30:00 AM',2),(39,2,6,'2023-02-01','3:00:00 PM',3),(40,1,25,'2022-11-08','10:00:00 AM',1),(41,4,88,'2021-08-19','9:30:00 AM',2),(42,3,6,'2019-10-18','10:00:00 AM',16),(43,4,115,'2019-08-20','2:30:00 PM',2),(44,3,82,'2020-03-24','10:30:00 AM',4),(45,1,154,'2019-06-09','12:00:00 PM',1),(46,1,126,'2020-02-23','12:00:00 PM',1),(47,4,154,'2021-03-19','10:30:00 AM',13),(48,4,3,'2020-10-07','10:00:00 AM',2),(49,1,66,'2019-06-23','4:00:00 PM',1),(50,3,120,'2019-04-29','12:00:00 PM',4),(51,2,17,'2020-01-22','2:00:00 PM',3),(52,5,30,'2022-08-25','1:00:00 PM',5),(53,2,46,'2022-12-11','11:00:00 AM',3),(54,1,62,'2022-08-07','12:30:00 PM',1),(55,3,60,'2023-01-05','4:00:00 PM',4),(56,1,149,'2019-07-16','11:30:00 AM',12),(57,4,31,'2022-05-14','11:30:00 AM',2),(58,2,83,'2022-01-04','9:00:00 AM',3),(59,2,12,'2020-02-29','11:30:00 AM',3),(60,5,76,'2020-08-26','10:30:00 AM',5),(61,1,49,'2022-02-16','1:00:00 PM',1),(62,5,52,'2019-12-13','2:00:00 PM',5),(63,3,64,'2022-09-25','12:00:00 PM',4),(64,1,108,'2019-07-06','3:00:00 PM',1),(65,3,130,'2021-04-12','9:00:00 AM',17),(66,2,24,'2020-09-26','11:30:00 AM',3),(67,2,134,'2020-04-30','9:30:00 AM',3),(68,1,51,'2022-08-05','2:00:00 PM',1),(69,1,142,'2019-04-26','1:00:00 PM',1),(70,1,35,'2020-09-14','9:30:00 AM',1),(71,3,7,'2019-09-13','4:00:00 PM',4),(72,5,40,'2022-06-22','4:30:00 PM',5),(73,1,35,'2019-09-15','4:30:00 PM',12),(74,1,151,'2020-12-15','9:00:00 AM',1),(75,3,83,'2021-05-05','2:30:00 PM',4),(76,4,128,'2021-08-03','10:30:00 AM',2),(77,4,86,'2020-10-16','4:30:00 PM',2),(78,2,127,'2021-05-16','11:30:00 AM',15),(79,3,34,'2022-12-22','4:00:00 PM',4),(80,5,77,'2019-01-03','1:00:00 PM',18),(81,2,146,'2020-01-05','4:00:00 PM',3),(82,1,141,'2021-08-21','10:00:00 AM',1),(83,3,95,'2019-09-01','11:00:00 AM',4),(84,5,43,'2022-10-08','10:30:00 AM',5),(85,1,49,'2020-04-06','3:00:00 PM',1),(86,5,121,'2022-06-20','11:00:00 AM',5),(87,2,27,'2022-09-04','9:30:00 AM',3),(88,3,40,'2023-01-22','9:30:00 AM',4),(89,4,76,'2020-02-28','3:00:00 PM',2),(90,5,70,'2021-04-15','1:00:00 PM',5),(91,1,23,'2020-04-15','3:30:00 PM',1),(92,3,122,'2022-03-18','1:30:00 PM',4),(93,3,118,'2021-06-01','10:30:00 AM',16),(94,4,136,'2022-08-29','12:30:00 PM',14),(95,5,113,'2022-06-04','12:30:00 PM',5),(96,5,110,'2020-02-04','1:00:00 PM',19),(97,3,10,'2022-08-10','2:00:00 PM',4),(98,4,90,'2022-11-07','10:00:00 AM',2),(99,5,32,'2022-01-19','2:00:00 PM',5),(100,4,121,'2019-07-26','3:30:00 PM',2),(101,2,112,'2022-02-02','9:00:00 AM',3),(102,2,94,'2019-03-14','3:00:00 PM',3),(103,4,102,'2020-08-25','11:00:00 AM',2),(104,4,75,'2022-02-06','10:00:00 AM',2),(105,4,36,'2019-06-15','11:00:00 AM',2),(106,1,66,'2023-01-13','4:30:00 PM',12),(107,1,96,'2022-05-20','10:30:00 AM',1),(108,4,20,'2019-03-22','12:30:00 PM',2),(109,2,128,'2021-03-12','1:30:00 PM',3),(110,1,116,'2022-01-29','12:30:00 PM',1),(111,3,124,'2019-12-16','9:00:00 AM',4),(112,2,52,'2022-06-24','3:30:00 PM',3),(113,2,1,'2022-08-20','11:00:00 AM',3),(114,5,98,'2020-10-26','11:00:00 AM',5),(115,3,105,'2022-07-28','9:30:00 AM',4),(116,4,138,'2022-06-27','2:00:00 PM',2),(117,3,70,'2021-10-18','3:30:00 PM',4),(118,4,80,'2021-08-18','9:00:00 AM',2),(119,5,97,'2020-06-28','12:30:00 PM',5),(120,3,98,'2019-07-30','10:00:00 AM',4),(121,5,81,'2020-02-29','10:30:00 AM',5),(122,5,40,'2021-10-27','1:30:00 PM',5),(123,4,33,'2022-01-05','1:30:00 PM',2),(124,5,10,'2022-06-08','3:00:00 PM',18),(125,3,108,'2019-12-06','1:30:00 PM',17),(126,1,31,'2020-10-17','10:00:00 AM',1),(127,4,42,'2019-12-18','1:30:00 PM',13),(128,5,151,'2020-12-28','9:00:00 AM',5),(129,3,38,'2023-02-11','4:00:00 PM',4),(130,4,93,'2021-09-23','9:30:00 AM',2),(131,1,13,'2023-04-17','4:00:00 PM',6),(132,3,15,'2023-02-08','12:00:00 PM',7),(133,2,16,'2023-03-25','10:00:00 AM',8),(134,2,18,'2023-02-21','12:30:00 PM',15),(135,1,19,'2023-01-10','11:00:00 AM',6),(136,3,21,'2023-06-01','1:00:00 PM',7),(137,2,22,'2023-02-22','10:00:00 AM',8),(138,2,26,'2023-06-21','3:30:00 PM',9),(139,1,28,'2023-06-02','10:00:00 AM',6),(140,3,37,'2023-04-13','3:30:00 PM',7),(141,2,39,'2023-04-13','4:00:00 PM',8),(142,2,41,'2023-05-20','10:00:00 AM',9),(143,1,44,'2023-01-25','9:30:00 AM',12),(144,3,45,'2023-06-26','2:00:00 PM',7),(145,2,47,'2023-01-14','1:00:00 PM',8),(146,2,50,'2023-01-11','1:30:00 PM',9),(147,1,53,'2023-04-13','3:30:00 PM',6),(148,3,54,'2023-05-17','10:00:00 AM',16),(149,2,55,'2023-03-03','4:30:00 PM',8),(150,2,56,'2023-03-21','3:30:00 PM',9),(151,1,57,'2023-03-30','10:00:00 AM',6),(152,3,58,'2023-03-12','11:00:00 AM',17),(153,2,59,'2023-06-14','2:00:00 PM',8),(154,2,61,'2023-03-17','10:30:00 AM',9),(155,1,63,'2023-01-17','11:30:00 AM',6),(156,2,65,'2023-02-04','10:30:00 AM',3),(157,3,68,'2023-02-28','3:30:00 PM',4),(158,4,69,'2023-04-20','3:00:00 PM',2),(159,5,72,'2023-05-12','2:00:00 PM',5),(160,6,73,'2023-02-15','12:00:00 PM',10),(161,6,74,'2023-04-13','11:00:00 AM',20),(162,4,78,'2023-05-15','4:30:00 PM',2),(163,1,84,'2023-01-22','4:00:00 PM',1),(164,2,85,'2023-03-09','1:30:00 PM',3),(165,6,87,'2023-03-15','4:00:00 PM',10),(166,6,89,'2023-04-19','2:30:00 PM',21),(167,1,91,'2023-04-30','4:00:00 PM',1),(168,6,92,'2023-05-03','2:00:00 PM',10),(169,5,99,'2023-06-26','11:00:00 AM',5),(170,1,100,'2023-05-24','1:00:00 PM',6),(171,2,103,'2023-04-23','4:30:00 PM',15),(172,4,104,'2023-04-11','2:00:00 PM',2),(173,3,106,'2023-04-01','3:30:00 PM',7),(174,1,107,'2023-06-05','11:00:00 AM',1),(175,3,111,'2023-05-22','10:00:00 AM',16),(176,1,114,'2023-03-21','1:00:00 PM',6),(177,4,117,'2023-01-29','4:30:00 PM',2),(178,3,119,'2023-04-03','2:30:00 PM',4),(179,6,123,'2023-01-17','4:30:00 PM',11),(180,1,125,'2023-04-29','4:00:00 PM',6),(181,1,131,'2023-04-09','9:30:00 AM',1),(182,2,133,'2023-03-15','10:00:00 AM',15),(183,3,135,'2023-03-30','3:30:00 PM',7),(184,2,137,'2023-03-13','3:30:00 PM',8),(185,2,139,'2023-04-26','4:30:00 PM',3),(186,1,143,'2023-05-07','2:00:00 PM',6),(187,6,145,'2023-02-27','3:30:00 PM',11),(188,4,147,'2023-05-10','4:30:00 PM',14),(189,3,148,'2023-01-30','3:30:00 PM',17),(190,5,150,'2023-01-20','12:00:00 PM',19),(191,1,153,'2023-05-18','10:00:00 AM',1);
/*!40000 ALTER TABLE `booking8875` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog8875`
--

DROP TABLE IF EXISTS `dog8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dog8875` (
  `DogID` INT,
  `DName` VARCHAR(30) NOT NULL,
  `Sex` CHAR(1) DEFAULT NULL,
  `Size` VARCHAR(10) DEFAULT NULL,
  `OwnerID` INT NOT NULL,
  `Breed` VARCHAR(100) DEFAULT NULL,
  `PureBred` BIT DEFAULT NULL,
  `Comments` VARCHAR(60) DEFAULT NULL,
  PRIMARY KEY (`DogID`),
  KEY `fk_dog_owner` (`OwnerID`),
  CONSTRAINT `fk_dog_owner` FOREIGN KEY (`OwnerID`) REFERENCES `owner8875` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog8875`
--

LOCK TABLES `dog8875` WRITE;
/*!40000 ALTER TABLE `dog8875` DISABLE KEYS */;
INSERT INTO `dog8875` VALUES (1,'Bella','F','Small',100628392,'PETIT BRABANÃ‡ON',0,NULL),(2,'Stevie','M','Medium',666888999,'IBIZAN PODENCO',0,'lack of obedience training'),(3,'Bowie','F','Medium',666888999,'NORWEGIAN HOUND',1,'aggressive'),(4,'Spot','M','Large',999888777,'DEUTSCH STICHELHAAR',1,'shy, needs more socialising'),(5,'Howie','M','Small',111222333,'FOX TERRIER (SMOOTH)',0,'lack of obedience training'),(6,'Blob','F','Small',100628392,'PICARDY SPANIEL',1,'playfull personality'),(7,'Fluffy','F','Small',100000001,'GASCON SAINTONGEOIS',0,NULL),(8,'Lassie','F','Large',222555888,'TRANSMONTANO MASTIFF',1,NULL),(9,'Ambrosia','F','Medium',100000001,'WELSH CORGI (CARDIGAN)',0,'overweight, needs more moving tasks, more play'),(10,'Ace','M','Large',100628392,'SEALYHAM TERRIER',0,'overweight, needs more moving tasks, more play'),(11,'Digger','M','Medium',111222333,'PETIT BASSET GRIFFON VENDEEN',1,'lack of obedience training'),(12,'Radar','M','Large',145439076,'GIANT SCHNAUZER',1,'playfull personality'),(13,'Fifi','F','Medium',201777926,'BOURBONNAIS POINTING DOG',0,'shy, needs more socialising'),(14,'Scout','M','Small',222555888,'MONTENEGRIN MOUNTAIN HOUND',1,NULL),(15,'Ivy','F','Large',222555888,'AUSTRALIAN SILKY TERRIER',0,'shy, needs more socialising'),(16,'Scarlett','F','Large',244368200,'LARGE MUNSTERLANDER',0,'aggressive'),(17,'Banjo','M','Small',248798174,'PRAGUE RATTER',1,'playfull personality'),(18,'Saffron','F','Large',248798174,'ST. BERNARD',1,'playfull personality'),(19,'Queen','F','Medium',307244828,'SAINT GERMAIN POINTER',0,'shy, needs more socialising'),(20,'Pippa','F','Large',359388928,'ROMAGNA WATER DOG',1,NULL),(21,'Lucky','F','Medium',366387241,'BRITTANY SPANIEL',0,'aggressive'),(22,'Marley','F','Small',442984666,'YUGOSLAVIAN SHEPHERD DOG - SHARPLANINA',1,'overweight, needs more moving tasks, more play'),(23,'Stella','F','Small',442984666,'PARSON RUSSELL TERRIER',1,'chase-proneness'),(24,'Holly','F','Small',582875114,'KINTAMANI-BALI DOG',0,'shy, needs more socialising'),(25,'Hash','F','Large',582875114,'NORWEGIAN HOUND',0,'aggressive'),(26,'Bud','M','Medium',582875114,'AUVERGNE POINTER',1,NULL),(27,'Nibblets','F','Small',666888999,'BULLDOG',1,NULL),(28,'Donkey','M','Medium',680167380,'SHETLAND SHEEPDOG',1,'lack of obedience training'),(29,'Lucyfur','F','Medium',686232535,'DUTCH SMOUSHOND',0,'playfull personality'),(30,'Tiger','M','Large',703484143,'SCOTTISH TERRIER',1,'shy, needs more socialising'),(31,'Crookshanks','F','Medium',743558381,'COTON DE TULEAR',0,'overweight, needs more moving tasks, more play'),(32,'Princess','F','Large',746523406,'BRIARD',0,NULL),(33,'Dory','F','Medium',817991742,'TIBETAN TERRIER',0,'chase-proneness'),(34,'Spike','M','Large',824117319,'ROTTWEILER',0,'lazy'),(35,'Nugget','M','Small',835913383,'DEUTSCH STICHELHAAR',1,'overweight, needs more moving tasks, more play'),(36,'Max','M','Small',840384182,'BEARDED COLLIE',0,'lazy'),(37,'Noodles','F','Small',840384182,'GIANT SCHNAUZER',0,'playfull personality'),(38,'Scabbers','M','Small',884685989,'NEDERLANDSE KOOIKERHONDJE',0,'lazy'),(39,'Babe','F','Large',949800464,'NEWFOUNDLAND',0,'overweight, needs more moving tasks, more play'),(40,'Thelma','F','Large',949800464,'NEWFOUNDLAND',0,'lack of obedience training'),(41,'Lilo','F','Small',949800464,'SERBIAN HOUND',1,'shy, needs more socialising'),(42,'Taz','M','Medium',954874651,'AFFENPINSCHER',1,'lazy'),(43,'Milo','M','Large',990466482,'BOURBONNAIS POINTING DOG',0,'lazy'),(44,'Chewbarka','F','Medium',998137269,'DANDIE DINMONT TERRIER',1,'chase-proneness'),(45,'Dumbledog','F','Small',998137269,'AMERICAN FOXHOUND',1,'shy, needs more socialising'),(46,'Baxter','M','Large',999888777,'POLISH HUNTING DOG',1,'overweight, needs more moving tasks, more play'),(47,'Kanye Westie','M','Small',100000001,'IRISH WOLFHOUND',0,'overweight, needs more moving tasks, more play'),(48,'Lick Jagger','M','Medium',101053897,'GREAT ANGLO-FRENCH WHITE & ORANGE HOUND',1,'playfull personality'),(49,'Jude Paw','F','Large',101053897,'BERGAMASCO SHEPHERD DOG',0,'overweight, needs more moving tasks, more play'),(50,'Indiana Bones','M','Medium',101889879,'DANDIE DINMONT TERRIER',0,'shy, needs more socialising'),(51,'Afr Maul','M','Large',103973425,'SAARLOOS WOLFHOND',1,NULL),(52,'JK Growling','F','Small',111222333,'WIRE-HAIRED POINTING GRIFFON KORTHALS',1,NULL),(53,'Gryffindog','M','Medium',118240489,'AFFENPINSCHER',0,'lack of obedience training'),(54,'Furcules','M','Large',145235912,'MAJORCA SHEPHERD DOG',1,'lack of obedience training'),(55,'Bark Obama','M','Medium',145439076,'ENGLISH TOY TERRIER (BLACK &TAN)',0,'overweight, needs more moving tasks, more play'),(56,'Rowena Ravenpaw','F','Medium',149986177,'CENTRAL ASIA SHEPHERD DOG',1,'lazy'),(57,'Santa Paws','M','Large',156672615,'BULLMASTIFF',1,'aggressive'),(58,'Mary Puppins','F','Medium',180569618,'AMERICAN AKITA',0,NULL),(59,'Max','M','Small',198556032,'LEONBERGER',0,'playfull personality'),(60,'Holly','F','Small',201777926,'CROATIAN SHEPHERD DOG',1,'chase-proneness'),(61,'Marley','F','Medium',211891389,'BULLDOG',0,'lazy'),(62,'Jess','F','Large',212484422,'TRANSMONTANO MASTIFF',0,'shy, needs more socialising'),(63,'Jill','F','Large',227288133,'WHITE SWISS SHEPHERD DOG',0,'lack of obedience training'),(64,'Jack','M','Medium',227288133,'CHIHUAHUA',1,'lazy'),(65,'Marley','M','Medium',240700747,'KARST SHEPHERD DOG',1,'overweight, needs more moving tasks, more play'),(66,'Marley','M','Large',244368200,'MAREMMA AND THE ABRUZZES SHEEPDOG',1,'overweight, needs more moving tasks, more play'),(67,'Marley','M','Large',245847156,'SALUKI',1,'overweight, needs more moving tasks, more play'),(68,'Lewis','M','Medium',248798174,'TAIWAN DOG',1,'aggressive'),(69,'Marley','F','Medium',249064326,'PETIT BASSET GRIFFON VENDEEN',0,'chase-proneness'),(70,'Bob','M','Medium',249968560,'CURLY COATED RETRIEVER',0,'lazy'),(71,'Bowie','M','Medium',273265599,'SLOVAKIAN CHUVACH',1,'lack of obedience training'),(72,'Bork','M','Medium',286317997,'BOUVIER DES ARDENNES',1,'playfull personality'),(73,'Lisa','F','Medium',297213287,'CAUCASIAN SHEPHERD DOG',0,'shy, needs more socialising'),(74,'Bort','M','Small',307244828,'CIRNECO DELL\'ETNA',0,'playfull personality'),(75,'Homer','M','Small',342218660,'STABIJHOUN',1,'lazy'),(76,'Marge','F','Small',343089354,'VALENCIAN TERRIER',0,NULL),(77,'Maggie','F','Medium',347752302,'ICELANDIC SHEEPDOG',0,'overweight, needs more moving tasks, more play'),(78,'Pete','M','Small',351313660,'RAFEIRO OF ALENTEJO',0,'overweight, needs more moving tasks, more play'),(79,'Meg','F','Large',357819619,'TAIWAN DOG',0,'lack of obedience training'),(80,'Liv','F','Medium',359388928,'MINIATURE SCHNAUZER',0,'aggressive'),(81,'Love','F','Small',366387241,'AMERICAN FOXHOUND',0,'chase-proneness'),(82,'Chris','M','Medium',383948914,'DALMATIAN',0,'lack of obedience training'),(83,'Stew','M','Small',392534122,'POLISH HUNTING DOG',1,NULL),(84,'Max','M','Large',402505196,'SHIKOKU',1,'lazy'),(85,'Charlie','M','Large',413813264,'NORRBOTTENSPITZ',1,'chase-proneness'),(86,'Bella','F','Medium',430436871,'ARIEGE POINTING DOG',0,'chase-proneness'),(87,'Cooper','M','Large',442984666,'OTTERHOUND',0,'aggressive'),(88,'Luna','F','Large',470645555,'AUSTRALIAN TERRIER',0,'aggressive'),(89,'Daisy','F','Medium',476333717,'ESTONIAN HOUND',1,'playfull personality'),(90,'Lucyfur','F','Medium',487716968,'THAI BANGKAEW DOG',0,'shy, needs more socialising'),(91,'Molly','F','Large',490552850,'SWEDISH LAPPHUND',1,'lazy'),(92,'Lola','F','Large',502238373,'RAFEIRO OF ALENTEJO',0,'shy, needs more socialising'),(93,'Rocky','M','Small',508109819,'BOLOGNESE',0,'playfull personality'),(94,'Duke','M','Small',530729184,'GRAND BASSET GRIFFON VENDEEN',0,'lack of obedience training'),(95,'Sadie','F','Medium',533884020,'TIBETAN SPANIEL',0,'aggressive'),(96,'Bailey','F','Large',537427017,'WEIMARANER',0,'aggressive'),(97,'Winston','M','Large',543431919,'SIBERIAN HUSKY',1,'lazy'),(98,'Zeus','M','Large',565419542,'IRISH RED SETTER',1,'lack of obedience training'),(99,'Maggie','F','Medium',570317849,'BEAGLE',1,'lack of obedience training'),(100,'Roxy','F','Small',581276865,'AUSTRALIAN KELPIE',0,'lazy'),(101,'Coco','F','Medium',582543337,'AUSTRALIAN TERRIER',0,'chase-proneness'),(102,'Milo','M','Medium',615792320,'IRISH RED SETTER',0,'aggressive'),(103,'Toby','M','Small',615792320,'BEAGLE HARRIER',1,'playfull personality'),(104,'Bentley','M','Medium',618498154,'ROMANIAN MIORITIC SHEPHERD DOG',1,'chase-proneness'),(105,'Zoey','F','Small',632955971,'CESKY TERRIER',1,'lazy'),(106,'Finn','M','Small',637941474,'ARIEGE POINTING DOG',1,'overweight, needs more moving tasks, more play'),(107,'Diesel','M','Medium',656477295,'MAJORCA MASTIFF',1,'shy, needs more socialising'),(108,'Ace','M','Medium',680167380,'FRENCH WATER DOG',1,'chase-proneness'),(109,'Bear','M','Medium',676797566,'SCHILLERSTÃ–VARE',1,'overweight, needs more moving tasks, more play'),(110,'Gizmo','M','Small',680167380,'AZAWAKH',1,'aggressive'),(111,'Blue','M','Small',682215483,'BASENJI',1,'lazy'),(112,'Willow','F','Large',686232535,'BRIQUET GRIFFON VENDEEN',0,NULL),(113,'Hunter','M','Small',703484143,'SCHIPPERKE',0,'overweight, needs more moving tasks, more play'),(114,'Rosie','F','Large',709592732,'APPENZELL CATTLE DOG',1,'chase-proneness'),(115,'Odin','M','Small',728350242,'WHITE SWISS SHEPHERD DOG',0,'overweight, needs more moving tasks, more play'),(116,'Rusty','M','Large',730842670,'BOURBONNAIS POINTING DOG',0,'lazy'),(117,'Jasper','M','Small',740031646,'AUSTRIAN  PINSCHER',1,'aggressive'),(118,'Princess','F','Large',741538898,'CHINESE CRESTED DOG',1,NULL),(119,'Abby','F','Small',743100752,'KISHU',1,NULL),(120,'Rocco','M','Large',743558381,'BLUE PICARDY SPANIEL',0,NULL),(121,'Boomer','M','Large',746523406,'RUSSIAN-EUROPEAN LAIKA',0,'shy, needs more socialising'),(122,'Ginger','F','Medium',749212166,'BORDER COLLIE',1,'shy, needs more socialising'),(123,'Athena','F','Small',769560334,'SHIH TZU',1,'aggressive'),(124,'Ruby','F','Large',776078606,'LAKELAND TERRIER',1,'lack of obedience training'),(125,'Thor','M','Medium',785619449,'PORTUGUESE POINTING DOG',0,NULL),(126,'Pepper','F','Medium',788959894,'TIBETAN SPANIEL',0,'shy, needs more socialising'),(127,'Simba','M','Large',817991742,'SPANISH WATER DOG',1,'overweight, needs more moving tasks, more play'),(128,'Nala','F','Large',824117319,'BLOODHOUND',1,'shy, needs more socialising'),(129,'Brody','M','Large',831743250,'KINTAMANI-BALI DOG',0,'chase-proneness'),(130,'Hank','M','Large',834638647,'KLEINER MÃœNSTERLÃ„NDER',1,'shy, needs more socialising'),(131,'Shadow','M','Medium',835913383,'DALMATIAN',1,'chase-proneness'),(132,'Apollo','M','Small',840384182,'KINTAMANI-BALI DOG',1,NULL),(133,'Lily','F','Large',842747177,'SAINT GERMAIN POINTER',1,'shy, needs more socialising'),(134,'Chloe','F','Small',846036907,'ITALIAN VOLPINO',0,NULL),(135,'Tank','M','Medium',847782492,'POLISH HOUND',0,'overweight, needs more moving tasks, more play'),(136,'Murphy','M','Medium',884685989,'DEUTSCH LANGHAAR',0,'overweight, needs more moving tasks, more play'),(137,'Angel','F','Large',884977902,'BELGIAN SHEPHERD DOG',0,'overweight, needs more moving tasks, more play'),(138,'Mia','F','Small',896558905,'BROHOLMER',0,'lack of obedience training'),(139,'Sasha','F','Medium',922358669,'BEAGLE HARRIER',0,'lack of obedience training'),(140,'Riley','M','Small',928437757,'WELSH CORGI (CARDIGAN)',1,'lack of obedience training'),(141,'Ellie','F','Medium',934216411,'STAFFORDSHIRE BULL TERRIER',1,'playfull personality'),(142,'Penny','F','Medium',943487889,'DRENTSCHE PARTRIDGE DOG',1,'chase-proneness'),(143,'Caesar','M','Large',945753415,'IRISH TERRIER',1,'overweight, needs more moving tasks, more play'),(144,'Dixie','F','Large',948026840,'BORZOI - RUSSIAN HUNTING SIGHTHOUND',0,'shy, needs more socialising'),(145,'Emma','F','Small',954874651,'HAMILTONSTÃ–VARE',1,'lack of obedience training'),(146,'Leo','M','Small',954874651,'TIBETAN MASTIFF',1,NULL),(147,'Gracie','F','Large',959504993,'SHIKOKU',1,'shy, needs more socialising'),(148,'King','M','Medium',990466482,'DUTCH SHEPHERD DOG',0,'aggressive'),(149,'Maya','F','Medium',995462695,'LONG-HAIRED PYRENEAN SHEEPDOG',1,'chase-proneness'),(150,'Cleo','F','Large',997729537,'NOVA SCOTIA DUCK TOLLING RETRIEVER',1,NULL),(151,'Lulu','F','Large',998137269,'FRENCH POINTING DOG - PYRENEAN TYPE',1,'overweight, needs more moving tasks, more play'),(152,'Sophie','F','Medium',999245337,'HOVAWART',1,'lazy'),(153,'Brady','M','Medium',999761320,'CIRNECO DELL\'ETNA',0,NULL),(154,'Olive','F','Large',999888777,'JAPANESE TERRIER',1,'playfull personality');
/*!40000 ALTER TABLE `dog8875` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `event8875`
--

DROP TABLE IF EXISTS `event8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event8875` (
  `EventID` INT,
  `Description` VARCHAR(100) NOT NULL,
  `Date` DATE DEFAULT NULL,
  `Time` TIME DEFAULT NULL,
  `VenueID` INT NOT NULL,
  PRIMARY KEY (`EventID`),
  KEY `fk_event_venue` (`VenueID`),
  CONSTRAINT `fk_event_venue` FOREIGN KEY (`VenueID`) REFERENCES `venue8875` (`VenueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event8875`
--

LOCK TABLES `event8875` WRITE;
/*!40000 ALTER TABLE `event8875` DISABLE KEYS */;
INSERT INTO `event8875` VALUES (1,'Puppies Social','2019-01-15','9:00:00 AM',3),(2,'Social for dog owners at Abbotsford','2019-01-20','11:30:00 AM',1),(3,'Puppies Social','2019-02-10','2:00:00 PM',6),(4,'Social for dog owners at Altona','2019-02-13','1:30:00 PM',2),(5,'Puppies Social','2019-03-09','12:00:00 PM',1),(6,'Puppies Social','2019-03-11','10:30:00 AM',5),(7,'Social for dog owners at Brighton','2019-03-13','9:00:00 AM',3),(8,'Social for dog owners at Caulfield','2019-04-07','1:00:00 PM',4),(9,'Puppies Social','2019-04-17','11:30:00 AM',2),(10,'Social for dog owners at Keilor Downs','2019-04-27','9:00:00 AM',6),(11,'Puppies Social','2019-05-07','9:00:00 AM',4),(12,'Social for dog owners at Footscray','2019-06-21','1:00:00 PM',5),(13,'Social for dog owners at Keilor Downs','2019-07-16','9:30:00 AM',6),(14,'Puppies Social','2019-07-25','11:30:00 AM',3),(15,'Puppies Social','2019-08-05','12:30:00 PM',6),(16,'Social for dog owners at Abbotsford','2019-08-22','11:30:00 AM',1),(17,'National Dog Day','2019-08-26','9:00:00 AM',1),(18,'Social for dog owners at Brighton','2019-09-01','10:00:00 AM',3),(19,'Puppies Social','2019-09-05','9:00:00 AM',2),(20,'Puppies Social','2019-09-15','11:00:00 AM',1),(21,'Social for dog owners at Caulfield','2019-10-14','2:00:00 PM',4),(22,'Puppies Social','2019-10-25','10:30:00 AM',5),(23,'Puppies Social','2019-11-22','1:30:00 PM',4),(24,'Social for dog owners at Altona','2019-11-27','11:00:00 AM',2),(25,'Social for dog owners at Footscray','2019-12-04','11:00:00 AM',5),(26,'Social for dog owners at Abbotsford','2020-01-23','1:30:00 PM',1),(27,'Puppies Social','2020-01-27','12:00:00 PM',3),(28,'Puppies Social','2020-02-06','10:00:00 AM',6),(29,'Social for dog owners at Altona','2020-02-25','1:30:00 PM',2),(30,'Puppies Social','2020-03-03','12:00:00 PM',1),(31,'Social for dog owners at Brighton','2020-03-05','11:30:00 AM',3),(32,'Puppies Social','2020-03-27','2:00:00 PM',5),(33,'Social for dog owners at Caulfield','2020-04-02','12:00:00 PM',4),(34,'Puppies Social','2020-04-06','11:00:00 AM',2),(35,'Social for dog owners at Keilor Downs','2020-04-09','11:30:00 AM',6),(36,'Puppies Social','2020-05-15','12:00:00 PM',4),(37,'Social for dog owners at Footscray','2020-06-12','12:30:00 PM',5),(38,'Puppies Social','2020-07-06','1:00:00 PM',3),(39,'Social for dog owners at Keilor Downs','2020-07-25','9:00:00 AM',6),(40,'Puppies Social','2020-08-24','9:30:00 AM',6),(41,'National Dog Day','2020-08-26','9:00:00 AM',1),(42,'Social for dog owners at Abbotsford','2020-08-30','11:30:00 AM',1),(43,'Puppies Social','2020-09-02','9:30:00 AM',2),(44,'Puppies Social','2020-09-07','11:00:00 AM',1),(45,'Social for dog owners at Brighton','2020-09-21','12:30:00 PM',3),(46,'Puppies Social','2020-10-25','10:00:00 AM',5),(47,'Puppies Social','2020-11-07','9:00:00 AM',4),(48,'Social for dog owners at Altona','2020-11-13','11:00:00 AM',2),(49,'Social for dog owners at Caulfield','2020-11-21','9:30:00 AM',4),(50,'Social for dog owners at Footscray','2020-12-03','1:00:00 PM',5),(51,'Social for dog owners at Abbotsford','2021-01-03','9:00:00 AM',1),(52,'Puppies Social','2021-01-18','1:00:00 PM',3),(53,'Social for dog owners at Altona','2021-02-12','2:00:00 PM',2),(54,'Puppies Social','2021-02-22','9:30:00 AM',6),(55,'Puppies Social','2021-03-02','9:30:00 AM',1),(56,'Puppies Social','2021-03-16','2:00:00 PM',5),(57,'Social for dog owners at Brighton','2021-03-18','2:00:00 PM',3),(58,'Social for dog owners at Keilor Downs','2021-04-01','10:30:00 AM',6),(59,'Puppies Social','2021-04-14','1:30:00 PM',2),(60,'Social for dog owners at Caulfield','2021-04-23','10:00:00 AM',4),(61,'Puppies Social','2021-05-02','10:00:00 AM',4),(62,'Social for dog owners at Footscray','2021-06-14','1:30:00 PM',5),(63,'Puppies Social','2021-07-10','12:00:00 PM',3),(64,'Social for dog owners at Keilor Downs','2021-07-18','2:00:00 PM',6),(65,'Puppies Social','2021-08-09','11:30:00 AM',6),(66,'Social for dog owners at Abbotsford','2021-08-18','1:00:00 PM',1),(67,'National Dog Day','2021-08-26','9:00:00 AM',2),(68,'Social for dog owners at Brighton','2021-09-07','1:30:00 PM',3),(69,'Puppies Social','2021-09-20','1:30:00 PM',2),(70,'Puppies Social','2021-09-29','10:30:00 AM',1),(71,'Puppies Social','2021-10-21','1:30:00 PM',5),(72,'Social for dog owners at Caulfield','2021-11-05','12:00:00 PM',4),(73,'Social for dog owners at Altona','2021-11-10','11:00:00 AM',2),(74,'Puppies Social','2021-11-24','2:00:00 PM',4),(75,'Social for dog owners at Footscray','2021-12-02','1:30:00 PM',5),(76,'Puppies Social','2022-01-22','10:30:00 AM',3),(77,'Social for dog owners at Abbotsford','2022-01-31','1:30:00 PM',1),(78,'Puppies Social','2022-02-11','2:00:00 PM',6),(79,'Social for dog owners at Altona','2022-02-21','9:30:00 AM',2),(80,'Social for dog owners at Brighton','2022-03-18','12:00:00 PM',3),(81,'Puppies Social','2022-03-18','2:00:00 PM',5),(82,'Puppies Social','2022-03-20','9:00:00 AM',1),(83,'Social for dog owners at Caulfield','2022-04-08','9:00:00 AM',4),(84,'Social for dog owners at Keilor Downs','2022-04-18','9:00:00 AM',6),(85,'Puppies Social','2022-04-29','9:30:00 AM',2),(86,'Puppies Social','2022-05-08','12:30:00 PM',4),(87,'Social for dog owners at Footscray','2022-06-16','11:00:00 AM',5),(88,'Social for dog owners at Keilor Downs','2022-07-21','1:30:00 PM',6),(89,'Puppies Social','2022-07-30','11:30:00 AM',3),(90,'Social for dog owners at Abbotsford','2022-08-25','11:30:00 AM',1),(91,'National Dog Day','2022-08-26','9:00:00 AM',3),(92,'Puppies Social','2022-08-28','10:30:00 AM',6),(93,'Social for dog owners at Brighton','2022-09-04','12:00:00 PM',3),(94,'Puppies Social','2022-09-17','10:30:00 AM',1),(95,'Puppies Social','2022-09-19','12:30:00 PM',2),(96,'Puppies Social','2022-10-16','10:30:00 AM',5),(97,'Social for dog owners at Caulfield','2022-11-21','12:30:00 PM',4),(98,'Social for dog owners at Altona','2022-11-25','9:00:00 AM',2),(99,'Puppies Social','2022-11-29','11:30:00 AM',4),(100,'Social for dog owners at Footscray','2022-12-08','2:00:00 PM',5),(101,'Puppies Social','2023-01-05','10:30:00 AM',3),(102,'Social for dog owners at Abbotsford','2023-01-26','11:30:00 AM',1),(103,'Puppies Social','2023-02-13','11:30:00 AM',6),(104,'Social for dog owners at Altona','2023-02-25','12:30:00 PM',2),(105,'Social for dog owners at Brighton','2023-03-03','10:30:00 AM',3),(106,'Puppies Social','2023-03-06','12:30:00 PM',1),(107,'Puppies Social','2023-03-12','11:00:00 AM',5),(108,'Social for dog owners at Caulfield','2023-04-07','11:30:00 AM',4),(109,'Social for dog owners at Keilor Downs','2023-04-14','10:00:00 AM',6),(110,'Puppies Social','2023-04-28','12:00:00 PM',2),(111,'Puppies Social','2023-05-06','12:00:00 PM',4),(112,'Social for dog owners at Footscray','2023-06-24','1:00:00 PM',5),(113,'Social for dog owners at Keilor Downs','2023-07-15','9:00:00 AM',6),(114,'Puppies Social','2023-07-18','1:30:00 PM',3),(115,'Puppies Social','2023-08-04','1:30:00 PM',6),(116,'Social for dog owners at Abbotsford','2023-08-05','1:00:00 PM',1),(117,'National Dog Day','2023-08-26','9:00:00 AM',4);
/*!40000 ALTER TABLE `event8875` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner8875`
--

DROP TABLE IF EXISTS `owner8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner8875` (
  `OwnerID` INT,
  `OFirstName` VARCHAR(100) NOT NULL,
  `OLastName` VARCHAR(100) DEFAULT NULL,
  `OPhone` CHAR(10) DEFAULT NULL,
  `OEmail` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner8875`
--

LOCK TABLES `owner8875` WRITE;
/*!40000 ALTER TABLE `owner8875` DISABLE KEYS */;
INSERT INTO `owner8875` VALUES (100000001,'Tiffany','Smith','0456897898','tiff@gmail.com'),(100628392,'Danielle','Martin','0412345678','danielle.martin@gmail.com'),(101053897,'Debby','Wolfe','0457153763','debstar@hotmail.com'),(101889879,'Helen','Wilson','0414200953','helen_welen@gmail.com'),(103973425,'Aria','Roel','0406614259','ariaroel123@yahoo.com'),(111222333,'Tanya','Tipple','0455777888','ttipple@swin.edu.au'),(118240489,'Sergio','Mercury','0458914615','smercury@unimelb.edu.au'),(145235912,'Katlyn','Schmitt','0421735725','kschmitt@unimelb.edu.au'),(145439076,'Jaxon','Hughes','0456791915','jaxonhughes@gmail.com'),(149986177,'Liu','Devon','0423225606','liudevon@swin.edu.au'),(156672615,'Peter','Lewis','0478546274','peterlewis@gmail.com'),(180569618,'Pirkko','Saavedra','0469894130','pirkko@hotmail.com'),(198556032,'Diego','Braunschweiger','0430840302','diego.b_3@gmail.com'),(201777926,'Marcus','Wilson','0404483982','marcus.williams@torp.net.au'),(211891389,'Shane','Reaume','0444320733','shano_reaume@gmail.com'),(212484422,'Pedro','Cartrain','0497621208','pedro.pedro.pedro@hotmail.com'),(222555888,'Ariel','Ling','0411000222','ariellui@swin.edu.au'),(227288133,'Antonio','Schmitt','0442471610','anton_schmitt@gmail.com'),(240700747,'Jason','Delamare','0436131602','jason.del@yahoo.com'),(244368200,'Tony','Zhang','0404473319','tony_zhang@gmail.com'),(245847156,'Jennifer','Espinoza','0493119453','jenny_epy@gmail.com'),(248798174,'Isaac','Ward','0458816602','xxxisaacxxx@yahoo.com'),(249064326,'Wayne','FernÃ¡ndez','0463872206','wayno_ferno@gmail.com'),(249968560,'Janosfi','Moroni','0413797831','janosfi@hotmail.com'),(273265599,'Tyler','Batista','0460275373','tbatista@unimelb.edu.au'),(286317997,'Katlyn','Murphy','0492150517','kmurphy@swin.edu.au'),(297213287,'Philip','Freyre','0483128956','pfreyre@swin.edu.au'),(307244828,'Sadie','Edwards','0457193078','sadie@hotmail.com'),(342218660,'Kelly','Ohno','0459721987','kohno@gmail.com'),(343089354,'Rebecca','Carvalho','0428926616','rcarvalho@unimelb.edu.au'),(347752302,'Kuman','Guazzo','0401234567','kuman.guazzo@monash.edu'),(351313660,'Shirley','Hamilton','0432661574','shirley.hamilton@monash.edu'),(357819619,'Annette','Cartrain','0421992612','acartrain@unimelb.edu.au'),(359388928,'Aria','Campbell','0425145532','aria.campbell.123@hotmail.com'),(366387241,'Lily','Hoang','0453189297','lilhoang@hotmail.com'),(383948914,'Connie','MÃ¼ller','0443998855','connie_muuuuller@gmail.com'),(392534122,'Aria','Jones','0428094776','aria_jones_982@hotmail.com'),(402505196,'Shannon','Irwin','0432245709','shannon123.321@hotmail.com'),(413813264,'Marquez','Goulet','0406476930','marquez_goulet@gmail.com'),(430436871,'Fran','Cavanaugh','0416942590','francav@gmail.com'),(442984666,'Hunter','Moore','0460928738','huntermoore@gmail.com'),(470645555,'Georgette','Stevenson','0447621073','georgette_not_george@hotmail.com'),(476333717,'Janosfi','Koskitalo','0405701463','janosfi.koskitalo@yahoo.com'),(487716968,'Horace','Roel','0416017292','horace_roel_6@gmail.com'),(490552850,'Terri','Hodge','0454961445','terrihodge51@hotmail.com'),(502238373,'Maria','Tannamuri','0482874468','maria.tannamuri@hotmail.com'),(508109819,'Ann','Jones','0499240174','ann_jones@hotmail.com'),(530729184,'Lino','Donovan','0496558671','lino.donovan@hotmail.com'),(533884020,'Alicia','Martinez','0451274671','alicia_martinez@gmail.com'),(537427017,'Rita','Cowan','0477262536','rita.cowan@gmail.com'),(543431919,'Lee','Dugan','0440718701','lee_dugan_lee@hotmail.com'),(565419542,'Pam','Fletcher','0486998454','pamfletcher4@yahoo.com'),(570317849,'Janine','Carter','0406695290','janine_carter@hotmail.com'),(581276865,'Victoria','Klein','0413640562','victoriaklein@hotmail.com'),(582543337,'Carlos','Kooienga','0440976816','carloskooienga@gmail.com'),(582875114,'Sebastian','Smith','0408427650','seb.smith@hotmail.com'),(615792320,'Shelley','Carvalho','0470813900','shelleycarvalho@gmail.com'),(618498154,'Maurizio','Klein','0456257994','maurizio@hotmail.com'),(632955971,'Helvetius','Leonard','0467169507','helvetius_leonard@hotmail.com'),(637941474,'David','Nagy','0442582415','david_nagy@gmail.com'),(656477295,'Debby','Mouw','0467022773','debbymouw213@gmail.com'),(666888999,'Forrest','Gerner','0400111999','forresthello@gmail.com'),(676797566,'David','Camino','0400259427','david.camino.1985@gmail.com'),(680167380,'Harry','Thomas','0485860847','harry.hazmat@gmail.com'),(682215483,'Michael','Petersen','0458726414','michaelpetersen5013@gmail.com'),(686232535,'Ava','Green','0479108650','green5@aol.com'),(703484143,'Harry','Scott','0410347132','hairyharry@hotmail.com'),(709592732,'Daniel','Sommer','0489337672','daniel.sommer@hotmail.com'),(728350242,'Simon','MacPherson','0450570666','simon.macky@gmail.com'),(730842670,'John','Feeney','0406857925','johno_feeney@hotmail.com'),(740031646,'Curtis','Nixon','0487093171','curtis_nnnnixon@gmail.com'),(741538898,'Michael','Saylor','0479810653','michael_notasaylor@gmail.com'),(743100752,'Polly','Messner','0482405628','polly_messner@hotmail.com'),(743558381,'Isabella','Edwards','0431265543','izzy.edwards@hotmail.com'),(746523406,'Ella','Davies','0470416948','ldavies@aol.com'),(749212166,'Michelle','Vileid','0462339155','mvileid@unimelb.edu.au'),(769560334,'Mary','Nodier','0470424675','mnodier@unimelb.edu.au'),(776078606,'Alexander','Wang','0422964055','awang@swin.edu.au'),(785619449,'Teresa','Gallivan','0444445208','tgallivan@swin.edu.au'),(788959894,'Yang','Kenner','0424509445','yang_kenner@hotmail.com'),(817991742,'Isabelle','Huang','0451017293','huang.isabelle@gmail.com'),(824117319,'Jessie','Li','0414152647','jessica_li@gmail.com'),(831743250,'Reiko','Flake','0403103028','flake_reiko@gmail.com'),(834638647,'Janete','Pfeiffer','0419716053','pfeiffer_janete@gmail.com'),(835913383,'Florence','Brown','0403813389','flolow3@gmail.com'),(840384182,'charlie','Scott','0414853251','charles.scott@aol.com'),(842747177,'Miguel','Towers','0458687610','miguel.towersoveryou@hotmail.com'),(846036907,'JosÃ©','Polonia','0479123034','jose_with_a_h_polonia@hotmail.com'),(847782492,'Donald','Brooks','0453337432','donald_duckbrooks@hotmail.com'),(884685989,'Lily','Wilson','0482582890','lilylilac@yahoo.com'),(884977902,'Georgette','Cowan','0433260114','georgette.cowan@gmail.com'),(896558905,'Juan','Fonseca','0418460765','juan.fonesca@gmail.com'),(922358669,'Herb','Valdez','0489018052','herb_valdez_60@hotmail.com'),(928437757,'John','Moreno','0420077145','john.moreno@gmail.com'),(934216411,'Zbyszek','Mackenzie','0461288895','zbyszek@hotmail.com'),(943487889,'Anne','Ottlieb','0493198378','anne_ottlieb@gmail.com'),(945753415,'Chantal','McBride','0471513960','chantal_mcsingle@gmail.com'),(948026840,'Matthew','Accorti','0456675792','accorti_to_matthew@gmail.com'),(949800464,'Olivia','Lewis','0408641843','olivewis@aol.com'),(954874651,'Olivia','Wood','0481307395','verna15@hotmail.com'),(959504993,'Isabel','Towers','0425855280','isabel.towers.3@gmail.com'),(990466482,'Harriet','Lee','0475634134','harrietlee91@gmail.com'),(995462695,'Aaron','Mendel','0451363726','aaron.mendel.2@hotmail.com'),(997729537,'Liam','Black','0499307722','liam_black517@hotmail.com'),(998137269,'Violet','Nguyen','0412701301','violet.nguyen@gmail.com'),(999245337,'Sven','Mackenzie','0486626806','scen_mackenzie@gmail.com'),(999761320,'Guillermo','Rovelli','0479142497','guillermo_rovelli_40@gmail.com'),(999888777,'Bobby','Nguyen','0421321321','bob@gmail.com');
/*!40000 ALTER TABLE `owner8875` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services8875`
--

DROP TABLE IF EXISTS `services8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services8875` (
  `ID` INT,
  `PackageName` VARCHAR(30) NOT NULL,
  `Description` TEXT,
  `RecommendedNumSessions` INT NOT NULL,
  `GroupLessonCost` INT DEFAULT NULL,
  `IndividualLessonCost` INT DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services8875`
--

LOCK TABLES `services8875` WRITE;
/*!40000 ALTER TABLE `services8875` DISABLE KEYS */;
INSERT INTO `services8875` VALUES (1,'Puppy pre-school','socialisation and learning about the world',6,30,40),(2,'Beginner obedience',' designed for dogs between 4-12 months teaching them to engage with the owner even when there are distractions',4,40,60),(3,'Intermediate obedience',NULL,5,50,80),(4,'Advanced obedience',NULL,5,50,80),(5,'Adolescent Training',NULL,4,50,90),(6,'Problem solving',NULL,2,NULL,90);
/*!40000 ALTER TABLE `services8875` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicesrequested8875`
--

DROP TABLE IF EXISTS `servicesrequested8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicesrequested8875` (
  `ServiceID` INT,
  `BookingID` INT,
  PRIMARY KEY (`ServiceID`,`BookingID`),
  KEY `fk_servicesrequested_service` (`ServiceID`),
  KEY `fk_servicesrequested_booking` (`BookingID`),
  CONSTRAINT `fk_servicesrequested_booking` FOREIGN KEY (`BookingID`) REFERENCES `booking8875` (`BookingID`),
  CONSTRAINT `fk_servicesrequested_service` FOREIGN KEY (`ServiceID`) REFERENCES `services8875` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicesrequested8875`
--

LOCK TABLES `servicesrequested8875` WRITE;
/*!40000 ALTER TABLE `servicesrequested8875` DISABLE KEYS */;
INSERT INTO `servicesrequested8875` VALUES (1,1),(4,1),(5,1),(2,2),(3,3),(4,3),(5,3),(4,4),(5,4),(6,4),(1,5),(5,6),(1,7),(4,7),(5,7),(4,8),(6,8),(2,9),(3,9),(2,10),(3,10),(3,11),(5,11),(2,12),(3,13),(6,14),(3,15),(2,16),(3,17),(3,18),(1,19),(3,19),(5,19),(1,20),(5,21),(6,22),(2,23),(1,24),(2,24),(6,25),(2,26),(3,27),(6,28),(5,29),(3,30),(6,31),(3,32),(2,33),(3,34),(2,35),(3,35),(4,36),(5,37),(1,38),(3,39),(6,40),(1,41),(5,42),(3,43),(6,44),(2,45),(3,46),(5,47),(5,48),(3,48),(6,48),(5,49),(1,50),(5,51),(3,52),(4,53),(6,54),(4,55),(5,56),(1,57),(2,57),(4,58),(6,59),(1,60),(6,61),(4,62),(3,63),(3,64),(4,64),(5,64),(4,65),(2,66),(1,67),(1,68),(4,68),(5,68),(1,69),(2,69),(4,70),(5,71),(3,72),(3,73),(4,74),(3,75),(3,76),(6,77),(3,78),(6,79),(2,80),(4,80),(5,80),(1,81),(1,82),(6,83),(1,84),(3,85),(4,86),(3,87),(6,88),(1,89),(5,89),(2,90),(2,91),(5,92),(4,93),(6,93),(2,94),(6,95),(6,96),(5,97),(3,98),(5,99),(5,100),(5,101),(1,102),(3,103),(3,104),(5,104),(6,104),(5,105),(6,106),(3,107),(2,108),(5,109),(6,110),(3,111),(4,111),(1,112),(3,113),(5,114),(1,115),(1,116),(5,116),(6,116),(1,117),(2,118),(2,119),(1,120),(3,121),(5,122),(5,123),(2,124),(4,124),(2,125),(4,125),(1,126),(3,126),(6,126),(1,127),(3,127),(6,127),(1,128),(5,128),(6,128),(2,129),(4,129),(2,130),(5,130),(4,131),(6,132),(2,133),(6,134),(4,135),(3,136),(2,137),(3,137),(4,137),(6,138),(2,139),(4,140),(4,141),(1,142),(5,143),(4,144),(1,145),(1,146),(5,147),(6,147),(5,148),(6,149),(1,150),(3,150),(1,151),(3,152),(2,153),(4,154),(1,155),(3,156),(2,157),(1,158),(2,159),(5,159),(1,160),(1,161),(3,161),(5,162),(6,162),(6,163),(1,164),(4,165),(3,166),(6,167),(5,168),(6,169),(4,170),(5,171),(6,172),(4,173),(1,174),(1,175),(1,176),(1,177),(2,178),(3,179),(5,180),(1,181),(2,182),(1,183),(4,183),(4,184),(6,185),(6,186),(4,187),(6,187),(2,188),(2,189),(5,190),(6,191);
/*!40000 ALTER TABLE `servicesrequested8875` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer8875`
--

DROP TABLE IF EXISTS `trainer8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer8875` (
  `StaffID` INT,
  `VenueID` INT NOT NULL,
  `SFirstName` VARCHAR(100) NOT NULL,
  `SLastName` VARCHAR(100) DEFAULT NULL,
  `SPhone` CHAR(10) DEFAULT NULL,
  `SEmail` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`StaffID`),
  KEY `fk_trainer_venue` (`VenueID`),
  CONSTRAINT `fk_trainer_venue` FOREIGN KEY (`VenueID`) REFERENCES `venue8875` (`VenueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer8875`
--

LOCK TABLES `trainer8875` WRITE;
/*!40000 ALTER TABLE `trainer8875` DISABLE KEYS */;
INSERT INTO `trainer8875` VALUES (1,1,'Jacinda','Ardern','0417666555','jacindapm@arden.nz'),(2,4,'Justin','Trudeau','0466789222','juzzy420@sicco.ca'),(3,2,'Ryan','Letourneau','0421678987','northernlion@hotmail.com'),(4,3,'Kate','Letourneau','0421789789','katelovelymomo@hotmail.com'),(5,5,'Dan','Gheesling','0468789456','gheesling@twitch.com'),(6,1,'Brian','Figlet','0491820755','brianfiglover@gmail.com'),(7,3,'Sally','McDougal','0458224981','scottishsally3@hotmail.com'),(8,2,'Sophie','Nguyen','0469114411','nuggetnguyen@yahoo.com'),(9,2,'Blanche','Tong','0455511190','blanche_tong@gmail.com'),(10,6,'Isabella','Anderson','0415688390','isabella.anderson@gmail.com'),(11,6,'Oliver','Mitchell','0423234591','oliver_mitchell@yahoo.com'),(12,1,'Jessie','Zhang','0458684888','jessiezhang@gmail.com'),(13,4,'Eva','Thompson','0416677993','evathompson@gmail.com'),(14,4,'Andy','McDonald','0444556677','andy.mcdonald@yahoo.com'),(15,2,'Jackson','Ma','0416742938','jacksonma@hotmail.com'),(16,3,'Hugo','Champion','0465329817','hugo_champ1@gmail.com'),(17,3,'Zoe','Taylor','0454521635','taylor.zoe@gmail.com'),(18,5,'Emilia','Wu','0495846230','.emilia.wu.@hotmail.com'),(19,5,'Dylan','Langley','0405069870','dylangley12@gmail.com'),(20,6,'Kate','Hansit','0471246579','kate__hansit@gmail.com'),(21,6,'Jasmine','Farquad','0484975612','notlordjasminefarquad@hotmail.com');
/*!40000 ALTER TABLE `trainer8875` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Table structure for table `venue8875`
--

DROP TABLE IF EXISTS `venue8875`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue8875` (
  `VenueID` INT,
  `Suburb` VARCHAR(40) NOT NULL,
  `StreetAddress` VARCHAR(125) NOT NULL,
  `Postcode` CHAR(4) NOT NULL,
  `DogPark` VARCHAR(60) DEFAULT NULL,
  PRIMARY KEY (`VenueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue8875`
--

LOCK TABLES `venue8875` WRITE;
/*!40000 ALTER TABLE `venue8875` DISABLE KEYS */;
INSERT INTO `venue8875` VALUES (1,'Abbotsford','43 Turner Street','3067','Victoria Park'),(2,'Altona','Altona Road','3018','Altona Dog Beach'),(3,'Brighton','3 Esplanade Avenue','3186','Brighton Dog Beach'),(4,'Caulfield','1 Booran Rd','3162','Pawfield Park'),(5,'Footscray','12 Hoadley Ct','3011','Footscray Park'),(6,'Keilor Downs','9 Homestead Drive','3038','Green Gully Reserve');
/*!40000 ALTER TABLE `venue8875` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24 14:39:45
