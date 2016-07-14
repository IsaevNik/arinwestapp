-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: arinwestdb
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.12.04.1

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
-- Table structure for table `arinwest_aboutpage`
--

DROP TABLE IF EXISTS `arinwest_aboutpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_aboutpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insta_img` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_aboutpage`
--

LOCK TABLES `arinwest_aboutpage` WRITE;
/*!40000 ALTER TABLE `arinwest_aboutpage` DISABLE KEYS */;
INSERT INTO `arinwest_aboutpage` VALUES (1,10);
/*!40000 ALTER TABLE `arinwest_aboutpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_filial`
--

DROP TABLE IF EXISTS `arinwest_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_filial` (
  `code` varchar(50) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_insta` varchar(20) NOT NULL,
  `user_insta_token` varchar(100) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_filial`
--

LOCK TABLES `arinwest_filial` WRITE;
/*!40000 ALTER TABLE `arinwest_filial` DISABLE KEYS */;
INSERT INTO `arinwest_filial` VALUES ('moscow','г. Москва, Барабанный переуолок, д. 4, стр 3','Москва','1552386467','1552386467.40c7dff.a1501fe9aae5493087f6aaa27b2c6678'),('zel','Зеленоград, корп. 404','Зеленоград','3529028886','3529028886.7d0f51a.80e3445ef30645828470635ed99e207c');
/*!40000 ALTER TABLE `arinwest_filial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_imgforslider`
--

DROP TABLE IF EXISTS `arinwest_imgforslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_imgforslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) NOT NULL,
  `about_page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_imgfors_about_page_id_1db9e368_fk_arinwest_aboutpage_id` (`about_page_id`),
  CONSTRAINT `arinwest_imgfors_about_page_id_1db9e368_fk_arinwest_aboutpage_id` FOREIGN KEY (`about_page_id`) REFERENCES `arinwest_aboutpage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_imgforslider`
--

