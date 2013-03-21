CREATE DATABASE  IF NOT EXISTS `webapp_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `webapp_development`;
-- MySQL dump 10.13  Distrib 5.5.16, for osx10.5 (i386)
--
-- Host: localhost    Database: webapp_development
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120703190837'),('20120704003806'),('20120705190028'),('20120706030247'),('20120717024636'),('20120809035443'),('20120811003124'),('20120826185222'),('20120909180232'),('20120909211459'),('20120910031858'),('20120910034057');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,1,'Business plan','/docs/attachments/bp1.pdf','2012-08-11 00:40:59','2012-08-11 00:40:59'),(2,1,'Resume','/docs/attachments/r1.pdf','2012-08-11 01:12:24','2012-08-11 01:12:24');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectdecriptions`
--

DROP TABLE IF EXISTS `projectdecriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectdecriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `main` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectdecriptions`
--

LOCK TABLES `projectdecriptions` WRITE;
/*!40000 ALTER TABLE `projectdecriptions` DISABLE KEYS */;
INSERT INTO `projectdecriptions` VALUES (1,1,'Market opportunity','Market research for this class will be dedicated to a startup idea of a crowdfunding platform SchoolUp. SchoolUp will be an online platform that will connect small independent investors and entrepreneurs within an existing organic society, like alumni network.\n\nA new law JOBS Act (Jumpstart Our Business Startup Act) that was signed in April 2012 allows non-accredited investors to participate in funding startups. In other words everybody has a right to invest their money in businesses, unlike before when a person was supposed to have a certain level of earnings or assets to do that. Thereby millions of people now can be angel investors and, on the other hand, bigger funds are available for entrepreneurs.',1),(2,1,'Action plan','SchoolUp is on its early stage of development and a market research is needed to understand customers’ needs. There are two types of customers: alumni and startups.\n\nAlumni would be investors in startups, hence it is important to understand when and why they would be able to invest in a startup. In particular the research is supposed to investigate when and what amount people are willing to donate to school or other funds and what they are expecting to from that. This analysis could be done by surveys.\n\nAnother type of clients would be startups. Here the research will analyze what entrepreneurs are looking for from investors: money, experience, network etc. Since the potential audience is smaller in this case, this analysis could be done as face-to-face interviews with a number of entrepreneurs.\n\nFinal product of this market research will be customer profiles for both types of customers and potential size of the market.',1),(3,1,'Team','Core team has experience working in investment business, including venture capital Rusnano and seed fund Open Field Entrepreneruship Fund, as well as in number of starup. Advisory board includes successful entrepreneurs and veture capitalists',1),(4,3,'Vision','In 2011, smartphones outsold PCs for the first time in the history.  In only few years from now, almost everyone will have a smartphone and their ability to seek and consume information from their phone will not be limited by the size or speed.  When they visit a website, they will expect the best experience no matter where they are or what device they are using.  All retailers, large and small, must adopt and harness the power of mobile devices to deliver the best experiences to their customers and maximize potential revenue.',1),(5,3,'Team','Seong Bae leads the product development at Prooty.  He is a second-year MBA student at Tepper School of Business where he is focusing on entrepreneurship, marketing, and finance. Prior to business school, Seong spent seven years as an IT consultant and application developer and have designed, developed, and deployed numerous enterprise-level solutions for large companies. Before coming to Tepper, Seong spent three years at Avanade, a joint-venture between Accenture and Microsoft, where he helped deploy solutions for companies in media and insurance industries.\n\nRusty Hamilton is a backend developer at Prooty and, together with Seong, developed the initial version of the Prooty platform.  Rusty has been programming since the age of 9, starting with Applesoft BASIC on the Apple IIe, moving on to C, C++, Python, 6502 assembly, and, for the past 3 years, PHP. Rusty holds a degree in biochemistry from the University of Delaware, obtained during a time when he wasn’t sure whether science or programming was his first love.',1),(6,6,'Market','Our product, Clinical Practice Support System (CPSS), is a Software-as-a-Service (SaaS) Safety and Quality Platform which monitors clinical practices of hospital healthcare workers and drives the electronic delivery of information at the point of care to support practice completion.  Our initial offering monitors hand hygiene, analyzes practice data, delivers practice support information delivery and powers a suite of software tools for improving hand hygiene through staff interventions.  Our software streamlines and automates the key steps in improving practices. Our core technology brings unique analytics to bear on healthcare worker practices, patient risk, and optimizing information delivery. This is coupled to a system that interoperates with existing hospital infrastructure for personnel tracking and electronic health records.',1),(7,6,'Value proposition','Our market entry point is supporting hand hygiene, a practice at the core of preventing hospital acquired infections. Medical studies have shown that clinicians perform hand hygiene clinical practices around 40% of the time. Hospitals rely on manual methods for monitoring and analyzing clinical practices.  Furthermore, hospitals have inadequate tools to deliver relevant information and improve healthcare workersâ€™ practices.    \n\nTwo million Americans contract hospital acquired infections each year, resulting in 100,000 deaths. The Centers for Medicare and Medicaid Services and other payers are no longer reimbursing for a number of HAIs, adding $45 billion to hospital costs. By helping a hospital like UPMC Presbyterian deliver at least a 25% reduction in HAIs, we will save them close over $2.5 million per year.',1),(8,6,'Competition','Our solution focuses on improving best practices through visual reminders and information delivery at the point of care. We answer the questions of ‘What’, ‘When’, and ‘How’ information is delivered to best support clinical practices, such as hand hygiene. We also provide a suite of quality improvement software tools. This includes report generation, practice analytics, and custom interventions using point of care information delivery to improve best practices in hand hygiene. Where our competitors focus on tracking hand hygiene compliance, we focus on supporting best practices at the point of care and across the organization. \n\nWe identify three main groups including real time location systems, targeted hand hygiene systems, and infection control software. \n\n1) Real Time Location Systems: AeroScout, Ekahau, Versus \n\nThese companies have a real time location system that to date have focused on asset tracking, work flow optimization, and personnel tracking. They have begun to offer solutions in which customers can add a hand hygiene sensor. These ‘add-inâ€ solutions focus on gathering hand hygiene compliance data. However, they place little to no focus on utilizing their system to actually support improvement of patient safety practices. \n\n2) Targeted Hand Hygiene Systems: Xhale \n\nTargeted systems, such as one being developed by Xhale Inc., have smaller infrastructure requirements compared to real time location systems. However, the Xhale system is physically encumbering and adds more work steps. These targeted systems are limited to only addressing hand hygiene tracking. Again, they do not serve the broader problem of improving hand hygiene practices.\n\n3) Infection Control Software: TheraDoc \n\nA software provider, such as TheraDoc, mines data from the Electronic Healthcare Record, to retrospectively identify whether a hospital acquired infection has occurred. This company and others do not address the core of preventing the problem, best practices in hand hygiene. Qualaris delivers the clinical practice support that healthcare workers need to achieve these best practices.',1),(9,6,'Revenue model','We will sell CPSS as a Software-as-a-Service to hospitals, generating recurring revenues through software licenses, maintenance, and services contracts.',0),(10,6,'Current stage','We completed a standalone prototype system and received feedback from demonstrations to over 50 healthcare workers ranging from frontline nurses to physicians to mid-level and c-suite leadership.  We received a $25,000 grant from The Technology Collaborative (http://www.techcollaborative.org/) and are using the funds for technology and customer development. We also have been accepted into the CMU Donald Jones Center Accelerator which includes a $15,000 convertible note to be made to the company.\n\nFounders have received several pre-entity awards:\n\nJewish Healthcare Foundation - $20,000 private academic grant\nInnovation Works/Carnegie Mellon University i6 program - $5,000 academic grant\nThe Technology Collaborative - $8,000 academic grant\nUniversity of Pittsburgh, Institute for Entrepreneurial Excellence - $6000 competition cash prize',0),(11,6,'Minimum valuable product','The MVP is a system that showcases the clinical value of our practice support system for improving hand hygiene. It will also include key components of our technology for analyzing practices and calculating risk of infections. In summary, the MVP monitors hand hygiene, analyzes practice data, delivers practice support information delivery and powers a suite of software tools for improving hand hygiene through staff interventions. This MVP would enable us to carry out our alpha system in a hospital setting to validate our approach. It is also a stepping stone to next carry out a larger scaled beta pilot of our system in a hospital that would be used to validate our clinical value and also address scalability.',0),(12,6,'Future milestones','Our customer acquisition and technology deployment milestones are outlined.  These activities will be supported through the use of OFEF funds, as outline below as well.  Use of funds:    Software development engineers $60,000  Marketing & Sales  $16,000  COGS for Alpha CPSS deployment $7,500  Operating expenses $16,500  Milestones:  February 1 - Complete Alpha CPSS March 1 - Deploy Alpha in hospital  May 1 - Completion of Beta CPSS July 1 - Beta deployment in hospital August 1 - Secure customer letters of interest November 1 - Complete saleable product January 1 - 1st customer installation February 1 - Go to market',0),(13,6,'Technology','Distributed computational backend to power data analysis and machine learning.  MySQL database storage and customized data stores enable high-speed access to large amounts of computational data.  The customer facing software is served using a Python-based web stack.  The system also has gateways to interface with tracking systems and uses an HL7 interface engine, Mirth, to handle interoperability with EHR systems.',0),(14,6,'Technical challanges','1) Optimizing user experience for effective practice support. \n2) Developing robust software analytics of hand hygiene compliance data and EHR patient information. \n3) Addressing system interoperability within the scope of various healthcare information technology systems (i.e., Electronic Health Records). ',0),(15,6,'Matching funds','As the CEO of Qualaris, James Wolfe is committed to the absolute success of the company and will match the $50,000 investment.',0),(16,6,'Why we?','Our team has a core expertise in machine learning and large-scale data analysis and has an unwavering entrepreneurial drive.  We have established a clinical partnership to complete our alpha and beta testing and will build out our team with healthcare thought-leading advisors, directors, and top management.  We are committed to helping keep patients safe and will transform healthcare delivery.',0);
/*!40000 ALTER TABLE `projectdecriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investors`
--

DROP TABLE IF EXISTS `investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ismentor` int(11) DEFAULT NULL,
  `isinvestor` int(11) DEFAULT NULL,
  `isfollower` int(11) DEFAULT NULL,
  `isowner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investors`
--

LOCK TABLES `investors` WRITE;
/*!40000 ALTER TABLE `investors` DISABLE KEYS */;
INSERT INTO `investors` VALUES (1,1,1,10000,'2012-07-06 03:08:00','2012-07-06 03:08:00',1,1,NULL,1),(38,3,2,NULL,'2012-07-07 04:30:52','2012-07-07 04:30:52',1,NULL,NULL,NULL),(55,1,6,NULL,'2012-07-13 18:18:25','2012-07-13 18:18:25',1,NULL,NULL,NULL),(56,3,6,NULL,'2012-07-13 18:18:33','2012-07-13 18:18:33',1,NULL,NULL,NULL),(57,1,7,NULL,'2012-07-13 20:38:05','2012-07-13 20:38:05',1,NULL,NULL,NULL),(60,5,7,NULL,'2012-07-17 02:12:41','2012-07-17 02:12:41',NULL,NULL,NULL,1),(62,6,5,NULL,'2012-07-18 03:36:48','2012-07-18 03:36:48',1,1,NULL,1),(63,1,5,NULL,'2012-07-18 03:36:57','2012-07-18 03:36:57',1,NULL,NULL,NULL),(71,4,3,NULL,'2012-08-04 15:49:45','2012-08-04 15:49:45',NULL,NULL,NULL,1),(72,6,4,NULL,'2012-08-09 02:25:09','2012-08-09 02:25:09',1,NULL,NULL,NULL),(73,6,3,NULL,'2012-08-09 02:25:28','2012-08-09 02:25:28',1,NULL,NULL,NULL),(76,6,7,NULL,'2012-08-09 02:27:14','2012-08-09 02:27:14',1,NULL,NULL,NULL),(83,1,2,NULL,'2012-08-11 17:57:34','2012-08-11 17:57:34',1,NULL,NULL,NULL),(84,4,2,NULL,'2012-08-11 17:57:40','2012-08-11 17:57:40',1,NULL,NULL,NULL),(92,5,1,NULL,'2012-08-26 18:03:17','2012-08-26 18:03:17',1,NULL,NULL,NULL),(96,3,1,NULL,'2012-08-26 18:28:14','2012-09-22 00:44:47',1,1,NULL,NULL),(97,4,1,NULL,'2012-08-26 18:43:29','2012-08-26 18:43:29',1,NULL,NULL,NULL),(98,1,10,NULL,'2012-08-26 18:57:04','2012-08-26 18:57:04',1,NULL,NULL,NULL),(99,1,11,NULL,'2012-08-26 19:11:38','2012-08-26 19:11:38',1,NULL,NULL,NULL),(100,3,11,NULL,'2012-08-26 19:11:44','2012-08-26 19:11:44',1,NULL,NULL,NULL),(101,6,11,NULL,'2012-08-26 19:11:52','2012-08-26 19:11:52',1,NULL,NULL,NULL),(117,23,9,NULL,'2012-08-26 21:18:43','2012-08-26 21:18:43',NULL,NULL,NULL,1),(118,1,12,NULL,'2012-08-28 15:19:28','2012-08-28 15:19:28',1,NULL,NULL,NULL),(119,3,12,NULL,'2012-08-28 15:19:34','2012-08-28 15:19:34',1,NULL,NULL,NULL),(120,1,13,NULL,'2012-08-29 00:56:07','2012-08-29 00:56:07',1,NULL,NULL,NULL),(121,6,12,NULL,'2012-09-06 19:47:39','2012-09-06 19:47:39',1,NULL,NULL,NULL),(155,3,4,NULL,'2012-09-09 22:03:52','2012-09-09 22:03:52',1,NULL,NULL,1),(156,56,15,NULL,'2012-09-12 18:15:10','2012-09-12 18:15:10',NULL,NULL,NULL,1),(157,23,1,NULL,'2012-09-17 20:07:54','2012-09-17 20:07:54',1,NULL,NULL,NULL),(158,6,1,NULL,'2012-09-20 14:26:10','2012-09-20 14:26:10',1,NULL,NULL,NULL),(159,1,16,NULL,'2012-09-26 21:35:36','2012-09-26 21:35:36',1,NULL,NULL,NULL),(160,57,16,NULL,'2012-09-26 21:37:32','2012-09-26 21:37:32',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyteams`
--

DROP TABLE IF EXISTS `companyteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companyteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmuaffiliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyteams`
--

LOCK TABLES `companyteams` WRITE;
/*!40000 ALTER TABLE `companyteams` DISABLE KEYS */;
INSERT INTO `companyteams` VALUES (1,1,'Sergey','Astretsov','Founder and CEO','Sergey has several years of experience working in venture capital and private equity funds. Right now Sergey is a second year student at Tepper School of Business at Carnegie Mellon University. Prior to joining Tepper, he worked for three years at Rusnano','www.linkedin.com/in/sergeyastretsov','Tepper School of Business 2013','sergey.astretsov@gmail.com','650-704-0999','5979 Alder st., Ap. 3',NULL,'2012-09-09 21:20:12','2012-09-09 21:20:12'),(10,3,'Seong','Bae','Founder','Seong leads the product development at Prooty.  He is a second-year MBA student at Tepper School of Business where he is focusing on entrepreneurship, marketing, and finance. Prior to business school, Seong spent seven years as an IT consultant and application developer and have designed, developed, and deployed numerous enterprise-level solutions for large companies. Before coming to Tepper, Seong spent three years at Avanade, a joint-venture between Accenture and Microsoft, where he helped deploy solutions for companies in media and insurance industries.\r\n\r\nSeong studied Computer Science at the University of Illinois at Urbana-Champaign and is an officer in the United States Army Reserve with deployment experiences.','www.linkedin.com/in/baeseong','Tepper School of Business 2012','','','',NULL,'2012-09-09 22:07:47','2012-09-09 22:07:47'),(11,3,'Rusty','Hamilton','Technology Lead','Rusty is a backend developer at Prooty and, together with Seong, developed the initial version of the Prooty platform.  Rusty has been programming since the age of 9, starting with Applesoft BASIC on the Apple IIe, moving on to C, C++, Python, 6502 assembly, and, for the past 3 years, PHP. Rusty holds a degree in biochemistry from the University of Delaware, obtained during a time when he wasn’t sure whether science or programming was his first love.\r\n\r\nIn his spare time, Rusty enjoys making electronic music, learning new languages (programming and natural), and playing his NES.','','No','','','',NULL,'2012-09-09 22:09:08','2012-09-09 22:09:08'),(12,3,'Mohith','Muddasani','Technology','Mohith is a summer development intern at Prooty. He is a junior studying Computer Science at Carnegie Mellon University and has previously interned at Amazon as a back-end developer.','','School of Computer Science','','','',NULL,'2012-09-09 22:10:44','2012-09-09 22:10:44'),(13,55,'Dana','Rose','','','','','','','',3,'2012-09-10 04:50:08','2012-09-10 04:50:08'),(14,56,'Yulia','Lukmanova','VP of Marketing','6 years in operations and marketing with P&G and DHL.\r\nB.S. Industrial Engineering from Moscow State Aviation University \r\n','','','','','',NULL,'2012-09-12 18:35:18','2012-09-12 18:35:18'),(15,56,'Vincent','Braley','COO','6 years in sales and marketing with Emerson Electric.\r\nM.S. in EE from Georgia Tech and Bachelor in EE from ENSEEIHT (France).','','','','','',NULL,'2012-09-12 18:36:01','2012-09-12 18:36:01'),(16,56,'Guillaume ','Labilloy','VP of Marketing','8+ years with Mediamobile\r\nM.S. of Engineering Science in Computing and Electronics with joint degree in Electronic Sensor and Image Analysis (France)','','','','','',NULL,'2012-09-12 18:36:35','2012-09-12 18:36:35'),(17,56,'Baris ','Cinar','CFO','4 years with Central Bank of Turkey\r\nB.S. in Business Administration Marmara university (Turkey)','','','','','',NULL,'2012-09-12 18:37:04','2012-09-12 18:37:04'),(18,57,'Sid','S','','','','Student','','','',NULL,'2012-09-26 21:39:32','2012-09-26 21:39:32');
/*!40000 ALTER TABLE `companyteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companydocs`
--

DROP TABLE IF EXISTS `companydocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companydocs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `document` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companydocs`
--

LOCK TABLES `companydocs` WRITE;
/*!40000 ALTER TABLE `companydocs` DISABLE KEYS */;
INSERT INTO `companydocs` VALUES (4,NULL,NULL,NULL,'2012-08-09 22:25:40','2012-08-09 22:25:40',NULL),(5,NULL,NULL,NULL,'2012-08-09 22:27:50','2012-08-09 22:27:50',NULL),(6,NULL,NULL,NULL,'2012-08-09 22:28:01','2012-08-09 22:28:01',NULL),(7,NULL,'sdfdsf',NULL,'2012-08-09 22:30:34','2012-08-09 22:30:34',NULL);
/*!40000 ALTER TABLE `companydocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmuaffiliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Sergey','111','sergeyastretsov.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00','Sergey','Astretsov','Tepper School of Bussines \'13','s@sergey.com'),(2,'Anna','111','photo2.jpg','2012-07-06 20:03:14','2012-07-06 20:03:14','Anna','Astretsova','No','a@anna.com'),(3,'Brett','111','photo3.jpg','2012-07-07 16:49:05','2012-07-07 16:49:05','Brett','Varner','Tepper School of Bussines \'13','b@brett.com'),(4,'Seong','111','photo4.jpg','2012-07-07 16:52:20','2012-07-07 16:52:20','Seong','Bae','Tepper School of Bussines \'12','s@seong.com'),(5,'James','111','jameswolfe.jpg','2012-07-07 17:30:51','2012-07-07 17:30:51','James','Wolfe','Tepper School of Bussines \'12','j@james.com'),(6,'Jeff','111',NULL,'2012-07-13 18:18:14','2012-07-13 18:18:14','Jeff','Mataya','Tepper School of Bussines \'12','j@jeff.com'),(7,'Rami','111',NULL,'2012-07-13 20:37:57','2012-07-13 20:37:57','Rami','Saad','Tepper School of Bussines \'12','r@rami.com'),(9,'Anton','111',NULL,'2012-07-17 01:32:58','2012-07-17 01:32:58','Anton','Titov','No','a@anton.com'),(10,'Ryan','111',NULL,'2012-08-26 18:56:54','2012-08-26 18:56:54','Ryan','Burns','',''),(11,'Dave','111',NULL,'2012-08-26 19:11:28','2012-08-26 19:11:28','Dave','Mawhinney','Executive Director, DJC','d@dave.com'),(12,'Kit','111',NULL,'2012-08-28 15:19:18','2012-08-28 15:19:18','Kit','','',''),(14,'Dana','111',NULL,'2012-09-07 15:11:49','2012-09-07 15:11:49','Dana','Steech','',''),(15,'John','111',NULL,'2012-09-12 18:14:06','2012-09-12 18:14:06','John','Smith','Tepper','johnsmith@wwwatch.com'),(16,'Arpita','111',NULL,'2012-09-26 21:35:13','2012-09-26 21:35:13','Arpita','','','');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectteams`
--

DROP TABLE IF EXISTS `projectteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmuaffiliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectteams`
--

LOCK TABLES `projectteams` WRITE;
/*!40000 ALTER TABLE `projectteams` DISABLE KEYS */;
INSERT INTO `projectteams` VALUES (15,'James','Wolfe','Chief	 Executive Officer','Before Qualaris managed the radar waveguide machining system upgrade for a manufacturing cell Led engineering teams in the design and development of manufacturing test fixtures Accepted into engineering rotational program (Professional Development Program','http://www.linkedin.com/pub/james-­wolfe/2/127/897','BS in Mech Eng (2000), MBA Candidate (2012)','james@qualaris.com','','','jameswolfe.jpg','2012-07-17 04:25:54','2012-07-17 04:25:54',6),(16,'Scott','Fisk','VP of Technology','My work was primarily on data analytics and system architecture.\n\nI worked with Dan Siewiorek, Ph.D. and Asim Smailagic, Ph.D, in the field of machine learning for activity recognition. Current work includes ErgoBuddy, which will detect activities related','http://www.linkedin.com/pub/scott-­fisk/44/657/820','Master\'s in Electrical & Computer Engineering, 2011','scott@qualaris.com','6026223476','5501 Walnut Street\r APT 305	\r Pittsburgh, Pennsylvania\r 15232, United States	\r   	',NULL,'2012-07-17 04:28:41','2012-07-17 04:28:41',6),(17,'Daniel','Bishop','Chief Innovation Officer','Before Qualaris developing new technologies for next-gen point-of-care diagnostics and medical assays','http://www.linkedin.com/pub/daniel-­bishop/14/780/773','PhD Student - Biomedical Engineering','daniel@qualaris.com	','','','danielbishop.jpg','2012-07-17 04:30:59','2012-07-17 04:30:59',6),(18,'Craig','Teegarden','VP of Engineering','Architecture design and implementation of core backend processing and frontend software','http://www.linkedin.com/in/craigteegarden','PhD Candidiate - Electrical & Computer','craig@qualaris.com','','','craigteegarden.jpg','2012-07-17 04:32:41','2012-07-17 04:32:41',6),(19,'Sergey','Astretsov','Founder','Sergey has several years of experience working in venture capital and private equity funds. Right now Sergey is a second year student at Tepper School of Business at Carnegie Mellon University. Prior to joining Tepper, he worked for three years at Rusnano','http://www.linkedin.com/in/sergeyastretsov','Tepper School of Business \'13','sergey@mongori.com','6507040999','5423 Howe st., ap. 2, Pittsburgh, PA, 15232','sergeyastretsov.jpg','2012-07-18 23:59:36','2012-07-18 23:59:36',1),(20,'Michael','Watch','Technology lead','Development','link','No','michael@michael.com','','','michaelwatch.jpeg','2012-08-09 01:23:34','2012-08-09 01:23:34',1),(24,'qqq','','','','','','','','',NULL,'2012-08-27 04:06:38','2012-08-27 04:06:38',23),(25,'Anton Titov','','','','','','','','',NULL,'2012-08-27 04:11:04','2012-08-27 04:11:04',23),(26,'Gul','Stul','CMO','','','','','','',NULL,'2012-08-27 04:11:30','2012-08-27 04:11:30',23),(27,'New','member','no one knows','','','','','','',NULL,'2012-08-27 04:14:06','2012-08-27 04:14:06',23);
/*!40000 ALTER TABLE `projectteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) DEFAULT NULL,
  `fund_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funds`
