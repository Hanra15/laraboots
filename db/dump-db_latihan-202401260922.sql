-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_latihan
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Programming','web-programming','2024-01-23 21:50:57','2024-01-23 21:50:57'),(2,'Personal','personal','2024-01-23 21:50:57','2024-01-23 21:50:57'),(3,'Design','Design','2024-01-23 21:50:57','2024-01-23 21:50:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_25_154108_create_posts_table',1),(6,'2023_09_26_025126_create_categories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,3,'Autem dignissimos nobis vel ut dolor.','molestias-animi-ipsum-blanditiis-animi',NULL,'Provident quae ea natus rerum tempora et. Natus asperiores occaecati itaque magni velit praesentium et. Neque perspiciatis doloremque commodi hic tempora minus.','<p>Ut ex et nihil et fuga minus. Quia expedita quibusdam autem doloremque et et accusantium. In quas nobis accusantium voluptatibus est rerum qui.</p><p>Officia eaque ut quia est ad veritatis. Id consequatur quis nisi quam laborum. Officia sed voluptates aut dolore incidunt repudiandae aspernatur sequi. In consequatur earum laudantium dolorem sit.</p><p>Explicabo neque ab nulla. Est molestiae totam quos doloribus sint velit et. Impedit numquam vel blanditiis repellendus.</p><p>Nam est iure dolorem et aut voluptatem. Et possimus consequatur soluta aut et ipsum explicabo. Recusandae quos sed ut quaerat.</p><p>Esse commodi rerum soluta omnis saepe beatae eaque excepturi. Quod ratione incidunt omnis optio facilis.</p><p>Accusantium ut nihil recusandae quasi minima voluptas eum. Dolor vel quia eius reiciendis repellendus cupiditate ipsum consequatur. Sapiente architecto rerum accusantium ratione sapiente at. Maiores rerum repellat dolores voluptatem.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(2,1,1,'Assumenda itaque soluta.','eveniet-tempora-maxime-autem-fugit-voluptates-nobis-enim-illo',NULL,'Modi iste delectus aut illo maxime ea voluptatem. Adipisci repellat consectetur dolores ut et illum. Et qui in in nobis distinctio amet.','<p>Accusamus soluta est harum assumenda beatae omnis fugit. Quia et fuga soluta enim. Dolor occaecati quibusdam molestiae quia natus.</p><p>Non rerum sit amet inventore. Non et quia nostrum sunt delectus. Et totam est nesciunt vel autem. Est adipisci veritatis totam et.</p><p>Id ipsa quis et temporibus et. Modi reiciendis expedita vitae corrupti. Recusandae voluptatem eum assumenda voluptatem at.</p><p>Voluptas itaque id nisi suscipit in. Dicta temporibus earum nihil distinctio occaecati. Deleniti placeat fugit totam voluptates.</p><p>Voluptate ut totam voluptatibus reiciendis. Nulla quis quasi consequatur corrupti. Voluptatem eos soluta quod neque est nemo quia.</p><p>Sed non quia exercitationem quos iste beatae in. Ut aliquid labore est nisi. Asperiores architecto beatae sed esse cupiditate eos nobis. Corporis sed suscipit voluptatem.</p><p>Ex cum nesciunt vero voluptas. Soluta omnis nostrum corporis molestias vitae. Enim est doloribus aut tenetur.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(3,2,2,'Corrupti ad.','est-illum-facilis-numquam-ullam-et-deserunt-facilis-voluptas',NULL,'Nulla cum amet ad. Minima tempora eius ea eaque et suscipit. Molestiae ea et molestiae nihil aliquam dolorem. Tenetur nisi incidunt eos laborum dolorem omnis.','<p>Est repellat et quo odio perspiciatis fuga. Sed dignissimos aut ut praesentium quod. Corrupti voluptatum in qui earum a. Ad minima est deleniti fugiat temporibus eos.</p><p>Et eum dolorum minima quia sunt vel dignissimos. Dolore et quis magnam est. Eum exercitationem non nihil fugiat id. Veniam at hic debitis ducimus vitae fugit.</p><p>Autem sit aspernatur occaecati velit sit autem. Laborum ut placeat non qui quia. Ipsum ex ut officia maiores dolores. Sint voluptatum cum deleniti iste a eaque.</p><p>Eos voluptatem quis maxime nam debitis dolorem. Rerum pariatur autem ea autem. Quasi vero aliquam temporibus a et. Veniam enim dolorem voluptas voluptatum occaecati dolor necessitatibus.</p><p>Dolores exercitationem rem est odio aperiam deleniti. Adipisci corrupti qui vitae quam. Totam libero et voluptates ut. Sed qui non accusamus non.</p><p>Asperiores aut voluptatum placeat hic consequatur. Veritatis voluptate cum illum necessitatibus assumenda doloribus beatae. Vel eveniet aut repudiandae.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(4,1,2,'Blanditiis est inventore hic molestiae rem.','voluptatem-debitis-a-enim-eum-saepe',NULL,'Corrupti dolorem repudiandae enim voluptates in nisi. Dolorem consequatur non debitis illum est. Exercitationem voluptatibus omnis sunt aut quae ad alias. Aut optio soluta tenetur laborum iure nostrum.','<p>Dolorem aspernatur ipsa aliquid qui voluptate. Ex non et autem nam. Suscipit quae ipsa et magnam atque. Necessitatibus a et aliquid eveniet eligendi asperiores corrupti. Quia sit ea omnis architecto hic sunt omnis.</p><p>Eligendi quos iure reiciendis officia illum est. Eum eius quidem ea mollitia praesentium ut autem. Deleniti debitis voluptas et omnis.</p><p>Voluptatem ipsa ullam necessitatibus et molestias. Laborum non accusantium magni et. Quis dolorem consequatur ut totam error est illo eos.</p><p>Vero laudantium nam inventore ab. Omnis ipsa numquam quia cupiditate voluptatem. Accusamus reiciendis et et doloremque vitae. Omnis qui eum voluptatem est dolor sunt aut.</p><p>Porro numquam voluptates illum doloremque explicabo voluptas velit. Excepturi officia maxime quia quidem temporibus illum quo.</p><p>Illum iure natus neque non necessitatibus consequuntur beatae. Deleniti odit maiores provident assumenda qui rem. Ea dicta exercitationem consequatur qui blanditiis. Incidunt qui inventore culpa quo eum consequatur rerum earum.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(5,2,3,'Ut laboriosam ad ad.','possimus-molestiae-temporibus-neque',NULL,'Et sed dolores et sit quisquam dignissimos quod est. Dolor eveniet atque voluptas est officiis error sit. Eius sunt deleniti eos ab rerum atque.','<p>Qui soluta laudantium autem culpa perferendis aut. Rerum aspernatur sit ea. Dolor incidunt deleniti sit et ut. Et iure adipisci omnis. Nam voluptates quia et minima molestias ratione.</p><p>Vitae eligendi qui accusantium et delectus minus nulla. Doloribus a recusandae et perspiciatis qui laborum quod. Illum ea recusandae itaque voluptatem amet et.</p><p>Ut dolorem sunt reprehenderit. Aut maxime rem aliquid excepturi corporis sit quae. Ut ut blanditiis magnam in ut sit autem. Quis animi alias repudiandae qui sequi corrupti vel voluptas.</p><p>Qui magnam ullam est eos ducimus. Quis sit est ducimus blanditiis. Voluptatem qui quis cupiditate.</p><p>Consequatur asperiores nesciunt modi exercitationem quam. Aut in magni deleniti sint. Molestiae animi qui molestiae odio praesentium placeat dolor.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(6,1,2,'Et ducimus sunt dolorum sed sed.','molestias-in-incidunt-illo-eum-quam-facilis-culpa',NULL,'Voluptates repellat inventore ut quo. Beatae in officia quos quidem inventore quaerat dolores. Nihil delectus ut eos unde eum velit consequatur.','<p>Dolor harum veritatis corporis est. Quidem facilis ex dignissimos quas aliquid cumque aut neque. Consequatur et occaecati repellat ratione est. Nobis enim veritatis distinctio exercitationem laudantium sint.</p><p>Dolores harum ad aliquid ut. Et qui aliquam voluptatem. Est dolorem molestiae corporis aut quaerat. Odio quos explicabo delectus. Qui eum necessitatibus provident assumenda hic odio reprehenderit.</p><p>Minus placeat consequatur iste enim ullam quidem beatae. Alias dignissimos laborum qui consequatur. Est fuga necessitatibus iste aut ut est sit.</p><p>Deleniti qui aperiam ea est dolores doloribus. Odio qui rerum fuga magnam. Quas ut minus cumque ut quis eos facilis qui. Laboriosam vitae et rem voluptates excepturi quos magnam.</p><p>Qui laboriosam laborum fugiat ratione et. Ipsa cupiditate maiores qui et. Qui sed fugiat nostrum neque dolores eum. Saepe est fugiat libero non.</p><p>Dolores doloribus earum corrupti consectetur non deleniti. Veritatis quia voluptates et. Distinctio ducimus dolorum voluptatem et.</p><p>Atque iste earum quaerat earum quidem. Nulla sed molestias ut autem voluptas aliquam qui. Nisi officia est nemo modi omnis assumenda. Omnis quisquam dicta sed corporis eum et eum.</p><p>Voluptatem est et aspernatur perferendis alias praesentium voluptatibus. Totam ut amet et temporibus laboriosam. Ab optio veniam et ut suscipit. Corporis aliquid omnis iure aut et iusto.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(7,1,3,'Omnis ea tempora et.','saepe-ut-officiis-qui-inventore-iste',NULL,'Excepturi corrupti eveniet voluptatem architecto aut. Provident fuga tempora quo dolores. Suscipit eum deleniti modi autem expedita eaque. Hic enim aut sed ut.','<p>Non debitis molestiae a consequatur et praesentium. Dignissimos voluptas non fuga. Repellat culpa omnis omnis similique vel amet repellendus. Eos in enim odio est nisi minima. Et alias alias fugit occaecati nulla nemo quia.</p><p>Eius optio dolorum necessitatibus ex recusandae pariatur amet. Est voluptatum aut odit doloribus. Blanditiis numquam dolorem atque rerum autem. Tempore possimus voluptatem maxime consectetur.</p><p>Dolores ad quo nesciunt tempora distinctio. Totam dolorem voluptate ut. Autem nulla molestiae temporibus et ab.</p><p>Sunt pariatur autem omnis modi. Voluptates aliquam labore in ratione eum qui cum ut. Deserunt sit quidem quia voluptatem.</p><p>Est qui voluptate ab iure dolores ea officia. Unde laudantium earum odit dolore laboriosam dolor dolores. Rerum cum est provident aut.</p><p>Recusandae eos et est illo. Saepe nemo id voluptas nobis nesciunt voluptatibus. Temporibus accusantium et similique nobis sit ea.</p><p>Corrupti unde et provident itaque laborum quia placeat eaque. Voluptatem quaerat qui quia cum qui ut. Recusandae iste quidem maiores. Accusamus quibusdam unde minima.</p><p>Modi molestiae optio est neque architecto. Ex provident impedit possimus est. Reprehenderit illum illo vitae totam dolorum ut. Explicabo fuga dolor a voluptatem.</p><p>Qui et corporis totam veniam ad animi ipsum dignissimos. Rerum earum eligendi culpa corporis eum voluptas. Ex magni quisquam culpa rem fugiat voluptas pariatur.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(8,2,2,'Eum consequatur distinctio.','pariatur-ratione-et-culpa-eius',NULL,'Fugiat sit vel distinctio delectus voluptatum dolorem id. Magni sapiente blanditiis quia eligendi. Ratione animi labore in eum. Id quasi ad a eum voluptatem odit ab.','<p>Nihil rerum ducimus beatae eligendi architecto autem. Omnis facilis earum ut vero officiis. Saepe recusandae doloremque voluptatem magni quisquam qui molestiae.</p><p>Aliquid sed id magni. Cum id sit reprehenderit rerum ipsam omnis nulla. Ipsa et quo laboriosam quia eos. Corrupti est aut adipisci aspernatur. Voluptatem voluptatem sunt impedit earum doloribus.</p><p>Voluptatibus perferendis mollitia in quas rem et laboriosam itaque. Atque esse maxime fugiat ut et et. Dolorem suscipit neque et eum iusto dolor quis. Dolores in numquam tenetur esse quis.</p><p>Explicabo consequatur praesentium aut voluptatum. Veniam quisquam aut maxime officiis animi. Aliquam fugit et nulla nulla ad amet aliquid. Quis rem rerum voluptatem expedita consequatur amet.</p><p>Inventore iure dolor soluta aliquam. Recusandae voluptatem laudantium accusantium exercitationem. Quaerat nisi est sequi architecto quia quos rerum. Eaque earum asperiores magnam.</p><p>Non dicta error quasi deserunt aliquid. Deserunt et necessitatibus aut. Reiciendis qui exercitationem et a ea et. Esse facilis tenetur quae. Voluptatem ut eligendi hic non hic sed praesentium.</p><p>Tenetur doloremque corporis aperiam ipsa eos eum odio. Doloribus repellendus recusandae delectus tempore. Magni nostrum dolorem qui enim sequi doloribus.</p><p>Aliquid omnis eum ea quaerat nihil iusto ea. Qui repudiandae sequi odio inventore eos praesentium aut.</p><p>Qui voluptatum ipsa enim sed iure labore. In pariatur ut expedita ea unde fugit et dolorum. Sunt et ut adipisci modi et id.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(9,2,3,'Aut nihil consequatur sequi et neque.','aut-sapiente-rerum-iusto-repellat-enim-et',NULL,'Et laudantium minus tempore recusandae similique necessitatibus. Minima quia impedit animi commodi. Libero voluptatem quia libero reiciendis. Dolorem similique cum voluptatem et numquam.','<p>Dolore magni ducimus impedit aliquid debitis ipsam quasi. Expedita omnis non omnis. Nesciunt suscipit praesentium quam est sint recusandae soluta. Sit quasi placeat repellendus aliquid dolores voluptates.</p><p>Inventore magnam in et reprehenderit. Inventore voluptatem sapiente quos cum magnam aut.</p><p>Placeat accusamus voluptatum quidem expedita error quo alias. Aspernatur unde libero molestias earum odit dolorum ipsa suscipit. Eos enim ut et. Quo iusto consequatur aliquam dolore aut.</p><p>Porro voluptate nostrum consequatur nihil vel. Sit id quam repudiandae at omnis sunt rem. Nihil reiciendis dolorem fugiat asperiores et rem ducimus. Rerum tempora non ex maxime.</p><p>Eum sunt sit et ut. Voluptatem aut eius nisi. Eveniet molestiae quis occaecati dolorem nam et.</p><p>Veniam ut iste quos explicabo vel eos adipisci. Veniam necessitatibus quo tenetur. Ducimus expedita libero autem et in. Eos nesciunt eos quam quaerat pariatur voluptatibus.</p><p>Ab vero quae aspernatur et. Fuga et et natus cum. Laborum aut in voluptatum exercitationem quos consequatur consequatur qui. Quia voluptatem sit esse aliquam inventore earum.</p><p>Consectetur ea enim et fuga dolor expedita. Minima maiores sequi omnis mollitia et laboriosam numquam. Et deleniti perspiciatis pariatur sit provident.</p><p>Odio sit magni sit at quia optio tempora. Excepturi quod hic beatae asperiores esse autem perspiciatis. Quia aut aspernatur corrupti temporibus id et. Quam vero impedit omnis vitae alias.</p>',NULL,'2024-01-23 21:50:56','2024-01-23 21:50:56'),(10,2,1,'Ut fugit harum excepturi cum temporibus ut ut dolorem nulla.','magni-quidem-magni-dolore-suscipit-praesentium',NULL,'Blanditiis aut sunt nisi est sint. Amet officiis veniam ducimus autem. Et tempore et modi delectus. Hic aliquam voluptatem et minus.','<p>Sunt voluptas voluptas porro et quo qui architecto. Ipsum ullam nam aut sit ea provident quam. Autem doloremque voluptatum voluptatibus.</p><p>Molestias fugiat facilis adipisci maiores aperiam quod. Sequi vel placeat asperiores voluptas. Porro non corporis ut et molestiae maxime.</p><p>Et qui quis corrupti iste vel. Ex atque eius nemo et ut quia distinctio. Dolor natus voluptas dolore quasi praesentium qui ipsum repellat.</p><p>Aliquam itaque quibusdam aperiam voluptatibus cupiditate in. Consequatur quam quidem odit velit. Ipsam eius commodi enim enim impedit.</p><p>Debitis quod inventore rerum est. Amet vitae unde doloribus a distinctio. Consequatur ex accusamus consectetur. Assumenda aperiam sed alias eum.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(11,2,3,'Ducimus hic ullam ex.','nam-reprehenderit-eius-quisquam-in-dolores',NULL,'Eveniet quasi totam ipsa quaerat aut architecto. Cum cumque quia autem quo eius.','<p>Aut itaque et dicta et et. Nisi voluptatem saepe molestias in perspiciatis possimus suscipit. Id voluptatem explicabo aliquid explicabo consequatur neque.</p><p>Tempore ullam eligendi corporis sed officiis tempore quaerat consequatur. Est voluptas dolorem deleniti perspiciatis.</p><p>Et aut vel consectetur possimus inventore. Tempora veritatis et cum minima cum. Vel dolorem omnis qui sed maxime dolorem.</p><p>Sapiente adipisci ut enim voluptates. Tempora officiis dolores a quibusdam et consequatur aut. Ut natus facere deleniti modi necessitatibus. Perferendis repellat molestiae ex placeat.</p><p>Est est reprehenderit non quia officiis. Distinctio ipsum quae esse nulla magnam corporis. Id velit quis dolorum error alias saepe cumque.</p><p>Sapiente laborum pariatur beatae quam quo similique provident. Possimus dolor quo neque earum ut provident. Fuga itaque optio ut. Qui consectetur numquam non ipsa debitis a est. Debitis sequi voluptatibus sit dolor cum ea rerum eligendi.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(12,1,3,'Voluptatibus quo aut repellendus provident pariatur et.','porro-ab-et-molestiae-dolor-similique',NULL,'Aut dolorem quibusdam voluptatem reprehenderit veniam aut. Aut ut nesciunt non officiis ut voluptatem eius. Velit et id velit officiis necessitatibus consectetur. Cupiditate est culpa sit architecto.','<p>Beatae delectus ea est accusamus nisi. Quia dolorum ad in a possimus nobis. Dolorum et corporis aspernatur quam. Et quia qui voluptates tempora illo. Labore suscipit quas totam dolor corporis totam.</p><p>Dolore aut provident et quas distinctio nesciunt labore. Facilis consequatur officiis dolores quo. Officiis magni quo voluptas fuga omnis molestiae nihil.</p><p>Quos quaerat nemo provident recusandae optio. Voluptatem et rerum asperiores esse voluptatum. Earum non itaque sed rerum animi aperiam perspiciatis. Temporibus id enim distinctio voluptatem aut culpa.</p><p>Quos est omnis excepturi velit quidem similique enim. Aut eum iusto expedita sunt. Architecto dolor ut aspernatur occaecati nisi sequi sit.</p><p>Quia quia mollitia et dolores minus. Et quidem qui amet laudantium optio optio ut. Reiciendis ut consectetur ducimus et.</p><p>Velit dolorem voluptatem facilis vel est quas non. Eum nobis aspernatur quia consectetur. Id in aperiam dignissimos ipsum dolorem rem dolores fugit.</p><p>Consequatur est facilis voluptas molestias consequatur possimus in harum. Ut inventore dignissimos beatae veritatis voluptate. Rerum et ut veniam corrupti nesciunt voluptate. Accusantium facilis quam fugit quia qui magni.</p><p>Quis sed sed ullam sint. Sit culpa mollitia suscipit et rem laborum. Vel similique perspiciatis quod fuga quas eos voluptatem quibusdam.</p><p>Sint eum dolor voluptas eum optio. In voluptatum tempora recusandae. Pariatur officia non optio est occaecati repudiandae.</p><p>Ut qui nobis recusandae asperiores blanditiis. Maxime sequi adipisci inventore ipsum dicta aut ullam adipisci. Veniam quibusdam quidem doloremque suscipit et voluptatem necessitatibus. Doloribus voluptates velit qui nam.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(13,1,1,'Nesciunt autem magni minus officiis accusamus.','corporis-consequuntur-officiis-sequi-deserunt-et-unde-rem-vitae',NULL,'Eveniet in quasi et. Dolorum omnis nihil ut distinctio magnam. Earum vel culpa dolor tenetur ipsum nostrum vero.','<p>Aut maiores ducimus quod architecto esse omnis rerum ut. Ut non ut perspiciatis reprehenderit est. A autem numquam et eos. Fuga sequi ut ut asperiores velit repellendus dicta.</p><p>Assumenda pariatur est quia quod veniam. Ducimus voluptas consequatur inventore minus id aliquam sint suscipit. Blanditiis adipisci recusandae consectetur odit vel. Quae occaecati non error magnam dolorum quis.</p><p>Alias et incidunt pariatur et. Quia ea ab est ut aut dicta. Aperiam voluptas doloribus eum praesentium eaque.</p><p>Libero quo in dolorum nulla cum ipsa. Facilis aperiam iusto veniam. Aliquid laborum ut voluptatem provident accusantium porro.</p><p>Optio fugit maiores reiciendis et unde perspiciatis tempore. Sapiente fugiat id maxime rerum iure sequi nesciunt. Consectetur nemo quis labore nulla ducimus. Veniam fugit voluptatibus qui.</p><p>Quia a eius dignissimos reprehenderit voluptatibus illum eaque. Omnis non dolorem illum consectetur fuga. Accusantium id aspernatur adipisci voluptatem quam. Velit aliquam natus enim accusamus.</p><p>Culpa nemo aut id aspernatur voluptate at sed. Sequi culpa culpa ullam quod excepturi perferendis aut ut. Ullam enim dolore nihil beatae qui nisi ea. In dignissimos totam fuga aliquam aut tenetur.</p><p>Iusto autem amet error assumenda quas. Voluptas sapiente molestias necessitatibus odio omnis non culpa. Eos dignissimos repellat quo sint repellendus.</p><p>Numquam dolor et asperiores error et praesentium. Dolores placeat quod necessitatibus. Saepe in voluptatem quo qui ea nemo ut. Eveniet omnis numquam ipsa ipsam non sit mollitia.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(14,2,2,'Possimus est voluptas veritatis facilis dolor asperiores.','mollitia-est-quam-aperiam-ipsum',NULL,'Quas consectetur praesentium maxime quas laboriosam maiores aut. Et corporis a aut nihil rerum. Sit ipsa labore cumque quasi exercitationem ea.','<p>Dolor nisi temporibus repellat ea. Quod et quod ea voluptas deleniti corporis. Sequi accusantium distinctio voluptatem aut quibusdam voluptatem.</p><p>Maiores voluptatum modi impedit. Qui voluptas voluptatem nihil eligendi illo omnis occaecati. Sint sit facilis est qui sunt cumque maiores. Sed a sint quibusdam reiciendis animi necessitatibus qui.</p><p>Eos magnam ipsa velit explicabo consequatur et. Quasi voluptatem optio voluptates officiis aut ea. Iste odio aut aut magnam blanditiis consequatur.</p><p>Tempora possimus asperiores voluptatem enim facere porro molestiae. Rerum labore recusandae quae omnis consequatur sunt sapiente. Voluptas aut eligendi cumque. Voluptas ea tenetur voluptatem repellendus consectetur id soluta. Voluptatem omnis eum unde.</p><p>Adipisci exercitationem pariatur ut voluptatum quod voluptates libero. Et eligendi fuga ut nisi sapiente mollitia temporibus. Ea rerum quis voluptatem dignissimos voluptatem consequuntur. Et dicta minima minima itaque beatae consequuntur doloribus. Aperiam molestiae beatae officiis amet quam voluptatum.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(15,1,3,'Veniam voluptatem est et ex voluptatem hic.','nobis-voluptates-laborum-id-facere-et',NULL,'Officiis maiores doloremque sunt at qui velit. Architecto veniam vitae dignissimos nostrum. Suscipit alias expedita quia enim eum. Aut harum quo iusto facere.','<p>Enim qui error dignissimos vitae aut eveniet pariatur. Natus libero beatae vero sed eum qui.</p><p>Mollitia placeat fuga dolores. Ipsa est sit harum aspernatur ea. Id aut distinctio ut eum.</p><p>Quam et ea fuga voluptas ab quia pariatur excepturi. In aperiam facere maxime rerum.</p><p>Dolor explicabo vel provident sint. Sit est blanditiis repudiandae et. Vel dolore expedita repellendus dolorem. Error nam impedit molestias ad hic harum in.</p><p>Placeat quae enim minima omnis tempora deleniti soluta quia. Et enim distinctio non laboriosam et suscipit ratione.</p><p>Non laudantium omnis blanditiis consequuntur quia sequi odio eligendi. Vel nam explicabo animi fugit. Est ut maiores itaque voluptates delectus quos ratione.</p><p>Quibusdam libero explicabo corporis provident. Dolores quia consectetur reprehenderit error impedit necessitatibus. Expedita modi veritatis doloribus aliquid rerum. Repellat veniam atque hic voluptas. Sunt provident accusamus amet blanditiis sapiente at.</p><p>Inventore quasi quis aut a. Cupiditate ut nesciunt tempore qui ad animi. Corporis non reprehenderit quas qui. Quo deleniti quidem quo eveniet.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(16,1,3,'Est quo minus nisi ut atque doloremque repellendus temporibus.','sequi-omnis-ipsa-eos',NULL,'Repellat nobis exercitationem dolore adipisci quaerat vel ad. Laudantium ex et temporibus tempora consequatur maiores eveniet.','<p>Consequuntur voluptates eum fuga. Aliquam dolor debitis qui placeat est nulla. Odit est et necessitatibus sint.</p><p>Quo explicabo est quis commodi eligendi magni velit. Dolores dolores ut et rerum. Pariatur ut ipsum eius molestiae ratione.</p><p>Vel quidem vel atque laborum quos explicabo. Nam quis cum delectus rerum. Nihil ea fuga magni fugiat qui. Quaerat asperiores perspiciatis hic repudiandae delectus autem.</p><p>Temporibus quas quaerat illum nisi sit est laudantium. Ullam cupiditate earum aliquam minima itaque sed. Sed quo velit cum qui. Aut minus tempore dolor quia amet. Rerum est corrupti quae et voluptatem saepe vitae.</p><p>Accusamus dolores veritatis cum sunt dignissimos. Nulla delectus iure et eligendi illum distinctio. Illum suscipit dolor dolores repellat quis officiis. Vitae omnis qui id inventore ullam sit.</p><p>Nesciunt repellat voluptatem soluta quaerat quo nemo. Et quis sed consequuntur rerum culpa. Voluptates quaerat iure aliquid ex ut velit officiis sed. Voluptas quia dolor cum recusandae numquam omnis.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(17,2,3,'Ipsam quas enim provident corrupti at.','ea-maxime-aspernatur-ratione-dolores-in-quis-cupiditate',NULL,'Quis illum quia dolore cumque. Ratione nam voluptatem aut perferendis sunt. Possimus porro consequuntur saepe dolor iste vel. Ab asperiores quae voluptatem et libero quia veritatis.','<p>Alias numquam quidem ut et dicta ab. Consequuntur enim excepturi quae sapiente esse nobis nesciunt quasi. Dolorum magnam libero voluptatum ut dolorem aut fugit consequatur.</p><p>Ipsam molestias inventore repellendus sit et consequatur. Quisquam molestiae autem sint laboriosam officia et esse nulla. Error dolores consequuntur recusandae ad veniam. Aut sed consequatur debitis ut odio.</p><p>Sint aut incidunt veniam labore vero aliquam. Culpa autem amet ad perspiciatis corrupti maiores recusandae. Et ratione nihil deleniti amet et sunt quia. A aut excepturi impedit sunt.</p><p>Id doloremque tenetur sed soluta. Expedita tempora praesentium quis modi consequuntur voluptas quisquam. Quis deleniti id architecto rem alias molestias ad.</p><p>Quisquam est voluptas et omnis esse vero officia. Corporis ullam vitae corporis quasi quo beatae incidunt. Consequuntur molestias consectetur et laboriosam repudiandae quis. Ipsam consectetur id quia quod delectus dolore error.</p><p>Voluptate eius qui cum quis officiis. Tempore inventore est perferendis porro fuga necessitatibus vel. Autem excepturi tenetur molestias dolorem.</p><p>Ea omnis delectus quae. Voluptatibus repellendus omnis delectus voluptatibus ullam facere enim.</p><p>Quod sint nihil ut. Consectetur asperiores aut temporibus ut libero quo sed. Aperiam saepe culpa ut accusantium esse. Magni nisi beatae nobis ut.</p><p>Perferendis aut occaecati eligendi nulla. Nisi cumque nisi corrupti autem placeat enim provident. Repellat animi deserunt excepturi minima qui assumenda et. Pariatur aut excepturi excepturi est animi velit delectus. At ad ad delectus dolorum deserunt.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(18,1,2,'Vel molestiae sapiente.','pariatur-explicabo-et-velit',NULL,'Voluptatem doloribus omnis sequi aut et repudiandae ad nemo. Laboriosam maiores cumque molestiae nam perferendis eos quas impedit. Dolor quam sint dignissimos molestiae qui rerum laudantium.','<p>Quia deserunt architecto velit assumenda non expedita. Sit soluta eveniet ducimus velit rerum officiis est. Qui rem minima optio qui quia non.</p><p>Vel expedita qui doloribus eos ullam eos pariatur molestiae. Sed est veniam facilis et excepturi et voluptatibus velit. Mollitia iste soluta magnam repudiandae velit ex vitae.</p><p>Harum inventore sint qui aliquid quia. Quo occaecati consectetur est rerum eos officia. Minima omnis sequi rerum quod consectetur.</p><p>Fugiat molestias voluptatem sed dolore quidem laudantium. Officiis doloribus rerum sit et modi veniam et. Ut et occaecati ad quo reiciendis et illo deserunt.</p><p>Quis quam id iste optio non quidem ut. Ullam perferendis omnis architecto nostrum doloribus est doloremque corrupti.</p><p>Nemo dolorem voluptatem repellendus quo dolor et. Aut voluptates voluptatem ipsum sit. Eius quo dolore illum totam. Fugiat amet quia pariatur voluptatem magni atque libero.</p><p>Qui est cum sunt voluptas. Cupiditate eos enim ullam quae qui sed aspernatur. Distinctio quia aut sit libero optio vero.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(19,2,2,'Accusamus ut facilis similique similique voluptatem.','occaecati-odit-ex-qui-similique-ut-voluptas',NULL,'Dolor ad commodi laborum similique eius. Sunt minus accusamus minima et. Eum quo laudantium est. Quia laborum tenetur corrupti quasi id expedita voluptates.','<p>Iusto consequatur repellendus rem ad. Ea officiis voluptas esse quisquam voluptate et. Ea nulla voluptatem aut magni. Ut nihil in autem voluptas occaecati rerum.</p><p>Et aliquid quae ratione temporibus fugit. Aperiam repudiandae voluptatem consectetur ullam consectetur neque. Odio ipsa nulla quae sint voluptatem numquam.</p><p>Eligendi quidem sint deleniti cum ipsam. Nemo consequuntur deserunt necessitatibus eveniet qui numquam dolores. Praesentium repudiandae quia qui autem ut. Aut distinctio quibusdam nihil quis adipisci facilis.</p><p>At debitis id magnam est cupiditate quo. Ratione est est nesciunt velit voluptatum. Nesciunt omnis harum ut.</p><p>Nulla excepturi ullam culpa dicta. Beatae nihil nostrum incidunt accusantium molestiae. Aspernatur beatae deleniti et itaque non facere.</p><p>Vero quia consectetur perferendis ducimus. Perferendis voluptatem inventore repellendus nostrum quia sequi voluptatum doloremque. Quas necessitatibus quia qui nesciunt quam corrupti qui. Atque officiis eligendi dolores reprehenderit aliquam.</p><p>Non ut tempora maxime velit qui. Enim illum itaque laborum eveniet explicabo maxime. Aliquam corrupti libero repellendus error voluptas pariatur.</p><p>Nihil et voluptas alias repudiandae. Omnis ullam dolores voluptatem doloremque ullam porro. Et qui sint debitis tenetur alias at. Quod officiis placeat eum aliquid nesciunt qui quod.</p><p>Veniam sequi maxime iusto repellat a. In alias in est perspiciatis explicabo impedit. Eaque repudiandae quos amet provident delectus.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(20,1,3,'Aliquam accusantium ut.','voluptates-sed-ducimus-repellendus-tempora-quia-facilis',NULL,'Necessitatibus nemo soluta debitis sit. Omnis dolor quasi quia aperiam. Sit molestiae beatae ut enim.','<p>Sint iure aliquid recusandae voluptas. Voluptatem voluptatibus eum et neque ex repellat. Et a suscipit officia dolores ut quia. Veniam et necessitatibus rem consectetur nesciunt sit.</p><p>Maxime dignissimos non facere quaerat. Qui accusamus impedit sequi aspernatur itaque sit. Eaque omnis cum alias a.</p><p>Eos aspernatur ex exercitationem maiores velit quidem. Et quos voluptas culpa rerum. Itaque dolores cum consectetur sequi iusto iure doloremque.</p><p>Et dolorem hic cum accusamus molestiae. Et ullam enim itaque inventore reiciendis. Quaerat suscipit rerum tempora corporis quam quas omnis assumenda. Velit velit veritatis consequatur repellat.</p><p>Occaecati vero et modi architecto totam et ipsa. Iusto non ea nisi sit ut commodi earum soluta.</p><p>Maxime nesciunt itaque ipsa similique possimus. Est alias quis quae dolore et. Sed aspernatur id esse veritatis. Enim eos tempore cumque hic eveniet.</p><p>Quos et velit quaerat et ex. Magnam quibusdam id totam id ut. Aut ex ea minus explicabo non. Sunt quibusdam odit aspernatur dicta tempore magni atque.</p><p>Quae consequatur pariatur non quas excepturi omnis dolores. Tenetur asperiores perferendis facilis et quaerat. Magnam dolores rerum autem molestias. Optio aut corporis similique porro mollitia.</p>',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57'),(22,1,6,'new posts web','new-posts-web','post-images/EmbdnsrIctzVyOPfKX5Ddzq3CI5C7IrbyufIiSgv.png','no body','<div>no body</div>',NULL,'2024-01-23 22:07:00','2024-01-24 00:04:19');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Virginia Boehm','glangworth','gsteuber@example.net',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1WY9kOnFBz','2024-01-23 21:50:56','2024-01-23 21:50:56'),(2,'Ms. Princess Boyle','colton.grant','koch.cortney@example.org',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Ex1MXWhJ6i','2024-01-23 21:50:56','2024-01-23 21:50:56'),(3,'Celia Fisher','pagac.nia','nader.hollie@example.org',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4335rxKg7e','2024-01-23 21:50:56','2024-01-23 21:50:56'),(4,'Dexter Botsford','roberts.gretchen','amitchell@example.org',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OkXSFS4M9h','2024-01-23 21:50:56','2024-01-23 21:50:56'),(5,'Lucinda Cummings','aniya61','bailee53@mail.org',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HylMPoNBDbrT1cOjqyAV9FJDzP1VfOIJxy77Io2nuwy65vPYKgzJxm1xnYQc','2024-01-23 21:50:56','2024-01-23 21:50:56'),(6,'Administrator','admin','admin@mail.com',1,'$2y$12$nGWwA.WHTry5CpAkAcSBBOJC2IaDPISXUXp.qKhS8I.HLJ2ElQekq',NULL,'2024-01-23 21:50:57','2024-01-23 21:50:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_latihan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-26  9:22:43
