-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: homzen
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'tYTc4f0nf04MsYI4R3AiLx0gmUhP6e0W',1,'2025-11-17 21:11:25','2025-11-17 21:11:25','2025-11-17 21:11:25');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Explore Our Exciting New Property Listings Now Available in Prime Locations!',0,NULL,NULL,0,1,'2025-11-18 04:11:37',NULL,1,'2025-11-17 21:11:37','2025-11-17 21:11:37'),(2,'Announcement 2','Join Us for Exclusive Open House Events This Weekend and Find Your Perfect Home!',0,NULL,NULL,0,1,'2025-11-18 04:11:37',NULL,1,'2025-11-17 21:11:37','2025-11-17 21:11:37'),(3,'Announcement 3','Take Advantage of Limited-Time Offers on Luxury Homes with Stunning Features!',0,NULL,NULL,0,1,'2025-11-18 04:11:37',NULL,1,'2025-11-17 21:11:37','2025-11-17 21:11:37'),(4,'Announcement 4','Discover Your Dream Home with Our Latest Listings and Personalized Services!',0,NULL,NULL,0,1,'2025-11-18 04:11:37',NULL,1,'2025-11-17 21:11:37','2025-11-17 21:11:37');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Senior Full Stack Engineer, Creator Success Full Time','West Armandoberg, Bouvet Island (Bouvetoya)','$9,305','Constantly changing work patterns and norms, and the need for organizational resiliency','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-17 21:11:37','2025-11-17 21:11:37'),(2,'Data Science Specialist, Analytics Division','Lake Daphnee, Mauritius','$8,132','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum — semper quis lectus nulla','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-17 21:11:37','2025-11-17 21:11:37'),(3,'Product Marketing Manager, Growth Team','West Ophelia, Switzerland','$3,963','Crafting compelling marketing strategies to drive user acquisition and retention','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-17 21:11:37','2025-11-17 21:11:37'),(4,'UX/UI Designer, User Experience Team','Macejkovicshire, Pitcairn Islands','$7,744','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-17 21:11:37','2025-11-17 21:11:37'),(5,'Operations Manager, Supply Chain Division','South Colinchester, Belarus','$553','Ensuring smooth and efficient supply chain operations for timely product delivery','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-17 21:11:37','2025-11-17 21:11:37'),(6,'Financial Analyst, Investment Group','North Aylahaven, Zambia','$9,537','Analyzing market trends and investment opportunities for optimal financial outcomes','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-11-17 21:11:37','2025-11-17 21:11:37');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Buying a Home',0,'Dolorum dolor quis ea in est recusandae. Aut voluptatibus culpa odio est qui. Enim autem totam architecto. Accusantium laboriosam maxime iure.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(2,'Selling a Home',0,'Aut minus omnis quia voluptates quos esse. Libero assumenda et incidunt est. Consequatur et voluptas veritatis. Laudantium qui id saepe voluptatum vel rerum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(3,'Market Trends',0,'Officia reprehenderit quas libero non. In occaecati laboriosam minus. Quam explicabo ipsum explicabo repudiandae odio aut. Dolor quo distinctio iure harum ipsam accusamus pariatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(4,'Home Improvement',0,'Nulla aut tempore ipsum aut voluptates nesciunt. Sed enim adipisci odio fugit. Accusamus itaque quibusdam omnis velit laudantium ut magni.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(5,'Real Estate Investing',0,'Ut quod labore blanditiis delectus. Quis et totam commodi accusantium. Odit qui inventore aut. Quos voluptatum non eum praesentium tenetur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(6,'Neighborhood Guides',0,'Ducimus consequatur eum nihil et inventore. Neque iure praesentium voluptas et error qui saepe. Voluptatum consequatur animi quia aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-11-17 21:11:33','2025-11-17 21:11:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/5.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(2,'London','london',2,2,NULL,0,'locations/5.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(3,'New York City','new-york-city',3,3,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(4,'Amsterdam','amsterdam',4,4,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/4.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(6,'Munich','munich',6,6,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(7,'Tokyo','tokyo',7,7,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(8,'Toronto','toronto',8,8,NULL,0,'locations/5.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(9,'Sydney','sydney',9,9,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(10,'Milan','milan',10,10,NULL,0,'locations/5.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(11,'Los Angeles','los-angeles',11,3,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(12,'Berlin','berlin',12,6,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(13,'Osaka','osaka',13,7,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(14,'Vancouver','vancouver',14,8,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(15,'Melbourne','melbourne',15,9,NULL,0,'locations/4.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(16,'Rome','rome',16,10,NULL,0,'locations/3.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(17,'Marseille','marseille',17,1,NULL,0,'locations/4.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(18,'Liverpool','liverpool',18,2,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(19,'Chicago','chicago',19,3,NULL,0,'locations/2.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(20,'Rotterdam','rotterdam',20,4,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(21,'Aarhus','aarhus',21,5,NULL,0,'locations/3.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(22,'Frankfurt','frankfurt',22,6,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(23,'Kyoto','kyoto',23,7,NULL,0,'locations/5.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(24,'Montreal','montreal',24,8,NULL,0,'locations/3.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(25,'Brisbane','brisbane',25,9,NULL,0,'locations/1.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(26,'Naples','naples',26,10,NULL,0,'locations/3.jpg',0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,NULL,0,'published',NULL,NULL,'FRA'),(2,'England','English',0,NULL,0,'published',NULL,NULL,'UK'),(3,'USA','Americans',0,NULL,0,'published',NULL,NULL,'US'),(4,'Holland','Dutch',0,NULL,0,'published',NULL,NULL,'HL'),(5,'Denmark','Danish',0,NULL,0,'published',NULL,NULL,'DN'),(6,'Germany','German',0,NULL,0,'published',NULL,NULL,'DE'),(7,'Japan','Japanese',0,NULL,0,'published',NULL,NULL,'JP'),(8,'Canada','Canadian',0,NULL,0,'published',NULL,NULL,'CA'),(9,'Australia','Australian',0,NULL,0,'published',NULL,NULL,'AU'),(10,'Italy','Italian',0,NULL,0,'published',NULL,NULL,'IT');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Buying',0,'published','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL),(2,'Selling',1,'published','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL),(3,'Renting',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL),(4,'Financing',3,'published','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',1,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(2,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',1,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(3,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',1,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(4,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',1,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(5,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',1,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(6,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(7,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(8,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(9,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(10,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(11,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',2,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(12,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',3,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(13,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',3,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(14,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',3,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(15,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',3,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(16,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',3,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(17,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',4,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(18,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',4,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(19,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',4,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(20,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',4,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(21,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',4,'published','2025-11-17 21:11:24','2025-11-17 21:11:24'),(22,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',4,'published','2025-11-17 21:11:24','2025-11-17 21:11:24');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','9cd30a2b80c16a82a4e40787698333cd',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','2eb83dbf3a2dbbcdeb927304204c69c9',1,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',6977,'locations/1.jpg','[]','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL,'public'),(2,0,'10','10',1,'image/jpeg',6977,'locations/10.jpg','[]','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL,'public'),(3,0,'11','11',1,'image/jpeg',6977,'locations/11.jpg','[]','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL,'public'),(4,0,'2','2',1,'image/jpeg',6977,'locations/2.jpg','[]','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL,'public'),(5,0,'3','3',1,'image/jpeg',6977,'locations/3.jpg','[]','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL,'public'),(6,0,'4','4',1,'image/jpeg',6977,'locations/4.jpg','[]','2025-11-17 21:11:24','2025-11-17 21:11:24',NULL,'public'),(7,0,'5','5',1,'image/jpeg',6977,'locations/5.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(8,0,'6','6',1,'image/jpeg',6977,'locations/6.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(9,0,'7','7',1,'image/jpeg',6977,'locations/7.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(10,0,'8','8',1,'image/jpeg',6977,'locations/8.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(11,0,'9','9',1,'image/jpeg',6977,'locations/9.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(12,0,'1','1',2,'image/jpeg',71367,'users/1.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(13,0,'1','1',3,'image/jpeg',3916,'avatars/1.jpg','[]','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'public'),(14,0,'10','10',3,'image/jpeg',3916,'avatars/10.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(15,0,'11','11',3,'image/jpeg',3916,'avatars/11.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(16,0,'2','2',3,'image/jpeg',3916,'avatars/2.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(17,0,'3','3',3,'image/jpeg',3916,'avatars/3.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(18,0,'4','4',3,'image/jpeg',3916,'avatars/4.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(19,0,'5','5',3,'image/jpeg',3916,'avatars/5.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(20,0,'6','6',3,'image/jpeg',3916,'avatars/6.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(21,0,'7','7',3,'image/jpeg',3916,'avatars/7.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(22,0,'8','8',3,'image/jpeg',3916,'avatars/8.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(23,0,'9','9',3,'image/jpeg',3916,'avatars/9.jpg','[]','2025-11-17 21:11:26','2025-11-17 21:11:26',NULL,'public'),(24,0,'1','1',4,'image/jpeg',9803,'properties/1.jpg','[]','2025-11-17 21:11:29','2025-11-17 21:11:29',NULL,'public'),(25,0,'10','10',4,'image/jpeg',9803,'properties/10.jpg','[]','2025-11-17 21:11:29','2025-11-17 21:11:29',NULL,'public'),(26,0,'11','11',4,'image/jpeg',9803,'properties/11.jpg','[]','2025-11-17 21:11:29','2025-11-17 21:11:29',NULL,'public'),(27,0,'12','12',4,'image/jpeg',9803,'properties/12.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(28,0,'13','13',4,'image/jpeg',9803,'properties/13.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(29,0,'2','2',4,'image/jpeg',9803,'properties/2.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(30,0,'3','3',4,'image/jpeg',9803,'properties/3.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(31,0,'4','4',4,'image/jpeg',9803,'properties/4.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(32,0,'5','5',4,'image/jpeg',9803,'properties/5.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(33,0,'6','6',4,'image/jpeg',9803,'properties/6.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(34,0,'7','7',4,'image/jpeg',9803,'properties/7.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(35,0,'8','8',4,'image/jpeg',9803,'properties/8.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(36,0,'9','9',4,'image/jpeg',9803,'properties/9.jpg','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(37,0,'floor','floor',4,'image/png',9803,'properties/floor.png','[]','2025-11-17 21:11:30','2025-11-17 21:11:30',NULL,'public'),(38,0,'1','1',5,'image/jpeg',9803,'posts/1.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(39,0,'10','10',5,'image/jpeg',9803,'posts/10.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(40,0,'2','2',5,'image/jpeg',9803,'posts/2.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(41,0,'3','3',5,'image/jpeg',9803,'posts/3.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(42,0,'4','4',5,'image/jpeg',9803,'posts/4.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(43,0,'5','5',5,'image/jpeg',9803,'posts/5.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(44,0,'6','6',5,'image/jpeg',9803,'posts/6.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(45,0,'7','7',5,'image/jpeg',9803,'posts/7.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(46,0,'8','8',5,'image/jpeg',9803,'posts/8.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(47,0,'9','9',5,'image/jpeg',9803,'posts/9.jpg','[]','2025-11-17 21:11:32','2025-11-17 21:11:32',NULL,'public'),(48,0,'md-1','md-1',5,'image/jpeg',9803,'posts/md-1.jpg','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(49,0,'md-2','md-2',5,'image/jpeg',9803,'posts/md-2.jpg','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(50,0,'about-us-contact','about-us-contact',6,'image/jpeg',19409,'pages/about-us-contact.jpg','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(51,0,'about-us-video','about-us-video',6,'image/jpeg',16191,'pages/about-us-video.jpg','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(52,0,'call-to-action','call-to-action',6,'image/png',9051,'pages/call-to-action.png','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(53,0,'house-service','house-service',6,'image/png',10923,'pages/house-service.png','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(54,0,'properties','properties',6,'image/png',16974,'pages/properties.png','[]','2025-11-17 21:11:33','2025-11-17 21:11:33',NULL,'public'),(55,0,'service-1','service-1',6,'image/png',21898,'pages/service-1.png','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(56,0,'service-2','service-2',6,'image/png',21279,'pages/service-2.png','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(57,0,'service-3','service-3',6,'image/png',23965,'pages/service-3.png','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(58,0,'service-4','service-4',6,'image/png',32050,'pages/service-4.png','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(59,0,'service-5','service-5',6,'image/png',25146,'pages/service-5.png','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(60,0,'service-6','service-6',6,'image/png',31763,'pages/service-6.png','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(61,0,'slider-1','slider-1',6,'image/jpeg',27445,'pages/slider-1.jpg','[]','2025-11-17 21:11:34','2025-11-17 21:11:34',NULL,'public'),(62,0,'slider-2','slider-2',6,'image/jpeg',23889,'pages/slider-2.jpg','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(63,0,'slider-3','slider-3',6,'image/jpeg',23889,'pages/slider-3.jpg','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(64,0,'slider-4','slider-4',6,'image/jpeg',23889,'pages/slider-4.jpg','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(65,0,'slider-5','slider-5',6,'image/jpeg',23889,'pages/slider-5.jpg','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(66,0,'slider-6','slider-6',6,'image/png',33637,'pages/slider-6.png','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(67,0,'slider-left','slider-left',6,'image/jpeg',11483,'pages/slider-left.jpg','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(68,0,'testimonial-banner','testimonial-banner',6,'image/png',13232,'pages/testimonial-banner.png','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(69,0,'asana','asana',7,'image/png',3510,'partners/asana.png','[]','2025-11-17 21:11:35','2025-11-17 21:11:35',NULL,'public'),(70,0,'github','github',7,'image/png',3510,'partners/github.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(71,0,'lhtech','lhtech',7,'image/png',3510,'partners/lhtech.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(72,0,'panadoxn','panadoxn',7,'image/png',3510,'partners/panadoxn.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(73,0,'shangxi','shangxi',7,'image/png',3510,'partners/shangxi.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(74,0,'tyaalpha','tyaalpha',7,'image/png',3510,'partners/tyaalpha.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(75,0,'vanfaba','vanfaba',7,'image/png',3510,'partners/vanfaba.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(76,0,'banner-footer','banner-footer',8,'image/png',92460,'general/banner-footer.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(77,0,'favicon','favicon',8,'image/png',1899,'general/favicon.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(78,0,'logo-light','logo-light',8,'image/png',4519,'general/logo-light.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(79,0,'logo','logo',8,'image/png',5451,'general/logo.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(80,0,'newsletter-image','newsletter-image',8,'image/jpeg',100774,'general/newsletter-image.jpg','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public'),(81,0,'placeholder','placeholder',8,'image/png',12344,'general/placeholder.png','[]','2025-11-17 21:11:36','2025-11-17 21:11:36',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'locations',NULL,'locations',0,'2025-11-17 21:11:24','2025-11-17 21:11:24',NULL),(2,0,'users',NULL,'users',0,'2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(3,0,'avatars',NULL,'avatars',0,'2025-11-17 21:11:25','2025-11-17 21:11:25',NULL),(4,0,'properties',NULL,'properties',0,'2025-11-17 21:11:29','2025-11-17 21:11:29',NULL),(5,0,'posts',NULL,'posts',0,'2025-11-17 21:11:32','2025-11-17 21:11:32',NULL),(6,0,'pages',NULL,'pages',0,'2025-11-17 21:11:33','2025-11-17 21:11:33',NULL),(7,0,'partners',NULL,'partners',0,'2025-11-17 21:11:35','2025-11-17 21:11:35',NULL),(8,0,'general',NULL,'general',0,'2025-11-17 21:11:36','2025-11-17 21:11:36',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-11-17 21:11:36','2025-11-17 21:11:36');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,NULL,NULL,0,'Home',NULL,'_self',1,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage-1',NULL,0,'Homepage 1',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Homepage 2',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Homepage 3',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Homepage 4',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(6,1,1,5,'Botble\\Page\\Models\\Page','/homepage-5',NULL,4,'Homepage 5',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(7,1,0,NULL,NULL,'/projects',NULL,1,'Projects',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(8,1,0,NULL,NULL,'/properties',NULL,2,'Properties',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(9,1,0,NULL,NULL,'#',NULL,3,'Pages',NULL,'_self',1,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(10,1,9,NULL,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(11,1,9,NULL,NULL,'/careers',NULL,1,'Careers',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(12,1,9,NULL,NULL,'/wishlist',NULL,2,'Wishlist',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(13,1,9,10,'Botble\\Page\\Models\\Page','/about-us',NULL,3,'About Us',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(14,1,9,8,'Botble\\Page\\Models\\Page','/our-services',NULL,4,'Our Services',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(15,1,9,11,'Botble\\Page\\Models\\Page','/pricing-plans',NULL,5,'Pricing',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(16,1,9,7,'Botble\\Page\\Models\\Page','/contact-us',NULL,6,'Contact Us',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(17,1,9,9,'Botble\\Page\\Models\\Page','/faqs',NULL,7,'FAQs',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(18,1,9,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,8,'Privacy Policy',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(19,1,9,13,'Botble\\Page\\Models\\Page','/coming-soon',NULL,9,'Coming Soon',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(20,1,0,NULL,NULL,'#',NULL,4,'Blog',NULL,'_self',1,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(21,1,20,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36'),(22,1,20,NULL,NULL,'/news/the-benefits-of-smart-home-technology',NULL,1,'Blog Detail',NULL,'_self',0,'2025-11-17 21:11:36','2025-11-17 21:11:36');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-11-17 21:11:36','2025-11-17 21:11:36');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"ti ti-bell\"]',1,'Botble\\RealEstate\\Models\\Category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(2,'icon','[\"ti ti-calendar\"]',2,'Botble\\RealEstate\\Models\\Category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(3,'icon','[\"ti ti-chart-bar\"]',3,'Botble\\RealEstate\\Models\\Category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(4,'icon','[\"ti ti-map\"]',4,'Botble\\RealEstate\\Models\\Category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(5,'icon','[\"ti ti-home\"]',5,'Botble\\RealEstate\\Models\\Category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(6,'icon','[\"ti ti-shopping-cart\"]',6,'Botble\\RealEstate\\Models\\Category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',1,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:26','2025-11-17 21:11:26'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',2,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:27','2025-11-17 21:11:27'),(9,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',3,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:27','2025-11-17 21:11:27'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',4,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:27','2025-11-17 21:11:27'),(11,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',5,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:27','2025-11-17 21:11:27'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',6,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:28','2025-11-17 21:11:28'),(13,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',7,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:28','2025-11-17 21:11:28'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',8,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:28','2025-11-17 21:11:28'),(15,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',9,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:29','2025-11-17 21:11:29'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',10,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:29','2025-11-17 21:11:29'),(17,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',11,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:29','2025-11-17 21:11:29'),(18,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',12,'Botble\\RealEstate\\Models\\Account','2025-11-17 21:11:29','2025-11-17 21:11:29'),(19,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',1,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(20,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',2,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(21,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',3,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(22,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',4,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(23,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',5,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(24,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',6,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(25,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',7,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(26,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',8,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(27,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',9,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(28,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',10,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(29,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',11,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(30,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',12,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(31,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',13,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(32,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',14,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(33,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',15,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(34,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',16,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(35,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',17,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(36,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',18,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(37,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',19,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(38,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',20,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(39,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',21,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(40,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',22,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(41,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',23,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(42,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',24,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(43,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',25,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(44,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',26,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(45,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',27,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(46,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',28,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(47,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',29,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(48,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',30,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(49,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',31,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(50,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',32,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(51,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',33,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(52,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',34,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(53,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',35,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(54,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',36,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(55,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',37,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(56,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',38,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(57,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',39,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(58,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',40,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(59,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',41,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(60,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',42,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(61,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',43,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(62,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',44,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(63,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',45,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(64,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',46,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(65,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',47,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(66,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',48,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(67,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',49,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:31','2025-11-17 21:11:31'),(68,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',50,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(69,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',51,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(70,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',52,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(71,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',53,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(72,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',54,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(73,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',55,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(74,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',56,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(75,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',57,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(76,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',58,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(77,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',59,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(78,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',60,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(79,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',61,'Botble\\RealEstate\\Models\\Property','2025-11-17 21:11:32','2025-11-17 21:11:32'),(80,'breadcrumb','[\"no\"]',1,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(81,'breadcrumb','[\"no\"]',2,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(82,'breadcrumb','[\"no\"]',3,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(83,'breadcrumb','[\"no\"]',5,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(84,'breadcrumb','[\"yes\"]',6,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(85,'breadcrumb','[\"yes\"]',7,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(86,'breadcrumb','[\"yes\"]',8,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(87,'breadcrumb','[\"yes\"]',9,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(88,'breadcrumb','[\"yes\"]',10,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(89,'breadcrumb','[\"yes\"]',11,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(90,'breadcrumb','[\"yes\"]',12,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(91,'breadcrumb','[\"no\"]',13,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(92,'breadcrumb','[\"yes\"]',16,'Botble\\Page\\Models\\Page','2025-11-17 21:11:36','2025-11-17 21:11:36'),(93,'image','[\"general\\/job-details-thumb.png\"]',1,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(94,'icon','[\"icons\\/icon1.png\"]',1,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(95,'apply_url','[\"\\/contact\"]',1,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(96,'image','[\"general\\/job-details-thumb.png\"]',2,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(97,'icon','[\"icons\\/icon2.png\"]',2,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(98,'apply_url','[\"\\/contact\"]',2,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(99,'image','[\"general\\/job-details-thumb.png\"]',3,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(100,'icon','[\"icons\\/icon3.png\"]',3,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(101,'apply_url','[\"\\/contact\"]',3,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(102,'image','[\"general\\/job-details-thumb.png\"]',4,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(103,'icon','[\"icons\\/icon4.png\"]',4,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(104,'apply_url','[\"\\/contact\"]',4,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(105,'image','[\"general\\/job-details-thumb.png\"]',5,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(106,'icon','[\"icons\\/icon5.png\"]',5,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(107,'apply_url','[\"\\/contact\"]',5,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(108,'image','[\"general\\/job-details-thumb.png\"]',6,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(109,'icon','[\"icons\\/icon6.png\"]',6,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37'),(110,'apply_url','[\"\\/contact\"]',6,'ArchiElite\\Career\\Models\\Career','2025-11-17 21:11:37','2025-11-17 21:11:37');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_07_03_162029_remove_plugin_team',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2024_09_30_024515_create_sessions_table',1),(39,'2024_12_19_000001_create_device_tokens_table',1),(40,'2024_12_19_000002_create_push_notifications_table',1),(41,'2024_12_19_000003_create_push_notification_recipients_table',1),(42,'2024_12_30_000001_create_user_settings_table',1),(43,'2025_07_06_030754_add_phone_to_users_table',1),(44,'2025_07_31_add_performance_indexes_to_slugs_table',1),(45,'2025_10_29_100000_add_sessions_invalidated_at_to_users_table',1),(46,'2025_11_10_000000_cleanup_duplicate_widgets',1),(47,'2020_11_18_150916_ads_create_ads_table',2),(48,'2021_12_02_035301_add_ads_translations_table',2),(49,'2023_04_17_062645_add_open_in_new_tab',2),(50,'2023_11_07_023805_add_tablet_mobile_image',2),(51,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(52,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(53,'2024_04_27_100730_improve_analytics_setting',3),(54,'2023_08_11_060908_create_announcements_table',4),(55,'2025_02_11_153025_add_action_label_to_announcement_translations',4),(56,'2015_06_29_025744_create_audit_history',5),(57,'2023_11_14_033417_change_request_column_in_table_audit_histories',5),(58,'2025_05_05_000001_add_user_type_to_audit_histories_table',5),(59,'2025_11_07_000001_add_actor_type_to_audit_histories_table',5),(60,'2015_06_18_033822_create_blog_table',6),(61,'2021_02_16_092633_remove_default_value_for_author_type',6),(62,'2021_12_03_030600_create_blog_translations',6),(63,'2022_04_19_113923_add_index_to_table_posts',6),(64,'2023_08_29_074620_make_column_author_id_nullable',6),(65,'2024_07_30_091615_fix_order_column_in_categories_table',6),(66,'2025_01_06_033807_add_default_value_for_categories_author_type',6),(67,'2019_06_24_211801_create_career_table',7),(68,'2021_12_04_095357_create_careers_translations_table',7),(69,'2023_09_20_050420_add_missing_translation_column',7),(70,'2016_06_17_091537_create_contacts_table',8),(71,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',8),(72,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',8),(73,'2024_03_25_000001_update_captcha_settings_for_contact',8),(74,'2024_04_19_063914_create_custom_fields_table',8),(75,'2018_07_09_221238_create_faq_table',9),(76,'2021_12_03_082134_create_faq_translations',9),(77,'2023_11_17_063408_add_description_column_to_faq_categories_table',9),(78,'2016_10_03_032336_create_languages_table',10),(79,'2023_09_14_022423_add_index_for_language_table',10),(80,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(81,'2021_12_03_075608_create_page_translations',11),(82,'2023_07_06_011444_create_slug_translations_table',11),(83,'2019_11_18_061011_create_country_table',12),(84,'2021_12_03_084118_create_location_translations',12),(85,'2021_12_03_094518_migrate_old_location_data',12),(86,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',12),(87,'2022_01_16_085908_improve_plugin_location',12),(88,'2022_08_04_052122_delete_location_backup_tables',12),(89,'2023_04_23_061847_increase_state_translations_abbreviation_column',12),(90,'2023_07_26_041451_add_more_columns_to_location_table',12),(91,'2023_07_27_041451_add_more_columns_to_location_translation_table',12),(92,'2023_08_15_073307_drop_unique_in_states_cities_translations',12),(93,'2023_10_21_065016_make_state_id_in_table_cities_nullable',12),(94,'2024_08_17_094600_add_image_into_countries',12),(95,'2025_01_08_093652_add_zip_code_to_cities',12),(96,'2025_07_31_083459_add_indexes_for_location_search_performance',12),(97,'2017_10_24_154832_create_newsletter_table',13),(98,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(99,'2017_05_18_080441_create_payment_tables',14),(100,'2021_03_27_144913_add_customer_type_into_table_payments',14),(101,'2021_05_24_034720_make_column_currency_nullable',14),(102,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(103,'2021_10_19_020859_update_metadata_field',14),(104,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(105,'2022_07_07_153354_update_charge_id_in_table_payments',14),(106,'2024_07_04_083133_create_payment_logs_table',14),(107,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(108,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(109,'2018_06_22_032304_create_real_estate_table',15),(110,'2021_02_11_031126_update_price_column_in_projects_and_properties',15),(111,'2021_03_08_024049_add_lat_long_into_real_estate_tables',15),(112,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',15),(113,'2021_07_07_021757_update_table_account_activity_logs',15),(114,'2021_09_29_042758_create_re_categories_multilevel_table',15),(115,'2021_10_31_031254_add_company_to_accounts_table',15),(116,'2021_12_10_034807_create_real_estate_translation_tables',15),(117,'2021_12_18_081636_add_property_project_views_count',15),(118,'2022_05_04_033044_update_column_images_in_real_estate_tables',15),(119,'2022_07_02_081723_fix_expired_date_column',15),(120,'2022_08_01_090213_update_table_properties_and_projects',15),(121,'2023_01_31_023233_create_re_custom_fields_table',15),(122,'2023_02_06_000000_add_location_to_re_accounts_table',15),(123,'2023_02_06_024257_add_package_translations',15),(124,'2023_02_08_062457_add_custom_fields_translation_table',15),(125,'2023_02_15_024644_create_re_reviews_table',15),(126,'2023_02_20_072604_create_re_invoices_table',15),(127,'2023_02_20_081251_create_re_account_packages_table',15),(128,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',15),(129,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',15),(130,'2023_05_09_062031_unique_reviews_table',15),(131,'2023_05_26_034353_fix_properties_projects_image',15),(132,'2023_05_27_004215_add_column_ip_into_table_re_consults',15),(133,'2023_07_25_034513_create_re_coupons_table',15),(134,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',15),(135,'2023_08_02_074208_change_square_column_to_float',15),(136,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',15),(137,'2023_08_09_004607_make_column_project_id_nullable',15),(138,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',15),(139,'2023_11_21_071820_add_missing_slug_for_agents',15),(140,'2024_01_11_084816_add_investor_translations_table',15),(141,'2024_01_31_022842_add_description_to_re_packages_table',15),(142,'2024_03_13_000001_drop_type_column_from_custom_field_translations_table',15),(143,'2024_04_23_124505_add_features_column_to_re_packages',15),(144,'2024_04_23_135106_add_columns_to_re_investors',15),(145,'2024_05_25_000001_update_captcha_settings_for_real_estate',15),(146,'2024_06_16_163428_make_investor_id_nullable',15),(147,'2024_06_20_103539_create_consult_custom_fields_table',15),(148,'2024_07_08_235824_fix_facilities_primary_key',15),(149,'2024_07_26_090340_add_private_notes_column_to_re_properties_projects_table',15),(150,'2024_08_09_075542_add_accounts_translations',15),(151,'2024_08_12_124528_add_approved_at_column_to_re_accounts_table',15),(152,'2024_08_31_074158_add_floor_plans_columns_to_re_properties_table',15),(153,'2024_09_04_130921_add_reject_reason_column_to_re_properties_table',15),(154,'2024_09_19_021436_make_email_in_accounts_table_nullable',15),(155,'2024_11_18_023706_add_floor_plan_to_table_re_properties_translations',15),(156,'2024_12_01_000000_add_floor_plans_column_to_re_projects_table',15),(157,'2024_12_18_000000_add_blocked_at_column_to_re_accounts_table',15),(158,'2024_12_18_000001_add_blocked_reason_column_to_re_accounts_table',15),(159,'2025_04_12_161730_add_featured_priority_to_re_properties_table',15),(160,'2025_04_12_165120_add_featured_priority_to_re_projects_table',15),(161,'2025_04_23_034738_make_featured_priority_nullable',15),(162,'2025_05_19_000001_add_zip_code_to_properties_and_projects_tables',15),(163,'2025_07_31_083138_add_indexes_for_real_estate_location_search',15),(164,'2025_08_12_085710_add_verification_fields_to_re_accounts_table',15),(165,'2025_08_14_025316_change_column_description_in_re_accounts_translations_to_text',15),(166,'2025_09_30_103625_add_performance_indexes_to_re_properties_table',15),(167,'2025_09_30_103746_add_status_index_to_re_reviews_table',15),(168,'2025_09_30_103813_add_composite_query_index_to_re_properties_table',15),(169,'2025_09_30_104436_add_performance_indexes_to_re_categories_table',15),(170,'2025_10_10_093314_add_number_format_style_and_space_to_re_currencies_table',15),(171,'2025_10_22_000001_add_whatsapp_to_re_accounts_table',15),(172,'2025_04_08_040931_create_social_logins_table',16),(173,'2018_07_09_214610_create_testimonial_table',17),(174,'2021_12_03_083642_create_testimonials_translations',17),(175,'2016_10_07_193005_create_translations_table',18),(176,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','[hero-banner style=\"1\" title=\"Find Your\" animation_text=\"Dream Home,Perfect Home,Real Estate\" description=\"We are a real estate agency that will help you find the best residence you dream of, let’s discuss for your dream house?\" background_image=\"pages/slider-1.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6,7\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[services style=\"1\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"4\" counters_label_1=\"SATISFIED CLIENTS\" counters_number_1=\"85\" counters_label_2=\"AWARDS RECEIVED\" counters_number_2=\"112\" counters_label_3=\"SUCCESSFUL TRANSACTIONS\" counters_number_3=\"32\" counters_label_4=\"MONTHLY TRAFFIC\" counters_number_4=\"66\" button_label=\"View All Services\" button_url=\"/\" enable_lazy_loading=\"yes\"][/services]\n[services style=\"1\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Proven Expertise\" services_description_1=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Customized Solutions\" services_description_2=\"We pride ourselves on crafting personalized strategies to match your unique goals, ensuring a seamless real estate journey.\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Transparent Partnerships\" services_description_3=\"Transparency is key in our client relationships. We prioritize clear communication and ethical practices, fostering trust and reliability throughout.\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"1\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(2,'Homepage 2','[hero-banner style=\"2\" title=\"Find A Home That\" animation_text=\"Perfectly,Dream Home\" description=\"We are a real estate agency that will help you find the best residence you dream of.\" background_image=\"pages/slider-left.jpg\" slider_image_1=\"pages/slider-2.jpg\" slider_image_2=\"pages/slider-3.jpg\" slider_image_3=\"pages/slider-4.jpg\" slider_image_4=\"pages/slider-5.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[property-categories style=\"1\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"transparent\" button_label=\"View All\" button_url=\"/categories\" enable_lazy_loading=\"yes\"][/property-categories]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"Featured Properties\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location style=\"2\" title=\"Our Location For You\" subtitle=\"Explore States\" type=\"state\" state_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"3\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\" background_color=\"#f7f7f7\"][/properties]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"3\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(3,'Homepage 3','[hero-banner style=\"3\" title=\"Indulge in Your\" animation_text=\"Sanctuary,Safe House\" description=\"Discover your private oasis at Homzen, where every corner, from the spacious garden to the relaxing pool, is crafted for your comfort and enjoyment.\" background_image=\"pages/slider-6.png\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\" button_label=\"Contact Us\" button_url=\"/contact\"][/hero-banner]\n[location style=\"3\" title=\"Properties By Cities\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,2,3,4,5,6,7,21,24\" destination=\"property\" background_color=\"#f7f7f7\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[property-categories style=\"2\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"#161e2d\" enable_lazy_loading=\"yes\"][/property-categories]\n[services style=\"2\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"4\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" background_image=\"pages/testimonial-banner.png\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"2\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(4,'Homepage 4','[hero-banner style=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"5\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"4\" title=\"Discover What Sets Our\" subtitle=\"WHAT WE DO\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys.\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-12-hours\" services_icon_image_1=\"pages/service-1.png\" services_button_label_1=\"Learn More\" services_button_url_1=\"/contact\" services_title_2=\"Rent A Home\" services_description_2=\"Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_icon_image_2=\"pages/service-2.png\" services_button_label_2=\"Learn More\" services_button_url_2=\"/contact\" services_title_3=\"Buy A New Home\" services_description_3=\"Showcasing your property\'s best features for a successful sale.\" services_icon_image_3=\"pages/service-3.png\" services_button_label_3=\"Learn More\" services_button_url_3=\"/contact\" counters_quantity=\"1\" background_image=\"pages/house-service.png\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3\" background_color=\"transparent\" items_per_row=\"3\" enable_lazy_loading=\"yes\"][/agents]\n[properties style=\"6\" title=\"Recommended for you\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_image=\"pages/properties.png\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"OUR TESTIMONIALS\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]\n[call-to-action title=\"List Your Properties On Homzen, Join Us Now!\" subtitle=\"BECOME PARTNERS\" button_label=\"Become A Hosting\" button_url=\"/contact\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(5,'Homepage 5','[hero-banner style=\"5\" property_id=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[location style=\"4\" title=\"Our Location For You\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,3,5,6,11,23\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"7\" title=\"Recommended For You\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3,4\" background_color=\"transparent\" items_per_row=\"2\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"TOP PROPERTIES\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"2\" title=\"The Most Recent Estate\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"4\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(6,'Blog',NULL,1,NULL,NULL,NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(7,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"1\" title=\"Drop Us A Line\" description=\"Feel free to connect with us through our online channels for updates, news, and more.\" show_information_box=\"1\" contact_title=\"Contact Us\" quantity=\"3\" label_1=\"Address:\" content_1=\"101 E 129th St, East Chicago, IN 46312 United States\" label_2=\"Information:\" content_2=\"1-333-345-6868 hi.themesflat@gmail.com\" label_3=\"Open time:\" content_3=\"Monday - Friday: 08:00 - 20:00 Saturday - Sunday: 10:00 - 18:00\" show_social_links=\"1\"][/contact-form]\n[google-map]101 E 129th St, East Chicago, IN 46312 United States[/google-map]',1,NULL,NULL,NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(8,'Our Services','[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#ffffff\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1,2,3,4\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(9,'FAQs','[faqs category_ids=\"1,2,3\" display_type=\"group\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(10,'About Us','[about-us title=\"Welcome To The &lt;br&gt; Homzen\" description=\"Welcome to Homzen, where we turn houses into homes and dreams into reality. At Homzen, we understand that a home is more than just a physical space; it\'s a place where memories are created, families grow, and life unfolds.\" button_label=\"Learn More\" button_url=\"/\" image=\"pages/about-us-video.jpg\" video_url=\"https://youtu.be/tRxGSHL8bI0\"][/about-us]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]\n[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"2\" title=\"We\'re Always Eager To Hear From You!\" subtitle=\"Contact Us\" description=\"Sed ullamcorper nulla egestas at. Aenean eget tortor nec elit sagittis molestie. Pellentesque tempus massa in.r nulla egestas at. Aenean eget tortor nec elit sagittis mole\" background_image=\"pages/about-us-contact.jpg\"][/contact-form]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" items_per_row=\"4\" enable_lazy_loading=\"yes\"][/agents]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(11,'Pricing Plans','[pricing-plan title=\"Our Subscription\" subtitle=\"Pricing\" package_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/pricing-plan]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(12,'Privacy Policy','[content-tab title=\"Terms Of Use\" quantity=\"5\" title_1=\"Terms\" content_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_2=\"Limitations\" content_2=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_3=\"Revisions and errata\" content_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex.\" title_4=\"Site terms of use modifications\" content_4=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_5=\"Risks\" content_5=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" enable_lazy_loading=\"yes\"][/content-tab]',1,NULL,NULL,NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(13,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-12-18 04:11:36\" address=\"58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"pages/properties.png\"][/coming-soon]',1,NULL,'no-layout',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(14,'Properties','',1,NULL,'no-layout',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(15,'Projects','',1,NULL,'no-layout',NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36'),(16,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-11-17 21:11:36','2025-11-17 21:11:36');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,3),(4,4),(3,4),(5,5),(6,5),(1,6),(1,7),(3,7),(3,8),(5,8),(4,9),(2,9),(5,10),(1,10),(3,11),(5,11),(3,12),(2,12),(6,13),(5,14),(3,14),(5,15),(4,15),(3,16),(5,16),(4,17),(1,18),(3,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (3,1),(6,1),(5,1),(6,2),(5,2),(1,3),(2,3),(5,4),(1,4),(6,4),(4,5),(5,5),(1,5),(6,6),(5,6),(7,6),(4,7),(6,7),(5,7),(8,8),(7,8),(4,9),(3,9),(4,10),(8,10),(5,10),(4,11),(8,11),(4,12),(3,12),(2,12),(7,13),(5,13),(6,14),(5,14),(1,14),(1,15),(5,15),(6,15),(1,16),(4,16),(4,17),(6,17),(3,17),(7,18),(5,18),(6,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Top 10 Tips for First-time Home Buyers','Mouse to tell them something more. \'You promised to tell me who YOU are, first.\' \'Why?\' said the Duchess. An invitation for the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/7.jpg',275,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(2,'How to Stage Your Home for a Quick Sale','I\'ll manage better this time,\' she said to the jury, and the Queen was to get through the door, and the jury had a door leading right into a butterfly, I should say \"With what porpoise?\"\' \'Don\'t you.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/2.jpg',2280,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(3,'Understanding the Current Real Estate Market Trends','Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know the song, \'I\'d have said to the other, and making faces at him as he.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',558,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(4,'DIY Home Improvement Projects That Add Value','She waited for some way of expecting nothing but out-of-the-way things had happened lately, that Alice had no very clear notion how long ago anything had happened.) So she set to partners--\'.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',907,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(5,'A Beginner’s Guide to Real Estate Investing','DOTH THE LITTLE BUSY BEE,\" but it was perfectly round, she came upon a low voice, \'Your Majesty must cross-examine the next witness was the Hatter. This piece of it appeared. \'I don\'t see any wine,\'.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/3.jpg',972,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(6,'How to Choose the Right Neighborhood for Your Family','Dormouse, who was passing at the door-- Pray, what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been changed for Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/5.jpg',1958,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(7,'Luxury Homes: What to Look For','Pigeon went on, \'if you only kept on puzzling about it just grazed his nose, you know?\' \'It\'s the stupidest tea-party I ever saw in another minute the whole pack rose up into the open air. \'IF I.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/9.jpg',2272,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(8,'Property Management: Best Practices for Landlords','YOU?\' said the Duchess, \'as pigs have to fly; and the soldiers had to do next, when suddenly a footman because he was going to turn into a doze; but, on being pinched by the whole court was in.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',721,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(9,'Renovation Ideas to Increase Your Home’s Value','I can find out the Fish-Footman was gone, and the words did not come the same tone, exactly as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, half to.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/4.jpg',2462,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(10,'The Ultimate Guide to Buying a Vacation Home','Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King and the m--\' But here, to Alice\'s side as she passed; it was just in time to wash the things being alive; for instance, there\'s.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/7.jpg',987,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(11,'How to Successfully Sell Your Home in a Buyer’s Market','I don\'t know,\' he went on for some time without interrupting it. \'They were learning to draw, you know--\' She had quite a commotion in the distance would take the roof of the wood for fear of their.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/6.jpg',1348,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(12,'Home Inspection: What to Expect and How to Prepare','He looked at the bottom of the sort,\' said the Gryphon, and the little door, so she turned to the Dormouse, who was beginning to grow larger again, and we won\'t talk about wasting IT. It\'s HIM.\' \'I.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/5.jpg',1987,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(13,'Eco-friendly Home Improvements for Sustainable Living','Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse gave a sudden burst of tears, \'I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/2.jpg',1293,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(14,'How to Navigate the Mortgage Process','Queen to play croquet.\' Then they both sat silent and looked anxiously over his shoulder with some severity; \'it\'s very rude.\' The Hatter was the same thing with you,\' said the Knave, \'I didn\'t know.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/10.jpg',2431,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(15,'Real Estate Market Analysis: What You Need to Know','She took down a jar from one foot up the fan and a Canary called out as loud as she could, for the hedgehogs; and in THAT direction,\' waving the other end of the what?\' said the Mock Turtle went on.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/5.jpg',2172,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(16,'Tips for Renting Out Your Property','King said to the door, she ran across the garden, where Alice could only hear whispers now and then turned to the law, And argued each case with my wife; And the moral of THAT is--\"Take care of the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/5.jpg',301,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(17,'Understanding Property Taxes and How to Lower Them','Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was delighted to find my way into that beautiful garden--how IS that to be full of tears, \'I do wish I.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/5.jpg',1744,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33'),(18,'The Benefits of Smart Home Technology','Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. \'I\'m glad they\'ve begun.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/7.jpg',635,NULL,'2025-11-17 21:11:33','2025-11-17 21:11:33');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_account_activity_logs_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `re_account_password_resets_email_index` (`email`),
  KEY `re_account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text COLLATE utf8mb4_unicode_ci,
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '0',
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `blocked_reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_accounts_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Magdalen','Ritchie','Queen of Hearts, carrying.',NULL,'john.smith@botble.com','mohredna','$2y$12$XPS.LeXs92PmrNR.IeLqCO0KsxChhohgf7SBftnCskUxy1/7LdA9a',17,'2023-10-16','+18724962028','+18724962028',10,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:26','2025-11-17 21:11:26',0,1,'2025-04-06 21:11:26',1,'Verified trusted agent',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(2,'General','Schamberger','She was walking by the end.',NULL,'agent@botble.com','jailyn06','$2y$12$U.1OEz6WCxZldXnjdhKTVO9g/xbzApOwDr9IxkZbw8fb3uV4nut22',20,'1972-10-31','+15593096369','+15593096369',10,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:27','2025-11-17 21:11:27',0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(3,'Mellie','Bode','I THINK,\' said Alice. \'Did.',NULL,'crist.dulce@kohler.com','shanny93','$2y$12$OTr7Ca8jJB/Pr4uemxrv4O.a0jEDNLMN5BeGBGi6xVGXo7kS/ZFpm',21,'2004-05-02','+18329554589','+18329554589',9,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:27','2025-11-17 21:11:27',1,0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(4,'Rosemarie','Feil','YOU with us!\"\' \'They were.',NULL,'adams.doris@schmitt.com','elizabeth65','$2y$12$R.BTRdXedUBhWlujsT0UseHClAmxTFtsa8sxSkxcyeAsUvmVxJ6/.',14,'2023-03-04','+18723632856','+18723632856',5,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:27','2025-11-17 21:11:27',1,0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(5,'Halie','Schmidt','But she waited for a baby.',NULL,'brycen.glover@hotmail.com','abernathyvern','$2y$12$GyTtCuxN3x3cEIGaQEoVHOUQ480sxSSQIUGdePyXhpwSSivCusRa2',14,'2005-05-27','+14328658776','+14328658776',9,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:27','2025-11-17 21:11:27',0,1,'2025-04-19 21:11:27',1,'',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(6,'Pattie','Bernier','CHAPTER VIII. The Queen\'s.',NULL,'noel20@hotmail.com','dianna43','$2y$12$uZxdHZo870ef.ZWIgT1KTe3i7Qw7TOQA2BP9rncdhFWZliZFKEssu',16,'2013-08-28','+13392020542','+13392020542',9,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:28','2025-11-17 21:11:28',1,1,'2025-02-28 21:11:28',1,'Agent credentials confirmed',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(7,'Fanny','Rippin','Who ever saw one that size?.',NULL,'noble.cummings@waelchi.com','gdach','$2y$12$n/6RBMhjCHW2eMiFs2mY7uI/NzXFEVTEDJG46tRzltSjLsRsBxyci',16,'2024-08-20','+12064158668','+12064158668',9,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:28','2025-11-17 21:11:28',0,1,'2025-02-24 21:11:28',1,'Verified after background check',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(8,'Eldridge','Roob','Soup! \'Beautiful Soup! Who.',NULL,'aliza19@kunde.com','jaskolskikirk','$2y$12$kbPJj6qbKgahN59k8w37ieQJXyduQ3kWpzm3ZCKiPjZcZGbDoYBNe',14,'1975-07-06','+18163704709','+18163704709',8,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:28','2025-11-17 21:11:28',0,0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(9,'Davonte','Harber','Hatter. \'Nor I,\' said the.',NULL,'winnifred.klein@volkman.com','hicklewilfred','$2y$12$6Ytq9OdXj8etqhGnRUIsT.ay8mahnFey3kT9iFzyqzTIPW9CnxBFO',19,'1976-02-29','+14016712796','+14016712796',6,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:29','2025-11-17 21:11:29',0,1,'2025-03-11 21:11:29',1,'Verified trusted partner',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(10,'Reva','Keeling','VERY remarkable in that; nor.',NULL,'pfannerstill.arielle@hotmail.com','marques59','$2y$12$awZTbwOb82BTk5XXGUAdIuQNy31Sjj71n2.vVn1UiBdrTRGG6bMMO',19,'1977-06-21','+16789371270','+16789371270',5,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:29','2025-11-17 21:11:29',0,1,'2025-03-21 21:11:29',1,'Agent credentials confirmed',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(11,'Larissa','Zemlak','Duchess, digging her sharp.',NULL,'labadie.rickey@yahoo.com','schmittcarson','$2y$12$hHsvKU0skruf7LUTODqvC.unRKfRVRnViPakMo/Cm.CxhIMm9/rI.',22,'2002-10-14','+18638351143','+18638351143',3,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:29','2025-11-17 21:11:29',1,1,'2025-03-01 21:11:29',1,'Premium agent - verified',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL),(12,'Damien','Bartell','She was looking about for.',NULL,'raphael84@hotmail.com','ayanarunolfsdottir','$2y$12$miLxv0r97vL3v.9NEPj1weoCU3RSwCvc6ZZnjVttXERBIOB.DsMLu',22,'1998-08-04','+15314650082','+15314650082',5,'2025-11-18 04:11:26',NULL,NULL,'2025-11-17 21:11:29','2025-11-17 21:11:29',0,1,'2025-02-09 21:11:29',1,'Agent credentials confirmed',1,NULL,NULL,NULL,NULL,'2025-11-18 04:11:26',NULL,NULL);
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts_translations`
--

DROP TABLE IF EXISTS `re_accounts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_accounts_id` bigint unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts_translations`
--

LOCK TABLES `re_accounts_translations` WRITE;
/*!40000 ALTER TABLE `re_accounts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_accounts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_re_categories_status` (`status`),
  KEY `idx_re_categories_parent_id` (`parent_id`),
  KEY `idx_re_categories_status_parent_order` (`status`,`parent_id`,`order`),
  KEY `idx_re_categories_is_default` (`is_default`),
  KEY `idx_re_categories_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2025-11-17 21:11:25','2025-11-17 21:11:25',0),(2,'Villa',NULL,'published',1,0,'2025-11-17 21:11:25','2025-11-17 21:11:25',0),(3,'Condo',NULL,'published',2,0,'2025-11-17 21:11:25','2025-11-17 21:11:25',0),(4,'House',NULL,'published',3,0,'2025-11-17 21:11:25','2025-11-17 21:11:25',0),(5,'Land',NULL,'published',4,0,'2025-11-17 21:11:25','2025-11-17 21:11:25',0),(6,'Commercial property',NULL,'published',5,0,'2025-11-17 21:11:25','2025-11-17 21:11:25',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options`
--

LOCK TABLES `re_consult_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options_translations` (
  `re_consult_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options_translations`
--

LOCK TABLES `re_consult_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields`
--

DROP TABLE IF EXISTS `re_consult_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields`
--

LOCK TABLES `re_consult_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields` DISABLE KEYS */;
INSERT INTO `re_consult_custom_fields` VALUES (1,'date',0,'Schedule a Tour (optional)',NULL,999,'published','2025-11-17 21:11:37','2025-11-17 21:11:37');
/*!40000 ALTER TABLE `re_consult_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields_translations` (
  `re_consult_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields_translations`
--

LOCK TABLES `re_consult_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consults` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint unsigned DEFAULT NULL,
  `property_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `number_format_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,0,'western',0,0,1,1,'2025-11-17 21:11:25','2025-11-17 21:11:25'),(2,'EUR','€',0,0,'western',0,1,0,0.91,'2025-11-17 21:11:25','2025-11-17 21:11:25'),(3,'VND','₫',0,0,'western',0,2,0,23717.5,'2025-11-17 21:11:25','2025-11-17 21:11:25');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorable_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','ti ti-hospital','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(2,'Super Market','ti ti-shopping-cart','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(3,'School','ti ti-school','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(4,'Entertainment','ti ti-movie','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(5,'Pharmacy','ti ti-pill','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(6,'Airport','ti ti-plane-departure','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(7,'Railways','ti ti-train','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(8,'Bus Stop','ti ti-bus','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(9,'Beach','ti ti-beach','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(10,'Mall','ti ti-shopping-cart','published','2025-11-17 21:11:25','2025-11-17 21:11:25'),(11,'Bank','ti ti-building-bank','published','2025-11-17 21:11:25','2025-11-17 21:11:25');
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_distances` (
  `facility_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`facility_id`,`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,'Botble\\RealEstate\\Models\\Project','18km'),(1,1,'Botble\\RealEstate\\Models\\Property','14km'),(1,2,'Botble\\RealEstate\\Models\\Project','4km'),(1,2,'Botble\\RealEstate\\Models\\Property','16km'),(1,3,'Botble\\RealEstate\\Models\\Project','16km'),(1,3,'Botble\\RealEstate\\Models\\Property','13km'),(1,4,'Botble\\RealEstate\\Models\\Project','12km'),(1,4,'Botble\\RealEstate\\Models\\Property','19km'),(1,5,'Botble\\RealEstate\\Models\\Project','19km'),(1,5,'Botble\\RealEstate\\Models\\Property','8km'),(1,6,'Botble\\RealEstate\\Models\\Project','7km'),(1,6,'Botble\\RealEstate\\Models\\Property','15km'),(1,7,'Botble\\RealEstate\\Models\\Project','17km'),(1,7,'Botble\\RealEstate\\Models\\Property','5km'),(1,8,'Botble\\RealEstate\\Models\\Project','7km'),(1,8,'Botble\\RealEstate\\Models\\Property','14km'),(1,9,'Botble\\RealEstate\\Models\\Project','6km'),(1,9,'Botble\\RealEstate\\Models\\Property','4km'),(1,10,'Botble\\RealEstate\\Models\\Project','14km'),(1,10,'Botble\\RealEstate\\Models\\Property','19km'),(1,11,'Botble\\RealEstate\\Models\\Project','5km'),(1,11,'Botble\\RealEstate\\Models\\Property','3km'),(1,12,'Botble\\RealEstate\\Models\\Project','10km'),(1,12,'Botble\\RealEstate\\Models\\Property','19km'),(1,13,'Botble\\RealEstate\\Models\\Project','11km'),(1,13,'Botble\\RealEstate\\Models\\Property','8km'),(1,14,'Botble\\RealEstate\\Models\\Project','18km'),(1,14,'Botble\\RealEstate\\Models\\Property','5km'),(1,15,'Botble\\RealEstate\\Models\\Project','19km'),(1,15,'Botble\\RealEstate\\Models\\Property','17km'),(1,16,'Botble\\RealEstate\\Models\\Project','16km'),(1,16,'Botble\\RealEstate\\Models\\Property','9km'),(1,17,'Botble\\RealEstate\\Models\\Project','13km'),(1,17,'Botble\\RealEstate\\Models\\Property','12km'),(1,18,'Botble\\RealEstate\\Models\\Project','18km'),(1,18,'Botble\\RealEstate\\Models\\Property','18km'),(1,19,'Botble\\RealEstate\\Models\\Property','11km'),(1,20,'Botble\\RealEstate\\Models\\Property','6km'),(1,21,'Botble\\RealEstate\\Models\\Property','12km'),(1,22,'Botble\\RealEstate\\Models\\Property','2km'),(1,23,'Botble\\RealEstate\\Models\\Property','11km'),(1,24,'Botble\\RealEstate\\Models\\Property','4km'),(1,25,'Botble\\RealEstate\\Models\\Property','9km'),(1,26,'Botble\\RealEstate\\Models\\Property','18km'),(1,27,'Botble\\RealEstate\\Models\\Property','10km'),(1,28,'Botble\\RealEstate\\Models\\Property','15km'),(1,29,'Botble\\RealEstate\\Models\\Property','12km'),(1,30,'Botble\\RealEstate\\Models\\Property','5km'),(1,31,'Botble\\RealEstate\\Models\\Property','3km'),(1,32,'Botble\\RealEstate\\Models\\Property','20km'),(1,33,'Botble\\RealEstate\\Models\\Property','18km'),(1,34,'Botble\\RealEstate\\Models\\Property','16km'),(1,35,'Botble\\RealEstate\\Models\\Property','14km'),(1,36,'Botble\\RealEstate\\Models\\Property','18km'),(1,37,'Botble\\RealEstate\\Models\\Property','2km'),(1,38,'Botble\\RealEstate\\Models\\Property','1km'),(1,39,'Botble\\RealEstate\\Models\\Property','1km'),(1,40,'Botble\\RealEstate\\Models\\Property','8km'),(1,41,'Botble\\RealEstate\\Models\\Property','12km'),(1,42,'Botble\\RealEstate\\Models\\Property','13km'),(1,43,'Botble\\RealEstate\\Models\\Property','9km'),(1,44,'Botble\\RealEstate\\Models\\Property','17km'),(1,45,'Botble\\RealEstate\\Models\\Property','8km'),(1,46,'Botble\\RealEstate\\Models\\Property','1km'),(1,47,'Botble\\RealEstate\\Models\\Property','10km'),(1,48,'Botble\\RealEstate\\Models\\Property','6km'),(1,49,'Botble\\RealEstate\\Models\\Property','14km'),(1,50,'Botble\\RealEstate\\Models\\Property','19km'),(1,51,'Botble\\RealEstate\\Models\\Property','6km'),(1,52,'Botble\\RealEstate\\Models\\Property','5km'),(1,53,'Botble\\RealEstate\\Models\\Property','17km'),(1,54,'Botble\\RealEstate\\Models\\Property','20km'),(1,55,'Botble\\RealEstate\\Models\\Property','9km'),(1,56,'Botble\\RealEstate\\Models\\Property','10km'),(1,57,'Botble\\RealEstate\\Models\\Property','5km'),(1,58,'Botble\\RealEstate\\Models\\Property','16km'),(1,59,'Botble\\RealEstate\\Models\\Property','4km'),(1,60,'Botble\\RealEstate\\Models\\Property','8km'),(1,61,'Botble\\RealEstate\\Models\\Property','18km'),(2,1,'Botble\\RealEstate\\Models\\Project','5km'),(2,1,'Botble\\RealEstate\\Models\\Property','8km'),(2,2,'Botble\\RealEstate\\Models\\Project','16km'),(2,2,'Botble\\RealEstate\\Models\\Property','6km'),(2,3,'Botble\\RealEstate\\Models\\Project','9km'),(2,3,'Botble\\RealEstate\\Models\\Property','12km'),(2,4,'Botble\\RealEstate\\Models\\Project','13km'),(2,4,'Botble\\RealEstate\\Models\\Property','5km'),(2,5,'Botble\\RealEstate\\Models\\Project','16km'),(2,5,'Botble\\RealEstate\\Models\\Property','3km'),(2,6,'Botble\\RealEstate\\Models\\Project','9km'),(2,6,'Botble\\RealEstate\\Models\\Property','1km'),(2,7,'Botble\\RealEstate\\Models\\Project','16km'),(2,7,'Botble\\RealEstate\\Models\\Property','18km'),(2,8,'Botble\\RealEstate\\Models\\Project','19km'),(2,8,'Botble\\RealEstate\\Models\\Property','10km'),(2,9,'Botble\\RealEstate\\Models\\Project','4km'),(2,9,'Botble\\RealEstate\\Models\\Property','10km'),(2,10,'Botble\\RealEstate\\Models\\Project','20km'),(2,10,'Botble\\RealEstate\\Models\\Property','13km'),(2,11,'Botble\\RealEstate\\Models\\Project','19km'),(2,11,'Botble\\RealEstate\\Models\\Property','14km'),(2,12,'Botble\\RealEstate\\Models\\Project','17km'),(2,12,'Botble\\RealEstate\\Models\\Property','15km'),(2,13,'Botble\\RealEstate\\Models\\Project','12km'),(2,13,'Botble\\RealEstate\\Models\\Property','8km'),(2,14,'Botble\\RealEstate\\Models\\Project','19km'),(2,14,'Botble\\RealEstate\\Models\\Property','12km'),(2,15,'Botble\\RealEstate\\Models\\Project','6km'),(2,15,'Botble\\RealEstate\\Models\\Property','1km'),(2,16,'Botble\\RealEstate\\Models\\Project','7km'),(2,16,'Botble\\RealEstate\\Models\\Property','19km'),(2,17,'Botble\\RealEstate\\Models\\Project','4km'),(2,17,'Botble\\RealEstate\\Models\\Property','6km'),(2,18,'Botble\\RealEstate\\Models\\Project','8km'),(2,18,'Botble\\RealEstate\\Models\\Property','20km'),(2,19,'Botble\\RealEstate\\Models\\Property','17km'),(2,20,'Botble\\RealEstate\\Models\\Property','13km'),(2,21,'Botble\\RealEstate\\Models\\Property','14km'),(2,22,'Botble\\RealEstate\\Models\\Property','4km'),(2,23,'Botble\\RealEstate\\Models\\Property','13km'),(2,24,'Botble\\RealEstate\\Models\\Property','3km'),(2,25,'Botble\\RealEstate\\Models\\Property','11km'),(2,26,'Botble\\RealEstate\\Models\\Property','8km'),(2,27,'Botble\\RealEstate\\Models\\Property','17km'),(2,28,'Botble\\RealEstate\\Models\\Property','12km'),(2,29,'Botble\\RealEstate\\Models\\Property','14km'),(2,30,'Botble\\RealEstate\\Models\\Property','7km'),(2,31,'Botble\\RealEstate\\Models\\Property','3km'),(2,32,'Botble\\RealEstate\\Models\\Property','19km'),(2,33,'Botble\\RealEstate\\Models\\Property','9km'),(2,34,'Botble\\RealEstate\\Models\\Property','7km'),(2,35,'Botble\\RealEstate\\Models\\Property','15km'),(2,36,'Botble\\RealEstate\\Models\\Property','1km'),(2,37,'Botble\\RealEstate\\Models\\Property','17km'),(2,38,'Botble\\RealEstate\\Models\\Property','13km'),(2,39,'Botble\\RealEstate\\Models\\Property','3km'),(2,40,'Botble\\RealEstate\\Models\\Property','13km'),(2,41,'Botble\\RealEstate\\Models\\Property','7km'),(2,42,'Botble\\RealEstate\\Models\\Property','9km'),(2,43,'Botble\\RealEstate\\Models\\Property','18km'),(2,44,'Botble\\RealEstate\\Models\\Property','7km'),(2,45,'Botble\\RealEstate\\Models\\Property','3km'),(2,46,'Botble\\RealEstate\\Models\\Property','7km'),(2,47,'Botble\\RealEstate\\Models\\Property','20km'),(2,48,'Botble\\RealEstate\\Models\\Property','15km'),(2,49,'Botble\\RealEstate\\Models\\Property','9km'),(2,50,'Botble\\RealEstate\\Models\\Property','1km'),(2,51,'Botble\\RealEstate\\Models\\Property','17km'),(2,52,'Botble\\RealEstate\\Models\\Property','15km'),(2,53,'Botble\\RealEstate\\Models\\Property','16km'),(2,54,'Botble\\RealEstate\\Models\\Property','13km'),(2,55,'Botble\\RealEstate\\Models\\Property','12km'),(2,56,'Botble\\RealEstate\\Models\\Property','8km'),(2,57,'Botble\\RealEstate\\Models\\Property','10km'),(2,58,'Botble\\RealEstate\\Models\\Property','18km'),(2,59,'Botble\\RealEstate\\Models\\Property','5km'),(2,60,'Botble\\RealEstate\\Models\\Property','3km'),(2,61,'Botble\\RealEstate\\Models\\Property','13km'),(3,1,'Botble\\RealEstate\\Models\\Project','20km'),(3,1,'Botble\\RealEstate\\Models\\Property','14km'),(3,2,'Botble\\RealEstate\\Models\\Project','2km'),(3,2,'Botble\\RealEstate\\Models\\Property','19km'),(3,3,'Botble\\RealEstate\\Models\\Project','17km'),(3,3,'Botble\\RealEstate\\Models\\Property','13km'),(3,4,'Botble\\RealEstate\\Models\\Project','15km'),(3,4,'Botble\\RealEstate\\Models\\Property','9km'),(3,5,'Botble\\RealEstate\\Models\\Project','16km'),(3,5,'Botble\\RealEstate\\Models\\Property','4km'),(3,6,'Botble\\RealEstate\\Models\\Project','13km'),(3,6,'Botble\\RealEstate\\Models\\Property','1km'),(3,7,'Botble\\RealEstate\\Models\\Project','18km'),(3,7,'Botble\\RealEstate\\Models\\Property','17km'),(3,8,'Botble\\RealEstate\\Models\\Project','6km'),(3,8,'Botble\\RealEstate\\Models\\Property','15km'),(3,9,'Botble\\RealEstate\\Models\\Project','14km'),(3,9,'Botble\\RealEstate\\Models\\Property','9km'),(3,10,'Botble\\RealEstate\\Models\\Project','12km'),(3,10,'Botble\\RealEstate\\Models\\Property','19km'),(3,11,'Botble\\RealEstate\\Models\\Project','16km'),(3,11,'Botble\\RealEstate\\Models\\Property','7km'),(3,12,'Botble\\RealEstate\\Models\\Project','15km'),(3,12,'Botble\\RealEstate\\Models\\Property','1km'),(3,13,'Botble\\RealEstate\\Models\\Project','5km'),(3,13,'Botble\\RealEstate\\Models\\Property','8km'),(3,14,'Botble\\RealEstate\\Models\\Project','3km'),(3,14,'Botble\\RealEstate\\Models\\Property','5km'),(3,15,'Botble\\RealEstate\\Models\\Project','7km'),(3,15,'Botble\\RealEstate\\Models\\Property','10km'),(3,16,'Botble\\RealEstate\\Models\\Project','17km'),(3,16,'Botble\\RealEstate\\Models\\Property','13km'),(3,17,'Botble\\RealEstate\\Models\\Project','4km'),(3,17,'Botble\\RealEstate\\Models\\Property','11km'),(3,18,'Botble\\RealEstate\\Models\\Project','10km'),(3,18,'Botble\\RealEstate\\Models\\Property','16km'),(3,19,'Botble\\RealEstate\\Models\\Property','14km'),(3,20,'Botble\\RealEstate\\Models\\Property','13km'),(3,21,'Botble\\RealEstate\\Models\\Property','5km'),(3,22,'Botble\\RealEstate\\Models\\Property','2km'),(3,23,'Botble\\RealEstate\\Models\\Property','11km'),(3,24,'Botble\\RealEstate\\Models\\Property','7km'),(3,25,'Botble\\RealEstate\\Models\\Property','15km'),(3,26,'Botble\\RealEstate\\Models\\Property','16km'),(3,27,'Botble\\RealEstate\\Models\\Property','9km'),(3,28,'Botble\\RealEstate\\Models\\Property','11km'),(3,29,'Botble\\RealEstate\\Models\\Property','1km'),(3,30,'Botble\\RealEstate\\Models\\Property','7km'),(3,31,'Botble\\RealEstate\\Models\\Property','2km'),(3,32,'Botble\\RealEstate\\Models\\Property','10km'),(3,33,'Botble\\RealEstate\\Models\\Property','9km'),(3,34,'Botble\\RealEstate\\Models\\Property','4km'),(3,35,'Botble\\RealEstate\\Models\\Property','19km'),(3,36,'Botble\\RealEstate\\Models\\Property','3km'),(3,37,'Botble\\RealEstate\\Models\\Property','1km'),(3,38,'Botble\\RealEstate\\Models\\Property','5km'),(3,39,'Botble\\RealEstate\\Models\\Property','14km'),(3,40,'Botble\\RealEstate\\Models\\Property','13km'),(3,41,'Botble\\RealEstate\\Models\\Property','10km'),(3,42,'Botble\\RealEstate\\Models\\Property','17km'),(3,43,'Botble\\RealEstate\\Models\\Property','18km'),(3,44,'Botble\\RealEstate\\Models\\Property','6km'),(3,45,'Botble\\RealEstate\\Models\\Property','10km'),(3,46,'Botble\\RealEstate\\Models\\Property','8km'),(3,47,'Botble\\RealEstate\\Models\\Property','3km'),(3,48,'Botble\\RealEstate\\Models\\Property','4km'),(3,49,'Botble\\RealEstate\\Models\\Property','17km'),(3,50,'Botble\\RealEstate\\Models\\Property','12km'),(3,51,'Botble\\RealEstate\\Models\\Property','3km'),(3,52,'Botble\\RealEstate\\Models\\Property','4km'),(3,53,'Botble\\RealEstate\\Models\\Property','1km'),(3,54,'Botble\\RealEstate\\Models\\Property','9km'),(3,55,'Botble\\RealEstate\\Models\\Property','18km'),(3,56,'Botble\\RealEstate\\Models\\Property','4km'),(3,57,'Botble\\RealEstate\\Models\\Property','15km'),(3,58,'Botble\\RealEstate\\Models\\Property','4km'),(3,59,'Botble\\RealEstate\\Models\\Property','1km'),(3,60,'Botble\\RealEstate\\Models\\Property','17km'),(3,61,'Botble\\RealEstate\\Models\\Property','2km'),(4,1,'Botble\\RealEstate\\Models\\Project','19km'),(4,1,'Botble\\RealEstate\\Models\\Property','7km'),(4,2,'Botble\\RealEstate\\Models\\Project','9km'),(4,2,'Botble\\RealEstate\\Models\\Property','12km'),(4,3,'Botble\\RealEstate\\Models\\Project','5km'),(4,3,'Botble\\RealEstate\\Models\\Property','4km'),(4,4,'Botble\\RealEstate\\Models\\Project','6km'),(4,4,'Botble\\RealEstate\\Models\\Property','16km'),(4,5,'Botble\\RealEstate\\Models\\Project','10km'),(4,5,'Botble\\RealEstate\\Models\\Property','9km'),(4,6,'Botble\\RealEstate\\Models\\Project','10km'),(4,6,'Botble\\RealEstate\\Models\\Property','11km'),(4,7,'Botble\\RealEstate\\Models\\Project','15km'),(4,7,'Botble\\RealEstate\\Models\\Property','4km'),(4,8,'Botble\\RealEstate\\Models\\Project','7km'),(4,8,'Botble\\RealEstate\\Models\\Property','16km'),(4,9,'Botble\\RealEstate\\Models\\Project','3km'),(4,9,'Botble\\RealEstate\\Models\\Property','13km'),(4,10,'Botble\\RealEstate\\Models\\Project','10km'),(4,10,'Botble\\RealEstate\\Models\\Property','18km'),(4,11,'Botble\\RealEstate\\Models\\Project','3km'),(4,11,'Botble\\RealEstate\\Models\\Property','6km'),(4,12,'Botble\\RealEstate\\Models\\Project','10km'),(4,12,'Botble\\RealEstate\\Models\\Property','19km'),(4,13,'Botble\\RealEstate\\Models\\Project','10km'),(4,13,'Botble\\RealEstate\\Models\\Property','2km'),(4,14,'Botble\\RealEstate\\Models\\Project','14km'),(4,14,'Botble\\RealEstate\\Models\\Property','20km'),(4,15,'Botble\\RealEstate\\Models\\Project','19km'),(4,15,'Botble\\RealEstate\\Models\\Property','15km'),(4,16,'Botble\\RealEstate\\Models\\Project','16km'),(4,16,'Botble\\RealEstate\\Models\\Property','20km'),(4,17,'Botble\\RealEstate\\Models\\Project','17km'),(4,17,'Botble\\RealEstate\\Models\\Property','14km'),(4,18,'Botble\\RealEstate\\Models\\Project','1km'),(4,18,'Botble\\RealEstate\\Models\\Property','13km'),(4,19,'Botble\\RealEstate\\Models\\Property','15km'),(4,20,'Botble\\RealEstate\\Models\\Property','3km'),(4,21,'Botble\\RealEstate\\Models\\Property','13km'),(4,22,'Botble\\RealEstate\\Models\\Property','19km'),(4,23,'Botble\\RealEstate\\Models\\Property','16km'),(4,24,'Botble\\RealEstate\\Models\\Property','12km'),(4,25,'Botble\\RealEstate\\Models\\Property','9km'),(4,26,'Botble\\RealEstate\\Models\\Property','4km'),(4,27,'Botble\\RealEstate\\Models\\Property','7km'),(4,28,'Botble\\RealEstate\\Models\\Property','7km'),(4,29,'Botble\\RealEstate\\Models\\Property','13km'),(4,30,'Botble\\RealEstate\\Models\\Property','10km'),(4,31,'Botble\\RealEstate\\Models\\Property','17km'),(4,32,'Botble\\RealEstate\\Models\\Property','4km'),(4,33,'Botble\\RealEstate\\Models\\Property','12km'),(4,34,'Botble\\RealEstate\\Models\\Property','6km'),(4,35,'Botble\\RealEstate\\Models\\Property','15km'),(4,36,'Botble\\RealEstate\\Models\\Property','6km'),(4,37,'Botble\\RealEstate\\Models\\Property','8km'),(4,38,'Botble\\RealEstate\\Models\\Property','9km'),(4,39,'Botble\\RealEstate\\Models\\Property','16km'),(4,40,'Botble\\RealEstate\\Models\\Property','18km'),(4,41,'Botble\\RealEstate\\Models\\Property','1km'),(4,42,'Botble\\RealEstate\\Models\\Property','10km'),(4,43,'Botble\\RealEstate\\Models\\Property','15km'),(4,44,'Botble\\RealEstate\\Models\\Property','12km'),(4,45,'Botble\\RealEstate\\Models\\Property','16km'),(4,46,'Botble\\RealEstate\\Models\\Property','11km'),(4,47,'Botble\\RealEstate\\Models\\Property','18km'),(4,48,'Botble\\RealEstate\\Models\\Property','6km'),(4,49,'Botble\\RealEstate\\Models\\Property','18km'),(4,50,'Botble\\RealEstate\\Models\\Property','20km'),(4,51,'Botble\\RealEstate\\Models\\Property','2km'),(4,52,'Botble\\RealEstate\\Models\\Property','14km'),(4,53,'Botble\\RealEstate\\Models\\Property','18km'),(4,54,'Botble\\RealEstate\\Models\\Property','13km'),(4,55,'Botble\\RealEstate\\Models\\Property','9km'),(4,56,'Botble\\RealEstate\\Models\\Property','8km'),(4,57,'Botble\\RealEstate\\Models\\Property','15km'),(4,58,'Botble\\RealEstate\\Models\\Property','15km'),(4,59,'Botble\\RealEstate\\Models\\Property','2km'),(4,60,'Botble\\RealEstate\\Models\\Property','15km'),(4,61,'Botble\\RealEstate\\Models\\Property','13km'),(5,1,'Botble\\RealEstate\\Models\\Project','17km'),(5,1,'Botble\\RealEstate\\Models\\Property','20km'),(5,2,'Botble\\RealEstate\\Models\\Project','10km'),(5,2,'Botble\\RealEstate\\Models\\Property','6km'),(5,3,'Botble\\RealEstate\\Models\\Project','14km'),(5,3,'Botble\\RealEstate\\Models\\Property','18km'),(5,4,'Botble\\RealEstate\\Models\\Project','9km'),(5,4,'Botble\\RealEstate\\Models\\Property','2km'),(5,5,'Botble\\RealEstate\\Models\\Project','7km'),(5,5,'Botble\\RealEstate\\Models\\Property','15km'),(5,6,'Botble\\RealEstate\\Models\\Project','13km'),(5,6,'Botble\\RealEstate\\Models\\Property','10km'),(5,7,'Botble\\RealEstate\\Models\\Project','7km'),(5,7,'Botble\\RealEstate\\Models\\Property','11km'),(5,8,'Botble\\RealEstate\\Models\\Project','3km'),(5,8,'Botble\\RealEstate\\Models\\Property','1km'),(5,9,'Botble\\RealEstate\\Models\\Project','17km'),(5,9,'Botble\\RealEstate\\Models\\Property','9km'),(5,10,'Botble\\RealEstate\\Models\\Project','3km'),(5,10,'Botble\\RealEstate\\Models\\Property','14km'),(5,11,'Botble\\RealEstate\\Models\\Project','14km'),(5,11,'Botble\\RealEstate\\Models\\Property','9km'),(5,12,'Botble\\RealEstate\\Models\\Project','11km'),(5,12,'Botble\\RealEstate\\Models\\Property','8km'),(5,13,'Botble\\RealEstate\\Models\\Project','4km'),(5,13,'Botble\\RealEstate\\Models\\Property','15km'),(5,14,'Botble\\RealEstate\\Models\\Project','13km'),(5,14,'Botble\\RealEstate\\Models\\Property','12km'),(5,15,'Botble\\RealEstate\\Models\\Project','8km'),(5,15,'Botble\\RealEstate\\Models\\Property','3km'),(5,16,'Botble\\RealEstate\\Models\\Project','11km'),(5,16,'Botble\\RealEstate\\Models\\Property','20km'),(5,17,'Botble\\RealEstate\\Models\\Project','20km'),(5,17,'Botble\\RealEstate\\Models\\Property','10km'),(5,18,'Botble\\RealEstate\\Models\\Project','4km'),(5,18,'Botble\\RealEstate\\Models\\Property','5km'),(5,19,'Botble\\RealEstate\\Models\\Property','2km'),(5,20,'Botble\\RealEstate\\Models\\Property','2km'),(5,21,'Botble\\RealEstate\\Models\\Property','20km'),(5,22,'Botble\\RealEstate\\Models\\Property','3km'),(5,23,'Botble\\RealEstate\\Models\\Property','8km'),(5,24,'Botble\\RealEstate\\Models\\Property','13km'),(5,25,'Botble\\RealEstate\\Models\\Property','13km'),(5,26,'Botble\\RealEstate\\Models\\Property','16km'),(5,27,'Botble\\RealEstate\\Models\\Property','7km'),(5,28,'Botble\\RealEstate\\Models\\Property','9km'),(5,29,'Botble\\RealEstate\\Models\\Property','2km'),(5,30,'Botble\\RealEstate\\Models\\Property','1km'),(5,31,'Botble\\RealEstate\\Models\\Property','9km'),(5,32,'Botble\\RealEstate\\Models\\Property','17km'),(5,33,'Botble\\RealEstate\\Models\\Property','18km'),(5,34,'Botble\\RealEstate\\Models\\Property','14km'),(5,35,'Botble\\RealEstate\\Models\\Property','19km'),(5,36,'Botble\\RealEstate\\Models\\Property','20km'),(5,37,'Botble\\RealEstate\\Models\\Property','10km'),(5,38,'Botble\\RealEstate\\Models\\Property','8km'),(5,39,'Botble\\RealEstate\\Models\\Property','3km'),(5,40,'Botble\\RealEstate\\Models\\Property','8km'),(5,41,'Botble\\RealEstate\\Models\\Property','10km'),(5,42,'Botble\\RealEstate\\Models\\Property','5km'),(5,43,'Botble\\RealEstate\\Models\\Property','1km'),(5,44,'Botble\\RealEstate\\Models\\Property','15km'),(5,45,'Botble\\RealEstate\\Models\\Property','12km'),(5,46,'Botble\\RealEstate\\Models\\Property','6km'),(5,47,'Botble\\RealEstate\\Models\\Property','17km'),(5,48,'Botble\\RealEstate\\Models\\Property','1km'),(5,49,'Botble\\RealEstate\\Models\\Property','12km'),(5,50,'Botble\\RealEstate\\Models\\Property','4km'),(5,51,'Botble\\RealEstate\\Models\\Property','14km'),(5,52,'Botble\\RealEstate\\Models\\Property','7km'),(5,53,'Botble\\RealEstate\\Models\\Property','7km'),(5,54,'Botble\\RealEstate\\Models\\Property','14km'),(5,55,'Botble\\RealEstate\\Models\\Property','17km'),(5,56,'Botble\\RealEstate\\Models\\Property','17km'),(5,57,'Botble\\RealEstate\\Models\\Property','13km'),(5,58,'Botble\\RealEstate\\Models\\Property','11km'),(5,59,'Botble\\RealEstate\\Models\\Property','6km'),(5,60,'Botble\\RealEstate\\Models\\Property','7km'),(5,61,'Botble\\RealEstate\\Models\\Property','4km'),(6,1,'Botble\\RealEstate\\Models\\Project','8km'),(6,1,'Botble\\RealEstate\\Models\\Property','13km'),(6,2,'Botble\\RealEstate\\Models\\Project','6km'),(6,2,'Botble\\RealEstate\\Models\\Property','14km'),(6,3,'Botble\\RealEstate\\Models\\Project','10km'),(6,3,'Botble\\RealEstate\\Models\\Property','8km'),(6,4,'Botble\\RealEstate\\Models\\Project','14km'),(6,4,'Botble\\RealEstate\\Models\\Property','11km'),(6,5,'Botble\\RealEstate\\Models\\Project','6km'),(6,5,'Botble\\RealEstate\\Models\\Property','14km'),(6,6,'Botble\\RealEstate\\Models\\Project','11km'),(6,6,'Botble\\RealEstate\\Models\\Property','5km'),(6,7,'Botble\\RealEstate\\Models\\Project','11km'),(6,7,'Botble\\RealEstate\\Models\\Property','6km'),(6,8,'Botble\\RealEstate\\Models\\Project','18km'),(6,8,'Botble\\RealEstate\\Models\\Property','1km'),(6,9,'Botble\\RealEstate\\Models\\Project','5km'),(6,9,'Botble\\RealEstate\\Models\\Property','13km'),(6,10,'Botble\\RealEstate\\Models\\Project','3km'),(6,10,'Botble\\RealEstate\\Models\\Property','16km'),(6,11,'Botble\\RealEstate\\Models\\Project','3km'),(6,11,'Botble\\RealEstate\\Models\\Property','17km'),(6,12,'Botble\\RealEstate\\Models\\Project','8km'),(6,12,'Botble\\RealEstate\\Models\\Property','13km'),(6,13,'Botble\\RealEstate\\Models\\Project','3km'),(6,13,'Botble\\RealEstate\\Models\\Property','14km'),(6,14,'Botble\\RealEstate\\Models\\Project','18km'),(6,14,'Botble\\RealEstate\\Models\\Property','1km'),(6,15,'Botble\\RealEstate\\Models\\Project','7km'),(6,15,'Botble\\RealEstate\\Models\\Property','4km'),(6,16,'Botble\\RealEstate\\Models\\Project','14km'),(6,16,'Botble\\RealEstate\\Models\\Property','13km'),(6,17,'Botble\\RealEstate\\Models\\Project','13km'),(6,17,'Botble\\RealEstate\\Models\\Property','9km'),(6,18,'Botble\\RealEstate\\Models\\Project','2km'),(6,18,'Botble\\RealEstate\\Models\\Property','13km'),(6,19,'Botble\\RealEstate\\Models\\Property','14km'),(6,20,'Botble\\RealEstate\\Models\\Property','15km'),(6,21,'Botble\\RealEstate\\Models\\Property','18km'),(6,22,'Botble\\RealEstate\\Models\\Property','3km'),(6,23,'Botble\\RealEstate\\Models\\Property','4km'),(6,24,'Botble\\RealEstate\\Models\\Property','14km'),(6,25,'Botble\\RealEstate\\Models\\Property','18km'),(6,26,'Botble\\RealEstate\\Models\\Property','18km'),(6,27,'Botble\\RealEstate\\Models\\Property','11km'),(6,28,'Botble\\RealEstate\\Models\\Property','8km'),(6,29,'Botble\\RealEstate\\Models\\Property','4km'),(6,30,'Botble\\RealEstate\\Models\\Property','15km'),(6,31,'Botble\\RealEstate\\Models\\Property','5km'),(6,32,'Botble\\RealEstate\\Models\\Property','7km'),(6,33,'Botble\\RealEstate\\Models\\Property','16km'),(6,34,'Botble\\RealEstate\\Models\\Property','5km'),(6,35,'Botble\\RealEstate\\Models\\Property','16km'),(6,36,'Botble\\RealEstate\\Models\\Property','20km'),(6,37,'Botble\\RealEstate\\Models\\Property','13km'),(6,38,'Botble\\RealEstate\\Models\\Property','16km'),(6,39,'Botble\\RealEstate\\Models\\Property','13km'),(6,40,'Botble\\RealEstate\\Models\\Property','19km'),(6,41,'Botble\\RealEstate\\Models\\Property','20km'),(6,42,'Botble\\RealEstate\\Models\\Property','4km'),(6,43,'Botble\\RealEstate\\Models\\Property','4km'),(6,44,'Botble\\RealEstate\\Models\\Property','7km'),(6,45,'Botble\\RealEstate\\Models\\Property','11km'),(6,46,'Botble\\RealEstate\\Models\\Property','9km'),(6,47,'Botble\\RealEstate\\Models\\Property','16km'),(6,48,'Botble\\RealEstate\\Models\\Property','5km'),(6,49,'Botble\\RealEstate\\Models\\Property','10km'),(6,50,'Botble\\RealEstate\\Models\\Property','20km'),(6,51,'Botble\\RealEstate\\Models\\Property','15km'),(6,52,'Botble\\RealEstate\\Models\\Property','9km'),(6,53,'Botble\\RealEstate\\Models\\Property','2km'),(6,54,'Botble\\RealEstate\\Models\\Property','17km'),(6,55,'Botble\\RealEstate\\Models\\Property','3km'),(6,56,'Botble\\RealEstate\\Models\\Property','4km'),(6,57,'Botble\\RealEstate\\Models\\Property','7km'),(6,58,'Botble\\RealEstate\\Models\\Property','8km'),(6,59,'Botble\\RealEstate\\Models\\Property','12km'),(6,60,'Botble\\RealEstate\\Models\\Property','3km'),(6,61,'Botble\\RealEstate\\Models\\Property','18km'),(7,1,'Botble\\RealEstate\\Models\\Project','6km'),(7,1,'Botble\\RealEstate\\Models\\Property','19km'),(7,2,'Botble\\RealEstate\\Models\\Project','18km'),(7,2,'Botble\\RealEstate\\Models\\Property','19km'),(7,3,'Botble\\RealEstate\\Models\\Project','11km'),(7,3,'Botble\\RealEstate\\Models\\Property','11km'),(7,4,'Botble\\RealEstate\\Models\\Project','19km'),(7,4,'Botble\\RealEstate\\Models\\Property','5km'),(7,5,'Botble\\RealEstate\\Models\\Project','20km'),(7,5,'Botble\\RealEstate\\Models\\Property','6km'),(7,6,'Botble\\RealEstate\\Models\\Project','8km'),(7,6,'Botble\\RealEstate\\Models\\Property','17km'),(7,7,'Botble\\RealEstate\\Models\\Project','14km'),(7,7,'Botble\\RealEstate\\Models\\Property','4km'),(7,8,'Botble\\RealEstate\\Models\\Project','6km'),(7,8,'Botble\\RealEstate\\Models\\Property','8km'),(7,9,'Botble\\RealEstate\\Models\\Project','13km'),(7,9,'Botble\\RealEstate\\Models\\Property','5km'),(7,10,'Botble\\RealEstate\\Models\\Project','5km'),(7,10,'Botble\\RealEstate\\Models\\Property','16km'),(7,11,'Botble\\RealEstate\\Models\\Project','14km'),(7,11,'Botble\\RealEstate\\Models\\Property','6km'),(7,12,'Botble\\RealEstate\\Models\\Project','8km'),(7,12,'Botble\\RealEstate\\Models\\Property','19km'),(7,13,'Botble\\RealEstate\\Models\\Project','1km'),(7,13,'Botble\\RealEstate\\Models\\Property','11km'),(7,14,'Botble\\RealEstate\\Models\\Project','1km'),(7,14,'Botble\\RealEstate\\Models\\Property','6km'),(7,15,'Botble\\RealEstate\\Models\\Project','12km'),(7,15,'Botble\\RealEstate\\Models\\Property','18km'),(7,16,'Botble\\RealEstate\\Models\\Project','13km'),(7,16,'Botble\\RealEstate\\Models\\Property','1km'),(7,17,'Botble\\RealEstate\\Models\\Project','11km'),(7,17,'Botble\\RealEstate\\Models\\Property','5km'),(7,18,'Botble\\RealEstate\\Models\\Project','20km'),(7,18,'Botble\\RealEstate\\Models\\Property','9km'),(7,19,'Botble\\RealEstate\\Models\\Property','7km'),(7,20,'Botble\\RealEstate\\Models\\Property','20km'),(7,21,'Botble\\RealEstate\\Models\\Property','15km'),(7,22,'Botble\\RealEstate\\Models\\Property','17km'),(7,23,'Botble\\RealEstate\\Models\\Property','1km'),(7,24,'Botble\\RealEstate\\Models\\Property','19km'),(7,25,'Botble\\RealEstate\\Models\\Property','3km'),(7,26,'Botble\\RealEstate\\Models\\Property','20km'),(7,27,'Botble\\RealEstate\\Models\\Property','15km'),(7,28,'Botble\\RealEstate\\Models\\Property','18km'),(7,29,'Botble\\RealEstate\\Models\\Property','18km'),(7,30,'Botble\\RealEstate\\Models\\Property','16km'),(7,31,'Botble\\RealEstate\\Models\\Property','4km'),(7,32,'Botble\\RealEstate\\Models\\Property','9km'),(7,33,'Botble\\RealEstate\\Models\\Property','13km'),(7,34,'Botble\\RealEstate\\Models\\Property','2km'),(7,35,'Botble\\RealEstate\\Models\\Property','9km'),(7,36,'Botble\\RealEstate\\Models\\Property','8km'),(7,37,'Botble\\RealEstate\\Models\\Property','9km'),(7,38,'Botble\\RealEstate\\Models\\Property','20km'),(7,39,'Botble\\RealEstate\\Models\\Property','5km'),(7,40,'Botble\\RealEstate\\Models\\Property','16km'),(7,41,'Botble\\RealEstate\\Models\\Property','10km'),(7,42,'Botble\\RealEstate\\Models\\Property','7km'),(7,43,'Botble\\RealEstate\\Models\\Property','8km'),(7,44,'Botble\\RealEstate\\Models\\Property','20km'),(7,45,'Botble\\RealEstate\\Models\\Property','9km'),(7,46,'Botble\\RealEstate\\Models\\Property','9km'),(7,47,'Botble\\RealEstate\\Models\\Property','11km'),(7,48,'Botble\\RealEstate\\Models\\Property','20km'),(7,49,'Botble\\RealEstate\\Models\\Property','13km'),(7,50,'Botble\\RealEstate\\Models\\Property','10km'),(7,51,'Botble\\RealEstate\\Models\\Property','6km'),(7,52,'Botble\\RealEstate\\Models\\Property','18km'),(7,53,'Botble\\RealEstate\\Models\\Property','3km'),(7,54,'Botble\\RealEstate\\Models\\Property','13km'),(7,55,'Botble\\RealEstate\\Models\\Property','4km'),(7,56,'Botble\\RealEstate\\Models\\Property','5km'),(7,57,'Botble\\RealEstate\\Models\\Property','8km'),(7,58,'Botble\\RealEstate\\Models\\Property','7km'),(7,59,'Botble\\RealEstate\\Models\\Property','9km'),(7,60,'Botble\\RealEstate\\Models\\Property','20km'),(7,61,'Botble\\RealEstate\\Models\\Property','19km'),(8,1,'Botble\\RealEstate\\Models\\Project','6km'),(8,1,'Botble\\RealEstate\\Models\\Property','14km'),(8,2,'Botble\\RealEstate\\Models\\Project','6km'),(8,2,'Botble\\RealEstate\\Models\\Property','11km'),(8,3,'Botble\\RealEstate\\Models\\Project','17km'),(8,3,'Botble\\RealEstate\\Models\\Property','1km'),(8,4,'Botble\\RealEstate\\Models\\Project','7km'),(8,4,'Botble\\RealEstate\\Models\\Property','20km'),(8,5,'Botble\\RealEstate\\Models\\Project','10km'),(8,5,'Botble\\RealEstate\\Models\\Property','15km'),(8,6,'Botble\\RealEstate\\Models\\Project','14km'),(8,6,'Botble\\RealEstate\\Models\\Property','10km'),(8,7,'Botble\\RealEstate\\Models\\Project','7km'),(8,7,'Botble\\RealEstate\\Models\\Property','19km'),(8,8,'Botble\\RealEstate\\Models\\Project','6km'),(8,8,'Botble\\RealEstate\\Models\\Property','8km'),(8,9,'Botble\\RealEstate\\Models\\Project','14km'),(8,9,'Botble\\RealEstate\\Models\\Property','11km'),(8,10,'Botble\\RealEstate\\Models\\Project','20km'),(8,10,'Botble\\RealEstate\\Models\\Property','11km'),(8,11,'Botble\\RealEstate\\Models\\Project','18km'),(8,11,'Botble\\RealEstate\\Models\\Property','3km'),(8,12,'Botble\\RealEstate\\Models\\Project','13km'),(8,12,'Botble\\RealEstate\\Models\\Property','20km'),(8,13,'Botble\\RealEstate\\Models\\Project','19km'),(8,13,'Botble\\RealEstate\\Models\\Property','12km'),(8,14,'Botble\\RealEstate\\Models\\Project','18km'),(8,14,'Botble\\RealEstate\\Models\\Property','11km'),(8,15,'Botble\\RealEstate\\Models\\Project','10km'),(8,15,'Botble\\RealEstate\\Models\\Property','16km'),(8,16,'Botble\\RealEstate\\Models\\Project','5km'),(8,16,'Botble\\RealEstate\\Models\\Property','15km'),(8,17,'Botble\\RealEstate\\Models\\Project','14km'),(8,17,'Botble\\RealEstate\\Models\\Property','14km'),(8,18,'Botble\\RealEstate\\Models\\Project','17km'),(8,18,'Botble\\RealEstate\\Models\\Property','11km'),(8,19,'Botble\\RealEstate\\Models\\Property','6km'),(8,20,'Botble\\RealEstate\\Models\\Property','12km'),(8,21,'Botble\\RealEstate\\Models\\Property','2km'),(8,22,'Botble\\RealEstate\\Models\\Property','12km'),(8,23,'Botble\\RealEstate\\Models\\Property','14km'),(8,24,'Botble\\RealEstate\\Models\\Property','7km'),(8,25,'Botble\\RealEstate\\Models\\Property','2km'),(8,26,'Botble\\RealEstate\\Models\\Property','15km'),(8,27,'Botble\\RealEstate\\Models\\Property','1km'),(8,28,'Botble\\RealEstate\\Models\\Property','12km'),(8,29,'Botble\\RealEstate\\Models\\Property','16km'),(8,30,'Botble\\RealEstate\\Models\\Property','12km'),(8,31,'Botble\\RealEstate\\Models\\Property','10km'),(8,32,'Botble\\RealEstate\\Models\\Property','15km'),(8,33,'Botble\\RealEstate\\Models\\Property','16km'),(8,34,'Botble\\RealEstate\\Models\\Property','3km'),(8,35,'Botble\\RealEstate\\Models\\Property','15km'),(8,36,'Botble\\RealEstate\\Models\\Property','11km'),(8,37,'Botble\\RealEstate\\Models\\Property','1km'),(8,38,'Botble\\RealEstate\\Models\\Property','1km'),(8,39,'Botble\\RealEstate\\Models\\Property','2km'),(8,40,'Botble\\RealEstate\\Models\\Property','11km'),(8,41,'Botble\\RealEstate\\Models\\Property','1km'),(8,42,'Botble\\RealEstate\\Models\\Property','4km'),(8,43,'Botble\\RealEstate\\Models\\Property','4km'),(8,44,'Botble\\RealEstate\\Models\\Property','9km'),(8,45,'Botble\\RealEstate\\Models\\Property','8km'),(8,46,'Botble\\RealEstate\\Models\\Property','3km'),(8,47,'Botble\\RealEstate\\Models\\Property','12km'),(8,48,'Botble\\RealEstate\\Models\\Property','1km'),(8,49,'Botble\\RealEstate\\Models\\Property','3km'),(8,50,'Botble\\RealEstate\\Models\\Property','2km'),(8,51,'Botble\\RealEstate\\Models\\Property','11km'),(8,52,'Botble\\RealEstate\\Models\\Property','5km'),(8,53,'Botble\\RealEstate\\Models\\Property','12km'),(8,54,'Botble\\RealEstate\\Models\\Property','8km'),(8,55,'Botble\\RealEstate\\Models\\Property','20km'),(8,56,'Botble\\RealEstate\\Models\\Property','14km'),(8,57,'Botble\\RealEstate\\Models\\Property','13km'),(8,58,'Botble\\RealEstate\\Models\\Property','16km'),(8,59,'Botble\\RealEstate\\Models\\Property','16km'),(8,60,'Botble\\RealEstate\\Models\\Property','19km'),(8,61,'Botble\\RealEstate\\Models\\Property','15km'),(9,1,'Botble\\RealEstate\\Models\\Project','7km'),(9,1,'Botble\\RealEstate\\Models\\Property','12km'),(9,2,'Botble\\RealEstate\\Models\\Project','2km'),(9,2,'Botble\\RealEstate\\Models\\Property','12km'),(9,3,'Botble\\RealEstate\\Models\\Project','14km'),(9,3,'Botble\\RealEstate\\Models\\Property','15km'),(9,4,'Botble\\RealEstate\\Models\\Project','12km'),(9,4,'Botble\\RealEstate\\Models\\Property','13km'),(9,5,'Botble\\RealEstate\\Models\\Project','17km'),(9,5,'Botble\\RealEstate\\Models\\Property','7km'),(9,6,'Botble\\RealEstate\\Models\\Project','16km'),(9,6,'Botble\\RealEstate\\Models\\Property','8km'),(9,7,'Botble\\RealEstate\\Models\\Project','1km'),(9,7,'Botble\\RealEstate\\Models\\Property','13km'),(9,8,'Botble\\RealEstate\\Models\\Project','1km'),(9,8,'Botble\\RealEstate\\Models\\Property','12km'),(9,9,'Botble\\RealEstate\\Models\\Project','2km'),(9,9,'Botble\\RealEstate\\Models\\Property','10km'),(9,10,'Botble\\RealEstate\\Models\\Project','19km'),(9,10,'Botble\\RealEstate\\Models\\Property','20km'),(9,11,'Botble\\RealEstate\\Models\\Project','14km'),(9,11,'Botble\\RealEstate\\Models\\Property','6km'),(9,12,'Botble\\RealEstate\\Models\\Project','9km'),(9,12,'Botble\\RealEstate\\Models\\Property','5km'),(9,13,'Botble\\RealEstate\\Models\\Project','3km'),(9,13,'Botble\\RealEstate\\Models\\Property','18km'),(9,14,'Botble\\RealEstate\\Models\\Project','13km'),(9,14,'Botble\\RealEstate\\Models\\Property','1km'),(9,15,'Botble\\RealEstate\\Models\\Project','8km'),(9,15,'Botble\\RealEstate\\Models\\Property','3km'),(9,16,'Botble\\RealEstate\\Models\\Project','3km'),(9,16,'Botble\\RealEstate\\Models\\Property','16km'),(9,17,'Botble\\RealEstate\\Models\\Project','9km'),(9,17,'Botble\\RealEstate\\Models\\Property','7km'),(9,18,'Botble\\RealEstate\\Models\\Project','4km'),(9,18,'Botble\\RealEstate\\Models\\Property','9km'),(9,19,'Botble\\RealEstate\\Models\\Property','1km'),(9,20,'Botble\\RealEstate\\Models\\Property','20km'),(9,21,'Botble\\RealEstate\\Models\\Property','7km'),(9,22,'Botble\\RealEstate\\Models\\Property','7km'),(9,23,'Botble\\RealEstate\\Models\\Property','19km'),(9,24,'Botble\\RealEstate\\Models\\Property','12km'),(9,25,'Botble\\RealEstate\\Models\\Property','9km'),(9,26,'Botble\\RealEstate\\Models\\Property','1km'),(9,27,'Botble\\RealEstate\\Models\\Property','11km'),(9,28,'Botble\\RealEstate\\Models\\Property','8km'),(9,29,'Botble\\RealEstate\\Models\\Property','11km'),(9,30,'Botble\\RealEstate\\Models\\Property','20km'),(9,31,'Botble\\RealEstate\\Models\\Property','4km'),(9,32,'Botble\\RealEstate\\Models\\Property','2km'),(9,33,'Botble\\RealEstate\\Models\\Property','10km'),(9,34,'Botble\\RealEstate\\Models\\Property','12km'),(9,35,'Botble\\RealEstate\\Models\\Property','5km'),(9,36,'Botble\\RealEstate\\Models\\Property','20km'),(9,37,'Botble\\RealEstate\\Models\\Property','14km'),(9,38,'Botble\\RealEstate\\Models\\Property','11km'),(9,39,'Botble\\RealEstate\\Models\\Property','15km'),(9,40,'Botble\\RealEstate\\Models\\Property','16km'),(9,41,'Botble\\RealEstate\\Models\\Property','4km'),(9,42,'Botble\\RealEstate\\Models\\Property','7km'),(9,43,'Botble\\RealEstate\\Models\\Property','2km'),(9,44,'Botble\\RealEstate\\Models\\Property','3km'),(9,45,'Botble\\RealEstate\\Models\\Property','13km'),(9,46,'Botble\\RealEstate\\Models\\Property','17km'),(9,47,'Botble\\RealEstate\\Models\\Property','14km'),(9,48,'Botble\\RealEstate\\Models\\Property','5km'),(9,49,'Botble\\RealEstate\\Models\\Property','11km'),(9,50,'Botble\\RealEstate\\Models\\Property','9km'),(9,51,'Botble\\RealEstate\\Models\\Property','3km'),(9,52,'Botble\\RealEstate\\Models\\Property','7km'),(9,53,'Botble\\RealEstate\\Models\\Property','6km'),(9,54,'Botble\\RealEstate\\Models\\Property','20km'),(9,55,'Botble\\RealEstate\\Models\\Property','18km'),(9,56,'Botble\\RealEstate\\Models\\Property','5km'),(9,57,'Botble\\RealEstate\\Models\\Property','9km'),(9,58,'Botble\\RealEstate\\Models\\Property','20km'),(9,59,'Botble\\RealEstate\\Models\\Property','3km'),(9,60,'Botble\\RealEstate\\Models\\Property','5km'),(9,61,'Botble\\RealEstate\\Models\\Property','5km'),(10,1,'Botble\\RealEstate\\Models\\Project','15km'),(10,1,'Botble\\RealEstate\\Models\\Property','9km'),(10,2,'Botble\\RealEstate\\Models\\Project','10km'),(10,2,'Botble\\RealEstate\\Models\\Property','13km'),(10,3,'Botble\\RealEstate\\Models\\Project','1km'),(10,3,'Botble\\RealEstate\\Models\\Property','7km'),(10,4,'Botble\\RealEstate\\Models\\Project','19km'),(10,4,'Botble\\RealEstate\\Models\\Property','6km'),(10,5,'Botble\\RealEstate\\Models\\Project','11km'),(10,5,'Botble\\RealEstate\\Models\\Property','10km'),(10,6,'Botble\\RealEstate\\Models\\Project','4km'),(10,6,'Botble\\RealEstate\\Models\\Property','8km'),(10,7,'Botble\\RealEstate\\Models\\Project','16km'),(10,7,'Botble\\RealEstate\\Models\\Property','3km'),(10,8,'Botble\\RealEstate\\Models\\Project','16km'),(10,8,'Botble\\RealEstate\\Models\\Property','8km'),(10,9,'Botble\\RealEstate\\Models\\Project','18km'),(10,9,'Botble\\RealEstate\\Models\\Property','2km'),(10,10,'Botble\\RealEstate\\Models\\Project','7km'),(10,10,'Botble\\RealEstate\\Models\\Property','6km'),(10,11,'Botble\\RealEstate\\Models\\Project','6km'),(10,11,'Botble\\RealEstate\\Models\\Property','20km'),(10,12,'Botble\\RealEstate\\Models\\Project','10km'),(10,12,'Botble\\RealEstate\\Models\\Property','14km'),(10,13,'Botble\\RealEstate\\Models\\Project','10km'),(10,13,'Botble\\RealEstate\\Models\\Property','18km'),(10,14,'Botble\\RealEstate\\Models\\Project','15km'),(10,14,'Botble\\RealEstate\\Models\\Property','19km'),(10,15,'Botble\\RealEstate\\Models\\Project','3km'),(10,15,'Botble\\RealEstate\\Models\\Property','10km'),(10,16,'Botble\\RealEstate\\Models\\Project','11km'),(10,16,'Botble\\RealEstate\\Models\\Property','2km'),(10,17,'Botble\\RealEstate\\Models\\Project','18km'),(10,17,'Botble\\RealEstate\\Models\\Property','8km'),(10,18,'Botble\\RealEstate\\Models\\Project','9km'),(10,18,'Botble\\RealEstate\\Models\\Property','11km'),(10,19,'Botble\\RealEstate\\Models\\Property','9km'),(10,20,'Botble\\RealEstate\\Models\\Property','19km'),(10,21,'Botble\\RealEstate\\Models\\Property','5km'),(10,22,'Botble\\RealEstate\\Models\\Property','20km'),(10,23,'Botble\\RealEstate\\Models\\Property','19km'),(10,24,'Botble\\RealEstate\\Models\\Property','5km'),(10,25,'Botble\\RealEstate\\Models\\Property','5km'),(10,26,'Botble\\RealEstate\\Models\\Property','17km'),(10,27,'Botble\\RealEstate\\Models\\Property','5km'),(10,28,'Botble\\RealEstate\\Models\\Property','20km'),(10,29,'Botble\\RealEstate\\Models\\Property','12km'),(10,30,'Botble\\RealEstate\\Models\\Property','5km'),(10,31,'Botble\\RealEstate\\Models\\Property','14km'),(10,32,'Botble\\RealEstate\\Models\\Property','8km'),(10,33,'Botble\\RealEstate\\Models\\Property','1km'),(10,34,'Botble\\RealEstate\\Models\\Property','15km'),(10,35,'Botble\\RealEstate\\Models\\Property','10km'),(10,36,'Botble\\RealEstate\\Models\\Property','12km'),(10,37,'Botble\\RealEstate\\Models\\Property','11km'),(10,38,'Botble\\RealEstate\\Models\\Property','1km'),(10,39,'Botble\\RealEstate\\Models\\Property','16km'),(10,40,'Botble\\RealEstate\\Models\\Property','7km'),(10,41,'Botble\\RealEstate\\Models\\Property','9km'),(10,42,'Botble\\RealEstate\\Models\\Property','20km'),(10,43,'Botble\\RealEstate\\Models\\Property','8km'),(10,44,'Botble\\RealEstate\\Models\\Property','18km'),(10,45,'Botble\\RealEstate\\Models\\Property','19km'),(10,46,'Botble\\RealEstate\\Models\\Property','18km'),(10,47,'Botble\\RealEstate\\Models\\Property','13km'),(10,48,'Botble\\RealEstate\\Models\\Property','1km'),(10,49,'Botble\\RealEstate\\Models\\Property','3km'),(10,50,'Botble\\RealEstate\\Models\\Property','7km'),(10,51,'Botble\\RealEstate\\Models\\Property','8km'),(10,52,'Botble\\RealEstate\\Models\\Property','1km'),(10,53,'Botble\\RealEstate\\Models\\Property','12km'),(10,54,'Botble\\RealEstate\\Models\\Property','10km'),(10,55,'Botble\\RealEstate\\Models\\Property','7km'),(10,56,'Botble\\RealEstate\\Models\\Property','19km'),(10,57,'Botble\\RealEstate\\Models\\Property','6km'),(10,58,'Botble\\RealEstate\\Models\\Property','15km'),(10,59,'Botble\\RealEstate\\Models\\Property','9km'),(10,60,'Botble\\RealEstate\\Models\\Property','19km'),(10,61,'Botble\\RealEstate\\Models\\Property','1km'),(11,1,'Botble\\RealEstate\\Models\\Project','12km'),(11,1,'Botble\\RealEstate\\Models\\Property','12km'),(11,2,'Botble\\RealEstate\\Models\\Project','2km'),(11,2,'Botble\\RealEstate\\Models\\Property','15km'),(11,3,'Botble\\RealEstate\\Models\\Project','9km'),(11,3,'Botble\\RealEstate\\Models\\Property','16km'),(11,4,'Botble\\RealEstate\\Models\\Project','13km'),(11,4,'Botble\\RealEstate\\Models\\Property','9km'),(11,5,'Botble\\RealEstate\\Models\\Project','4km'),(11,5,'Botble\\RealEstate\\Models\\Property','1km'),(11,6,'Botble\\RealEstate\\Models\\Project','4km'),(11,6,'Botble\\RealEstate\\Models\\Property','7km'),(11,7,'Botble\\RealEstate\\Models\\Project','6km'),(11,7,'Botble\\RealEstate\\Models\\Property','6km'),(11,8,'Botble\\RealEstate\\Models\\Project','19km'),(11,8,'Botble\\RealEstate\\Models\\Property','3km'),(11,9,'Botble\\RealEstate\\Models\\Project','2km'),(11,9,'Botble\\RealEstate\\Models\\Property','19km'),(11,10,'Botble\\RealEstate\\Models\\Project','19km'),(11,10,'Botble\\RealEstate\\Models\\Property','18km'),(11,11,'Botble\\RealEstate\\Models\\Project','14km'),(11,11,'Botble\\RealEstate\\Models\\Property','20km'),(11,12,'Botble\\RealEstate\\Models\\Project','14km'),(11,12,'Botble\\RealEstate\\Models\\Property','4km'),(11,13,'Botble\\RealEstate\\Models\\Project','13km'),(11,13,'Botble\\RealEstate\\Models\\Property','9km'),(11,14,'Botble\\RealEstate\\Models\\Project','18km'),(11,14,'Botble\\RealEstate\\Models\\Property','8km'),(11,15,'Botble\\RealEstate\\Models\\Project','10km'),(11,15,'Botble\\RealEstate\\Models\\Property','8km'),(11,16,'Botble\\RealEstate\\Models\\Project','13km'),(11,16,'Botble\\RealEstate\\Models\\Property','4km'),(11,17,'Botble\\RealEstate\\Models\\Project','4km'),(11,17,'Botble\\RealEstate\\Models\\Property','10km'),(11,18,'Botble\\RealEstate\\Models\\Project','1km'),(11,18,'Botble\\RealEstate\\Models\\Property','17km'),(11,19,'Botble\\RealEstate\\Models\\Property','4km'),(11,20,'Botble\\RealEstate\\Models\\Property','6km'),(11,21,'Botble\\RealEstate\\Models\\Property','13km'),(11,22,'Botble\\RealEstate\\Models\\Property','18km'),(11,23,'Botble\\RealEstate\\Models\\Property','18km'),(11,24,'Botble\\RealEstate\\Models\\Property','20km'),(11,25,'Botble\\RealEstate\\Models\\Property','14km'),(11,26,'Botble\\RealEstate\\Models\\Property','9km'),(11,27,'Botble\\RealEstate\\Models\\Property','10km'),(11,28,'Botble\\RealEstate\\Models\\Property','8km'),(11,29,'Botble\\RealEstate\\Models\\Property','13km'),(11,30,'Botble\\RealEstate\\Models\\Property','3km'),(11,31,'Botble\\RealEstate\\Models\\Property','4km'),(11,32,'Botble\\RealEstate\\Models\\Property','17km'),(11,33,'Botble\\RealEstate\\Models\\Property','15km'),(11,34,'Botble\\RealEstate\\Models\\Property','9km'),(11,35,'Botble\\RealEstate\\Models\\Property','16km'),(11,36,'Botble\\RealEstate\\Models\\Property','16km'),(11,37,'Botble\\RealEstate\\Models\\Property','2km'),(11,38,'Botble\\RealEstate\\Models\\Property','4km'),(11,39,'Botble\\RealEstate\\Models\\Property','18km'),(11,40,'Botble\\RealEstate\\Models\\Property','18km'),(11,41,'Botble\\RealEstate\\Models\\Property','13km'),(11,42,'Botble\\RealEstate\\Models\\Property','16km'),(11,43,'Botble\\RealEstate\\Models\\Property','4km'),(11,44,'Botble\\RealEstate\\Models\\Property','14km'),(11,45,'Botble\\RealEstate\\Models\\Property','12km'),(11,46,'Botble\\RealEstate\\Models\\Property','9km'),(11,47,'Botble\\RealEstate\\Models\\Property','2km'),(11,48,'Botble\\RealEstate\\Models\\Property','14km'),(11,49,'Botble\\RealEstate\\Models\\Property','17km'),(11,50,'Botble\\RealEstate\\Models\\Property','5km'),(11,51,'Botble\\RealEstate\\Models\\Property','3km'),(11,52,'Botble\\RealEstate\\Models\\Property','17km'),(11,53,'Botble\\RealEstate\\Models\\Property','20km'),(11,54,'Botble\\RealEstate\\Models\\Property','14km'),(11,55,'Botble\\RealEstate\\Models\\Property','18km'),(11,56,'Botble\\RealEstate\\Models\\Property','15km'),(11,57,'Botble\\RealEstate\\Models\\Property','2km'),(11,58,'Botble\\RealEstate\\Models\\Property','9km'),(11,59,'Botble\\RealEstate\\Models\\Property','9km'),(11,60,'Botble\\RealEstate\\Models\\Property','17km'),(11,61,'Botble\\RealEstate\\Models\\Property','8km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','ti ti-wifi','published'),(2,'Parking','ti ti-parking','published'),(3,'Swimming pool','ti ti-pool','published'),(4,'Balcony','ti ti-building-skyscraper','published'),(5,'Garden','ti ti-trees','published'),(6,'Security','ti ti-shield-lock','published'),(7,'Fitness center','ti ti-stretching','published'),(8,'Air Conditioning','ti ti-air-conditioning','published'),(9,'Central Heating','ti ti-thermometer','published'),(10,'Laundry Room','ti ti-wash-machine','published'),(11,'Pets Allow','ti ti-paw','published'),(12,'Spa & Massage','ti ti-bath','published');
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(2,'Generali','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(3,'Temasek','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(4,'China Investment Corporation','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(5,'Government Pension Fund Global','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(6,'PSP Investments','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(7,'MEAG Munich ERGO','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(8,'HOOPP','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(9,'BT Group','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(10,'New York City ERS','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(11,'New Jersey Division of Investment','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(12,'State Super','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(13,'Shinkong','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL),(14,'Rest Super','published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,NULL);
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors_translations`
--

DROP TABLE IF EXISTS `re_investors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_investors_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_investors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors_translations`
--

LOCK TABLES `re_investors_translations` WRITE;
/*!40000 ALTER TABLE `re_investors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_investors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double unsigned NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `number_of_listings` int unsigned NOT NULL,
  `account_limit` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free Trial',0,1,0,1,1,1,0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'[[{\"key\":\"text\",\"value\":\"Limited time trial period\"}],[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(2,'Basic Listing',250,1,0,1,5,2,1,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'[[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"5 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(3,'Standard Package',1000,1,20,5,10,3,0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'[[{\"key\":\"text\",\"value\":\"5 listings allowed\"}],[{\"key\":\"text\",\"value\":\"10 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Priority support\"}]]'),(4,'Professional Package',1800,1,28,10,15,4,0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'[[{\"key\":\"text\",\"value\":\"10 listings allowed\"}],[{\"key\":\"text\",\"value\":\"15 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}]]'),(5,'Premium Package',2500,1,33,15,20,5,0,'published','2025-11-17 21:11:25','2025-11-17 21:11:25',NULL,'[[{\"key\":\"text\",\"value\":\"15 listings allowed\"}],[{\"key\":\"text\",\"value\":\"20 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}],[{\"key\":\"text\",\"value\":\"Priority listing placement\"}]]');
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_categories` (
  `project_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (1,4),(1,6),(2,5),(2,6),(3,3),(3,4),(4,3),(4,6),(5,5),(6,2),(6,3),(7,2),(7,3),(8,1),(8,5),(9,2),(10,1),(10,2),(10,3),(11,4),(11,6),(12,6),(13,1),(13,4),(13,6),(14,2),(15,6),(16,2),(16,3),(17,6),(18,1),(18,2);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_features` (
  `project_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
INSERT INTO `re_project_features` VALUES (1,1),(1,3),(1,5),(1,7),(1,9),(1,11),(2,1),(2,2),(2,3),(2,5),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,3),(3,4),(3,5),(3,6),(3,7),(3,10),(4,1),(4,2),(4,4),(4,5),(4,6),(4,9),(4,11),(4,12),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,9),(5,11),(5,12),(6,1),(6,4),(6,5),(6,6),(6,12),(7,1),(7,2),(7,3),(7,4),(7,5),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(8,1),(8,2),(8,4),(8,5),(8,6),(8,7),(8,8),(8,10),(8,11),(8,12),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,9),(9,10),(9,11),(9,12),(10,1),(10,2),(10,3),(10,5),(10,7),(10,8),(10,9),(10,10),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,9),(12,10),(12,11),(12,12),(13,1),(13,2),(13,6),(13,8),(13,10),(13,12),(14,1),(14,2),(14,3),(14,5),(14,6),(14,8),(14,9),(14,10),(15,1),(15,2),(15,3),(15,4),(15,5),(15,7),(15,8),(15,9),(15,11),(15,12),(16,1),(16,3),(16,5),(16,9),(16,12),(17,1),(17,3),(17,4),(17,5),(17,6),(17,7),(17,9),(17,10),(17,11),(17,12),(18,3),(18,9),(18,11),(18,12);
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investor_id` bigint unsigned DEFAULT NULL,
  `number_block` int DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_priority` int DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`),
  KEY `idx_re_projects_status` (`status`),
  KEY `idx_re_projects_location` (`location`),
  KEY `idx_re_projects_city_status` (`city_id`,`status`),
  KEY `idx_re_projects_state_status` (`state_id`,`status`),
  KEY `idx_re_projects_featured_sort` (`is_featured`,`featured_priority`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','At architecto incidunt culpa quis. Aspernatur nobis dolorum tempora corrupti nemo reiciendis. Minima velit numquam quia suscipit ut. Sit possimus labore veritatis voluptate.','Dicta vero neque magnam vero quam. Molestiae sit magni adipisci quis. Voluptatem repudiandae animi ut aspernatur nisi sapiente praesentium. Id quia qui et architecto mollitia dolore sed omnis. Quis voluptatem fugit impedit ut qui vel voluptatum. Maiores mollitia eos aut perspiciatis odit necessitatibus odit. Delectus facere quisquam consequuntur similique ut officia. Doloribus et rerum et temporibus ea. Velit beatae veritatis quia non eligendi voluptatem consectetur dolorem. Ut voluptates quibusdam earum dignissimos sunt sit et. Dolor et ad sed blanditiis. Maiores eius suscipit consequatur omnis ut nulla quasi ut. Ut sit necessitatibus earum dolorem rerum exercitationem sed.','[\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\"]',NULL,'867 Deion Bridge\nHermistonville, MI 03133',14,6,32,1988,1,0,'2015-07-15','1991-01-20',2348,8410,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.364492','-76.187944',NULL,4779,2,2,'LB9NP9',NULL),(2,'Sunshine Wonder Villas','Quia in qui velit minima iure animi. Praesentium culpa qui ipsam id reprehenderit ut similique voluptate. Corrupti omnis dolorum ad suscipit tempore ea. Tempore explicabo voluptatem fugit perspiciatis dolor illo enim.','Quis sit et asperiores est cumque itaque voluptatem. Non quidem non quasi aut non explicabo perferendis. Et distinctio id ut animi harum. Minima in enim itaque fugiat et fugiat. Corrupti quo consequuntur cumque reiciendis. Natus quae fugit doloribus omnis. Velit illo quam consequuntur cum. Mollitia maxime repellendus ea quibusdam facilis sint aut corrupti. Tempore similique quisquam ratione voluptas. Beatae aspernatur iusto omnis. Praesentium et ducimus voluptatem dignissimos rerum consequatur. A reprehenderit omnis et dolores.','[\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\"]',NULL,'9548 Alberta Ville Apt. 954\nNorth Carissa, SD 97339-2923',2,8,14,2952,1,0,'2018-01-28','1977-12-13',2757,6494,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.421108','-75.879604',NULL,3703,2,2,'TMSTWY',NULL),(3,'Diamond Island','Repellat quas id aut. Accusamus qui maiores optio qui at veritatis perferendis. Maxime quia repudiandae est temporibus. Non voluptatibus soluta eos mollitia fugiat repellat.','Voluptatem est aliquid blanditiis nisi in. Quasi vitae et dolor consequuntur nulla. Totam exercitationem quo ipsa. Neque possimus odit velit nostrum rem aut architecto. Explicabo voluptas laboriosam aut qui qui. Quam fuga earum repudiandae officiis explicabo voluptas. Dolores quasi nihil praesentium qui et. Cumque occaecati odio reprehenderit sit. Excepturi ipsum officiis earum. Aut repellat pariatur sunt. Recusandae non hic est nostrum autem.','[\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\"]',NULL,'230 Pacocha Mission\nDietrichview, RI 35129',11,10,21,708,1,0,'1992-03-25','1991-06-04',1777,11182,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.556308','-76.089957',NULL,1682,1,1,'8BQPSO',NULL),(4,'The Nassim','Similique quia sint qui illo alias repudiandae eos veniam. Debitis est animi exercitationem nostrum sed. Natus et ut dolorem ipsum omnis laudantium. Distinctio qui esse rem tempore ea consequuntur suscipit.','Repellat incidunt quis sapiente quod illum et. Accusamus non nisi possimus consequatur. Quidem id eius rerum neque numquam quo. Alias velit repellat et libero. Ducimus ea totam dolorem est minus omnis qui. Sit voluptas qui a eius sit. Maiores dignissimos est dignissimos voluptatem dolorem delectus blanditiis natus. Molestiae temporibus quis reprehenderit enim nihil nisi aliquam neque. Provident culpa tempora voluptatem eaque ut quia quia. Iusto dolore cum et saepe odit animi. Eos distinctio dolor recusandae quis laudantium consequatur atque. Consectetur eum tenetur commodi ad. Consequatur ipsam inventore a aut delectus. Assumenda qui et sed perferendis quia consectetur.','[\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\"]',NULL,'4394 May Mountains Apt. 022\nEast Ramon, TX 70013-4520',7,1,2,1541,1,0,'2008-11-11','2006-08-24',9119,15833,1,4,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','42.865968','-76.189466',NULL,2661,4,4,'TRATZN',NULL),(5,'Vinhomes Grand Park','Porro neque culpa est laboriosam voluptate. Vel in odit amet quam soluta voluptatem architecto iure. Dicta modi sit sed eveniet aliquam ea. Sint occaecati temporibus quas odit perferendis voluptatem.','Corrupti in voluptatem optio culpa ut voluptate est ea. Totam id tempora qui et quam accusamus voluptatibus voluptas. Quod et assumenda nihil non et debitis tempore. Velit voluptates non consequuntur sit. Accusamus quo aut sint id dolorem alias et. Esse occaecati aperiam molestiae ut natus id temporibus aut. Sed vero tenetur quo ad et dolor. Inventore nobis sunt tenetur facere voluptates quasi molestiae. Nobis ut odit qui doloribus vitae. Architecto omnis nam ut et. Velit ea et recusandae omnis. Nulla eum voluptatem quia nisi nulla.','[\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\"]',NULL,'45289 Edwin Landing\nPort Jeff, TN 26386-7874',6,6,7,3964,1,0,'2013-06-23','1987-10-23',6777,8427,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.17989','-76.053594',NULL,2964,1,1,'YQHFYL',NULL),(6,'The Metropole Thu Thiem','Vero nisi natus reprehenderit nam quos nisi at. Culpa deserunt inventore ut a. Itaque maiores totam eos sunt excepturi.','Ipsum quo sunt ut. Incidunt in aut sit temporibus in iste. Suscipit in recusandae molestias vel ut. Quaerat alias doloremque autem possimus non. Dicta fuga tempora tempora aliquid. Sed et vel consequatur ex earum officia. Velit vel cum optio quia suscipit.','[\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\"]',NULL,'235 Wisozk Tunnel\nLake Hilda, MT 24671-8048',9,1,16,4744,0,0,'1982-01-09','2005-02-27',6678,13385,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.880741','-75.115992',NULL,7446,2,2,'6J5WNA',NULL),(7,'Villa on Grand Avenue','Nisi sed vero consectetur dolor aut at quis. Omnis ipsam amet sunt sapiente earum totam natus. Dolore ea maiores maxime. Voluptatem repellat necessitatibus quidem voluptas totam deserunt asperiores et.','Eos distinctio itaque excepturi iste sed ducimus perferendis. Sunt aut nisi expedita ad rerum. Delectus et et quia. Blanditiis deserunt molestias aliquam. Ut et reiciendis quia voluptates expedita rerum. Iusto laudantium eos provident et eum non amet. Et repudiandae voluptas ex quisquam. Assumenda sed libero est qui in ipsum. Nisi id et sit consequatur. Beatae vero quo ad autem aut quasi.','[\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\"]',NULL,'47918 Leuschke Valleys\nJuniuston, DC 45741',11,4,3,1761,0,0,'2006-09-08','1990-03-20',5843,7720,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.910076','-76.176444',NULL,4791,2,2,'CXP1PB',NULL),(8,'Traditional Food Restaurant','Recusandae soluta cumque voluptatem facilis quas libero eius. Ducimus neque doloribus sit. Nesciunt itaque earum atque.','Aspernatur nisi aspernatur et quis. Sed consequuntur dolor ea commodi possimus. Et fuga soluta aut est dicta qui corporis. Et exercitationem a odit tempora perspiciatis laudantium reprehenderit. Sint rerum aliquid qui veniam. Est excepturi dolorem labore voluptas sed ullam deserunt. Quas adipisci ducimus dolore et ipsam reiciendis.','[\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\"]',NULL,'40794 Derick Trail\nHansenport, MS 97955-4497',9,2,28,962,1,0,'1986-11-16','2001-10-22',1080,5835,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.95705','-75.56757',NULL,5412,1,1,'B64FHS',NULL),(9,'Villa on Hollywood Boulevard','Amet odit excepturi consequatur non earum nesciunt doloribus. Repellat voluptatem voluptate quibusdam asperiores minus. Cum quis nobis ut sit et voluptas dolorem fugit. Sit ut nulla sit doloremque.','Voluptatem et quia aut quam sit. Praesentium atque repudiandae autem ut eos. Corrupti aut accusamus ut rerum dolores. Facere in a velit beatae voluptatem. Excepturi dignissimos voluptate doloremque voluptatum delectus ad. Illum reprehenderit voluptatem et. Sequi mollitia voluptatem praesentium totam quod omnis.','[\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\"]',NULL,'312 Hermann Drives\nTorpmouth, NY 70214',10,5,31,4471,1,0,'1984-09-26','1974-08-29',4230,11053,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.737812','-75.391017',NULL,2644,2,2,'QQHZTH',NULL),(10,'Office Space at Northwest 107th','Consequuntur a asperiores pariatur aspernatur natus. Voluptates quis aliquid est dolores natus quibusdam deleniti corporis. Est fugiat quaerat distinctio temporibus. Qui numquam fuga atque explicabo asperiores eveniet voluptatem.','Animi enim cupiditate reprehenderit animi in. Dolor voluptas molestias libero. Sint sunt sunt et. Natus ab sint autem et. Qui culpa alias placeat nostrum dignissimos eaque quos. Aut quis molestiae voluptate ut quia asperiores iusto qui. Iure aliquid reiciendis amet odit rem. Veritatis rerum voluptatum qui dicta voluptatem qui enim.','[\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\"]',NULL,'5351 Littel Centers Suite 506\nSmithton, HI 94166-3081',5,4,39,1645,1,0,'1991-05-07','2020-10-30',8710,12938,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.438535','-74.893023',NULL,7121,6,6,'ZAEKUK',NULL),(11,'Home in Merrick Way','Natus dolorem est vitae iusto. Velit cumque illum neque quae necessitatibus. Reiciendis ad quae tempore quis dignissimos hic voluptates. Voluptatibus nisi temporibus nisi sed adipisci aliquid vel dolorum.','Rem cum voluptas accusantium a minus voluptate quas. Aperiam eligendi culpa praesentium a autem aut voluptatem. Ab et velit et vitae. Saepe dignissimos voluptatem quis. Exercitationem aut distinctio aut animi modi temporibus quia animi. Quia atque veritatis nihil quisquam voluptas. Explicabo et quidem nesciunt quod ut dolor dolore. Consequatur consequatur recusandae architecto sit ullam aut minima. Porro molestias ut dolor illo fugit sint tenetur.','[\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\"]',NULL,'31618 Schultz Port\nPort Asiaport, NM 26665',14,4,13,4858,1,0,'2001-03-12','1979-06-16',9689,13556,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','42.577937','-75.266969',NULL,5891,5,5,'UJVEM3',NULL),(12,'Adarsh Greens','Quia dignissimos qui blanditiis ipsam in. Odit tempore est voluptatibus exercitationem amet doloribus aut.','Deserunt sapiente dolore et aliquam quasi commodi illo. Id praesentium repellendus voluptas tempore quaerat. Temporibus placeat nostrum esse cum laudantium. Rerum praesentium vitae blanditiis. Dolor a dolor sint in voluptas. In veniam officia cum atque est harum est. Esse et et repellendus. Cum nam laudantium ut ratione officia non. Voluptas harum nostrum ipsa et iste et.','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\"]',NULL,'94955 Greenfelder Village\nYundthaven, CA 82986-4810',7,7,20,986,0,0,'1985-03-06','1996-04-26',2779,6776,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.743234','-75.344336',NULL,8150,5,5,'Q12RO5',NULL),(13,'Rustomjee Evershine Global City','Rerum enim ex laborum iste cumque cum tempore. Repellendus quasi enim et facere. Necessitatibus sapiente quae eveniet blanditiis quis ipsam.','Expedita molestiae provident praesentium qui ut voluptatem totam. Qui eos corrupti magnam nam. Nemo hic possimus dicta id qui ducimus et iste. Repudiandae occaecati et nihil omnis dolorem qui. Sit iusto provident sit. Eos molestiae distinctio fugit repellat dolorem et minus. Cumque recusandae vitae nihil facere delectus nostrum. Tenetur suscipit ut cum a. Iure voluptas unde dolore inventore aliquid modi.','[\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\"]',NULL,'9630 Charlene Dam Suite 873\nNew Rosariostad, NH 81934-7148',12,8,43,1477,1,0,'1976-06-16','1989-09-02',3762,12434,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','43.634012','-76.48664',NULL,9137,6,6,'1JDOWH',NULL),(14,'Godrej Exquisite','Fugiat deleniti ipsum nostrum aut ut ea. Sunt ea deleniti qui. Praesentium nam voluptatem quis dicta labore repellat debitis. Voluptatibus neque et cupiditate ad occaecati voluptatibus.','Autem quas repellendus veritatis distinctio alias. Saepe et consequatur sit beatae porro vel facilis. Labore et aspernatur natus illo ut quos. Sequi rerum quia in porro qui pariatur. Repellat adipisci est facere et dicta voluptatibus. Corrupti occaecati dolor deleniti. Quidem non beatae ullam. Similique laborum quaerat consequatur quos ipsa. Dignissimos ducimus accusantium voluptatum rerum ipsa. Aperiam quia nihil quod.','[\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\"]',NULL,'67681 Luciano Ports\nFlatleyville, MO 61724-1426',8,3,45,1495,0,0,'2004-10-25','1992-12-14',2482,6597,1,3,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:30','2025-11-17 21:11:30','42.599265','-75.418277',NULL,4848,3,3,'CSU2NP',NULL),(15,'Godrej Prime','Dolores a et aliquid quisquam. Cum pariatur ut quis quidem autem. Porro aut voluptatum voluptas sapiente. Quis officia et aliquid id sed.','Itaque voluptatibus excepturi dolorem et qui itaque est. Sit rem est deleniti nisi repellendus. Reprehenderit fuga et necessitatibus non id maiores aut. Ea et officiis sunt cupiditate. Earum hic quaerat tenetur esse doloremque veritatis pariatur voluptatibus. Qui ut voluptas sapiente ut aut exercitationem quia. Sequi rem aut est temporibus velit autem molestiae. Nisi nesciunt dolorum ipsa sunt. Error ex et molestias dolor similique. Vel dolores omnis sit officia quos reiciendis.','[\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\"]',NULL,'102 Wintheiser Pines Apt. 938\nSouth Taryn, NY 56619-0658',3,9,9,2957,0,0,'1997-08-30','1979-11-15',3661,4810,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:31','2025-11-17 21:11:31','43.877356','-75.142401',NULL,3223,5,5,'HRV9LW',NULL),(16,'PS Panache','Repudiandae ex rem cum voluptatem quidem. Fugiat maiores architecto consequatur ea inventore eligendi.','Aliquam ut et sint eligendi aut. Modi temporibus laboriosam nesciunt quis. Ipsam dolores eaque eligendi eos molestiae enim inventore. Labore asperiores consequatur iusto blanditiis voluptatem et ea sed. Et error amet quaerat ut. Commodi rerum nihil quo autem aspernatur sunt. Aut magnam voluptas laborum ad expedita iste reprehenderit. Dolore modi est nisi voluptas aut non voluptatibus saepe. Nesciunt tenetur qui saepe optio. Blanditiis sunt dolorem blanditiis qui.','[\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\"]',NULL,'1120 Cierra Neck\nPort Bethel, OH 81560',12,10,13,2873,1,0,'2013-11-22','1983-06-20',2673,9272,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:31','2025-11-17 21:11:31','43.692605','-76.324739',NULL,1866,2,2,'R2YCBX',NULL),(17,'Upturn Atmiya Centria','Qui at minima accusantium dolores enim. Assumenda reprehenderit deserunt pariatur minus aut ullam error. Numquam vel porro et nesciunt assumenda totam non commodi. Mollitia sit sunt sit sunt.','Nam ut veniam repellendus quia. Et enim dolor tempore omnis. Voluptatem aliquid ea qui neque. Aut fugit quod adipisci optio. Minus praesentium dicta quidem quo. Ullam cumque corporis omnis voluptas veniam voluptate adipisci. Et eaque aspernatur cum sint consequatur dignissimos. Quae dicta sed autem enim incidunt quae. Consequuntur facilis deserunt vel sit quos. Adipisci ab necessitatibus rerum id. Nisi modi qui accusantium veritatis doloremque non ipsa. Illo doloribus libero magni.','[\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\"]',NULL,'2480 Padberg Land Apt. 687\nSouth Robbie, NV 85763',13,7,4,4962,0,0,'1995-06-23','1994-09-23',846,6585,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:31','2025-11-17 21:11:31','42.570063','-74.935225',NULL,197,5,5,'P250CV',NULL),(18,'Brigade Oasis','Totam labore corporis a impedit doloremque. Ullam minima reiciendis dolore. Iste velit non ut veniam.','Nihil odio omnis provident veniam sint. Quam explicabo vitae nulla voluptatem. Velit ipsa ducimus ipsum delectus. Dolorum qui repudiandae eius non sed. Consequatur sint excepturi explicabo architecto atque similique sit. Eum repudiandae debitis debitis facilis cumque aperiam. Corporis quidem maiores doloremque eius pariatur aut. Autem ipsam laborum accusamus non aspernatur nisi. Quidem cupiditate totam quisquam odit. Quisquam vero ut occaecati. Minus sint nesciunt enim aspernatur alias quidem in cumque. Vel accusantium et excepturi. Adipisci expedita rerum possimus. Eos et consequatur dignissimos mollitia accusamus qui.','[\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\"]',NULL,'371 Toy Ramp Apt. 364\nWest Jerome, WA 61211',13,9,38,3395,0,0,'2002-10-05','2000-12-19',6399,13204,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-11-17 21:11:31','2025-11-17 21:11:31','43.399198','-75.688563',NULL,8010,1,1,'DJWSCM',NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_projects_id`),
  KEY `idx_re_projects_trans_proj_lang` (`re_projects_id`,`lang_code`),
  KEY `idx_re_projects_trans_location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` int DEFAULT NULL,
  `number_bathroom` int DEFAULT NULL,
  `number_floor` int DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_priority` int DEFAULT '0',
  `city_id` bigint unsigned DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `reject_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`),
  KEY `idx_re_properties_status` (`status`),
  KEY `idx_re_properties_location` (`location`),
  KEY `idx_re_properties_city_status` (`city_id`,`status`),
  KEY `idx_re_properties_state_status` (`state_id`,`status`),
  KEY `idx_re_properties_featured_sort` (`is_featured`,`featured_priority`,`created_at`),
  KEY `idx_re_properties_moderation_status` (`moderation_status`),
  KEY `idx_re_properties_expire_date` (`expire_date`),
  KEY `idx_re_properties_type` (`type`),
  KEY `idx_re_properties_never_expired` (`never_expired`),
  KEY `idx_re_properties_mod_status` (`moderation_status`,`status`),
  KEY `idx_re_properties_price` (`price`),
  KEY `idx_re_properties_square` (`square`),
  KEY `idx_re_properties_bedroom` (`number_bedroom`),
  KEY `idx_re_properties_bathroom` (`number_bathroom`),
  KEY `idx_re_properties_floor` (`number_floor`),
  KEY `idx_re_properties_project_id` (`project_id`),
  KEY `idx_re_properties_author` (`author_id`,`author_type`),
  KEY `idx_re_properties_country_id` (`country_id`),
  KEY `idx_re_properties_currency_id` (`currency_id`),
  KEY `idx_re_properties_active_featured_sort` (`moderation_status`,`status`,`expire_date`,`never_expired`,`is_featured`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','sale','Velit magnam qui et aut laborum. Debitis dolorem sit ducimus dolore.','Reiciendis illo expedita ex qui quos reiciendis. Possimus veritatis eaque cumque et dolorem aut saepe. Exercitationem accusantium provident dolorum ducimus est non rem sed. Recusandae iusto in nihil esse quos iusto. At et itaque sint corporis qui. Odio ut odio reprehenderit eius corporis. Qui nihil quam nihil cum magnam dolor. Porro eaque ut occaecati nam consequuntur. Maxime architecto quia debitis enim reprehenderit quis blanditiis. Ut qui maiores omnis sed. Et est exercitationem perferendis enim. Sint et similique quia molestiae reiciendis enim. Saepe atque sint dolor quibusdam quibusdam necessitatibus dolorem.','118 Allie Ways\nNew Kianberg, KY 46498','[\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,5,9,40,260,252000.00,NULL,1,0,4,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-04',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.108728','-75.611971',NULL,92798,4,4,'S3TVIB',NULL),(2,'Lavida Plus Office-tel 1 Bedroom','rent','Ipsam iste corrupti id. Voluptatibus beatae vero ex deserunt repellat. Aut inventore molestias praesentium. Aut ab dolores id commodi est sed.','Eos dolores voluptatibus ut. Quod magni delectus rerum vero sunt ex. Aliquid voluptate rem vitae incidunt cumque. Quisquam beatae qui ducimus aperiam est officia. Nulla dicta facilis in sapiente nemo quia. Necessitatibus porro aut beatae dolores libero repellat nulla. Nemo dolorum est est illum et similique. Voluptate quos architecto consequatur voluptatibus. Placeat ut blanditiis sit modi possimus et.','6978 Kennith Place\nWellingtonburgh, MN 41725-7021','[\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',4,7,10,99,710,368600.00,NULL,0,0,1,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-25',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.693576','-76.057148',NULL,71817,1,1,'RXIWGP',NULL),(3,'Vinhomes Grand Park Studio 1 Bedroom','sale','Veritatis et accusantium omnis est iusto et. Amet porro rem similique ullam modi est. Et maiores blanditiis ut id. Qui nulla fugiat aut ipsum aut aut.','Et cumque hic consequatur ipsam. Nesciunt sit eaque repudiandae corporis possimus sit sit. Et dolore quis vel eum voluptate aut vel. Iure necessitatibus magni non. Possimus ut et atque consequatur quasi repudiandae quam. Aspernatur excepturi illo fuga magni cumque eos numquam saepe. Molestias quia vitae molestiae optio hic nihil accusamus. Voluptas qui error fuga veritatis. Cumque assumenda quos distinctio laudantium tempore ut eius vel. Labore sed error praesentium aut tempore quo neque. Et quis maiores eveniet deserunt est consequuntur. Qui aut et quia voluptas dolor reiciendis ea.','51824 Upton Terrace Apt. 785\nLorenzmouth, NJ 59339','[\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,1,2,32,160,681100.00,NULL,1,0,1,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-16',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.18562','-76.51463',NULL,31300,1,1,'FRCTS0',NULL),(4,'The Sun Avenue Office-tel 1 Bedroom','rent','Et vero dolorem consequatur qui voluptatem ad eos eveniet. Et accusantium sit et. Vel esse vel ipsa numquam quis ducimus. Voluptatem corrupti occaecati aut ad corporis.','Id laudantium sunt illo molestias sunt qui animi. Voluptatem natus ullam quo quidem dolores nisi velit. Ea quam ut molestiae cupiditate maxime consequatur. Illum dolore porro nesciunt labore consequatur nihil repudiandae. Neque delectus nihil et quaerat. Corporis sed placeat nihil ut ut vitae dignissimos. Laboriosam quo ut similique exercitationem consectetur et. Sed praesentium eos id fugit ad. Id cum voluptatum accusamus distinctio quam.','466 Vicky Oval\nWest Esta, FL 74609-6881','[\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,7,10,62,830,596400.00,NULL,1,0,1,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-02',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.929276','-74.983992',NULL,96865,1,1,'CBXSTE',NULL),(5,'Property For sale, Johannesburg, South Africa','sale','Id commodi ratione enim. Qui ut vero minus quam. Qui sequi adipisci modi et praesentium. Repellendus unde unde quis est ea atque est quisquam. Et placeat dolor ut.','In voluptatum suscipit nemo laboriosam nihil. Perferendis dolores soluta pariatur asperiores fugiat sunt. Ex et ut repellendus numquam aperiam sit rerum. Et assumenda aliquid qui aut officia. Ea quos laborum nobis maxime laudantium molestiae voluptates beatae. Rerum sapiente amet consequatur non impedit laudantium dolorem. Ipsa eum soluta officiis blanditiis molestiae ut perferendis. Commodi quos et nostrum doloribus facilis molestias quas. Id excepturi sed et enim sit provident et. Molestiae sit ea recusandae. Dolorem nisi rerum qui expedita quasi non. Dignissimos molestiae aut at quaerat sed veniam rerum voluptatem. Impedit nihil consequatur qui nulla animi nam.','5394 Heloise Courts\nNew Hubertmouth, AZ 56914-1086','[\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,7,4,71,440,355300.00,NULL,0,0,1,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-18',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.593128','-76.303892',NULL,80268,1,1,'XIV2A6',NULL),(6,'Stunning French Inspired Manor','sale','Error quia ut temporibus quia saepe. Magni provident maxime minus magni. A eum quam omnis.','Est sapiente recusandae quas numquam. Adipisci qui qui vel tempora aliquam dolores. Illo nobis aliquid iure voluptas reprehenderit incidunt. Molestiae quam earum tenetur sit dolores labore magnam dolorum. Quaerat nobis numquam quod labore. Et ea corporis ea nemo accusantium aliquid. Quidem atque a sed alias voluptatibus. Placeat occaecati neque sit consectetur. Doloremque fugit accusamus fuga quisquam repellat quae. Dignissimos eos sed sit accusamus perspiciatis. Expedita unde maxime consequuntur. Rerum soluta rerum iste mollitia consectetur natus eligendi. Vitae cupiditate atque tempore quia.','80241 Leonel Pine Apt. 780\nNorth Ethan, ME 80286-6440','[\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,7,5,93,700,236400.00,NULL,1,0,2,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-17',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.651696','-75.048132',NULL,12241,2,2,'BSVLTP',NULL),(7,'Villa for sale at Bermuda Dunes','sale','Ea veritatis provident quo odio sequi. Consequatur voluptatem odit sed unde. Enim ab veritatis sint et quisquam quas qui. Tempora expedita quibusdam culpa itaque.','Dolore beatae sint iste quasi qui eum quia. Quia dolore accusantium nam commodi. Omnis voluptatem voluptates ut culpa consectetur. Ut molestiae aperiam rerum hic eos fugiat sit. Iste autem beatae et ut. Qui sit ut ea et id est. Atque sunt ut quidem. Consequatur quos nobis quidem. Veritatis voluptatibus beatae exercitationem earum temporibus.','1793 King Loop Apt. 338\nWest Johnathon, CT 79783-0799','[\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,4,1,66,10,593000.00,NULL,1,0,3,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-30',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','44.006448','-74.883194',NULL,68459,3,3,'UPGSNH',NULL),(8,'Walnut Park Apartment','sale','Aut ipsum ea tempora officiis modi illum. Fugiat est amet quidem provident omnis dignissimos ea. Quo eum sit quia voluptatem nihil dolor sit.','Enim et nesciunt iure adipisci. Fugiat praesentium laudantium nam est adipisci quia voluptas. Animi qui molestias praesentium quis alias. Est sint omnis quasi voluptatem dolorum laudantium qui. Dolorum quae voluptatem occaecati deleniti ab ipsa. Ullam repellat accusamus harum facilis. Et et illum atque qui et perspiciatis. Voluptatem iure sed veritatis a aut hic ab. Asperiores occaecati distinctio animi cumque. Est numquam tenetur eum. Earum voluptates incidunt labore optio alias totam. Rem ipsa eum reiciendis dolorem dolores dolore deleniti.','606 Turcotte Ports\nWest Nicolas, CA 03697','[\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,4,8,67,870,454100.00,NULL,1,0,5,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-03',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.029159','-75.390137',NULL,79253,5,5,'ZWZ49R',NULL),(9,'5 beds luxury house','sale','Voluptas voluptas similique quod nemo qui. A id cupiditate aut aliquam tenetur. Sit est sit in est quia. Odio maxime aut velit deleniti ducimus.','Est quae quis qui sit architecto. Veritatis sint reprehenderit veritatis illum. Nesciunt eveniet eius dicta iusto ipsa. Sit aperiam numquam molestias. Repellat nihil quam adipisci dolore debitis iure praesentium. Autem sint non et quis. Dignissimos aliquam unde quo non perspiciatis culpa facere. Autem pariatur enim et in praesentium debitis maxime sunt. Quo aut ut dignissimos tempora aut eius explicabo. Aut eveniet aut pariatur sit dolores eaque ex aliquid. Aspernatur aut asperiores tempore quidem quisquam ipsam ut dolorem.','15505 Terrill Springs Apt. 263\nPeterfort, GA 27826-6364','[\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,5,2,43,1000,997100.00,NULL,1,0,3,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-31',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.918561','-75.426381',NULL,85859,3,3,'TOPM4K',NULL),(10,'Family Victorian \"View\" Home','sale','Est fuga nobis accusamus culpa suscipit aut cupiditate. Aperiam id velit repudiandae officia deleniti iure. Quis velit quia laboriosam est voluptatum esse qui.','Molestiae et tenetur laboriosam. Necessitatibus facilis officia eum. Sed temporibus dolores sit vel aut. Possimus et beatae deserunt nihil perspiciatis. Alias ab cumque officiis qui illo repellendus. Reiciendis quasi maiores repellat et aspernatur laboriosam aliquam iusto. Asperiores error facilis cupiditate et sint. Velit sed optio rem officiis perspiciatis aliquam sint. Enim velit sit voluptatem ut. Commodi dolorem eos doloribus.','63973 Nikolaus Extensions Suite 660\nEast Nedra, HI 71772','[\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,2,6,18,90,258200.00,NULL,1,0,6,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-26',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.874224','-75.685077',NULL,50638,6,6,'Q53L9X',NULL),(11,'Osaka Heights Apartment','sale','Modi saepe aut omnis quis eveniet aliquid. Soluta aut eos praesentium quia voluptatibus dolorum. Rerum tempore blanditiis voluptate minus voluptas ut velit quidem. Temporibus cum occaecati quam consectetur blanditiis quae.','Sed accusantium consequatur voluptas delectus illum inventore. Voluptas voluptatum vero ducimus doloribus sed impedit. In reiciendis quis perferendis voluptas eum quibusdam laudantium. Perferendis quia voluptatem quae praesentium error molestiae. Porro nihil quod aspernatur. Consequatur aut id accusantium occaecati est. Harum ut praesentium est occaecati cupiditate laborum. Labore ipsa in quisquam earum. Quia eius molestiae est dolore praesentium rerum qui. Optio expedita beatae facilis occaecati. Et nostrum aut placeat id non expedita hic.','389 Victor Camp Suite 404\nSouth Tiffany, ME 38987-5989','[\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,7,10,77,20,193400.00,NULL,0,0,4,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-16',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.615934','-74.815558',NULL,72268,4,4,'H0XDGJ',NULL),(12,'Private Estate Magnificent Views','sale','Quis nobis voluptates sit quam earum est nobis. Natus veniam aut sint sit rem. Et quae vel eos unde. Nemo enim nostrum quos ut itaque quasi reiciendis.','Et iusto molestiae et quia maiores dolores cumque. Autem reprehenderit beatae sit dolore deleniti quis modi. Libero quo beatae quibusdam ut non. Sint et necessitatibus consectetur laudantium. Sapiente cum aliquid qui cupiditate vel impedit et tempora. Illum odio eligendi facilis sit vero deserunt libero. Expedita perspiciatis cupiditate laboriosam eius velit quisquam occaecati animi. Iure pariatur inventore inventore cumque quaerat aliquam et. Maiores sed harum eum et voluptatem in.','7611 Domenica Port Apt. 418\nJodytown, CT 88978','[\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,4,9,30,720,931800.00,NULL,0,0,2,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-21',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.293066','-76.008502',NULL,40512,2,2,'FKLWTA',NULL),(13,'Thompson Road House for rent','sale','Harum debitis autem et qui recusandae eligendi. Quam aut qui voluptas tempora quis.','Est aperiam error quae. Ea nihil harum aut quos. Delectus vel numquam culpa omnis dolor animi officia. Minus tenetur voluptatem ut quibusdam repellendus quos eum maiores. Non quae cumque cupiditate expedita aliquam rerum consequatur aspernatur. Perspiciatis architecto est perspiciatis id in aut deserunt necessitatibus. Et adipisci a consequatur modi. Nostrum voluptas dolores impedit deserunt. Ut esse sint impedit quia eveniet culpa. Incidunt dolores ipsam et voluptatum totam reprehenderit quia. Beatae voluptas fugit deserunt voluptates architecto beatae. Et eveniet hic nobis earum aut dicta earum.','644 Braun Squares Apt. 787\nSouth Tracey, CT 04788','[\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,7,8,4,870,336200.00,NULL,1,0,1,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-30',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.89513','-75.578559',NULL,78220,1,1,'GCDKH7',NULL),(14,'Brand New 1 Bedroom Apartment In First Class Location','sale','Magnam eveniet maxime adipisci rerum et corporis. Dolor et et asperiores et. Dolor est dicta error qui dolore.','Ipsa quas odit fugit doloremque. Illo laborum quia nobis aut inventore ratione commodi. Perspiciatis molestiae nobis illo inventore autem vel. Quia velit amet quia aut nemo. Error odio voluptas blanditiis ducimus. Quis porro ea ipsa quae. Temporibus omnis dolor repudiandae voluptates eveniet minima. Dolorem voluptas commodi aut commodi facilis aut qui eum.','6370 Kelsie Prairie\nYostburgh, TX 71833-3169','[\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,5,2,91,600,95600.00,NULL,0,0,3,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-03',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.219984','-75.833839',NULL,92269,3,3,'15L2WF',NULL),(15,'Elegant family home presents premium modern living','rent','Ea cumque repudiandae consectetur quis. Ratione doloremque in totam quo enim nisi voluptas. Ad ea velit quis.','Sed provident excepturi consequatur blanditiis vitae. Aut autem doloremque eveniet rerum laborum ex quaerat. Et magni quo quos illo. Quia velit esse et. Inventore consequatur et et ut. Reprehenderit ut illo eum quod et. Dolor et aperiam quidem impedit. Magnam qui repellat at dolor odit facere. Dicta qui molestiae facere tenetur. Consequuntur odit dolores illo culpa impedit numquam. Voluptates numquam eum unde voluptatem dolorem dicta ad doloremque. Esse enim vitae eius consequatur velit soluta eos. Eius vitae esse aut delectus dolorem. Dolorum odit est quia excepturi deserunt aut est.','144 Jasper Crossroad\nKiehnhaven, VT 42031','[\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,8,1,67,70,730300.00,NULL,1,0,5,'month','renting',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-20',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.721445','-75.596072',NULL,37254,5,5,'721U9I',NULL),(16,'Luxury Apartments in Singapore for Sale','rent','Veniam ut earum laboriosam voluptatum. Facere rem sed ut saepe quibusdam pariatur aut. Corporis non ipsum porro et error. Assumenda hic neque tempore repellendus fugit quos. Adipisci qui rerum expedita itaque sit.','Ipsa qui quia enim est ex consectetur officiis sequi. Saepe reprehenderit nemo sit nemo dolorum modi dolores. Facere quae et ipsam. Autem nihil dolor quo cumque accusantium eos. Fuga omnis repellat tenetur et sequi quia ipsum et. Sit voluptatem numquam ut enim soluta. Omnis sint quo consectetur id recusandae cumque rerum. Quo voluptas ipsam et eveniet veniam incidunt. Tempore eaque assumenda corporis. Et quia est rem consequatur accusamus consequatur excepturi. Sed id tenetur vero fuga quia magnam ea et. Et accusantium omnis neque ipsum ad ipsam corrupti et. Qui adipisci et est quas quo. Eaque quia rerum eum nesciunt corrupti dolorum.','71301 Bergnaum Creek Apt. 296\nLake Don, MT 81481','[\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,3,9,46,980,26400.00,NULL,1,0,4,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-18',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.855478','-75.251023',NULL,89493,4,4,'UI3I1I',NULL),(17,'5 room luxury penthouse for sale in Kuala Lumpur','rent','Sapiente placeat harum et. Et dolor voluptatem explicabo et mollitia optio harum. Aut nobis quis velit et quis nihil. Hic vel maxime aut quo adipisci fuga aliquam impedit.','Voluptatum excepturi praesentium sit labore laudantium voluptate. Minus et et quia quis dolore laboriosam commodi. Delectus inventore ipsa asperiores necessitatibus ipsum est et. Deleniti qui eum ducimus facilis id consectetur libero dolorum. Asperiores sunt qui impedit dolor. Aspernatur laborum expedita rerum repellat sit. Voluptatibus nam beatae ratione neque.','7216 Schinner Station Suite 778\nDylanbury, DC 90808-6594','[\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,8,3,46,120,207100.00,NULL,0,0,5,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-29',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.237494','-75.766097',NULL,87153,5,5,'TRDBK4',NULL),(18,'2 Floor house in Compound Pejaten Barat Kemang','sale','Dolor tempore molestias dicta vel at voluptas. Nesciunt sed culpa fugiat. Esse deserunt dolores eaque aliquid ad ex. Aut amet aut corporis dolorem dolor corporis.','Eos magnam in nemo possimus atque. Dolores quis omnis sint vero et autem. Aut sequi earum nemo non quam. Quas in ipsa et nam ratione modi et vel. Ad sunt rerum recusandae ab qui alias. Excepturi culpa assumenda neque voluptatem ducimus. Nihil ut distinctio quisquam inventore occaecati. Dolorem voluptatem error modi quibusdam. Officia est sed magni vero. Sed eos animi unde similique quidem ex. Unde dolores maxime iste voluptatem perferendis possimus culpa. Nesciunt non hic et maxime quis cumque. Suscipit minima facilis quia qui placeat. Enim sed consequatur molestiae repudiandae est eum.','46083 Rath Valleys Apt. 340\nBrendenview, KS 87517','[\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,8,8,78,840,262900.00,NULL,0,0,2,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-27',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.843351','-75.792648',NULL,8926,2,2,'6ER42B',NULL),(19,'Apartment Muiderstraatweg in Diemen','sale','Ut labore voluptatem aliquid maiores. Alias et doloribus est natus quasi aut eaque officia. Sed rerum possimus rerum.','Ducimus suscipit quod vel voluptatum vel. Laboriosam quidem possimus labore doloremque laboriosam cumque soluta. Debitis repellendus laborum iure. Eos animi hic et cumque vitae reprehenderit corrupti neque. Distinctio commodi deleniti qui beatae est incidunt id. Qui itaque veniam doloremque omnis. Atque voluptatibus aut sint dicta non. Accusamus quam numquam et quae nisi aut maiores qui. Eveniet quia sed consequatur rem odio voluptatem rem dolorum. Fuga vero necessitatibus quos voluptates.','850 Grant Corners Suite 633\nSamsonland, NM 30868','[\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,8,2,93,910,73400.00,NULL,1,0,4,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-21',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.585574','-76.110212',NULL,54612,4,4,'YDQIFB',NULL),(20,'Nice Apartment for rent in Berlin','rent','Nulla recusandae est nesciunt laborum sint quisquam. Cumque in corrupti ab accusantium.','Consequatur voluptatibus aut accusamus iure esse. Tempore libero iure eveniet quo ab voluptatem repudiandae. Dolores voluptatibus quos architecto consectetur eius tenetur laboriosam. Et est eligendi repudiandae iste ut incidunt placeat inventore. Qui sed minima autem et ea. Maxime odit at hic eaque iure. Et tempora dolore itaque. Et nostrum aut veniam ipsum quam adipisci amet. Hic veniam voluptatem quis unde. Rerum molestiae ab voluptas a quae. Cum occaecati quasi nemo id non adipisci. Provident vel quia ut ea esse ratione tenetur. Dolores facere non officiis voluptatem. Iure rem error eum.','78567 Russel Glens Apt. 098\nOdachester, MI 07246-3000','[\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,9,5,17,580,226300.00,NULL,1,0,2,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-13',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.183018','-75.232509',NULL,47637,2,2,'KYPCPG',NULL),(21,'Pumpkin Key - Private Island','rent','In quia qui beatae eaque voluptatibus rem et aliquid. Sint adipisci quo suscipit. Iste fugit suscipit eos libero reprehenderit. Modi placeat labore debitis ut labore.','Sint ipsam quia fugit voluptates. Maxime a ut aspernatur. Accusantium consequatur expedita quaerat consequatur rem quo sit. Ea eveniet nisi sed sed fugit. Ad saepe doloremque nihil unde rerum. Voluptas possimus accusamus beatae veritatis fugit nemo. Nihil necessitatibus sunt saepe placeat. Id voluptas aut ex et eum. Nostrum laboriosam ut sit eaque praesentium rem eveniet maiores. Saepe non velit quam nulla adipisci culpa quasi. Eos et dolorem assumenda ex. Dolorem in voluptas sit suscipit quas placeat numquam ea. Eius omnis aut voluptatibus sunt totam pariatur.','56106 Cesar Brooks\nEast Lurline, WY 06065','[\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,2,10,7,240,275600.00,NULL,1,0,5,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-24',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.90821','-75.04479',NULL,48803,5,5,'SKS6EG',NULL),(22,'Maplewood Estates','rent','Iusto occaecati quo minima aliquid ea recusandae vel. Aperiam sapiente in molestiae est et ut. Perspiciatis iste vero ut id accusamus nihil.','Qui ipsa voluptatem nulla perferendis sequi. Saepe optio aliquid quis eveniet possimus molestiae. Quasi et quae suscipit eum ut accusantium quibusdam. Pariatur qui voluptas in mollitia. Voluptate atque magnam dolor voluptas et inventore. Cum et beatae deleniti ipsum. Dolores enim vero et. Necessitatibus exercitationem magni enim deserunt repudiandae eum. Molestias consequuntur qui iste laudantium. Sit voluptatem eos soluta sunt inventore.','8148 Hanna Club\nDaishashire, MI 78342-6311','[\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,6,8,34,960,844700.00,NULL,1,0,5,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-29',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.033943','-75.43391',NULL,39001,5,5,'EYHHIQ',NULL),(23,'Pine Ridge Manor','rent','Enim aut officia enim at aut omnis est ut. Et libero quia quod molestias. Ut deleniti nesciunt temporibus.','Non quis error consequatur nam. Accusamus exercitationem voluptatum et autem cupiditate culpa quaerat voluptates. Ipsa accusamus qui occaecati sit est dolore. Eaque voluptatum assumenda similique sit qui consequatur cum. Ea ea culpa in officiis dolorem voluptatum. Sed eaque dignissimos esse voluptatem. Ad illum et dolore illum. Autem rerum corrupti et magni quidem dolore in.','30888 Orland Village\nRasheedfort, NE 23030','[\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,1,2,91,420,740600.00,NULL,1,0,3,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-15',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.315151','-76.243239',NULL,61992,3,3,'NQXQ27',NULL),(24,'Oak Hill Residences','rent','Veniam delectus eum et. Mollitia praesentium et assumenda dignissimos quia fugiat fugit.','Et aut autem vel ut voluptatum qui enim quo. Voluptas placeat itaque assumenda perspiciatis et. Ab recusandae architecto nisi distinctio. Et excepturi numquam ipsam eaque qui corporis alias. Ducimus quam fugiat exercitationem ullam voluptatibus distinctio. Reiciendis deleniti vel voluptatem alias placeat corrupti consequatur. Aliquam id laboriosam nam saepe.','5644 Laura Ford Suite 804\nJaydastad, WI 53455-3431','[\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,4,2,49,610,273300.00,NULL,0,0,3,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-14',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.827233','-76.568575',NULL,9622,3,3,'IO5NRB',NULL),(25,'Sunnybrook Villas','sale','Et nobis praesentium vel nobis quis soluta. Vitae sequi sint velit quisquam ipsa laborum optio. Vitae aut magnam repudiandae. Neque et rerum velit explicabo incidunt earum. Alias quis et cupiditate excepturi impedit.','In voluptatem labore iste beatae. Totam corrupti quam voluptate eos sapiente quas ducimus. Quisquam labore et beatae ea. Omnis tempora ratione voluptatem recusandae iusto. Odio sed eius ipsa. Soluta qui eum illo consectetur dolor non excepturi. Molestiae iusto eaque voluptate id. Sequi asperiores reprehenderit ratione non.','613 Schimmel Greens\nMariamton, OK 21649','[\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,6,2,41,170,641100.00,NULL,0,0,2,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-18',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.145429','-76.339316',NULL,68422,2,2,'RMJE5G',NULL),(26,'Riverstone Condominiums','sale','Ea voluptatem consequatur occaecati ut temporibus. Quia autem quod qui cum aut aliquam quis. Quo aut velit sint dolorem. Cupiditate amet deserunt nostrum ex incidunt.','Aut deleniti voluptatem enim est odit repellendus ut ea. Nemo officiis voluptate modi facere voluptates voluptatem non. Et voluptatum voluptas nam magnam et. Quia non voluptatem sed officiis delectus et dolorem. Autem velit quas doloremque sed dolorem accusantium ab. Adipisci quia qui quasi dolorum. Atque quae odit suscipit illo nesciunt qui.','380 Wolff Ways Apt. 125\nSouth Mertie, IA 11675','[\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,4,1,50,670,720100.00,NULL,0,0,2,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-05',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.099058','-75.413504',NULL,74631,2,2,'2EEMUA',NULL),(27,'Cedar Park Apartments','sale','Voluptatem expedita voluptatem est suscipit. Rerum amet iure quod nihil voluptatem. Voluptas mollitia occaecati expedita autem.','Sint nulla soluta quas. Aperiam illum odit nulla consequatur beatae. Repellendus doloribus id tempore eos alias distinctio. Blanditiis molestiae molestiae delectus alias nihil. Corrupti corrupti amet necessitatibus quasi officiis nulla. Mollitia doloremque rerum voluptate veritatis molestiae sed veritatis placeat. Et explicabo corporis earum sed sit sed iure.','97969 Leopoldo Walk Suite 996\nEast Pedrochester, CO 51757-3941','[\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,4,8,65,980,419100.00,NULL,1,0,4,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-10',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.694581','-75.735527',NULL,51895,4,4,'QPLLZ8',NULL),(28,'Lakeside Retreat','rent','Aliquam temporibus libero inventore iusto eaque quod. Consequuntur ut dolor est repellendus. Soluta quia harum in veritatis deleniti dolorem. Laudantium earum provident aut et blanditiis voluptas nihil.','Velit eos similique nihil dolore sed delectus. Ratione sit consequatur alias beatae. Omnis porro sit rerum id unde fuga. Quia quibusdam similique non voluptatum natus eum occaecati. Et dicta quia explicabo sed voluptatem. Quidem harum corrupti voluptas ea. Quis eos fugiat rerum veritatis quod in. Qui atque totam ullam porro minima consequatur. Dolor libero tempore voluptate.','773 Columbus Plaza Apt. 369\nLake Mayra, MT 26525-3610','[\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,1,10,86,420,831800.00,NULL,1,0,1,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-15',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.18848','-76.095414',NULL,716,1,1,'Y1ED3J',NULL),(29,'Willow Creek Homes','sale','Perferendis rerum in officiis soluta laborum totam vel omnis. Excepturi expedita sapiente et nihil impedit omnis. Amet et molestiae voluptatem est. Repellendus et rerum autem voluptatum voluptatem quam numquam sunt.','Et quos unde quae qui minus non. Quod consequuntur nobis voluptas sit debitis aut. Beatae enim vitae quis sunt iste recusandae. Molestiae quibusdam quis officiis optio quia. Quod officiis saepe quia maiores et distinctio. Et eum iste velit voluptatem. Id quia omnis voluptatem saepe perspiciatis qui a. Deserunt est eos qui numquam. Ratione sit provident nihil non nisi omnis quisquam ea. Quae quis ut unde explicabo et impedit deserunt. Omnis quo qui voluptatem. Dolore et et nulla consequuntur nulla dolor eum. Est ipsam exercitationem et aliquam praesentium et aut. Minus asperiores modi non praesentium porro ut.','571 Langosh Falls\nCorenefurt, IA 37009','[\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,9,4,31,1000,863900.00,NULL,1,0,1,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-04',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.641137','-75.253742',NULL,78949,1,1,'TA0VYV',NULL),(30,'Grandview Heights','sale','Et similique distinctio voluptate molestias. Et eum occaecati nobis quo numquam tempore fugit sunt. Odio suscipit dolorum veniam facere vel.','Eligendi dolor quis praesentium non iure molestiae eum. Ducimus recusandae fugit ex ipsa in fuga. Eaque voluptatum error animi. Neque occaecati quas tenetur provident. Laboriosam officia facere saepe praesentium ipsam. Quisquam omnis tempora numquam minima et omnis doloribus. Ducimus ea assumenda id dolores qui at fuga. Modi velit sint ut impedit nam optio. Alias debitis est eius rerum consequuntur.','2152 Borer Rest Apt. 428\nNorth Erwintown, MS 27018-4641','[\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,3,10,27,80,586400.00,NULL,0,0,3,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-07',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.644448','-74.946797',NULL,13382,3,3,'J75CVX',NULL),(31,'Forest Glen Cottages','sale','Ad beatae animi odit ut eligendi. Debitis nisi quo temporibus. Et asperiores delectus dolor fuga officia impedit laborum.','Itaque ad eaque aliquid sint ea. Dolorem delectus dicta qui omnis autem recusandae. Architecto laboriosam optio quia consequatur cumque laudantium dolorum. Nihil dignissimos laborum est. Ipsum modi aperiam veritatis et explicabo minus itaque. Qui sed alias blanditiis vel veritatis. Quia eaque ullam voluptatem minima eos. Ipsum maxime aliquam consectetur. Tenetur aliquam quis qui. Nihil dolorem atque reiciendis error et est. Est et sed fugit illo dolore.','461 Gutmann Station\nNorth Lee, AR 45813-0222','[\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,2,6,53,810,302100.00,NULL,1,0,6,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-06',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.261387','-75.897459',NULL,95754,6,6,'YM5BZP',NULL),(32,'Harborview Towers','rent','Eos saepe dignissimos nobis laborum recusandae. Recusandae vitae quasi aut illo itaque. Maxime quibusdam quibusdam quos consequatur amet. Qui animi voluptatem ex ea quos eum accusamus.','Mollitia voluptatem id hic quia. Atque qui illo saepe quisquam. At reiciendis quaerat nihil nemo tempore nisi nam. Sint mollitia ab illo accusamus. Assumenda dolores dolorem quaerat ipsam. Sit incidunt sed cumque tenetur rerum illum. Modi enim dolor qui sit. Quia inventore sint aliquam consequatur nesciunt. Tempora ea voluptatem quibusdam. Qui veniam expedita repudiandae numquam. Voluptas aut doloribus sapiente ut itaque. Aperiam enim nemo possimus. Temporibus repudiandae ea impedit eveniet consequatur ipsum possimus. Accusamus possimus consequatur nesciunt quos labore voluptates animi velit. Voluptates veniam modi quod aut quibusdam eius reiciendis.','64779 Piper Port\nRitchiefurt, IA 77566','[\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,1,10,90,930,82300.00,NULL,0,0,4,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-05',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.695937','-76.656059',NULL,78586,4,4,'HIETSH',NULL),(33,'Meadowlands Estates','rent','Voluptas nulla voluptatem rerum. Ipsa ut consequuntur nisi aliquid debitis. Porro cumque praesentium sed earum sed rerum.','Ut in qui incidunt perspiciatis consectetur aut. Delectus praesentium nihil molestiae consequatur. Quo veniam aliquid fugit error. Consequatur nesciunt sit odit quia qui. Animi qui occaecati earum aut. Voluptatem aut voluptates laboriosam et. Molestiae hic debitis in libero nihil. Fuga officia quia vel sunt est reprehenderit. Expedita cumque rerum rerum nisi consectetur qui sit. Et qui voluptatem consequatur eius inventore. Ut minus illum et similique repellendus ea. Et voluptates recusandae eos voluptates delectus. Qui cupiditate cumque iure sed. Omnis ut odit tempora dolorem ea.','530 O\'Hara Avenue Apt. 269\nEast Sheachester, ND 59985','[\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,1,10,85,710,15200.00,NULL,0,0,5,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-17',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.579539','-75.530607',NULL,36051,5,5,'OXMCJO',NULL),(34,'Highland Meadows','rent','Quibusdam ipsum aspernatur culpa dolor enim natus iusto. Consequuntur atque odio adipisci. Perferendis rerum impedit alias nostrum numquam dolorem error. Non aut temporibus ut voluptatem et eum.','Officiis qui dolorem cumque magnam. Sit debitis aut saepe animi sit sequi sit. Et facilis quam rerum ex harum autem qui. Tenetur suscipit ipsa hic perferendis fugit voluptates. Ex aperiam et eius error animi est sequi. Mollitia ad odit consequatur officia sapiente. Ullam sit minima enim unde iste distinctio soluta ut. Ut rerum quis et harum. Sit impedit et dignissimos quia vel aliquam ut. Esse temporibus dolores et adipisci nam veritatis. Ab cumque et eveniet modi sunt magni cum. Voluptas rem assumenda error.','73652 Sipes Port\nClarissaview, NC 34646','[\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,10,3,75,680,996600.00,NULL,0,0,4,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-15',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.429878','-75.502786',NULL,87253,4,4,'V5V2JT',NULL),(35,'Brookfield Gardens','sale','Dicta inventore expedita non quibusdam. Dignissimos voluptatibus fugit cupiditate fugiat qui excepturi. Laudantium hic molestiae voluptates ut qui. Libero dolore ipsam magni quisquam ut.','Expedita fugit similique aperiam vitae. Nihil aut deleniti alias ea corrupti dolores. Ipsam ex quas harum repellat. Iste aliquid consequatur et odio eveniet. Consequatur officiis ducimus officiis omnis reiciendis. Tempora voluptatem quia consectetur quae aut labore unde. Odio minima vel quis. Odit nihil voluptas dolor quod aliquid repudiandae et. Dolorem nobis dicta rem. Ullam quis illum maxime aspernatur qui quibusdam velit. Dignissimos hic ea consequatur optio enim itaque debitis. Et consequatur et saepe non voluptatem non. Sed doloremque ex doloremque aut quibusdam qui unde.','26325 Kris Summit\nLisettemouth, PA 23109','[\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,9,7,15,170,811400.00,NULL,1,0,4,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-26',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.619501','-76.177633',NULL,92981,4,4,'31QUKI',NULL),(36,'Silverwood Villas','sale','Quia hic pariatur enim nihil. Rerum sed eos quos. Ea ullam quia delectus quaerat sed. Possimus est sapiente qui consequuntur. Veritatis ex incidunt ut possimus quae.','Qui quo aperiam natus excepturi. Recusandae enim quas omnis quod vel. Eius eligendi corrupti velit non. Quo consequatur possimus numquam maxime corporis vel. Sunt eveniet consequatur et asperiores rerum. Minus in vel asperiores minus consequatur. Sit qui earum assumenda adipisci cupiditate. Totam deserunt nihil aspernatur perferendis.','6397 Salma Street\nLindbury, NJ 87482','[\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,8,9,72,180,889600.00,NULL,1,0,3,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-08',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.758599','-76.312531',NULL,10037,3,3,'GKVXMB',NULL),(37,'Evergreen Terrace','sale','Nihil temporibus in sed molestias cupiditate. Sequi libero ullam nemo. Pariatur eveniet quam dolor nam ut corrupti totam.','Maiores quisquam libero ipsa fugiat quo. Aspernatur et placeat eum saepe. Omnis dolorum officia dolor nihil unde. Ut quo ea officiis ipsum voluptas ipsa qui. Quae voluptatem quia quisquam repellendus pariatur aliquid et est. Facere ex earum quas. Similique aut voluptatum suscipit ullam excepturi. Excepturi labore nulla modi quibusdam quisquam cum. Sequi sed minus quasi repudiandae quas. Magni occaecati non culpa aliquam voluptas sed soluta. Fugiat eveniet quia quis nesciunt eum.','38116 Gerhold Shoal\nPort Maci, AK 18620-8402','[\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,3,1,5,190,739400.00,NULL,1,0,6,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-27',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.866019','-76.682389',NULL,6337,6,6,'YKJWGJ',NULL),(38,'Golden Gate Residences','rent','Inventore porro dolores illum aperiam. Ullam officia rerum nesciunt qui. Quaerat aut est veritatis enim occaecati. Rerum maxime odit minima animi repellat sit est deserunt.','Delectus dolor possimus quia quibusdam ipsum. Quia autem mollitia itaque eligendi sit. Delectus in minima dolore aut est distinctio. Cupiditate culpa reprehenderit non at. Ea magnam et ut doloribus. Omnis molestiae aut ex est. Praesentium impedit quia quisquam explicabo. Quia id ipsum omnis sint amet iste.','50620 Cruickshank Plain\nLaurieport, LA 06991-9765','[\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,6,3,71,910,855300.00,NULL,0,0,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-08',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.281847','-74.960369',NULL,38975,1,1,'V7WQJ7',NULL),(39,'Spring Blossom Park','sale','Nihil totam aut et asperiores quod. Delectus perferendis amet ad officiis sit. Blanditiis ad perspiciatis alias. Odio delectus ut voluptas atque laudantium.','Et dolores sunt delectus nisi veritatis officiis dicta. Sit cum voluptates minima culpa enim. Laudantium natus id ipsam similique. Et dignissimos ducimus debitis quidem. Voluptatem repellat non consequatur beatae omnis officiis. Labore autem ut ab. Eaque et et non. Unde non error sed magnam beatae aut omnis. Harum nobis sit in provident ea. Consectetur minus quidem aut quia. Est voluptas sunt quidem velit praesentium iste molestias. Necessitatibus est illum ab et rerum quidem aut.','12201 Stroman Prairie Apt. 038\nSouth Kaci, GA 88288','[\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,7,3,89,470,150000.00,NULL,0,0,1,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-24',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.988068','-75.799427',NULL,96000,1,1,'YMCDNG',NULL),(40,'Horizon Pointe','sale','Reiciendis eaque molestiae et maiores et. Qui autem qui placeat expedita deleniti. Cupiditate dolor quaerat ratione dolores possimus. Incidunt consequatur labore et voluptas maxime modi totam et.','Est rerum amet nihil ea soluta. Laboriosam perferendis vitae suscipit impedit occaecati omnis. Voluptatem quisquam sed iste amet ut fugiat atque. Est nulla dignissimos dolore voluptatibus quis eveniet. Porro ullam perferendis magnam beatae suscipit quo. Est facere rerum voluptas temporibus quidem iusto. Cupiditate laudantium modi ex rerum omnis debitis nam. Natus qui tempore a dignissimos sit. Sit qui libero repellendus dolorem sunt. Reiciendis illo dolorem ut et sed consectetur aut. Enim quo veniam sequi recusandae.','48831 Sedrick Hills Apt. 771\nNew Crystelhaven, KS 51543','[\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,3,5,73,300,214600.00,NULL,0,0,1,'month','selling',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-19',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.985136','-75.027338',NULL,47632,1,1,'2TDOJM',NULL),(41,'Whispering Pines Lodge','rent','Beatae est ut placeat deleniti. Id consequatur placeat et in alias aut molestiae omnis. Sunt quidem consequuntur voluptas libero enim voluptatem.','Sit voluptatibus aut aut ipsa numquam ut et. Eius molestiae doloribus laboriosam voluptas ut. Beatae aut dolorum facere autem nesciunt exercitationem rerum. Et amet non quaerat soluta accusamus. Harum ex ut perferendis voluptatem dolorem autem est. Id cumque accusantium dolores mollitia harum ut. Consequatur quo voluptas in saepe. Tenetur voluptatem laborum eaque voluptatem nobis eaque. Dicta enim nihil et eum voluptatem laborum.','718 Johnston Dam\nHermistonville, OK 76516-6531','[\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,9,1,3,1000,740600.00,NULL,1,0,6,'month','renting',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-03',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.513531','-75.397571',NULL,28299,6,6,'O57I8C',NULL),(42,'Sunset Ridge','rent','Ab voluptatum minima expedita earum. Omnis ex aspernatur ut voluptas tempora. Expedita ut minima et ducimus. Laboriosam enim incidunt perspiciatis nesciunt neque sint.','Et eveniet itaque vitae iusto unde. Nesciunt architecto sit vel consequatur expedita quam ullam. Est autem doloremque natus voluptatem nobis et nemo. Eum optio dicta maxime sit et. Soluta voluptas inventore voluptate eos eum quo incidunt. Quia quisquam hic et quibusdam veritatis aut error. Non officiis in unde consequuntur tempore. Neque in quo laudantium cum repudiandae neque quae. Dolores est dolore omnis in tenetur occaecati. Debitis voluptate voluptatem quibusdam. In sunt vitae est id. Nesciunt occaecati quibusdam debitis necessitatibus corporis sequi exercitationem tenetur. Voluptas inventore ea qui aut aut quisquam eum.','64664 Nasir Mews Apt. 564\nEast Issacland, KS 84545','[\"properties\\/8.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,1,10,80,460,989100.00,NULL,0,0,2,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-11',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.625292','-75.620398',NULL,46087,2,2,'CWMDGJ',NULL),(43,'Timberline Estates','rent','Id voluptatibus et tempore aliquam omnis assumenda magni. Autem et dignissimos est sed rerum. Consequatur amet eos dolor delectus.','Dolorem rerum odit atque deserunt. Rerum quod hic incidunt molestiae velit deleniti tenetur. Voluptates eum aspernatur modi consequatur iure eos. Possimus aperiam ut qui aut et dolor. Quo ea quidem sed ut voluptatem ipsam. Esse inventore qui beatae numquam mollitia molestiae ut optio. Officia minima doloribus labore vero omnis aliquid mollitia. Ut aspernatur ullam temporibus numquam quod et.','7621 Bradley Trail Apt. 878\nStewarthaven, TN 07827-4208','[\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,3,3,97,80,862500.00,NULL,1,0,3,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-11',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.815517','-75.881305',NULL,58213,3,3,'P8FLEX',NULL),(44,'Crystal Lake Condos','sale','Fuga pariatur adipisci sunt voluptas nihil unde vero. Quo omnis earum quasi rerum. Minus magnam sed optio.','Magni distinctio repellendus tenetur ab sunt magnam fugiat. Dolorem quo cum rem voluptatum vero vel. Omnis voluptatem suscipit et ut ut et sint. Qui qui possimus aliquid sit. Sunt architecto quos ullam cumque odit inventore nihil. Rerum rerum vel possimus qui reprehenderit. Temporibus quia odit consequatur quo ut similique ipsa. Aliquid reiciendis aut excepturi neque eos. Fuga blanditiis delectus labore iusto veritatis voluptas.','412 Hayes Expressway Apt. 747\nDustinborough, NM 91649-9517','[\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,3,3,23,620,405600.00,NULL,1,0,5,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-31',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.030081','-75.930341',NULL,1281,5,5,'JUTTZP',NULL),(45,'Briarwood Apartments','sale','Eligendi asperiores est quidem debitis voluptas est et. Est ea aut eum in corrupti beatae. Consequatur aspernatur et culpa quas perspiciatis.','Officia itaque debitis a voluptate mollitia molestiae. A et ipsa in deleniti consectetur necessitatibus. Ad consectetur accusantium assumenda molestias enim. Nulla cumque aut aliquam eius molestiae saepe ut vel. Est occaecati at earum nemo. Voluptatem nihil voluptatem maxime et dolorem et. Provident tempore et rerum autem. Laudantium qui qui cumque tempora sunt veritatis a veritatis. Iure quisquam architecto vel veniam est.','822 Alize Brook Suite 515\nKuhnfurt, MO 79076-4748','[\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,3,6,52,770,673500.00,NULL,0,0,4,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-07',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.813665','-75.817455',NULL,57706,4,4,'JOMJQH',NULL),(46,'Summit View','sale','Porro necessitatibus molestiae dolore dicta voluptate. Molestias sapiente vitae est non vero ducimus.','Voluptatum perferendis fugiat deleniti. Corrupti minus minima dolores sed eos consequatur commodi. Nulla quis dolores ut voluptatum saepe. Est quo facere eligendi sunt ea. Fugit non repellat quasi incidunt. Qui qui rem inventore ut cumque. Quas deleniti ratione molestias incidunt. Sapiente corporis consequuntur et omnis et vel. Ut magnam ad dolor et et. Distinctio est autem voluptatibus sint officiis. Aut non tenetur aut iste minus reiciendis ut rem. Minus est non excepturi officiis quis nisi molestias iste.','75597 Sarina Stravenue\nLylaside, VT 18452','[\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,5,10,24,720,163300.00,NULL,1,0,5,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-21',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','42.822304','-75.039929',NULL,28450,5,5,'FQOSI1',NULL),(47,'Elmwood Park','rent','Illo neque maiores qui non exercitationem animi perferendis commodi. Ipsum adipisci at corrupti laborum asperiores error cum.','Aut non qui provident nulla. Eligendi cum sint aut quaerat maxime. Corrupti at ab blanditiis minus autem nihil. Dignissimos recusandae assumenda cum cupiditate natus. Voluptas maiores et consequatur porro similique quia sunt qui. Animi quam aspernatur sunt vel dolores sint. Iusto aspernatur et itaque porro. Accusamus quaerat quia neque voluptatem sit.','7128 Runolfsdottir Meadows\nJoneschester, KS 82056-9967','[\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,7,2,79,800,350600.00,NULL,1,0,3,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-21',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.825209','-76.030755',NULL,81190,3,3,'IQZZOL',NULL),(48,'Stonegate Homes','sale','Magni quaerat maxime placeat autem rem saepe. Sit perspiciatis inventore libero et. Voluptatem doloribus voluptatem nobis tempora est iure eaque. Laudantium adipisci error eos et et non.','Pariatur sequi est soluta est distinctio dolores tempora possimus. Ipsa a qui dolorem autem excepturi. Repellendus non excepturi ratione fugit. Aut et et soluta delectus voluptatem. Non iste nostrum occaecati cum. Et fuga doloremque excepturi vel non. Nihil quasi corrupti esse atque voluptate quis.','347 Crooks Mill\nJovanview, RI 30238','[\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',4,2,9,40,270,883600.00,NULL,0,0,1,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-08-30',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.586755','-75.975702',NULL,28191,1,1,'LADJ7I',NULL),(49,'Rosewood Villas','rent','Odit consectetur magnam atque. Accusantium molestiae iste cupiditate et voluptates non. Debitis reiciendis ab et id molestiae accusamus. Earum impedit et illo rerum.','Sapiente aliquid aperiam illo velit quis. Et libero exercitationem culpa laboriosam enim nihil odit est. Perspiciatis necessitatibus voluptatem et doloribus occaecati et amet. Eos at impedit ut mollitia quo. Ab a nihil voluptatibus ea. Voluptate porro qui est omnis. Maxime numquam aut eum totam at odio. Vel illum voluptates maxime eaque dolore. Exercitationem dolore nihil dolor ducimus. Praesentium enim iste quibusdam neque sed. Nam rerum quisquam perferendis quia. Ab voluptatem nostrum officiis aliquid veritatis atque. Distinctio consequuntur aut ea molestiae corrupti.','7605 Petra Ville Suite 771\nMadiestad, NJ 67734','[\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',4,9,1,65,400,248900.00,NULL,0,0,4,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-06-25',0,1,'2025-11-17 21:11:31','2025-11-17 21:11:31','43.43213','-75.958731',NULL,7156,4,4,'QHEE1Q',NULL),(50,'Prairie Meadows','sale','Atque voluptatibus occaecati qui voluptas molestiae natus minus. Perferendis commodi odit id eum ut. Deserunt et sunt illo quo exercitationem voluptatem omnis error. Quas dolore est harum.','Eveniet in tempora enim esse. Voluptatum fugiat culpa consequatur eligendi doloribus minus et. Voluptatem dolorem aut doloribus debitis. Veniam quis quas fugit et eligendi. Fuga itaque ex perspiciatis. Accusantium et nobis aut quia eos possimus architecto. Esse rerum est molestiae in qui. Sed hic voluptatem corporis odit illum numquam cum sed. Sunt consequatur eveniet qui earum nihil. Iusto et et occaecati et id. Ipsum excepturi ratione ex rerum rerum aut. Dolorem voluptatem ea ipsam ut consequatur assumenda cupiditate est. Esse laborum ex et alias aut magni eligendi consectetur. Ullam velit doloribus recusandae corrupti totam. Commodi aspernatur sequi quas distinctio repudiandae.','824 Nader Isle\nMakenzieton, MI 66354','[\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,1,7,88,260,903200.00,NULL,1,0,6,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-21',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','43.112906','-75.960195',NULL,85913,6,6,'AWPHMF',NULL),(51,'Hawthorne Heights','rent','Deleniti voluptatem sunt ut sed iste quia necessitatibus. Quia hic commodi rem aut atque. Rem voluptatem omnis non necessitatibus reprehenderit doloremque ab.','Harum repellat odit saepe veniam. Velit autem omnis illo nobis. Illo ullam ratione eum consequatur. Sapiente enim aliquam commodi a. Quasi in temporibus voluptatem quas. Ipsa voluptas nihil facilis sunt. Et similique optio ad officiis omnis dolore. Debitis voluptatem sed qui vel ratione consectetur ex. Perferendis ab voluptatem tenetur recusandae aliquam et blanditiis.','2178 Powlowski Viaduct\nWest Roman, NC 40800','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,9,6,46,800,799700.00,NULL,1,0,4,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-29',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.903433','-75.165155',NULL,77947,4,4,'RUAX11',NULL),(52,'Sierra Vista','rent','Explicabo reiciendis iure velit consequatur suscipit et. Aut ab recusandae vel explicabo.','Tenetur odit quisquam voluptas cum ut accusamus. Quisquam eaque ducimus et esse non quos soluta. Neque excepturi et excepturi et sapiente est quia corporis. Sed necessitatibus nihil exercitationem corrupti. Accusamus quo quas in ea officia. Ratione minima reiciendis mollitia laborum aliquam. Ad deleniti dolor ab sit vitae. Qui rerum quia cum iste perspiciatis impedit dignissimos. Omnis libero consequuntur aliquam placeat similique eum quia. Quia quisquam ut dolorum quas accusantium eaque qui ipsa. Voluptatibus dignissimos inventore voluptatem libero qui. Debitis quis corrupti ea nemo sit consequatur nesciunt. Nihil dignissimos aliquam est aut fugit aut.','376 Wisozk Knoll Apt. 916\nEast Chance, MT 64854-1841','[\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,6,3,42,770,896700.00,NULL,0,0,3,'month','renting',2,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-07',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','43.327104','-76.077733',NULL,5410,3,3,'UAAQ4X',NULL),(53,'Autumn Leaves','sale','Omnis et laudantium et quasi. Ut in earum repellendus maxime qui eos fugiat. Non velit impedit nihil. Labore atque non explicabo.','Aut rerum incidunt in recusandae ea tempora omnis ducimus. Libero accusantium quam culpa et. Rerum voluptas animi perferendis quaerat aliquam. Incidunt dignissimos qui voluptatem nostrum tenetur rerum odit. Consectetur quidem impedit praesentium distinctio placeat veniam deleniti omnis. Voluptas sit sunt voluptatem quam. Tempora culpa tenetur repellat alias totam inventore quidem blanditiis. Veritatis aliquid rem ipsam. Nemo sit saepe blanditiis modi ut inventore corporis. Ab tempora culpa beatae dolorem. Nemo assumenda qui velit sint nihil est. Natus excepturi veritatis voluptatem non illo. Illum corporis modi voluptas molestias magnam nemo. Aut dicta commodi facilis magni dolor in eum.','31075 Anne Light\nBeaustad, MO 94129-3835','[\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,9,8,48,510,563600.00,NULL,1,0,1,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-06',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.614542','-75.988782',NULL,80166,1,1,'4SMAFX',NULL),(54,'Blue Sky Residences','sale','Voluptas et optio ut sit non incidunt enim. Laboriosam facilis expedita illum voluptas qui praesentium. Repudiandae consectetur qui nisi reprehenderit et sapiente. Autem in quia deserunt aliquam.','Quas nemo cum est voluptatem ad officia ut possimus. Et sed et ea error qui voluptas. Excepturi excepturi ad quam. Sunt excepturi maxime magni qui. Aut nobis tempore quae aut. Architecto et provident voluptatibus molestiae. Molestias consequatur labore est. Distinctio ipsam qui itaque blanditiis tempore quia occaecati. Nobis recusandae aliquid cum porro consequatur magnam aliquid. Explicabo tenetur qui rem quis fuga officia ea et. Voluptatem voluptate sed eos laborum eos in. Et tenetur ipsum ullam. Inventore autem pariatur molestias corrupti. Adipisci dolores natus quo in tempora aspernatur in.','52299 Tavares Ways Suite 891\nTravonport, MD 84428','[\"properties\\/6.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,6,9,3,840,109700.00,NULL,1,0,6,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-23',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.782085','-76.455091',NULL,579,6,6,'9KZDPA',NULL),(55,'Pebble Creek','rent','Consequatur maiores incidunt corporis nesciunt tempora. Ipsam enim qui possimus. Maiores aut occaecati animi ut hic incidunt provident.','Voluptates voluptatibus excepturi facere veniam quia eos eligendi. Eaque dolor dolores officiis magni quasi. Rem ab voluptatem recusandae occaecati reiciendis nostrum voluptate. Laboriosam est consequatur itaque natus. Dolores consequatur dolores possimus vero. Temporibus quis sunt labore accusamus molestiae. Excepturi in voluptas laudantium excepturi. Ad velit doloremque est illum at nisi. Qui sed nemo accusamus perferendis aliquid. Qui aspernatur omnis dolores aut a sit in non.','624 Madelyn Wall\nLake Carlie, SD 91146','[\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,8,2,13,190,239600.00,NULL,1,0,2,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-18',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','43.895535','-75.279814',NULL,51520,2,2,'ECKCIS',NULL),(56,'Magnolia Manor','sale','Non tempore ullam minima vitae et excepturi. Consequatur voluptates atque nemo dolorum cum. Et consequatur excepturi dolores hic repellat eius laboriosam.','Labore explicabo nisi omnis dignissimos. Dolore hic libero assumenda reiciendis qui. Dignissimos hic a distinctio facere laboriosam. Amet omnis ut velit harum sit. Unde sit hic quidem. Ea modi at quod non. Nulla fugiat est rerum libero. Ducimus commodi praesentium aut facere ea reiciendis ut. Esse officia harum maxime eveniet est id aut. Consequuntur tempore in et voluptas. Est et dicta et provident magnam debitis adipisci. Quibusdam deserunt quis ut ex enim et blanditiis. Nemo et aut accusamus et sit velit accusamus.','43284 Quinten Stream Suite 687\nO\'Keefestad, NC 65827-1820','[\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,4,9,4,590,134000.00,NULL,0,0,5,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-07-30',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.830454','-76.291608',NULL,14445,5,5,'CU6IJQ',NULL),(57,'Cherry Blossom Estates','rent','Dolores facere enim accusamus veritatis voluptatem ut. Odit sed optio iusto atque minima delectus. Aspernatur dignissimos quia vel ut.','Quae assumenda voluptatem ut consequatur. Voluptatem ex aut ut ea et nisi quas. Quia et hic odit ipsam cupiditate. Vitae tempora id praesentium excepturi neque excepturi culpa eos. Adipisci nisi at sed sed. Alias reiciendis vero dolor autem veritatis animi quia iusto. Voluptatum atque dicta consequatur ipsa et aperiam voluptatem quidem. Repellat officiis architecto atque id ipsam. Nisi doloremque animi repellendus sit sunt saepe qui qui. Nam id consequatur minus et mollitia distinctio. Voluptas ipsa pariatur quisquam. Et accusamus est aspernatur molestias ut. Veritatis iure minus iure inventore aut. Pariatur et non iste sit velit laboriosam architecto laboriosam.','8756 Zachariah Wall\nWest Cleora, AL 09158-1451','[\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,10,1,10,640,421600.00,NULL,0,0,3,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-09-16',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.848439','-76.364265',NULL,55276,3,3,'SMGRW8',NULL),(58,'Windsor Park','sale','Iure mollitia porro saepe distinctio. Vel inventore blanditiis voluptates eum. Consequatur voluptatem est rerum reiciendis nihil necessitatibus.','Ipsa vel ut et ducimus dolore quos. Aut in veritatis aut aut aut. Occaecati ipsum odit id sunt voluptatem ut enim quo. Dolorum molestiae consequatur aut quia mollitia. Rem placeat qui perspiciatis rerum harum est et. Et hic cum quo magni quae ipsa. Voluptatibus ut enim qui non expedita aut vitae.','45323 Marley Ports\nHailiemouth, MO 63929','[\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,10,10,94,680,650600.00,NULL,1,0,4,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-10-22',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.732909','-75.470429',NULL,51157,4,4,'PQTUOA',NULL),(59,'Seaside Villas','rent','Quas qui ipsam impedit voluptatibus ipsa. Consequuntur ea voluptate est quis. Provident quaerat esse et maiores ut animi officia ut. Ut dolores commodi quo expedita illum incidunt numquam. Voluptates quia aut voluptas quidem.','Et eius magni repellendus. Nulla deserunt dicta amet fugit sed. Illum velit et ducimus accusantium accusamus minima. Voluptatibus praesentium eligendi et. Sapiente ea ullam aliquam ea excepturi error dolore. Iste nisi quidem ullam est saepe. Autem quisquam sit laudantium inventore eveniet. Aut numquam quis autem alias. Odio voluptatibus quidem quo. Sunt et harum et fuga sint molestiae. Illum eos sint id.','940 Vandervort Ferry Suite 282\nHuelsbury, WI 07386','[\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,4,6,5,950,571200.00,NULL,0,0,3,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-23',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','42.918674','-75.389251',NULL,41871,3,3,'ZAGFZ1',NULL),(60,'Mountain View Retreat','rent','Minima qui aut eum quisquam quo earum. A rem nihil aspernatur.','Voluptas velit voluptatem dolores quidem. Temporibus impedit ut qui inventore. Autem quia error mollitia fugiat odit voluptatum. Qui quis architecto non sunt aut. Eum est ex expedita. Modi natus ipsam blanditiis maiores. Sed iste quidem quia consequatur dolor eum nesciunt.','24310 Gregoria Harbor\nHodkiewiczport, MT 20449','[\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,2,5,10,690,268000.00,NULL,1,0,5,'month','renting',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-23',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','43.124522','-75.210769',NULL,69343,5,5,'CBVNAJ',NULL),(61,'Amberwood Apartments','sale','Provident minima culpa et quam doloremque omnis. Nobis vero nesciunt quia mollitia. Non ut velit cumque ut eum dolore dolorem. Accusamus eius laboriosam qui sit quia qui natus.','Vitae ut saepe est tempore natus molestiae et. Dignissimos mollitia quisquam corrupti recusandae voluptatem. Ullam qui est et minima. Qui omnis dicta similique consequatur sint aut. Aut expedita eum amet voluptatem ratione at maiores. Amet nulla dolorem vel repellendus est similique nesciunt natus. Sit et et qui maxime. Aut et dignissimos voluptatibus sint. Voluptatem eum sit et autem aspernatur magnam. Delectus culpa ducimus voluptatem mollitia architecto sit velit. Distinctio laboriosam eligendi ratione recusandae consectetur. Quo quibusdam est ipsa minus consequatur maiores libero.','52451 Maybelle Plain Suite 253\nBinsburgh, NV 65607-7492','[\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,4,7,48,100,178600.00,NULL,1,0,4,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-20',0,1,'2025-11-17 21:11:32','2025-11-17 21:11:32','43.26497','-76.615352',NULL,88209,4,4,'EKBALI',NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_properties_id`),
  KEY `idx_re_properties_trans_prop_lang` (`re_properties_id`,`lang_code`),
  KEY `idx_re_properties_trans_location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_categories` (
  `property_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`property_id`,`category_id`),
  KEY `idx_property_categories_property_id` (`property_id`),
  KEY `idx_property_categories_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (1,5),(2,1),(3,1),(3,2),(4,4),(4,5),(5,1),(5,3),(5,5),(6,1),(6,3),(7,1),(7,4),(7,6),(8,2),(9,3),(9,4),(9,5),(10,1),(10,4),(10,6),(11,3),(11,4),(11,5),(12,1),(12,3),(12,5),(13,1),(13,2),(13,3),(14,4),(15,2),(16,3),(17,1),(17,2),(17,3),(18,1),(18,4),(19,4),(20,3),(20,4),(20,5),(21,1),(21,5),(21,6),(22,4),(22,5),(23,5),(24,3),(25,4),(25,6),(26,1),(26,5),(26,6),(27,5),(28,3),(28,6),(29,2),(29,3),(29,4),(30,3),(30,4),(31,1),(31,2),(31,6),(32,2),(33,3),(33,4),(33,5),(34,6),(35,2),(35,4),(36,2),(37,1),(37,3),(37,4),(38,1),(38,5),(39,2),(39,3),(40,4),(41,3),(41,4),(42,5),(43,5),(43,6),(44,1),(45,4),(45,5),(45,6),(46,2),(46,4),(47,1),(48,1),(49,3),(49,5),(50,1),(50,3),(50,4),(51,2),(52,5),(53,2),(53,6),(54,6),(55,5),(56,1),(56,2),(56,6),(57,6),(58,5),(58,6),(59,1),(59,4),(59,5),(60,1),(61,1);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_features` (
  `property_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL,
  KEY `idx_property_features_property_id` (`property_id`),
  KEY `idx_property_features_feature_id` (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,3),(1,4),(1,5),(1,6),(1,9),(1,10),(1,11),(2,3),(2,6),(2,8),(2,10),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,5),(4,6),(4,7),(4,10),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(6,3),(6,4),(6,6),(6,7),(6,8),(6,9),(7,6),(7,7),(7,8),(7,11),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,9),(8,10),(8,11),(8,12),(9,1),(9,3),(9,5),(9,6),(9,9),(9,12),(10,1),(10,3),(10,4),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(11,1),(11,7),(11,11),(11,12),(12,1),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,10),(12,11),(13,2),(13,3),(13,4),(13,6),(13,8),(13,10),(13,11),(13,12),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),(14,9),(14,10),(14,11),(14,12),(15,1),(15,2),(15,3),(15,4),(15,5),(15,9),(15,10),(16,3),(16,4),(16,9),(16,10),(16,11),(17,2),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,12),(18,2),(18,3),(18,6),(18,7),(18,8),(18,9),(18,11),(18,12),(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(19,7),(19,8),(19,9),(19,10),(19,11),(20,1),(20,3),(20,4),(20,5),(20,6),(20,7),(20,9),(20,10),(20,11),(20,12),(21,1),(21,2),(21,4),(21,5),(21,8),(21,9),(21,10),(22,1),(22,2),(22,3),(22,4),(22,5),(22,6),(22,7),(22,8),(22,9),(22,10),(22,11),(22,12),(23,1),(23,2),(23,3),(23,4),(23,5),(23,6),(23,7),(23,8),(23,9),(23,10),(23,11),(23,12),(24,1),(24,2),(24,3),(24,4),(24,5),(24,6),(24,7),(24,8),(24,10),(24,11),(24,12),(25,1),(25,2),(25,4),(25,5),(25,6),(25,7),(25,8),(25,9),(25,11),(25,12),(26,3),(26,4),(26,5),(26,6),(26,7),(26,8),(26,10),(26,11),(27,1),(27,2),(27,3),(27,5),(27,6),(27,7),(27,8),(27,9),(27,10),(27,11),(27,12),(28,1),(28,2),(28,3),(28,4),(28,5),(28,6),(28,7),(28,8),(28,9),(28,10),(28,11),(28,12),(29,1),(29,5),(29,7),(29,8),(29,11),(29,12),(30,1),(30,2),(30,6),(30,10),(30,11),(31,4),(31,6),(31,8),(31,9),(31,10),(31,12),(32,4),(32,5),(32,9),(32,12),(33,3),(33,4),(33,7),(33,8),(33,10),(34,1),(34,3),(34,4),(34,5),(34,7),(34,8),(34,9),(34,10),(34,11),(34,12),(35,2),(35,3),(35,4),(35,5),(35,8),(35,9),(35,11),(35,12),(36,2),(36,3),(36,4),(36,5),(36,7),(36,9),(36,10),(36,11),(37,3),(37,4),(37,5),(37,6),(37,7),(37,8),(37,11),(37,12),(38,1),(38,2),(38,3),(38,4),(38,5),(38,6),(38,7),(38,8),(38,9),(38,10),(38,11),(38,12),(39,1),(39,2),(39,3),(39,4),(39,5),(39,7),(39,8),(39,9),(39,10),(39,11),(39,12),(40,1),(40,4),(40,6),(40,7),(40,9),(40,10),(40,11),(40,12),(41,2),(41,4),(41,5),(41,8),(41,10),(42,2),(42,3),(42,4),(42,5),(42,6),(42,7),(42,9),(43,1),(43,2),(43,3),(43,4),(43,5),(43,7),(43,8),(43,9),(43,10),(43,11),(43,12),(44,2),(44,3),(44,4),(44,5),(44,7),(44,9),(44,10),(44,11),(45,3),(45,7),(45,9),(45,12),(46,3),(46,4),(46,5),(46,7),(46,8),(46,10),(46,11),(47,1),(47,2),(47,3),(47,4),(47,5),(47,6),(47,7),(47,8),(47,9),(47,10),(47,11),(47,12),(48,1),(48,3),(48,6),(48,7),(48,9),(48,10),(48,11),(49,1),(49,2),(49,3),(49,4),(49,5),(49,6),(49,7),(49,8),(49,9),(50,1),(50,2),(50,4),(50,5),(50,6),(50,7),(50,11),(50,12),(51,1),(51,2),(51,4),(51,5),(51,7),(51,8),(51,9),(51,10),(51,11),(52,1),(52,2),(52,5),(52,7),(52,10),(52,12),(53,3),(53,4),(53,5),(53,8),(53,10),(53,11),(53,12),(54,1),(54,2),(54,3),(54,4),(54,5),(54,6),(54,7),(54,8),(54,9),(54,10),(54,11),(54,12),(55,1),(55,3),(55,6),(55,7),(55,8),(55,9),(55,10),(55,11),(55,12),(56,1),(56,2),(56,3),(56,4),(56,6),(56,8),(56,9),(56,10),(56,11),(56,12),(57,2),(57,3),(57,4),(57,5),(57,6),(57,7),(57,8),(57,10),(57,12),(58,3),(58,4),(58,6),(58,8),(58,9),(58,10),(58,11),(58,12),(59,1),(59,2),(59,4),(59,11),(60,2),(60,4),(60,8),(60,12),(61,1),(61,2),(61,3),(61,4),(61,5),(61,6),(61,7),(61,8),(61,10),(61,11),(61,12);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`),
  KEY `idx_reviews_reviewable_status` (`reviewable_type`,`reviewable_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,5,'Botble\\RealEstate\\Models\\Property',54,5,'She stretched herself up and said, \'So you think you could draw treacle out of sight. Alice remained looking thoughtfully at the March Hare: she thought it would,\' said the Hatter. \'Does.','approved','2025-07-30 21:11:36','2025-11-17 21:11:36'),(2,4,'Botble\\RealEstate\\Models\\Project',13,5,'The Mouse did not like to be trampled under its feet, \'I move that the way I want to see what would happen next. \'It\'s--it\'s a very little! Besides.','approved','2025-09-23 21:11:36','2025-11-17 21:11:36'),(3,1,'Botble\\RealEstate\\Models\\Property',48,3,'Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be on the trumpet, and then added them up, and began picking them up again with a lobster as a cushion, resting.','approved','2025-09-17 21:11:36','2025-11-17 21:11:36'),(4,1,'Botble\\RealEstate\\Models\\Project',9,5,'HIS time of life. The King\'s argument was, that you never had to run back into the sky. Twinkle, twinkle--\"\' Here the Dormouse go on with the bones and the Queen said to herself; \'I should like to go.','approved','2025-11-02 21:11:36','2025-11-17 21:11:36'),(5,11,'Botble\\RealEstate\\Models\\Property',9,2,'March Hare interrupted in a.','approved','2025-10-14 21:11:36','2025-11-17 21:11:36'),(6,11,'Botble\\RealEstate\\Models\\Project',4,2,'English!\' said the Dormouse, without considering at all a proper way of expecting nothing but the Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the other was sitting between.','approved','2025-07-21 21:11:36','2025-11-17 21:11:36'),(7,12,'Botble\\RealEstate\\Models\\Property',3,4,'March Hare, \'that \"I like what I should be raving mad--at least not so mad as it happens; and if I shall never get to the rose-tree, she went on. \'Or would you tell me,\' said Alice, who always took a minute or two sobs choked his voice.','approved','2025-09-13 21:11:36','2025-11-17 21:11:36'),(8,7,'Botble\\RealEstate\\Models\\Project',17,1,'The Gryphon lifted up both its paws in surprise. \'What! Never heard of.','approved','2025-08-04 21:11:36','2025-11-17 21:11:36'),(9,8,'Botble\\RealEstate\\Models\\Property',5,3,'I think you\'d better leave off,\' said the King, going up to her that she ought not to her, \'if we had the best plan.\' It sounded an excellent plan, no doubt, and very soon had to run back into the sky. Twinkle, twinkle--\"\' Here the Queen never left off staring at the place where it.','approved','2025-08-20 21:11:36','2025-11-17 21:11:36'),(10,10,'Botble\\RealEstate\\Models\\Project',1,1,'March Hare went on. \'Would you tell me, Pat, what\'s that in the same solemn tone, \'For the Duchess. \'I make you a couple?\' \'You are old,\' said the King. \'It began with the tarts, you know--\' (pointing with his.','approved','2025-10-24 21:11:36','2025-11-17 21:11:36'),(11,11,'Botble\\RealEstate\\Models\\Property',14,1,'The three soldiers wandered about in all my life!\' She had quite forgotten the words.\' So they had to ask the question?\' said the Duck: \'it\'s generally a frog or a worm. The question is, what did the archbishop find?\'.','approved','2025-07-27 21:11:36','2025-11-17 21:11:36'),(12,7,'Botble\\RealEstate\\Models\\Project',1,2,'It did so indeed, and much sooner than she had forgotten the little golden key, and unlocking the door that led into a chrysalis--you will some day, you know--and then after that into a conversation. \'You don\'t know of any use, now,\' thought Alice, \'it\'ll.','approved','2025-10-02 21:11:36','2025-11-17 21:11:36'),(13,7,'Botble\\RealEstate\\Models\\Property',44,4,'Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King in a minute, while Alice thought she had nothing yet,\' Alice replied very solemnly. Alice was very uncomfortable, and, as a boon.','approved','2025-09-21 21:11:36','2025-11-17 21:11:36'),(14,2,'Botble\\RealEstate\\Models\\Project',18,5,'Alice glanced rather anxiously at the bottom of the edge of the house down!\' said the King. On this the White Rabbit interrupted: \'UNimportant, your Majesty.','approved','2025-08-20 21:11:36','2025-11-17 21:11:36'),(15,10,'Botble\\RealEstate\\Models\\Property',53,1,'Alice was only too glad to do it?\' \'In my youth,\' Father William replied to his ear. Alice considered a little, half expecting to see it written down: but I shall think nothing of tumbling down stairs! How brave they\'ll all think me for a long.','approved','2025-10-05 21:11:36','2025-11-17 21:11:36'),(17,12,'Botble\\RealEstate\\Models\\Property',59,5,'YET,\' she said aloud. \'I shall do nothing of tumbling down stairs! How brave.','approved','2025-07-23 21:11:36','2025-11-17 21:11:36'),(18,9,'Botble\\RealEstate\\Models\\Project',12,2,'The Duchess took her choice.','approved','2025-09-13 21:11:36','2025-11-17 21:11:36'),(19,1,'Botble\\RealEstate\\Models\\Property',8,5,'Alice, and she felt a little bit of mushroom, and crawled away in the middle of her sharp little chin into Alice\'s shoulder as he came, \'Oh! the Duchess, \'and that\'s the jury, who instantly made a dreadfully ugly child: but it had entirely disappeared; so the King added in a.','approved','2025-10-17 21:11:36','2025-11-17 21:11:36'),(20,4,'Botble\\RealEstate\\Models\\Project',11,2,'Pigeon in a game of play with a yelp of delight, and rushed at the door-- Pray, what is the same age as herself, to see the Mock Turtle recovered his voice, and, with tears running down his.','approved','2025-08-03 21:11:36','2025-11-17 21:11:36'),(21,11,'Botble\\RealEstate\\Models\\Property',11,1,'I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to happen,\'.','approved','2025-07-20 21:11:36','2025-11-17 21:11:36'),(22,1,'Botble\\RealEstate\\Models\\Project',2,2,'SOMEBODY ought to be nothing but out-of-the-way things had happened lately, that Alice quite jumped; but she was quite pleased to find that her shoulders were nowhere to be patted on the breeze that followed them.','approved','2025-08-28 21:11:36','2025-11-17 21:11:36'),(23,10,'Botble\\RealEstate\\Models\\Property',5,5,'YOU?\' Which brought them back again to the Dormouse, not choosing to notice this question, but hurriedly went on, \'What\'s your name, child?\' \'My name is Alice, so please.','approved','2025-10-13 21:11:36','2025-11-17 21:11:36'),(24,2,'Botble\\RealEstate\\Models\\Project',12,1,'Alice panted as she spoke. (The unfortunate little Bill had left off sneezing by this time?\' she said aloud. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to live. \'I\'ve seen hatters before,\' she said these words.','approved','2025-10-17 21:11:36','2025-11-17 21:11:36'),(25,12,'Botble\\RealEstate\\Models\\Property',15,2,'Alice had not long to doubt, for the pool was getting quite crowded with the time,\' she said to herself how this same little sister of hers that you have just been reading about; and when she looked down at her for a moment to be Involved in this way! Stop this moment, I tell you!\' But she.','approved','2025-09-02 21:11:36','2025-11-17 21:11:36'),(26,6,'Botble\\RealEstate\\Models\\Project',18,5,'I am! But I\'d better take him his.','approved','2025-10-31 21:11:36','2025-11-17 21:11:36'),(27,9,'Botble\\RealEstate\\Models\\Property',2,2,'Oh, my dear Dinah! I wonder if I chose,\' the Duchess asked, with another dig of her own child-life, and the March Hare. \'Yes, please do!\' but the cook was leaning over the fire, stirring a.','approved','2025-09-17 21:11:36','2025-11-17 21:11:36'),(28,4,'Botble\\RealEstate\\Models\\Project',6,1,'Alice ventured to say. \'What is.','approved','2025-09-07 21:11:36','2025-11-17 21:11:36'),(29,5,'Botble\\RealEstate\\Models\\Property',13,2,'It was the Duchess\'s knee, while.','approved','2025-09-11 21:11:36','2025-11-17 21:11:36'),(30,11,'Botble\\RealEstate\\Models\\Project',11,1,'Queen furiously, throwing an inkstand at the door--I do wish I could let you out, you know.\' It was, no doubt: only Alice did not much larger than a real nose.','approved','2025-08-24 21:11:36','2025-11-17 21:11:36'),(31,3,'Botble\\RealEstate\\Models\\Property',1,2,'I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the spot.\' This.','approved','2025-08-18 21:11:36','2025-11-17 21:11:36'),(32,9,'Botble\\RealEstate\\Models\\Project',13,5,'King. (The jury all brightened up at the top of its mouth and yawned once or twice, and shook itself. Then it got down off the fire, and at last in the schoolroom, and though this.','approved','2025-08-27 21:11:36','2025-11-17 21:11:36'),(33,8,'Botble\\RealEstate\\Models\\Property',37,3,'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE.','approved','2025-10-24 21:11:36','2025-11-17 21:11:36'),(34,5,'Botble\\RealEstate\\Models\\Project',2,3,'I don\'t understand. Where did they live at the sudden change, but very glad that it ought to have no answers.\' \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves and a pair of the thing.','approved','2025-11-12 21:11:36','2025-11-17 21:11:36'),(35,9,'Botble\\RealEstate\\Models\\Property',58,5,'I should understand that better,\' Alice said to herself, and nibbled a little door about fifteen inches high: she tried to beat them off, and Alice was not a moment that it might injure the brain; But, now that I\'m doubtful about the right distance--but then.','approved','2025-08-07 21:11:36','2025-11-17 21:11:36'),(36,1,'Botble\\RealEstate\\Models\\Project',8,5,'King, and the Dormouse went on, \'What\'s your name.','approved','2025-10-11 21:11:36','2025-11-17 21:11:36'),(38,3,'Botble\\RealEstate\\Models\\Project',6,3,'Alice crouched down among the people that walk with their heads!\' and the jury eagerly wrote down all three dates on their slates, and she did not come the same thing as \"I sleep when I sleep\" is the same when.','approved','2025-08-04 21:11:36','2025-11-17 21:11:36'),(39,12,'Botble\\RealEstate\\Models\\Property',21,3,'Mystery,\' the Mock Turtle is.\' \'It\'s the Cheshire Cat sitting on the slate. \'Herald, read the accusation!\' said the Mock Turtle. \'Certainly not!\' said Alice sadly. \'Hand it over a little bird as soon as.','approved','2025-11-10 21:11:36','2025-11-17 21:11:36'),(40,12,'Botble\\RealEstate\\Models\\Project',8,1,'WHAT?\' thought Alice; \'I might as well look and see what was on the OUTSIDE.\' He unfolded the paper as he.','approved','2025-11-14 21:11:36','2025-11-17 21:11:36'),(41,3,'Botble\\RealEstate\\Models\\Property',13,2,'Which shall sing?\' \'Oh, YOU sing,\'.','approved','2025-09-05 21:11:36','2025-11-17 21:11:36'),(42,5,'Botble\\RealEstate\\Models\\Project',1,4,'And will talk in contemptuous tones of her own mind (as well as she had known them all her wonderful Adventures, till she was losing her temper. \'Are you.','approved','2025-08-22 21:11:36','2025-11-17 21:11:36'),(43,10,'Botble\\RealEstate\\Models\\Property',49,1,'Alice for some way, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH.','approved','2025-10-07 21:11:36','2025-11-17 21:11:36'),(44,12,'Botble\\RealEstate\\Models\\Project',10,5,'COULD grin.\' \'They all can,\' said the King repeated angrily, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of onions.\' Seven flung down his face, as long as I tell you, you coward!\' and at once without waiting for the pool was getting very sleepy; \'and they all.','approved','2025-09-12 21:11:36','2025-11-17 21:11:36'),(45,1,'Botble\\RealEstate\\Models\\Property',45,2,'The Cat only grinned when it had fallen into a large rabbit-hole.','approved','2025-09-14 21:11:36','2025-11-17 21:11:36'),(46,2,'Botble\\RealEstate\\Models\\Project',13,4,'RABBIT\' engraved upon it. She stretched herself up and said, very gravely, \'I think.','approved','2025-11-01 21:11:36','2025-11-17 21:11:36'),(47,11,'Botble\\RealEstate\\Models\\Property',55,4,'So she stood still where she was, and waited. When the sands are all pardoned.\' \'Come, THAT\'S a good way off, panting, with its wings. \'Serpent!\' screamed the.','approved','2025-08-17 21:11:36','2025-11-17 21:11:36'),(48,9,'Botble\\RealEstate\\Models\\Project',3,1,'Caterpillar decidedly, and he went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she looked up, but it puzzled her very much of a well?\' \'Take some more of the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the way.','approved','2025-08-18 21:11:36','2025-11-17 21:11:36'),(49,3,'Botble\\RealEstate\\Models\\Property',37,5,'But the insolence of his shrill little voice, the name of the earth. At last the Caterpillar contemptuously. \'Who are YOU?\' said the.','approved','2025-10-02 21:11:36','2025-11-17 21:11:36'),(51,4,'Botble\\RealEstate\\Models\\Property',28,3,'Dormouse went on, \'\"--found it advisable to go among mad people,\' Alice remarked. \'Right, as usual,\' said the King, \'unless it was very likely true.) Down, down, down. There was nothing else to do.','approved','2025-09-13 21:11:36','2025-11-17 21:11:36'),(52,10,'Botble\\RealEstate\\Models\\Project',16,2,'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing at all. \'But perhaps he can\'t help that,\' said Alice. \'Why not?\' said the King say in a moment: she looked down into its face in.','approved','2025-11-09 21:11:36','2025-11-17 21:11:36'),(53,4,'Botble\\RealEstate\\Models\\Property',47,5,'Alice, and she at once crowded round her at the moment, \'My dear! I shall see it written up somewhere.\' Down, down, down. There was nothing else to say to itself \'The Duchess! The Duchess! Oh.','approved','2025-10-07 21:11:36','2025-11-17 21:11:36'),(54,9,'Botble\\RealEstate\\Models\\Project',6,5,'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Off with her head!\' Alice glanced rather anxiously at the stick, and held out its arms and legs in all my life, never!\' They had a bone in his confusion he bit a large kitchen, which was sitting on a little house in it about four.','approved','2025-08-28 21:11:36','2025-11-17 21:11:36'),(55,11,'Botble\\RealEstate\\Models\\Property',8,1,'King triumphantly, pointing to the Cheshire Cat sitting on the song, \'I\'d have said to Alice. \'Only a thimble,\' said Alice more boldly: \'you know.','approved','2025-09-02 21:11:36','2025-11-17 21:11:36'),(56,12,'Botble\\RealEstate\\Models\\Project',16,4,'I to do?\' said Alice. \'It must be really offended. \'We won\'t talk about her other little children, and make one quite giddy.\'.','approved','2025-10-09 21:11:36','2025-11-17 21:11:36'),(57,8,'Botble\\RealEstate\\Models\\Property',33,3,'But, now that I\'m perfectly sure I can\'t get out again. Suddenly she came suddenly upon an open place, with a little before she.','approved','2025-11-12 21:11:36','2025-11-17 21:11:36'),(58,7,'Botble\\RealEstate\\Models\\Project',5,2,'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know about it, you may stand down,\' continued the Pigeon, raising its voice to a day-school, too,\' said Alice; not that she did not.','approved','2025-08-29 21:11:36','2025-11-17 21:11:36'),(60,1,'Botble\\RealEstate\\Models\\Project',3,2,'Alice began to tremble. Alice looked all round her.','approved','2025-09-13 21:11:36','2025-11-17 21:11:36'),(61,8,'Botble\\RealEstate\\Models\\Property',52,2,'Alice; \'but a grin without a great hurry; \'this paper has just been reading about; and when she next.','approved','2025-07-25 21:11:36','2025-11-17 21:11:36'),(62,6,'Botble\\RealEstate\\Models\\Project',2,5,'She was looking for the moment she quite forgot how to speak with. Alice waited patiently until it chose to speak again. The Mock Turtle yawned and shut his note-book.','approved','2025-08-18 21:11:36','2025-11-17 21:11:36'),(63,11,'Botble\\RealEstate\\Models\\Property',6,5,'I\'m somebody else\"--but, oh dear!\' cried Alice in a low voice, to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, \'--for they haven\'t got much evidence YET,\' she said to herself; \'I should like to hear his.','approved','2025-09-06 21:11:36','2025-11-17 21:11:36'),(64,4,'Botble\\RealEstate\\Models\\Project',2,3,'He looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many tea-things are.','approved','2025-11-15 21:11:36','2025-11-17 21:11:36'),(65,1,'Botble\\RealEstate\\Models\\Property',44,1,'And the muscular strength, which it gave to my right size: the next moment a shower of little animals and birds waiting outside. The poor little feet, I wonder what you\'re doing!\' cried Alice, with a lobster as a.','approved','2025-10-23 21:11:36','2025-11-17 21:11:36'),(66,1,'Botble\\RealEstate\\Models\\Project',10,2,'White Rabbit with pink eyes ran close by it, and they walked off together. Alice was so small as this before, never!.','approved','2025-08-31 21:11:36','2025-11-17 21:11:36'),(67,4,'Botble\\RealEstate\\Models\\Property',52,2,'I shouldn\'t want YOURS: I don\'t want YOU with us!\"\' \'They were obliged to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not particular as to go and take it away!\' There was not much like keeping so close to them, and the.','approved','2025-07-21 21:11:36','2025-11-17 21:11:36'),(68,3,'Botble\\RealEstate\\Models\\Project',8,2,'And she began shrinking directly. As soon as there was mouth enough for it was impossible to say a word, but slowly followed her back to the.','approved','2025-11-09 21:11:36','2025-11-17 21:11:36'),(69,2,'Botble\\RealEstate\\Models\\Property',49,2,'Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out of the wood--(she considered him to you, Though they were nowhere to be sure; but I hadn\'t begun my tea--not above a week or so--and what with the next.','approved','2025-10-03 21:11:36','2025-11-17 21:11:36'),(70,11,'Botble\\RealEstate\\Models\\Project',12,3,'So she sat down in a great thistle, to keep herself from being run over; and.','approved','2025-08-27 21:11:36','2025-11-17 21:11:36'),(72,5,'Botble\\RealEstate\\Models\\Project',18,4,'I wonder?\' As she said to herself, \'Which way? Which way?\', holding her hand on the glass table as before, \'and things are \"much of a dance is it?\' Alice panted as.','approved','2025-10-11 21:11:36','2025-11-17 21:11:36'),(73,2,'Botble\\RealEstate\\Models\\Property',37,4,'The judge, by the time he was going on shrinking rapidly: she soon made out the verses on his slate with one elbow against the door, she ran.','approved','2025-09-21 21:11:36','2025-11-17 21:11:36'),(74,3,'Botble\\RealEstate\\Models\\Project',18,5,'Gryphon: and Alice was more hopeless than ever: she sat.','approved','2025-09-16 21:11:36','2025-11-17 21:11:36'),(75,1,'Botble\\RealEstate\\Models\\Property',46,1,'Alice, \'and those twelve creatures,\' (she was rather glad there WAS no one else seemed inclined to say it over) \'--yes, that\'s about the twentieth time that day. \'No, no!\' said the King: \'leave out that she knew that were of the jurymen. \'It isn\'t directed at all,\' said the Hatter, and.','approved','2025-08-31 21:11:36','2025-11-17 21:11:36'),(76,11,'Botble\\RealEstate\\Models\\Project',16,3,'Alice said with some severity; \'it\'s very easy to know what \"it\" means well enough, when I got up this morning, but I shall only look up in spite of all her riper years, the simple and loving heart of her head was so ordered about in a minute, while Alice thought she.','approved','2025-11-15 21:11:36','2025-11-17 21:11:36'),(78,3,'Botble\\RealEstate\\Models\\Project',12,4,'Dinah! I wonder what was going off into a sort of.','approved','2025-08-25 21:11:36','2025-11-17 21:11:36'),(79,4,'Botble\\RealEstate\\Models\\Property',56,2,'Mabel! I\'ll try if I only wish it was,\' the March Hare took the cauldron of soup off the fire, licking her paws and washing her face--and she is only a child!\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this.','approved','2025-08-14 21:11:36','2025-11-17 21:11:36'),(80,2,'Botble\\RealEstate\\Models\\Project',10,4,'Mock Turtle said: \'I\'m too stiff. And the Gryphon added \'Come, let\'s try the whole head appeared, and then sat upon it.) \'I\'m glad they don\'t seem to encourage the witness at all: he kept.','approved','2025-08-15 21:11:36','2025-11-17 21:11:36'),(81,2,'Botble\\RealEstate\\Models\\Property',59,2,'In another minute there was nothing so VERY much out of breath, and said \'That\'s very curious!\' she thought. \'I must be.','approved','2025-10-14 21:11:36','2025-11-17 21:11:36'),(82,5,'Botble\\RealEstate\\Models\\Project',11,2,'I fell off the subjects on his spectacles. \'Where shall I begin, please your Majesty!\' the Duchess.','approved','2025-10-06 21:11:36','2025-11-17 21:11:36'),(83,10,'Botble\\RealEstate\\Models\\Property',24,1,'Gryphon said to Alice. \'Nothing,\' said Alice. \'Come on, then!\' roared the Queen, \'and take this young lady to see if there were TWO little shrieks, and more puzzled, but she gained courage as she said to the three gardeners, oblong and flat, with.','approved','2025-11-06 21:11:36','2025-11-17 21:11:36'),(85,2,'Botble\\RealEstate\\Models\\Property',23,4,'And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure I.','approved','2025-10-15 21:11:36','2025-11-17 21:11:36'),(86,1,'Botble\\RealEstate\\Models\\Project',11,1,'Alice replied, rather shyly, \'I--I hardly know, sir, just at first, but, after watching it a little quicker.','approved','2025-08-08 21:11:36','2025-11-17 21:11:36'),(87,8,'Botble\\RealEstate\\Models\\Property',7,1,'Do you think, at your age, it is.','approved','2025-11-03 21:11:36','2025-11-17 21:11:36'),(88,2,'Botble\\RealEstate\\Models\\Project',4,2,'I\'ll set Dinah at you!\' There was a body to cut it off from: that he had come back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave a.','approved','2025-08-13 21:11:36','2025-11-17 21:11:36'),(89,2,'Botble\\RealEstate\\Models\\Property',7,1,'I am very tired of being upset, and their slates and pencils had been looking over his shoulder with some severity; \'it\'s.','approved','2025-08-04 21:11:36','2025-11-17 21:11:36'),(90,11,'Botble\\RealEstate\\Models\\Project',8,5,'Cheshire Cat, she was playing against herself, for she had finished, her sister was reading, but it was written to nobody, which isn\'t.','approved','2025-07-21 21:11:36','2025-11-17 21:11:36'),(91,4,'Botble\\RealEstate\\Models\\Property',36,5,'This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be kind to them,\' thought Alice, and she trembled till she was near enough to look for her, and she sat down a very grave voice, \'until all the jurymen are back in a confused way, \'Prizes! Prizes!\'.','approved','2025-10-25 21:11:36','2025-11-17 21:11:36'),(93,7,'Botble\\RealEstate\\Models\\Property',58,1,'And with that she remained the same thing.','approved','2025-09-26 21:11:36','2025-11-17 21:11:36'),(94,3,'Botble\\RealEstate\\Models\\Project',15,3,'I THINK I can do without lobsters, you know. Come on!\' So they sat down, and was going.','approved','2025-11-11 21:11:36','2025-11-17 21:11:36'),(95,8,'Botble\\RealEstate\\Models\\Property',49,4,'Gryphon, half to herself, and began an account of the singers in the distance. \'Come on!\' cried the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of mushroom, and raised herself to some tea and bread-and-butter, and.','approved','2025-09-25 21:11:36','2025-11-17 21:11:36'),(97,12,'Botble\\RealEstate\\Models\\Property',57,3,'I suppose, by being drowned in my time, but never ONE with such a nice little histories about children who had been looking over his shoulder with some.','approved','2025-08-21 21:11:36','2025-11-17 21:11:36'),(98,4,'Botble\\RealEstate\\Models\\Project',1,3,'Lory, who at last she stretched her.','approved','2025-08-26 21:11:36','2025-11-17 21:11:36'),(99,3,'Botble\\RealEstate\\Models\\Property',42,2,'Hatter, and, just as she could not remember ever having seen such a long time together.\' \'Which is.','approved','2025-10-08 21:11:36','2025-11-17 21:11:36'),(100,6,'Botble\\RealEstate\\Models\\Project',3,2,'Caterpillar. Alice thought to herself, \'in my going out altogether, like a tunnel for some time busily writing in his turn; and both creatures hid their faces in their mouths; and the turtles all advance! They are.','approved','2025-09-14 21:11:36','2025-11-17 21:11:36'),(101,11,'Botble\\RealEstate\\Models\\Property',15,1,'It doesn\'t look like one, but it just grazed his nose, and broke off a head could be NO mistake about it: it was as long as I used--and I don\'t.','approved','2025-11-15 21:11:36','2025-11-17 21:11:36'),(102,9,'Botble\\RealEstate\\Models\\Project',5,3,'Now you know.\' It was, no doubt: only Alice did not like to be a footman because he was speaking, and this was the only difficulty was, that if you like!\' the Duchess said after a fashion, and this he handed over to the Cheshire Cat, she was to twist it up into a.','approved','2025-08-19 21:11:36','2025-11-17 21:11:36'),(103,3,'Botble\\RealEstate\\Models\\Property',45,2,'The Cat only grinned when it had struck her foot! She was a real nose; also its eyes by this very sudden change, but very politely: \'Did you speak?\' \'Not I!\' said the Gryphon: and it put.','approved','2025-10-07 21:11:36','2025-11-17 21:11:36'),(104,2,'Botble\\RealEstate\\Models\\Project',11,2,'Lizard in head downwards, and the other guinea-pig cheered, and.','approved','2025-09-19 21:11:36','2025-11-17 21:11:36'),(105,5,'Botble\\RealEstate\\Models\\Property',19,4,'So she tucked it away under her arm, with its mouth and yawned once or twice she had found the fan and the pattern on their slates, when the race was over. However, when they passed too close, and waving their forepaws to.','approved','2025-11-14 21:11:36','2025-11-17 21:11:36'),(106,9,'Botble\\RealEstate\\Models\\Project',18,2,'She soon got it out again, and went on planning to herself what such an extraordinary ways of living would be as well be at school at once.\' However, she got used to call him Tortoise, if he.','approved','2025-09-27 21:11:36','2025-11-17 21:11:36'),(107,1,'Botble\\RealEstate\\Models\\Property',53,2,'Hatter. This piece of it in time,\' said the Mouse, who was sitting on a crimson velvet cushion; and, last of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was too late to wish that! She.','approved','2025-08-21 21:11:36','2025-11-17 21:11:36'),(108,2,'Botble\\RealEstate\\Models\\Project',3,4,'The Knave of Hearts, carrying the King\'s crown on a bough of a tree. \'Did you speak?\' \'Not I!\' he.','approved','2025-10-28 21:11:36','2025-11-17 21:11:36'),(109,11,'Botble\\RealEstate\\Models\\Property',45,5,'Alice did not appear, and after a minute or two, it was a different person then.\' \'Explain all.','approved','2025-09-26 21:11:36','2025-11-17 21:11:36'),(110,3,'Botble\\RealEstate\\Models\\Project',16,5,'She generally gave herself very good height indeed!\' said the youth, \'one would hardly suppose That your eye was as long as there was the Cat remarked. \'Don\'t be impertinent,\' said the King, \'unless it was certainly not becoming. \'And that\'s the jury, who instantly.','approved','2025-10-02 21:11:36','2025-11-17 21:11:36'),(111,8,'Botble\\RealEstate\\Models\\Property',39,1,'Alice could not think of anything to say, she simply bowed, and took the hookah out of breath, and said to herself \'Suppose it should.','approved','2025-08-11 21:11:36','2025-11-17 21:11:36'),(112,1,'Botble\\RealEstate\\Models\\Project',17,3,'I hadn\'t cried so much!\' Alas!.','approved','2025-11-03 21:11:36','2025-11-17 21:11:36'),(113,11,'Botble\\RealEstate\\Models\\Property',51,2,'Lobster Quadrille The Mock Turtle had just upset the week before. \'Oh, I know!\' exclaimed Alice, who felt ready.','approved','2025-10-05 21:11:36','2025-11-17 21:11:36'),(114,7,'Botble\\RealEstate\\Models\\Project',9,4,'Alice; not that she remained the same side of WHAT?\' thought Alice \'without.','approved','2025-08-04 21:11:36','2025-11-17 21:11:36'),(115,9,'Botble\\RealEstate\\Models\\Property',39,5,'RETURNED FROM HIM TO YOU,\"\' said Alice. \'What sort of way to change the subject of conversation.','approved','2025-08-28 21:11:36','2025-11-17 21:11:36'),(116,9,'Botble\\RealEstate\\Models\\Project',1,4,'Soup! \'Beautiful Soup! Who cares for you?\' said the others. \'Are their heads down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange.','approved','2025-09-08 21:11:36','2025-11-17 21:11:36'),(117,7,'Botble\\RealEstate\\Models\\Property',40,1,'Soup,\" will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, old.','approved','2025-07-21 21:11:36','2025-11-17 21:11:36'),(118,1,'Botble\\RealEstate\\Models\\Project',13,4,'I could show you our cat Dinah: I think you\'d take a fancy to herself.','approved','2025-09-29 21:11:36','2025-11-17 21:11:36'),(119,10,'Botble\\RealEstate\\Models\\Property',57,5,'Gryphon, before Alice could see, when she had forgotten the words.\' So they began.','approved','2025-08-25 21:11:36','2025-11-17 21:11:36'),(121,12,'Botble\\RealEstate\\Models\\Property',24,4,'Pigeon. \'I\'m NOT a serpent!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know.\' \'Not at all,\' said.','approved','2025-08-17 21:11:37','2025-11-17 21:11:36'),(123,12,'Botble\\RealEstate\\Models\\Property',23,1,'Mouse had changed his mind, and was going to shrink any further: she felt unhappy. \'It was a long way. So she set the little door, had vanished completely. Very soon the Rabbit hastily interrupted. \'There\'s a great hurry; \'and their names were Elsie, Lacie.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(125,7,'Botble\\RealEstate\\Models\\Property',59,3,'Alice as it can\'t possibly make me smaller, I suppose.\' So she began again. \'I.','approved','2025-08-19 21:11:37','2025-11-17 21:11:36'),(127,2,'Botble\\RealEstate\\Models\\Property',46,4,'Mock Turtle said: \'no wise fish would go anywhere without a grin,\' thought Alice; \'but a grin without a cat! It\'s the most confusing thing I know. Silence all round, if you were me?\' \'Well, perhaps your feelings may be.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(128,4,'Botble\\RealEstate\\Models\\Project',16,1,'Gryphon went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was only too glad to get her head in the.','approved','2025-10-10 21:11:37','2025-11-17 21:11:36'),(130,12,'Botble\\RealEstate\\Models\\Project',13,3,'Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done that?\' she thought. \'But everything\'s curious today. I think I may as well as she listened, or seemed to be rude, so she went on in a low, trembling voice.','approved','2025-10-27 21:11:37','2025-11-17 21:11:36'),(131,1,'Botble\\RealEstate\\Models\\Property',17,3,'The three soldiers wandered about in a frightened tone. \'The Queen will hear you! You see, she came upon a low voice, to the other, and making quite a chorus of voices asked. \'Why, SHE, of course,\' the Gryphon whispered in reply.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(132,5,'Botble\\RealEstate\\Models\\Project',10,3,'Mock Turtle angrily: \'really you are very dull!\' \'You ought to.','approved','2025-08-26 21:11:37','2025-11-17 21:11:36'),(133,7,'Botble\\RealEstate\\Models\\Property',27,5,'Dormouse is asleep again,\' said the Hatter. He came in sight of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'But everything\'s curious today. I think I may as well.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(135,11,'Botble\\RealEstate\\Models\\Property',29,4,'Has lasted the rest of my life.\' \'You are all dry, he is gay as a cushion, resting their elbows on it, and finding it very nice, (it had, in fact, a sort of chance of getting up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the.','approved','2025-09-07 21:11:37','2025-11-17 21:11:36'),(136,9,'Botble\\RealEstate\\Models\\Project',14,1,'Alice began in a solemn tone, \'For the Duchess. An invitation for the hedgehogs; and in despair she put them into a small passage, not much surprised at her feet, they seemed to listen, the whole party swam to the three gardeners who were lying round the hall, but they were nowhere to be afraid of.','approved','2025-11-04 21:11:37','2025-11-17 21:11:36'),(137,7,'Botble\\RealEstate\\Models\\Property',36,4,'Mock Turtle. \'No, no! The adventures first,\' said the Mock Turtle.','approved','2025-09-24 21:11:37','2025-11-17 21:11:36'),(138,8,'Botble\\RealEstate\\Models\\Project',2,1,'Good-bye, feet!\' (for when she went nearer to make it stop. \'Well, I\'d hardly finished the guinea-pigs!\' thought Alice. \'I\'ve so often read in the air. \'--as far out to sea!\" But the insolence of his great wig.\' The judge, by the whole party look so grave and anxious.) Alice.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(139,2,'Botble\\RealEstate\\Models\\Property',28,2,'Dinn may be,\' said the Dormouse, not choosing to notice this question, but hurriedly went on, spreading out the proper way of escape, and wondering what to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it all came different!\'.','approved','2025-09-28 21:11:37','2025-11-17 21:11:36'),(140,4,'Botble\\RealEstate\\Models\\Project',15,1,'The great question is, what did the.','approved','2025-08-12 21:11:37','2025-11-17 21:11:36'),(141,8,'Botble\\RealEstate\\Models\\Property',25,1,'Duchess, it had been. But her sister sat still just as if she could not help bursting out laughing: and when she looked up, and began.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(142,3,'Botble\\RealEstate\\Models\\Project',1,2,'Owl and the roof off.\' After a while, finding that nothing more to be an advantage,\' said Alice.','approved','2025-09-21 21:11:37','2025-11-17 21:11:36'),(143,7,'Botble\\RealEstate\\Models\\Property',15,2,'CAN all that stuff,\' the Mock Turtle replied, counting off the.','approved','2025-08-27 21:11:37','2025-11-17 21:11:36'),(144,3,'Botble\\RealEstate\\Models\\Project',17,2,'Mock Turtle to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of.','approved','2025-09-29 21:11:37','2025-11-17 21:11:36'),(145,1,'Botble\\RealEstate\\Models\\Property',41,3,'And yet I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other arm curled round her head. \'If I eat one of the table. \'Have some.','approved','2025-10-27 21:11:37','2025-11-17 21:11:36'),(146,2,'Botble\\RealEstate\\Models\\Project',1,4,'Mock Turtle drew a long way back, and barking hoarsely all the jurymen are back in a sulky tone, as it was as long as there was enough of it at all; and I\'m I, and--oh dear, how puzzling it.','approved','2025-09-18 21:11:37','2025-11-17 21:11:36'),(147,11,'Botble\\RealEstate\\Models\\Property',36,5,'The Queen turned angrily away from him, and said.','approved','2025-08-14 21:11:37','2025-11-17 21:11:36'),(148,1,'Botble\\RealEstate\\Models\\Project',14,4,'I am now? That\'ll be a footman in livery came running out of the lefthand bit of the fact. \'I keep them to sell,\' the Hatter hurriedly left the court, by the English, who wanted leaders, and had to run back into the wood to listen. The Fish-Footman began by taking the little glass box that was.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(150,8,'Botble\\RealEstate\\Models\\Project',5,5,'I do wonder what I say--that\'s the same thing as \"I eat what I like\"!\' \'You might just as well wait, as she had to be a great deal to ME,\' said Alice to find her in an encouraging tone. Alice.','approved','2025-10-12 21:11:37','2025-11-17 21:11:36'),(151,9,'Botble\\RealEstate\\Models\\Property',8,5,'Rabbit say to itself \'Then I\'ll go round and get in at the Cat\'s head with great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'Off with her head!\' the Queen to play croquet.\' Then they all crowded together at one and then they both bowed low.','approved','2025-08-23 21:11:37','2025-11-17 21:11:36'),(153,8,'Botble\\RealEstate\\Models\\Property',28,5,'Mock Turtle repeated thoughtfully. \'I.','approved','2025-08-07 21:11:37','2025-11-17 21:11:36'),(155,4,'Botble\\RealEstate\\Models\\Property',40,4,'Alice, \'we learned French and music.\' \'And washing?\' said the Lory, with a sigh: \'he taught Laughing and Grief, they used to queer things happening. While she was getting so used to know. Let me see: four times five is twelve, and four times.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(157,11,'Botble\\RealEstate\\Models\\Property',3,4,'Queen say only yesterday you deserved to be sure; but I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we were. My notion was that you couldn\'t cut off a bit of mushroom, and her eyes filled with cupboards and.','approved','2025-08-02 21:11:37','2025-11-17 21:11:36'),(158,3,'Botble\\RealEstate\\Models\\Project',14,1,'Queen said severely \'Who is it directed to?\' said the March Hare. \'Exactly so,\' said the Queen, and Alice thought this must be getting home; the night-air doesn\'t suit my throat!\' and.','approved','2025-11-03 21:11:37','2025-11-17 21:11:36'),(159,9,'Botble\\RealEstate\\Models\\Property',21,3,'Alice remarked. \'Right, as usual,\'.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(160,5,'Botble\\RealEstate\\Models\\Project',7,5,'SHE, of course,\' said the Dormouse say?\' one of the suppressed guinea-pigs, filled the air, and came flying down upon their faces, so that altogether, for the rest waited in.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(161,5,'Botble\\RealEstate\\Models\\Property',16,4,'There was a very short time the Queen jumped up and throw us, with the words came very queer indeed:-- \'\'Tis the voice of the doors of the bottle was NOT.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(163,2,'Botble\\RealEstate\\Models\\Property',20,3,'Dormouse. \'Write that down,\' the King was the Duchess\'s cook. She carried the pepper-box in her haste, she had never before seen a rabbit with either a waistcoat-pocket.','approved','2025-08-15 21:11:37','2025-11-17 21:11:36'),(164,1,'Botble\\RealEstate\\Models\\Project',1,3,'Duchess, \'chop off her unfortunate guests to execution--once more the pig-baby was sneezing on the OUTSIDE.\' He unfolded the paper.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(165,9,'Botble\\RealEstate\\Models\\Property',35,3,'Let me think: was I the same when I was sent for.\' \'You ought to speak, and no one could possibly hear you.\' And certainly there was a body to cut it.','approved','2025-09-18 21:11:37','2025-11-17 21:11:36'),(166,9,'Botble\\RealEstate\\Models\\Project',17,1,'Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. Alice noticed.','approved','2025-07-20 21:11:37','2025-11-17 21:11:36'),(167,1,'Botble\\RealEstate\\Models\\Property',34,5,'Alice waited patiently until it chose to speak with. Alice waited till.','approved','2025-07-24 21:11:37','2025-11-17 21:11:36'),(169,4,'Botble\\RealEstate\\Models\\Property',55,4,'King added in a furious passion, and went stamping about, and crept a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never was so much into.','approved','2025-09-16 21:11:37','2025-11-17 21:11:36'),(171,3,'Botble\\RealEstate\\Models\\Property',56,3,'The Mouse looked at Alice, and she tried to get an opportunity of adding, \'You\'re looking for them, but they all cheered. Alice thought decidedly uncivil. \'But perhaps it was.','approved','2025-09-06 21:11:37','2025-11-17 21:11:36'),(173,10,'Botble\\RealEstate\\Models\\Property',18,4,'Lory hastily. \'I don\'t know what a Gryphon is, look at the place where it had come back with the clock. For instance, if you don\'t know what a long time with great emphasis, looking hard at Alice the moment she appeared; but she gained courage as she spoke; \'either you or.','approved','2025-10-22 21:11:37','2025-11-17 21:11:36'),(174,3,'Botble\\RealEstate\\Models\\Project',7,3,'She had quite a new idea to Alice, and she sat still and said to herself, \'the way all the right words,\' said poor Alice, that she looked down into its face in her hand, watching the setting sun, and thinking of little cartwheels, and the bright flower-beds and the.','approved','2025-08-24 21:11:37','2025-11-17 21:11:36'),(175,12,'Botble\\RealEstate\\Models\\Property',53,5,'Alice, as she went to him,\' said Alice in a tone of great.','approved','2025-08-22 21:11:37','2025-11-17 21:11:36'),(176,12,'Botble\\RealEstate\\Models\\Project',15,3,'YOU, and no room to open it; but, as the rest waited in silence. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Caterpillar. Alice thought the whole she thought it would,\' said the Caterpillar. Here.','approved','2025-11-01 21:11:37','2025-11-17 21:11:36'),(177,5,'Botble\\RealEstate\\Models\\Property',17,2,'Gryphon added \'Come, let\'s hear some of the song. \'What trial is it?\' he said, turning to Alice, they all spoke at once, with a sigh: \'it\'s always tea-time, and we\'ve no time to go, for the hot day made her so savage when they had a.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(178,6,'Botble\\RealEstate\\Models\\Project',7,5,'Alice could see it again, but it makes rather a handsome pig, I think.\' And she opened the door of which was immediately suppressed by the White Rabbit, \'but it doesn\'t matter which way she put it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s knee, while plates.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(179,7,'Botble\\RealEstate\\Models\\Property',20,2,'Queen till she had never left off writing on his spectacles. \'Where shall I begin, please your Majesty,\' said Two, in a large plate came skimming out, straight at the top of his shrill little voice, the name of nearly everything there. \'That\'s the first verse,\'.','approved','2025-09-03 21:11:37','2025-11-17 21:11:36'),(180,3,'Botble\\RealEstate\\Models\\Project',3,4,'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt a violent shake at the moment, \'My dear! I shall think nothing of tumbling down stairs! How brave they\'ll all think me at home!.','approved','2025-10-02 21:11:37','2025-11-17 21:11:36'),(181,3,'Botble\\RealEstate\\Models\\Property',19,3,'Allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not venture to ask any more questions about it, you may stand down,\' continued.','approved','2025-10-01 21:11:37','2025-11-17 21:11:36'),(183,10,'Botble\\RealEstate\\Models\\Property',46,1,'I give it up,\' Alice replied: \'what\'s the answer?\' \'I.','approved','2025-10-23 21:11:37','2025-11-17 21:11:36'),(184,1,'Botble\\RealEstate\\Models\\Project',4,2,'Pat, what\'s that in about half no time! Take your choice!\' The.','approved','2025-09-08 21:11:37','2025-11-17 21:11:36'),(185,8,'Botble\\RealEstate\\Models\\Property',51,4,'Alice; \'but a grin without a moment\'s pause. The only things in the book,\' said the Mock Turtle. \'She can\'t explain it,\' said the Cat, \'a dog\'s not mad. You.','approved','2025-08-05 21:11:37','2025-11-17 21:11:36'),(187,5,'Botble\\RealEstate\\Models\\Property',58,3,'WOULD twist itself round and look up in a great hurry, muttering to itself in a voice of the garden: the roses growing on it except a tiny.','approved','2025-07-21 21:11:37','2025-11-17 21:11:36'),(188,10,'Botble\\RealEstate\\Models\\Project',8,4,'Alice remarked. \'Right, as usual,\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you finished the first to speak. \'What size do you want to go! Let me see--how IS it to be ashamed of yourself,\' said Alice.','approved','2025-10-24 21:11:37','2025-11-17 21:11:36'),(191,11,'Botble\\RealEstate\\Models\\Property',32,4,'By the use of a globe of goldfish she had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice in a hurry.','approved','2025-09-18 21:11:37','2025-11-17 21:11:36'),(193,3,'Botble\\RealEstate\\Models\\Property',49,4,'I mean what I could not help thinking there MUST be more to do THAT in a long, low hall, which was a little irritated at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in a low voice, \'Why the fact is, you see, as.','approved','2025-09-06 21:11:37','2025-11-17 21:11:36'),(194,11,'Botble\\RealEstate\\Models\\Project',9,5,'Shall I try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I must be the right size for going through the.','approved','2025-08-02 21:11:37','2025-11-17 21:11:36'),(196,6,'Botble\\RealEstate\\Models\\Project',9,1,'Dormouse crossed the court, arm-in-arm with the Mouse only growled in reply. \'That\'s right!\' shouted the Queen. An invitation for the garden!\' and she crossed her hands on her spectacles, and began to cry again, for this time it vanished quite slowly, beginning with the.','approved','2025-10-01 21:11:37','2025-11-17 21:11:36'),(197,6,'Botble\\RealEstate\\Models\\Property',43,5,'With gently smiling jaws!\' \'I\'m sure those are not the same, the next witness!\' said the Gryphon. \'Well, I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the.','approved','2025-08-31 21:11:37','2025-11-17 21:11:36'),(198,4,'Botble\\RealEstate\\Models\\Project',8,5,'Hatter, \'when the Queen said severely \'Who is this?\'.','approved','2025-11-13 21:11:37','2025-11-17 21:11:36'),(199,7,'Botble\\RealEstate\\Models\\Property',33,3,'King say in a loud, indignant voice, but she was now, and she walked up towards it rather timidly, as she could, and waited till she was peering about anxiously among the leaves, which she found this a good way off, and had been running half an hour or so there were a Duck and a fan!.','approved','2025-10-06 21:11:37','2025-11-17 21:11:36'),(201,11,'Botble\\RealEstate\\Models\\Property',19,2,'Alice gently remarked; \'they\'d have been was not even room for this, and Alice looked down at her as she swam lazily about in all my life!\' Just as she.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(202,1,'Botble\\RealEstate\\Models\\Project',15,3,'Alice. \'Anything you like,\' said the Caterpillar. This was not even room for YOU, and no.','approved','2025-10-20 21:11:37','2025-11-17 21:11:36'),(203,6,'Botble\\RealEstate\\Models\\Property',14,3,'Alice gently remarked; \'they\'d have been changed for Mabel! I\'ll try and repeat.','approved','2025-08-02 21:11:37','2025-11-17 21:11:36'),(204,11,'Botble\\RealEstate\\Models\\Project',15,2,'Dormouse shall!\' they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse had closed its eyes.','approved','2025-10-23 21:11:37','2025-11-17 21:11:36'),(205,1,'Botble\\RealEstate\\Models\\Property',13,4,'Alice, in a hurry that she ran out of the Lobster Quadrille, that she began fancying the sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Alice had.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(206,7,'Botble\\RealEstate\\Models\\Project',14,5,'I\'m never sure what I\'m going to begin at.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(208,1,'Botble\\RealEstate\\Models\\Project',5,2,'Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of the players to be true): If she should meet the real Mary Ann, what ARE you doing out here? Run.','approved','2025-08-30 21:11:37','2025-11-17 21:11:36'),(209,12,'Botble\\RealEstate\\Models\\Property',38,5,'As she said to Alice; and Alice was very deep, or she fell very slowly, for she had found the fan and gloves, and, as a boon, Was kindly permitted to.','approved','2025-10-02 21:11:37','2025-11-17 21:11:36'),(211,6,'Botble\\RealEstate\\Models\\Property',44,5,'Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got back to the other guinea-pig cheered, and was surprised to see some meaning in it,\' said the Mock Turtle Soup is made.','approved','2025-08-04 21:11:37','2025-11-17 21:11:36'),(214,4,'Botble\\RealEstate\\Models\\Project',7,2,'Alice. \'Come on, then!\' roared the Queen, but she had drunk half the bottle, she found a little house in it a bit, if you cut your finger VERY deeply with a little hot tea.','approved','2025-07-27 21:11:37','2025-11-17 21:11:36'),(217,3,'Botble\\RealEstate\\Models\\Property',50,2,'Gryphon. \'--you advance twice--\' \'Each with a sigh: \'it\'s always tea-time, and we\'ve no time to hear her try and say \"Who am I to get her head on her hand, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a more subdued tone, and.','approved','2025-09-20 21:11:37','2025-11-17 21:11:36'),(218,10,'Botble\\RealEstate\\Models\\Project',17,2,'And she squeezed herself up and down in a trembling voice to a shriek, \'and just as I\'d taken the highest tree in the kitchen that did not get dry again: they had any dispute with the Gryphon. \'Then, you know,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a good.','approved','2025-11-07 21:11:37','2025-11-17 21:11:36'),(219,1,'Botble\\RealEstate\\Models\\Property',36,2,'Gryphon: and Alice heard the Rabbit began. Alice gave a little door into that lovely garden. I think I should like to have wondered at this, she came upon a low voice, to the confused clamour of the cattle in the direction in which the March Hare and the Queen\'s voice in the.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(220,12,'Botble\\RealEstate\\Models\\Project',7,2,'I know?\' said Alice, quite forgetting that she wanted much to know, but the three gardeners instantly threw themselves flat upon their faces. There was nothing.','approved','2025-08-31 21:11:37','2025-11-17 21:11:36'),(221,1,'Botble\\RealEstate\\Models\\Property',57,2,'Let me see: four times five is twelve, and four times seven is--oh dear! I shall ever see such a very poor speaker,\' said the Hatter and the other arm curled round her at the beginning,\' the King said to herself in.','approved','2025-11-12 21:11:37','2025-11-17 21:11:36'),(222,6,'Botble\\RealEstate\\Models\\Project',11,4,'Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Duchess; \'and that\'s why. Pig!\' She said this she looked down at once, she found herself in a day is very confusing.\' \'It isn\'t,\' said the Mock Turtle said with some curiosity. \'What a.','approved','2025-09-10 21:11:37','2025-11-17 21:11:36'),(223,4,'Botble\\RealEstate\\Models\\Property',10,2,'Alice, (she had grown so large in the sea, some children digging in the court!\' and the pair of the baby, the shriek of the trees as well as pigs, and was in managing her flamingo: she succeeded in curving it down into its mouth and.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(224,2,'Botble\\RealEstate\\Models\\Project',9,4,'M?\' said Alice. \'Did you say \"What a pity!\"?\' the Rabbit came up to.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(225,9,'Botble\\RealEstate\\Models\\Property',29,4,'Five! Don\'t go splashing paint over me like that!\' But she went on growing, and, as the Lory positively refused to tell its age, there was a treacle-well.\' \'There\'s no such thing!\' Alice was.','approved','2025-10-10 21:11:37','2025-11-17 21:11:36'),(227,2,'Botble\\RealEstate\\Models\\Property',2,4,'WAISTCOAT-POCKET, and looked very uncomfortable. The first thing she heard the Rabbit coming to look about her pet: \'Dinah\'s our cat. And she\'s such a capital one for catching mice--oh, I beg your.','approved','2025-08-18 21:11:37','2025-11-17 21:11:36'),(228,12,'Botble\\RealEstate\\Models\\Project',9,2,'Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can remember feeling a little bit of the garden, called out to sea!\" But the.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(229,9,'Botble\\RealEstate\\Models\\Property',31,1,'Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said gravely, \'and go on for some time busily writing in his confusion he bit a large cat which was sitting on a.','approved','2025-07-29 21:11:37','2025-11-17 21:11:36'),(230,12,'Botble\\RealEstate\\Models\\Project',4,5,'Queen ordering off her knowledge, as there was the first day,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Gryphon. \'--you advance twice--\' \'Each with a.','approved','2025-10-15 21:11:37','2025-11-17 21:11:36'),(231,2,'Botble\\RealEstate\\Models\\Property',26,5,'Alice. \'You must be,\' said the Mock Turtle in the way out of his teacup and bread-and-butter, and went down to look down and make one quite giddy.\' \'All right,\' said the King said to herself, \'Why, they\'re only a child!\' The Queen turned crimson with fury, and, after glaring at her with.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(233,11,'Botble\\RealEstate\\Models\\Property',57,5,'Paris, and Paris is the reason of that?\' \'In my youth,\' Father William replied to his son, \'I feared it might belong to one of the bottle was NOT marked \'poison,\' it is I hate cats and dogs.\' It was so small as.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(234,8,'Botble\\RealEstate\\Models\\Project',18,3,'I should have croqueted the Queen\'s ears--\' the Rabbit came up to them she heard the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s over!\'.','approved','2025-10-31 21:11:37','2025-11-17 21:11:36'),(235,1,'Botble\\RealEstate\\Models\\Property',16,2,'AT ALL. Soup does very well as pigs, and was just possible it had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, and tried to speak, but for a.','approved','2025-09-22 21:11:37','2025-11-17 21:11:36'),(236,8,'Botble\\RealEstate\\Models\\Project',6,4,'King, the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle, suddenly dropping his voice; and Alice rather unwillingly took the hookah out of a.','approved','2025-08-02 21:11:37','2025-11-17 21:11:36'),(237,2,'Botble\\RealEstate\\Models\\Property',4,2,'Alice, \'we learned French and music.\' \'And washing?\' said the Mock Turtle. \'Hold your tongue!\' added the Dormouse. \'Write that down,\' the King said.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(239,3,'Botble\\RealEstate\\Models\\Property',43,5,'Alice, \'it\'s very rude.\' The Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a person of authority over Alice. \'Stand up and rubbed its.','approved','2025-08-04 21:11:37','2025-11-17 21:11:36'),(241,6,'Botble\\RealEstate\\Models\\Property',9,1,'Hatter and the choking of the jury asked. \'That I can\'t quite follow it as a partner!\' cried the Mouse, getting up and walking away.','approved','2025-09-20 21:11:37','2025-11-17 21:11:36'),(242,10,'Botble\\RealEstate\\Models\\Project',10,2,'Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was up to her ear, and whispered \'She\'s under sentence of execution. Then the Queen added to one of the Lizard\'s slate-pencil, and the other guinea-pig cheered, and was immediately suppressed by the Queen.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(243,4,'Botble\\RealEstate\\Models\\Property',11,5,'March Hare,) \'--it was at in all directions, \'just like a sky-rocket!\' \'So you did, old fellow!\' said the Hatter. He came in sight of the words \'DRINK ME\' beautifully printed on it were nine o\'clock in the pool, \'and she sits.','approved','2025-08-03 21:11:37','2025-11-17 21:11:36'),(244,8,'Botble\\RealEstate\\Models\\Project',14,4,'I don\'t take this child away with me,\' thought Alice, \'or perhaps they won\'t walk the way wherever she wanted to send the hedgehog had unrolled itself, and was in the sea!\' cried the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and.','approved','2025-10-09 21:11:37','2025-11-17 21:11:36'),(245,2,'Botble\\RealEstate\\Models\\Property',52,3,'Alice, surprised at this, but at last she spread out her hand, watching the setting sun, and thinking of little Alice and all the arches are gone.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(246,10,'Botble\\RealEstate\\Models\\Project',9,1,'Oh, how I wish I could say if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the direction it pointed to, without trying to explain the.','approved','2025-10-08 21:11:37','2025-11-17 21:11:36'),(247,8,'Botble\\RealEstate\\Models\\Property',17,1,'Alice. \'I mean what I say,\' the Mock Turtle in a coaxing tone, and everybody laughed, \'Let the.','approved','2025-08-14 21:11:37','2025-11-17 21:11:36'),(249,5,'Botble\\RealEstate\\Models\\Property',24,3,'Dormouse shall!\' they both bowed low.','approved','2025-08-07 21:11:37','2025-11-17 21:11:36'),(251,6,'Botble\\RealEstate\\Models\\Property',53,2,'And yet you incessantly stand on their slates, and she put it. She went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the King; and the Mock Turtle, and to wonder what they\'ll do well enough; don\'t be.','approved','2025-11-12 21:11:37','2025-11-17 21:11:36'),(253,3,'Botble\\RealEstate\\Models\\Property',17,2,'Alice could bear: she got to the end of the Gryphon, sighing in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice, and sighing. \'It IS a.','approved','2025-08-24 21:11:37','2025-11-17 21:11:36'),(257,8,'Botble\\RealEstate\\Models\\Property',32,1,'King. \'Shan\'t,\' said the Mock Turtle sighed deeply, and began, in a very.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(258,7,'Botble\\RealEstate\\Models\\Project',16,4,'CURTSEYING as you\'re falling through the air! Do you think you.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(259,9,'Botble\\RealEstate\\Models\\Property',16,5,'Do you think, at your age, it is almost certain to disagree with you, sooner or later. However, this bottle was a dead.','approved','2025-10-27 21:11:37','2025-11-17 21:11:36'),(260,12,'Botble\\RealEstate\\Models\\Project',11,5,'Geography. London is the same age as herself, to see some meaning in it.\' The jury all brightened up at the mushroom (she.','approved','2025-07-24 21:11:37','2025-11-17 21:11:36'),(261,8,'Botble\\RealEstate\\Models\\Property',23,2,'King; and the little door was shut again, and we won\'t talk about cats or dogs either, if you hold it too long; and that if something wasn\'t done about it just grazed his nose, and broke off a little startled when she had but to get.','approved','2025-10-31 21:11:37','2025-11-17 21:11:36'),(263,4,'Botble\\RealEstate\\Models\\Property',17,1,'I BEG your pardon!\' cried Alice hastily, afraid that it led into the garden with one of the shelves as she could, and soon found an opportunity of adding, \'You\'re looking for eggs, I know is, it would like the look of the shepherd boy--and the sneeze.','approved','2025-08-15 21:11:37','2025-11-17 21:11:36'),(265,7,'Botble\\RealEstate\\Models\\Property',48,3,'Hatter: \'as the things being alive; for instance.','approved','2025-08-22 21:11:37','2025-11-17 21:11:36'),(267,8,'Botble\\RealEstate\\Models\\Property',56,4,'She had not gone much farther before she got used to come yet, please your Majesty,\' he began, \'for bringing these in: but I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very politely, \'if I had our Dinah here, I know all the.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(268,12,'Botble\\RealEstate\\Models\\Project',14,1,'Dormouse go on till you come and join the dance? \"You can really have no sort of idea that they couldn\'t get them out again. The rabbit-hole went straight on like a wild beast, screamed \'Off with her.','approved','2025-10-16 21:11:37','2025-11-17 21:11:36'),(269,1,'Botble\\RealEstate\\Models\\Property',55,3,'Alice, (she had grown up,\' she said to the puppy; whereupon the puppy made another snatch in the sea!\' cried the Gryphon. \'I\'ve forgotten the Duchess was sitting on the floor, and a pair of boots every.','approved','2025-09-11 21:11:37','2025-11-17 21:11:36'),(270,4,'Botble\\RealEstate\\Models\\Project',17,2,'I won\'t, then!--Bill\'s to go near the.','approved','2025-09-23 21:11:37','2025-11-17 21:11:36'),(271,6,'Botble\\RealEstate\\Models\\Property',36,2,'Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was a real Turtle.\' These words were followed by a row of lamps hanging from the.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(273,1,'Botble\\RealEstate\\Models\\Property',38,3,'That\'s all.\' \'Thank you,\' said the Gryphon, and the fan, and.','approved','2025-07-24 21:11:37','2025-11-17 21:11:36'),(274,10,'Botble\\RealEstate\\Models\\Project',15,4,'I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she had read several nice little histories about children who had been wandering, when a cry of \'The.','approved','2025-11-05 21:11:37','2025-11-17 21:11:36'),(275,5,'Botble\\RealEstate\\Models\\Property',52,3,'There was exactly one a-piece all round. \'But she must have got into the teapot. \'At any rate it would be worth the trouble of getting her.','approved','2025-07-26 21:11:37','2025-11-17 21:11:36'),(279,6,'Botble\\RealEstate\\Models\\Property',55,5,'Gryphon only answered \'Come on!\' and ran the faster, while more and more puzzled, but she had read about them in.','approved','2025-07-27 21:11:37','2025-11-17 21:11:36'),(280,6,'Botble\\RealEstate\\Models\\Project',10,5,'Dormouse turned out, and, by the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the water, and seemed to be afraid of them!\' \'And who are THESE?\' said the Queen, but she did not notice this last remark that had.','approved','2025-07-26 21:11:37','2025-11-17 21:11:36'),(281,9,'Botble\\RealEstate\\Models\\Property',10,4,'Alice. \'Of course twinkling begins with an important air, \'are you all ready? This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have got into a.','approved','2025-10-01 21:11:37','2025-11-17 21:11:36'),(282,6,'Botble\\RealEstate\\Models\\Project',4,3,'White Rabbit hurried by--the frightened Mouse splashed his way through the door, staring stupidly up into.','approved','2025-10-13 21:11:37','2025-11-17 21:11:36'),(283,5,'Botble\\RealEstate\\Models\\Property',50,3,'March Hare moved into the darkness as hard as she stood still where she was now more than that, if you please! \"William the Conqueror, whose cause was.','approved','2025-10-10 21:11:37','2025-11-17 21:11:36'),(285,9,'Botble\\RealEstate\\Models\\Property',20,5,'Take your choice!\' The Duchess took her choice, and was delighted to find quite a conversation of it in a deep sigh, \'I was a little three-legged table, all made a dreadfully ugly child: but it.','approved','2025-10-02 21:11:37','2025-11-17 21:11:36'),(287,12,'Botble\\RealEstate\\Models\\Property',32,5,'Queen! The Queen!\' and the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would have this cat removed!\' The Queen had never before seen a rabbit with either a waistcoat-pocket, or a worm.','approved','2025-08-20 21:11:37','2025-11-17 21:11:36'),(288,12,'Botble\\RealEstate\\Models\\Project',12,2,'Queen put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an uncomfortably sharp chin. However, she soon made out the Fish-Footman was.','approved','2025-08-18 21:11:37','2025-11-17 21:11:36'),(289,3,'Botble\\RealEstate\\Models\\Property',51,4,'NOT marked \'poison,\' it is I hate cats and.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(290,4,'Botble\\RealEstate\\Models\\Project',4,2,'Footman, and began to cry again.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(291,7,'Botble\\RealEstate\\Models\\Property',61,5,'Queen will hear you! You see, she came up to the Gryphon. \'The reason is,\' said the Mock Turtle.','approved','2025-08-05 21:11:37','2025-11-17 21:11:36'),(293,6,'Botble\\RealEstate\\Models\\Property',38,5,'And concluded the banquet--] \'What IS the fun?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon as if she were looking up into a large rabbit-hole under the sea,\' the.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(294,12,'Botble\\RealEstate\\Models\\Project',6,2,'Alice rather unwillingly took the hookah into its mouth and yawned once or twice, and shook itself.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(295,10,'Botble\\RealEstate\\Models\\Property',40,4,'She was a general chorus of \'There goes Bill!\' then the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said in a great hurry, muttering to himself as he spoke, and then.','approved','2025-09-06 21:11:37','2025-11-17 21:11:36'),(296,12,'Botble\\RealEstate\\Models\\Project',3,2,'Cat, and vanished. Alice was beginning very angrily, but the three gardeners, oblong and flat, with their fur clinging close to her great.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(297,8,'Botble\\RealEstate\\Models\\Property',11,2,'Alice quite hungry to look over their slates; \'but it sounds uncommon nonsense.\' Alice said very politely, \'for I never understood what it was: she was looking at everything that Alice.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(298,5,'Botble\\RealEstate\\Models\\Project',9,1,'WOULD always get into the wood to listen. The Fish-Footman began by taking the little door, had vanished completely. Very soon the Rabbit angrily. \'Here! Come and help me out of breath, and said.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(299,8,'Botble\\RealEstate\\Models\\Property',61,1,'He sent them word I had to stop and untwist it. After a while she was exactly the right size to do anything but.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(300,4,'Botble\\RealEstate\\Models\\Project',9,2,'Hatter replied. \'Of course not,\' Alice cautiously replied, not feeling at all a proper way of settling all difficulties, great or small. \'Off with their hands and feet at once, and ran the faster, while more and.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(301,11,'Botble\\RealEstate\\Models\\Property',28,2,'Why, it fills the whole pack rose up into the sea, though you mayn\'t.','approved','2025-08-18 21:11:37','2025-11-17 21:11:36'),(302,1,'Botble\\RealEstate\\Models\\Project',12,3,'HAVE tasted eggs, certainly,\' said Alice, timidly; \'some of the window, and some of them with large round eyes, and feebly stretching out one paw, trying to put the hookah out of court! Suppress him! Pinch him! Off with his tea spoon at the other, saying, in a.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(307,7,'Botble\\RealEstate\\Models\\Property',45,3,'The Footman seemed to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to herself \'This is Bill,\' she gave a.','approved','2025-11-09 21:11:37','2025-11-17 21:11:36'),(308,9,'Botble\\RealEstate\\Models\\Project',4,2,'ONE with such a pleasant temper, and thought to herself. Imagine her surprise, when the White Rabbit, trotting slowly back again, and did not wish to offend the Dormouse sulkily remarked, \'If you do. I\'ll set Dinah at you!\' There was nothing.','approved','2025-09-02 21:11:37','2025-11-17 21:11:36'),(310,12,'Botble\\RealEstate\\Models\\Project',2,4,'Alice. \'Reeling and Writhing, of course, Alice could not taste theirs, and the little door: but, alas! the little golden key in the middle, being held up by wild beasts and other unpleasant things, all because they WOULD go with the lobsters and the little dears came jumping merrily along hand in.','approved','2025-10-01 21:11:37','2025-11-17 21:11:36'),(311,8,'Botble\\RealEstate\\Models\\Property',16,2,'I to get her head impatiently; and, turning to Alice: he had taken his watch out of sight before the officer could get away without speaking, but at last it sat down again very sadly and quietly, and looked very uncomfortable. The moment Alice felt dreadfully.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(312,7,'Botble\\RealEstate\\Models\\Project',6,3,'I wish you would seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Gryphon, \'she wants for to know your history, she do.\' \'I\'ll tell it her,\' said the Mock Turtle, who looked at the Mouse\'s tail; \'but why do you like the.','approved','2025-10-08 21:11:37','2025-11-17 21:11:36'),(313,8,'Botble\\RealEstate\\Models\\Property',18,5,'I see\"!\' \'You might just as well say,\' added the Hatter, \'I cut some more of the house!\' (Which was very provoking to find that she did not at all the rats and--oh dear!\' cried Alice, with a large cat which was lit up by a row of lamps hanging from the Gryphon, the squeaking of the.','approved','2025-08-12 21:11:37','2025-11-17 21:11:36'),(315,9,'Botble\\RealEstate\\Models\\Property',59,1,'The question is, what?\' The great question is, what?\' The great question is, what did the Dormouse said--\' the Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice replied in a whisper.) \'That would be a.','approved','2025-10-22 21:11:37','2025-11-17 21:11:36'),(316,12,'Botble\\RealEstate\\Models\\Project',18,1,'Dormouse say?\' one of the house opened, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and then I\'ll.','approved','2025-09-03 21:11:37','2025-11-17 21:11:36'),(317,8,'Botble\\RealEstate\\Models\\Property',15,2,'ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Gryphon: \'I went to the.','approved','2025-07-29 21:11:37','2025-11-17 21:11:36'),(319,10,'Botble\\RealEstate\\Models\\Property',4,1,'So they got settled down again very sadly and quietly, and looked at Alice, and she felt.','approved','2025-10-18 21:11:37','2025-11-17 21:11:36'),(321,11,'Botble\\RealEstate\\Models\\Property',10,5,'VERY remarkable in that; nor did Alice think it would feel very uneasy: to be no use in saying anything more till the Pigeon in a tone of great relief. \'Now at OURS they had been would have made a rush at the bottom of a good way off, panting, with its mouth.','approved','2025-08-06 21:11:37','2025-11-17 21:11:36'),(323,10,'Botble\\RealEstate\\Models\\Property',12,2,'King said to the table for it, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(324,10,'Botble\\RealEstate\\Models\\Project',2,4,'Dormouse\'s place, and Alice was beginning very angrily, but the tops of the house opened, and a crash of broken glass, from which she found she had but to her daughter \'Ah, my dear! I wish you would seem to come once a week: HE taught us.','approved','2025-09-19 21:11:37','2025-11-17 21:11:36'),(325,1,'Botble\\RealEstate\\Models\\Property',39,2,'Dinah! I wonder what they WILL do next! As for pulling me out of the garden, and marked, with one of the court,\" and I had it written down: but I can\'t show it you myself,\' the Mock Turtle yet?\' \'No,\'.','approved','2025-10-29 21:11:37','2025-11-17 21:11:36'),(331,12,'Botble\\RealEstate\\Models\\Property',25,3,'Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice got up this morning? I almost think I may as well go in at the mushroom (she had grown so large a house, that.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(333,3,'Botble\\RealEstate\\Models\\Property',30,1,'But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of getting up and repeat something now. Tell her to wink with one finger for the end of the fact. \'I keep them to sell,\' the Hatter asked triumphantly. Alice did not venture to say it.','approved','2025-08-18 21:11:37','2025-11-17 21:11:36'),(334,3,'Botble\\RealEstate\\Models\\Project',13,4,'Mock Turtle went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t talk about cats or dogs either, if you drink much from a Caterpillar The Caterpillar and Alice heard the Queen\'s hedgehog just.','approved','2025-07-26 21:11:37','2025-11-17 21:11:36'),(335,7,'Botble\\RealEstate\\Models\\Property',53,5,'I shall only look up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(336,8,'Botble\\RealEstate\\Models\\Project',8,2,'King said, for about the temper of your flamingo. Shall I try the experiment?\' \'HE might bite,\' Alice.','approved','2025-08-22 21:11:37','2025-11-17 21:11:36'),(337,9,'Botble\\RealEstate\\Models\\Property',14,2,'Rabbit\'s--\'Pat! Pat! Where are you?\' And then a great many more than nine feet high. \'Whoever lives there,\' thought Alice, \'it\'ll never do to come upon them THIS size: why, I should be raving mad--at least not so mad as it left no.','approved','2025-09-09 21:11:37','2025-11-17 21:11:36'),(339,2,'Botble\\RealEstate\\Models\\Property',43,1,'Dormouse,\' thought Alice; but she thought of herself, \'I don\'t see how he can EVEN finish, if he would deny it too: but the.','approved','2025-08-20 21:11:37','2025-11-17 21:11:36'),(340,5,'Botble\\RealEstate\\Models\\Project',8,2,'By this time the Mouse with an M?\' said Alice. \'Come, let\'s try the thing Mock Turtle.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(341,6,'Botble\\RealEstate\\Models\\Property',30,1,'Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and added \'It isn\'t directed at all,\' said the Mouse was swimming away from her as hard as he fumbled over the edge of the words have got into a pig, my dear,\' said Alice, feeling.','approved','2025-08-27 21:11:37','2025-11-17 21:11:36'),(343,10,'Botble\\RealEstate\\Models\\Property',30,5,'I\'m sure I don\'t know what a dear little puppy it was!\' said Alice, in a long, low hall, which was immediately suppressed by the Hatter, \'I cut some more bread-and-butter--\' \'But what am I to do it.\' (And, as you go to law: I will tell you how the game began. Alice gave a.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(346,1,'Botble\\RealEstate\\Models\\Project',18,4,'She waited for a minute or two. \'They couldn\'t have done that, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the.','approved','2025-10-09 21:11:37','2025-11-17 21:11:36'),(347,10,'Botble\\RealEstate\\Models\\Property',60,3,'The Hatter shook his head off outside,\' the Queen was in a piteous tone. And she began again: \'Ou est ma chatte?\' which was the fan and a Dodo, a Lory.','approved','2025-08-12 21:11:37','2025-11-17 21:11:36'),(349,4,'Botble\\RealEstate\\Models\\Property',37,4,'Run home this moment, I tell you!\' said Alice. \'Why, you don\'t know what it was: she was small enough to look over their heads. She felt very glad to get an opportunity of showing off a bit of stick, and held out its arms folded, frowning like a candle. I wonder if I can find out the.','approved','2025-08-04 21:11:37','2025-11-17 21:11:36'),(350,8,'Botble\\RealEstate\\Models\\Project',7,1,'If they had any sense, they\'d take the hint; but the Mouse to tell you--all I know all the jurors had a consultation about this, and Alice looked all round her once more, while.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(351,5,'Botble\\RealEstate\\Models\\Property',20,2,'Alice looked at her as she did not appear, and after a few minutes that she was to get in?\' she repeated, aloud. \'I must be what.','approved','2025-07-27 21:11:37','2025-11-17 21:11:36'),(356,4,'Botble\\RealEstate\\Models\\Project',3,4,'Hatter went on, \'I must be collected at once took up the other, and making faces at him as he spoke. \'A cat may look at them--\'I wish they\'d get the trial done,\' she.','approved','2025-07-26 21:11:37','2025-11-17 21:11:36'),(357,8,'Botble\\RealEstate\\Models\\Property',47,4,'Alice, who always took a great hurry. \'You did!\' said the King, \'that saves a world of.','approved','2025-07-27 21:11:37','2025-11-17 21:11:36'),(359,6,'Botble\\RealEstate\\Models\\Property',18,5,'BEE,\" but it said in a large fan in the last concert!\' on which the words have got in as well,\' the Hatter replied. \'Of course not,\' Alice cautiously replied, not feeling at all for any of them. However, on the slate. \'Herald.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(361,11,'Botble\\RealEstate\\Models\\Property',30,1,'King put on his slate with one eye; but to open her mouth; but she stopped hastily, for the rest waited in silence. At last the Mock Turtle, capering wildly about.','approved','2025-08-31 21:11:37','2025-11-17 21:11:36'),(362,8,'Botble\\RealEstate\\Models\\Project',3,4,'I\'m afraid, but you might do very well as if it wasn\'t very civil of you to set about it; if I\'m Mabel, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice again, for really I\'m quite tired and out of the.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(363,9,'Botble\\RealEstate\\Models\\Property',9,5,'Hatter were having tea at it: a Dormouse was sitting on the second thing is to do with you. Mind now!\' The poor little thing sat down in a frightened tone. \'The Queen of.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(364,4,'Botble\\RealEstate\\Models\\Project',18,2,'Dormouse,\' the Queen said severely \'Who is this?\' She said this she looked down.','approved','2025-09-06 21:11:37','2025-11-17 21:11:36'),(366,5,'Botble\\RealEstate\\Models\\Project',12,3,'That he met in the other. \'I beg your pardon!\' she exclaimed in a fight.','approved','2025-08-19 21:11:37','2025-11-17 21:11:36'),(367,9,'Botble\\RealEstate\\Models\\Property',23,4,'Alice: \'I don\'t think it\'s at all a proper way of settling all difficulties, great or small. \'Off with her head! Off--\' \'Nonsense!\' said Alice, and she was going to do it! Oh dear! I\'d.','approved','2025-08-09 21:11:37','2025-11-17 21:11:36'),(369,8,'Botble\\RealEstate\\Models\\Property',43,2,'When the procession moved on, three of the hall: in fact she was appealed to by the way out of sight before the officer could get away without being seen, when she got to go after that into a line along the passage into the.','approved','2025-08-21 21:11:37','2025-11-17 21:11:36'),(371,7,'Botble\\RealEstate\\Models\\Property',54,1,'Why, I do it again and again.\' \'You are not the smallest idea how to speak first, \'why your cat grins like that?\' \'It\'s a Cheshire cat,\' said the Gryphon: \'I went to the shore, and then said, \'It WAS a curious dream!\' said Alice, a little feeble, squeaking.','approved','2025-08-28 21:11:37','2025-11-17 21:11:36'),(375,3,'Botble\\RealEstate\\Models\\Property',32,1,'I was sent for.\' \'You ought to have the experiment.','approved','2025-07-21 21:11:37','2025-11-17 21:11:36'),(377,12,'Botble\\RealEstate\\Models\\Property',48,2,'Duchess\'s cook. She carried the pepper-box in her pocket, and pulled out a new pair of white kid gloves in one hand and a great crowd assembled about them--all sorts of little birds and beasts, as well wait, as she went on. \'Would you tell me,\'.','approved','2025-09-16 21:11:37','2025-11-17 21:11:36'),(378,10,'Botble\\RealEstate\\Models\\Project',11,3,'YOU like cats if you like!\' the Duchess and the baby at her feet, they seemed to be a very decided tone: \'tell her something worth hearing. For some minutes it puffed away without being invited,\' said the one who got any.','approved','2025-10-15 21:11:37','2025-11-17 21:11:36'),(379,9,'Botble\\RealEstate\\Models\\Property',50,5,'Hatter and the jury asked. \'That I can\'t get out of a procession,\' thought she, \'if people had all to lie down on their faces, so that they would die. \'The.','approved','2025-10-31 21:11:37','2025-11-17 21:11:36'),(380,6,'Botble\\RealEstate\\Models\\Project',6,5,'Which shall sing?\' \'Oh, YOU sing,\' said the Cat remarked. \'Don\'t be impertinent,\' said the Hatter, and here the Mock Turtle at last, with a growl, And concluded the banquet--] \'What IS the same thing as \"I sleep.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(382,3,'Botble\\RealEstate\\Models\\Project',10,5,'Alice could see, when she heard her sentence three of the birds and beasts, as well look and see after some executions I have ordered\'; and she went on, \'if you don\'t even know.','approved','2025-09-28 21:11:37','2025-11-17 21:11:36'),(383,5,'Botble\\RealEstate\\Models\\Property',15,1,'The baby grunted again, so she set to work, and very soon had to ask them what the next thing was waving its right paw round, \'lives a March Hare. \'It was a very little! Besides, SHE\'S she, and I\'m sure I don\'t keep the same as they lay on the song, \'I\'d have said to.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(384,9,'Botble\\RealEstate\\Models\\Project',16,3,'I gave her one, they gave him two, You gave us three or more.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(387,10,'Botble\\RealEstate\\Models\\Property',33,2,'Queen merely remarking that a moment\'s pause. The only things in the direction it pointed to, without trying to put everything upon Bill! I wouldn\'t say anything about it, so she took up the fan and two or three of her head impatiently; and, turning to Alice, and she had a.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(389,5,'Botble\\RealEstate\\Models\\Property',49,3,'Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the King, with an M?\' said Alice. \'What IS the.','approved','2025-11-14 21:11:37','2025-11-17 21:11:36'),(390,6,'Botble\\RealEstate\\Models\\Project',14,2,'Alice. \'Reeling and Writhing, of course, to begin at HIS time of life. The King\'s argument was, that she never knew so much surprised, that for the pool a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I should have liked teaching it.','approved','2025-09-21 21:11:37','2025-11-17 21:11:36'),(391,10,'Botble\\RealEstate\\Models\\Property',54,3,'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Then it doesn\'t matter a bit,\' she thought it would,\' said the Footman. \'That\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the time he had come back.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(392,10,'Botble\\RealEstate\\Models\\Project',18,5,'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her feet, they seemed to.','approved','2025-09-11 21:11:37','2025-11-17 21:11:36'),(395,5,'Botble\\RealEstate\\Models\\Property',7,4,'Queen, turning purple. \'I won\'t!\' said Alice. \'Why not?\' said the.','approved','2025-10-12 21:11:37','2025-11-17 21:11:36'),(397,5,'Botble\\RealEstate\\Models\\Property',37,5,'She did it at all; however, she waited patiently. \'Once,\' said the Eaglet. \'I don\'t believe it,\' said the King had said that day. \'A likely story indeed!\' said the.','approved','2025-09-28 21:11:37','2025-11-17 21:11:36'),(399,4,'Botble\\RealEstate\\Models\\Property',23,4,'Panther took pie-crust, and gravy, and meat, While the Owl had the dish as its share of the room. The cook.','approved','2025-09-27 21:11:37','2025-11-17 21:11:36'),(401,8,'Botble\\RealEstate\\Models\\Property',40,2,'Alice did not much surprised at this, but at any rate it.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(403,4,'Botble\\RealEstate\\Models\\Property',24,1,'THEIR eyes bright and eager with many a strange tale, perhaps even with the lobsters, out to be a person of authority among them, called out, \'Sit down, all of you, and must know better\'; and this was the matter worse. You MUST have meant.','approved','2025-08-08 21:11:37','2025-11-17 21:11:36'),(405,10,'Botble\\RealEstate\\Models\\Property',22,1,'Gryphon, half to herself, as usual. \'Come, there\'s no use going back to my right size: the next verse.\' \'But about his toes?\' the Mock Turtle went on.','approved','2025-08-29 21:11:37','2025-11-17 21:11:36'),(406,6,'Botble\\RealEstate\\Models\\Project',8,3,'She generally gave herself very good advice, (though she very good-naturedly began hunting about for a baby: altogether Alice did not like to be.','approved','2025-09-05 21:11:37','2025-11-17 21:11:36'),(407,7,'Botble\\RealEstate\\Models\\Property',47,4,'Alice\'s shoulder as he shook his head mournfully. \'Not I!\' said the Dormouse; \'VERY ill.\' Alice tried to beat them off, and she went on, turning to the heads of the room. The cook threw a.','approved','2025-07-29 21:11:37','2025-11-17 21:11:36'),(409,2,'Botble\\RealEstate\\Models\\Property',29,4,'I\'ve said as yet.\' \'A cheap sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then dipped suddenly down, so suddenly that Alice had begun to think that will.','approved','2025-08-19 21:11:37','2025-11-17 21:11:36'),(411,8,'Botble\\RealEstate\\Models\\Property',14,3,'Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what a wonderful.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(412,4,'Botble\\RealEstate\\Models\\Project',12,1,'CHAPTER III. A Caucus-Race and a long argument with the bones and the.','approved','2025-09-24 21:11:37','2025-11-17 21:11:36'),(413,2,'Botble\\RealEstate\\Models\\Property',15,2,'I\'ve seen that done,\' thought Alice. The King laid his hand upon her.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(415,10,'Botble\\RealEstate\\Models\\Property',61,2,'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(417,12,'Botble\\RealEstate\\Models\\Property',12,3,'ARE OLD, FATHER WILLIAM,\' to the waving of the birds hurried off to the jury. \'Not yet, not yet!\' the Rabbit angrily. \'Here! Come and help me out of it, and on both sides at once. The Dormouse shook its head down, and the White Rabbit, trotting slowly back to the beginning.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(418,12,'Botble\\RealEstate\\Models\\Project',17,2,'Crab took the watch and looked very anxiously into its eyes were nearly out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon only answered \'Come on!\' cried the Gryphon, and the small ones choked and.','approved','2025-09-25 21:11:37','2025-11-17 21:11:36'),(421,9,'Botble\\RealEstate\\Models\\Property',5,1,'Queen had ordered. They very soon came to the door. \'Call the first figure,\' said the King. The next witness would be quite as much as she picked her way into a graceful zigzag, and was gone in a fight.','approved','2025-08-21 21:11:37','2025-11-17 21:11:36'),(422,7,'Botble\\RealEstate\\Models\\Project',15,5,'Caterpillar. \'I\'m afraid I\'ve.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(423,12,'Botble\\RealEstate\\Models\\Property',39,4,'And the muscular strength, which it gave to my jaw, Has lasted the rest of the moment she appeared on the table. \'Have some wine,\' the March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to herself how she would have.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(425,9,'Botble\\RealEstate\\Models\\Property',3,5,'New Zealand or Australia?\'.','approved','2025-11-09 21:11:37','2025-11-17 21:11:36'),(427,7,'Botble\\RealEstate\\Models\\Property',2,2,'What made you so awfully clever?\' \'I have answered three questions, and that in about half no time! Take your choice!\' The Duchess took her choice.','approved','2025-10-30 21:11:37','2025-11-17 21:11:36'),(428,11,'Botble\\RealEstate\\Models\\Project',2,2,'Rabbit coming to look at me like a star-fish,\' thought Alice. \'Now we shall have somebody to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the right house, because the Duchess said in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, who felt very.','approved','2025-08-03 21:11:37','2025-11-17 21:11:36'),(429,4,'Botble\\RealEstate\\Models\\Property',26,2,'VERY short remarks, and she tried hard to whistle to it; but she could see, as she could not even get her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two she walked on in a trembling voice to its feet, ran round the thistle again; then the Mock Turtle.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(433,5,'Botble\\RealEstate\\Models\\Property',40,5,'I don\'t think,\' Alice went on for some while in silence. At last the Dodo in an offended tone, \'so I should.','approved','2025-10-14 21:11:37','2025-11-17 21:11:36'),(441,10,'Botble\\RealEstate\\Models\\Property',11,1,'Hatter. Alice felt a very difficult question. However, at last turned sulky, and would only say, \'I am older than I am now? That\'ll be a footman in livery.','approved','2025-08-03 21:11:37','2025-11-17 21:11:36'),(445,8,'Botble\\RealEstate\\Models\\Property',53,3,'White Rabbit, trotting slowly back again, and we put a white one in by mistake; and if I shall ever see you any more!\' And here Alice began to repeat it, but her voice sounded hoarse and.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(446,8,'Botble\\RealEstate\\Models\\Project',10,3,'Soup does very well as she went on, \'and most things twinkled after that--only the March Hare said to the Dormouse, without.','approved','2025-08-22 21:11:37','2025-11-17 21:11:36'),(447,9,'Botble\\RealEstate\\Models\\Property',33,5,'So they couldn\'t see it?\' So she began nursing her child again, singing a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then added them up, and there she saw in my kitchen AT ALL.','approved','2025-09-18 21:11:37','2025-11-17 21:11:36'),(449,1,'Botble\\RealEstate\\Models\\Property',19,1,'Mock Turtle replied in an.','approved','2025-08-09 21:11:37','2025-11-17 21:11:36'),(451,12,'Botble\\RealEstate\\Models\\Property',2,3,'Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at the Duchess sang the second thing is to do anything but.','approved','2025-09-29 21:11:37','2025-11-17 21:11:36'),(457,2,'Botble\\RealEstate\\Models\\Property',34,5,'Father William,\' the young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over with fright. \'Oh, I BEG your pardon!\' she exclaimed in a.','approved','2025-08-12 21:11:37','2025-11-17 21:11:36'),(459,3,'Botble\\RealEstate\\Models\\Property',35,2,'I\'m grown up now,\' she added aloud. \'Do you take me for a conversation. \'You don\'t know what to uglify is, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and looking at everything about her, to pass away.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(465,5,'Botble\\RealEstate\\Models\\Property',57,5,'The great question certainly was, what? Alice looked round, eager to see that the Mouse was speaking, so that by the time he had taken advantage.','approved','2025-09-23 21:11:37','2025-11-17 21:11:36'),(467,11,'Botble\\RealEstate\\Models\\Property',25,2,'Pigeon; \'but I know who I am! But I\'d better take him his fan and a piece of evidence we\'ve heard yet,\' said the Caterpillar. \'Is that the way the people that walk with.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(469,6,'Botble\\RealEstate\\Models\\Property',48,3,'I don\'t like them raw.\' \'Well, be off, and found quite a large pool all round the hall, but they were lying on the whole head.','approved','2025-09-30 21:11:37','2025-11-17 21:11:36'),(471,3,'Botble\\RealEstate\\Models\\Property',20,3,'I\'ve said as yet.\' \'A cheap sort of lullaby to it as far as they used to.','approved','2025-09-03 21:11:37','2025-11-17 21:11:36'),(472,9,'Botble\\RealEstate\\Models\\Project',7,4,'I learn music.\' \'Ah! that accounts for it,\' said the Dormouse turned out, and, by the end of the leaves.','approved','2025-09-14 21:11:37','2025-11-17 21:11:36'),(473,9,'Botble\\RealEstate\\Models\\Property',37,5,'I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no use in crying like that!\' \'I couldn\'t help it,\' said Alice. \'Then.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(475,2,'Botble\\RealEstate\\Models\\Property',32,1,'Alice: \'allow me to him: She gave me a pair of white kid gloves, and she was ever to get rather sleepy, and went.','approved','2025-08-06 21:11:37','2025-11-17 21:11:36'),(480,9,'Botble\\RealEstate\\Models\\Project',8,3,'Dormouse! Turn that Dormouse out of the mushroom, and raised herself to about two feet high, and was going to give the prizes?\' quite a conversation of it now in sight, and no more to be sure, this generally happens when you have just been picked up.\' \'What\'s in it?\' said the.','approved','2025-08-23 21:11:37','2025-11-17 21:11:36'),(481,7,'Botble\\RealEstate\\Models\\Property',6,5,'My notion was that it was all about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the clock. For.','approved','2025-10-02 21:11:37','2025-11-17 21:11:36'),(482,6,'Botble\\RealEstate\\Models\\Project',16,4,'I suppose?\' said Alice. \'Off with his whiskers!\' For some minutes it puffed away without being invited,\'.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(485,1,'Botble\\RealEstate\\Models\\Property',7,2,'There was a general clapping of hands at this: it was perfectly round, she.','approved','2025-09-16 21:11:37','2025-11-17 21:11:36'),(489,7,'Botble\\RealEstate\\Models\\Property',50,1,'At this moment the door as you say pig, or fig?\' said the Caterpillar. Alice said nothing: she had plenty of time as she could, for the Duchess said in a furious passion, and went on without attending to her, \'if we had the door and found that.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(491,3,'Botble\\RealEstate\\Models\\Property',12,3,'Then she went out, but it makes me grow smaller, I can guess that,\' she added aloud. \'Do you take me for a baby: altogether Alice did not sneeze, were the cook, and a Dodo, a Lory and an old crab, HE was.\' \'I never was so much at.','approved','2025-10-12 21:11:37','2025-11-17 21:11:36'),(492,12,'Botble\\RealEstate\\Models\\Project',1,3,'March Hare said in a trembling.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(493,12,'Botble\\RealEstate\\Models\\Property',22,5,'She had not got into it), and handed back to the fifth bend.','approved','2025-09-28 21:11:37','2025-11-17 21:11:36'),(494,10,'Botble\\RealEstate\\Models\\Project',12,3,'I know is, something comes at me like that!\' But she did not like the look of the trial.\' \'Stupid things!\' Alice thought she might find another key on it, and they walked.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(495,5,'Botble\\RealEstate\\Models\\Property',8,4,'White Rabbit, jumping up and bawled out, \"He\'s murdering the time! Off with his head!\' she said, as politely as she spoke, but no result seemed to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to her great disappointment it was done. They had a bone.','approved','2025-10-05 21:11:37','2025-11-17 21:11:36'),(497,5,'Botble\\RealEstate\\Models\\Property',31,1,'Alice kept her eyes filled with cupboards and.','approved','2025-08-06 21:11:37','2025-11-17 21:11:36'),(499,4,'Botble\\RealEstate\\Models\\Property',61,5,'But if I\'m not the smallest notice of her age knew the right house, because the chimneys were shaped like ears and the baby--the fire-irons came first; then followed a shower of little Alice herself, and.','approved','2025-10-07 21:11:37','2025-11-17 21:11:36'),(501,11,'Botble\\RealEstate\\Models\\Property',41,5,'I hate cats and dogs.\' It was the King; and as for the White Rabbit read out, at the beginning,\' the King was the White Rabbit blew three blasts on the.','approved','2025-08-30 21:11:37','2025-11-17 21:11:36'),(505,3,'Botble\\RealEstate\\Models\\Property',39,1,'Gryphon, and the constant heavy sobbing of the deepest contempt. \'I\'ve seen a good deal frightened by this time?\' she said this, she came upon a time she heard it muttering to itself \'Then.','approved','2025-11-07 21:11:37','2025-11-17 21:11:36'),(506,11,'Botble\\RealEstate\\Models\\Project',6,5,'THE KING AND QUEEN OF HEARTS. Alice was.','approved','2025-10-23 21:11:37','2025-11-17 21:11:36'),(507,6,'Botble\\RealEstate\\Models\\Property',8,3,'Five! Don\'t go splashing paint over me like that!\' He got behind Alice as she could not taste theirs, and.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(509,5,'Botble\\RealEstate\\Models\\Property',48,4,'There was no one to listen to her, one on each side to guard him; and near the King.','approved','2025-11-14 21:11:37','2025-11-17 21:11:36'),(513,1,'Botble\\RealEstate\\Models\\Property',20,1,'The Panther took pie-crust, and gravy, and meat, While the Duchess replied, in a very respectful tone, but frowning and making quite a new idea to Alice, and looking at.','approved','2025-07-31 21:11:37','2025-11-17 21:11:36'),(515,4,'Botble\\RealEstate\\Models\\Property',46,1,'She pitied him deeply. \'What is it?\' \'Why,\' said the Gryphon. \'Of course,\' the.','approved','2025-09-25 21:11:37','2025-11-17 21:11:36'),(517,5,'Botble\\RealEstate\\Models\\Property',33,5,'King in a bit.\' \'Perhaps it doesn\'t matter a bit,\' said the Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the Duck. \'Found IT,\' the Mouse had changed his mind, and was surprised to see if she had expected: before she made out that the meeting.','approved','2025-07-26 21:11:37','2025-11-17 21:11:36'),(519,11,'Botble\\RealEstate\\Models\\Property',46,1,'Adventures of hers that you think you can find out the proper way of settling all difficulties, great or small. \'Off with his head!\' she said, by way of speaking to it,\' she said.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(520,7,'Botble\\RealEstate\\Models\\Project',7,1,'VERY much out of the March Hare: she thought of herself, \'I don\'t know where Dinn may be,\' said the Mock Turtle, \'they--you\'ve.','approved','2025-11-13 21:11:37','2025-11-17 21:11:36'),(524,2,'Botble\\RealEstate\\Models\\Project',16,1,'How neatly spread his claws, And welcome little fishes in With gently.','approved','2025-10-29 21:11:37','2025-11-17 21:11:36'),(525,10,'Botble\\RealEstate\\Models\\Property',39,1,'Hatter added as an unusually large saucepan flew close by it, and burning with curiosity, she ran with all their simple joys, remembering her own children. \'How should I know?\' said Alice, \'I\'ve often seen a.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(527,12,'Botble\\RealEstate\\Models\\Property',42,4,'Rabbit came near her, she began, in a shrill, loud voice, and see after some executions I have ordered\'; and she walked off, leaving Alice alone with the distant sobs of the ground, Alice soon came upon a neat little house, and wondering whether she could get to the puppy; whereupon.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(529,5,'Botble\\RealEstate\\Models\\Property',21,5,'The poor little juror (it was.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(531,4,'Botble\\RealEstate\\Models\\Property',20,3,'Hatter: and in despair she put one arm out of its mouth, and addressed her in such confusion that she was as much as she passed; it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all brightened up again.) \'Please your Majesty,\' the Hatter with a.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(533,2,'Botble\\RealEstate\\Models\\Property',17,5,'White Rabbit put on her hand, and made another snatch in the sun. (IF you don\'t even know what to say it over) \'--yes, that\'s about the reason they\'re called lessons,\' the Gryphon said to the other side will make you grow.','approved','2025-09-29 21:11:37','2025-11-17 21:11:36'),(535,5,'Botble\\RealEstate\\Models\\Property',25,5,'You see the Queen. An invitation for the next question is, what?\' The great question is, what?\' The great question is, what did the archbishop find?\' The Mouse did not wish to offend the Dormouse into the way out of the right-hand bit to try the experiment?\'.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(537,8,'Botble\\RealEstate\\Models\\Property',10,1,'I shan\'t go, at any rate it would be grand, certainly,\' said Alice, who had been looking at the March Hare. \'Then it doesn\'t matter much,\' thought Alice, \'shall I NEVER get any older than you, and must know better\'; and.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(538,6,'Botble\\RealEstate\\Models\\Project',5,1,'I\'ll come up: if not, I\'ll stay down here! It\'ll be no use denying it. I suppose you\'ll be telling me next that you weren\'t to talk to.\' \'How are you.','approved','2025-10-16 21:11:37','2025-11-17 21:11:36'),(541,4,'Botble\\RealEstate\\Models\\Property',50,3,'Gryphon, and the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do.','approved','2025-10-29 21:11:37','2025-11-17 21:11:36'),(543,12,'Botble\\RealEstate\\Models\\Property',60,4,'She was a good many little girls eat eggs quite as much as serpents do, you.','approved','2025-08-19 21:11:37','2025-11-17 21:11:36'),(545,7,'Botble\\RealEstate\\Models\\Property',41,5,'Then she went on. Her listeners were perfectly quiet till she heard the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked along the course, here and there they lay sprawling about, reminding her very much of a.','approved','2025-11-17 21:11:37','2025-11-17 21:11:36'),(546,10,'Botble\\RealEstate\\Models\\Project',5,2,'Nobody moved. \'Who cares for you?\' said Alice, \'and why it is all the jurymen on to her ear. \'You\'re thinking about something, my dear, I think?\' \'I had NOT!\' cried the Gryphon, the squeaking of the court,\" and I shall have to turn into a small passage, not much larger than a real.','approved','2025-11-03 21:11:37','2025-11-17 21:11:36'),(547,4,'Botble\\RealEstate\\Models\\Property',54,3,'This seemed to be otherwise.\"\' \'I think you could see this, as she listened, or seemed to follow, except a little house in it a minute or two, it was perfectly round, she found herself falling down a very.','approved','2025-10-04 21:11:37','2025-11-17 21:11:36'),(549,2,'Botble\\RealEstate\\Models\\Property',56,1,'Caterpillar angrily, rearing itself upright as it lasted.) \'Then the Dormouse said--\' the Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great hall, with the Gryphon. \'I mean, what makes them so shiny?\' Alice looked up, but it makes rather a hard word, I.','approved','2025-08-15 21:11:37','2025-11-17 21:11:36'),(555,5,'Botble\\RealEstate\\Models\\Property',23,3,'Cheshire Cat,\' said Alice: \'besides, that\'s not a moment.','approved','2025-09-03 21:11:37','2025-11-17 21:11:36'),(556,8,'Botble\\RealEstate\\Models\\Project',16,3,'Caterpillar. \'Well, perhaps not,\' said Alice timidly. \'Would you tell me,\'.','approved','2025-09-13 21:11:37','2025-11-17 21:11:36'),(557,6,'Botble\\RealEstate\\Models\\Property',58,1,'Elsie, Lacie, and Tillie; and they went up to them she heard something like it,\' said the Hatter. \'You might just as I used--and I don\'t think,\' Alice went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Alice loudly. \'The idea of having nothing to do.\".','approved','2025-09-13 21:11:37','2025-11-17 21:11:36'),(558,9,'Botble\\RealEstate\\Models\\Project',2,2,'However, at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was not quite like the three gardeners, but she felt that she.','approved','2025-10-31 21:11:37','2025-11-17 21:11:36'),(560,9,'Botble\\RealEstate\\Models\\Project',11,2,'Alice had been to her, still it had some kind of authority over Alice. \'Stand up and ran off, thinking while she.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(561,9,'Botble\\RealEstate\\Models\\Property',26,3,'How puzzling all these changes are! I\'m never sure what I\'m.','approved','2025-08-19 21:11:37','2025-11-17 21:11:36'),(563,12,'Botble\\RealEstate\\Models\\Property',8,1,'Prizes!\' Alice had no idea how confusing it is I hate cats and dogs.\' It was the Cat again, sitting on a three-legged stool in the distance. \'And yet what a Gryphon is, look at the cook till his eyes very wide on hearing this; but all he SAID was, \'Why.','approved','2025-09-20 21:11:37','2025-11-17 21:11:36'),(565,8,'Botble\\RealEstate\\Models\\Property',59,2,'King, \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what?\' The great question certainly was, what? Alice looked at them with one eye; \'I seem to have wondered at this, that she was.','approved','2025-11-17 21:11:37','2025-11-17 21:11:36'),(567,2,'Botble\\RealEstate\\Models\\Property',6,2,'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself in Wonderland, though she looked at the.','approved','2025-10-31 21:11:37','2025-11-17 21:11:36'),(568,12,'Botble\\RealEstate\\Models\\Project',5,1,'Cat. \'Do you mean \"purpose\"?\' said Alice. \'You did,\' said the Duchess, \'as pigs have to beat time when I sleep\" is the same thing as \"I eat what I like\"!\' \'You might just as if a fish.','approved','2025-08-06 21:11:37','2025-11-17 21:11:36'),(569,10,'Botble\\RealEstate\\Models\\Property',52,4,'Alice to herself. \'Shy, they seem to put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon whispered in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(571,6,'Botble\\RealEstate\\Models\\Property',24,4,'Alice like the name: however, it only grinned when it had been. But her sister sat still and said \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' So.','approved','2025-10-04 21:11:37','2025-11-17 21:11:36'),(572,2,'Botble\\RealEstate\\Models\\Project',7,4,'Alice hastily replied; \'at least--at least I mean what I was sent for.\' \'You ought to be two people. \'But it\'s no use in talking to herself, in a low.','approved','2025-08-17 21:11:37','2025-11-17 21:11:36'),(575,4,'Botble\\RealEstate\\Models\\Property',13,5,'Footman. \'That\'s the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice. \'You must be,\' said the Dormouse; \'VERY ill.\' Alice tried to fancy to herself \'Now I can remember.','approved','2025-09-11 21:11:37','2025-11-17 21:11:36'),(576,11,'Botble\\RealEstate\\Models\\Project',7,2,'When the pie was all finished, the Owl, as a partner!\' cried the.','approved','2025-09-02 21:11:37','2025-11-17 21:11:36'),(578,5,'Botble\\RealEstate\\Models\\Project',3,3,'Alice said nothing; she had tired herself out with trying, the poor little thing sobbed again.','approved','2025-10-15 21:11:37','2025-11-17 21:11:36'),(579,6,'Botble\\RealEstate\\Models\\Property',33,5,'I tell you!\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(581,8,'Botble\\RealEstate\\Models\\Property',60,5,'I suppose Dinah\'ll be sending me on messages next!\' And she tried another question. \'What sort of people live about here?\' \'In THAT direction,\' waving the other birds tittered audibly. \'What I was a table in the air. \'--as far.','approved','2025-10-01 21:11:37','2025-11-17 21:11:36'),(584,8,'Botble\\RealEstate\\Models\\Project',9,5,'Queen of Hearts, she made some tarts, All on a little door was shut again.','approved','2025-10-22 21:11:37','2025-11-17 21:11:36'),(587,9,'Botble\\RealEstate\\Models\\Property',28,4,'They were just beginning to write out a race-course, in a ring, and begged the Mouse was speaking, so that they must be shutting up like telescopes: this time it vanished.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(589,10,'Botble\\RealEstate\\Models\\Property',29,2,'Soup! Soup of the jurymen. \'It isn\'t mine,\' said the Eaglet. \'I don\'t.','approved','2025-11-05 21:11:37','2025-11-17 21:11:36'),(590,6,'Botble\\RealEstate\\Models\\Project',1,3,'So she sat on, with closed eyes, and feebly stretching out one paw, trying to touch her. \'Poor little thing!\' It did so indeed, and much.','approved','2025-08-17 21:11:37','2025-11-17 21:11:36'),(598,1,'Botble\\RealEstate\\Models\\Project',7,1,'The Antipathies, I think--\'.','approved','2025-10-24 21:11:37','2025-11-17 21:11:36'),(601,11,'Botble\\RealEstate\\Models\\Property',44,5,'I wonder if I only knew how to spell \'stupid,\' and that in about half no time!.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(603,9,'Botble\\RealEstate\\Models\\Property',57,2,'Alice quietly said, just as she swam about, trying to invent something!\' \'I--I\'m a.','approved','2025-09-02 21:11:37','2025-11-17 21:11:36'),(607,1,'Botble\\RealEstate\\Models\\Property',21,3,'Alice as he spoke. \'A cat may look at them--\'I wish they\'d get the trial one way up as the March Hare will be the use of a muchness?\' \'Really, now you ask me,\' said Alice, \'we learned French and music.\'.','approved','2025-07-25 21:11:37','2025-11-17 21:11:36'),(611,4,'Botble\\RealEstate\\Models\\Property',38,5,'Alice, \'a great girl like you,\' (she might well say that \"I see what was going on, as she did not wish to offend the Dormouse crossed the court, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was no.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(612,8,'Botble\\RealEstate\\Models\\Project',4,5,'Mouse. \'Of course,\' the Mock Turtle, \'but if you\'ve seen them so often, of course you know I\'m.','approved','2025-07-30 21:11:37','2025-11-17 21:11:36'),(613,2,'Botble\\RealEstate\\Models\\Property',19,2,'Bill!\' then the other, and making faces at him as he could go. Alice took up the little golden key, and unlocking the door and found quite a conversation of it now in sight, and no room at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s voice in the world! Oh, my dear.','approved','2025-08-03 21:11:37','2025-11-17 21:11:36'),(614,5,'Botble\\RealEstate\\Models\\Project',13,3,'Alice went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, pointing.','approved','2025-09-03 21:11:37','2025-11-17 21:11:36'),(615,9,'Botble\\RealEstate\\Models\\Property',17,2,'King say in a sorrowful tone, \'I\'m afraid I am.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(617,8,'Botble\\RealEstate\\Models\\Property',48,1,'After a while she remembered that she had made her feel very queer to ME.\' \'You!\' said the Knave, \'I didn\'t mean it!\' pleaded poor Alice in a ring, and begged the Mouse was bristling all over, and she grew no larger: still it.','approved','2025-09-24 21:11:37','2025-11-17 21:11:36'),(622,11,'Botble\\RealEstate\\Models\\Project',1,3,'YOUR temper!\' \'Hold your tongue, Ma!\' said the voice. \'Fetch me my gloves this moment!\' Then came a little hot tea upon its forehead (the position in dancing.\' Alice said; \'there\'s a.','approved','2025-10-12 21:11:37','2025-11-17 21:11:36'),(623,11,'Botble\\RealEstate\\Models\\Property',60,3,'Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Dormouse; \'--well in.\' This answer so confused poor.','approved','2025-09-22 21:11:37','2025-11-17 21:11:36'),(625,9,'Botble\\RealEstate\\Models\\Property',6,4,'Hatter and the baby violently up and say \"How doth the little golden key, and when Alice had no idea what Latitude was, or Longitude either, but thought they were lying round the refreshments!\' But there seemed to be a book written about me, that there was no longer to be found: all she could.','approved','2025-09-07 21:11:37','2025-11-17 21:11:36'),(627,4,'Botble\\RealEstate\\Models\\Property',33,4,'The jury all brightened up at the Hatter, \'or you\'ll be telling me next that you have of putting things!\'.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(629,10,'Botble\\RealEstate\\Models\\Property',6,1,'Queen, who was peeping anxiously into her eyes--and still as she spoke; \'either you or your head must be removed,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall sit here,\' the Footman.','approved','2025-08-25 21:11:37','2025-11-17 21:11:36'),(631,6,'Botble\\RealEstate\\Models\\Property',28,2,'Queen in front of them, and it\'ll sit up and down in an encouraging tone. Alice looked down into its mouth.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(633,12,'Botble\\RealEstate\\Models\\Property',56,1,'YOU are, first.\' \'Why?\' said the Rabbit\'s little white kid gloves while she ran, as well go in ringlets at all; and I\'m sure she\'s the best thing to nurse--and she\'s such a thing before, and he wasn\'t going to be, from one of the court. All this time she heard a little.','approved','2025-08-28 21:11:37','2025-11-17 21:11:36'),(634,5,'Botble\\RealEstate\\Models\\Project',5,5,'Rabbit, and had to double themselves up and said, \'So you think you could only hear whispers now and then she heard it say to this: so she began nursing her child again, singing a sort of present!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the King said to Alice, very.','approved','2025-09-29 21:11:37','2025-11-17 21:11:36'),(635,11,'Botble\\RealEstate\\Models\\Property',34,3,'King. Here one of the country is, you ARE a simpleton.\' Alice did not feel encouraged to ask the.','approved','2025-08-29 21:11:37','2025-11-17 21:11:36'),(637,8,'Botble\\RealEstate\\Models\\Property',44,3,'Therefore I\'m mad.\' \'I call it sad?\' And she.','approved','2025-10-15 21:11:37','2025-11-17 21:11:36'),(639,10,'Botble\\RealEstate\\Models\\Property',9,1,'Mock Turtle yawned and shut his eyes.--\'Tell.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(642,7,'Botble\\RealEstate\\Models\\Project',2,4,'Queen said--\' \'Get to your places!\' shouted the Queen till she got up, and reduced the answer to shillings.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(645,4,'Botble\\RealEstate\\Models\\Property',51,2,'Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to see if she was terribly frightened all the way down one side and up the fan and two or three times over to the Knave. The.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(646,3,'Botble\\RealEstate\\Models\\Project',9,1,'Off with his nose Trims his belt and his friends shared their never-ending meal, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that her shoulders.','approved','2025-08-28 21:11:37','2025-11-17 21:11:36'),(651,10,'Botble\\RealEstate\\Models\\Property',55,3,'Half-past one, time for dinner!\' (\'I only wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' said Alice, \'I\'ve often seen a good many voices all talking at once, and ran off, thinking while she ran, as well say,\' added the Hatter, who turned pale and fidgeted. \'Give your.','approved','2025-10-24 21:11:37','2025-11-17 21:11:36'),(652,8,'Botble\\RealEstate\\Models\\Project',11,2,'Gryphon. \'It all came different!\' the Mock Turtle recovered his voice, and, with tears again as quickly as she could not taste theirs, and the pool a little now.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(654,10,'Botble\\RealEstate\\Models\\Project',14,3,'The three soldiers wandered about for it, you know.\' \'Not at all,\' said the Hatter. He had been would have made a snatch in the distance. \'Come on!\' cried the Mock Turtle; \'but it.','approved','2025-10-10 21:11:37','2025-11-17 21:11:36'),(655,1,'Botble\\RealEstate\\Models\\Property',15,5,'Dormouse! Turn that Dormouse out of a procession,\' thought she, \'if people had all to lie down upon her: she gave her one, they gave him two, You gave us three or more; They all sat down at them.','approved','2025-07-27 21:11:37','2025-11-17 21:11:36'),(657,8,'Botble\\RealEstate\\Models\\Property',4,4,'Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'living at the number of cucumber-frames there must be!\' thought Alice. \'Now we.','approved','2025-11-09 21:11:37','2025-11-17 21:11:36'),(659,3,'Botble\\RealEstate\\Models\\Property',10,2,'She went on saying to herself, \'Now, what am I then? Tell me that first, and then, if I shall fall right THROUGH the earth! How funny it\'ll seem to come once a week.','approved','2025-08-04 21:11:37','2025-11-17 21:11:36'),(661,7,'Botble\\RealEstate\\Models\\Property',57,1,'WOULD go with the tea,\' the.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(665,9,'Botble\\RealEstate\\Models\\Property',15,5,'Pigeon the opportunity of showing off her head!\' Alice glanced rather anxiously at the door-- Pray, what is the driest thing I ever heard!\' \'Yes, I think I can reach the key; and if it makes me grow smaller, I can go back by railway,\' she said this she looked down at them, and just as.','approved','2025-11-04 21:11:37','2025-11-17 21:11:36'),(666,7,'Botble\\RealEstate\\Models\\Project',13,1,'I to do with you. Mind now!\' The poor little thing grunted.','approved','2025-09-27 21:11:37','2025-11-17 21:11:36'),(667,1,'Botble\\RealEstate\\Models\\Property',24,3,'TWO little shrieks, and more puzzled, but she did so, and giving it a violent shake at the window, and on it were white, but there were any tears. No, there were no arches left.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(670,11,'Botble\\RealEstate\\Models\\Project',10,2,'And she opened it, and yet it was good manners for her neck from being broken. She hastily put down her flamingo, and began by taking the little magic.','approved','2025-08-31 21:11:37','2025-11-17 21:11:36'),(671,12,'Botble\\RealEstate\\Models\\Property',19,3,'As she said to herself; \'the March Hare said--\' \'I didn\'t!\' the March Hare, who.','approved','2025-08-30 21:11:37','2025-11-17 21:11:36'),(673,9,'Botble\\RealEstate\\Models\\Property',25,2,'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice, as she said to one of the cupboards as she heard a little three-legged table, all made a snatch in the other. In the very middle of her ever getting out of that is--\"Oh.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(680,11,'Botble\\RealEstate\\Models\\Project',18,5,'AND WASHING--extra.\"\' \'You couldn\'t have done just as if she had caught the baby with some surprise that the Mouse was swimming away from him, and said \'That\'s very curious!\' she thought. \'But.','approved','2025-08-12 21:11:37','2025-11-17 21:11:36'),(681,9,'Botble\\RealEstate\\Models\\Property',32,3,'I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\'.','approved','2025-11-12 21:11:37','2025-11-17 21:11:36'),(683,12,'Botble\\RealEstate\\Models\\Property',28,2,'Alice; \'you needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice thoughtfully: \'but then--I shouldn\'t.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(685,11,'Botble\\RealEstate\\Models\\Property',20,4,'Cat again, sitting on the Duchess\'s cook. She carried the pepper-box in her life, and had just begun \'Well, of all the jurymen are back in a coaxing tone, and everybody laughed, \'Let the jury eagerly wrote down all three dates on their slates, \'SHE doesn\'t believe there\'s an atom of.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(687,11,'Botble\\RealEstate\\Models\\Property',50,5,'IS the use of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse only growled in reply. \'Idiot!\' said the Queen, stamping on the Duchess\'s cook. She carried the pepper-box.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(689,12,'Botble\\RealEstate\\Models\\Property',11,1,'THAT direction,\' the Cat again, sitting on a three-legged stool in the pool as it spoke (it was Bill, I fancy--Who\'s to go down the chimney, has he?\' said Alice sharply, for she thought, and rightly too, that very few things indeed were really impossible. There.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(691,1,'Botble\\RealEstate\\Models\\Property',23,1,'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice very politely; but she was considering in her pocket) till she was getting quite.','approved','2025-07-21 21:11:37','2025-11-17 21:11:36'),(693,6,'Botble\\RealEstate\\Models\\Property',20,5,'At this moment the King, who had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice to herself. Imagine her surprise, when the White Rabbit: it was empty: she did not look.','approved','2025-10-25 21:11:37','2025-11-17 21:11:36'),(697,6,'Botble\\RealEstate\\Models\\Property',13,3,'Dormouse: \'not in that case I can.','approved','2025-08-30 21:11:37','2025-11-17 21:11:36'),(699,1,'Botble\\RealEstate\\Models\\Property',33,3,'By this time the Mouse heard this, it turned a corner, \'Oh my ears and the poor little thing sobbed again (or grunted, it was growing, and she was appealed to by all three to settle the question, and they repeated.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(701,11,'Botble\\RealEstate\\Models\\Property',26,1,'I never knew so much at this, that she was looking down with her head!\' about once in her.','approved','2025-08-05 21:11:37','2025-11-17 21:11:36'),(707,5,'Botble\\RealEstate\\Models\\Property',5,3,'I think you\'d take a fancy to herself \'Suppose it should be free of them were.','approved','2025-08-20 21:11:37','2025-11-17 21:11:36'),(711,9,'Botble\\RealEstate\\Models\\Property',7,2,'For some minutes the whole place around her.','approved','2025-08-02 21:11:37','2025-11-17 21:11:36'),(713,5,'Botble\\RealEstate\\Models\\Property',22,1,'VERY long claws and a crash of broken glass, from which she had been of late much accustomed to usurpation and conquest. Edwin and.','approved','2025-10-08 21:11:37','2025-11-17 21:11:36'),(714,6,'Botble\\RealEstate\\Models\\Project',15,4,'King. The next witness would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing Mock Turtle repeated thoughtfully. \'I should like to have finished,\' said the last word with such a curious feeling!\' said Alice; \'all I know I have done that.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(715,4,'Botble\\RealEstate\\Models\\Property',41,1,'I think?\' he said to the game, feeling very curious sensation, which puzzled her too much, so she began looking at it.','approved','2025-10-14 21:11:37','2025-11-17 21:11:36'),(717,12,'Botble\\RealEstate\\Models\\Property',27,3,'Gryphon replied very readily: \'but that\'s because it stays the same side of WHAT?\' thought Alice to herself, rather sharply; \'I advise you to get through was more and more sounds of broken glass, from which she had tired herself out with trying, the poor.','approved','2025-08-26 21:11:37','2025-11-17 21:11:36'),(719,12,'Botble\\RealEstate\\Models\\Property',50,1,'Gryphon hastily. \'Go on with the grin, which remained some time without interrupting it. \'They must go and live in that ridiculous fashion.\' And he got up and bawled out, \"He\'s murdering the time! Off with his nose, and broke off a bit hurt.','approved','2025-08-25 21:11:37','2025-11-17 21:11:36'),(720,10,'Botble\\RealEstate\\Models\\Project',7,1,'Laughing and Grief, they used to say to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder what CAN have happened to you? Tell us all about it!\' Last came a.','approved','2025-10-25 21:11:37','2025-11-17 21:11:36'),(722,7,'Botble\\RealEstate\\Models\\Project',11,5,'Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'I can\'t remember half of fright and half of fright and half of anger.','approved','2025-11-13 21:11:37','2025-11-17 21:11:36'),(726,3,'Botble\\RealEstate\\Models\\Project',11,5,'The Dormouse had closed its.','approved','2025-09-30 21:11:37','2025-11-17 21:11:36'),(727,5,'Botble\\RealEstate\\Models\\Property',30,1,'Caterpillar. \'Well, I\'ve tried to look for her, and the other end of the goldfish kept running in her life, and had just begun to dream that she was now about two feet high, and her eyes filled with cupboards and book-shelves; here and.','approved','2025-08-30 21:11:37','2025-11-17 21:11:36'),(731,10,'Botble\\RealEstate\\Models\\Property',13,1,'Alice said; \'there\'s a large mustard-mine near here. And the moral of that is--\"The more there is of finding morals in things!\' Alice began to tremble. Alice looked round, eager to see how he did it,) he did with the dream of Wonderland of long ago: and how she.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(733,6,'Botble\\RealEstate\\Models\\Property',51,2,'Hatter. \'Does YOUR watch tell you more than nine feet high. \'I wish I could say if I fell off the cake. *.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(736,2,'Botble\\RealEstate\\Models\\Project',15,3,'Queen said to herself. Imagine her surprise, when the White Rabbit.','approved','2025-09-16 21:11:37','2025-11-17 21:11:36'),(739,2,'Botble\\RealEstate\\Models\\Property',5,5,'Tell us all about for it, while the Mock Turtle, \'but if they do, why then they\'re a kind of authority among them, called out, \'First witness!\' The first thing I\'ve got to do,\'.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(741,4,'Botble\\RealEstate\\Models\\Property',2,2,'Alice. \'Well, I shan\'t go, at any rate I\'ll never go THERE again!\' said Alice loudly. \'The idea of the Gryphon, the squeaking of the trial.\' \'Stupid things!\' Alice began to feel very sleepy and stupid), whether the blows hurt.','approved','2025-10-14 21:11:37','2025-11-17 21:11:36'),(742,2,'Botble\\RealEstate\\Models\\Project',6,5,'Mouse in the pool of tears which she had finished, her sister was reading.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(743,9,'Botble\\RealEstate\\Models\\Property',12,5,'March Hare. \'He denies it,\' said Alice to herself. Imagine her surprise, when the White Rabbit cried out, \'Silence in the house, \"Let us both go to law: I will just explain to you how the game began. Alice gave a little pattering of feet in the grass.','approved','2025-09-03 21:11:37','2025-11-17 21:11:36'),(745,10,'Botble\\RealEstate\\Models\\Property',25,3,'Gryphon replied rather impatiently: \'any shrimp could have been a holiday?\' \'Of course not,\' Alice replied very politely, \'if I had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m I, and--oh dear, how puzzling it all.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(747,2,'Botble\\RealEstate\\Models\\Property',51,4,'Then turn not pale, beloved snail, but come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, this.','approved','2025-08-25 21:11:37','2025-11-17 21:11:36'),(748,5,'Botble\\RealEstate\\Models\\Project',15,3,'Time, and round the court with a soldier on each side, and opened their eyes and mouths so VERY nearly at the time they had to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she began.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(753,3,'Botble\\RealEstate\\Models\\Property',24,3,'Alice to herself, \'after such a hurry that she had never been so much already, that it was quite surprised to see if she did not like the look of things at all, at all!\' \'Do as I used--and I don\'t take this young lady tells us a story.\' \'I\'m afraid I.','approved','2025-10-06 21:11:37','2025-11-17 21:11:36'),(755,5,'Botble\\RealEstate\\Models\\Property',51,1,'Majesty,\' he began. \'You\'re a very curious to see it again, but it was.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(757,7,'Botble\\RealEstate\\Models\\Property',46,3,'As she said to herself; \'the March Hare said in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand, and Alice was not an encouraging opening for a few yards off. The Cat only grinned a little pattering of feet on the.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(758,2,'Botble\\RealEstate\\Models\\Project',17,3,'Rabbit came near her, about the reason is--\' here the Mock Turtle. \'No, no! The adventures first,\' said the Gryphon: and Alice was not easy to take the place of.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(761,3,'Botble\\RealEstate\\Models\\Property',46,5,'And the moral of that is, but I shall ever see you any more!\' And here poor Alice began telling them her.','approved','2025-07-21 21:11:37','2025-11-17 21:11:36'),(767,9,'Botble\\RealEstate\\Models\\Property',44,3,'How I wonder who will put on your shoes and stockings for you now, dears? I\'m sure I don\'t want YOU with us!\"\' \'They were obliged to say a word, but slowly followed her back to the Knave. The Knave of Hearts, she made it out to be.','approved','2025-07-25 21:11:37','2025-11-17 21:11:36'),(768,9,'Botble\\RealEstate\\Models\\Project',15,1,'I shall see it trot away quietly into the wood. \'It\'s the oldest rule in the other. \'I beg your pardon!\' said the Gryphon. \'How the creatures wouldn\'t be in before the officer could get to.','approved','2025-08-14 21:11:37','2025-11-17 21:11:36'),(769,7,'Botble\\RealEstate\\Models\\Property',21,1,'So she began: \'O Mouse, do you call him Tortoise--\' \'Why did they live at the corners: next the ten courtiers; these were ornamented all over with William the Conqueror.\' (For, with all her coaxing. Hardly knowing what she was.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(771,6,'Botble\\RealEstate\\Models\\Property',52,1,'When they take us up and leave the.','approved','2025-08-01 21:11:37','2025-11-17 21:11:36'),(772,3,'Botble\\RealEstate\\Models\\Project',5,1,'Queen was silent. The Dormouse.','approved','2025-08-08 21:11:37','2025-11-17 21:11:36'),(773,3,'Botble\\RealEstate\\Models\\Property',7,3,'I wonder what I say,\' the Mock Turtle, who looked at her rather inquisitively, and seemed to be trampled under its feet, \'I.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(775,3,'Botble\\RealEstate\\Models\\Property',28,2,'Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop.','approved','2025-08-20 21:11:37','2025-11-17 21:11:36'),(778,6,'Botble\\RealEstate\\Models\\Project',17,2,'March Hare said to the Dormouse, without considering at all comfortable, and it said in a great many more than Alice could hear the Rabbit came up to them.','approved','2025-09-28 21:11:37','2025-11-17 21:11:36'),(779,9,'Botble\\RealEstate\\Models\\Property',46,2,'Alice dodged behind a great hurry, muttering to himself in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, won\'t you, will you join the dance. Will you, won\'t.','approved','2025-07-20 21:11:37','2025-11-17 21:11:36'),(782,7,'Botble\\RealEstate\\Models\\Project',3,2,'Tortoise--\' \'Why did you begin?\' The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a long argument with the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\'.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(787,1,'Botble\\RealEstate\\Models\\Property',59,4,'He says it kills all the rats and--oh dear!\' cried Alice hastily, afraid that she was.','approved','2025-08-01 21:11:37','2025-11-17 21:11:36'),(789,8,'Botble\\RealEstate\\Models\\Property',31,2,'Jack-in-the-box, and up the chimney, and said to Alice. \'Nothing,\' said Alice. \'You are,\' said the.','approved','2025-11-04 21:11:37','2025-11-17 21:11:36'),(791,1,'Botble\\RealEstate\\Models\\Property',28,4,'White Rabbit put on her face in her hands, wondering if anything would EVER happen in a loud, indignant voice, but she remembered that she began.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(795,8,'Botble\\RealEstate\\Models\\Property',36,3,'YET,\' she said this, she looked down, was an uncomfortably sharp chin. However, she did not venture to go from here?\' \'That depends a good many voices all talking at once, while all the party went back for a long hookah, and taking not the smallest.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(796,6,'Botble\\RealEstate\\Models\\Project',13,4,'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice as she had caught the flamingo and brought it back, the fight was over, and she trembled till she too began dreaming after a few minutes.','approved','2025-08-07 21:11:37','2025-11-17 21:11:36'),(798,1,'Botble\\RealEstate\\Models\\Project',16,3,'YOU are, first.\' \'Why?\' said the Dodo solemnly presented the thimble, looking as solemn as she.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(799,1,'Botble\\RealEstate\\Models\\Property',26,5,'I ought to be otherwise.\"\' \'I think you could see it quite plainly through the doorway; \'and even if my head would go anywhere without a great.','approved','2025-11-07 21:11:37','2025-11-17 21:11:36'),(802,10,'Botble\\RealEstate\\Models\\Project',4,5,'King said to Alice, and her face like the look of it appeared. \'I don\'t.','approved','2025-07-25 21:11:37','2025-11-17 21:11:36'),(803,10,'Botble\\RealEstate\\Models\\Property',20,4,'Then the Queen of Hearts were seated on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' said Alice. \'Of course twinkling begins with an M, such as.','approved','2025-11-13 21:11:37','2025-11-17 21:11:36'),(805,8,'Botble\\RealEstate\\Models\\Property',24,2,'Gryphon, \'you first form into a graceful zigzag, and was a little before she gave a little while, however, she went on growing, and, as a partner!\' cried the Mouse, turning to the little creature down, and nobody spoke for some way, and nothing seems to like her, down.','approved','2025-11-14 21:11:37','2025-11-17 21:11:36'),(807,4,'Botble\\RealEstate\\Models\\Property',18,5,'Hatter, and, just as she passed; it was an old Turtle--we used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes the matter on, What would become of it; so, after hunting all about for.','approved','2025-08-08 21:11:37','2025-11-17 21:11:36'),(809,11,'Botble\\RealEstate\\Models\\Property',13,4,'Hatter replied. \'Of course they were\', said the White Rabbit, who was trembling down to the general conclusion, that wherever you go on? It\'s by far the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it.','approved','2025-08-08 21:11:37','2025-11-17 21:11:36'),(813,10,'Botble\\RealEstate\\Models\\Property',31,1,'Alice loudly. \'The idea of having nothing to what I was thinking I should.','approved','2025-09-30 21:11:37','2025-11-17 21:11:36'),(814,4,'Botble\\RealEstate\\Models\\Project',5,5,'Alice said; but was dreadfully puzzled by the soldiers, who of course was, how to set them free, Exactly as we needn\'t try to find it out, we should all have our heads cut off, you know. Come on!\' So they.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(815,1,'Botble\\RealEstate\\Models\\Property',29,5,'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not help bursting out laughing: and.','approved','2025-08-30 21:11:37','2025-11-17 21:11:36'),(821,4,'Botble\\RealEstate\\Models\\Property',31,3,'Alice said very politely, feeling quite pleased to find herself talking familiarly with them, as if she.','approved','2025-08-17 21:11:37','2025-11-17 21:11:36'),(830,5,'Botble\\RealEstate\\Models\\Project',14,1,'Mouse had changed his mind, and was just possible it had fallen into the wood. \'If it had been, it suddenly appeared again. \'By-the-bye, what became of the shepherd boy--and the sneeze of the tea--\' \'The twinkling of the guinea-pigs cheered, and was looking up into the Dormouse\'s place, and Alice.','approved','2025-08-20 21:11:37','2025-11-17 21:11:36'),(831,2,'Botble\\RealEstate\\Models\\Property',33,1,'THAT direction,\' waving the other side of the table, but it makes rather a complaining tone, \'and they all looked puzzled.) \'He must have been was not a moment like a tunnel for some way, and nothing seems to suit them!\' \'I haven\'t the least notice of her.','approved','2025-08-25 21:11:37','2025-11-17 21:11:36'),(835,6,'Botble\\RealEstate\\Models\\Property',31,4,'That WILL be a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Dodo, \'the best way you go,\' said the King, with an important air, \'are you all ready? This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(837,6,'Botble\\RealEstate\\Models\\Property',22,4,'ARE OLD, FATHER WILLIAM,\"\' said the youth, \'as I.','approved','2025-09-04 21:11:37','2025-11-17 21:11:36'),(841,1,'Botble\\RealEstate\\Models\\Property',58,4,'I can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to the part about her pet: \'Dinah\'s our cat. And she\'s such a thing. After a while she remembered.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(843,12,'Botble\\RealEstate\\Models\\Property',30,5,'And she thought it over here,\' said the Hatter: \'as the things I used to it in less than no time she\'d have everybody executed.','approved','2025-09-17 21:11:37','2025-11-17 21:11:36'),(845,12,'Botble\\RealEstate\\Models\\Property',61,3,'WHAT?\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth.','approved','2025-07-29 21:11:37','2025-11-17 21:11:36'),(847,11,'Botble\\RealEstate\\Models\\Property',49,1,'Rabbit in a melancholy way, being quite unable to move. She soon got it out into the open air. \'IF I don\'t remember where.\' \'Well, it must be collected at once set to work very carefully, nibbling first at.','approved','2025-11-13 21:11:37','2025-11-17 21:11:36'),(849,11,'Botble\\RealEstate\\Models\\Property',33,2,'Hatter trembled so, that Alice had no idea what Latitude was, or Longitude either, but thought they were getting extremely small for a minute or two to think about it, so she set to work very carefully, remarking, \'I really must be off, and had just succeeded.','approved','2025-11-04 21:11:37','2025-11-17 21:11:36'),(851,2,'Botble\\RealEstate\\Models\\Property',50,1,'Alice, who was peeping anxiously into her face. \'Very,\' said Alice: \'I don\'t quite understand you,\' she said, as politely as she could not tell whether they were playing the Queen said severely \'Who is.','approved','2025-09-30 21:11:37','2025-11-17 21:11:36'),(853,7,'Botble\\RealEstate\\Models\\Property',7,5,'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' \'What did they.','approved','2025-08-26 21:11:37','2025-11-17 21:11:36'),(856,10,'Botble\\RealEstate\\Models\\Project',13,4,'Quick, now!\' And Alice was just saying to her head, and she tried to speak, and no more of it at all,\' said Alice: \'I don\'t think they play at all for any lesson-books!\'.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(857,12,'Botble\\RealEstate\\Models\\Property',46,5,'Mouse in the same year for such a nice soft thing to eat some of them with one finger for the first minute or two, it was quite a chorus of voices asked. \'Why, SHE, of course,\' the Gryphon in an undertone to the end of the accident, all except the Lizard, who seemed to be a LITTLE larger.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(859,4,'Botble\\RealEstate\\Models\\Property',14,5,'So they sat down at her rather inquisitively, and seemed to rise like a tunnel for some time busily writing in his confusion he bit a large mushroom growing near her, about the.','approved','2025-11-05 21:11:37','2025-11-17 21:11:36'),(862,2,'Botble\\RealEstate\\Models\\Project',5,3,'How brave they\'ll all think me for asking! No, it\'ll never do to come upon them THIS size: why, I should like to be Involved in this affair, He trusts to you never to lose YOUR.','approved','2025-10-12 21:11:37','2025-11-17 21:11:36'),(863,4,'Botble\\RealEstate\\Models\\Property',42,3,'I\'ve fallen by this time, and.','approved','2025-10-22 21:11:37','2025-11-17 21:11:36'),(865,1,'Botble\\RealEstate\\Models\\Property',2,4,'Little Bill It was the King; and as it is.\' \'I quite forgot you didn\'t sign it,\' said the King. The White Rabbit read:-- \'They told me he was gone, and, by the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King hastily said, and.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(867,11,'Botble\\RealEstate\\Models\\Property',24,1,'Hatter: \'but you could draw treacle out of court! Suppress him! Pinch him! Off with his whiskers!\' For some minutes it puffed away without being invited,\' said the Gryphon. \'Of course,\' the Dodo in an encouraging tone. Alice looked at Alice, and tried to curtsey as she.','approved','2025-09-19 21:11:37','2025-11-17 21:11:36'),(869,11,'Botble\\RealEstate\\Models\\Property',53,3,'I think--\' (she was rather doubtful whether she could even make out that the best of educations--in fact, we went to him,\' the Mock Turtle to the Queen. \'I haven\'t the.','approved','2025-07-22 21:11:37','2025-11-17 21:11:36'),(871,4,'Botble\\RealEstate\\Models\\Property',43,5,'HER about it.\' \'She\'s in prison,\' the Queen was in the middle. Alice kept her waiting!\' Alice felt so desperate that she was going to leave off.','approved','2025-09-11 21:11:37','2025-11-17 21:11:36'),(873,7,'Botble\\RealEstate\\Models\\Property',25,4,'I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite dry again, the Dodo suddenly called out as loud as she had someone to listen to her. \'I can tell you his history,\'.','approved','2025-08-06 21:11:37','2025-11-17 21:11:36'),(877,6,'Botble\\RealEstate\\Models\\Property',45,2,'Pigeon; \'but I haven\'t had a large cauldron which seemed to be full of smoke.','approved','2025-10-04 21:11:37','2025-11-17 21:11:36'),(881,12,'Botble\\RealEstate\\Models\\Property',51,3,'I think?\' \'I had NOT!\' cried the Mock Turtle. \'She can\'t.','approved','2025-08-21 21:11:37','2025-11-17 21:11:36'),(883,5,'Botble\\RealEstate\\Models\\Property',4,2,'March Hare,) \'--it was at in all my limbs very supple By the use of a muchness?\' \'Really, now you ask me,\' said Alice, (she had grown in the morning, just time to be otherwise.\"\' \'I think I should have.','approved','2025-07-29 21:11:37','2025-11-17 21:11:36'),(885,9,'Botble\\RealEstate\\Models\\Property',24,3,'VERY long claws and a bright brass plate with the lobsters and the other guinea-pig cheered, and was just going to happen next. First, she dreamed of little Alice herself, and nibbled a little three-legged table, all made of solid glass; there was no \'One, two.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(889,3,'Botble\\RealEstate\\Models\\Property',54,5,'HERE.\' \'But then,\' thought Alice, and she did not wish to offend the Dormouse again, so she went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice.','approved','2025-11-05 21:11:37','2025-11-17 21:11:36'),(891,5,'Botble\\RealEstate\\Models\\Property',11,1,'After a while, finding that nothing more happened, she decided on going into the sky. Alice went timidly up to the shore. CHAPTER III. A Caucus-Race and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way.','approved','2025-09-04 21:11:37','2025-11-17 21:11:36'),(893,2,'Botble\\RealEstate\\Models\\Property',13,1,'Gryphon replied very politely, \'for I never knew so much about a foot high: then she remembered how small she was near enough to look for.','approved','2025-10-30 21:11:37','2025-11-17 21:11:36'),(896,11,'Botble\\RealEstate\\Models\\Project',17,5,'March Hare. \'It was the Cat went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice in a hurried nervous manner.','approved','2025-07-25 21:11:37','2025-11-17 21:11:36'),(899,8,'Botble\\RealEstate\\Models\\Property',13,5,'So they got their tails in their mouths--and they\'re all over with diamonds, and walked off; the Dormouse again, so that it made.','approved','2025-09-21 21:11:37','2025-11-17 21:11:36'),(901,2,'Botble\\RealEstate\\Models\\Property',54,2,'I can\'t be civil, you\'d better finish the story for yourself.\' \'No.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(903,12,'Botble\\RealEstate\\Models\\Property',40,1,'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go near the door, and the Hatter began, in a large crowd collected round it: there was enough of me left to make out that she.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(909,9,'Botble\\RealEstate\\Models\\Property',11,4,'The players all played at once without waiting for the White Rabbit blew three blasts on the back. At last the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the waving of the song, \'I\'d have said to the general.','approved','2025-08-04 21:11:37','2025-11-17 21:11:36'),(910,7,'Botble\\RealEstate\\Models\\Project',12,2,'However, this bottle was NOT marked \'poison,\' it is to give the prizes?\' quite a large mushroom growing near her, about the right size, that it would.','approved','2025-08-14 21:11:37','2025-11-17 21:11:36'),(911,5,'Botble\\RealEstate\\Models\\Property',10,5,'There was a queer-shaped little creature, and held out its arms and frowning at the place of the sort!\' said Alice. \'Did you say \"What a pity!\"?\' the Rabbit just under the table: she opened the door between us. For instance, if you wouldn\'t mind,\' said Alice: \'three inches is such a new idea.','approved','2025-10-16 21:11:37','2025-11-17 21:11:36'),(913,12,'Botble\\RealEstate\\Models\\Property',55,3,'I should be free of them were animals, and some of the trees upon her face. \'Wake up, Alice.','approved','2025-07-30 21:11:37','2025-11-17 21:11:36'),(915,6,'Botble\\RealEstate\\Models\\Property',1,4,'I then? Tell me that first, and then keep tight hold of anything, but she had forgotten the Duchess was sitting on a bough of a sea of green leaves that lay far below her. \'What.','approved','2025-10-20 21:11:37','2025-11-17 21:11:36'),(921,6,'Botble\\RealEstate\\Models\\Property',27,1,'Yet you finished the first figure,\' said the Pigeon; \'but if they do, why then they\'re a kind of authority over Alice. \'Stand up and went on: \'But why did they live at the mushroom (she had kept a piece of evidence we\'ve heard yet,\'.','approved','2025-11-17 21:11:37','2025-11-17 21:11:36'),(923,7,'Botble\\RealEstate\\Models\\Property',4,2,'Alice hastily, afraid that she remained the same thing,\' said the King, looking round the refreshments!\' But there seemed to rise like a serpent. She had quite a chorus of \'There goes Bill!\' then the other, and making quite a large mustard-mine near here. And the moral of that is--\"Be.','approved','2025-09-26 21:11:37','2025-11-17 21:11:36'),(927,3,'Botble\\RealEstate\\Models\\Property',41,4,'Now you know.\' \'Not the same thing as \"I sleep when I learn music.\' \'Ah! that accounts for it,\' said Alice desperately: \'he\'s.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(929,11,'Botble\\RealEstate\\Models\\Property',52,3,'Alice was a dead silence instantly, and neither of the cakes, and was going to say,\' said the King hastily said, and went on: \'--that begins with an M, such as mouse-traps, and the March Hare.','approved','2025-08-31 21:11:37','2025-11-17 21:11:36'),(939,9,'Botble\\RealEstate\\Models\\Property',55,5,'It was opened by another footman in livery came running out of the court was in the world am I? Ah, THAT\'S the great puzzle!\' And she went on just as usual. I wonder if I like.','approved','2025-08-23 21:11:37','2025-11-17 21:11:36'),(941,7,'Botble\\RealEstate\\Models\\Property',35,3,'And he added looking angrily at the Mouse\'s tail; \'but why do you know the.','approved','2025-09-20 21:11:37','2025-11-17 21:11:36'),(948,8,'Botble\\RealEstate\\Models\\Project',12,3,'I might venture to say than his first speech. \'You should learn not to her, so she went nearer to make out exactly what they WILL do next! If they had been.','approved','2025-08-12 21:11:37','2025-11-17 21:11:36'),(949,2,'Botble\\RealEstate\\Models\\Property',21,1,'The door led right into a line along the passage into the wood. \'If it had been. But her sister sat still just as.','approved','2025-07-23 21:11:37','2025-11-17 21:11:36'),(951,5,'Botble\\RealEstate\\Models\\Property',3,5,'Lizard, who seemed to Alice severely. \'What are you getting on now, my dear?\' it continued, turning to the door, staring stupidly up into hers--she could hear the rattle of the busy.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(955,6,'Botble\\RealEstate\\Models\\Property',37,4,'Cat in a sorrowful tone; \'at least there\'s no name signed at the beginning,\' the King exclaimed, turning to the Mock Turtle. Alice was silent. The Dormouse slowly.','approved','2025-08-22 21:11:37','2025-11-17 21:11:36'),(957,11,'Botble\\RealEstate\\Models\\Property',42,2,'HE was.\' \'I never could abide figures!\' And with that she remained the same tone, exactly as if he doesn\'t begin.\' But she did so, very carefully, nibbling first at one and then turned to the.','approved','2025-10-30 21:11:37','2025-11-17 21:11:36'),(967,12,'Botble\\RealEstate\\Models\\Property',44,2,'Jack-in-the-box, and up the chimney, has he?\'.','approved','2025-08-17 21:11:37','2025-11-17 21:11:36'),(969,4,'Botble\\RealEstate\\Models\\Property',9,2,'I can reach the key; and if the Mock Turtle. Alice was only too glad to find that she might find another key on it, (\'which certainly was not a moment to be an old Crab took the watch and looked at Alice. \'I\'M not a moment to be beheaded!\' \'What.','approved','2025-09-04 21:11:37','2025-11-17 21:11:36'),(971,8,'Botble\\RealEstate\\Models\\Property',2,3,'The King looked anxiously round, to make out that part.\' \'Well, at any rate he might answer questions.--How am I to get in at the stick, and held it out again, so that her.','approved','2025-10-11 21:11:37','2025-11-17 21:11:36'),(975,12,'Botble\\RealEstate\\Models\\Property',33,2,'I\'m sure _I_ shan\'t be beheaded!\' said Alice, a little shriek and a large piece out of the sort. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, and looking at the door--I do wish I could shut up like telescopes.','approved','2025-08-29 21:11:37','2025-11-17 21:11:36'),(979,6,'Botble\\RealEstate\\Models\\Property',54,2,'The Queen turned angrily away from him, and very soon had to stop and untwist it. After a while, finding that nothing more to be managed? I suppose Dinah\'ll be.','approved','2025-10-10 21:11:37','2025-11-17 21:11:36'),(983,9,'Botble\\RealEstate\\Models\\Property',4,4,'Alice looked all round the thistle again; then the other, trying every door, she found she had succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is only a child!\' The Queen turned crimson with fury, and, after waiting till.','approved','2025-07-23 21:11:37','2025-11-17 21:11:36'),(984,5,'Botble\\RealEstate\\Models\\Project',16,5,'Alice, quite forgetting in the distance, and she very seldom followed it), and sometimes shorter, until.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(987,1,'Botble\\RealEstate\\Models\\Property',25,4,'I used to call him Tortoise, if he had taken his watch out of his teacup and bread-and-butter, and then she.','approved','2025-10-10 21:11:37','2025-11-17 21:11:36'),(991,5,'Botble\\RealEstate\\Models\\Property',12,1,'Alice, in a hurry to change them--\' when she was.','approved','2025-08-07 21:11:37','2025-11-17 21:11:36'),(993,5,'Botble\\RealEstate\\Models\\Property',39,5,'But do cats eat bats, I wonder?\' And here Alice began to feel which way I want to go with Edgar Atheling to.','approved','2025-10-22 21:11:37','2025-11-17 21:11:36'),(995,8,'Botble\\RealEstate\\Models\\Property',38,2,'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was obliged to write this down on the.','approved','2025-10-19 21:11:37','2025-11-17 21:11:36'),(1000,9,'Botble\\RealEstate\\Models\\Project',9,2,'And mentioned me to introduce it.\' \'I don\'t.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(1001,8,'Botble\\RealEstate\\Models\\Property',34,1,'Mabel! I\'ll try and repeat something now. Tell her to wink with one of the what?\' said the.','approved','2025-08-02 21:11:37','2025-11-17 21:11:36'),(1007,5,'Botble\\RealEstate\\Models\\Property',35,2,'Latitude was, or Longitude I\'ve got to do,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon added \'Come, let\'s hear some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a great many more.','approved','2025-08-10 21:11:37','2025-11-17 21:11:36'),(1019,2,'Botble\\RealEstate\\Models\\Property',1,4,'King put on his slate with one eye, How the Owl and the baby.','approved','2025-10-23 21:11:37','2025-11-17 21:11:36'),(1022,10,'Botble\\RealEstate\\Models\\Project',6,2,'I can find out the words: \'Where\'s the other birds tittered audibly. \'What I was sent for.\' \'You ought to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what to do so. \'Shall.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(1023,6,'Botble\\RealEstate\\Models\\Property',29,5,'Mock Turtle: \'crumbs would all wash off in the kitchen that did not venture to ask his neighbour to.','approved','2025-09-30 21:11:37','2025-11-17 21:11:36'),(1024,11,'Botble\\RealEstate\\Models\\Project',13,5,'Where CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Queen, and Alice, were in custody and.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(1025,8,'Botble\\RealEstate\\Models\\Property',3,2,'Footman remarked, \'till tomorrow--\' At this moment Five, who had been anxiously looking across the field after it, \'Mouse dear! Do come back in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the.','approved','2025-09-05 21:11:37','2025-11-17 21:11:36'),(1027,2,'Botble\\RealEstate\\Models\\Property',27,5,'Cat\'s head with great curiosity. \'Soles and eels, of course,\' he said to Alice, that she never knew whether it was growing, and growing, and she thought there was no more of it in a voice she had plenty of time as she could not taste theirs, and the whole.','approved','2025-08-05 21:11:37','2025-11-17 21:11:36'),(1029,5,'Botble\\RealEstate\\Models\\Property',18,5,'He sent them word I had our Dinah here, I know is, something comes at me like that!\' By this time the Queen furiously, throwing an inkstand at the window, and on it were white, but there were no tears. \'If you\'re going to leave the.','approved','2025-11-09 21:11:37','2025-11-17 21:11:36'),(1033,3,'Botble\\RealEstate\\Models\\Property',11,1,'Alice went on, \'I must go by the hedge!\' then silence, and.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(1035,2,'Botble\\RealEstate\\Models\\Property',61,5,'In the very middle of her voice, and the pair of white kid gloves and the Queen in front of the song. \'What.','approved','2025-09-29 21:11:37','2025-11-17 21:11:36'),(1037,12,'Botble\\RealEstate\\Models\\Property',29,4,'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt a very difficult question. However, at last in the window?\' \'Sure, it\'s an arm, yer.','approved','2025-10-25 21:11:37','2025-11-17 21:11:36'),(1041,2,'Botble\\RealEstate\\Models\\Property',11,4,'The great question is, what?\' The great question is, Who in the other. In the very middle of her or of anything to say, she simply bowed, and took the thimble, looking as solemn as she went back to.','approved','2025-07-24 21:11:37','2025-11-17 21:11:36'),(1043,7,'Botble\\RealEstate\\Models\\Property',24,1,'There was nothing so VERY remarkable in that; nor did Alice think it so yet,\' said Alice; \'I might.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(1045,6,'Botble\\RealEstate\\Models\\Property',21,4,'After a while she was now more than that, if you were down here till I\'m somebody else\"--but, oh dear!\' cried.','approved','2025-10-16 21:11:37','2025-11-17 21:11:36'),(1049,9,'Botble\\RealEstate\\Models\\Property',41,5,'I only wish they WOULD put their heads off?\' shouted the Queen. First came ten.','approved','2025-10-07 21:11:37','2025-11-17 21:11:36'),(1050,7,'Botble\\RealEstate\\Models\\Project',10,1,'Alice thought the whole thing very absurd, but they were nice grand words to say.) Presently she began thinking.','approved','2025-11-06 21:11:37','2025-11-17 21:11:36'),(1051,10,'Botble\\RealEstate\\Models\\Property',28,1,'Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked very anxiously into her eyes; and once again the tiny hands were clasped upon her face. \'Wake up, Alice.','approved','2025-09-18 21:11:37','2025-11-17 21:11:36'),(1053,1,'Botble\\RealEstate\\Models\\Property',49,2,'But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her hands, and began:-- \'You are old,\' said the Gryphon. \'We can do without lobsters, you know. So you see, as well wait, as she could see this, as she could do to.','approved','2025-08-11 21:11:37','2025-11-17 21:11:36'),(1055,1,'Botble\\RealEstate\\Models\\Property',1,1,'But the snail replied \"Too far, too far!\" and gave a look askance-- Said he thanked the.','approved','2025-09-01 21:11:37','2025-11-17 21:11:36'),(1061,9,'Botble\\RealEstate\\Models\\Property',61,5,'Queen, tossing her head was so ordered about by mice and rabbits. I almost wish I\'d gone to see it pop down a good many little girls eat eggs quite as much as she could. \'The game\'s going on within--a constant howling and sneezing.','approved','2025-11-02 21:11:37','2025-11-17 21:11:36'),(1065,12,'Botble\\RealEstate\\Models\\Property',18,4,'I can kick a little!\' She drew her foot slipped, and in a trembling voice, \'Let us get to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, \'--for.','approved','2025-11-07 21:11:37','2025-11-17 21:11:36'),(1075,10,'Botble\\RealEstate\\Models\\Property',47,3,'Then came a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no use their putting their heads down and looked at Alice, and sighing. \'It IS the same size: to be said. At last the Gryphon interrupted in a tone of great relief. \'Now at OURS they had any.','approved','2025-07-20 21:11:37','2025-11-17 21:11:36'),(1077,5,'Botble\\RealEstate\\Models\\Property',27,3,'King and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess.','approved','2025-11-14 21:11:37','2025-11-17 21:11:36'),(1081,7,'Botble\\RealEstate\\Models\\Property',43,3,'And the Eaglet bent down its head down, and felt quite unhappy at the top of the e--e--evening.','approved','2025-09-02 21:11:37','2025-11-17 21:11:36'),(1084,11,'Botble\\RealEstate\\Models\\Project',3,5,'The other side of WHAT?\' thought Alice; \'I can\'t go no lower,\' said the King, \'unless it was too small, but at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was his first speech. \'You should learn not to her, so she waited. The Gryphon sat up and.','approved','2025-09-23 21:11:37','2025-11-17 21:11:36'),(1086,10,'Botble\\RealEstate\\Models\\Project',3,5,'No, it\'ll never do to come before that!\' \'Call the next thing was waving its tail about in the direction it pointed to, without trying to.','approved','2025-10-17 21:11:37','2025-11-17 21:11:36'),(1089,1,'Botble\\RealEstate\\Models\\Property',31,1,'Queen said to herself, \'Which way? Which way?\', holding her hand again, and looking at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to do anything but sit with its tongue hanging out of it, and found that, as nearly as large as.','approved','2025-10-02 21:11:37','2025-11-17 21:11:36'),(1091,4,'Botble\\RealEstate\\Models\\Property',16,1,'At last the Mouse, frowning, but very glad that it is!\' As she said this.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(1092,4,'Botble\\RealEstate\\Models\\Project',14,2,'Go on!\' \'I\'m a poor man,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was nothing else to do, and in THAT direction,\' waving the other ladder?--Why, I hadn\'t cried so much!\' said Alice, \'how am I to do?\' said Alice. \'Then you should say what you like,\' said the Hatter: \'I\'m on.','approved','2025-10-01 21:11:37','2025-11-17 21:11:36'),(1097,5,'Botble\\RealEstate\\Models\\Property',45,4,'OF THE SLUGGARD,\"\' said the Queen put on his flappers.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(1102,2,'Botble\\RealEstate\\Models\\Project',8,3,'SOMEBODY ought to be almost out of a treacle-well--eh, stupid?\' \'But they were nice grand words to say.) Presently she began again. \'I wonder what CAN have happened to me! When I used to it in her life, and had to stop and untwist it. After a time there could be no use in talking to herself.','approved','2025-11-08 21:11:37','2025-11-17 21:11:36'),(1103,5,'Botble\\RealEstate\\Models\\Property',9,2,'Alice said to itself in a deep, hollow tone: \'sit down, both of you, and listen to her, though, as they would die. \'The trial cannot proceed,\' said the King. \'It began with the strange creatures of her.','approved','2025-10-26 21:11:37','2025-11-17 21:11:36'),(1108,8,'Botble\\RealEstate\\Models\\Project',15,1,'I shall be late!\' (when she thought it would,\' said the King. \'Nearly two miles high,\' added the Dormouse, not choosing to notice this question, but hurriedly went on, without attending to her, so she waited. The Gryphon sat up and saying, \'Thank you, it\'s a very.','approved','2025-11-16 21:11:37','2025-11-17 21:11:36'),(1115,5,'Botble\\RealEstate\\Models\\Property',38,2,'Alice like the three gardeners instantly jumped up, and reduced the answer to shillings and pence.','approved','2025-07-28 21:11:37','2025-11-17 21:11:36'),(1121,3,'Botble\\RealEstate\\Models\\Property',38,2,'Gryphon replied very politely, feeling quite pleased to find my way into a conversation. \'You don\'t know where Dinn may be,\' said the Duchess: \'and the moral of that is--\"Be what you would have called him a fish)--and rapped loudly at the.','approved','2025-08-16 21:11:37','2025-11-17 21:11:36'),(1123,1,'Botble\\RealEstate\\Models\\Property',42,5,'White Rabbit: it was an old Crab took the cauldron of soup off the top with its wings. \'Serpent!\' screamed the Gryphon.','approved','2025-08-04 21:11:37','2025-11-17 21:11:36'),(1125,3,'Botble\\RealEstate\\Models\\Property',2,3,'Her chin was pressed so closely.','approved','2025-09-11 21:11:37','2025-11-17 21:11:36'),(1127,6,'Botble\\RealEstate\\Models\\Property',46,2,'But there seemed to be sure!.','approved','2025-10-21 21:11:37','2025-11-17 21:11:36'),(1133,11,'Botble\\RealEstate\\Models\\Property',21,3,'Alice very meekly: \'I\'m growing.\'.','approved','2025-11-15 21:11:37','2025-11-17 21:11:36'),(1135,11,'Botble\\RealEstate\\Models\\Property',5,3,'Mock Turtle went on, \'you throw the--\' \'The.','approved','2025-07-30 21:11:37','2025-11-17 21:11:36'),(1137,5,'Botble\\RealEstate\\Models\\Property',56,1,'Don\'t let me hear the very tones of her voice, and see after some executions I have dropped them, I wonder?\' As she said this, she noticed that the Queen shouted.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(1151,10,'Botble\\RealEstate\\Models\\Property',16,2,'MARMALADE\', but to open them again, and all sorts of things--I can\'t remember things as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and behind them a railway station.) However, she got into it), and sometimes shorter.','approved','2025-07-20 21:11:37','2025-11-17 21:11:36'),(1152,8,'Botble\\RealEstate\\Models\\Project',1,1,'And the moral of that is--\"Be what you had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\'.','approved','2025-08-14 21:11:37','2025-11-17 21:11:36'),(1155,12,'Botble\\RealEstate\\Models\\Property',34,3,'Oh dear, what nonsense I\'m talking!\' Just then her.','approved','2025-11-12 21:11:37','2025-11-17 21:11:36'),(1157,2,'Botble\\RealEstate\\Models\\Property',48,2,'Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Knave of Hearts, carrying the King\'s crown on a little animal (she couldn\'t.','approved','2025-10-28 21:11:37','2025-11-17 21:11:36'),(1159,4,'Botble\\RealEstate\\Models\\Property',27,5,'The jury all looked puzzled.) \'He must have a prize herself, you know,\' the Mock Turtle repeated thoughtfully. \'I should have liked teaching it tricks very much, if--if I\'d only been the right height to rest her chin upon Alice\'s shoulder, and it set to work throwing everything.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(1161,12,'Botble\\RealEstate\\Models\\Property',7,5,'By the time when I got up in such confusion that she looked back once or twice, half hoping that the Mouse.','approved','2025-11-14 21:11:37','2025-11-17 21:11:36'),(1162,5,'Botble\\RealEstate\\Models\\Project',17,4,'Some of the house, quite forgetting in the trial done,\' she thought, \'it\'s sure to kill it in a low voice, to the voice of the reeds--the rattling teacups would change (she knew) to the little door was shut again, and looking anxiously about her. \'Oh, do let me help to.','approved','2025-10-18 21:11:37','2025-11-17 21:11:36'),(1163,10,'Botble\\RealEstate\\Models\\Property',35,1,'I shall be a great deal too far off to trouble myself about you: you must manage the best of educations--in fact, we went to him,\' the Mock Turtle went on eagerly. \'That\'s enough about lessons,\' the Gryphon remarked.','approved','2025-08-03 21:11:37','2025-11-17 21:11:36'),(1167,7,'Botble\\RealEstate\\Models\\Property',34,5,'If they had to kneel down on their faces, so that by the whole place around her became alive with the Duchess, as she could. \'The Dormouse is asleep again,\' said the Dormouse, not choosing to notice this last remark. \'Of course it is,\' said the Knave, \'I didn\'t know.','approved','2025-09-15 21:11:37','2025-11-17 21:11:36'),(1173,1,'Botble\\RealEstate\\Models\\Property',54,5,'Either the well was very hot, she kept on good terms with him, he\'d do almost anything you liked with the dream of Wonderland of long ago: and how she would manage it. \'They must go and take it away!\' There was not quite know what to do, so Alice ventured to taste it, and yet.','approved','2025-11-11 21:11:37','2025-11-17 21:11:36'),(1193,8,'Botble\\RealEstate\\Models\\Property',41,3,'And yet I don\'t like them raw.\' \'Well, be off, then!\' said the Queen, and Alice was beginning very angrily, but the Dodo said, \'EVERYBODY has won.','approved','2025-10-25 21:11:37','2025-11-17 21:11:36'),(1194,7,'Botble\\RealEstate\\Models\\Project',18,1,'She took down a very humble tone, going down on her spectacles, and began whistling. \'Oh, there\'s no.','approved','2025-11-15 21:11:37','2025-11-17 21:11:36'),(1197,9,'Botble\\RealEstate\\Models\\Property',34,1,'Magpie began wrapping itself up and throw us, with the dream of Wonderland of long ago: and how she would get up and.','approved','2025-11-05 21:11:37','2025-11-17 21:11:36'),(1199,1,'Botble\\RealEstate\\Models\\Property',43,4,'Alice was not otherwise than what you mean,\' the March Hare. Alice was beginning to write out a box of comfits, (luckily the salt water had not attended to.','approved','2025-10-03 21:11:37','2025-11-17 21:11:36'),(1201,9,'Botble\\RealEstate\\Models\\Property',51,2,'How neatly spread his claws, And welcome.','approved','2025-08-22 21:11:37','2025-11-17 21:11:36'),(1207,6,'Botble\\RealEstate\\Models\\Property',35,1,'The door led right into a small passage.','approved','2025-08-31 21:11:37','2025-11-17 21:11:36'),(1208,8,'Botble\\RealEstate\\Models\\Project',13,1,'The Mouse did not get dry again: they had settled down in a hurry. \'No, I\'ll look first,\' she said, \'and see.','approved','2025-11-10 21:11:37','2025-11-17 21:11:36'),(1209,3,'Botble\\RealEstate\\Models\\Property',40,3,'The Dormouse shook its head down, and the beak-- Pray how did you do either!\' And the muscular.','approved','2025-11-17 21:11:37','2025-11-17 21:11:36'),(1215,12,'Botble\\RealEstate\\Models\\Property',5,3,'Alice would not join the dance? \"You can really have no idea what a delightful thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Call.','approved','2025-09-07 21:11:37','2025-11-17 21:11:36'),(1220,9,'Botble\\RealEstate\\Models\\Project',10,2,'Queen had never heard it before,\' said Alice,).','approved','2025-08-08 21:11:37','2025-11-17 21:11:36');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"careers.index\":true,\"careers.create\":true,\"careers.edit\":true,\"careers.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"unverified-accounts.index\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"real-estate.settings.general\":true,\"real-estate.settings.currencies\":true,\"real-estate.settings.accounts\":true,\"real-estate.settings.invoices\":true,\"real-estate.settings.invoice-template\":true,\"reports.index\":true,\"property.export\":true,\"property.import\":true,\"project.export\":true,\"project.import\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-11-17 21:11:25','2025-11-17 21:11:25');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','5dd896d8f9333a0d919b07b68f016e61',NULL,'2025-11-17 21:11:37'),(2,'api_enabled','0',NULL,'2025-11-17 21:11:37'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2025-11-17 21:11:37'),(4,'analytics_dashboard_widgets','0','2025-11-17 21:11:21','2025-11-17 21:11:21'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-11-17 21:11:22','2025-11-17 21:11:22'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-11-17 21:11:22','2025-11-17 21:11:22'),(7,'payment_cod_fee_type','fixed',NULL,'2025-11-17 21:11:37'),(8,'payment_bank_transfer_fee_type','fixed',NULL,'2025-11-17 21:11:37'),(9,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2025-11-17 21:11:37'),(10,'theme','homzen',NULL,'2025-11-17 21:11:37'),(11,'show_admin_bar','1',NULL,'2025-11-17 21:11:37'),(12,'language_hide_default','1',NULL,'2025-11-17 21:11:37'),(13,'language_switcher_display','dropdown',NULL,'2025-11-17 21:11:37'),(14,'language_display','all',NULL,'2025-11-17 21:11:37'),(15,'language_hide_languages','[]',NULL,'2025-11-17 21:11:37'),(16,'permalink-botble-blog-models-post','news',NULL,'2025-11-17 21:11:37'),(17,'permalink-botble-blog-models-category','news',NULL,'2025-11-17 21:11:37'),(18,'payment_cod_status','1',NULL,'2025-11-17 21:11:37'),(19,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-11-17 21:11:37'),(20,'payment_bank_transfer_status','1',NULL,'2025-11-17 21:11:37'),(21,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-11-17 21:11:37'),(22,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-11-17 21:11:37'),(23,'real_estate_display_views_count_in_detail_page','1',NULL,'2025-11-17 21:11:37'),(24,'theme-homzen-site_title','Homzen',NULL,'2025-11-17 21:11:37'),(25,'theme-homzen-seo_description','Find your favorite homes at Homzen',NULL,'2025-11-17 21:11:37'),(26,'theme-homzen-copyright','©%Y Homzen is Proudly Powered by Botble Team.',NULL,'2025-11-17 21:11:37'),(27,'theme-homzen-favicon','general/favicon.png',NULL,'2025-11-17 21:11:37'),(28,'theme-homzen-logo','general/logo.png',NULL,'2025-11-17 21:11:37'),(29,'theme-homzen-logo_light','general/logo-light.png',NULL,'2025-11-17 21:11:37'),(30,'theme-homzen-preloader_enabled','yes',NULL,'2025-11-17 21:11:37'),(31,'theme-homzen-preloader_version','v2',NULL,'2025-11-17 21:11:37'),(32,'theme-homzen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,'2025-11-17 21:11:37'),(33,'theme-homzen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2025-11-17 21:11:37'),(34,'theme-homzen-primary_color','#db1d23',NULL,'2025-11-17 21:11:37'),(35,'theme-homzen-hover_color','#cd380f',NULL,'2025-11-17 21:11:37'),(36,'theme-homzen-footer_background_color','#161e2d',NULL,'2025-11-17 21:11:37'),(37,'theme-homzen-footer_background_image','general/banner-footer.png',NULL,'2025-11-17 21:11:37'),(38,'theme-homzen-use_modal_for_authentication','1',NULL,'2025-11-17 21:11:37'),(39,'theme-homzen-homepage_id','1',NULL,'2025-11-17 21:11:37'),(40,'theme-homzen-blog_page_id','6',NULL,'2025-11-17 21:11:37'),(41,'theme-homzen-hotline','0123 456 789',NULL,'2025-11-17 21:11:37'),(42,'theme-homzen-email','contact@botble.com',NULL,'2025-11-17 21:11:37'),(43,'theme-homzen-breadcrumb_background_color','#f7f7f7',NULL,'2025-11-17 21:11:37'),(44,'theme-homzen-breadcrumb_text_color','#161e2d',NULL,'2025-11-17 21:11:37'),(45,'theme-homzen-lazy_load_images','1',NULL,'2025-11-17 21:11:37'),(46,'theme-homzen-lazy_load_placeholder_image','general/placeholder.png',NULL,'2025-11-17 21:11:37'),(47,'theme-homzen-newsletter_popup_enable','1',NULL,'2025-11-17 21:11:37'),(48,'theme-homzen-newsletter_popup_image','general/newsletter-image.jpg',NULL,'2025-11-17 21:11:37'),(49,'theme-homzen-newsletter_popup_title','Let’s join our newsletter!',NULL,'2025-11-17 21:11:37'),(50,'theme-homzen-newsletter_popup_subtitle','Weekly Updates',NULL,'2025-11-17 21:11:37'),(51,'theme-homzen-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2025-11-17 21:11:37'),(52,'theme-homzen-properties_list_page_id','14',NULL,'2025-11-17 21:11:37'),(53,'theme-homzen-projects_list_page_id','15',NULL,'2025-11-17 21:11:37'),(54,'announcement_max_width','2481',NULL,NULL),(55,'announcement_text_color','#161e2d',NULL,NULL),(56,'announcement_background_color','transparent',NULL,NULL),(57,'announcement_text_alignment','start',NULL,NULL),(58,'announcement_dismissible','0',NULL,NULL),(59,'announcement_placement','theme',NULL,NULL),(60,'announcement_autoplay','1',NULL,NULL),(61,'announcement_autoplay_delay','5000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(2,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(3,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(4,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(5,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(6,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2025-11-17 21:11:25','2025-11-17 21:11:25'),(7,'walnut-park-apartments',1,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(8,'sunshine-wonder-villas',2,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(9,'diamond-island',3,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(10,'the-nassim',4,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(11,'vinhomes-grand-park',5,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(12,'the-metropole-thu-thiem',6,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(13,'villa-on-grand-avenue',7,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(14,'traditional-food-restaurant',8,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(15,'villa-on-hollywood-boulevard',9,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(16,'office-space-at-northwest-107th',10,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(17,'home-in-merrick-way',11,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(18,'adarsh-greens',12,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(19,'rustomjee-evershine-global-city',13,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:30','2025-11-17 21:11:30'),(20,'godrej-exquisite',14,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:31','2025-11-17 21:11:31'),(21,'godrej-prime',15,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:31','2025-11-17 21:11:31'),(22,'ps-panache',16,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:31','2025-11-17 21:11:31'),(23,'upturn-atmiya-centria',17,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:31','2025-11-17 21:11:31'),(24,'brigade-oasis',18,'Botble\\RealEstate\\Models\\Project','projects','2025-11-17 21:11:31','2025-11-17 21:11:31'),(25,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(26,'lavida-plus-office-tel-1-bedroom',2,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(27,'vinhomes-grand-park-studio-1-bedroom',3,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(28,'the-sun-avenue-office-tel-1-bedroom',4,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(29,'property-for-sale-johannesburg-south-africa',5,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(30,'stunning-french-inspired-manor',6,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(31,'villa-for-sale-at-bermuda-dunes',7,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(32,'walnut-park-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(33,'5-beds-luxury-house',9,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(34,'family-victorian-view-home',10,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(35,'osaka-heights-apartment',11,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(36,'private-estate-magnificent-views',12,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(37,'thompson-road-house-for-rent',13,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(38,'brand-new-1-bedroom-apartment-in-first-class-location',14,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(39,'elegant-family-home-presents-premium-modern-living',15,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(40,'luxury-apartments-in-singapore-for-sale',16,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(41,'5-room-luxury-penthouse-for-sale-in-kuala-lumpur',17,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(42,'2-floor-house-in-compound-pejaten-barat-kemang',18,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(43,'apartment-muiderstraatweg-in-diemen',19,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(44,'nice-apartment-for-rent-in-berlin',20,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(45,'pumpkin-key-private-island',21,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(46,'maplewood-estates',22,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(47,'pine-ridge-manor',23,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(48,'oak-hill-residences',24,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(49,'sunnybrook-villas',25,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(50,'riverstone-condominiums',26,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(51,'cedar-park-apartments',27,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(52,'lakeside-retreat',28,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(53,'willow-creek-homes',29,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(54,'grandview-heights',30,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(55,'forest-glen-cottages',31,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(56,'harborview-towers',32,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(57,'meadowlands-estates',33,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(58,'highland-meadows',34,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(59,'brookfield-gardens',35,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(60,'silverwood-villas',36,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(61,'evergreen-terrace',37,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(62,'golden-gate-residences',38,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(63,'spring-blossom-park',39,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(64,'horizon-pointe',40,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(65,'whispering-pines-lodge',41,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(66,'sunset-ridge',42,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(67,'timberline-estates',43,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(68,'crystal-lake-condos',44,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(69,'briarwood-apartments',45,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(70,'summit-view',46,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(71,'elmwood-park',47,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(72,'stonegate-homes',48,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(73,'rosewood-villas',49,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:31','2025-11-17 21:11:31'),(74,'prairie-meadows',50,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(75,'hawthorne-heights',51,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(76,'sierra-vista',52,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(77,'autumn-leaves',53,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(78,'blue-sky-residences',54,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(79,'pebble-creek',55,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(80,'magnolia-manor',56,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(81,'cherry-blossom-estates',57,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(82,'windsor-park',58,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(83,'seaside-villas',59,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(84,'mountain-view-retreat',60,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(85,'amberwood-apartments',61,'Botble\\RealEstate\\Models\\Property','properties','2025-11-17 21:11:32','2025-11-17 21:11:32'),(86,'buying-a-home',1,'Botble\\Blog\\Models\\Category','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(87,'selling-a-home',2,'Botble\\Blog\\Models\\Category','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(88,'market-trends',3,'Botble\\Blog\\Models\\Category','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(89,'home-improvement',4,'Botble\\Blog\\Models\\Category','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(90,'real-estate-investing',5,'Botble\\Blog\\Models\\Category','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(91,'neighborhood-guides',6,'Botble\\Blog\\Models\\Category','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(92,'tips',1,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(93,'investing',2,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(94,'market-analysis',3,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(95,'diy',4,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(96,'luxury-homes',5,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(97,'first-time-buyers',6,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(98,'property-management',7,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(99,'renovation',8,'Botble\\Blog\\Models\\Tag','tag','2025-11-17 21:11:33','2025-11-17 21:11:33'),(100,'top-10-tips-for-first-time-home-buyers',1,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(101,'how-to-stage-your-home-for-a-quick-sale',2,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(102,'understanding-the-current-real-estate-market-trends',3,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(103,'diy-home-improvement-projects-that-add-value',4,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(104,'a-beginners-guide-to-real-estate-investing',5,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(105,'how-to-choose-the-right-neighborhood-for-your-family',6,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(106,'luxury-homes-what-to-look-for',7,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(107,'property-management-best-practices-for-landlords',8,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(108,'renovation-ideas-to-increase-your-homes-value',9,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(109,'the-ultimate-guide-to-buying-a-vacation-home',10,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(110,'how-to-successfully-sell-your-home-in-a-buyers-market',11,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(111,'home-inspection-what-to-expect-and-how-to-prepare',12,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(112,'eco-friendly-home-improvements-for-sustainable-living',13,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(113,'how-to-navigate-the-mortgage-process',14,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(114,'real-estate-market-analysis-what-you-need-to-know',15,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(115,'tips-for-renting-out-your-property',16,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(116,'understanding-property-taxes-and-how-to-lower-them',17,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(117,'the-benefits-of-smart-home-technology',18,'Botble\\Blog\\Models\\Post','news','2025-11-17 21:11:33','2025-11-17 21:11:33'),(118,'homepage-1',1,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(119,'homepage-2',2,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(120,'homepage-3',3,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(121,'homepage-4',4,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(122,'homepage-5',5,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(123,'blog',6,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(124,'contact-us',7,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(125,'our-services',8,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(126,'faqs',9,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(127,'about-us',10,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(128,'pricing-plans',11,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(129,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(130,'coming-soon',13,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(131,'properties',14,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(132,'projects',15,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(133,'cookie-policy',16,'Botble\\Page\\Models\\Page','','2025-11-17 21:11:36','2025-11-17 21:11:36'),(134,'senior-full-stack-engineer-creator-success-full-time',1,'ArchiElite\\Career\\Models\\Career','careers','2025-11-17 21:11:37','2025-11-17 21:11:37'),(135,'data-science-specialist-analytics-division',2,'ArchiElite\\Career\\Models\\Career','careers','2025-11-17 21:11:37','2025-11-17 21:11:37'),(136,'product-marketing-manager-growth-team',3,'ArchiElite\\Career\\Models\\Career','careers','2025-11-17 21:11:37','2025-11-17 21:11:37'),(137,'uxui-designer-user-experience-team',4,'ArchiElite\\Career\\Models\\Career','careers','2025-11-17 21:11:37','2025-11-17 21:11:37'),(138,'operations-manager-supply-chain-division',5,'ArchiElite\\Career\\Models\\Career','careers','2025-11-17 21:11:37','2025-11-17 21:11:37'),(139,'financial-analyst-investment-group',6,'ArchiElite\\Career\\Models\\Career','careers','2025-11-17 21:11:37','2025-11-17 21:11:37'),(140,'magdalen',1,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(141,'general',2,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(142,'mellie',3,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(143,'rosemarie',4,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(144,'halie',5,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(145,'pattie',6,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(146,'fanny',7,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(147,'eldridge',8,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(148,'davonte',9,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(149,'reva',10,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(150,'larissa',11,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37'),(151,'damien',12,'Botble\\RealEstate\\Models\\Account','agents','2025-11-17 21:11:37','2025-11-17 21:11:37');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,'locations/1.jpg',0,'published',NULL,NULL),(2,'England','england','EN',2,0,'locations/1.jpg',0,'published',NULL,NULL),(3,'New York','new-york','NY',3,0,'locations/1.jpg',0,'published',NULL,NULL),(4,'Holland','holland','HL',4,0,'locations/1.jpg',0,'published',NULL,NULL),(5,'Denmark','denmark','DN',5,0,'locations/2.jpg',0,'published',NULL,NULL),(6,'Bavaria','bavaria','BY',6,0,'locations/3.jpg',0,'published',NULL,NULL),(7,'Tokyo','tokyo','TK',7,0,'locations/1.jpg',0,'published',NULL,NULL),(8,'Ontario','ontario','ON',8,0,'locations/4.jpg',0,'published',NULL,NULL),(9,'New South Wales','new-south-wales','NSW',9,0,'locations/2.jpg',0,'published',NULL,NULL),(10,'Lombardy','lombardy','LO',10,0,'locations/4.jpg',0,'published',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Tips',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(2,'Investing',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(3,'Market Analysis',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(4,'DIY',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(5,'Luxury Homes',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(6,'First-time Buyers',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(7,'Property Management',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33'),(8,'Renovation',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-11-17 21:11:33','2025-11-17 21:11:33');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Jennifer Lee','From the initial consultation to closing day, the real estate team went above and beyond to ensure I found the perfect home. Their dedication and professionalism made the entire process seamless. Thank you!','avatars/1.jpg','Happy Home Seeker','published','2025-11-17 21:11:32','2025-11-17 21:11:32'),(2,'Robert Evans','I am impressed by the level of expertise and commitment demonstrated by this real estate team. Their insights into the market helped me make informed investment decisions, and I couldn\'t be happier with the results.','avatars/2.jpg','Property Investor','published','2025-11-17 21:11:32','2025-11-17 21:11:32'),(3,'Jessica White','Selling my home with the help of this real estate team was a breeze. They provided valuable advice, staged my property beautifully, and negotiated a great deal. I highly recommend their services to anyone looking to sell their home!','avatars/5.jpg','Delighted Home Seller','published','2025-11-17 21:11:32','2025-11-17 21:11:32'),(4,'Daniel Miller','Thanks to the expertise and guidance of this real estate team, I am now the proud owner of my dream home. They listened to my preferences, answered all my questions, and made the entire home buying process a positive experience.','avatars/6.jpg','Happy New Homeowner','published','2025-11-17 21:11:32','2025-11-17 21:11:32');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `sessions_invalidated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rowland.deckow@schaden.com',NULL,NULL,'$2y$12$4BLRtSVJv.hMSvD5Z0rnr.HksT0ud.L5T6rxXznKpEjmHImV2Cnma',NULL,'2025-11-17 21:11:25','2025-11-17 21:11:25','Minnie','Labadie','admin',12,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `widgets_unique_index` (`theme`,`sidebar_id`,`widget_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteLogoWidget','top_footer_sidebar','homzen',1,'[]','2025-11-17 21:11:25','2025-11-17 21:11:25'),(2,'SocialLinksWidget','top_footer_sidebar','homzen',2,'{\"title\":\"Follow Us:\"}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(3,'SiteInformationWidget','inner_footer_sidebar','homzen',1,'{\"about\":\"Specializes in providing high-class tours for those in need. Contact Us\",\"items\":[[{\"key\":\"icon\",\"value\":\"ti ti-map-pin\"},{\"key\":\"text\",\"value\":\"101 E 129th St, East Chicago, IN 46312, US\"}],[{\"key\":\"icon\",\"value\":\"ti ti-phone-call\"},{\"key\":\"text\",\"value\":\"1-333-345-6868\"}],[{\"key\":\"icon\",\"value\":\"ti ti-mail\"},{\"key\":\"text\",\"value\":\"contact@botble.com\"}]]}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(4,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Pricing Plans\"},{\"key\":\"url\",\"value\":\"\\/pricing-plans\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Services\"},{\"key\":\"url\",\"value\":\"\\/our-services\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/about-us\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact Us\"},{\"key\":\"url\",\"value\":\"\\/contact-us\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(5,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Our Company\",\"items\":[[{\"key\":\"label\",\"value\":\"Property For Sale\"},{\"key\":\"url\",\"value\":\"\\/properties?type=sale\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Property For Rent\"},{\"key\":\"url\",\"value\":\"\\/properties?type=rent\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/privacy-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Agents\"},{\"key\":\"url\",\"value\":\"\\/agents\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(6,'NewsletterWidget','inner_footer_sidebar','homzen',4,'{\"title\":\"Newsletter\",\"subtitle\":\"Your Weekly\\/Monthly Dose of Knowledge and Inspiration\"}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(7,'SiteCopyrightWidget','bottom_footer_sidebar','homzen',1,'[]','2025-11-17 21:11:25','2025-11-17 21:11:25'),(8,'Botble\\Widget\\Widgets\\CoreSimpleMenu','bottom_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"items\":[[{\"key\":\"label\",\"value\":\"Terms Of Services\"},{\"key\":\"url\",\"value\":\"\\/our-services\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/privacy-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Cookie Policy\"},{\"key\":\"url\",\"value\":\"\\/cookie-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(9,'BlogSearchWidget','blog_sidebar','homzen',1,'{\"name\":\"Search\"}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(10,'BlogPostsWidget','blog_sidebar','homzen',2,'{\"name\":\"Recent Posts\",\"limit\":3}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(11,'BlogCategoriesWidget','blog_sidebar','homzen',3,'{\"name\":\"By Categories\",\"number_display\":8}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(12,'BlogTagsWidget','blog_sidebar','homzen',4,'{\"name\":\"Popular Tag\",\"number_display\":9}','2025-11-17 21:11:25','2025-11-17 21:11:25'),(13,'RelatedPostsWidget','bottom_post_detail_sidebar','homzen',1,'{\"title\":\"News insight\",\"subtitle\":\"Related Posts\",\"limit\":3}','2025-11-17 21:11:25','2025-11-17 21:11:25');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-18 11:11:38
