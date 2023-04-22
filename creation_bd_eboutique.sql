-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: eboutique
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'taoufik','123456','johndoe@gmail.com','John','Doe','555-123-4567','123 Main St','Anytown','CA','12345',NULL),(2,'evan','12345689','janesmith@yahoo.com','Jane','Smith','555-987-6543','456 Oak Ave','Somewhere','NY','54321',NULL),(3,'','','michaelj@gmail.com','Evan','Cholette','555-555-1212','789 Pine St','Nowhere','TX','67890','user-1.png'),(4,'','','emilybrown@hotmail.com','Taoufic','Boussemousse','555-456-7890','246 Elm St','Anywhere','FL','34567','user-2.png'),(5,'','','williamwilson@gmail.com','William','Wilson','555-555-5555','135 Cedar Ave','Elsewhere','GA','45678',NULL),(6,'','','sarahjones@yahoo.com','Sarah','Jones','555-789-0123','357 Maple St','Everywhere','NC','56789',NULL),(7,'','','daviddavis@gmail.com','David','Davis','555-234-5678','468 Oak St','No Place','SC','23456',NULL),(8,'','','lauralee@yahoo.com','Laura','Lee','555-321-6540','579 Elm St','Some Place','PA','45678',NULL),(9,'','','christopherclark@hotmail.com','Christopher','Clark','555-789-1234','790 Pine St','Anywhere Else','AL','56789',NULL),(10,'','','ashleyallen@gmail.com','Ashley','Allen','555-876-5432','346 Cedar St','Another Place','LA','45678',NULL),(11,'','','danielwhite@yahoo.com','Daniel','White','555-555-1234','123 Pine Ave','Nowhereville','NV','56789',NULL),(12,'','','melissamiller@hotmail.com','Melissa','Miller','555-432-1098','789 Oak Ave','Here','MD','34567',NULL),(13,'','','robertrobinson@gmail.com','Robert','Robinson','555-321-0987','246 Maple St','There','DC','45678',NULL),(14,'','','amandaadams@yahoo.com','Amanda','Adams','555-456-7890','468 Cedar St','Somewhere Else','MA','56789',NULL),(15,'','','matthewmitchell@hotmail.com','Matthew','Mitchell','555-789-0123','579 Oak Ave','Anywhereville','OH','23456',NULL),(16,'','','stephaniescott@gmail.com','Stephanie','Scott','555-234-5678','357 Cedar St','Nowhere Else','WI','34567',NULL),(17,'','','jamesjohnson@yahoo.com','James','Johnson','555-987-6543','790 Pine Ave','Anywhere Elseville','IN','45678',NULL),(18,'','','jessicajackson@gmail.com','Jessica','Jackson','555-555-5555','468 Maple St','Some Other Place','IL','56789',NULL),(19,'','','kevinking@yahoo.com','Kevin','King','555-789-1234','123 Oak Ave','There and Back Again','MI','23456',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,1,2),(2,1,4,1),(3,2,3,3),(4,2,6,1),(5,3,2,1),(6,3,5,2),(7,4,1,3),(8,4,6,1),(9,5,2,2),(10,5,4,1),(11,6,3,1),(12,6,5,3),(13,7,1,2),(14,7,2,1),(15,8,4,1),(16,8,6,2),(17,9,2,3),(18,9,3,1),(19,10,1,1),(20,10,5,2);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,4,'2022-12-01 10:23:45',100.00),(2,8,'2022-12-02 11:34:56',50.00),(3,2,'2022-12-03 12:45:12',75.00),(4,5,'2022-12-04 13:56:23',200.00),(5,9,'2022-12-05 14:34:56',150.00),(6,7,'2022-12-06 15:23:45',120.00),(7,1,'2022-12-07 16:12:34',60.00),(8,3,'2022-12-08 17:45:23',90.00),(9,6,'2022-12-09 18:34:56',80.00),(10,10,'2022-12-10 19:23:45',300.00),(11,4,'2022-12-11 10:23:45',125.00),(12,8,'2022-12-12 11:34:56',65.00),(13,2,'2022-12-13 12:45:12',95.00),(14,5,'2022-12-14 13:56:23',225.00),(15,9,'2022-12-15 14:34:56',175.00),(16,7,'2022-12-16 15:23:45',140.00),(17,1,'2022-12-17 16:12:34',70.00),(18,3,'2022-12-18 17:45:23',105.00),(19,6,'2022-12-19 18:34:56',90.00),(20,10,'2022-12-20 19:23:45',350.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `service_category` varchar(255) NOT NULL,
  `service_description` text NOT NULL,
  `service_price` decimal(10,2) NOT NULL,
  `service_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Develop Responsive Website With HTML, CSS And JS','websiteDevelopment','Le service de développement de sites web réactifs avec HTML, CSS et JS est une solution idéale pour les entreprises et les particuliers souhaitant avoir un site web moderne et adaptatif. En utilisant ces technologies de pointe, il est possible de créer des sites web qui offrent une expérience utilisateur optimale sur tous les types d\'appareils. Grâce à une conception intelligente et à une mise en page flexible, les sites web réactifs permettent de maintenir l\'engagement des visiteurs, d\'améliorer le référencement naturel et de générer des conversions.',113.61,'develop-responsive-website-with-html-css-and-js.jpg'),(2,'Fix Bugs, Errors In PHP, Laravel, Codeigniter','webProgramming','Le service de correction des erreurs et des bugs dans PHP, Laravel et Codeigniter est essentiel pour garantir le bon fonctionnement de votre site web. Si vous rencontrez des problèmes techniques ou des bugs qui affectent les performances de votre site, mon service professionnel peut vous aider à les résoudre rapidement et efficacement. En utilisant mes compétences techniques et mon expérience dans le domaine, je suis en mesure de diagnostiquer et de résoudre tout type de bug ou d\'erreur, qu\'il s\'agisse d\'un problème de code, de configuration ou de compatibilité. Vous pouvez être assuré que votre site sera opérationnel à nouveau en peu de temps.',7.10,'fix-bugs-errors-in-php-laravel-codeigniter.jpg'),(3,'Write, Modify, Optimize Sql, Store Procedures, Functions','databases','L\'écriture, la modification et l\'optimisation de SQL, de procédures stockées et de fonctions sont des tâches essentielles pour garantir le bon fonctionnement de votre base de données. Si vous recherchez un service professionnel pour améliorer les performances de votre base de données et améliorer l\'efficacité de vos requêtes SQL, je peux vous aider. En utilisant mes compétences et mon expérience dans le domaine, je suis en mesure d\'optimiser les requêtes SQL existantes, de créer de nouvelles procédures stockées et fonctions, et de corriger tout problème de performance ou de compatibilité. Vous pouvez être assuré que votre base de données fonctionnera de manière optimale et efficace.',49.70,'write-modify-optimize-sql-store-procedures-functions.jpg'),(4,'Fully Secure Your Wordpress Website','websiteMaintenance','La sécurité de votre site web WordPress est une priorité absolue pour protéger vos données, votre réputation et vos clients. Si vous recherchez un service professionnel pour sécuriser entièrement votre site web WordPress, je peux vous aider. Je suis en mesure de mettre en place des mesures de sécurité avancées, telles que la configuration de pare-feu, l\'installation de plugins de sécurité, la mise à jour régulière de WordPress et des thèmes et plugins, la sécurisation des formulaires de contact et des commentaires, et la surveillance constante de votre site pour détecter toute activité suspecte. Avec mon service, vous pouvez être assuré que votre site web WordPress est protégé contre les attaques et les vulnérabilités.',142.01,'fully-secure-your-wordpress-website.jpg'),(5,'Speed Up Website For Google Pagespeed Insights','websiteMaintenance','La vitesse de chargement de votre site web est un facteur crucial pour garantir une bonne expérience utilisateur et pour améliorer votre classement sur les moteurs de recherche, notamment sur Google. Si vous recherchez un service professionnel pour accélérer la vitesse de votre site web et améliorer votre score sur Google Pagespeed Insights, je peux vous aider. En utilisant des techniques d\'optimisation avancées, telles que la compression d\'images, la mise en cache, la minimisation du code et l\'optimisation du contenu, je suis en mesure de réduire le temps de chargement de votre site web et d\'améliorer son temps de réponse. Vous pouvez être assuré que votre site web sera plus rapide et plus performant, ce qui améliorera votre classement sur les moteurs de recherche et augmentera l\'engagement des visiteurs.',35.50,'speed-up-website-for-google-pagespeed-insights.jpg'),(6,'Wordpress Security, Malware Removal...','websiteMaintenance','La sécurité de votre site web WordPress est une priorité absolue pour protéger vos données, votre réputation et vos clients. Si votre site web WordPress a été compromis par des logiciels malveillants ou des attaques de pirates informatiques, je peux vous aider à éliminer ces menaces et à sécuriser entièrement votre site web. En utilisant des outils de détection de malwares et des techniques d\'analyse approfondie, je suis en mesure d\'identifier et de supprimer tout logiciel malveillant ou code malicieux qui pourrait affecter la sécurité de votre site web. Ensuite, je peux mettre en place des mesures de sécurité avancées, telles que la configuration de pare-feu, l\'installation de plugins de sécurité, la mise à jour régulière de WordPress et des thèmes et plugins, la sécurisation des formulaires de contact et des commentaires, et la surveillance constante de votre site pour détecter toute activité suspecte. Avec mon service, vous pouvez être assuré que votre site web WordPress est protégé contre les attaques et les vulnérabilités.',28.40,'wordpress-security-malware-removal.jpg'),(7,'Sql Database Design, Erds, Normalization, Class Diagram','databases','La conception de base de données est une étape cruciale dans le développement de toute application. Si vous cherchez un service professionnel pour concevoir une base de données SQL robuste et efficace, je peux vous aider. Je suis expert en conception de base de données SQL, en modélisation conceptuelle et en normalisation de données. Je peux concevoir des diagrammes E-RD et des diagrammes de classes pour représenter les relations entre les différentes entités et les attributs associés. Ensuite, je peux appliquer des techniques de normalisation pour optimiser la structure de la base de données, éliminer les redondances et améliorer les performances. Mon objectif est de fournir une base de données SQL qui répond à vos besoins spécifiques et qui est facile à maintenir et à mettre à jour. Avec mon service, vous pouvez être assuré que votre base de données SQL est conçue de manière professionnelle et efficace.',28.40,'sql-database-design-erds-normalization-class-diagram.jpg'),(8,'Build Or Edit Your Ms Access Database','databases','Microsoft Access est une application de gestion de base de données populaire qui peut être utilisée pour stocker et gérer une grande quantité de données. Si vous cherchez un service professionnel pour créer ou modifier votre base de données Microsoft Access, je peux vous aider. Je suis expert en développement de bases de données Access et je peux travailler avec vous pour comprendre vos besoins et concevoir une base de données qui répond à vos exigences. Je peux créer des tables, des formulaires, des requêtes et des rapports pour organiser et afficher les données de manière efficace. Si vous avez déjà une base de données Access, je peux la modifier pour ajouter des fonctionnalités, corriger les erreurs ou améliorer la performance. Mon objectif est de fournir une base de données Microsoft Access qui est facile à utiliser et qui répond à vos besoins spécifiques. Avec mon service, vous pouvez être assuré que votre base de données Microsoft Access est professionnelle et efficace.',92.31,'build-or-edit-your-ms-access-database.jpg'),(9,'Edit Or Fix Any Html, Css, Javascript Code','webProgramming','Si vous cherchez un service professionnel pour éditer ou corriger n\'importe quel code HTML, CSS ou JavaScript, je peux vous aider. Je suis expert en développement web et je peux travailler avec vous pour comprendre les problèmes avec votre code et trouver des solutions rapides et efficaces. Je peux éditer le code pour corriger les erreurs, améliorer la performance et rendre votre site web plus rapide et plus convivial. Je peux également optimiser le code pour améliorer la compatibilité avec différents navigateurs et dispositifs. Mon objectif est de fournir un code HTML, CSS ou JavaScript qui répond à vos besoins spécifiques et qui fonctionne parfaitement. Avec mon service, vous pouvez être assuré que votre code est professionnel et efficace.',7.10,'edit-or-fix-any-html-css-javascript-code.jpg'),(10,'Do Django, Python, React Js Websites As A Full Stack Dev','websiteDevelopment','Si vous cherchez un service professionnel pour créer des sites web en utilisant Django, Python et React JS, je peux vous aider en tant que développeur Full Stack. Je suis expert en développement web et j\'ai une expérience avancée avec ces technologies. Je peux travailler avec vous pour comprendre vos besoins et concevoir un site web qui répond à vos exigences spécifiques. Je peux créer des sites web réactifs et interactifs en utilisant Django, Python et React JS pour créer des expériences utilisateur hautement personnalisées et conviviales. Je peux créer des fonctionnalités de back-end pour stocker et gérer des données, ainsi que des fonctionnalités de front-end pour afficher les données de manière efficace. Mon objectif est de fournir un site web Django, Python et React JS qui est facile à utiliser et qui répond à vos besoins professionnels. Avec mon service, vous pouvez être assuré que votre site web est professionnel et efficace.',113.61,'do-django-python-react-js-websites-as-a-full-stack-dev.jpg'),(11,'Edit Html, Css And Bootstrap Code','webProgramming','Si vous cherchez un service professionnel pour éditer le code HTML, CSS et Bootstrap de votre site web, je peux vous aider. Je suis un expert en développement web et je peux travailler avec vous pour comprendre les problèmes avec votre code et trouver des solutions rapides et efficaces. Je peux éditer le code pour corriger les erreurs, améliorer la performance et rendre votre site web plus rapide et plus convivial. Je peux également optimiser le code pour améliorer la compatibilité avec différents navigateurs et dispositifs. Mon objectif est de fournir un code HTML, CSS et Bootstrap qui répond à vos besoins spécifiques et qui fonctionne parfaitement. Avec mon service, vous pouvez être assuré que votre code est professionnel et efficace.',12.10,'edit-html-css-and-bootstrap-code.jpg'),(12,'Design Website Responsive Using Html Css Bootstrap','websiteDevelopment','Si vous recherchez un service professionnel pour concevoir un site web responsive, je peux vous aider. En tant qu\'expert en développement web, j\'ai une solide expérience dans la conception de sites web responsive en utilisant les dernières technologies telles que HTML, CSS et Bootstrap. Je peux travailler avec vous pour comprendre vos besoins et vos préférences en matière de design, et créer un site web responsive qui reflète votre marque et attire vos utilisateurs. Je suis également capable d\'optimiser le code pour améliorer la performance et la compatibilité avec différents navigateurs et dispositifs. Avec mon service, vous pouvez être assuré que votre site web sera conçu avec professionnalisme et sera accessible à tous vos utilisateurs, peu importe l\'appareil qu\'ils utilisent.',127.81,'design-website-responsive-using-html-css-bootstrap.jpg');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eboutique'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 13:35:23
