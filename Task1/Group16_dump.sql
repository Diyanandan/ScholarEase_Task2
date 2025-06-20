-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ScholarEase
-- ------------------------------------------------------
-- Server version	8.0.36

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

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` int DEFAULT NULL,
  `Admin_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Scholarship_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Scholarship_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH001'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH002'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH003'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH004'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH005'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH006'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH007'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH008'),(1,'Rahul Sharma','rahul.sharma@example.com','9876543210','SCH009'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH010'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH011'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH012'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH013'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH014'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH015'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH016'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH017'),(2,'Priya Mehta','priya.mehta@example.com','9876543211','SCH018'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH019'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH020'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH021'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH022'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH023'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH024'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH025'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH026'),(3,'Amit Patel','amit.patel@example.com','9876543212','SCH027'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH028'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH029'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH030'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH031'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH032'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH033'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH034'),(4,'Neha Verma','neha.verma@example.com','9876543213','SCH035');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnidonations`
--

DROP TABLE IF EXISTS `alumnidonations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnidonations` (
  `Alumni_Name` varchar(255) NOT NULL,
  `Scholarship_Name` varchar(100) NOT NULL,
  `Amount` decimal(12,2) NOT NULL,
  PRIMARY KEY (`Alumni_Name`,`Scholarship_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnidonations`
--

LOCK TABLES `alumnidonations` WRITE;
/*!40000 ALTER TABLE `alumnidonations` DISABLE KEYS */;
INSERT INTO `alumnidonations` VALUES ('Amit Patel','Research Scholarship',60000.00),('Anjali Gupta','Academic Achievement Scholarship',90000.00),('Arjun Nair','International Scholarship',72000.00),('Neha Verma','Leadership Scholarship',85000.00),('Pooja Iyer','Sports Scholarship',80000.00),('Priya Mehta','Excellence Scholarship',75000.00),('Rahul Sharma','Merit Scholarship',50000.00),('Sonia Kapoor','Cultural Scholarship',65000.00),('Suresh Raina','Innovation Scholarship',70000.00),('Vikram Singh','Community Service Scholarship',55000.00);
/*!40000 ALTER TABLE `alumnidonations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `Application_ID` int NOT NULL,
  `Student_ID` int NOT NULL,
  `Funding_ID` varchar(10) NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `Student_Gender` enum('Male','Female','Other') NOT NULL,
  `Student_Annual_Income` decimal(10,2) DEFAULT NULL,
  `Student_CPI` decimal(3,2) DEFAULT NULL,
  `Submission_Date` date DEFAULT NULL,
  PRIMARY KEY (`Application_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `Funding_ID` (`Funding_ID`),
  CONSTRAINT `application_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`),
  CONSTRAINT `application_ibfk_2` FOREIGN KEY (`Funding_ID`) REFERENCES `scholarship` (`Funding_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (10001,101,'SCH001','Aarav Sharma','Male',500000.00,8.20,'2025-02-01'),(10002,106,'SCH005','Meera Iyer','Female',400000.00,8.70,'2025-02-05'),(10003,112,'SCH010','Neha Chauhan','Female',290000.00,8.90,'2025-02-07'),(10004,119,'SCH003','Amit Desai','Male',560000.00,8.30,'2025-02-10'),(10005,125,'SCH015','Anirudh Saxena','Male',710000.00,7.00,'2025-02-12'),(10006,132,'SCH020','Simran Kaur','Female',270000.00,9.60,'2025-02-15'),(10007,109,'SCH008','Siddharth Menon','Male',550000.00,8.40,'2025-02-18'),(10008,141,'SCH022','Rajat Kapoor','Male',520000.00,8.00,'2025-02-20'),(10009,147,'SCH019','Gaurav Joshi','Male',550000.00,8.20,'2025-02-22'),(10010,118,'SCH011','Riya Kapoor','Female',310000.00,9.20,'2025-02-25'),(10011,130,'SCH024','Aishwarya Reddy','Female',460000.00,7.80,'2025-02-27'),(10012,103,'SCH002','Rohan Gupta','Male',600000.00,7.80,'2025-02-28'),(10013,114,'SCH006','Sneha Joshi','Female',370000.00,8.80,'2025-03-02'),(10014,127,'SCH013','Saurabh Ghosh','Male',540000.00,8.20,'2025-03-05'),(10015,135,'SCH018','Ritik Agarwal','Male',690000.00,7.20,'2025-03-07'),(10016,108,'SCH017','Pooja Deshmukh','Female',320000.00,9.30,'2025-03-10'),(10017,120,'SCH014','Divya Nair','Female',470000.00,7.60,'2025-03-12'),(10018,143,'SCH012','Ashwin Reddy','Male',580000.00,7.60,'2025-03-15'),(10019,102,'SCH007','Ishita Verma','Female',300000.00,9.10,'2025-03-18'),(10020,136,'SCH004','Juhi Sharma','Female',440000.00,8.80,'2025-03-20'),(10021,110,'SCH009','Kriti Bansal','Female',480000.00,7.90,'2025-03-22'),(10022,123,'SCH025','Kunal Sinha','Male',630000.00,7.40,'2025-03-25'),(10023,145,'SCH023','Kabir Nair','Male',610000.00,7.50,'2025-03-28'),(10024,104,'SCH016','Ananya Singh','Female',250000.00,8.50,'2025-03-30'),(10025,133,'SCH021','Manish Choudhary','Male',620000.00,7.50,'2025-04-02'),(10026,146,'SCH009','Shruti Verma','Female',430000.00,8.70,'2025-04-05'),(10027,111,'SCH005','Rajesh Kumar','Male',530000.00,7.50,'2025-04-07'),(10028,138,'SCH015','Ruchi Saxena','Female',330000.00,9.10,'2025-04-10'),(10029,117,'SCH020','Yashwant Singh','Male',520000.00,8.10,'2025-04-12'),(10030,142,'SCH003','Sanya Malhotra','Female',310000.00,9.30,'2025-04-15'),(10031,105,'SCH001','Devansh Patel','Male',700000.00,7.20,'2025-04-18'),(10032,129,'SCH006','Deepak Jha','Male',580000.00,8.50,'2025-04-20'),(10033,122,'SCH011','Swati Rao','Female',280000.00,9.40,'2025-04-22'),(10034,144,'SCH019','Tanvi Sharma','Female',400000.00,8.90,'2025-04-25'),(10035,107,'SCH008','Aditya Rao','Male',500000.00,8.00,'2025-04-28'),(10036,137,'SCH002','Varun Mehta','Male',550000.00,8.30,'2025-04-30'),(10037,126,'SCH010','Rachna Tiwari','Female',430000.00,8.90,'2025-05-02'),(10038,140,'SCH007','Nidhi Tandon','Female',450000.00,7.70,'2025-05-05'),(10039,116,'SCH013','Priya Mehta','Female',420000.00,9.00,'2025-05-07'),(10040,128,'SCH022','Pallavi Das','Female',300000.00,9.50,'2025-05-10'),(10041,150,'SCH002','Ravi Sharma','Male',450000.00,8.40,'2025-05-12'),(10042,151,'SCH004','Neelam Verma','Female',370000.00,8.70,'2025-05-15'),(10043,152,'SCH005','Aniket Kumar','Male',520000.00,7.90,'2025-05-18'),(10044,153,'SCH009','Meghna Singh','Female',310000.00,9.10,'2025-05-20'),(10045,154,'SCH012','Sanjay Rao','Male',600000.00,7.60,'2025-05-22'),(10046,155,'SCH016','Nikita Kapoor','Female',290000.00,8.80,'2025-05-25'),(10047,156,'SCH017','Adarsh Yadav','Male',500000.00,8.00,'2025-05-28'),(10048,157,'SCH018','Ritika Tiwari','Female',400000.00,9.20,'2025-06-01'),(10049,158,'SCH019','Karthik Nair','Male',430000.00,7.50,'2025-06-05'),(10050,159,'SCH021','Shreya Iyer','Female',320000.00,9.40,'2025-06-10'),(10051,160,'SCH023','Anubhav Sinha','Male',550000.00,7.70,'2025-06-12'),(10052,161,'SCH024','Vaishali Das','Female',310000.00,9.30,'2025-06-15'),(10053,162,'SCH025','Nilesh Gupta','Male',470000.00,8.50,'2025-06-18'),(10054,163,'SCH003','Swastika Bose','Female',420000.00,9.10,'2025-06-20'),(10055,164,'SCH007','Ajay Choudhary','Male',530000.00,7.80,'2025-06-22'),(10056,165,'SCH010','Pallavi Khanna','Female',390000.00,9.00,'2025-06-25'),(10057,166,'SCH014','Rohan Deshmukh','Male',560000.00,7.60,'2025-06-28'),(10058,167,'SCH015','Avni Jha','Female',280000.00,9.40,'2025-07-01'),(10059,168,'SCH018','Rishi Patel','Male',520000.00,7.90,'2025-07-05'),(10060,169,'SCH020','Shruti Saxena','Female',470000.00,8.30,'2025-07-10');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_details` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Application_ID` int NOT NULL,
  `Scholarship_ID` varchar(10) NOT NULL,
  `Bank_Account_Holder_Name` varchar(255) NOT NULL,
  `Bank_Account_Number` varchar(20) NOT NULL,
  `IFSC_Code` varchar(15) NOT NULL,
  `Bank_Name` varchar(255) NOT NULL,
  `Branch_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Student_Name`),
  UNIQUE KEY `Bank_Account_Number` (`Bank_Account_Number`),
  KEY `Application_ID` (`Application_ID`),
  KEY `Scholarship_ID` (`Scholarship_ID`),
  CONSTRAINT `bank_details_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`) ON DELETE CASCADE,
  CONSTRAINT `bank_details_ibfk_2` FOREIGN KEY (`Application_ID`) REFERENCES `application` (`Application_ID`) ON DELETE CASCADE,
  CONSTRAINT `bank_details_ibfk_3` FOREIGN KEY (`Scholarship_ID`) REFERENCES `scholarship` (`Funding_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (102,'Ishita Verma',10019,'SCH007','Ishita Verma','12345102','PNB0006543','Punjab National Bank','Delhi Connaught Place Branch'),(104,'Ananya Singh',10024,'SCH016','Ananya Singh','12345104','HDFC0003344','HDFC Bank','Bangalore MG Road Branch'),(106,'Meera Iyer',10002,'SCH005','Meera Iyer','12345106','HDFC0001234','HDFC Bank','Bangalore MG Road Branch'),(108,'Pooja Deshmukh',10016,'SCH017','Pooja Deshmukh','12345108','HDFC0002468','HDFC Bank','Bangalore MG Road Branch'),(110,'Kriti Bansal',10021,'SCH009','Kriti Bansal','12345110','BOB0002233','Bank of Baroda','Hyderabad Banjara Hills Branch'),(112,'Neha Chauhan',10003,'SCH010','Neha Chauhan','12345112','ICIC0005678','ICICI Bank','Mumbai Andheri Branch'),(114,'Sneha Joshi',10013,'SCH006','Sneha Joshi','12345114','BOB0005555','Bank of Baroda','Hyderabad Banjara Hills Branch'),(116,'Priya Mehta',10039,'SCH013','Priya Mehta','12345116','PNB0003030','Punjab National Bank','Delhi Connaught Place Branch'),(117,'Yashwant Singh',10029,'SCH020','Yashwant Singh','12345117','PNB0006677','Punjab National Bank','Delhi Connaught Place Branch'),(118,'Riya Kapoor',10010,'SCH011','Riya Kapoor','12345118','AXIS0009876','Axis Bank','Chennai T. Nagar Branch'),(119,'Amit Desai',10004,'SCH003','Amit Desai','12345119','SBIN0004321','State Bank of India','Ahmedabad Branch'),(120,'Divya Nair',10017,'SCH014','Divya Nair','12345120','ICIC0001357','ICICI Bank','Mumbai Andheri Branch'),(122,'Swati Rao',10033,'SCH011','Swati Rao','12345122','HDFC0009900','HDFC Bank','Bangalore MG Road Branch'),(126,'Rachna Tiwari',10037,'SCH010','Rachna Tiwari','12345126','SBIN0002020','State Bank of India','Ahmedabad Branch'),(128,'Pallavi Das',10040,'SCH022','Pallavi Das','12345128','AXIS0004040','Axis Bank','Chennai T. Nagar Branch'),(129,'Deepak Jha',10032,'SCH006','Deepak Jha','12345129','BOB0008899','Bank of Baroda','Hyderabad Banjara Hills Branch'),(132,'Simran Kaur',10006,'SCH020','Simran Kaur','12345132','PNB0007890','Punjab National Bank','Delhi Connaught Place Branch'),(136,'Juhi Sharma',10020,'SCH004','Juhi Sharma','12345136','AXIS0001122','Axis Bank','Chennai T. Nagar Branch'),(138,'Ruchi Saxena',10028,'SCH015','Ruchi Saxena','12345138','SBIN0005566','State Bank of India','Ahmedabad Branch'),(142,'Sanya Malhotra',10030,'SCH003','Sanya Malhotra','12345142','AXIS0007788','Axis Bank','Chennai T. Nagar Branch'),(143,'Ashwin Reddy',10018,'SCH012','Ashwin Reddy','12345143','SBIN0009871','State Bank of India','Ahmedabad Branch'),(144,'Tanvi Sharma',10034,'SCH019','Tanvi Sharma','12345144','ICIC0001010','ICICI Bank','Mumbai Andheri Branch'),(146,'Shruti Verma',10026,'SCH009','Shruti Verma','12345146','ICIC0004455','ICICI Bank','Mumbai Andheri Branch'),(150,'Rahul Sharma',10042,'SCH026','Rahul Sharma','12345150','HDFC0005050','HDFC Bank','Pune Shivaji Nagar Branch'),(154,'Amit Patel',10044,'SCH028','Amit Patel','12345154','SBIN0007070','State Bank of India','Surat Ring Road Branch'),(156,'Neha Verma',10045,'SCH029','Neha Verma','12345156','PNB0008080','Punjab National Bank','Jaipur Civil Lines Branch'),(158,'Suresh Raina',10046,'SCH030','Suresh Raina','12345158','AXIS0009090','Axis Bank','Lucknow Hazratganj Branch'),(160,'Anjali Gupta',10047,'SCH031','Anjali Gupta','12345160','BOB0010101','Bank of Baroda','Chandigarh Sector 17 Branch'),(162,'Vikram Singh',10048,'SCH032','Vikram Singh','12345162','HDFC0011111','HDFC Bank','Bhopal MP Nagar Branch'),(166,'Arjun Nair',10050,'SCH034','Arjun Nair','12345166','SBIN0013131','State Bank of India','Mumbai Fort Branch'),(168,'Sonia Kapoor',10051,'SCH035','Sonia Kapoor','12345168','PNB0014141','Punjab National Bank','New Delhi Karol Bagh Branch');
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_details`
--

DROP TABLE IF EXISTS `college_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_details` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `Age` int NOT NULL,
  `Program` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contact_No` varchar(15) NOT NULL,
  `Annual_Income` decimal(10,2) NOT NULL,
  `CPI` decimal(3,2) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Contact_No` (`Contact_No`),
  CONSTRAINT `college_details_chk_1` CHECK ((`Age` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_details`
--

LOCK TABLES `college_details` WRITE;
/*!40000 ALTER TABLE `college_details` DISABLE KEYS */;
INSERT INTO `college_details` VALUES (101,'Aarav Sharma',19,'B.Tech','Civil Engineering','Male','aarav.sharma@example.com','9876543210',500000.00,8.20,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(102,'Ishita Verma',20,'B.Tech','Computer Science','Female','ishita.verma@example.com','9876543211',300000.00,9.10,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(103,'Rohan Gupta',21,'B.Tech','Mechanical Engineering','Male','rohan.gupta@example.com','9876543212',600000.00,7.80,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(104,'Ananya Singh',22,'B.Tech','Electrical Engineering','Female','ananya.singh@example.com','9876543213',250000.00,8.50,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(105,'Devansh Patel',19,'B.Tech','Chemical Engineering','Male','devansh.patel@example.com','9876543214',700000.00,7.20,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(106,'Meera Iyer',20,'B.Tech','Civil Engineering','Female','meera.iyer@example.com','9876543215',400000.00,8.70,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(107,'Aditya Rao',21,'B.Tech','Computer Science','Male','aditya.rao@example.com','9876543216',500000.00,8.00,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(108,'Pooja Deshmukh',22,'B.Tech','Mechanical Engineering','Female','pooja.deshmukh@example.com','9876543217',320000.00,9.30,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(109,'Siddharth Menon',19,'B.Tech','Electrical Engineering','Male','siddharth.menon@example.com','9876543218',550000.00,8.40,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(110,'Kriti Bansal',20,'B.Tech','Chemical Engineering','Female','kriti.bansal@example.com','9876543219',480000.00,7.90,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(111,'Rajesh Kumar',21,'B.Tech','Civil Engineering','Male','rajesh.kumar@example.com','9876543220',530000.00,7.50,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(112,'Neha Chauhan',22,'B.Tech','Computer Science','Female','neha.chauhan@example.com','9876543221',290000.00,8.90,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(113,'Harsh Vardhan',19,'B.Tech','Mechanical Engineering','Male','harsh.vardhan@example.com','9876543222',640000.00,7.30,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(114,'Sneha Joshi',20,'B.Tech','Electrical Engineering','Female','sneha.joshi@example.com','9876543223',370000.00,8.80,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(115,'Nitin Kumar',21,'B.Tech','Chemical Engineering','Male','nitin.kumar@example.com','9876543224',720000.00,7.10,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(116,'Priya Mehta',22,'B.Tech','Civil Engineering','Female','priya.mehta@example.com','9876543225',420000.00,9.00,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(117,'Yashwant Singh',19,'B.Tech','Computer Science','Male','yashwant.singh@example.com','9876543226',520000.00,8.10,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(118,'Riya Kapoor',20,'B.Tech','Mechanical Engineering','Female','riya.kapoor@example.com','9876543227',310000.00,9.20,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(119,'Amit Desai',21,'B.Tech','Electrical Engineering','Male','amit.desai@example.com','9876543228',560000.00,8.30,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(120,'Divya Nair',22,'B.Tech','Chemical Engineering','Female','divya.nair@example.com','9876543229',470000.00,7.60,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(121,'Vikas Anand',19,'B.Tech','Civil Engineering','Male','vikas.anand@example.com','9876543230',510000.00,8.00,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(122,'Swati Rao',20,'B.Tech','Computer Science','Female','swati.rao@example.com','9876543231',280000.00,9.40,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(123,'Kunal Sinha',21,'B.Tech','Mechanical Engineering','Male','kunal.sinha@example.com','9876543232',630000.00,7.40,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(124,'Tanya Malhotra',22,'B.Tech','Electrical Engineering','Female','tanya.malhotra@example.com','9876543233',350000.00,8.60,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(125,'Anirudh Saxena',19,'B.Tech','Chemical Engineering','Male','anirudh.saxena@example.com','9876543234',710000.00,7.00,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(126,'Rachna Tiwari',20,'B.Tech','Civil Engineering','Female','rachna.tiwari@example.com','9876543235',430000.00,8.90,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(127,'Saurabh Ghosh',21,'B.Tech','Computer Science','Male','saurabh.ghosh@example.com','9876543236',540000.00,8.20,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(128,'Pallavi Das',22,'B.Tech','Mechanical Engineering','Female','pallavi.das@example.com','9876543237',300000.00,9.50,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(129,'Deepak Jha',19,'B.Tech','Electrical Engineering','Male','deepak.jha@example.com','9876543238',580000.00,8.50,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(130,'Aishwarya Reddy',20,'B.Tech','Chemical Engineering','Female','aishwarya.reddy@example.com','9876543239',460000.00,7.80,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(131,'Tarun Kapoor',21,'B.Tech','Civil Engineering','Male','tarun.kapoor@example.com','9876543240',490000.00,7.70,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(132,'Simran Kaur',22,'B.Tech','Computer Science','Female','simran.kaur@example.com','9876543241',270000.00,9.60,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(133,'Manish Choudhary',19,'B.Tech','Mechanical Engineering','Male','manish.choudhary@example.com','9876543242',620000.00,7.50,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(134,'Bhavya Nanda',20,'B.Tech','Electrical Engineering','Female','bhavya.nanda@example.com','9876543243',340000.00,8.70,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(135,'Ritik Agarwal',21,'B.Tech','Chemical Engineering','Male','ritik.agarwal@example.com','9876543244',690000.00,7.20,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(136,'Juhi Sharma',22,'B.Tech','Civil Engineering','Female','juhi.sharma@example.com','9876543245',440000.00,8.80,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(137,'Varun Mehta',19,'B.Tech','Computer Science','Male','varun.mehta@example.com','9876543246',550000.00,8.30,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(138,'Ruchi Saxena',20,'B.Tech','Mechanical Engineering','Female','ruchi.saxena@example.com','9876543247',330000.00,9.10,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(139,'Vivek Thakur',21,'B.Tech','Electrical Engineering','Male','vivek.thakur@example.com','9876543248',600000.00,7.90,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(140,'Nidhi Tandon',22,'B.Tech','Chemical Engineering','Female','nidhi.tandon@example.com','9876543249',450000.00,7.70,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(141,'Rajat Kapoor',19,'B.Tech','Civil Engineering','Male','rajat.kapoor@example.com','9876543250',520000.00,8.00,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(142,'Sanya Malhotra',20,'B.Tech','Computer Science','Female','sanya.malhotra@example.com','9876543251',310000.00,9.30,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(143,'Ashwin Reddy',21,'B.Tech','Mechanical Engineering','Male','ashwin.reddy@example.com','9876543252',580000.00,7.60,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(144,'Tanvi Sharma',22,'B.Tech','Electrical Engineering','Female','tanvi.sharma@example.com','9876543253',400000.00,8.90,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(145,'Kabir Nair',19,'B.Tech','Chemical Engineering','Male','kabir.nair@example.com','9876543254',610000.00,7.50,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(146,'Shruti Verma',20,'B.Tech','Civil Engineering','Female','shruti.verma@example.com','9876543255',430000.00,8.70,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(147,'Gaurav Joshi',21,'B.Tech','Computer Science','Male','gaurav.joshi@example.com','9876543256',550000.00,8.20,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(148,'Anjali Mishra',22,'B.Tech','Mechanical Engineering','Female','anjali.mishra@example.com','9876543257',350000.00,9.20,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(149,'Rohan Saxena',19,'B.Tech','Electrical Engineering','Male','rohan.saxena@example.com','9876543258',590000.00,7.80,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(150,'Megha Chaturvedi',20,'B.Tech','Chemical Engineering','Female','megha.chaturvedi@example.com','9876543259',470000.00,7.90,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(151,'Naman Arora',21,'B.Tech','Civil Engineering','Male','naman.arora@example.com','9876543260',530000.00,7.80,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(152,'Sakshi Jain',22,'B.Tech','Computer Science','Female','sakshi.jain@example.com','9876543261',290000.00,9.00,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(153,'Vivek Kumar',19,'B.Tech','Mechanical Engineering','Male','vivek.kumar@example.com','9876543262',620000.00,7.40,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(154,'Isha Patel',20,'B.Tech','Electrical Engineering','Female','isha.patel@example.com','9876543263',360000.00,8.70,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(155,'Harshit Mehta',21,'B.Tech','Chemical Engineering','Male','harshit.mehta@example.com','9876543264',690000.00,7.30,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(156,'Ananya Roy',22,'B.Tech','Civil Engineering','Female','ananya.roy@example.com','9876543265',450000.00,8.80,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(157,'Tushar Bansal',19,'B.Tech','Computer Science','Male','tushar.bansal@example.com','9876543266',540000.00,8.10,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(158,'Ritika Sharma',20,'B.Tech','Mechanical Engineering','Female','ritika.sharma@example.com','9876543267',320000.00,9.10,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(159,'Arjun Nair',21,'B.Tech','Electrical Engineering','Male','arjun.nair@example.com','9876543268',610000.00,7.90,'https://menlocoa.org/wp-content/uploads/2012/10/Tinyen-RSp.jpg'),(160,'Neelam Tiwari',22,'B.Tech','Chemical Engineering','Female','neelam.tiwari@example.com','9876543269',470000.00,7.80,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(161,'Rohan Malhotra',19,'B.Tech','Civil Engineering','Male','rohan.malhotra@example.com','9876543270',500000.00,8.00,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(162,'Sneha Gupta',20,'B.Tech','Computer Science','Female','sneha.gupta@example.com','9876543271',280000.00,9.50,'https://static8.depositphotos.com/1008303/880/i/450/depositphotos_8803246-stock-photo-asian-college-student.jpg'),(163,'Ankit Singh',21,'B.Tech','Mechanical Engineering','Male','ankit.singh@example.com','9876543272',640000.00,7.20,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(164,'Meenal Joshi',22,'B.Tech','Electrical Engineering','Female','meenal.joshi@example.com','9876543273',350000.00,8.60,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(165,'Sumit Verma',19,'B.Tech','Chemical Engineering','Male','sumit.verma@example.com','9876543274',710000.00,7.10,'https://images.squarespace-cdn.com/content/v1/5b85ec81cef372898c6b0be9/1570736100284-W41GI571419FBTKZY3OO/image-asset.jpeg'),(166,'Preeti Nanda',20,'B.Tech','Civil Engineering','Female','preeti.nanda@example.com','9876543275',430000.00,8.90,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(167,'Rajeev Thakur',21,'B.Tech','Computer Science','Male','rajeev.thakur@example.com','9876543276',550000.00,8.20,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(168,'Monika Saxena',22,'B.Tech','Mechanical Engineering','Female','monika.saxena@example.com','9876543277',330000.00,9.20,'https://i.pinimg.com/236x/be/f4/ae/bef4aeccbc14c1964ebb6a50e6255f51.jpg'),(169,'Harshdeep Kaur',19,'B.Tech','Electrical Engineering','Male','harshdeep.kaur@example.com','9876543278',600000.00,7.70,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s'),(170,'Yamini Pandey',20,'B.Tech','Chemical Engineering','Female','yamini.pandey@example.com','9876543279',460000.00,7.90,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqFdLqSZ3Hn-Iib-pNk7J4CzGe8XeEiZSqQ&s');
/*!40000 ALTER TABLE `college_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disbursement`
--

DROP TABLE IF EXISTS `disbursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disbursement` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Application_ID` int NOT NULL,
  `Date_First_Disbursement` date NOT NULL,
  `Date_Last_Disbursement` date NOT NULL,
  `Total_Amt_Received` decimal(12,2) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Application_ID`),
  KEY `Application_ID` (`Application_ID`),
  CONSTRAINT `disbursement_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`) ON DELETE CASCADE,
  CONSTRAINT `disbursement_ibfk_2` FOREIGN KEY (`Application_ID`) REFERENCES `application` (`Application_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disbursement`
--

LOCK TABLES `disbursement` WRITE;
/*!40000 ALTER TABLE `disbursement` DISABLE KEYS */;
INSERT INTO `disbursement` VALUES (102,'Ishita Verma',10019,'2025-04-01','2026-04-01',4500.00),(104,'Ananya Singh',10024,'2025-04-13','2026-04-13',2700.00),(106,'Meera Iyer',10002,'2025-02-19','2026-02-19',3500.00),(108,'Pooja Deshmukh',10016,'2025-03-24','2026-03-24',5000.00),(110,'Kriti Bansal',10021,'2025-04-05','2026-04-05',2000.00),(112,'Neha Chauhan',10003,'2025-02-21','2026-02-21',3000.00),(114,'Sneha Joshi',10013,'2025-03-16','2026-03-16',6000.00),(116,'Priya Mehta',10039,'2025-05-21','2026-05-21',3500.00),(117,'Yashwant Singh',10029,'2025-04-26','2026-04-26',4500.00),(118,'Riya Kapoor',10010,'2025-03-11','2026-03-11',4000.00),(119,'Amit Desai',10004,'2025-02-24','2026-02-24',4000.00),(120,'Divya Nair',10017,'2025-03-26','2026-03-26',4500.00),(122,'Swati Rao',10033,'2025-05-06','2026-05-06',4000.00),(126,'Rachna Tiwari',10037,'2025-05-16','2026-05-16',3000.00),(128,'Pallavi Das',10040,'2025-05-24','2026-05-24',2800.00),(129,'Deepak Jha',10032,'2025-05-04','2026-05-04',6000.00),(132,'Simran Kaur',10006,'2025-03-01','2026-03-01',4500.00),(136,'Juhi Sharma',10020,'2025-04-03','2026-04-03',2500.00),(138,'Ruchi Saxena',10028,'2025-04-24','2026-04-24',3200.00),(142,'Sanya Malhotra',10030,'2025-04-29','2026-04-29',4000.00),(143,'Ashwin Reddy',10018,'2025-03-29','2026-03-29',5000.00),(144,'Tanvi Sharma',10034,'2025-05-09','2026-05-09',2900.00),(146,'Shruti Verma',10026,'2025-04-19','2026-04-19',2000.00),(150,'Rahul Sharma',10042,'2025-05-29','2026-05-29',1000.00),(154,'Amit Patel',10044,'2025-06-03','2026-06-03',1500.00),(156,'Neha Verma',10045,'2025-06-05','2026-06-05',1300.00),(158,'Suresh Raina',10046,'2025-06-08','2026-06-08',1400.00),(160,'Anjali Gupta',10047,'2025-06-11','2026-06-11',1600.00),(162,'Vikram Singh',10048,'2025-06-15','2026-06-15',1100.00),(166,'Arjun Nair',10050,'2025-06-24','2026-06-24',1350.00),(168,'Sonia Kapoor',10051,'2025-06-26','2026-06-26',1250.00);
/*!40000 ALTER TABLE `disbursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eligibility`
--

DROP TABLE IF EXISTS `eligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eligibility` (
  `Funding_ID` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` enum('Male','Female','Other','NA') NOT NULL,
  `Min_CPI` decimal(3,2) DEFAULT NULL,
  `Max_Annual_Income` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Funding_ID`),
  CONSTRAINT `eligibility_ibfk_1` FOREIGN KEY (`Funding_ID`) REFERENCES `scholarship` (`Funding_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eligibility`
--

LOCK TABLES `eligibility` WRITE;
/*!40000 ALTER TABLE `eligibility` DISABLE KEYS */;
INSERT INTO `eligibility` VALUES ('SCH001','National Merit Scholarship','NA',8.50,800000.00),('SCH002','PMSSS Stipend','NA',7.00,500000.00),('SCH003','UGC JRF','NA',8.00,700000.00),('SCH004','MHRD Financial Aid Criteria','NA',7.50,900000.00),('SCH005','Google Women Techmakers Stipend','Female',7.00,600000.00),('SCH006','INSPIRE Scholarship Criteria','NA',8.20,750000.00),('SCH007','Maulana Azad National Fellowship','NA',7.00,400000.00),('SCH008','Fulbright-Nehru Fellowship','NA',9.00,850000.00),('SCH009','Khelo India Athlete Stipend Criteria','NA',7.50,950000.00),('SCH010','NSP Post-Matric SC/ST Scholarship','NA',7.20,700000.00),('SCH011','AICTE Pragati Scholarship for Girls','Female',7.50,600000.00),('SCH012','Ratan Tata Scholarship','NA',7.00,650000.00),('SCH013','Dr. Ambedkar National Merit Scholarship','NA',7.00,450000.00),('SCH014','Swami Vivekananda Scholarship','NA',7.50,500000.00),('SCH015','ONGC Scholarship for Meritorious Students','NA',8.50,900000.00),('SCH016','HDFC Educational Crisis Scholarship','NA',7.80,800000.00),('SCH017','Siemens Scholarship Program','NA',7.00,700000.00),('SCH018','L’Oréal India Women in Science Scholarship','Female',8.00,750000.00),('SCH019','Tata Trusts Means Grant','NA',8.50,850000.00),('SCH020','Reliance Foundation Undergraduate Scholarship','NA',7.80,700000.00),('SCH021','E-Kalyan Post Matric Scholarship','NA',8.00,750000.00),('SCH022','Sitaram Jindal Foundation Scholarship','NA',7.00,450000.00),('SCH023','Narotam Sekhsaria Scholarship','NA',7.00,550000.00),('SCH024','Bharti Foundation Rural Students Scholarship','NA',8.50,800000.00),('SCH025','Aditya Birla Scholarship Program','NA',7.00,400000.00),('SCH026','Rahul Sharma Merit Scholarship','NA',8.00,500000.00),('SCH027','Priya Mehta Excellence Scholarship','NA',8.50,600000.00),('SCH028','Amit Patel Research Scholarship','NA',9.00,750000.00),('SCH029','Neha Verma Leadership Scholarship','NA',8.20,650000.00),('SCH030','Suresh Raina Innovation Scholarship','NA',8.50,700000.00),('SCH031','Anjali Gupta Academic Achievement Scholarship','NA',9.00,800000.00),('SCH032','Vikram Singh Community Service Scholarship','NA',8.00,550000.00),('SCH033','Pooja Iyer Sports Scholarship','NA',9.20,850000.00),('SCH034','Arjun Nair International Scholarship','NA',8.30,675000.00),('SCH035','Sonia Kapoor Cultural Scholarship','NA',8.00,625000.00);
/*!40000 ALTER TABLE `eligibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialaid_awarded`
--

DROP TABLE IF EXISTS `financialaid_awarded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financialaid_awarded` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Scholarship_ID` varchar(10) NOT NULL,
  `Application_ID` int NOT NULL,
  `Scholarship_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Scholarship_ID`,`Application_ID`),
  KEY `Scholarship_ID` (`Scholarship_ID`),
  KEY `Application_ID` (`Application_ID`),
  CONSTRAINT `financialaid_awarded_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`) ON DELETE CASCADE,
  CONSTRAINT `financialaid_awarded_ibfk_2` FOREIGN KEY (`Scholarship_ID`) REFERENCES `scholarship` (`Funding_ID`) ON DELETE CASCADE,
  CONSTRAINT `financialaid_awarded_ibfk_3` FOREIGN KEY (`Application_ID`) REFERENCES `application` (`Application_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialaid_awarded`
--

LOCK TABLES `financialaid_awarded` WRITE;
/*!40000 ALTER TABLE `financialaid_awarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `financialaid_awarded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarship`
--

DROP TABLE IF EXISTS `scholarship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarship` (
  `Funding_ID` varchar(10) NOT NULL,
  `Funding_Name` varchar(255) DEFAULT NULL,
  `Type` enum('Scholarship','Stipend','Financial Aid') NOT NULL,
  `Total_Amt` decimal(12,2) NOT NULL,
  `Allocated_Amt` decimal(12,2) DEFAULT '0.00',
  `Deadline` date DEFAULT NULL,
  PRIMARY KEY (`Funding_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship`
--

LOCK TABLES `scholarship` WRITE;
/*!40000 ALTER TABLE `scholarship` DISABLE KEYS */;
INSERT INTO `scholarship` VALUES ('SCH001','National Merit Scholarship','Scholarship',5000000.00,3000000.00,'2025-03-15'),('SCH002','Prime Minister’s Special Scholarship Scheme (PMSSS)','Stipend',3000000.00,1500000.00,'2025-02-28'),('SCH003','UGC Junior Research Fellowship (JRF)','Scholarship',4000000.00,2000000.00,'2025-04-20'),('SCH004','MHRD Need-Based Financial Aid','Financial Aid',2500000.00,1000000.00,'2025-05-10'),('SCH005','Google Women Techmakers Scholarship','Stipend',3500000.00,1800000.00,'2025-03-30'),('SCH006','INSPIRE Scholarship for Innovation','Scholarship',6000000.00,4000000.00,'2025-06-15'),('SCH007','Maulana Azad National Fellowship (MANF)','Financial Aid',4500000.00,2500000.00,'2025-07-01'),('SCH008','Fulbright-Nehru Master’s Fellowship','Scholarship',5500000.00,3500000.00,'2025-05-25'),('SCH009','Khelo India Athlete Stipend','Stipend',2000000.00,1000000.00,'2025-04-15'),('SCH010','NSP Post-Matric Scholarship for SC/ST Students','Financial Aid',3000000.00,1500000.00,'2025-06-30'),('SCH011','AICTE Pragati Scholarship for Girls','Scholarship',4000000.00,2500000.00,'2025-08-10'),('SCH012','Ratan Tata Scholarship for Engineering Students','Financial Aid',5000000.00,3000000.00,'2025-09-05'),('SCH013','Dr. Ambedkar National Merit Scholarship','Scholarship',3500000.00,2000000.00,'2025-07-20'),('SCH014','Swami Vivekananda Scholarship for Academic Excellence','Scholarship',4500000.00,2800000.00,'2025-08-30'),('SCH015','ONGC Scholarship for Meritorious Students','Financial Aid',3200000.00,1700000.00,'2025-09-15'),('SCH016','HDFC Educational Crisis Scholarship','Financial Aid',2700000.00,1400000.00,'2025-10-01'),('SCH017','Siemens Scholarship Program','Scholarship',5000000.00,3200000.00,'2025-10-20'),('SCH018','L’Oréal India For Young Women in Science Scholarship','Scholarship',3800000.00,2200000.00,'2025-11-05'),('SCH019','Tata Trusts Means Grant for College Students','Financial Aid',2900000.00,1600000.00,'2025-11-30'),('SCH020','Reliance Foundation Undergraduate Scholarship','Scholarship',4500000.00,2500000.00,'2025-12-15'),('SCH021','E-Kalyan Post Matric Scholarship','Financial Aid',3100000.00,1800000.00,'2025-12-30'),('SCH022','Sitaram Jindal Foundation Scholarship','Scholarship',2800000.00,1500000.00,'2026-01-10'),('SCH023','Narotam Sekhsaria Scholarship Program','Scholarship',6000000.00,4000000.00,'2026-02-01'),('SCH024','Bharti Foundation Scholarship for Rural Students','Financial Aid',3400000.00,2000000.00,'2026-02-20'),('SCH025','Aditya Birla Scholarship Program','Scholarship',5500000.00,3300000.00,'2026-03-10'),('SCH026','Rahul Sharma Merit Scholarship','Scholarship',1000000.00,500000.00,'2026-04-15'),('SCH027','Priya Mehta Excellence Scholarship','Scholarship',1200000.00,600000.00,'2026-05-10'),('SCH028','Amit Patel Research Scholarship','Scholarship',1500000.00,750000.00,'2026-06-05'),('SCH029','Neha Verma Leadership Scholarship','Scholarship',1300000.00,650000.00,'2026-07-20'),('SCH030','Suresh Raina Innovation Scholarship','Scholarship',1400000.00,700000.00,'2026-08-15'),('SCH031','Anjali Gupta Academic Achievement Scholarship','Scholarship',1600000.00,800000.00,'2026-09-01'),('SCH032','Vikram Singh Community Service Scholarship','Scholarship',1100000.00,550000.00,'2026-09-25'),('SCH033','Pooja Iyer Sports Scholarship','Scholarship',1700000.00,850000.00,'2026-10-30'),('SCH034','Arjun Nair International Scholarship','Scholarship',1350000.00,675000.00,'2026-11-15'),('SCH035','Sonia Kapoor Cultural Scholarship','Scholarship',1250000.00,625000.00,'2026-12-10');
/*!40000 ALTER TABLE `scholarship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarship_awarded`
--

DROP TABLE IF EXISTS `scholarship_awarded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarship_awarded` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Scholarship_ID` varchar(10) NOT NULL,
  `Application_ID` int NOT NULL,
  `Scholarship_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Scholarship_ID`,`Application_ID`),
  KEY `Scholarship_ID` (`Scholarship_ID`),
  KEY `Application_ID` (`Application_ID`),
  CONSTRAINT `scholarship_awarded_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`) ON DELETE CASCADE,
  CONSTRAINT `scholarship_awarded_ibfk_2` FOREIGN KEY (`Scholarship_ID`) REFERENCES `scholarship` (`Funding_ID`) ON DELETE CASCADE,
  CONSTRAINT `scholarship_awarded_ibfk_3` FOREIGN KEY (`Application_ID`) REFERENCES `application` (`Application_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship_awarded`
--

LOCK TABLES `scholarship_awarded` WRITE;
/*!40000 ALTER TABLE `scholarship_awarded` DISABLE KEYS */;
INSERT INTO `scholarship_awarded` VALUES (108,'Pooja Deshmukh','SCH017',10016,'Siemens Scholarship Program'),(114,'Sneha Joshi','SCH006',10013,'INSPIRE Scholarship for Innovation'),(116,'Priya Mehta','SCH013',10039,'Dr. Ambedkar National Merit Scholarship'),(117,'Yashwant Singh','SCH020',10029,'Reliance Foundation Undergraduate Scholarship'),(118,'Riya Kapoor','SCH011',10010,'AICTE Pragati Scholarship for Girls'),(119,'Amit Desai','SCH003',10004,'UGC Junior Research Fellowship (JRF)'),(120,'Divya Nair','SCH014',10017,'Swami Vivekananda Scholarship for Academic Excellence'),(122,'Swati Rao','SCH011',10033,'AICTE Pragati Scholarship for Girls'),(128,'Pallavi Das','SCH022',10040,'Sitaram Jindal Foundation Scholarship'),(129,'Deepak Jha','SCH006',10032,'INSPIRE Scholarship for Innovation'),(132,'Simran Kaur','SCH020',10006,'Reliance Foundation Undergraduate Scholarship'),(142,'Sanya Malhotra','SCH003',10030,'UGC Junior Research Fellowship (JRF)'),(156,'Ananya Roy','SCH017',10047,'Siemens Scholarship Program'),(157,'Tushar Bansal','SCH018',10048,'L’Oréal India For Young Women in Science Scholarship'),(160,'Neelam Tiwari','SCH023',10051,'Narotam Sekhsaria Scholarship Program'),(163,'Ankit Singh','SCH003',10054,'UGC Junior Research Fellowship (JRF)'),(169,'Harshdeep Kaur','SCH020',10060,'Reliance Foundation Undergraduate Scholarship');
/*!40000 ALTER TABLE `scholarship_awarded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarship_stats`
--

DROP TABLE IF EXISTS `scholarship_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarship_stats` (
  `ID` varchar(10) NOT NULL,
  `No_Of_Applications` int NOT NULL DEFAULT '0',
  `Approved_applications` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  CONSTRAINT `scholarship_stats_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `scholarship` (`Funding_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship_stats`
--

LOCK TABLES `scholarship_stats` WRITE;
/*!40000 ALTER TABLE `scholarship_stats` DISABLE KEYS */;
INSERT INTO `scholarship_stats` VALUES ('SCH001',2,0),('SCH002',3,1),('SCH003',3,3),('SCH004',2,2),('SCH005',3,1),('SCH006',2,2),('SCH007',3,1),('SCH008',2,0),('SCH009',3,3),('SCH010',3,3),('SCH011',2,2),('SCH012',2,2),('SCH013',2,1),('SCH014',2,1),('SCH015',3,2),('SCH016',2,2),('SCH017',2,2),('SCH018',3,1),('SCH019',3,1),('SCH020',3,3),('SCH021',2,1),('SCH022',2,1),('SCH023',2,1),('SCH024',2,1),('SCH025',2,0),('SCH026',0,0),('SCH027',0,0),('SCH028',0,0),('SCH029',0,0),('SCH030',0,0),('SCH031',0,0),('SCH032',0,0),('SCH033',0,0),('SCH034',0,0),('SCH035',0,0);
/*!40000 ALTER TABLE `scholarship_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `Application_ID` int NOT NULL,
  `Type` enum('Scholarship','Stipend','Financial Aid') NOT NULL,
  `Status` enum('Rejected','Approved') NOT NULL,
  PRIMARY KEY (`Application_ID`),
  CONSTRAINT `status_ibfk_1` FOREIGN KEY (`Application_ID`) REFERENCES `application` (`Application_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (10001,'Scholarship','Rejected'),(10002,'Stipend','Approved'),(10003,'Financial Aid','Approved'),(10004,'Scholarship','Approved'),(10005,'Financial Aid','Rejected'),(10006,'Scholarship','Approved'),(10007,'Scholarship','Rejected'),(10008,'Scholarship','Rejected'),(10009,'Financial Aid','Rejected'),(10010,'Scholarship','Approved'),(10011,'Financial Aid','Rejected'),(10012,'Stipend','Rejected'),(10013,'Scholarship','Approved'),(10014,'Scholarship','Rejected'),(10015,'Scholarship','Rejected'),(10016,'Scholarship','Approved'),(10017,'Scholarship','Approved'),(10018,'Financial Aid','Approved'),(10019,'Financial Aid','Approved'),(10020,'Financial Aid','Approved'),(10021,'Stipend','Approved'),(10022,'Scholarship','Rejected'),(10023,'Scholarship','Rejected'),(10024,'Financial Aid','Approved'),(10025,'Financial Aid','Rejected'),(10026,'Stipend','Approved'),(10027,'Stipend','Rejected'),(10028,'Financial Aid','Approved'),(10029,'Scholarship','Approved'),(10030,'Scholarship','Approved'),(10031,'Scholarship','Rejected'),(10032,'Scholarship','Approved'),(10033,'Scholarship','Approved'),(10034,'Financial Aid','Approved'),(10035,'Scholarship','Rejected'),(10036,'Stipend','Rejected'),(10037,'Financial Aid','Approved'),(10038,'Financial Aid','Rejected'),(10039,'Scholarship','Approved'),(10040,'Scholarship','Approved'),(10041,'Stipend','Approved'),(10042,'Financial Aid','Approved'),(10043,'Stipend','Rejected'),(10044,'Stipend','Approved'),(10045,'Financial Aid','Approved'),(10046,'Financial Aid','Approved'),(10047,'Scholarship','Approved'),(10048,'Scholarship','Approved'),(10049,'Financial Aid','Rejected'),(10050,'Financial Aid','Approved'),(10051,'Scholarship','Approved'),(10052,'Financial Aid','Approved'),(10053,'Scholarship','Rejected'),(10054,'Scholarship','Approved'),(10055,'Financial Aid','Rejected'),(10056,'Financial Aid','Approved'),(10057,'Scholarship','Rejected'),(10058,'Financial Aid','Approved'),(10059,'Scholarship','Rejected'),(10060,'Scholarship','Approved');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stipend_awarded`
--

DROP TABLE IF EXISTS `stipend_awarded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stipend_awarded` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Scholarship_ID` varchar(10) NOT NULL,
  `Application_ID` int NOT NULL,
  `Scholarship_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Student_ID`,`Scholarship_ID`,`Application_ID`),
  KEY `Scholarship_ID` (`Scholarship_ID`),
  KEY `Application_ID` (`Application_ID`),
  CONSTRAINT `stipend_awarded_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`) ON DELETE CASCADE,
  CONSTRAINT `stipend_awarded_ibfk_2` FOREIGN KEY (`Scholarship_ID`) REFERENCES `scholarship` (`Funding_ID`) ON DELETE CASCADE,
  CONSTRAINT `stipend_awarded_ibfk_3` FOREIGN KEY (`Application_ID`) REFERENCES `application` (`Application_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stipend_awarded`
--

LOCK TABLES `stipend_awarded` WRITE;
/*!40000 ALTER TABLE `stipend_awarded` DISABLE KEYS */;
INSERT INTO `stipend_awarded` VALUES (106,'Meera Iyer','SCH005',10002,'Google Women Techmakers Scholarship'),(110,'Kriti Bansal','SCH009',10021,'Khelo India Athlete Stipend'),(146,'Shruti Verma','SCH009',10026,'Khelo India Athlete Stipend'),(150,'Megha Chaturvedi','SCH002',10041,'Prime Minister’s Special Scholarship Scheme (PMSSS)'),(153,'Vivek Kumar','SCH009',10044,'Khelo India Athlete Stipend');
/*!40000 ALTER TABLE `stipend_awarded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_demographics`
--

DROP TABLE IF EXISTS `student_demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_demographics` (
  `Student_ID` int NOT NULL,
  `Age` int NOT NULL,
  `Program` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Gender` enum('Male','Female','NA') NOT NULL,
  `Annual_Income` decimal(10,2) DEFAULT NULL,
  `CPI` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`),
  CONSTRAINT `student_demographics_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `college_details` (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_demographics`
--

LOCK TABLES `student_demographics` WRITE;
/*!40000 ALTER TABLE `student_demographics` DISABLE KEYS */;
INSERT INTO `student_demographics` VALUES (102,20,'B.Tech','Computer Science','Female',300000.00,9.10),(104,22,'B.Tech','Electrical Engineering','Female',250000.00,8.50),(106,20,'B.Tech','Civil Engineering','Female',400000.00,8.70),(108,22,'B.Tech','Mechanical Engineering','Female',320000.00,9.30),(110,20,'B.Tech','Chemical Engineering','Female',480000.00,7.90),(112,22,'B.Tech','Computer Science','Female',290000.00,8.90),(114,20,'B.Tech','Electrical Engineering','Female',370000.00,8.80),(116,22,'B.Tech','Civil Engineering','Female',420000.00,9.00),(117,19,'B.Tech','Computer Science','Male',520000.00,8.10),(118,20,'B.Tech','Mechanical Engineering','Female',310000.00,9.20),(119,21,'B.Tech','Electrical Engineering','Male',560000.00,8.30),(120,22,'B.Tech','Chemical Engineering','Female',470000.00,7.60),(122,20,'B.Tech','Computer Science','Female',280000.00,9.40),(126,20,'B.Tech','Civil Engineering','Female',430000.00,8.90),(128,22,'B.Tech','Mechanical Engineering','Female',300000.00,9.50),(129,19,'B.Tech','Electrical Engineering','Male',580000.00,8.50),(132,22,'B.Tech','Computer Science','Female',270000.00,9.60),(136,22,'B.Tech','Civil Engineering','Female',440000.00,8.80),(138,20,'B.Tech','Mechanical Engineering','Female',330000.00,9.10),(142,20,'B.Tech','Computer Science','Female',310000.00,9.30),(143,21,'B.Tech','Mechanical Engineering','Male',580000.00,7.60),(144,22,'B.Tech','Electrical Engineering','Female',400000.00,8.90),(146,20,'B.Tech','Civil Engineering','Female',430000.00,8.70),(150,20,'B.Tech','Chemical Engineering','Female',470000.00,7.90),(151,21,'B.Tech','Civil Engineering','Male',530000.00,7.80),(153,19,'B.Tech','Mechanical Engineering','Male',620000.00,7.40),(154,20,'B.Tech','Electrical Engineering','Female',360000.00,8.70),(155,21,'B.Tech','Chemical Engineering','Male',690000.00,7.30),(156,22,'B.Tech','Civil Engineering','Female',450000.00,8.80),(157,19,'B.Tech','Computer Science','Male',540000.00,8.10),(159,21,'B.Tech','Electrical Engineering','Male',610000.00,7.90),(160,22,'B.Tech','Chemical Engineering','Female',470000.00,7.80),(161,19,'B.Tech','Civil Engineering','Male',500000.00,8.00),(163,21,'B.Tech','Mechanical Engineering','Male',640000.00,7.20),(165,19,'B.Tech','Chemical Engineering','Male',710000.00,7.10),(167,21,'B.Tech','Computer Science','Male',550000.00,8.20),(169,19,'B.Tech','Electrical Engineering','Male',600000.00,7.70);
/*!40000 ALTER TABLE `student_demographics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-28 16:17:53
