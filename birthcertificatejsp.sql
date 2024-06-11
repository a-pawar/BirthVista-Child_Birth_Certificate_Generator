create database birthcertificatejsp;

use birthcertificatejsp;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
);

INSERT INTO `admin` VALUES ('admin','admin');

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Address` mediumtext,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

INSERT INTO `user` VALUES (3,'Rohit','Raj',8002007170,'Indrapuri Bhopal','rohit@gmail.com','1234','2021-12-27 07:21:30'),(4,'Ankit','Mathur',7070227777,'Bina Sagar MP','ankit@gmail.com','1234','2021-12-27 07:25:05'),(5,'Ashutosh','Pandey',8527412365,'Odisha','ashu@gmail.com','1234','2021-12-27 07:25:42');

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;

CREATE TABLE `application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `ApplicationID` int DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `PermanentAdd` varchar(200) DEFAULT NULL,
  `PostalAdd` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

INSERT INTO `application` VALUES (17,'rohit@gmail.com',56933380,'2000-04-18','Female','Roshani','Ranchi','Rajanak Singh ','Ranchi Road','Ranchi Road','7845125241','roshni@gmail.com','2021-12-27 07:28:52','Your all Documents are Verfied Successfull.','Verified','2021-12-27 07:35:47'),(18,'rohit@gmail.com',48883605,'1999-12-12','Female','Kajal Mishra','Bhabhua','OmPrakash Mishra','khalas Road Bhabhua','khalas Road Bhabhua','7845142500','kajal@gmail.com','2021-12-27 07:30:04','Done','Verified','2021-12-28 14:12:33'),(19,'ashu@gmail.com',24915812,'1998-12-12','Male','Vikash Mishra','Bhojpur Hospital Bhopal','Nitesh Mishra','Bhojpur Road Bhopal','Bhojpur Road Bhopal','9865745123','vikash@gmail.com','2021-12-27 07:31:54','Your Document are not clear mention.','Rejected','2021-12-27 07:37:11');