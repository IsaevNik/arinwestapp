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
INSERT INTO `arinwest_aboutpage` VALUES (1,20);
/*!40000 ALTER TABLE `arinwest_aboutpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_celebrity`
--

DROP TABLE IF EXISTS `arinwest_celebrity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_celebrity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `article` longtext NOT NULL,
  `insta_href` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_celebrity`
--

LOCK TABLES `arinwest_celebrity` WRITE;
/*!40000 ALTER TABLE `arinwest_celebrity` DISABLE KEYS */;
INSERT INTO `arinwest_celebrity` VALUES (1,'певица Stacy','певица, актриса, автор песен, лауреат конкурса:« Новая волна 2010»','arinwest/img/celebrities/1.jpg','В нашем салоне на <a class=\"pink-text\" href=\"/blog/tag/coloration\">окрашивании</a> и наращивании волос','https://www.instagram.com/p/BIDOo04hGDY');
/*!40000 ALTER TABLE `arinwest_celebrity` ENABLE KEYS */;
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
-- Table structure for table `arinwest_imgforsliderfilial`
--

DROP TABLE IF EXISTS `arinwest_imgforsliderfilial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_imgforsliderfilial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `filial_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_imgforslider_filial_id_a9f1b287_fk_arinwest_filial_code` (`filial_id`),
  CONSTRAINT `arinwest_imgforslider_filial_id_a9f1b287_fk_arinwest_filial_code` FOREIGN KEY (`filial_id`) REFERENCES `arinwest_filial` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_imgforsliderfilial`
--

LOCK TABLES `arinwest_imgforsliderfilial` WRITE;
/*!40000 ALTER TABLE `arinwest_imgforsliderfilial` DISABLE KEYS */;
INSERT INTO `arinwest_imgforsliderfilial` VALUES (1,'arinwest/img/filials/msc/1.jpg','moscow'),(2,'arinwest/img/filials/msc/2.jpg','moscow'),(3,'arinwest/img/filials/msc/3.jpg','moscow'),(5,'arinwest/img/filials/zel/1.jpg','zel'),(6,'arinwest/img/filials/zel/2.jpg','zel'),(7,'arinwest/img/filials/zel/3.jpg','zel');
/*!40000 ALTER TABLE `arinwest_imgforsliderfilial` ENABLE KEYS */;
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
  `article_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_portfolioitem_23b44d68` (`filter_name_id`),
  CONSTRAINT `arinwest_filter_name_id_192a01c1_fk_arinwest_portfoliolevel_code` FOREIGN KEY (`filter_name_id`) REFERENCES `arinwest_portfoliolevel` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_portfolioitem`
--

LOCK TABLES `arinwest_portfolioitem` WRITE;
/*!40000 ALTER TABLE `arinwest_portfolioitem` DISABLE KEYS */;
INSERT INTO `arinwest_portfolioitem` VALUES (9,'Спа','спа','arinwest/img/portfolio/spa/1.jpg','lechenie','blog/article/1'),(19,'ро','р','arinwest/img/portfolio/spa/14.jpg','lechenie',''),(21,'о','о','arinwest/img/portfolio/spa/16.jpg','lechenie',''),(24,'о','о','arinwest/img/portfolio/spa/29.jpg','lechenie',''),(25,'р','р','arinwest/img/portfolio/spa/32.jpg','lechenie',''),(42,'f','f','arinwest/img/portfolio/obiem/1.jpg','obiem',''),(44,'g','g','arinwest/img/portfolio/obiem/3.jpg','obiem',''),(46,'g','g','arinwest/img/portfolio/obiem/5.jpg','obiem',''),(47,'t','t','arinwest/img/portfolio/obiem/6.jpg','obiem',''),(48,'f','f','arinwest/img/portfolio/obiem/7.jpg','obiem',''),(51,'a','a','arinwest/img/portfolio/prymlenie/11.jpg','prymlenie',''),(52,'a','a','arinwest/img/portfolio/prymlenie/14.jpg','prymlenie',''),(54,'c','c','arinwest/img/portfolio/prymlenie/18.jpg','prymlenie',''),(55,'x','x','arinwest/img/portfolio/prymlenie/27.jpg','prymlenie',''),(56,'c','c','arinwest/img/portfolio/prymlenie/37.jpg','prymlenie',''),(62,'Экстремальное окрашивание','Из русского в блонд с розовыми прядями','arinwest/img/portfolio/okrashivanie/8.jpg','okrashivanie',''),(77,'Голливудское окрашивание','Сомбре в медных тонах','arinwest/img/portfolio/okrashivanie/23.jpg','okrashivanie',''),(78,'Экстремальное окрашивание','Фиолетовый цвет','arinwest/img/portfolio/okrashivanie/24.jpg','okrashivanie',''),(79,'Голливудское окрашивание','Контрастное блондирование','arinwest/img/portfolio/okrashivanie/25.jpg','okrashivanie',''),(82,'Окрашивание','Окрашивание из русого в серый цвет','arinwest/img/portfolio/okrashivanie/28.jpg','okrashivanie',''),(83,'Голливудское окрашивание','Брондирование, в карамельных тонах','arinwest/img/portfolio/okrashivanie/29.jpg','okrashivanie','');
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
  `tag_id` varchar(50),
  `numeric` int(11) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `tag_id` (`tag_id`),
  CONSTRAINT `arinwest_portfoliolevel_tag_id_e9d2a9e1_fk_blog_tag_name` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_portfoliolevel`
--

LOCK TABLES `arinwest_portfoliolevel` WRITE;
/*!40000 ALTER TABLE `arinwest_portfoliolevel` DISABLE KEYS */;
INSERT INTO `arinwest_portfoliolevel` VALUES ('brovi','брови','брови',5),('lechenie','Лечение','лечение',3),('nogti','ногти','ногти',7),('obiem','Обьем','объем',4),('okrashivanie','Окрашивание','окрашивание',1),('prymlenie','Выпрямление','выпрямление',2),('resnici','ресницы','ресницы',6);
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
  `info` longtext NOT NULL,
  `code` varchar(50) NOT NULL,
  `article` varchar(250) NOT NULL,
  `article_href_text` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_service_ce4d2499` (`filial_id`),
  CONSTRAINT `arinwest_service_filial_id_332a2232_fk_arinwest_filial_name` FOREIGN KEY (`filial_id`) REFERENCES `arinwest_filial` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_service`
--

