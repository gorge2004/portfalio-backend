-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `social_network` varchar(100) DEFAULT NULL,
  `lang_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `footer_FK` (`lang_id`),
  CONSTRAINT `footer_FK` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` bigint(20) unsigned NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `finish_at` date DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `technical_specification` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_FK` (`lang_id`),
  CONSTRAINT `jobs_FK` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,2,'Analista de sistema (Pasante) - Desarrollador PHP','2016-10-28','2017-09-01','Universidad de Oriente (UDO), Monagas, Venezuela',' Desarrollo de reingenieria de software de sistema web. Usando Lenguaje PHP, para modificar funcionalidades ya existente y añadir las requeridas.',' Php 5.0, Mysql, BoostrapCss 3.'),(2,2,'Desarrollador web( Freelance desde Venezuela)','2017-05-01','2017-07-01','Aquitupides, Monagas, Venezuela','Desarrollo de software, añadiendo nuevas funcionalidades al sistema. Desarrollado con CakePHP y PostgreSQL.\nPermitiendo publicar productos con su correspondiente información.','cakephp 2.3, y materializeCss.'),(3,2,'Desarrollador web(Freelance desde Venezuela)','2019-01-06','2019-04-15','MonkuApp, Peru','Desarrollo de distintos sitios web','Distintas tecnologías como Koa(NodeJs), PUG, JavaScript, Jquery.'),(4,2,'Desarrollador web(Freelance desde Venezuela)','2019-06-01','2019-07-01','Bucares, Francia ','Apoyo en el desarrollo de una Tienda prestaShop, y desarrollo de un plugin para tienda realizada en  Wordpress.','Wordspress y prestaShop'),(5,1,'system Analist (intern) - PHP Developer','2016-10-28','2017-09-01','Universidad de Oriente (UDO), Monagas, Venezuela','web development applying software reengineering to existing web system for fixing functionality and adding new features.',' Php 5.0, Mysql, BoostrapCss 3.'),(6,1,'Web Development( Freelance from Venezuela)','2017-05-01','2017-07-01','Aquitupides, Monagas, Venezuela','App development, adding new functionality to web app, it lets to users publish and sell until 5 product by month','cakephp 2.3, and materializeCss.'),(7,1,'Web Development(Freelance from Venezuela)','2019-01-06','2019-04-15','MonkuApp, Peru','Development  of several web Projects','technologies as Koa(NodeJs), PUG, JavaScript, Jquery.'),(8,1,'Web Development(Freelance from Venezuela)','2019-06-01','2019-07-01','Bucares, Francia ','Development of  plugin Wordspress and PrestaShop App','Wordspress and prestaShop'),(9,2,'Desarrollador Salesforce','2020-01-06',NULL,'Xappia, Argentina','desarrollo dentro de la plataforma Salesforce','Apex, VisualForce y compponentes Lightning'),(10,1,'Salesforces Developer','2020-01-06',NULL,'Xappia, Argentina','Development in saleforce Platform','Apex, VisualForce and  Lightning component');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'en'),(2,'es');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `json_skill` json DEFAULT NULL,
  `lang_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `skills_FK` (`lang_id`),
  CONSTRAINT `skills_FK` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Tengo alrededor de 2 años de experiencia en desarrollo web utilizando múltiples tecnologías enfocadas en el area, utilizando principalmente PHP, Javascript, Mysql. He utilizado tecnologías como laravel, cakePhp, React native, Mysql, Postgress, KoaJs, BootstrapCSS, MaterializeCSS. He tomado el cargado de desarrollador web a lo largo de mi carrera profesional. Durante mi carrera también he tenido contacto con framework como ReactJs, VueJs, Redux, Leguajes como Java, C# y netcore porque me gusta ir aprendiendo la nuevas tecnologías y estar a la vanguardia de la industria de desarrollo . Me considero una persona altamente responsable y me gusta aprender distintas cosas que me ayuden a  ser un profesional integral que pueda aportar tanto a la organización para la cual trabaje como a mi. me gustan las tecnologías tanto de backend como de frontend, aprender y practicar distintos lenguajes de programación. Mis hobbies me gusta mucho el cine y la musica, tengo  interés por el mundo de la criptomonedas tanto el trading como las tecnologías usadas.','{\"skill\": \" [\'javascript\',\'php\',\'java\', \'python, \'css\', \'redux\', \'react\', \'cakephp\', \'laravel\', \'MVC\',\'linux mint\', \'c#\', \'Node Js\', \'DB\']\"}',2),(12,'I have about 2 years of experience on web development and have used several technologies focus in the work area. I have worked mainly with PHP, Javascript, Mysql. I using frameworks as Laravel, CakePhp, Mysql, Postgress, KoaJs, Bootstraps Css,  MaterializeCss. I get the job position of web developer in my professional career. i have learned myself a little ReactJs, redux, Vuejs, react native, and also programming languages as Java, C# with netcore because i like learning  the trendy technology and always be updated about software development. I am a responsible person and like learning  several things which help me to become in a better professional and this way i can give support to the company where i work. I like  as backend as fronted and also learn several programming languages, I wanna be a fullstack. My hobbies are listen music and i love movies, i have interest in A.I, cryptocurrents as in the trading as the technologies they use.','{\"skill\": \" [\'javascript\',\'php\',\'java\', \'python, \'css\', \'redux\', \'react\', \'cakephp\', \'laravel\', \'MVC\',\'linux mint\', \'c#\', \'Node Js\', \'DB\']\"}',1);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles_section`
--

DROP TABLE IF EXISTS `titles_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles_section` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `lang_id` bigint(20) unsigned DEFAULT NULL,
  `section` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hero_FK` (`lang_id`),
  CONSTRAINT `hero_FK` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles_section`
--

LOCK TABLES `titles_section` WRITE;
/*!40000 ALTER TABLE `titles_section` DISABLE KEYS */;
INSERT INTO `titles_section` VALUES (1,'Portafolio',2,'hero'),(2,'Portfolio',1,'hero'),(3,'Resumen y Habilidades',2,'skill'),(4,'summary and skills',1,'skill');
/*!40000 ALTER TABLE `titles_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'portfolio'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-10 11:00:37