--

LOCK TABLES `funds` WRITE;
/*!40000 ALTER TABLE `funds` DISABLE KEYS */;
INSERT INTO `funds` VALUES (1,11,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (3,'Sergey','2012-09-10 04:45:44','2012-09-10 04:45:44','photo.JPG'),(4,NULL,'2012-09-10 12:44:56','2012-09-10 12:44:56','Logo.png'),(5,NULL,'2012-09-10 12:45:42','2012-09-10 12:45:42','Logo.png');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companydescriptions`
--

DROP TABLE IF EXISTS `companydescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companydescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `isclosed` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companydescriptions`
--

LOCK TABLES `companydescriptions` WRITE;
/*!40000 ALTER TABLE `companydescriptions` DISABLE KEYS */;
INSERT INTO `companydescriptions` VALUES (1,1,'Market opportunity','Market research for this class will be dedicated to a startup idea of a crowdfunding platform SchoolUp. SchoolUp will be an online platform that will connect small independent investors and entrepreneurs within an existing organic society, like alumni network.\r\n\r\nA new law JOBS Act (Jumpstart Our Business Startup Act) that was signed in April 2012 allows non-accredited investors to participate in funding startups. In other words everybody has a right to invest their money in businesses, unlike before when a person was supposed to have a certain level of earnings or assets to do that. Thereby millions of people now can be angel investors and, on the other hand, bigger funds are available for entrepreneurs.',0,'2012-08-09 04:05:21','2012-09-09 20:59:21'),(2,1,'Action plan','Capital Round is on its early stage of development and a market research is needed to understand customers’ needs. There are two types of customers: alumni and startups.  Alumni would be investors in startups, hence it is important to understand when and why they would be able to invest in a startup. In particular the research is supposed to investigate when and what amount people are willing to donate to school or other funds and what they are expecting to from that. This analysis could be done by surveys.  Another type of clients would be startups. Here the research will analyze what entrepreneurs are looking for from investors: money, experience, network etc. Since the potential audience is smaller in this case, this analysis could be done as face-to-face interviews with a number of entrepreneurs.  Final product of this market research will be customer profiles for both types of customers and potential size of the market.',0,'2012-09-09 18:31:12','2012-09-09 19:19:27'),(3,1,'Team','Core team has experience working in investment business, including venture capital Rusnano and seed fund Open Field Entrepreneruship Fund, as well as in number of starup. Advisory board includes successful entrepreneurs and veture capitalists',0,'2012-09-09 18:34:11','2012-09-09 19:19:35'),(4,1,'Timeline','The company will start its operational activity in December, when JOBS Act is implemented',0,'2012-09-09 20:09:50','2012-09-09 20:17:03'),(7,1,'CMU Affiliation ','The company was founded by CMU alumni and students',1,'2012-09-09 20:16:47','2012-09-09 20:16:47'),(9,3,'Vision','In 2011, smartphones outsold PCs for the first time in the history.  In only few years from now, almost everyone will have a smartphone and their ability to seek and consume information from their phone will not be limited by the size or speed.  When they visit a website, they will expect the best experience no matter where they are or what device they are using.  All retailers, large and small, must adopt and harness the power of mobile devices to deliver the best experiences to their customers and maximize potential revenue.',0,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(10,3,'Team','Seong Bae leads the product development at Prooty.  He is a second-year MBA student at Tepper School of Business where he is focusing on entrepreneurship, marketing, and finance. Prior to business school, Seong spent seven years as an IT consultant and application developer and have designed, developed, and deployed numerous enterprise-level solutions for large companies. Before coming to Tepper, Seong spent three years at Avanade, a joint-venture between Accenture and Microsoft, where he helped deploy solutions for companies in media and insurance industries.\n\nRusty Hamilton is a backend developer at Prooty and, together with Seong, developed the initial version of the Prooty platform.  Rusty has been programming since the age of 9, starting with Applesoft BASIC on the Apple IIe, moving on to C, C++, Python, 6502 assembly, and, for the past 3 years, PHP. Rusty holds a degree in biochemistry from the University of Delaware, obtained during a time when he wasn’t sure whether science or programming was his first love.',0,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(11,6,'Market','Our product, Clinical Practice Support System (CPSS), is a Software-as-a-Service (SaaS) Safety and Quality Platform which monitors clinical practices of hospital healthcare workers and drives the electronic delivery of information at the point of care to support practice completion.  Our initial offering monitors hand hygiene, analyzes practice data, delivers practice support information delivery and powers a suite of software tools for improving hand hygiene through staff interventions.  Our software streamlines and automates the key steps in improving practices. Our core technology brings unique analytics to bear on healthcare worker practices, patient risk, and optimizing information delivery. This is coupled to a system that interoperates with existing hospital infrastructure for personnel tracking and electronic health records.',0,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(12,6,'Value Proposition','Our market entry point is supporting hand hygiene, a practice at the core of preventing hospital acquired infections. Medical studies have shown that clinicians perform hand hygiene clinical practices around 40% of the time. Hospitals rely on manual methods for monitoring and analyzing clinical practices.  Furthermore, hospitals have inadequate tools to deliver relevant information and improve healthcare workersâ€™ practices.    \n\nTwo million Americans contract hospital acquired infections each year, resulting in 100,000 deaths. The Centers for Medicare and Medicaid Services and other payers are no longer reimbursing for a number of HAIs, adding $45 billion to hospital costs. By helping a hospital like UPMC Presbyterian deliver at least a 25% reduction in HAIs, we will save them close over $2.5 million per year.',0,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(13,6,'Competition','Our solution focuses on improving best practices through visual reminders and information delivery at the point of care. We answer the questions of ‘What’, ‘When’, and ‘How’ information is delivered to best support clinical practices, such as hand hygiene. We also provide a suite of quality improvement software tools. This includes report generation, practice analytics, and custom interventions using point of care information delivery to improve best practices in hand hygiene. Where our competitors focus on tracking hand hygiene compliance, we focus on supporting best practices at the point of care and across the organization. \n\nWe identify three main groups including real time location systems, targeted hand hygiene systems, and infection control software. \n\n1) Real Time Location Systems: AeroScout, Ekahau, Versus \n\nThese companies have a real time location system that to date have focused on asset tracking, work flow optimization, and personnel tracking. They have begun to offer solutions in which customers can add a hand hygiene sensor. These ‘add-inâ€ solutions focus on gathering hand hygiene compliance data. However, they place little to no focus on utilizing their system to actually support improvement of patient safety practices. \n\n2) Targeted Hand Hygiene Systems: Xhale \n\nTargeted systems, such as one being developed by Xhale Inc., have smaller infrastructure requirements compared to real time location systems. However, the Xhale system is physically encumbering and adds more work steps. These targeted systems are limited to only addressing hand hygiene tracking. Again, they do not serve the broader problem of improving hand hygiene practices.\n\n3) Infection Control Software: TheraDoc \n\nA software provider, such as TheraDoc, mines data from the Electronic Healthcare Record, to retrospectively identify whether a hospital acquired infection has occurred. This company and others do not address the core of preventing the problem, best practices in hand hygiene. Qualaris delivers the clinical practice support that healthcare workers need to achieve these best practices.',1,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(14,6,'Revenue model','We will sell CPSS as a Software-as-a-Service to hospitals, generating recurring revenues through software licenses, maintenance, and services contracts.',NULL,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(15,6,'Current stage','We completed a standalone prototype system and received feedback from demonstrations to over 50 healthcare workers ranging from frontline nurses to physicians to mid-level and c-suite leadership.  We received a $25,000 grant from The Technology Collaborative (http://www.techcollaborative.org/) and are using the funds for technology and customer development. We also have been accepted into the CMU Donald Jones Center Accelerator which includes a $15,000 convertible note to be made to the company.  Founders have received several pre-entity awards:  Jewish Healthcare Foundation - $20,000 private academic grant Innovation Works/Carnegie Mellon University i6 program - $5,000 academic grant The Technology Collaborative - $8,000 academic grant University of Pittsburgh, Institute for Entrepreneurial Excellence - $6000 competition cash prize',NULL,'2012-09-09 20:41:09','2012-09-09 20:41:09'),(16,3,'Speed & Scalability','Prooty platform runs on cloud and is built to scale.  Whether you are a small online retailer with 5k unique visitors or a  retailer with 500k unique visitors per month, Prooty platform will scale seamlessly.  Utilizing the Content Delivery Network (CDN) from Amazon Web Services, the site, pages, product images and any other contents will load blazing fast.  Additionally, all product images on the platform are optimized for mobile devices, which allows fast loading of pages without compromise in image quality.',1,'2012-09-09 22:06:03','2012-09-09 22:06:03'),(17,56,'Market strategy','Achieve 25% market share for by the end of the game while meeting financial targets\r\nPrice: command premium of 3-5% based on quality and greenness. \r\nBrand: Maintain reasonable brand and keep marketing expenditure 0.97-0.99 of market average, focusing on specific markets as necessary\r\nQuality: Seek leadership in quality and keep 5% above world average. If competitors also aggressively pursue quality, shift focus to marketing \r\nGreen: Seek leadership in greenness and keep 5% above world average',0,'2012-09-12 18:33:13','2012-09-12 18:33:13'),(18,56,'Loans and Interest ','Nearly 54% of our liabilities are loan and interest expenses\r\nMoreover, every quarter $1 million interest expense occurs\r\nTarget is to decrease the cost of debt',1,'2012-09-12 18:50:10','2012-09-12 18:50:10');
/*!40000 ALTER TABLE `companydescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pitch` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_path` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goal_sum` int(11) DEFAULT NULL,
  `raised_sum` int(11) DEFAULT NULL,
  `closing_date` datetime DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'www.capitalround.com','Capital Round','Capital Round is an online platform that will give alumni an opportunity to invest small money in their schools’ spin-off and startups. And due to a large alumni network, startups will be able to raise significant funds\r\n\r\nUnlike other crowdfunding platforms, Capital Round will actually be an investment fund where alumni will get a share for their investments.','2012-07-03 20:26:05','2012-09-07 19:20:11','company3.png',100000,23000,'2012-08-01 00:00:00','Approved'),(3,'www.prooty.com','Prooty','Mobile has forever changed how we access information, communicate, and even make purchases. Nearly one out of every six people in the US has a smartphone\r\n\r\nMobile penetration has increased rapidly in past three years with Google and Apple. We will continue to see these companies keep innovating to make our lives easier','2012-07-03 20:28:57','2012-09-07 17:36:59','company4.png',25000,8000,'2012-09-01 00:00:00','Due Diligance'),(4,NULL,'LifeMap','LifeMap is a solution for drug makers and researches, like Pfizer, Roche and J&J, whose productivity remains flat, while R&D costs increase from $8B to $60B in 30 years\n\nLifeMap is a knowledge engine that reduces the time spent by researchers digging through mountain of documents looking for relevant facts by 5 fold','2012-07-03 20:40:01','2012-09-07 17:39:20','company2.png',500000,1000,'2012-10-01 00:00:00','New'),(5,'www.optinary.com','Optinary','Going to Europe you want to visit Paris, London, Barelona, Milan... You need to find out what is the best way to go from Paris to Milan, is it a train or a flight? This is not an issue any more.\r\n\r\nOpitnary helps you to build your trip in just a few seconds. Optinary will find you the optimal way to transport between cities and evn book all necessary tickets with one click.\r\n','2012-07-03 23:37:40','2012-09-07 17:39:32','company1.png',25000,2700,'2012-09-15 00:00:00','New'),(6,'www.qualaris.com','Qualaris Healthcare Solutions','Our team is attacking a $45 billion problem: hospital acquired infections (HAIs). An information technology platform to revolutionize safe healthcare practices by targeting hand hygiene compliance, the proven cornerstone of infection control. Our Clinical Practice Support System (CPSS) will monitor and improve best practices in hand hygiene to reduce infections and deliver millions of dollars of savings','2012-07-17 01:50:56','2012-09-07 17:38:26','company5.png',100000,100000,'2012-06-15 00:00:00','In Portfolio'),(23,'www.rusnano.com','Rusnano','Rusnano is the first and the biggest investment fund in Russia. It has $5 billion under management and has invested in 100 companies\r\n\r\nRusnano is looking for raising capital to support new project in Russia','2012-08-26 21:18:43','2012-09-07 17:38:54','company7.png',20000,3000,'2012-09-30 00:00:00','Did not apply'),(56,'www.wwwatch.com','W&W Watch Company','For over 100 years history W&W positioned itself as a high quality innovative watch maker. Today we will  make W&W know as a ‘Green’ company','2012-09-12 18:15:10','2012-09-12 18:15:10','company6.png',NULL,NULL,NULL,'new'),(57,'','Second Microsoft','This will be better than Microsoft','2012-09-26 21:37:32','2012-09-26 21:37:32','',NULL,NULL,NULL,'new');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companynews`
--

DROP TABLE IF EXISTS `companynews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companynews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsdate` datetime DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companynews`
--

LOCK TABLES `companynews` WRITE;
/*!40000 ALTER TABLE `companynews` DISABLE KEYS */;
INSERT INTO `companynews` VALUES (1,1,'First customer','2012-08-09 04:01:00','We got our first customer','2012-08-09 04:02:09','2012-08-09 04:02:09'),(2,1,'First round','2012-08-09 04:02:00','We raised $50K from an angel investor','2012-08-09 04:03:02','2012-08-09 04:03:02'),(3,1,'Conference','2012-08-09 00:00:00','We will participate in \"All startups\" conference','2012-08-09 04:05:21','2012-08-09 04:05:21'),(4,6,'Prototype is completed','2012-03-16 00:00:00','We  completed a standalone prototype system and received feedback from demonstrations to over 50 althcare workers ranging from frontline nurses to physicians to mid‐level and c‐suite leadership.','2012-08-09 04:30:36','2012-08-09 04:34:57'),(5,6,'We received a Grant','2012-05-09 00:00:00','We received a $25,000 grant from The Technology Collaborative and are using the funds for technology and customer development.','2012-08-09 04:34:34','2012-08-09 04:34:34'),(17,17,'sdfsdf','2012-08-27 00:00:00','dfavdfgdfg 111','2012-08-27 04:52:31','2012-08-27 04:53:12'),(18,18,'sdfsdf','2012-08-27 00:00:00','asadfgawerwer','2012-08-27 04:54:59','2012-08-27 04:55:04'),(21,23,'NeoPhotonics','2012-08-27 00:00:00','Rusnano invested in NeoPhotonics. This was the first investment abroud','2012-08-27 04:59:45','2012-08-27 05:04:58'),(22,23,'Galaxy 3','2012-08-27 00:00:00','Rusnano would never use Galaxy 3 according to a MD. And why?','2012-08-27 05:00:19','2012-08-27 05:13:30'),(23,1,'Marketing','2012-09-09 00:00:00','Capital Round is starting a marketing campaign  ','2012-09-09 20:37:33','2012-09-09 20:37:33'),(24,3,'The future of mobile','2012-09-02 00:00:00','Henry Blodget, the CEO of Business Insider, recently published an interesting article titled “The Future of Mobile.” It’s a 50-page slide deck and, after reading it, I was able to get some basic understanding of where we are in terms of this mobile revolution. Some interesting observations from the article are:\r\n\r\n“The number of mobile devices will DWARF the number of PCs”\r\nThe percentage of US population owning a smartphone is now 45%, compared to 35% in May 2011.\r\nAmong many things people do on mobile devices….\r\nOnline Retail category increased by 94% from 2010 to 2011\r\nElectronic payment increased by 80% from 2010 to 2011\r\n“30% of Gilt’s Black Friday revenue was from mobile sales”\r\n“38% of US consumers have used smartphone to buy products or services”\r\nThere is a lot more information that you can find helpful in better understanding the mobile landscape and its future on the slides.  Take a look at the article by clicking on the following link:\r\n\r\nhttp://www.businessinsider.com/the-future-of-mobile-deck-2012-3','2012-09-09 22:18:20','2012-09-09 22:18:20');
/*!40000 ALTER TABLE `companynews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-27 16:30:40