LOCK TABLES `arinwest_service` WRITE;
/*!40000 ALTER TABLE `arinwest_service` DISABLE KEYS */;
INSERT INTO `arinwest_service` VALUES (1,'Стрижки','Наши мастера превосходно делают любые стрижки от классики до креатива!','arinwest/img/service/2.jpg','Москва','','haircut','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера воплощают в жизнь самые смелые идеи стрижек.'),(2,'Окрашивание','У нас вы можете сделать как самое простое окрашивание в один тон, так и сложные окрашивания омбре, сомбре, балаяж, брондирование, калифорнийское мелирование, смывки и цветные окрашивания. Помимо идеальной техники выполнения окрашиваний, наши мастера всегда уделяют особое внимание здоровью и состоянию ваших волос!','arinwest/img/service/1.jpg','Москва','Как определить длину волос:\r\nКорни: 1-3 см\r\nКороткие волосы: до 15см\r\nСредние волосы: 15-30 см\r\nУдлиненные волосы: 30-40 см\r\nДлинные волосы: 40-50см\r\nОчень длинные волосы: 50 см и более','coloration','blog/article/3','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера воплощают в жизнь идеи различных окрашиваний.'),(3,'Кератиновое выпрямление и восстановление','Процедура для восстановления и выпрямления волос на 3-6 месяцев. Опираясь на наш опыт, мы пришли к выводу, что нет идеального состава для всех типов волос, поэтому мы используем разные составы для достижения наилучшего результата. Состав подбирается мастером индивидуально под каждого клиента.','arinwest/img/service/1.jpg','Москва','','keratin-straightening','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера делают кератиновое выпрямление.'),(4,'Кератиновое насыщение','Не дает эффекта выпрямления, укрепляет ослабленные кератиновые соединения на молекулярном уровне, усиливает природный блеск, возвращает эластичность.','arinwest/img/service/2.jpg','Москва','','keratin-saturation','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера делают кератиновое насыщение.'),(5,'Ботокс для волос','Процедура для глубокого восстановления и лечения волос, без эффекта выпрямления, результат сохраняется 2-3 месяца. Обратите внимание, что эта процедура наиболее действенна в комплексе.','arinwest/img/service/1.jpg','Москва','','botox','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера лечат и восстанавливают волосы.'),(6,'Объем','Boost-up и Bouffunt процедуры прикорневого объема. Эффект сохраняется на 3-6 месяцев и постепенно сходит на нет. Вы забудете, что после каждого мытья головы вам нужно создавать объем с помощью укладочных средств!','arinwest/img/service/1.jpg','Москва','','volume','blog/article/3','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера придают объем волосам.'),(7,'Спа','Данная процедура идеально подходит для восстановления после окрашивания волос. Закрывает кутикулу, дает мягкость и блеск волосам.','arinwest/img/service/2.jpg','Москва','','spa','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера восстанавливают волосы.'),(8,'Стрижки','Наши мастера превосходно делают любые стрижки от классики до креатива!','arinwest/img/service/2.jpg','Зеленоград','','haircut','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера воплощают в жизнь самые смелые идеи стрижек.'),(9,'Окрашивание','У нас вы можете сделать как самое простое окрашивание в один тон, так и сложные окрашивания омбре, сомбре, балаяж, брондирование, калифорнийское мелирование, смывки и цветные окрашивания. Помимо идеальной техники выполнения окрашиваний, наши мастера всегда уделяют особое внимание здоровью и состоянию ваших волос!','arinwest/img/service/1.jpg','Зеленоград','Как определить длину волос:\r\nКорни: 1-3 см\r\nКороткие волосы: до 15см\r\nСредние волосы: 15-30 см\r\nУдлиненные волосы: 30-40 см\r\nДлинные волосы: 40-50см\r\nОчень длинные волосы: 50 см и более','coloration','blog/article/3','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера воплощают в жизнь идеи различных окрашиваний.'),(10,'Кератиновое выпрямление и восстановление','Процедура для восстановления и выпрямления волос на 3-6 месяцев. Опираясь на наш опыт, мы пришли к выводу, что нет идеального состава для всех типов волос, поэтому мы используем разные составы для достижения наилучшего результата. Состав подбирается мастером индивидуально под каждого клиента.','arinwest/img/service/1.jpg','Зеленоград','','keratin-straightening','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера делают кератиновое выпрямление.'),(11,'Кератиновое насыщение','Не дает эффекта выпрямления, укрепляет ослабленные кератиновые соединения на молекулярном уровне, усиливает природный блеск, возвращает эластичность.','arinwest/img/service/2.jpg','Зеленоград','','keratin-saturation','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера делают кератиновое насыщение.'),(12,'Ботокс для волос','Процедура для глубокого восстановления и лечения волос, без эффекта выпрямления, результат сохраняется 2-3 месяца. Обратите внимание, что эта процедура наиболее действенна в комплексе.','arinwest/img/service/1.jpg','Зеленоград','','botox','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера лечат и восстанавливают волосы.'),(13,'Объем','Boost-up и Bouffunt процедуры прикорневого объема. Эффект сохраняется на 3-6 месяцев и постепенно сходит на нет. Вы забудете, что после каждого мытья головы вам нужно создавать объем с помощью укладочных средств!','arinwest/img/service/1.jpg','Зеленоград','','volume','blog/article/3','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера придают объем волосам.'),(14,'Спа','Данная процедура идеально подходит для восстановления после окрашивания волос. Закрывает кутикулу, дает мягкость и блеск волосам.','arinwest/img/service/2.jpg','Зеленоград','','spa','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера восстанавливают волосы.'),(15,'Ногти','Мы используем только качественные и долговечные материалы, и сразу говорим вам четкую цену за услугу, не увеличивая чек за каждое дополнительное действие.','arinwest/img/service/1.jpg','Зеленоград','','nails','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера работают с ногтями наших клиентов.'),(16,'Ресницы','Наши мастера моделируют взгляд и грамотно подбирают подходящий именно вам материал для максимально продолжительной носки и здоровья ваших собственных ресниц. Мы используем только высококачественные материалы, которые сначала проверяем на себе.','arinwest/img/service/1.jpg','Зеленоград','','eyelashes','blog/article/2','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера преображают взгляд наших клиентов.'),(17,'Брови','Наши мастера скрупулезно подбирают форму бровей под ваш тип лица, учитывая ваши пожелания.','arinwest/img/service/1.jpg','Зеленоград','','eyebrows','','Кстати, у нас есть отличная статья, в которой вы можете прочитать подробности и даже посмотреть, как наши мастера придают форму бровям.');
/*!40000 ALTER TABLE `arinwest_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_servicesublevel`
--

DROP TABLE IF EXISTS `arinwest_servicesublevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_servicesublevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `crm_id` varchar(100) NOT NULL,
  `sublevel_type` int(11) NOT NULL,
  `coast` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_servicesublevel_b0dc1e29` (`service_id`),
  CONSTRAINT `arinwest_servicesuble_service_id_e840a063_fk_arinwest_service_id` FOREIGN KEY (`service_id`) REFERENCES `arinwest_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_servicesublevel`
--

LOCK TABLES `arinwest_servicesublevel` WRITE;
/*!40000 ALTER TABLE `arinwest_servicesublevel` DISABLE KEYS */;
INSERT INTO `arinwest_servicesublevel` VALUES (1,'Женская','','288901',1,'1000-2000',1),(2,'Мужская','','288900',1,'500-1500',1),(3,'Кончики','','288865',1,'500-1000',1),(4,'Любое сложное окрашивание','Блонд, смывка, голливудское окрашивание-омбре, брондирование, балаяж, калифорнийское мелирование','',2,'',2),(5,'В один тон','','',2,'',2);
/*!40000 ALTER TABLE `arinwest_servicesublevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_servicesublevelline`
--

DROP TABLE IF EXISTS `arinwest_servicesublevelline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_servicesublevelline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `coast` varchar(20) NOT NULL,
  `service_sub_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest__service_sub_id_273383ad_fk_arinwest_servicesublevel_id` (`service_sub_id`),
  CONSTRAINT `arinwest__service_sub_id_273383ad_fk_arinwest_servicesublevel_id` FOREIGN KEY (`service_sub_id`) REFERENCES `arinwest_servicesublevel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_servicesublevelline`
--

LOCK TABLES `arinwest_servicesublevelline` WRITE;
/*!40000 ALTER TABLE `arinwest_servicesublevelline` DISABLE KEYS */;
INSERT INTO `arinwest_servicesublevelline` VALUES (6,'Короткие','3000-3500',4),(7,'Средние','4000-5000',4),(8,'Удлинённые','5500-6000',4),(9,'Длинные','6500-8000',4),(10,'Очень длинные','8500-10000',4),(11,'Короткие','2000',5),(12,'Средние','3000',5),(13,'Удлиненные','4000',5),(14,'Длинные','5000',5),(15,'Очень длинные','6000',5);
/*!40000 ALTER TABLE `arinwest_servicesublevelline` ENABLE KEYS */;
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
  `article` longtext NOT NULL,
  `hash_tag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `arinwest_staffme_about_page_id_3d1a0614_fk_arinwest_aboutpage_id` (`about_page_id`),
  KEY `arinwest_staffmember_ce4d2499` (`filial_id`),
  CONSTRAINT `arinwest_staffmember_filial_id_10595b64_fk_arinwest_filial_name` FOREIGN KEY (`filial_id`) REFERENCES `arinwest_filial` (`name`),
  CONSTRAINT `arinwest_staffme_about_page_id_3d1a0614_fk_arinwest_aboutpage_id` FOREIGN KEY (`about_page_id`) REFERENCES `arinwest_aboutpage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_staffmember`
--

LOCK TABLES `arinwest_staffmember` WRITE;
/*!40000 ALTER TABLE `arinwest_staffmember` DISABLE KEYS */;
INSERT INTO `arinwest_staffmember` VALUES (1,'Дмитрий Портнов','Парикмахер','58934','arinwest/img/about/staff/DP.jpeg',1,'Москва','Всем привет!:) Меня зовут Дима, и я стилист-парикмахер! Я никогда не думал, что буду работать в данной сфере, но благодаря наставлениям основателя студии ArinWest (Арины Василенко), я в кротчайшие сроки и с большим энтузиазмом освоил все основы профессии и не перестаю совершенствовать своё мастерство в направлении сложных окрашиваний и различных уходов в области парикмахерского искусства, Весьма долгое время я осваивал разные профессии, ради саморазвития и в целях поиска себя, в жизни было всякое, и автомехаником поработал, и бармэном и кулинарную сферу освоил весьма глубоко:) в итоге в один прекрасный весенний день, мы созвонились с Ариной и она предложила приехать, и помочь ей сделать моего первого клиента ( то была процедура кератинового восстановления ), после этого, мне стало безумно интересно все в этой сфере, так как это искусство, а оно близко к моего сердцу, так как занимаюсь с самого юного возраста музыкой, и дай Бог весьма удачно! Естественно, все всегда даётся не легко и не сразу всём во всем понятно, но только если хотеть и прикладывать силы, можно добиться всего, вот и начался мой не самый лёгкий путь! Я начал изучать колористику, записываться на разные семинары по трихологии и процедур восстановления волос и набирать знаний в свою голову, продолжаю регулярно посещать семинары и повышения квалификации и сейчас, так как считаю, что нет предела совершенству, особенно в этой профессии. Повстречал массу интересных людей, которые сделали не малый вклад в моё развитие и дали мне возможность делиться своими знаниями, чем я очень горжусь. Сейчас я совершенно не жалею, что остался в этой профессии, продолжаю совершенствовать свои навыки и изучать все новые и новые техники и методики окрашиваний, так же иногда не вредят и эксперименты :) собственно, что я рассказываю:) вы можете прийти к нам в салон и сами оценить!\r\nТак же я являюсь  администратором салона ArinWestStudio, и для всех наших клиентов уже зарекомендовал себя, как ответственного человека, готового всегда прийти на помощь в той или иной ситуации:)','dima_west'),(2,'Лиза','Парикмахер','59304','arinwest/img/about/staff/Li.jpeg',1,'Москва','Меня зовут Елизавета, мне 27 лет!\r\nЯ дипломированный парикмахер-стилист универсал, мастер-колорист.\r\nСтать парикмахером я мечтала с детства! Но окончив школу поступила в спортивный колледж на тренера по плаванию, т.к. большая часть моих одноклассников поступили туда же.\r\nПроучившись 3 года я поняла что это не мое и работать с детьми я не смогу.\r\nЗатем обучилась на кройки шитья по пошиву женской верхней одежды. Закончила на красный диплом!\r\nВ 2007 году вышла замуж. Устроилась работать в швейный цех. Проработала более года и ушла в декрет. В 2009 году родила дочку.\r\nКогда дочери исполнилось 6 месяцев я пошла обучаться на стилиста-колориста широкого профиля. Закончила на красный диплом! И сразу после обучения устроилась в салон работать мастером. \r\nГода 3 назад моя подруга (еще со школы) показала мне видеозапись со школьного утренника (4 класс), где меня спросили кем я хочу стать, я ответила: \"Паликмахелом! Чтобы делать всех людей класивыми! \r\nВ своей профессии я 6 полных лет. Считаю, что в данном профессии нет предела совершенству, по этому регулярно посещаю различные семинары.\r\n Сменила кучу салонов, но сейчас работаю в лучшем из лучших, с настоящими профессионалами. У нас отличный коллектив и замечательное руководство!!!\r\nРаботу всегда выполняю так, как сделала бы самой себе!\r\nДелаю с волосами практически все: любые виды окрашивания, смывки, кератиновое выпрямление , стрижки, обожаю работать с волосами, делаю их красивыми и здоровыми.\r\nЯ очень люблю свою работу!!!','liza_west'),(4,'JORG MACLEO2','Manager','','arinwest/img/about/staff/Z.jpeg',1,'Зеленоград','',''),(5,'Дмитрий Савельев','Парикмахер','59303','arinwest/img/about/staff/DS.jpeg',1,'Москва','Меня зовут Дима. Мой путь парикмахера начался ещё в подростковом возрасте,когда мне совсем перестало нравиться как меня стригут в парикмахерских и стал экспериментировать со своей головой сам) Далее начал стричь друзей и знакомых. А в армии работал штатным парикмахером всего военного городка части) Серьёзно работаю парикмахером недавно, но я чувствую, что имею большой потенциал в этом деле и постоянно совершенствую техники окрашивания, кератина и техники стрижки. Очень интересно наблюдать за реакцией довольных клиентов нашего замечательного салона) Так же я занимался 3 года профессионально гандболом,а сейчас вокалист в одной группе At the ruins,с нашим администратором Димой) я левша, а левши, как известно, черезчур творческие люди;)','dima_savel'),(6,'Катя','Парикмахер','59305','arinwest/img/about/staff/K.jpeg',1,'Москва','Очень люблю свою работу! Я, Екатерина Берг Стилист-модельер, мечтала стать парикмахером с 16 лет. Мечта сбылась в 22, поступив на курсы академии Pivot Point! Получив 3 разряд по парикмахерскому делу, решила , что стоит двигаться только вперед и через год вышла с международным дипломом стилиста. Проходила обучение по различным технологиям окрашивания и стрижек. С высоким профессионализмом выполняю лечение волос косметикой ведущих мировых брендов, делаю сложные окрашивания, в том числе и цветные.','katy_west'),(7,'Люба','Парикмахер','59306','arinwest/img/about/staff/Lu.jpeg',1,'Москва','Мастер по кератину, буст ап, bouffant, окрашиваниям, стрижкам мужским и женским.\r\nЯ приехала учиться в Москву в инженерный университет и удачно его закончила. Но на последнем курсе пошла работать в бар \"Дорогая, я перезвоню\",и осталась там очень надолго. Работала я там со своим и нынешнем коллегой Димой, который мне и рассказал про Арину, что она работает парикмахером на дому. Когда пришёл момент что-то поменять в своей жизни, я попала к ней на кератин, где она поделилась своим решением открыть свой салон красоты. И тогда мне пришла идея попробовать у неё поработать. Арина попросила меня пойти подучиться этому делу, чтобы я пришла хоть с какими-нибудь навыками. И я это сделала! Исполнила и давнюю мечту, и работать начала с открытия, что принесло и приносит мне огромное удовольствие. Она отправляла меня на всевозможные семинары и обучение, тем самым повышая мою квалификацию, чему я безмерно благодарна! Сейчас у нас собрался отличный коллектив, в котором приятно и весело работать)))','lubov_west'),(8,'Афруза','Парикмахер','','arinwest/img/about/staff/Af.jpeg',1,'Москва','Меня зовут Афруза! Я решила стать парикмахером потому что эта профессия позволяет раскрыть мой творческий потенциал, мне интересно воплощать в жизнь задумки, касающиеся причёсок, образов, стрижек.. Самое главное не останавливаться на достигнутом, а постоянно совершенствовать свои навыки, изучать новые технологии!\r\nМоя профессия важна для всех. Все хотят быть красивыми. Красота спасет мир! Для меня профессия парикмахера - это постоянное движение вперед. Дело, которое мне интересно, которое приносит мне удовольствие.','afruza_west');
/*!40000 ALTER TABLE `arinwest_staffmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arinwest_staffmember_tags`
--

DROP TABLE IF EXISTS `arinwest_staffmember_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arinwest_staffmember_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffmember_id` int(11) NOT NULL,
  `tag_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `arinwest_staffmember_tags_staffmember_id_b7d677db_uniq` (`staffmember_id`,`tag_id`),
  KEY `arinwest_staffmember_tags_tag_id_fd096c5c_fk_blog_tag_name` (`tag_id`),
  CONSTRAINT `arinwest_staffmember_tags_tag_id_fd096c5c_fk_blog_tag_name` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`name`),
  CONSTRAINT `arinwest_staf_staffmember_id_71036072_fk_arinwest_staffmember_id` FOREIGN KEY (`staffmember_id`) REFERENCES `arinwest_staffmember` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arinwest_staffmember_tags`
--

LOCK TABLES `arinwest_staffmember_tags` WRITE;
/*!40000 ALTER TABLE `arinwest_staffmember_tags` DISABLE KEYS */;
INSERT INTO `arinwest_staffmember_tags` VALUES (3,1,'причёска'),(2,1,'укладка'),(4,2,'причёска'),(6,5,'причёска'),(7,6,'причёска'),(5,7,'причёска'),(8,8,'причёска');
/*!40000 ALTER TABLE `arinwest_staffmember_tags` ENABLE KEYS */;
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
INSERT INTO `arinwest_startpage` VALUES (3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget eleifend velit, sit amet faucibus magna. Integer at pretium magna, ut vestibulum nulla. Mauris ultricies ante et justo elementum, quis volutpat neque porta. Donec eu condimentum augue. Morbi turpis turpis, vulputate ut pharetra eu, dictum nec nibh.',0),(4,'Добро пожаловать на сайт салонов красоты Arin West!',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Текст на главной',7,'add_startpage'),(20,'Can change Текст на главной',7,'change_startpage'),(21,'Can delete Текст на главной',7,'delete_startpage'),(22,'Can add Раздел портфолио',8,'add_portfoliolevel'),(23,'Can change Раздел портфолио',8,'change_portfoliolevel'),(24,'Can delete Раздел портфолио',8,'delete_portfoliolevel'),(25,'Can add Элемент портфолио',9,'add_portfolioitem'),(26,'Can change Элемент портфолио',9,'change_portfolioitem'),(27,'Can delete Элемент портфолио',9,'delete_portfolioitem'),(31,'Can add Услуга',11,'add_service'),(32,'Can change Услуга',11,'change_service'),(33,'Can delete Услуга',11,'delete_service'),(34,'Can add Страница \"О Нас\"',12,'add_aboutpage'),(35,'Can change Страница \"О Нас\"',12,'change_aboutpage'),(36,'Can delete Страница \"О Нас\"',12,'delete_aboutpage'),(40,'Can add Мастера',14,'add_staffmember'),(41,'Can change Мастера',14,'change_staffmember'),(42,'Can delete Мастера',14,'delete_staffmember'),(43,'Can add Автора',15,'add_author'),(44,'Can change Автора',15,'change_author'),(45,'Can delete Автора',15,'delete_author'),(46,'Can add Тэг',16,'add_tag'),(47,'Can change Тэг',16,'change_tag'),(48,'Can delete Тэг',16,'delete_tag'),(49,'Can add Статья',17,'add_article'),(50,'Can change Статья',17,'change_article'),(51,'Can delete Статья',17,'delete_article'),(52,'Can add Фото для слайдера',18,'add_imageforarticle'),(53,'Can change Фото для слайдера',18,'change_imageforarticle'),(54,'Can delete Фото для слайдера',18,'delete_imageforarticle'),(55,'Can add filial',19,'add_filial'),(56,'Can change filial',19,'change_filial'),(57,'Can delete filial',19,'delete_filial'),(58,'Can add Подуровень категории услуг',20,'add_servicesublevel'),(59,'Can change Подуровень категории услуг',20,'change_servicesublevel'),(60,'Can delete Подуровень категории услуг',20,'delete_servicesublevel'),(61,'Can add Элемент подуровня',21,'add_servicesublevelline'),(62,'Can change Элемент подуровня',21,'change_servicesublevelline'),(63,'Can delete Элемент подуровня',21,'delete_servicesublevelline'),(64,'Can add Фото для слайдера',22,'add_imgforsliderfilial'),(65,'Can change Фото для слайдера',22,'change_imgforsliderfilial'),(66,'Can delete Фото для слайдера',22,'delete_imgforsliderfilial'),(67,'Can add Celebrity',23,'add_celebrity'),(68,'Can change Celebrity',23,'change_celebrity'),(69,'Can delete Celebrity',23,'delete_celebrity');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$frK9kdmNFwb8$JZogMeFOZz7Y7R8LZHXcKk/z3uyJ8ownxVYkJf1/6/M=','2016-08-04 08:45:35',1,'admin','','','admin@mail.ru',1,1,'2016-07-01 13:36:42');
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
  `youtube_url` varchar(250) NOT NULL,
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
INSERT INTO `blog_article` VALUES (1,'Текст Текст','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet laoreet rutrum. Maecenas dolor libero, auctor sit amet sapien ut, pulvinar semper augue. Pellentesque eu dolor vel nulla mollis dignissim. Ut varius vestibulum felis nec pellentesque. Duis quis lobortis elit, quis vestibulum erat. Phasellus vel velit a lorem vehicula malesuada nec lacinia turpis. Sed eget justo rhoncus, ornare nibh a, fermentum ipsum. Vestibulum et molestie arcu. Cras nec iaculis eros, a pretium justo. Proin lacinia eleifend tincidunt. Vestibulum pretium, urna vel convallis ornare, quam velit fringilla nibh, eu aliquet elit enim id turpis.\r\n\r\nVestibulum quis vulputate diam. Duis rutrum libero at sodales laoreet. Nulla condimentum eleifend cursus. Cras sollicitudin laoreet dui, eu pellentesque massa ultricies tincidunt. Fusce sit amet felis eu ipsum mollis cursus faucibus sit amet purus. In ultricies, libero sed pulvinar interdum, elit eros lobortis dui, et viverra leo purus et sapien. Nunc aliquam lacinia tortor eget gravida. Aenean lacus dui, volutpat eget tempor at, tempor ut nisl. Vestibulum a sagittis ligula. Fusce risus nunc, varius et tincidunt et, hendrerit in est. Nulla facilisi. Aenean lacus lectus, faucibus quis vehicula eget, porttitor vitae metus.\r\n\r\nSuspendisse vitae dui ut tellus scelerisque efficitur. Nulla interdum tempor eleifend. In tincidunt metus sit amet dapibus ultrices. Etiam volutpat sollicitudin quam in hendrerit. Aenean tempor mi ac aliquet porttitor. Mauris viverra, lorem et sollicitudin vehicula, eros eros fermentum eros, nec malesuada tellus tortor eget neque. Vestibulum sagittis maximus orci at consectetur. Nullam vehicula ex nec eleifend laoreet. Aenean volutpat velit venenatis bibendum viverra. Nullam scelerisque molestie felis, vitae tristique metus fermentum eu. Integer leo urna, elementum vel porttitor in, fermentum in nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed convallis dolor enim, id porta lorem malesuada sit amet. Proin consequat tortor at diam blandit pretium. Mauris luctus ligula quis libero dapibus placerat.','2016-07-05',1,'https://www.youtube.com/embed/3elHJw1bhBw'),(2,'Текст Текст Текст','Nunc vulputate, ligula sed lobortis bibendum, risus sapien scelerisque elit, non malesuada mi arcu quis dolor. Phasellus aliquam turpis eget velit egestas congue. Curabitur leo elit, maximus vel egestas nec, congue a est. Integer congue ut lectus sit amet auctor. Donec condimentum consequat ultricies. Nullam pellentesque tincidunt velit quis condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nAenean et nunc elementum, ultrices risus mollis, sagittis eros. Mauris cursus, mauris ac ultricies euismod, sem ligula maximus ante, sit amet tincidunt diam tellus at mi. In mollis rhoncus varius. Quisque semper nulla non nisl tincidunt viverra. Nunc et consectetur orci. Aenean non massa neque. Aliquam erat volutpat. Cras faucibus ipsum commodo nunc dignissim, porttitor faucibus diam vehicula. Suspendisse eget hendrerit nunc. Phasellus id nibh laoreet nulla fringilla interdum eu sed sapien. Pellentesque elementum sed leo et sodales.','2016-07-05',2,''),(3,'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet','Maecenas nibh justo, suscipit varius nunc in, eleifend pulvinar dui. Proin et nisi diam. Duis fringilla ac lectus at ultricies. Suspendisse maximus bibendum varius. Fusce feugiat in augue id aliquam. Nulla ut tempus massa. Curabitur sodales pharetra quam ut semper. Cras quis efficitur augue, at suscipit elit. Quisque laoreet sapien vel accumsan dapibus. Suspendisse efficitur volutpat diam.\r\n\r\nMorbi tincidunt, tortor sit amet pharetra pellentesque, lorem nisl gravida massa, eu posuere nunc ex eu dui. Donec a blandit urna, varius ornare risus. Aliquam tristique tempor metus, ut dignissim nibh varius at. Integer faucibus rhoncus blandit. Nam dignissim mauris sodales, vehicula libero a, tempor ligula. Ut posuere malesuada leo sed rutrum. Donec nec purus eu nunc porttitor sodales. Aenean interdum eros a dui fermentum, quis semper sem viverra. Quisque convallis pulvinar arcu eget congue. In ac lectus in lectus congue condimentum quis sit amet justo. Nullam sagittis vitae neque ut feugiat. Sed ut purus facilisis, pulvinar lorem sit amet, feugiat urna. Cras non mi nec nibh tincidunt euismod. Donec faucibus aliquet ante in tempor. Aenean vel ullamcorper purus.\r\n\r\nNam quis nisi at neque interdum tempus non et libero. Sed tincidunt quam lorem, ut finibus tortor sagittis et. Nullam id pharetra lorem, vitae imperdiet purus. Aenean at leo sed lorem consequat mollis. In facilisis lorem dignissim metus maximus tincidunt. Ut scelerisque viverra ligula sed scelerisque. Nam cursus quis arcu vel ultricies. Pellentesque eget risus quis erat imperdiet scelerisque nec vel augue. Cras euismod hendrerit diam, quis vehicula leo.','2016-07-06',1,'https://www.youtube.com/embed/3elHJw1bhBw');
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
INSERT INTO `blog_tag` VALUES ('брови','eyebrows'),('выпрямление','straightening'),('лечение','healing'),('макияж','makeup'),('ногти','nails'),('объем','volume'),('окрашивание','coloration'),('причёска','pricheska'),('ресницы','eyelashes'),('стрижки','haircut'),('укладка','ukladka');
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
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-07-01 14:30:42','3','Lorem ipsum dolor sit...',1,'Добавлено.',7,1),(2,'2016-07-01 14:40:41','3','StartPage object',2,'Ни одно поле не изменено.',7,1),(3,'2016-07-01 14:40:56','4','StartPage object',1,'Добавлено.',7,1),(4,'2016-07-01 15:01:08','3','StartPage object',2,'Изменен is_publish.',7,1),(5,'2016-07-01 15:04:27','4','StartPage object',2,'Изменен is_publish.',7,1),(6,'2016-07-04 08:14:22','vipramlenie','PortfolioLevel object',1,'Добавлено.',8,1),(7,'2016-07-04 08:14:45','botoks','PortfolioLevel object',1,'Добавлено.',8,1),(8,'2016-07-04 08:15:12','spa','PortfolioLevel object',1,'Добавлено.',8,1),(9,'2016-07-04 08:16:06','narashivanie','PortfolioLevel object',1,'Добавлено.',8,1),(10,'2016-07-04 08:45:25','1','Текст Текст',1,'Добавлено.',9,1),(11,'2016-07-04 08:45:45','2','Текст Текст',1,'Добавлено.',9,1),(12,'2016-07-04 08:46:10','3','Текст Текст',1,'Добавлено.',9,1),(13,'2016-07-04 08:47:45','4','Текст Текст',1,'Добавлено.',9,1),(14,'2016-07-04 08:48:10','5','Текст Текст',1,'Добавлено.',9,1),(15,'2016-07-04 08:48:23','6','Текст Текст',1,'Добавлено.',9,1),(16,'2016-07-04 08:48:55','7','Текст Текст',1,'Добавлено.',9,1),(17,'2016-07-04 08:49:16','8','Текст Текст',1,'Добавлено.',9,1),(18,'2016-07-04 09:56:48','1','Кератиновое выпрямление',1,'Добавлено. Добавлен Строка пункт/стоимость \"Текст Текст Текст Текст Текст Текст\". Добавлен Строка пункт/стоимость \"Текст Текст Текст Текст\". Добавлен Строка пункт/стоимость \"Текст Текст\".',11,1),(19,'2016-07-04 09:59:13','2','Боток',1,'Добавлено. Добавлен Строка пункт/стоимость \"Текст Текст\". Добавлен Строка пункт/стоимость \"Текст Текст Текст\".',11,1),(20,'2016-07-04 09:59:43','2','Ботокс для волос',2,'Изменен name.',11,1),(21,'2016-07-04 10:36:20','2','Ботокс для волос',2,'Изменен img_url.',11,1),(22,'2016-07-04 10:37:20','2','Ботокс для волос',2,'Изменен img_url.',11,1),(23,'2016-07-04 12:11:52','1','О Нас',1,'Добавлено. Добавлен Фото для слайдера \"arinwest/img/about/slider/1.jpg\". Добавлен Фото для слайдера \"arinwest/img/about/slider/2.jpg\". Добавлен Фото для слайдера \"arinwest/img/about/slider/3.jpg\". Добавлен Фото для слайдера \"arinwest/img/about/slider/4.jpg\". Добавлен Мастера \"JORG MACLEO\". Добавлен Мастера \"MONICA RAJAN\". Добавлен Мастера \"CHRIS SOMER\".',12,1),(24,'2016-07-04 12:25:58','1','О Нас',2,'Добавлен Мастера \"JORG MACLEO2\".',12,1),(25,'2016-07-04 12:34:31','6','Текст Текст',2,'Изменен filter_name.',9,1),(26,'2016-07-04 12:36:09','2','Ботокс для волос',2,'Ни одно поле не изменено.',11,1),(27,'2016-07-05 07:53:38','1','Arina Westly',1,'Добавлено.',15,1),(28,'2016-07-05 07:54:45','2','cristin moris',1,'Добавлено.',15,1),(29,'2016-07-05 07:56:04','2','Cristin Moris',2,'Изменен name.',15,1),(30,'2016-07-05 07:58:28','pricheska','pricheska',1,'Добавлено.',16,1),(31,'2016-07-05 07:58:44','makiyag','makiyag',1,'Добавлено.',16,1),(32,'2016-07-05 07:59:10','ukladka','ukladka',1,'Добавлено.',16,1),(33,'2016-07-05 08:03:18','1','Lorem ipsum dolor sit amet,...',1,'Добавлено. Добавлен Фото для слайдера \"blog/img/articles/1/1.jpg\". Добавлен Фото для слайдера \"blog/img/articles/1/2.jpg\".',17,1),(34,'2016-07-05 08:15:06','1','Lorem ipsum dolor sit amet,...',3,'',17,1),(35,'2016-07-05 08:28:54','1','Arina Westly',1,'Добавлено.',15,1),(36,'2016-07-05 08:29:31','2','Cristin Moris',1,'Добавлено.',15,1),(37,'2016-07-05 08:30:01','укладка','укладка',1,'Добавлено.',16,1),(38,'2016-07-05 08:30:12','макияж','макияж',1,'Добавлено.',16,1),(39,'2016-07-05 08:30:28','причёска','причёска',1,'Добавлено.',16,1),(40,'2016-07-05 08:32:39','1','Lorem ipsum dolor sit amet,...',1,'Добавлено. Добавлен image for article \"blog/img/articles/1/1.jpg\". Добавлен image for article \"blog/img/articles/1/2.jpg\".',17,1),(41,'2016-07-05 08:33:45','2','Nunc vulputate, ligula sed lobortis...',1,'Добавлено. Добавлен image for article \"blog/img/articles/2/1.jpg\". Добавлен image for article \"blog/img/articles/2/2.jpg\".',17,1),(42,'2016-07-05 10:52:40','укладка','укладка',2,'Изменен code.',16,1),(43,'2016-07-05 10:52:56','причёска','причёска',2,'Изменен code.',16,1),(44,'2016-07-05 10:53:10','макияж','макияж',2,'Изменен code.',16,1),(45,'2016-07-05 11:58:28','1','Lorem ipsum dolor sit amet,...',2,'Изменен tags.',17,1),(46,'2016-07-05 11:59:04','1','Lorem ipsum dolor sit amet,...',2,'Изменен tags.',17,1),(47,'2016-07-05 15:01:51','макияж','макияж',2,'Изменен code.',16,1),(48,'2016-07-05 15:08:56','4','Nunc mattis leo mi, ac molestie nisl feugiat et. Etiam in quam non nibh ultricies dapibus. Quisque dapibus nisl nisl, vitae iaculis elit ultrices volutpat. Aenean faucibus, ligula non dapibus laoreet,',2,'Изменен text.',7,1),(49,'2016-07-05 15:09:07','3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget eleifend velit, sit amet faucibus magna. Integer at pretium magna, ut vestibulum nulla. Mauris ultricies ante et justo element',2,'Изменен text.',7,1),(50,'2016-07-06 08:53:58','3','Maecenas nibh justo, suscipit varius...',1,'Добавлено. Добавлен image for article \"blog/img/articles/3/3.jpg\". Добавлен image for article \"blog/img/articles/3/1.jpg\". Добавлен image for article \"blog/img/articles/3/2.jpg\".',17,1),(51,'2016-07-06 08:59:34','1','Lorem ipsum dolor sit amet,...',2,'Добавлен image for article \"blog/img/articles/3/3.jpg\".',17,1),(52,'2016-07-06 09:00:55','1','Lorem ipsum dolor sit amet,...',2,'Ни одно поле не изменено.',17,1),(53,'2016-07-06 09:08:14','3','Maecenas nibh justo, suscipit varius...',2,'Изменены is_preview для image for article \"blog/img/articles/3/3.jpg\". Изменены is_preview для image for article \"blog/img/articles/3/2.jpg\".',17,1),(54,'2016-07-06 09:08:32','3','Maecenas nibh justo, suscipit varius...',2,'Изменены is_preview для image for article \"blog/img/articles/3/3.jpg\". Изменены is_preview для image for article \"blog/img/articles/3/2.jpg\".',17,1),(55,'2016-07-06 09:17:28','1','Lorem ipsum dolor sit amet,...',2,'Удален image for article \"blog/img/articles/3/3.jpg\".',17,1),(56,'2016-07-06 11:59:43','zel','Arin West Зеленоград',1,'Добавлено.',19,1),(57,'2016-07-06 12:00:53','moscow','Arin West Москва',1,'Добавлено.',19,1),(58,'2016-07-06 12:01:19','2','Ботокс для волос',2,'Изменен filial.',11,1),(59,'2016-07-06 12:01:30','1','Кератиновое выпрямление',2,'Изменен filial.',11,1),(60,'2016-07-06 12:05:43','1','О Нас',2,'Изменены filial для Master \"JORG MACLEO\". Изменены filial для Master \"MONICA RAJAN\". Изменены filial для Master \"CHRIS SOMER\". Изменены filial для Master \"JORG MACLEO2\".',12,1),(61,'2016-07-06 12:12:12','5','dsvs',1,'Добавлено.',14,1),(62,'2016-07-06 12:12:49','5','dsvs',3,'',14,1),(63,'2016-07-06 15:53:29','zel','Arin West Зеленоград',2,'Изменен user_insta и user_insta_token.',19,1),(64,'2016-07-06 15:53:54','moscow','Arin West Москва',2,'Изменен user_insta и user_insta_token.',19,1),(65,'2016-07-07 08:37:03','zel','Arin West Зеленоград',2,'Ни одно поле не изменено.',19,1),(66,'2016-07-12 12:51:05','3','CHRIS SOMER',3,'',14,1),(67,'2016-07-13 15:46:55','zel','Arin West Зеленоград',2,'Изменен user_insta и user_insta_token.',19,1),(68,'2016-07-13 15:49:01','4','Nunc mattis leo mi, ac molestie nisl feugiat et.\r\n\r\n Etiam in quam non nibh ultricies dapibus. Quisque dapibus nisl nisl, vitae iaculis elit ultrices volutpat. Aenean faucibus, ligula non dapibus laor',2,'Изменен text.',7,1),(69,'2016-07-13 15:58:47','4','JORG MACLEO2',2,'Изменен article_url.',14,1),(70,'2016-07-14 09:38:33','1','Дмитрий Портнов',2,'Изменен name, post и crm_id.',14,1),(71,'2016-07-14 09:44:34','2','Ботокс для волос',2,'Изменен crm_id.',11,1),(72,'2016-07-14 09:48:35','2','Ботокс для волос',2,'Изменен crm_id.',11,1),(73,'2016-07-14 10:27:15','5','Дмитрий Савельев',1,'Добавлено.',14,1),(74,'2016-07-14 10:28:02','2','Лиза',2,'Изменен name, post и crm_id.',14,1),(75,'2016-07-14 10:28:59','6','Катя',1,'Добавлено.',14,1),(76,'2016-07-14 10:29:46','7','Люба',1,'Добавлено.',14,1),(77,'2016-07-14 10:32:15','2','Парафинотерапия',2,'Изменен name. Изменены text, coast и crm_id для Элемент раздела \"Услуги\" \"Парафинотеррапия для рук\". Удален Элемент раздела \"Услуги\" \"Текст Текст Текст\".',11,1),(78,'2016-07-14 10:37:41','3','Стрижки',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Стрижка модельная\". Добавлен Элемент раздела \"Услуги\" \"Стрижка мужская\". Добавлен Элемент раздела \"Услуги\" \"Стрижка каре\". Добавлен Элемент раздела \"Услуги\" \"Стрижка кончиков\". Добавлен Элемент раздела \"Услуги\" \"Стрижка каскад\".',11,1),(79,'2016-07-14 10:43:45','4','Уход и лечение волос',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Ботокс для волос\". Добавлен Элемент раздела \"Услуги\" \"Спа уход для волос\". Добавлен Элемент раздела \"Услуги\" \"Кератиновое насыщение без выпрямления\". Добавлен Элемент раздела \"Услуги\" \"Кератиновое выпрямление и лечение волос\".',11,1),(80,'2016-07-14 10:45:11','5','Наращивание волос',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Ленточное наращивание волос\".',11,1),(81,'2016-07-14 10:54:18','6','Окрашивание',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Осветление в блонд\". Добавлен Элемент раздела \"Услуги\" \"Выход из черного\". Добавлен Элемент раздела \"Услуги\" \"Голливудское окрашивание (шатуш, балаяж..)\". Добавлен Элемент раздела \"Услуги\" \"Окрашивание в один тон\".',11,1),(82,'2016-07-14 10:55:52','7','Прикорневой объем',1,'Добавлено. Добавлен Элемент раздела \"Услуги\" \"Буффант\". Добавлен Элемент раздела \"Услуги\" \"Буст ап\".',11,1),(83,'2016-07-14 13:07:10','6','Окрашивание',2,'Изменены text для Элемент раздела \"Услуги\" \"Голливудское окрашивание\".',11,1),(84,'2016-07-15 09:02:33','4','Привет и добро пожаловать в студию красоты Arin West! \r\n\r\nМеня зовут Арина и это наша команда азартных профессионалов. Мы дружим и работаем вместе, начиная с открытия первого салона. Всегда оставаясь ',2,'Изменен text.',7,1),(85,'2016-07-15 09:07:23','4','Привет и добро пожаловать в студию красоты Arin West!  rbrt erg et rt\r\n\r\nМеня зовут Арина и это наша команда азартных профессионалов. Мы дружим и работаем вместе, начиная с открытия первого салона. Вс',2,'Изменен text.',7,1),(86,'2016-07-15 09:09:02','4','Привет и добро пожаловать в студию красоты Arin West! \r\n\r\nМеня зовут Арина и это наша команда азартных профессионалов. Мы дружим и работаем вместе, начиная с открытия первого салона. Всегда оставаясь ',2,'Изменен text.',7,1),(87,'2016-07-15 10:36:40','4','Добро пожаловать в студию красоты Arin West!\r\n\r\nНаша дружная команда мастеров удивит вас необычными решениями и виртуозным исполнением. Применяя современные техники обработки волос мы используем косме',2,'Изменен text.',7,1),(88,'2016-07-15 12:11:45','4','Добро пожаловать в студию красоты Arin West!\r\n\r\nМы применяем современные техники обработки волос и используем косметику только от ведущих мировых брендов. В руках наших профессионалов они придают инди',2,'Изменен text.',7,1),(89,'2016-07-18 08:54:27','vipramlenie','vipramlenie',2,'Изменен name.',8,1),(90,'2016-07-18 08:55:16','prikornevoi obiem','prikornevoi obiem',2,'Изменен code.',8,1),(91,'2016-07-18 08:55:39','obiem','obiem',2,'Изменен code.',8,1),(92,'2016-07-18 08:55:57','obiem','obiem',2,'Изменен code.',8,1),(93,'2016-07-18 08:56:41','vipramlenie','vipramlenie',3,'',8,1),(94,'2016-07-18 08:56:51','prikornevoi obiem','prikornevoi obiem',3,'',8,1),(95,'2016-07-18 08:57:02','spa','spa',3,'',8,1),(96,'2016-07-18 08:57:34','okrashivanie','okrashivanie',2,'Изменен code и name.',8,1),(97,'2016-07-18 08:58:58','vuprimlenie','vuprimlenie',2,'Изменен code и name.',8,1),(98,'2016-07-18 08:59:27','narashivanie','narashivanie',2,'Изменен name.',8,1),(99,'2016-07-18 08:59:49','terapia','terapia',2,'Изменен code.',8,1),(100,'2016-07-18 09:00:00','narashivanie','narashivanie',3,'',8,1),(101,'2016-07-18 09:00:25','paraterapia','paraterapia',2,'Изменен code и name.',8,1),(102,'2016-07-18 09:00:30','paraterapia','paraterapia',3,'',8,1),(103,'2016-07-18 09:01:09','strizki','strizki',2,'Изменен code и name.',8,1),(104,'2016-07-18 09:01:34','botoks','botoks',3,'',8,1),(105,'2016-07-18 09:01:59','lechenie','lechenie',1,'Добавлено.',8,1),(106,'2016-07-18 09:02:29','rost','rost',1,'Добавлено.',8,1),(107,'2016-07-18 09:47:25','7','Люба',2,'Изменен img_url.',14,1),(108,'2016-07-18 09:48:07','7','Люба',2,'Изменен img_url.',14,1),(109,'2016-07-18 09:48:58','6','Катя',2,'Изменен img_url.',14,1),(110,'2016-07-18 09:49:21','5','Дмитрий Савельев',2,'Изменен img_url.',14,1),(111,'2016-07-18 09:49:40','1','Дмитрий Портнов',2,'Изменен img_url.',14,1),(112,'2016-07-18 09:49:56','2','Лиза',2,'Изменен img_url.',14,1),(113,'2016-07-18 09:50:21','4','JORG MACLEO2',2,'Изменен img_url.',14,1),(114,'2016-07-18 09:51:08','8','Афруза',1,'Добавлено.',14,1),(115,'2016-07-18 09:51:48','8','Афруза',2,'Изменен img_url.',14,1),(116,'2016-07-18 09:53:00','vuprimlenie','vuprimlenie',3,'',8,1),(117,'2016-07-18 09:53:00','terapia','terapia',3,'',8,1),(118,'2016-07-18 09:53:00','strizki','strizki',3,'',8,1),(119,'2016-07-18 09:53:00','rost','rost',3,'',8,1),(120,'2016-07-18 09:53:00','okrashivanie','okrashivanie',3,'',8,1),(121,'2016-07-18 09:53:00','obiem','obiem',3,'',8,1),(122,'2016-07-18 09:53:00','lechenie','lechenie',3,'',8,1),(123,'2016-07-18 09:55:41','okrashivanie','okrashivanie',1,'Добавлено.',8,1),(124,'2016-07-18 09:56:00','spa','spa',1,'Добавлено.',8,1),(125,'2016-07-18 09:56:22','strizki','strizki',1,'Добавлено.',8,1),(126,'2016-07-18 09:56:37','obiem','obiem',1,'Добавлено.',8,1),(127,'2016-07-18 09:57:13','prymlenie','prymlenie',1,'Добавлено.',8,1),(128,'2016-07-18 10:31:46','9','Спа',1,'Добавлено.',9,1),(129,'2016-07-18 10:34:13','10','спа',1,'Добавлено.',9,1),(130,'2016-07-18 10:34:30','11','Спа',1,'Добавлено.',9,1),(131,'2016-07-18 10:34:45','12','Спа',1,'Добавлено.',9,1),(132,'2016-07-18 10:36:10','13','аор',1,'Добавлено.',9,1),(133,'2016-07-18 10:36:25','14','дрл',1,'Добавлено.',9,1),(134,'2016-07-18 10:36:42','15','об',1,'Добавлено.',9,1),(135,'2016-07-18 10:37:56','16','м',1,'Добавлено.',9,1),(136,'2016-07-18 10:38:13','17','ь',1,'Добавлено.',9,1),(137,'2016-07-18 10:38:28','18','ь',1,'Добавлено.',9,1),(138,'2016-07-18 10:38:44','19','ро',1,'Добавлено.',9,1),(139,'2016-07-18 10:39:00','20','р',1,'Добавлено.',9,1),(140,'2016-07-18 10:39:13','21','о',1,'Добавлено.',9,1),(141,'2016-07-18 10:39:32','22','л',1,'Добавлено.',9,1),(142,'2016-07-18 10:39:53','23','р',1,'Добавлено.',9,1),(143,'2016-07-18 10:40:10','24','о',1,'Добавлено.',9,1),(144,'2016-07-18 10:40:31','25','р',1,'Добавлено.',9,1),(145,'2016-07-18 10:41:27','12','Спа',3,'',9,1),(146,'2016-07-18 10:41:27','10','спа',3,'',9,1),(147,'2016-07-18 10:41:57','15','об',3,'',9,1),(148,'2016-07-18 10:49:21','26','к',1,'Добавлено.',9,1),(149,'2016-07-18 10:49:35','27','в',1,'Добавлено.',9,1),(150,'2016-07-18 10:49:55','28','в',1,'Добавлено.',9,1),(151,'2016-07-18 10:50:07','29','в',1,'Добавлено.',9,1),(152,'2016-07-18 10:50:19','30','в',1,'Добавлено.',9,1),(153,'2016-07-18 10:50:34','31','в',1,'Добавлено.',9,1),(154,'2016-07-18 10:52:00','32','f',1,'Добавлено.',9,1),(155,'2016-07-18 10:52:12','33','d',1,'Добавлено.',9,1),(156,'2016-07-18 10:52:23','34','d',1,'Добавлено.',9,1),(157,'2016-07-18 10:52:35','35','d',1,'Добавлено.',9,1),(158,'2016-07-18 10:52:48','36','d',1,'Добавлено.',9,1),(159,'2016-07-18 10:53:01','37','d',1,'Добавлено.',9,1),(160,'2016-07-18 10:53:16','38','d',1,'Добавлено.',9,1),(161,'2016-07-18 10:53:36','39','d',1,'Добавлено.',9,1),(162,'2016-07-18 10:53:49','40','d',1,'Добавлено.',9,1),(163,'2016-07-18 10:54:02','41','d',1,'Добавлено.',9,1),(164,'2016-07-18 10:56:01','42','f',1,'Добавлено.',9,1),(165,'2016-07-18 10:56:15','43','e',1,'Добавлено.',9,1),(166,'2016-07-18 10:56:27','44','g',1,'Добавлено.',9,1),(167,'2016-07-18 10:56:51','45','f',1,'Добавлено.',9,1),(168,'2016-07-18 10:57:03','46','g',1,'Добавлено.',9,1),(169,'2016-07-18 10:57:16','47','t',1,'Добавлено.',9,1),(170,'2016-07-18 10:57:28','48','f',1,'Добавлено.',9,1),(171,'2016-07-18 10:57:39','49','f',1,'Добавлено.',9,1),(172,'2016-07-18 10:57:53','49','f',3,'',9,1),(173,'2016-07-18 11:52:00','50','d',1,'Добавлено.',9,1),(174,'2016-07-18 11:52:49','51','a',1,'Добавлено.',9,1),(175,'2016-07-18 11:53:01','52','a',1,'Добавлено.',9,1),(176,'2016-07-18 11:53:15','53','d',1,'Добавлено.',9,1),(177,'2016-07-18 11:53:28','54','c',1,'Добавлено.',9,1),(178,'2016-07-18 11:53:42','55','x',1,'Добавлено.',9,1),(179,'2016-07-18 11:53:55','56','c',1,'Добавлено.',9,1),(180,'2016-07-18 11:54:11','57','c',1,'Добавлено.',9,1),(181,'2016-07-18 11:54:40','50','d',3,'',9,1),(182,'2016-07-18 12:45:58','2','Парафинотерапия',2,'Изменен description и img_url.',11,1),(183,'2016-07-18 12:46:31','2','Парафинотерапия',2,'Изменен img_url.',11,1),(184,'2016-07-18 12:51:36','2','Парафинотерапия',2,'Изменен img_url.',11,1),(185,'2016-07-18 13:53:15','3','Стрижки',2,'Изменен description и img_url.',11,1),(186,'2016-07-18 14:41:08','58','ф',1,'Добавлено.',9,1),(187,'2016-07-18 14:41:21','59','ф',1,'Добавлено.',9,1),(188,'2016-07-18 14:41:40','60','ф',1,'Добавлено.',9,1),(189,'2016-07-18 14:42:04','61','ф',1,'Добавлено.',9,1),(190,'2016-07-18 14:42:22','62','ф',1,'Добавлено.',9,1),(191,'2016-07-18 14:42:38','63','ф',1,'Добавлено.',9,1),(192,'2016-07-18 14:42:51','64','ф',1,'Добавлено.',9,1),(193,'2016-07-18 14:43:02','65','ф',1,'Добавлено.',9,1),(194,'2016-07-18 14:43:12','66','я',1,'Добавлено.',9,1),(195,'2016-07-18 14:43:25','67','ы',1,'Добавлено.',9,1),(196,'2016-07-18 14:43:40','68','я',1,'Добавлено.',9,1),(197,'2016-07-18 14:43:54','69','я',1,'Добавлено.',9,1),(198,'2016-07-18 14:47:43','65','ф',3,'',9,1),(199,'2016-07-18 14:49:26','70','п',1,'Добавлено.',9,1),(200,'2016-07-18 14:49:45','71','р',1,'Добавлено.',9,1),(201,'2016-07-18 14:50:04','72','а',1,'Добавлено.',9,1),(202,'2016-07-18 14:50:16','73','в',1,'Добавлено.',9,1),(203,'2016-07-18 14:50:24','74','в',1,'Добавлено.',9,1),(204,'2016-07-18 14:50:36','75','с',1,'Добавлено.',9,1),(205,'2016-07-18 14:50:48','76','с',1,'Добавлено.',9,1),(206,'2016-07-18 14:51:00','77','в',1,'Добавлено.',9,1),(207,'2016-07-18 14:51:16','78','ы',1,'Добавлено.',9,1),(208,'2016-07-18 14:51:31','79','в',1,'Добавлено.',9,1),(209,'2016-07-18 14:51:47','80','в',1,'Добавлено.',9,1),(210,'2016-07-18 14:52:07','81','в',1,'Добавлено.',9,1),(211,'2016-07-18 14:52:23','82','в',1,'Добавлено.',9,1),(212,'2016-07-18 14:52:34','83','в',1,'Добавлено.',9,1),(213,'2016-07-18 14:52:44','84','в',1,'Добавлено.',9,1),(214,'2016-07-19 07:58:17','79','Голливудское окрашивание',2,'Изменен name и description.',9,1),(215,'2016-07-19 07:58:37','80','Голливудское окрашивание',2,'Изменен name и description.',9,1),(216,'2016-07-19 08:00:17','81','Голливудское окрашивание',2,'Изменен name и description.',9,1),(217,'2016-07-19 08:11:47','82','Окрашивание',2,'Изменен name и description.',9,1),(218,'2016-07-19 08:12:40','83','Голливудское окрашивание',2,'Изменен name и description.',9,1),(219,'2016-07-19 08:13:27','84','Окрашивание',2,'Изменен name и description.',9,1),(220,'2016-07-19 08:14:28','58','Голливудское окрашивание',2,'Изменен name и description.',9,1),(221,'2016-07-19 08:15:19','59','Стрижка',2,'Изменен name, description и filter_name.',9,1),(222,'2016-07-19 08:16:03','60','Экстремальное окрашивание',2,'Изменен name и description.',9,1),(223,'2016-07-19 08:16:37','61','Голливудское окрашивание',2,'Изменен name и description.',9,1),(224,'2016-07-19 08:19:36','60','Стрижка',2,'Изменен name и description.',9,1),(225,'2016-07-19 08:22:15','62','Экстремальное окрашивание',2,'Изменен name и description.',9,1),(226,'2016-07-19 08:23:18','81','Голливудское окрашивание',2,'Изменен url_img.',9,1),(227,'2016-07-19 08:25:19','63','Голливудское окрашивание',2,'Изменен name и description.',9,1),(228,'2016-07-19 08:25:51','64','Голливудское окрашивание',2,'Изменен name и description.',9,1),(229,'2016-07-19 08:29:44','85','Голливудское окрашивание',1,'Добавлено.',9,1),(230,'2016-07-19 08:30:34','66','Яркое окрашивание',2,'Изменен name и description.',9,1),(231,'2016-07-19 08:31:02','67','Голливудское окрашивание',2,'Изменен name и description.',9,1),(232,'2016-07-19 08:32:04','68','Калифарнийское мелирование',2,'Изменен name и description.',9,1),(233,'2016-07-19 08:34:44','70','Голливудское окрашивание',2,'Изменен name и description.',9,1),(234,'2016-07-19 08:36:21','78','Экстремальное окрашивание',2,'Изменен name и description.',9,1),(235,'2016-07-19 08:37:06','61','Голливудское окрашивание',3,'',9,1),(236,'2016-07-19 08:38:49','77','Голливудское окрашивание',2,'Изменен name и description.',9,1),(237,'2016-07-19 08:39:25','76','Окрашивание',2,'Изменен name и description.',9,1),(238,'2016-07-19 08:40:10','75','Калифарнийское мелирование',2,'Изменен name и description.',9,1),(239,'2016-07-19 10:39:10','71','',2,'Изменен name и description.',9,1),(240,'2016-07-20 08:40:37','71','',3,'',9,1),(241,'2016-07-26 12:17:14','8','Афруза',2,'Изменен hash_tag и article.',14,1),(242,'2016-07-26 12:17:45','7','Люба',2,'Изменен hash_tag и article.',14,1),(243,'2016-07-26 12:18:10','6','Катя',2,'Изменен hash_tag и article.',14,1),(244,'2016-07-26 12:18:27','5','Дмитрий Савельев',2,'Изменен hash_tag.',14,1),(245,'2016-07-26 12:18:46','1','Дмитрий Портнов',2,'Изменен hash_tag.',14,1),(246,'2016-07-26 12:20:16','2','Лиза',2,'Изменен hash_tag.',14,1),(247,'2016-07-26 13:07:51','1','Дмитрий Портнов',2,'Изменен article.',14,1),(248,'2016-07-26 15:39:58','1','Дмитрий Портнов',2,'Изменен tags.',14,1),(249,'2016-07-26 15:40:10','1','Дмитрий Портнов',2,'Изменен tags.',14,1),(250,'2016-07-27 09:50:50','1','Стрижки',1,'Добавлено.',11,1),(251,'2016-07-27 09:56:08','1','Женская',1,'Добавлено.',20,1),(252,'2016-07-27 09:57:07','2','Мужская',1,'Добавлено.',20,1),(253,'2016-07-27 10:00:36','3','Кончики',1,'Добавлено. Добавлен Элемент подуровня \"авам\".',20,1),(254,'2016-07-27 10:01:19','3','Кончики',2,'Добавлен Элемент подуровня \"вымв\".',20,1),(255,'2016-07-27 10:01:48','3','Кончики',2,'Удален Элемент подуровня \"авам\". Удален Элемент подуровня \"вымв\".',20,1),(256,'2016-07-27 10:02:34','3','Кончики',2,'Ни одно поле не изменено.',20,1),(257,'2016-07-27 10:02:50','3','Кончики',2,'Добавлен Элемент подуровня \"dsvsdv\".',20,1),(258,'2016-07-27 10:04:51','3','Кончики',2,'Удален Элемент подуровня \"dsvsdv\".',20,1),(259,'2016-07-27 10:06:11','3','Кончики',2,'Ни одно поле не изменено.',20,1),(260,'2016-07-27 10:06:22','3','Кончики',2,'Добавлен Элемент подуровня \"asa\".',20,1),(261,'2016-07-27 10:07:02','3','Кончики',2,'Добавлен Элемент подуровня \"saa\".',20,1),(262,'2016-07-27 10:07:26','3','Кончики',2,'Удален Элемент подуровня \"saa\".',20,1),(263,'2016-07-27 10:08:03','3','Кончики',2,'Удален Элемент подуровня \"asa\".',20,1),(264,'2016-07-27 10:08:18','3','Кончики',2,'Ни одно поле не изменено.',20,1),(265,'2016-07-27 10:15:57','2','Окрашивание',1,'Добавлено.',11,1),(266,'2016-07-27 10:22:16','4','Любое сложное окрашивание',1,'Добавлено. Добавлен Элемент подуровня \"Короткие\". Добавлен Элемент подуровня \"Средние\". Добавлен Элемент подуровня \"Удлинённые\". Добавлен Элемент подуровня \"Длинные\". Добавлен Элемент подуровня \"Очень длинные\".',20,1),(267,'2016-07-27 10:22:30','4','Любое сложное окрашивание',2,'Ни одно поле не изменено.',20,1),(268,'2016-07-27 10:24:17','5','Остальное',1,'Добавлено. Добавлен Элемент подуровня \"Короткие\". Добавлен Элемент подуровня \"Средние\".',20,1),(269,'2016-07-27 10:24:39','4','Любое сложное окрашивание',2,'Ни одно поле не изменено.',20,1),(270,'2016-07-27 10:24:48','5','Остальное',2,'Ни одно поле не изменено.',20,1),(271,'2016-07-27 10:26:11','5','В один тон',2,'Изменен name.',20,1),(272,'2016-07-27 10:33:08','2','Окрашивание',2,'Изменен code.',11,1),(273,'2016-07-27 10:33:23','1','Стрижки',2,'Изменен code.',11,1),(274,'2016-07-27 12:04:43','2','Окрашивание',2,'Изменен info.',11,1),(275,'2016-07-27 12:56:35','2','Окрашивание',2,'Изменен img_url.',11,1),(276,'2016-07-27 12:56:47','1','Стрижки',2,'Изменен img_url.',11,1),(277,'2016-07-27 13:05:42','85','Голливудское окрашивание',2,'Изменен url_img.',9,1),(278,'2016-07-27 13:06:25','84','Окрашивание',2,'Изменен url_img.',9,1),(279,'2016-07-27 13:10:17','83','Голливудское окрашивание',2,'Изменен url_img.',9,1),(280,'2016-07-27 13:10:18','82','Окрашивание',2,'Изменен url_img.',9,1),(281,'2016-07-27 13:10:18','81','Голливудское окрашивание',2,'Изменен url_img.',9,1),(282,'2016-07-27 13:10:18','80','Голливудское окрашивание',2,'Изменен url_img.',9,1),(283,'2016-07-27 13:10:18','79','Голливудское окрашивание',2,'Изменен url_img.',9,1),(284,'2016-07-27 13:10:18','78','Экстремальное окрашивание',2,'Изменен url_img.',9,1),(285,'2016-07-27 13:10:18','77','Голливудское окрашивание',2,'Изменен url_img.',9,1),(286,'2016-07-27 13:10:19','76','Окрашивание',2,'Изменен url_img.',9,1),(287,'2016-07-27 13:10:19','75','Калифарнийское мелирование',2,'Изменен url_img.',9,1),(288,'2016-07-27 13:10:19','74','в',2,'Изменен url_img.',9,1),(289,'2016-07-27 13:10:19','73','в',2,'Изменен url_img.',9,1),(290,'2016-07-27 13:10:19','72','а',2,'Изменен url_img.',9,1),(291,'2016-07-27 13:10:19','70','Голливудское окрашивание',2,'Изменен url_img.',9,1),(292,'2016-07-27 13:10:19','69','я',2,'Изменен url_img.',9,1),(293,'2016-07-27 13:10:20','68','Калифарнийское мелирование',2,'Изменен url_img.',9,1),(294,'2016-07-27 13:10:20','67','Голливудское окрашивание',2,'Изменен url_img.',9,1),(295,'2016-07-27 13:10:20','66','Яркое окрашивание',2,'Изменен url_img.',9,1),(296,'2016-07-27 13:10:20','64','Голливудское окрашивание',2,'Изменен url_img.',9,1),(297,'2016-07-27 13:10:20','63','Голливудское окрашивание',2,'Изменен url_img.',9,1),(298,'2016-07-27 13:10:20','62','Экстремальное окрашивание',2,'Изменен url_img.',9,1),(299,'2016-07-27 13:10:21','60','Стрижка',2,'Изменен url_img.',9,1),(300,'2016-07-27 13:10:21','59','Стрижка',2,'Изменен url_img.',9,1),(301,'2016-07-27 13:10:21','58','Голливудское окрашивание',2,'Изменен url_img.',9,1),(302,'2016-07-27 13:10:21','57','c',2,'Изменен url_img.',9,1),(303,'2016-07-27 13:10:21','56','c',2,'Изменен url_img.',9,1),(304,'2016-07-27 13:10:21','55','x',2,'Изменен url_img.',9,1),(305,'2016-07-27 13:10:21','54','c',2,'Изменен url_img.',9,1),(306,'2016-07-27 13:10:21','53','d',2,'Изменен url_img.',9,1),(307,'2016-07-27 13:10:22','52','a',2,'Изменен url_img.',9,1),(308,'2016-07-27 13:10:22','51','a',2,'Изменен url_img.',9,1),(309,'2016-07-27 13:10:22','48','f',2,'Изменен url_img.',9,1),(310,'2016-07-27 13:10:22','47','t',2,'Изменен url_img.',9,1),(311,'2016-07-27 13:10:22','46','g',2,'Изменен url_img.',9,1),(312,'2016-07-27 13:10:22','45','f',2,'Изменен url_img.',9,1),(313,'2016-07-27 13:10:22','44','g',2,'Изменен url_img.',9,1),(314,'2016-07-27 13:10:23','43','e',2,'Изменен url_img.',9,1),(315,'2016-07-27 13:10:23','42','f',2,'Изменен url_img.',9,1),(316,'2016-07-27 13:10:23','41','d',2,'Изменен url_img.',9,1),(317,'2016-07-27 13:10:23','40','d',2,'Изменен url_img.',9,1),(318,'2016-07-27 13:10:23','39','d',2,'Изменен url_img.',9,1),(319,'2016-07-27 13:10:23','38','d',2,'Изменен url_img.',9,1),(320,'2016-07-27 13:10:23','37','d',2,'Изменен url_img.',9,1),(321,'2016-07-27 13:10:23','36','d',2,'Изменен url_img.',9,1),(322,'2016-07-27 13:10:23','35','d',2,'Изменен url_img.',9,1),(323,'2016-07-27 13:10:24','34','d',2,'Изменен url_img.',9,1),(324,'2016-07-27 13:10:24','33','d',2,'Изменен url_img.',9,1),(325,'2016-07-27 13:10:24','32','f',2,'Изменен url_img.',9,1),(326,'2016-07-27 13:10:24','31','в',2,'Изменен url_img.',9,1),(327,'2016-07-27 13:10:24','30','в',2,'Изменен url_img.',9,1),(328,'2016-07-27 13:10:24','29','в',2,'Изменен url_img.',9,1),(329,'2016-07-27 13:10:24','28','в',2,'Изменен url_img.',9,1),(330,'2016-07-27 13:10:24','27','в',2,'Изменен url_img.',9,1),(331,'2016-07-27 13:10:25','26','к',2,'Изменен url_img.',9,1),(332,'2016-07-27 13:10:25','25','р',2,'Изменен url_img.',9,1),(333,'2016-07-27 13:10:25','24','о',2,'Изменен url_img.',9,1),(334,'2016-07-27 13:10:25','23','р',2,'Изменен url_img.',9,1),(335,'2016-07-27 13:10:25','22','л',2,'Изменен url_img.',9,1),(336,'2016-07-27 13:10:25','21','о',2,'Изменен url_img.',9,1),(337,'2016-07-27 13:10:25','20','р',2,'Изменен url_img.',9,1),(338,'2016-07-27 13:10:26','19','ро',2,'Изменен url_img.',9,1),(339,'2016-07-27 13:10:26','18','ь',2,'Изменен url_img.',9,1),(340,'2016-07-27 13:10:26','17','ь',2,'Изменен url_img.',9,1),(341,'2016-07-27 13:10:26','16','м',2,'Изменен url_img.',9,1),(342,'2016-07-27 13:10:26','14','дрл',2,'Изменен url_img.',9,1),(343,'2016-07-27 13:10:26','13','аор',2,'Изменен url_img.',9,1),(344,'2016-07-27 13:10:27','11','Спа',2,'Изменен url_img.',9,1),(345,'2016-07-27 13:10:27','9','Спа',2,'Изменен url_img.',9,1),(346,'2016-07-27 13:14:25','25','р',2,'Изменен url_img.',9,1),(347,'2016-07-27 13:14:25','24','о',2,'Изменен url_img.',9,1),(348,'2016-07-27 13:15:05','23','р',3,'',9,1),(349,'2016-07-27 13:15:05','22','л',3,'',9,1),(350,'2016-07-27 13:15:05','20','р',3,'',9,1),(351,'2016-07-27 13:15:05','18','ь',3,'',9,1),(352,'2016-07-27 13:15:05','17','ь',3,'',9,1),(353,'2016-07-27 13:15:05','16','м',3,'',9,1),(354,'2016-07-27 13:15:05','14','дрл',3,'',9,1),(355,'2016-07-27 13:15:05','13','аор',3,'',9,1),(356,'2016-07-27 13:15:06','11','Спа',3,'',9,1),(357,'2016-07-27 13:15:49','57','c',3,'',9,1),(358,'2016-07-27 13:15:50','45','f',3,'',9,1),(359,'2016-07-27 13:15:50','43','e',3,'',9,1),(360,'2016-07-27 13:25:51','85','Голливудское окрашивание',3,'',9,1),(361,'2016-07-27 13:25:51','84','Окрашивание',3,'',9,1),(362,'2016-07-27 13:25:51','81','Голливудское окрашивание',3,'',9,1),(363,'2016-07-27 13:25:51','80','Голливудское окрашивание',3,'',9,1),(364,'2016-07-27 13:25:52','76','Окрашивание',3,'',9,1),(365,'2016-07-27 13:25:52','75','Калифарнийское мелирование',3,'',9,1),(366,'2016-07-27 13:25:52','74','в',3,'',9,1),(367,'2016-07-27 13:25:52','73','в',3,'',9,1),(368,'2016-07-27 13:25:52','72','а',3,'',9,1),(369,'2016-07-27 13:25:52','70','Голливудское окрашивание',3,'',9,1),(370,'2016-07-27 13:25:52','69','я',3,'',9,1),(371,'2016-07-27 13:25:52','68','Калифарнийское мелирование',3,'',9,1),(372,'2016-07-27 13:25:52','67','Голливудское окрашивание',3,'',9,1),(373,'2016-07-27 13:25:52','66','Яркое окрашивание',3,'',9,1),(374,'2016-07-27 13:25:52','64','Голливудское окрашивание',3,'',9,1),(375,'2016-07-27 13:25:52','63','Голливудское окрашивание',3,'',9,1),(376,'2016-07-27 13:25:52','60','Стрижка',3,'',9,1),(377,'2016-07-27 13:25:52','58','Голливудское окрашивание',3,'',9,1),(378,'2016-07-27 13:25:52','31','в',3,'',9,1),(379,'2016-07-27 13:25:52','30','в',3,'',9,1),(380,'2016-07-27 13:25:52','29','в',3,'',9,1),(381,'2016-07-27 13:25:52','28','в',3,'',9,1),(382,'2016-07-27 13:25:53','27','в',3,'',9,1),(383,'2016-07-27 13:25:53','26','к',3,'',9,1),(384,'2016-07-27 13:26:08','62','Экстремальное окрашивание',2,'Изменен url_img.',9,1),(385,'2016-07-27 13:26:34','53','d',3,'',9,1),(386,'2016-07-27 13:27:07','41','d',3,'',9,1),(387,'2016-07-27 13:27:07','37','d',3,'',9,1),(388,'2016-07-27 13:27:07','35','d',3,'',9,1),(389,'2016-07-27 13:27:07','34','d',3,'',9,1),(390,'2016-07-27 13:27:07','33','d',3,'',9,1),(391,'2016-07-27 13:27:07','32','f',3,'',9,1),(392,'2016-07-27 13:27:15','59','Стрижка',2,'Изменен url_img.',9,1),(393,'2016-07-27 13:27:53','59','Стрижка',2,'Изменен url_img.',9,1),(394,'2016-07-27 14:10:16','9','Спа',2,'Изменен article_url.',9,1),(395,'2016-07-27 14:15:41','4','Любое сложное окрашивание',2,'Изменен description.',20,1),(396,'2016-07-27 14:16:39','5','В один тон',2,'Добавлен Элемент подуровня \"Удлиненные\". Добавлен Элемент подуровня \"Длинные\". Добавлен Элемент подуровня \"Очень длинные\". Изменены coast для Элемент подуровня \"Короткие\". Изменены coast для Элемент подуровня \"Средние\".',20,1),(397,'2016-07-27 14:19:46','2','Окрашивание',2,'Изменен youtube_url.',11,1),(398,'2016-07-27 14:21:04','3','Maecenas nibh justo, suscipit varius...',2,'Изменен youtube_url.',17,1),(399,'2016-07-27 14:52:32','1','Lorem ipsum dolor sit amet,...',2,'Изменен youtube_url.',17,1),(400,'2016-08-01 14:19:31','1','О Нас',2,'Изменен insta_img.',12,1),(401,'2016-08-02 14:05:53','2','Окрашивание',2,'Изменен article.',11,1),(402,'2016-08-02 14:06:04','1','Стрижки',2,'Изменен article.',11,1),(403,'2016-08-02 14:45:42','lechenie','lechenie',2,'Изменен code, name и tag.',8,1),(404,'2016-08-02 14:49:05','объем','объем',1,'Добавлено.',16,1),(405,'2016-08-02 14:49:50','выпрямление','выпрямление',1,'Добавлено.',16,1),(406,'2016-08-02 14:50:38','Лечение','Лечение',1,'Добавлено.',16,1),(407,'2016-08-02 14:54:47','лечение','лечение',2,'Изменен name и code.',16,1),(408,'2016-08-02 14:55:26','ногти','ногти',1,'Добавлено.',16,1),(409,'2016-08-02 14:55:57','ресницы','ресницы',1,'Добавлено.',16,1),(410,'2016-08-02 14:56:08','лечение','лечение',2,'Изменен name.',16,1),(411,'2016-08-02 14:56:22','Лечение','Лечение',3,'',16,1),(412,'2016-08-02 14:56:41','лечение','лечение',1,'Добавлено.',16,1),(413,'2016-08-02 14:57:15','брови','брови',1,'Добавлено.',16,1),(414,'2016-08-02 14:58:41','макияж','макияж',2,'Изменен code.',16,1),(415,'2016-08-02 14:59:14','obiem','obiem',2,'Изменен tag.',8,1),(416,'2016-08-02 14:59:26','prymlenie','prymlenie',2,'Изменен tag.',8,1),(417,'2016-08-02 14:59:42','lechenie','lechenie',2,'Изменен tag.',8,1),(418,'2016-08-02 15:00:21','nogti','nogti',1,'Добавлено.',8,1),(419,'2016-08-02 15:01:29','resnici','resnici',1,'Добавлено.',8,1),(420,'2016-08-02 15:02:06','brovi','brovi',1,'Добавлено.',8,1),(421,'2016-08-02 15:03:30','59','Стрижка',3,'',9,1),(422,'2016-08-02 15:03:31','40','d',3,'',9,1),(423,'2016-08-02 15:03:31','39','d',3,'',9,1),(424,'2016-08-02 15:03:31','38','d',3,'',9,1),(425,'2016-08-02 15:03:31','36','d',3,'',9,1),(426,'2016-08-02 15:04:49','83','Голливудское окрашивание',2,'Изменен filter_name.',9,1),(427,'2016-08-02 15:04:49','82','Окрашивание',2,'Изменен filter_name.',9,1),(428,'2016-08-02 15:04:49','79','Голливудское окрашивание',2,'Изменен filter_name.',9,1),(429,'2016-08-02 15:04:49','78','Экстремальное окрашивание',2,'Изменен filter_name.',9,1),(430,'2016-08-02 15:04:50','77','Голливудское окрашивание',2,'Изменен filter_name.',9,1),(431,'2016-08-02 15:04:50','62','Экстремальное окрашивание',2,'Изменен filter_name.',9,1),(432,'2016-08-02 15:04:50','25','р',2,'Изменен filter_name.',9,1),(433,'2016-08-02 15:04:50','24','о',2,'Изменен filter_name.',9,1),(434,'2016-08-02 15:04:50','21','о',2,'Изменен filter_name.',9,1),(435,'2016-08-02 15:04:51','19','ро',2,'Изменен filter_name.',9,1),(436,'2016-08-02 15:04:51','9','Спа',2,'Изменен filter_name.',9,1),(437,'2016-08-02 15:05:34','strizki','strizki',3,'',8,1),(438,'2016-08-02 15:05:35','spa','spa',3,'',8,1),(439,'2016-08-02 15:05:35','okrashivanie','okrashivanie',3,'',8,1),(440,'2016-08-03 15:48:34','4','Добро пожаловать на сайт салонов красоты Arin West!',2,'Изменен text.',7,1),(441,'2016-08-03 16:07:22','2','Лиза',2,'Изменен article и tags.',14,1),(442,'2016-08-03 16:07:48','7','Люба',2,'Изменен article и tags.',14,1),(443,'2016-08-03 16:08:15','1','Дмитрий Портнов',2,'Изменен article.',14,1),(444,'2016-08-03 16:08:46','5','Дмитрий Савельев',2,'Изменен article и tags.',14,1),(445,'2016-08-03 16:09:06','6','Катя',2,'Изменен article и tags.',14,1),(446,'2016-08-03 16:09:26','8','Афруза',2,'Изменен article и tags.',14,1),(447,'2016-08-04 08:48:55','окрашивание','окрашивание',1,'Добавлено.',16,1),(448,'2016-08-04 08:49:03','okrashivanie','okrashivanie',1,'Добавлено.',8,1),(449,'2016-08-04 08:49:47','resnici','resnici',2,'Изменен numeric.',8,1),(450,'2016-08-04 08:49:47','prymlenie','prymlenie',2,'Изменен numeric.',8,1),(451,'2016-08-04 08:49:47','obiem','obiem',2,'Изменен numeric.',8,1),(452,'2016-08-04 08:49:47','nogti','nogti',2,'Изменен numeric.',8,1),(453,'2016-08-04 08:49:48','lechenie','lechenie',2,'Изменен numeric.',8,1),(454,'2016-08-04 08:49:48','brovi','brovi',2,'Изменен numeric.',8,1),(455,'2016-08-04 08:53:03','83','Голливудское окрашивание',2,'Изменен filter_name.',9,1),(456,'2016-08-04 08:53:03','82','Окрашивание',2,'Изменен filter_name.',9,1),(457,'2016-08-04 08:53:03','79','Голливудское окрашивание',2,'Изменен filter_name.',9,1),(458,'2016-08-04 08:53:03','78','Экстремальное окрашивание',2,'Изменен filter_name.',9,1),(459,'2016-08-04 08:53:04','77','Голливудское окрашивание',2,'Изменен filter_name.',9,1),(460,'2016-08-04 08:53:04','62','Экстремальное окрашивание',2,'Изменен filter_name.',9,1),(461,'2016-08-04 09:08:09','1','О Нас',2,'Удален Фото для слайдера \"arinwest/img/about/slider/1.jpg\". Удален Фото для слайдера \"arinwest/img/about/slider/2.jpg\". Удален Фото для слайдера \"arinwest/img/about/slider/3.jpg\". Удален Фото для слайдера \"arinwest/img/about/slider/4.jpg\".',12,1),(462,'2016-08-04 09:32:41','2','Окрашивание',2,'Изменен description и article_href_text.',11,1),(463,'2016-08-04 09:34:57','1','Стрижки',2,'Изменен description.',11,1),(464,'2016-08-04 09:35:25','2','Окрашивание',2,'Ни одно поле не изменено.',11,1),(465,'2016-08-04 09:36:10','1','Стрижки',2,'Изменен article_href_text.',11,1),(466,'2016-08-04 09:36:42','2','Окрашивание',2,'Изменен code.',11,1),(467,'2016-08-04 09:37:26','1','Стрижки',2,'Изменен code.',11,1),(468,'2016-08-04 09:38:05','стрижки','стрижки',1,'Добавлено.',16,1),(469,'2016-08-04 09:39:59','3','Кератиновое выпрямление и восстановление',1,'Добавлено.',11,1),(470,'2016-08-04 09:41:14','3','Кератиновое выпрямление и восстановление',2,'Изменен article_href_text.',11,1),(471,'2016-08-04 09:43:36','4','Кератиновое насыщение',1,'Добавлено.',11,1),(472,'2016-08-04 09:45:59','5','Ботокс для волос',1,'Добавлено.',11,1),(473,'2016-08-04 09:58:35','6','Объем Москва',1,'Добавлено.',11,1),(474,'2016-08-04 09:58:57','4','Кератиновое насыщение Москва',2,'Ни одно поле не изменено.',11,1),(475,'2016-08-04 10:00:06','6','Объем Москва',2,'Изменен article_href_text.',11,1),(476,'2016-08-04 10:02:50','7','Спа Москва',1,'Добавлено.',11,1),(477,'2016-08-04 10:03:12','8','Стрижки Зеленоград',1,'Добавлено.',11,1),(478,'2016-08-04 10:03:27','9','Окрашивание Зеленоград',1,'Добавлено.',11,1),(479,'2016-08-04 10:03:38','10','Кератиновое выпрямление и восстановление Зеленоград',1,'Добавлено.',11,1),(480,'2016-08-04 10:03:51','11','Кератиновое насыщение Зеленоград',1,'Добавлено.',11,1),(481,'2016-08-04 10:05:42','12','Ботокс для волос Зеленоград',1,'Добавлено.',11,1),(482,'2016-08-04 10:05:57','13','Объем Зеленоград',1,'Добавлено.',11,1),(483,'2016-08-04 10:06:10','14','Спа Зеленоград',1,'Добавлено.',11,1),(484,'2016-08-04 10:09:28','15','Ногти Зеленоград',1,'Добавлено.',11,1),(485,'2016-08-04 10:09:41','8','Стрижки Зеленоград',2,'Ни одно поле не изменено.',11,1),(486,'2016-08-04 10:10:16','15','Ногти Зеленоград',2,'Изменен article_href_text.',11,1),(487,'2016-08-04 10:10:29','16','Ногти Зеленоград',1,'Добавлено.',11,1),(488,'2016-08-04 10:11:55','16','Ресницы Зеленоград',2,'Изменен name, description и article_href_text.',11,1),(489,'2016-08-04 10:12:29','16','Ресницы Зеленоград',2,'Изменен code.',11,1),(490,'2016-08-04 10:12:55','17','Ресницы Зеленоград',1,'Добавлено.',11,1),(491,'2016-08-04 10:14:25','17','Брови Зеленоград',2,'Изменен name, description, article_href_text и code.',11,1),(492,'2016-08-04 10:14:44','16','Ресницы Зеленоград',2,'Изменен article_href_text.',11,1),(493,'2016-08-04 10:18:46','moscow','Arin West Москва',2,'Добавлен Фото для слайдера \"arinwest/img/filials/msc/1.jpg\". Добавлен Фото для слайдера \"arinwest/img/filials/msc/2.jpg\". Добавлен Фото для слайдера \"arinwest/img/filials/msc/3.jpg\". Добавлен Фото для слайдера \"arinwest/img/filials/msc/4.jpg\".',19,1),(494,'2016-08-04 10:19:14','zel','Arin West Зеленоград',2,'Добавлен Фото для слайдера \"arinwest/img/filials/zel/1.jpg\". Добавлен Фото для слайдера \"arinwest/img/filials/zel/2.jpg\". Добавлен Фото для слайдера \"arinwest/img/filials/zel/3.jpg\". Добавлен Фото для слайдера \"arinwest/img/filials/zel/4.jpg\".',19,1),(495,'2016-08-04 10:40:46','zel','Arin West Зеленоград',2,'Удален Фото для слайдера \"arinwest/img/filials/zel/4.jpg\".',19,1),(496,'2016-08-04 10:40:57','moscow','Arin West Москва',2,'Ни одно поле не изменено.',19,1),(497,'2016-08-04 10:51:22','moscow','Arin West Москва',2,'Удален Фото для слайдера \"arinwest/img/filials/msc/4.jpg\".',19,1),(498,'2016-08-04 10:54:06','8','Стрижки Зеленоград',2,'Изменен article_href_text.',11,1),(499,'2016-08-04 10:54:23','1','Стрижки Москва',2,'Изменен article_href_text.',11,1),(500,'2016-08-04 10:55:12','17','Брови Зеленоград',2,'Изменен article.',11,1),(501,'2016-08-04 12:50:37','4','Добро пожаловать на сайт салонов красоты Arin West!\r\n<a class=\"logo\" href=\"/\">высывс</a>',2,'Изменен text.',7,1),(502,'2016-08-04 13:02:05','4','Добро пожаловать на сайт салонов красоты Arin West!',2,'Изменен text.',7,1),(503,'2016-08-04 13:41:28','1','певица Stacy',1,'Добавлено.',23,1),(504,'2016-08-04 13:45:20','1','певица Stacy',2,'Ни одно поле не изменено.',23,1),(505,'2016-08-04 13:55:15','1','певица Stacy',2,'Изменен article.',23,1),(506,'2016-08-04 13:57:07','1','певица Stacy',2,'Изменен article.',23,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'arinwest','aboutpage'),(23,'arinwest','celebrity'),(19,'arinwest','filial'),(22,'arinwest','imgforsliderfilial'),(9,'arinwest','portfolioitem'),(8,'arinwest','portfoliolevel'),(11,'arinwest','service'),(20,'arinwest','servicesublevel'),(21,'arinwest','servicesublevelline'),(14,'arinwest','staffmember'),(7,'arinwest','startpage'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(17,'blog','article'),(15,'blog','author'),(18,'blog','imageforarticle'),(16,'blog','tag'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-07-01 13:30:28'),(2,'auth','0001_initial','2016-07-01 13:30:33'),(3,'admin','0001_initial','2016-07-01 13:30:34'),(4,'admin','0002_logentry_remove_auto_add','2016-07-01 13:30:34'),(5,'contenttypes','0002_remove_content_type_name','2016-07-01 13:30:35'),(6,'auth','0002_alter_permission_name_max_length','2016-07-01 13:30:35'),(7,'auth','0003_alter_user_email_max_length','2016-07-01 13:30:36'),(8,'auth','0004_alter_user_username_opts','2016-07-01 13:30:36'),(9,'auth','0005_alter_user_last_login_null','2016-07-01 13:30:36'),(10,'auth','0006_require_contenttypes_0002','2016-07-01 13:30:36'),(11,'auth','0007_alter_validators_add_error_messages','2016-07-01 13:30:36'),(12,'sessions','0001_initial','2016-07-01 13:30:38'),(13,'arinwest','0001_initial','2016-07-01 14:13:38'),(14,'arinwest','0002_portfoliolevel','2016-07-04 08:09:35'),(15,'arinwest','0003_auto_20160704_1132','2016-07-04 08:33:30'),(16,'arinwest','0004_auto_20160704_1232','2016-07-04 09:32:35'),(17,'arinwest','0004_auto_20160704_1252','2016-07-04 09:54:33'),(18,'arinwest','0005_auto_20160704_1507','2016-07-04 12:07:20'),(19,'blog','0001_initial','2016-07-05 07:45:34'),(20,'blog','0002_auto_20160705_1125','2016-07-05 08:27:15'),(21,'blog','0003_auto_20160705_1351','2016-07-05 10:51:23'),(22,'arinwest','0006_auto_20160706_1455','2016-07-06 11:55:24'),(23,'arinwest','0007_auto_20160706_1852','2016-07-06 15:52:42'),(24,'arinwest','0008_staffmember_article_url','2016-07-12 12:00:42'),(25,'arinwest','0009_auto_20160714_1322','2016-07-14 10:22:48'),(26,'arinwest','0010_auto_20160719_1319','2016-07-19 10:19:38'),(27,'arinwest','0011_auto_20160726_1507','2016-07-26 12:07:47'),(28,'blog','0004_article_youtube_url','2016-07-26 15:39:14'),(29,'arinwest','0012_staffmember_tags','2016-07-26 15:39:16'),(30,'arinwest','0013_auto_20160727_1239','2016-07-27 09:40:18'),(31,'arinwest','0014_service_code','2016-07-27 10:32:10'),(32,'arinwest','0015_auto_20160802_1629','2016-08-02 13:31:02'),(33,'arinwest','0016_auto_20160804_1118','2016-08-04 08:29:14'),(34,'blog','0005_auto_20160804_1118','2016-08-04 08:29:14'),(35,'arinwest','0017_auto_20160804_1214','2016-08-04 09:14:46'),(36,'arinwest','0018_auto_20160804_1627','2016-08-04 13:28:08');
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
INSERT INTO `django_session` VALUES ('87odenplg915xwq6hyu9gflzjmr32trb','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-28 13:06:14'),('9xg622lu2n1q73pw2ag60n09056k6sla','N2JkYzBhNmQ5NDljNzIzMDU1OTAwYjViZGI1ZjU2MDJmYTVlMjAwZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmM3OGZmYWJhN2RiMmI5ZTU0MDNjODU3YTU4MjhjYTZiNjIzN2ZjYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-29 09:09:03'),('acpwu0l4ccnegrfr83dyklmh70xsvzp2','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-18 07:52:54'),('agqzck02sceuanf1rp6qza97askqejv2','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-16 13:10:42'),('ih8ei8m68sqbmjzhxuc8b3fjan151sph','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-02 10:22:43'),('in7y9bbpau6kcjvpfou4ip5i5q3dblql','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-01 08:32:56'),('mjc0vmnqx9n5p91t2a0qrq18xk3zmj8e','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-15 13:37:00'),('q12don14uwofs97n3bbmiseyctvtfxnz','NzE4YzZlNjI1YzM5Njc1OTEwZjc0MTIxMDk3YTNhODEwYmJiOGIwNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjNzhmZmFiYTdkYjJiOWU1NDAzYzg1N2E1ODI4Y2E2YjYyMzdmY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-18 08:45:35'),('ydqod665208lruh60nkal0b4sux2gsy1','N2JkYzBhNmQ5NDljNzIzMDU1OTAwYjViZGI1ZjU2MDJmYTVlMjAwZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmM3OGZmYWJhN2RiMmI5ZTU0MDNjODU3YTU4MjhjYTZiNjIzN2ZjYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-29 10:36:40');
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

-- Dump completed on 2016-08-04 17:07:44