LOCK TABLES `arinwest_imgforslider` WRITE;
/*!40000 ALTER TABLE `arinwest_imgforslider` DISABLE KEYS */;
INSERT INTO `arinwest_imgforslider` VALUES (1,'arinwest/img/about/slider/1.jpg',1),(2,'arinwest/img/about/slider/2.jpg',1),(3,'arinwest/img/about/slider/3.jpg',1),(4,'arinwest/img/about/slider/4.jpg',1);
/*!40000 ALTER TABLE `arinwest_imgforslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_portfolioitem`
--

DROP TABLE IF EXISTS `arinwest_portfolioitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_portfolioitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `url_img` varchar(250) NOT NULL,
  `filter_name_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_portfolioitem_23b44d68` (`filter_name_id`),
  CONSTRAINT `arinwest_filter_name_id_192a01c1_fk_arinwest_portfoliolevel_code` FOREIGN KEY (`filter_name_id`) REFERENCES `arinwest_portfoliolevel` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_portfolioitem`
--

LOCK TABLES `arinwest_portfolioitem` WRITE;
/*!40000 ALTER TABLE `arinwest_portfolioitem` DISABLE KEYS */;
INSERT INTO `arinwest_portfolioitem` VALUES (1,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/botoks/1.jpg','botoks'),(2,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/botoks/2.jpg','botoks'),(3,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/narashivanie/1.jpg','narashivanie'),(4,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/narashivanie/2.jpg','narashivanie'),(5,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/spa/1.jpg','spa'),(6,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/spa/2.jpg','botoks'),(7,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/vipramlenie/1.jpg','vipramlenie'),(8,'Текст Текст','Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/portfolio/vipramlenie/2.jpg','vipramlenie');
/*!40000 ALTER TABLE `arinwest_portfolioitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_portfoliolevel`
--

DROP TABLE IF EXISTS `arinwest_portfoliolevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_portfoliolevel` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_portfoliolevel`
--

LOCK TABLES `arinwest_portfoliolevel` WRITE;
/*!40000 ALTER TABLE `arinwest_portfoliolevel` DISABLE KEYS */;
INSERT INTO `arinwest_portfoliolevel` VALUES ('botoks','ботокс'),('narashivanie','наращивание'),('spa','спа'),('vipramlenie','выпрямление');
/*!40000 ALTER TABLE `arinwest_portfoliolevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_service`
--

DROP TABLE IF EXISTS `arinwest_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `filial_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_service_ce4d2499` (`filial_id`),
  CONSTRAINT `arinwest_service_filial_id_332a2232_fk_arinwest_filial_name` FOREIGN KEY (`filial_id`) REFERENCES `arinwest_filial` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_service`
--

LOCK TABLES `arinwest_service` WRITE;
/*!40000 ALTER TABLE `arinwest_service` DISABLE KEYS */;
INSERT INTO `arinwest_service` VALUES (1,'Кератиновое выпрямление','Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/1.jpg','Зеленоград'),(2,'Парафинотерапия','Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/2.jpg','Москва'),(3,'Стрижки','Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/2.jpg','Москва'),(4,'Уход и лечение волос','Текст Текст  Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/1.jpg','Москва'),(5,'Наращивание волос','Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/1.jpg','Москва'),(6,'Окрашивание','Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/1.jpg','Москва'),(7,'Прикорневой объем','Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст','arinwest/img/service/1.jpg','Москва');
/*!40000 ALTER TABLE `arinwest_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_servicecoastline`
--

DROP TABLE IF EXISTS `arinwest_servicecoastline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_servicecoastline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `coast` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `crm_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_servicecoast_service_id_2d9d96a1_fk_arinwest_service_id` (`service_id`),
  CONSTRAINT `arinwest_servicecoast_service_id_2d9d96a1_fk_arinwest_service_id` FOREIGN KEY (`service_id`) REFERENCES `arinwest_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_servicecoastline`
--

LOCK TABLES `arinwest_servicecoastline` WRITE;
/*!40000 ALTER TABLE `arinwest_servicecoastline` DISABLE KEYS */;
INSERT INTO `arinwest_servicecoastline` VALUES (1,'Текст Текст Текст Текст Текст Текст',120,1,''),(2,'Текст Текст Текст Текст',1200,1,''),(3,'Текст Текст',12000,1,''),(4,'Парафинотеррапия для рук',500,2,'288951'),(6,'Стрижка модельная',1500,3,'288901'),(7,'Стрижка мужская',500,3,'288900'),(8,'Стрижка каре',1500,3,'288897'),(9,'Стрижка кончиков',500,3,'288865'),(10,'Стрижка каскад',1500,3,'288855'),(11,'Ботокс для волос',3600,4,'288908'),(12,'Спа уход для волос',2000,4,'288906'),(13,'Кератиновое насыщение без выпрямления',1500,4,'288904'),(14,'Кератиновое выпрямление и лечение волос',1500,4,'288903'),(15,'Ленточное наращивание волос',3000,5,'288910'),(16,'Осветление в блонд',5000,6,'288938'),(17,'Выход из черного',5000,6,'288936'),(18,'Голливудское окрашивание (шатуш, балаяж..)',5000,6,'288933'),(19,'Окрашивание в один тон',3000,6,'288913'),(20,'Буффант',6000,7,'288912'),(21,'Буст ап',6500,7,'288911');
/*!40000 ALTER TABLE `arinwest_servicecoastline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_staffmember`
--

DROP TABLE IF EXISTS `arinwest_staffmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_staffmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `crm_id` varchar(100) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `about_page_id` int(11) NOT NULL,
  `filial_id` varchar(50) NOT NULL,
  `article_url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_staffme_about_page_id_3d1a0614_fk_arinwest_aboutpage_id` (`about_page_id`),
  KEY `arinwest_staffmember_ce4d2499` (`filial_id`),
  CONSTRAINT `arinwest_staffmember_filial_id_10595b64_fk_arinwest_filial_name` FOREIGN KEY (`filial_id`) REFERENCES `arinwest_filial` (`name`),
  CONSTRAINT `arinwest_staffme_about_page_id_3d1a0614_fk_arinwest_aboutpage_id` FOREIGN KEY (`about_page_id`) REFERENCES `arinwest_aboutpage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_staffmember`
--

LOCK TABLES `arinwest_staffmember` WRITE;
/*!40000 ALTER TABLE `arinwest_staffmember` DISABLE KEYS */;
INSERT INTO `arinwest_staffmember` VALUES (1,'Дмитрий Портнов','Парикмахер','58934','arinwest/img/about/staff/1.jpg',1,'Москва',''),(2,'Лиза','Парикмахер','59304','arinwest/img/about/staff/2.jpg',1,'Москва',''),(4,'JORG MACLEO2','Manager','','arinwest/img/about/staff/1.jpg',1,'Зеленоград','/blog/article/3'),(5,'Дмитрий Савельев','Парикмахер','59303','arinwest/img/about/staff/1.jpg',1,'Москва',''),(6,'Катя','Парикмахер','59305','arinwest/img/about/staff/2.jpg',1,'Москва',''),(7,'Люба','Парикмахер','59306','arinwest/img/about/staff/2.jpg',1,'Москва','');
/*!40000 ALTER TABLE `arinwest_staffmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_startpage`
--

DROP TABLE IF EXISTS `arinwest_startpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_startpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_startpage`
--

LOCK TABLES `arinwest_startpage` WRITE;
/*!40000 ALTER TABLE `arinwest_startpage` DISABLE KEYS */;
INSERT INTO `arinwest_startpage` VALUES (3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget eleifend velit, sit amet faucibus magna. Integer at pretium magna, ut vestibulum nulla. Mauris ultricies ante et justo elementum, quis volutpat neque porta. Donec eu condimentum augue. Morbi turpis turpis, vulputate ut pharetra eu, dictum nec nibh.',0),(4,'Nunc mattis leo mi, ac molestie nisl feugiat et.\r\n\r\n Etiam in quam non nibh ultricies dapibus. Quisque dapibus nisl nisl, vitae iaculis elit ultrices volutpat. Aenean faucibus, ligula non dapibus laoreet, est justo volutpat nisi, nec laoreet mauris orci sit amet massa.',1);
/*!40000 ALTER TABLE `arinwest_startpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Текст на главной',7,'add_startpage'),(20,'Can change Текст на главной',7,'change_startpage'),(21,'Can delete Текст на главной',7,'delete_startpage'),(22,'Can add Раздел портфолио',8,'add_portfoliolevel'),(23,'Can change Раздел портфолио',8,'change_portfoliolevel'),(24,'Can delete Раздел портфолио',8,'delete_portfoliolevel'),(25,'Can add Элемент портфолио',9,'add_portfolioitem'),(26,'Can change Элемент портфолио',9,'change_portfolioitem'),(27,'Can delete Элемент портфолио',9,'delete_portfolioitem'),(28,'Can add Строка пункт/стоимость',10,'add_servicecoastline'),(29,'Can change Строка пункт/стоимость',10,'change_servicecoastline'),(30,'Can delete Строка пункт/стоимость',10,'delete_servicecoastline'),(31,'Can add Услуга',11,'add_service'),(32,'Can change Услуга',11,'change_service'),(33,'Can delete Услуга',11,'delete_service'),(34,'Can add Страница \"О Нас\"',12,'add_aboutpage'),(35,'Can change Страница \"О Нас\"',12,'change_aboutpage'),(36,'Can delete Страница \"О Нас\"',12,'delete_aboutpage'),(37,'Can add Фото для слайдера',13,'add_imgforslider'),(38,'Can change Фото для слайдера',13,'change_imgforslider'),(39,'Can delete Фото для слайдера',13,'delete_imgforslider'),(40,'Can add Мастера',14,'add_staffmember'),(41,'Can change Мастера',14,'change_staffmember'),(42,'Can delete Мастера',14,'delete_staffmember'),(43,'Can add Автора',15,'add_author'),(44,'Can change Автора',15,'change_author'),(45,'Can delete Автора',15,'delete_author'),(46,'Can add Тэг',16,'add_tag'),(47,'Can change Тэг',16,'change_tag'),(48,'Can delete Тэг',16,'delete_tag'),(49,'Can add Статья',17,'add_article'),(50,'Can change Статья',17,'change_article'),(51,'Can delete Статья',17,'delete_article'),(52,'Can add Фото для слайдера',18,'add_imageforarticle'),(53,'Can change Фото для слайдера',18,'change_imageforarticle'),(54,'Can delete Фото для слайдера',18,'delete_imageforarticle'),(55,'Can add filial',19,'add_filial'),(56,'Can change filial',19,'change_filial'),(57,'Can delete filial',19,'delete_filial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$frK9kdmNFwb8$JZogMeFOZz7Y7R8LZHXcKk/z3uyJ8ownxVYkJf1/6/M=','2016-07-04 07:52:54',1,'admin','','','admin@mail.ru',1,1,'2016-07-01 13:36:42');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `pub_date` date NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_4f331e2f` (`author_id`),
  CONSTRAINT `blog_article_author_id_905add38_fk_blog_author_id` FOREIGN KEY (`author_id`) REFERENCES `blog_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'Текст Текст','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet laoreet rutrum. Maecenas dolor libero, auctor sit amet sapien ut, pulvinar semper augue. Pellentesque eu dolor vel nulla mollis dignissim. Ut varius vestibulum felis nec pellentesque. Duis quis lobortis elit, quis vestibulum erat. Phasellus vel velit a lorem vehicula malesuada nec lacinia turpis. Sed eget justo rhoncus, ornare nibh a, fermentum ipsum. Vestibulum et molestie arcu. Cras nec iaculis eros, a pretium justo. Proin lacinia eleifend tincidunt. Vestibulum pretium, urna vel convallis ornare, quam velit fringilla nibh, eu aliquet elit enim id turpis.\r\n\r\nVestibulum quis vulputate diam. Duis rutrum libero at sodales laoreet. Nulla condimentum eleifend cursus. Cras sollicitudin laoreet dui, eu pellentesque massa ultricies tincidunt. Fusce sit amet felis eu ipsum mollis cursus faucibus sit amet purus. In ultricies, libero sed pulvinar interdum, elit eros lobortis dui, et viverra leo purus et sapien. Nunc aliquam lacinia tortor eget gravida. Aenean lacus dui, volutpat eget tempor at, tempor ut nisl. Vestibulum a sagittis ligula. Fusce risus nunc, varius et tincidunt et, hendrerit in est. Nulla facilisi. Aenean lacus lectus, faucibus quis vehicula eget, porttitor vitae metus.\r\n\r\nSuspendisse vitae dui ut tellus scelerisque efficitur. Nulla interdum tempor eleifend. In tincidunt metus sit amet dapibus ultrices. Etiam volutpat sollicitudin quam in hendrerit. Aenean tempor mi ac aliquet porttitor. Mauris viverra, lorem et sollicitudin vehicula, eros eros fermentum eros, nec malesuada tellus tortor eget neque. Vestibulum sagittis maximus orci at consectetur. Nullam vehicula ex nec eleifend laoreet. Aenean volutpat velit venenatis bibendum viverra. Nullam scelerisque molestie felis, vitae tristique metus fermentum eu. Integer leo urna, elementum vel porttitor in, fermentum in nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed convallis dolor enim, id porta lorem malesuada sit amet. Proin consequat tortor at diam blandit pretium. Mauris luctus ligula quis libero dapibus placerat.','2016-07-05',1),(2,'Текст Текст Текст','Nunc vulputate, ligula sed lobortis bibendum, risus sapien scelerisque elit, non malesuada mi arcu quis dolor. Phasellus aliquam turpis eget velit egestas congue. Curabitur leo elit, maximus vel egestas nec, congue a est. Integer congue ut lectus sit amet auctor. Donec condimentum consequat ultricies. Nullam pellentesque tincidunt velit quis condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nAenean et nunc elementum, ultrices risus mollis, sagittis eros. Mauris cursus, mauris ac ultricies euismod, sem ligula maximus ante, sit amet tincidunt diam tellus at mi. In mollis rhoncus varius. Quisque semper nulla non nisl tincidunt viverra. Nunc et consectetur orci. Aenean non massa neque. Aliquam erat volutpat. Cras faucibus ipsum commodo nunc dignissim, porttitor faucibus diam vehicula. Suspendisse eget hendrerit nunc. Phasellus id nibh laoreet nulla fringilla interdum eu sed sapien. Pellentesque elementum sed leo et sodales.','2016-07-05',2),(3,'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet','Maecenas nibh justo, suscipit varius nunc in, eleifend pulvinar dui. Proin et nisi diam. Duis fringilla ac lectus at ultricies. Suspendisse maximus bibendum varius. Fusce feugiat in augue id aliquam. Nulla ut tempus massa. Curabitur sodales pharetra quam ut semper. Cras quis efficitur augue, at suscipit elit. Quisque laoreet sapien vel accumsan dapibus. Suspendisse efficitur volutpat diam.\r\n\r\nMorbi tincidunt, tortor sit amet pharetra pellentesque, lorem nisl gravida massa, eu posuere nunc ex eu dui. Donec a blandit urna, varius ornare risus. Aliquam tristique tempor metus, ut dignissim nibh varius at. Integer faucibus rhoncus blandit. Nam dignissim mauris sodales, vehicula libero a, tempor ligula. Ut posuere malesuada leo sed rutrum. Donec nec purus eu nunc porttitor sodales. Aenean interdum eros a dui fermentum, quis semper sem viverra. Quisque convallis pulvinar arcu eget congue. In ac lectus in lectus congue condimentum quis sit amet justo. Nullam sagittis vitae neque ut feugiat. Sed ut purus facilisis, pulvinar lorem sit amet, feugiat urna. Cras non mi nec nibh tincidunt euismod. Donec faucibus aliquet ante in tempor. Aenean vel ullamcorper purus.\r\n\r\nNam quis nisi at neque interdum tempus non et libero. Sed tincidunt quam lorem, ut finibus tortor sagittis et. Nullam id pharetra lorem, vitae imperdiet purus. Aenean at leo sed lorem consequat mollis. In facilisis lorem dignissim metus maximus tincidunt. Ut scelerisque viverra ligula sed scelerisque. Nam cursus quis arcu vel ultricies. Pellentesque eget risus quis erat imperdiet scelerisque nec vel augue. Cras euismod hendrerit diam, quis vehicula leo.','2016-07-06',1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tags`
--

DROP TABLE IF EXISTS `blog_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tags_article_id_b78a22e9_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_name` (`tag_id`),
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_name` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tags`
--

LOCK TABLES `blog_article_tags` WRITE;
/*!40000 ALTER TABLE `blog_article_tags` DISABLE KEYS */;
INSERT INTO `blog_article_tags` VALUES (5,1,'макияж'),(1,1,'причёска'),(3,2,'причёска'),(4,2,'укладка'),(6,3,'макияж'),(7,3,'укладка');
/*!40000 ALTER TABLE `blog_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_author`
--

DROP TABLE IF EXISTS `blog_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img_url` varchar(190) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_author`
--

LOCK TABLES `blog_author` WRITE;
/*!40000 ALTER TABLE `blog_author` DISABLE KEYS */;
INSERT INTO `blog_author` VALUES (1,'Arina Westly','blog/img/authors/blog-avatar-1.jpg'),(2,'Cristin Moris','blog/img/authors/blog-avatar-2.jpg');
/*!40000 ALTER TABLE `blog_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_imageforarticle`
--

DROP TABLE IF EXISTS `blog_imageforarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_imageforarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) NOT NULL,
  `is_preview` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_imageforarticle_article_id_934f14bd_fk_blog_article_id` (`article_id`),
  CONSTRAINT `blog_imageforarticle_article_id_934f14bd_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_imageforarticle`
--

LOCK TABLES `blog_imageforarticle` WRITE;
/*!40000 ALTER TABLE `blog_imageforarticle` DISABLE KEYS */;
INSERT INTO `blog_imageforarticle` VALUES (1,'blog/img/articles/1/1.jpg',1,1),(2,'blog/img/articles/1/2.jpg',0,1),(3,'blog/img/articles/2/1.jpg',0,2),(4,'blog/img/articles/2/2.jpg',1,2),(5,'blog/img/articles/3/3.jpg',1,3),(6,'blog/img/articles/3/1.jpg',0,3),(7,'blog/img/articles/3/2.jpg',0,3);
/*!40000 ALTER TABLE `blog_imageforarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES ('макияж','qqq'),('причёска','pricheska'),('укладка','ukladka');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-07-01 14:30:42','3','Lorem ipsum dolor sit...',1,'Добавлено.',7,1),(2,'2016-07-01 14:40:41','3','StartPage object',2,'Ни одно поле не изменено.',7,1),(3,'2016-07-01 14:40:56','4','StartPage object',1,'Добавлено.',7,1),(4,'2016-07-01 15:01:08','3','StartPage object',2,'Изменен is_publish.',7,1),(5,'2016-07-01 15:04:27','4','StartPage object',2,'Изменен is_publish.',7,1),(6,'2016-07-04 08:14:22','vipramlenie','PortfolioLevel object',1,'Добавлено.',8,1),(7,'2016-07-04 08:14:45','botoks','PortfolioLevel object',1,'Добавлено.',8,1),(8,'2016-07-04 08:15:12','spa','PortfolioLevel object',1,'Добавлено.',8,1),(9,'2016-07-04 08:16:06','narashivanie','PortfolioLevel object',1,'Добавлено.',8,1),(10,'2016-07-04 08:45:25','1','Текст Текст',1,'Добавлено.',9,1),(11,'2016-07-04 08:45:45','2','Текст Текст',1,'Добавлено.',9,1),(12,'2016-07-04 08:46:10','3','Текст Текст',1,'Добавлено.',9,1),(13,'2016-07-04 08:47:45','4','Текст Текст',1,'Добавлено.',9,1),(14,'2016-07-04 08:48:10','5','Текст Текст',1,'Добавлено.',9,1),(15,'2016-07-04 08:48:23','6','Текст Текст',1,'Добавлено.',9,1),(16,'2016-07-04 08:48:55','7','Текст Текст',1,'Добавлено.',9,1),(17,'2016-07-04 08:49:16','8','Текст Текст',1,'Добавлено.',9,1),(18,'2016-07-04 09:56:48','1','Кератиновое выпрямление',1,'Добавлено. Добавлен Строка пункт/стоимость \"Текст Текст Текст Текст Текст Текст\". Добавлен Строка пункт/стоимость \"Текст Текст Текст Текст\". Добавлен Строка пункт/стоимость \"Текст Текст\".',11,1),(19,'2016-07-04 09:59:13','2','Боток',1,'Добавлено. Добавлен Строка пункт/стоимость \"Текст Текст\". Добавлен Строка пункт/стоимость \"Текст Текст Текст\".',11,1),(20,'2016-07-04 09:59:43','2','Ботокс для волос',2,'Изменен name.',11,1),(21,'2016-07-04 10:36:20','2','Ботокс для волос',2,'Изменен img_url.',11,1),(22,'2016-07-04 10:37:20','2','Ботокс для волос',2,'Изменен img_url.',11,1),(23,'2016-07-04 12:11:52','1','О Нас',1,'Добавлено. Добавлен Фото для слайдера \"arinwest/img/about/slider/1.jpg\". Добавлен Фото для слайдера \"arinwest/img/about/slider/2.jpg\". Добавлен Фото для слайдера \"arinwest/img/about/slider/3.jpg\". Добавлен Фото для слайдера \"arinwest/img/about/slider/4.jpg\". Добавлен Мастера \"JORG MACLEO\". Добавлен Мастера \"MONICA RAJAN\". Добавлен Мастера \"CHRIS SOMER\".',12,1),(24,'2016-07-04 12:25:58','1','О Нас',2,'Добавлен Мастера \"JORG MACLEO2\".',12,1),(25,'2016-07-04 12:34:31','6','Текст Текст',2,'Изменен filter_name.',9,1),(26,'2016-07-04 12:36:09','2','Ботокс для волос',2,'Ни одно поле не изменено.',11,1),(27,'2016-07-05 07:53:38','1','Arina Westly',1,'Добавлено.',15,1),(28,'2016-07-05 07:54:45','2','cristin moris',1,'Добавлено.',15,1),(29,'2016-07-05 07:56:04','2','Cristin Moris',2,'Изменен name.',15,1),(30,'2016-07-05 07:58:28','pricheska','pricheska',1,'Добавлено.',16,1),(31,'2016-07-05 07:58:44','makiyag','makiyag',1,'Добавлено.',16,1),(32,'2016-07-05 07:59:10','ukladka','ukladka',1,'Добавлено.',16,1),(33,'2016-07-05 08:03:18','1','Lorem ipsum dolor sit amet,...',1,'Добавлено. Добавлен Фото для слайдера \"blog/img/articles/1/1.jpg\". Добавлен Фото для слайдера \"blog/img/articles/1/2.jpg\".',17,1),(34,'2016-07-05 08:15:06','1','Lorem ipsum dolor sit amet,...',3,'',17,1),(35,'2016-07-05 08:28:54','1','Arina Westly',1,'Добавлено.',15,1),(36,'2016-07-05 08:29:31','2','Cristin Moris',1,'Добавлено.',15,1),(37,'2016-07-05 08:30:01','укладка','укладка',1,'Добавлено.',16,1),(38,'2016-07-05 08:30:12','макияж','макияж',1,'Добавлено.',16,1),(39,'2016-07-05 08:30:28','причёска','причёска',1,'Добавлено.',16,1),(40,'2016-07-05 08:32:39','1','Lorem ipsum dolor sit amet,...',1,'Добавлено. Добавлен image for article \"blog/img/articles/1/1.jpg\". Добавлен image for article \"blog/img/articles/1/2.jpg\".',17,1),(41,'2016-07-05 08:33:45','2','Nunc vulputate, ligula sed lobortis...',1,'Добавлено. Добавлен image for article \"blog/img/articles/2/1.jpg\". Добавлен image for article \"blog/img/articles/2/2.jpg\".',17,1),(42,'2016-07-05 10:52:40','укладка','укладка',2,'Изменен code.',16,1),(43,'2016-07-05 10:52:56','причёска','причёска',2,'Изменен code.',16,1),(44,'2016-07-05 10:53:10','макияж','макияж',2,'Изменен code.',16,1),(45,'2016-07-05 11:58:28','1','Lorem ipsum dolor sit amet,...',2,'Изменен tags.',17,1),(46,'2016-07-05 11:59:04','1','Lorem ipsum dolor sit amet,...',2,'Изменен tags.',17,1),(47,'2016-07-05 15:01:51','макияж','макияж',2,'Изменен code.',16,1),(48,'2016-07-05 15:08:56','4','Nunc mattis leo mi, ac molestie nisl feugiat et. Etiam in quam non nibh ultricies dapibus. Quisque dapibus nisl nisl, vitae iaculis elit ultrices volutpat. Aenean faucibus, ligula non dapibus laoreet,',2,'Изменен text.',7,1),(49,'2016-07-05 15:09:07','3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget eleifend velit, sit amet faucibus magna. Integer at pretium magna, ut vestibulum nulla. Mauris ultricies ante et justo element',2,'Изменен text.',7,1),(50,'2016-07-06 08:53:58','3','Maecenas nibh justo, suscipit varius...',1,'Добавлено. Добавлен image for article \"blog/img/articles/3/3.jpg\". Добавлен image for article \"blog/img/articles/3/1.jpg\". Добавлен image for article \"blog/img/articles/3/2.jpg\".',17,1),(51,'2016-07-06 08:59:34','1','Lorem ipsum dolor sit amet,...',2,'Добавлен image for article \"blog/img/articles/3/3.jpg\".',17,1),(52,'2016-07-06 09:00:55','1','Lorem ipsum dolor sit amet,...',2,'Ни одно поле не изменено.',17,1),(53,'2016-07-06 09:08:14','3','Maecenas nibh justo, suscipit varius...',2,'Изменены is_preview для image for article \"blog/img/articles/3/3.jpg\". Изменены is_preview для image for article \"blog/img/articles/3/2.jpg\".',17,1),(54,'2016-07-06 09:08:32','3','Maecenas nibh justo, suscipit varius...',2,'Изменены is_preview для image for article \"blog/img/articles/3/3.jpg\". Изменены is_preview для image for article \"blog/img/articles/3/2.jpg\".',17,1),(55,'2016-07-06 09:17:28','1','Lorem ipsum dolor sit amet,...',2,'Удален image for article \"blog/img/articles/3/3.jpg\".',17,1),(56,'2016-07-06 11:59:43','zel','Arin West Зеленоград',1,'Добавлено.',19,1),(57,'2016-07-06 12:00:53','moscow','Arin West Москва',1,'Добавлено.',19,1),(58,'2016-07-06 12:01:19','2','Ботокс для волос',2,'Изменен filial.',11,1),(59,'2016-07-06 12:01:30','1','Кератиновое выпрямление',2,'Изменен filial.',11,1),(60,'2016-07-06 12:05:43','1','О Нас',2,'Изменены filial для Master \"JORG MACLEO\". Изменены filial для Master \"MONICA RAJAN\". Изменены filial для Master \"CHRIS SOMER\". Изменены filial для Master \"JORG MACLEO2\".',12,1),(61,'2016-07-06 12:12:12','5','dsvs',1,'Добавлено.',14,1),(62,'2016-07-06 12:12:49','5','dsvs',3,'',14,1),(63,'2016-07-06 15:53:29','zel','Arin West Зеленоград',2,'Изменен user_insta и user_insta_token.',19,1),(64,'2016-07-06 15:53:54','moscow','Arin West Москва',2,'Изменен user_insta и user_insta_token.',19,1),(65,'2016-07-07 08:37:03','zel','Arin West Зеленоград',2,'Ни одно поле не изменено.',19,1),(66,'2016-07-12 12:51:05','3','CHRIS SOMER',3,'',14,1),(67,'2016-07-13 15:46:55','zel','Arin West Зеленоград',2,'Изменен user_insta и user_insta_token.',19,1),(68,'2016-07-13 15:49:01','4','Nunc mattis leo mi, ac molestie nisl feugiat et.\r\n\r\n Etiam in quam non nibh ultricies dapibus. Quisque dapibus nisl nisl, vitae iaculis elit ultrices volutpat. Aenean faucibus, ligula non dapibus laor',2,'Изменен text.',7,1),(69,'2016-07-13 15:58:47','4','JORG MACLEO2',2,'Изменен article_url.',14,1),(70,'2016-07-14 09:38:33','1','Дмитрий Портнов',2,'Изменен name, post и crm_id.',14,1),(71,'2016-07-14 09:44:34','2','Ботокс для волос',2,'Изменен crm_id.',11,1),(72,'2016-07-14 09:48:35','2','Ботокс для волос',2,'Изменен crm_id.',11,1),(73,'2016-07-14 10:27:15','5','Дмитрий Савельев',1,'Добавлено.',14,1),(74,'2016-07-14 10:28:02','2','Лиза',2,'Изменен name, post и crm_id.',14,1),(75,'2016-07-14 10:28:59','6','Катя',1,'Добавлено.',14,1),(76,'2016-07-14 10:29:46','7','Люба',1,'Добавлено.',14,1),(77,'2016-07-14 10:32:15','2','Парафинотерапия',2,'Изменен name. Изменены text, coast и crm_id для Элемент раздела \"Услуги\" \"Парафинотеррапия для рук\". Удален Элемент раздела \"Услуги\" \"Текст Текст Текст\".',11,1),(78,'2016-07-14 10:37:41','3','Стрижки',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Стрижка модельная\". Добавлен Элемент раздела \"Услуги\" \"Стрижка мужская\". Добавлен Элемент раздела \"Услуги\" \"Стрижка каре\". Добавлен Элемент раздела \"Услуги\" \"Стрижка кончиков\". Добавлен Элемент раздела \"Услуги\" \"Стрижка каскад\".',11,1),(79,'2016-07-14 10:43:45','4','Уход и лечение волос',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Ботокс для волос\". Добавлен Элемент раздела \"Услуги\" \"Спа уход для волос\". Добавлен Элемент раздела \"Услуги\" \"Кератиновое насыщение без выпрямления\". Добавлен Элемент раздела \"Услуги\" \"Кератиновое выпрямление и лечение волос\".',11,1),(80,'2016-07-14 10:45:11','5','Наращивание волос',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Ленточное наращивание волос\".',11,1),(81,'2016-07-14 10:54:18','6','Окрашивание',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Осветление в блонд\". Добавлен Элемент раздела \"Услуги\" \"Выход из черного\". Добавлен Элемент раздела \"Услуги\" \"Голливудское окрашивание (шатуш, балаяж..)\". Добавлен Элемент раздела \"Услуги\" \"Окрашивание в один тон\".',11,1),(82,'2016-07-14 10:55:52','7','Прикорневой объем',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Буффант\". Добавлен Элемент раздела \"Услуги\" \"Буст ап\".',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'arinwest','aboutpage'),(19,'arinwest','filial'),(13,'arinwest','imgforslider'),(9,'arinwest','portfolioitem'),(8,'arinwest','portfoliolevel'),(11,'arinwest','service'),(10,'arinwest','servicecoastline'),(14,'arinwest','staffmember'),(7,'arinwest','startpage'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(17,'blog','article'),(15,'blog','author'),(18,'blog','imageforarticle'),(16,'blog','tag'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-07-01 13:30:28'),(2,'auth','0001_initial','2016-07-01 13:30:33'),(3,'admin','0001_initial','2016-07-01 13:30:34'),(4,'admin','0002_logentry_remove_auto_add','2016-07-01 13:30:34'),(5,'contenttypes','0002_remove_content_type_name','2016-07-01 13:30:35'),(6,'auth','0002_alter_permission_name_max_length','2016-07-01 13:30:35'),(7,'auth','0003_alter_user_email_max_length','2016-07-01 13:30:36'),(8,'auth','0004_alter_user_username_opts','2016-07-01 13:30:36'),(9,'auth','0005_alter_user_last_login_null','2016-07-01 13:30:36'),(10,'auth','0006_require_contenttypes_0002','2016-07-01 13:30:36'),(11,'auth','0007_alter_validators_add_error_messages','2016-07-01 13:30:36'),(12,'sessions','0001_initial','2016-07-01 13:30:38'),(13,'arinwest','0001_initial','2016-07-01 14:13:38'),(14,'arinwest','0002_portfoliolevel','2016-07-04 08:09:35'),(15,'arinwest','0003_auto_20160704_1132','2016-07-04 08:33:30'),(16,'arinwest','0004_auto_20160704_1232','2016-07-04 09:32:35'),(17,'arinwest','0004_auto_20160704_1252','2016-07-04 09:54:33'),(18,'arinwest','0005_auto_20160704_1507','2016-07-04 12:07:20'),(19,'blog','0001_initial','2016-07-05 07:45:34'),(20,'blog','0002_auto_20160705_1125','2016-07-05 08:27:15'),(21,'blog','0003_auto_20160705_1351','2016-07-05 10:51:23'),(22,'arinwest','0006_auto_20160706_1455','2016-07-06 11:55:24'),(23,'arinwest','0007_auto_20160706_1852','2016-07-06 15:52:42'),(24,'arinwest','0008_staffmember_article_url','2016-07-12 12:00:42'),(25,'arinwest','0009_auto_20160714_1322','2016-07-14 10:22:48');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('acpwu0l4ccnegrfr83dyklmh70xsvzp2','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-18 07:52:54'),('mjc0vmnqx9n5p91t2a0qrq18xk3zmj8e','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-15 13:37:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-14 15:39:17
