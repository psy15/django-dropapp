-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: countryy
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add city',7,'add_city'),(26,'Can change city',7,'change_city'),(27,'Can delete city',7,'delete_city'),(28,'Can view city',7,'view_city'),(29,'Can add country',8,'add_country'),(30,'Can change country',8,'change_country'),(31,'Can delete country',8,'delete_country'),(32,'Can view country',8,'view_country'),(33,'Can add district',9,'add_district'),(34,'Can change district',9,'change_district'),(35,'Can delete district',9,'delete_district'),(36,'Can view district',9,'view_district'),(37,'Can add state',10,'add_state'),(38,'Can change state',10,'change_state'),(39,'Can delete state',10,'delete_state'),(40,'Can view state',10,'view_state'),(41,'Can add person',11,'add_person'),(42,'Can change person',11,'change_person'),(43,'Can delete person',11,'delete_person'),(44,'Can view person',11,'view_person');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$pYLSWGLAZ34Tr5HxdF3eI6$9mDLtONSk6OiE0UqSJ1vV8R8YF+agDsYLd1RHObWKoM=','2021-05-23 11:21:27.415852',1,'psy','','','psy@gmail.com',1,1,'2021-05-23 03:49:03.380654');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-05-23 04:08:27.975796','1','par',1,'[{\"added\": {}}]',11,1),(2,'2021-05-23 10:32:44.402309','16','lal',3,'',11,1),(3,'2021-05-23 10:32:44.417016','15','Paras Yadav',3,'',11,1),(4,'2021-05-23 10:32:44.426948','14','Paras Yadav',3,'',11,1),(5,'2021-05-23 10:32:44.434943','13','ss',3,'',11,1),(6,'2021-05-23 10:32:44.445166','12','pp',3,'',11,1),(7,'2021-05-23 10:32:44.453331','11','ll',3,'',11,1),(8,'2021-05-23 10:32:44.461324','10','Paras Yadav',3,'',11,1),(9,'2021-05-23 10:32:44.469693','9','asssd',3,'',11,1),(10,'2021-05-23 10:32:44.476862','8','ss',3,'',11,1),(11,'2021-05-23 10:32:44.484865','7','pss',3,'',11,1),(12,'2021-05-23 10:32:44.492694','6','ddddddd',3,'',11,1),(13,'2021-05-23 10:32:44.500571','5','aa',3,'',11,1),(14,'2021-05-23 10:32:44.509625','4','aa',3,'',11,1),(15,'2021-05-23 10:32:44.520822','3','ps',3,'',11,1),(16,'2021-05-23 10:32:44.531822','2','ps',3,'',11,1),(17,'2021-05-23 10:32:44.541833','1','par',3,'',11,1),(18,'2021-05-23 11:31:09.256598','30','Neelam Yadav',3,'',11,1),(19,'2021-05-23 11:31:09.261600','29','Paras Yadav',3,'',11,1),(20,'2021-05-23 11:31:09.266252','28','Paras Yadav',3,'',11,1),(21,'2021-05-23 11:31:09.270260','27','Neelam Yadav',3,'',11,1),(22,'2021-05-23 11:31:09.275280','26','Paras Yadav',3,'',11,1),(23,'2021-05-23 11:31:09.279402','25','Paras Yadav',3,'',11,1),(24,'2021-05-23 11:48:04.229886','34','a',3,'',11,1),(25,'2021-05-23 11:48:04.236052','33','a',3,'',11,1),(26,'2021-05-23 11:48:04.240991','32','Paras Yadav',3,'',11,1),(27,'2021-05-23 11:48:04.245991','31','Neelam Yadav',3,'',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'droppy','city'),(8,'droppy','country'),(9,'droppy','district'),(11,'droppy','person'),(10,'droppy','state'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-23 03:44:57.036514'),(2,'auth','0001_initial','2021-05-23 03:44:59.791142'),(3,'admin','0001_initial','2021-05-23 03:45:00.593050'),(4,'admin','0002_logentry_remove_auto_add','2021-05-23 03:45:00.620678'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-23 03:45:00.649630'),(6,'contenttypes','0002_remove_content_type_name','2021-05-23 03:45:01.218706'),(7,'auth','0002_alter_permission_name_max_length','2021-05-23 03:45:01.864624'),(8,'auth','0003_alter_user_email_max_length','2021-05-23 03:45:01.947996'),(9,'auth','0004_alter_user_username_opts','2021-05-23 03:45:01.977954'),(10,'auth','0005_alter_user_last_login_null','2021-05-23 03:45:02.241942'),(11,'auth','0006_require_contenttypes_0002','2021-05-23 03:45:02.256993'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-23 03:45:02.293308'),(13,'auth','0008_alter_user_username_max_length','2021-05-23 03:45:02.524794'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-23 03:45:02.769040'),(15,'auth','0010_alter_group_name_max_length','2021-05-23 03:45:02.843776'),(16,'auth','0011_update_proxy_permissions','2021-05-23 03:45:02.870967'),(17,'auth','0012_alter_user_first_name_max_length','2021-05-23 03:45:03.133748'),(18,'sessions','0001_initial','2021-05-23 03:45:03.431231'),(19,'droppy','0001_initial','2021-05-23 03:48:36.096830');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4kh6c3trswizw9vsfxdcut8ktmyi5byq','.eJxVjEEOwiAQRe_C2pChDLS4dO8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3EWSpx-t0DxwXUH6U711mRsdV3mIHdFHrTLa0v8vBzu30GhXr51HoEhIBJMakDlULE2BoHyAJmV0RhHy1NCg9oZ65LTGYhzIrCZXBTvD7wON20:1lkmAh:3FQd_tG4cf-czwlP0S-g7m5lDAI1L_mPMKYvS58E-QA','2021-06-06 11:21:27.420819'),('nfwr2tfxprmoyxmefpui42y7ef5zyfin','.eJxVjEEOwiAQRe_C2pChDLS4dO8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3EWSpx-t0DxwXUH6U711mRsdV3mIHdFHrTLa0v8vBzu30GhXr51HoEhIBJMakDlULE2BoHyAJmV0RhHy1NCg9oZ65LTGYhzIrCZXBTvD7wON20:1lkf7K:qbSo8J9DTBGgUNYwF5K1codrkCWTyPnw_dZCM7NCsLo','2021-06-06 03:49:30.987159');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `droppy_city`
--

DROP TABLE IF EXISTS `droppy_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `droppy_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `district_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `droppy_city_district_id_38f71d16_fk_droppy_district_id` (`district_id`),
  CONSTRAINT `droppy_city_district_id_38f71d16_fk_droppy_district_id` FOREIGN KEY (`district_id`) REFERENCES `droppy_district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droppy_city`
--

LOCK TABLES `droppy_city` WRITE;
/*!40000 ALTER TABLE `droppy_city` DISABLE KEYS */;
INSERT INTO `droppy_city` VALUES (1,'First Ahmednagar city',1),(2,'Second Ahmednagar city',1),(3,'First Ajmer city',3),(4,'Second Ajmer city',3),(5,'First Agra city',5),(6,'First Agra city',5),(7,'First Aligarh city',6),(8,'Second Aligarh city',6),(9,'First First California district city',7),(10,'Second First California district city',7),(11,'First Second California district city',8),(12,'Second Second California district city',8),(13,'First First Florida district city',9),(14,'Second First Florida district city',9),(15,'First Second Florida district city',10),(16,'Second Second Florida district city',10),(17,'First First Alabama district city',11),(18,'Second First Alabama district city',11),(19,'First Second Alabama district city',12),(20,'Second Second Alabama district city',12),(21,'First First Alberta district city',13),(22,'Second First Alberta district city',13),(23,'First Second Alberta district city',14),(24,'Second Second Alberta district city',14),(25,'First First Ontario district city',15),(26,'Second First Ontario district city',15),(27,'First Second Ontario district city',16),(28,'Second Second Ontario district city',16),(29,'First First Columbia district city',17),(30,'Second First Columbia district city',17),(31,'First Second Columbia district city',18),(32,'Second Second Columbia district city',18),(33,'First First New South Wales district city',19),(34,'Second First New South Wales district city',19),(35,'First Second New South Wales district city',20),(36,'Second Second New South Wales district city',20),(37,'First First Queensland district city',21),(38,'Second First Queensland district city',21),(39,'First Second Queensland district city',22),(40,'Second Second Queensland district city',22),(41,'First Arthur Land city',23),(42,'Second Arthur Land city',23),(43,'First Buckingham Land city',24),(44,'Second Buckingham Land city',24),(45,'First Amravati city',2),(46,'Second Amravati city',2),(47,'First Alwar city',4),(48,'Second Alwar city',4);
/*!40000 ALTER TABLE `droppy_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `droppy_country`
--

DROP TABLE IF EXISTS `droppy_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `droppy_country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droppy_country`
--

LOCK TABLES `droppy_country` WRITE;
/*!40000 ALTER TABLE `droppy_country` DISABLE KEYS */;
INSERT INTO `droppy_country` VALUES (1,'India'),(2,'United States'),(3,'Canada'),(4,'Australia');
/*!40000 ALTER TABLE `droppy_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `droppy_district`
--

DROP TABLE IF EXISTS `droppy_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `droppy_district` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `state_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `droppy_district_state_id_419ded29_fk_droppy_state_id` (`state_id`),
  CONSTRAINT `droppy_district_state_id_419ded29_fk_droppy_state_id` FOREIGN KEY (`state_id`) REFERENCES `droppy_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droppy_district`
--

LOCK TABLES `droppy_district` WRITE;
/*!40000 ALTER TABLE `droppy_district` DISABLE KEYS */;
INSERT INTO `droppy_district` VALUES (1,'Ahmednagar',1),(2,'Amravati',1),(3,'Ajmer',2),(4,'Alwar',2),(5,'Agra',3),(6,'Aligarh',3),(7,'First California district',4),(8,'Second California district',4),(9,'First Florida district',5),(10,'Second Florida district',5),(11,'First Alabama district',6),(12,'Second Alabama district',6),(13,'First Alberta district',7),(14,'Second Alberta district',7),(15,'First Ontario district',8),(16,'Second Ontario district',8),(17,'First Columbia district',9),(18,'Second Columbia district',9),(19,'First NSW district',10),(20,'Second NSW district',10),(21,'First Queensland district',11),(22,'Second Queensland district',11),(23,'Arthur Land',12),(24,'Buckingham Land',12);
/*!40000 ALTER TABLE `droppy_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `droppy_person`
--

DROP TABLE IF EXISTS `droppy_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `droppy_person` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `city_id` bigint DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  `district_id` bigint DEFAULT NULL,
  `state_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `droppy_person_city_id_f7a197de_fk_droppy_city_id` (`city_id`),
  KEY `droppy_person_country_id_6b7ec464_fk_droppy_country_id` (`country_id`),
  KEY `droppy_person_district_id_4cd0ddd8_fk_droppy_district_id` (`district_id`),
  KEY `droppy_person_state_id_bab5623b_fk_droppy_state_id` (`state_id`),
  CONSTRAINT `droppy_person_city_id_f7a197de_fk_droppy_city_id` FOREIGN KEY (`city_id`) REFERENCES `droppy_city` (`id`),
  CONSTRAINT `droppy_person_country_id_6b7ec464_fk_droppy_country_id` FOREIGN KEY (`country_id`) REFERENCES `droppy_country` (`id`),
  CONSTRAINT `droppy_person_district_id_4cd0ddd8_fk_droppy_district_id` FOREIGN KEY (`district_id`) REFERENCES `droppy_district` (`id`),
  CONSTRAINT `droppy_person_state_id_bab5623b_fk_droppy_state_id` FOREIGN KEY (`state_id`) REFERENCES `droppy_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droppy_person`
--

LOCK TABLES `droppy_person` WRITE;
/*!40000 ALTER TABLE `droppy_person` DISABLE KEYS */;
INSERT INTO `droppy_person` VALUES (17,'Virat',1,1,1,1),(18,'Rohit',46,1,2,1),(19,'Smith',33,4,19,10),(20,'Watson',37,4,21,11),(21,'Swift',14,2,9,5),(22,'Edge',27,3,16,8),(23,'Warner',41,4,23,12),(24,'John',11,2,8,4),(35,'Carrey',22,3,13,7);
/*!40000 ALTER TABLE `droppy_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `droppy_state`
--

DROP TABLE IF EXISTS `droppy_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `droppy_state` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `country_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `droppy_state_country_id_b676887b_fk_droppy_country_id` (`country_id`),
  CONSTRAINT `droppy_state_country_id_b676887b_fk_droppy_country_id` FOREIGN KEY (`country_id`) REFERENCES `droppy_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droppy_state`
--

LOCK TABLES `droppy_state` WRITE;
/*!40000 ALTER TABLE `droppy_state` DISABLE KEYS */;
INSERT INTO `droppy_state` VALUES (1,'Maharastra',1),(2,'Rajasthan',1),(3,'Uttar Pradesh',1),(4,'California',2),(5,'Florida',2),(6,'Alabama',2),(7,'ALberta',3),(8,'Ontario',3),(9,'Columbia',3),(10,'New South Wales',4),(11,'Queensland',4),(12,'Tasmania',4);
/*!40000 ALTER TABLE `droppy_state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24  9:34:14
