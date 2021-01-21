-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: prod_unialumni_db
-- ------------------------------------------------------
-- Server version	10.3.24-MariaDB-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_pages`
--

DROP TABLE IF EXISTS `about_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_structures` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_pages`
--

LOCK TABLES `about_pages` WRITE;
/*!40000 ALTER TABLE `about_pages` DISABLE KEYS */;
INSERT INTO `about_pages` VALUES (1,'Judul Tentang Kami','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','about-pages/January2021/pDLXDXLNQ82czLU3inGt.png','[\"about-pages\\/January2021\\/bSIEiosSjhGgDhT6Fjdc.png\",\"about-pages\\/January2021\\/zKOA9LwVtpkyJeLUVWQg.png\",\"about-pages\\/January2021\\/TQQ3LGuwVDN0YABhBxy8.png\",\"about-pages\\/January2021\\/hgOaugSydRqak89LmraR.jpg\",\"about-pages\\/January2021\\/ZFDbyx5vxKggpB88Y22f.jpg\",\"about-pages\\/January2021\\/DpD3w6qUTZEhZ7sYLUqV.jpg\",\"about-pages\\/January2021\\/UCJK3MpZLBpz2Y2xY2DN.jpg\",\"about-pages\\/January2021\\/fy5Oi8U3jgEaEJT1Ij3n.jpg\",\"about-pages\\/January2021\\/gV8QZX040RuYqUXHSvER.jpg\"]','2021-01-22 02:53:00','2021-01-22 02:54:59');
/*!40000 ALTER TABLE `about_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnis`
--

DROP TABLE IF EXISTS `alumnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnis`
--

LOCK TABLES `alumnis` WRITE;
/*!40000 ALTER TABLE `alumnis` DISABLE KEYS */;
INSERT INTO `alumnis` VALUES (1,'Risqi','Romadhoni','nrp2049','risqir57@gmail.com','islam','Dagmarchester','2021-01-03','681.800.1190','(789) 825-7167','271.302.3383','94306 Javon Islands\r\nMuellerport, RI 63877','Singapore','South Elena','21307','2021-01-04 04:20:31','2021-01-04 08:05:06',NULL),(2,'Hailee','D\'Amore','nrp0235','angel00@kutch.com','islam','Paucekmouth','2021-01-03','415.312.8425','865-630-6699','(429) 836-0556','65388 Zion Flats\nKochport, OK 35952-5099','Cape Verde','South Fridaburgh','06300-4643','2021-01-04 04:20:31','2021-01-04 04:20:31',NULL),(3,'Magnus','Rutherford','nrp5850','devonte35@waelchi.com','islam','Stehrville','2021-01-03','+1-497-951-6815','773-254-6606','+1-986-753-6721','474 Yolanda Shoal Apt. 534\nJoshuahbury, IA 26091-9987','Armenia','East Hannah','46014','2021-01-04 04:20:31','2021-01-04 04:20:31',NULL),(4,'aji','chaidesar','123123123','chaidesar@gmail.com','islam','banda','1990-06-08','081260921187','081260921187','081260921187','adada','banten','serang','11212','2021-01-05 01:57:53','2021-01-13 03:32:10','2021-01-13 03:32:10'),(5,'wan','chaidesar','111111111','aji.babastudiogmail.com','islam','banda','1990-06-05','081917950295','081917950295','081917950295','aaaaa','banten','serang','11212','2021-01-05 02:16:29','2021-01-13 03:32:19','2021-01-13 03:32:19');
/*!40000 ALTER TABLE `alumnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_users`
--

DROP TABLE IF EXISTS `career_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `career_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_users`
--

LOCK TABLES `career_users` WRITE;
/*!40000 ALTER TABLE `career_users` DISABLE KEYS */;
INSERT INTO `career_users` VALUES (1,3,2,0,NULL,NULL,NULL),(2,3,3,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `career_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `end_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `careers_company_id_foreign` (`company_id`),
  CONSTRAINT `careers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,1,NULL,'Feest Plaza','feest-plaza','<h2>Details all Thing About This Event</h2>\r\n<p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','North Venaburgh','Svalbard & Jan Mayen Islands',1,'2021-01-22 04:20:00','2021-01-04 04:20:00','2021-01-04 09:17:44'),(2,1,NULL,'Enid Road','enid-road','<h2>Details all Thing About This Event</h2>\r\n<p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Adolphusville','Western Sahara',1,'2021-01-15 04:20:00','2021-01-04 04:20:00','2021-01-04 09:18:57'),(3,1,NULL,'Blanda Prairie','blanda-prairie','<h2>Details all Thing About This Event</h2>\r\n<p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Lake Elenora','United Kingdom',1,'2021-01-15 04:20:00','2021-01-04 04:20:00','2021-01-04 09:20:46'),(4,NULL,NULL,'Einar Manor','einar-manor','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','East Jamey','Jamaica',1,'2021-01-24 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(5,NULL,NULL,'Wilkinson Forges','wilkinson-forges','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','South Shawn','South Africa',1,'2021-01-18 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(6,NULL,NULL,'Waelchi Extensions','waelchi-extensions','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Tayaland','Croatia',1,'2021-01-14 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(7,NULL,NULL,'Samir Greens','samir-greens','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','South Carolina','Mexico',1,'2021-01-18 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(8,NULL,NULL,'Pascale Corner','pascale-corner','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Mariashire','Niue',1,'2021-01-22 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(9,NULL,NULL,'Bosco Drive','bosco-drive','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Lenoreborough','Ethiopia',1,'2021-01-15 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(10,NULL,NULL,'Stamm Harbors','stamm-harbors','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','East Shanonberg','Japan',1,'2021-01-22 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(11,NULL,NULL,'Tabitha Manor','tabitha-manor','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Erickaville','Maldives',1,'2021-01-17 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(12,NULL,NULL,'Grady Turnpike','grady-turnpike','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Lake Kayden','Malawi',1,'2021-01-18 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,NULL,1,'Category 2','category-2','2021-01-04 04:20:14','2021-01-04 04:20:14');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` varchar(4) NOT NULL,
  `provinsi_id` varchar(2) NOT NULL DEFAULT '',
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('1101','11','Kab. Simeulue'),('1102','11','Kab. Aceh Singkil'),('1103','11','Kab. Aceh Selatan'),('1104','11','Kab. Aceh Tenggara'),('1105','11','Kab. Aceh Timur'),('1106','11','Kab. Aceh Tengah'),('1107','11','Kab. Aceh Barat'),('1108','11','Kab. Aceh Besar'),('1109','11','Kab. Pidie'),('1110','11','Kab. Bireuen'),('1111','11','Kab. Aceh Utara'),('1112','11','Kab. Aceh Barat Daya'),('1113','11','Kab. Gayo Lues'),('1114','11','Kab. Aceh Tamiang'),('1115','11','Kab. Nagan Raya'),('1116','11','Kab. Aceh Jaya'),('1117','11','Kab. Bener Meriah'),('1118','11','Kab. Pidie Jaya'),('1171','11','Kota Banda Aceh'),('1172','11','Kota Sabang'),('1173','11','Kota Langsa'),('1174','11','Kota Lhokseumawe'),('1175','11','Kota Subulussalam'),('1201','12','Kab. Nias'),('1202','12','Kab. Mandailing Natal'),('1203','12','Kab. Tapanuli Selatan'),('1204','12','Kab. Tapanuli Tengah'),('1205','12','Kab. Tapanuli Utara'),('1206','12','Kab. Toba Samosir'),('1207','12','Kab. Labuhan Batu'),('1208','12','Kab. Asahan'),('1209','12','Kab. Simalungun'),('1210','12','Kab. Dairi'),('1211','12','Kab. Karo'),('1212','12','Kab. Deli Serdang'),('1213','12','Kab. Langkat'),('1214','12','Kab. Nias Selatan'),('1215','12','Kab. Humbang Hasundutan'),('1216','12','Kab. Pakpak Bharat'),('1217','12','Kab. Samosir'),('1218','12','Kab. Serdang Bedagai'),('1219','12','Kab. Batu Bara'),('1220','12','Kab. Padang Lawas Utara'),('1221','12','Kab. Padang Lawas'),('1222','12','Kab. Labuhan Batu Selatan'),('1223','12','Kab. Labuhan Batu Utara'),('1224','12','Kab. Nias Utara'),('1225','12','Kab. Nias Barat'),('1271','12','Kota Sibolga'),('1272','12','Kota Tanjung Balai'),('1273','12','Kota Pematang Siantar'),('1274','12','Kota Tebing Tinggi'),('1275','12','Kota Medan'),('1276','12','Kota Binjai'),('1277','12','Kota Padangsidimpuan'),('1278','12','Kota Gunungsitoli'),('1301','13','Kab. Kepulauan Mentawai'),('1302','13','Kab. Pesisir Selatan'),('1303','13','Kab. Solok'),('1304','13','Kab. Sijunjung'),('1305','13','Kab. Tanah Datar'),('1306','13','Kab. Padang Pariaman'),('1307','13','Kab. Agam'),('1308','13','Kab. Lima Puluh Kota'),('1309','13','Kab. Pasaman'),('1310','13','Kab. Solok Selatan'),('1311','13','Kab. Dharmasraya'),('1312','13','Kab. Pasaman Barat'),('1371','13','Kota Padang'),('1372','13','Kota Solok'),('1373','13','Kota Sawah Lunto'),('1374','13','Kota Padang Panjang'),('1375','13','Kota Bukittinggi'),('1376','13','Kota Payakumbuh'),('1377','13','Kota Pariaman'),('1401','14','Kab. Kuantan Singingi'),('1402','14','Kab. Indragiri Hulu'),('1403','14','Kab. Indragiri Hilir'),('1404','14','Kab. Pelalawan'),('1405','14','Kab. S I A K'),('1406','14','Kab. Kampar'),('1407','14','Kab. Rokan Hulu'),('1408','14','Kab. Bengkalis'),('1409','14','Kab. Rokan Hilir'),('1410','14','Kab. Kepulauan Meranti'),('1471','14','Kota Pekanbaru'),('1473','14','Kota D U M A I'),('1501','15','Kab. Kerinci'),('1502','15','Kab. Merangin'),('1503','15','Kab. Sarolangun'),('1504','15','Kab. Batang Hari'),('1505','15','Kab. Muaro Jambi'),('1506','15','Kab. Tanjung Jabung Timur'),('1507','15','Kab. Tanjung Jabung Barat'),('1508','15','Kab. Tebo'),('1509','15','Kab. Bungo'),('1571','15','Kota Jambi'),('1572','15','Kota Sungai Penuh'),('1601','16','Kab. Ogan Komering Ulu'),('1602','16','Kab. Ogan Komering Ilir'),('1603','16','Kab. Muara Enim'),('1604','16','Kab. Lahat'),('1605','16','Kab. Musi Rawas'),('1606','16','Kab. Musi Banyuasin'),('1607','16','Kab. Banyu Asin'),('1608','16','Kab. Ogan Komering Ulu Selatan'),('1609','16','Kab. Ogan Komering Ulu Timur'),('1610','16','Kab. Ogan Ilir'),('1611','16','Kab. Empat Lawang'),('1671','16','Kota Palembang'),('1672','16','Kota Prabumulih'),('1673','16','Kota Pagar Alam'),('1674','16','Kota Lubuklinggau'),('1701','17','Kab. Bengkulu Selatan'),('1702','17','Kab. Rejang Lebong'),('1703','17','Kab. Bengkulu Utara'),('1704','17','Kab. Kaur'),('1705','17','Kab. Seluma'),('1706','17','Kab. Mukomuko'),('1707','17','Kab. Lebong'),('1708','17','Kab. Kepahiang'),('1709','17','Kab. Bengkulu Tengah'),('1771','17','Kota Bengkulu'),('1801','18','Kab. Lampung Barat'),('1802','18','Kab. Tanggamus'),('1803','18','Kab. Lampung Selatan'),('1804','18','Kab. Lampung Timur'),('1805','18','Kab. Lampung Tengah'),('1806','18','Kab. Lampung Utara'),('1807','18','Kab. Way Kanan'),('1808','18','Kab. Tulangbawang'),('1809','18','Kab. Pesawaran'),('1810','18','Kab. Pringsewu'),('1811','18','Kab. Mesuji'),('1812','18','Kab. Tulang Bawang Barat'),('1813','18','Kab. Pesisir Barat'),('1871','18','Kota Bandar Lampung'),('1872','18','Kota Metro'),('1901','19','Kab. Bangka'),('1902','19','Kab. Belitung'),('1903','19','Kab. Bangka Barat'),('1904','19','Kab. Bangka Tengah'),('1905','19','Kab. Bangka Selatan'),('1906','19','Kab. Belitung Timur'),('1971','19','Kota Pangkal Pinang'),('2101','21','Kab. Karimun'),('2102','21','Kab. Bintan'),('2103','21','Kab. Natuna'),('2104','21','Kab. Lingga'),('2105','21','Kab. Kepulauan Anambas'),('2171','21','Kota B A T A M'),('2172','21','Kota Tanjung Pinang'),('3101','31','Kab. Kepulauan Seribu'),('3171','31','Kota Jakarta Selatan'),('3172','31','Kota Jakarta Timur'),('3173','31','Kota Jakarta Pusat'),('3174','31','Kota Jakarta Barat'),('3175','31','Kota Jakarta Utara'),('3201','32','Kab. Bogor'),('3202','32','Kab. Sukabumi'),('3203','32','Kab. Cianjur'),('3204','32','Kab. Bandung'),('3205','32','Kab. Garut'),('3206','32','Kab. Tasikmalaya'),('3207','32','Kab. Ciamis'),('3208','32','Kab. Kuningan'),('3209','32','Kab. Cirebon'),('3210','32','Kab. Majalengka'),('3211','32','Kab. Sumedang'),('3212','32','Kab. Indramayu'),('3213','32','Kab. Subang'),('3214','32','Kab. Purwakarta'),('3215','32','Kab. Karawang'),('3216','32','Kab. Bekasi'),('3217','32','Kab. Bandung Barat'),('3218','32','Kab. Pangandaran'),('3271','32','Kota Bogor'),('3272','32','Kota Sukabumi'),('3273','32','Kota Bandung'),('3274','32','Kota Cirebon'),('3275','32','Kota Bekasi'),('3276','32','Kota Depok'),('3277','32','Kota Cimahi'),('3278','32','Kota Tasikmalaya'),('3279','32','Kota Banjar'),('3301','33','Kab. Cilacap'),('3302','33','Kab. Banyumas'),('3303','33','Kab. Purbalingga'),('3304','33','Kab. Banjarnegara'),('3305','33','Kab. Kebumen'),('3306','33','Kab. Purworejo'),('3307','33','Kab. Wonosobo'),('3308','33','Kab. Magelang'),('3309','33','Kab. Boyolali'),('3310','33','Kab. Klaten'),('3311','33','Kab. Sukoharjo'),('3312','33','Kab. Wonogiri'),('3313','33','Kab. Karanganyar'),('3314','33','Kab. Sragen'),('3315','33','Kab. Grobogan'),('3316','33','Kab. Blora'),('3317','33','Kab. Rembang'),('3318','33','Kab. Pati'),('3319','33','Kab. Kudus'),('3320','33','Kab. Jepara'),('3321','33','Kab. Demak'),('3322','33','Kab. Semarang'),('3323','33','Kab. Temanggung'),('3324','33','Kab. Kendal'),('3325','33','Kab. Batang'),('3326','33','Kab. Pekalongan'),('3327','33','Kab. Pemalang'),('3328','33','Kab. Tegal'),('3329','33','Kab. Brebes'),('3371','33','Kota Magelang'),('3372','33','Kota Surakarta'),('3373','33','Kota Salatiga'),('3374','33','Kota Semarang'),('3375','33','Kota Pekalongan'),('3376','33','Kota Tegal'),('3401','34','Kab. Kulon Progo'),('3402','34','Kab. Bantul'),('3403','34','Kab. Gunung Kidul'),('3404','34','Kab. Sleman'),('3471','34','Kota Yogyakarta'),('3501','35','Kab. Pacitan'),('3502','35','Kab. Ponorogo'),('3503','35','Kab. Trenggalek'),('3504','35','Kab. Tulungagung'),('3505','35','Kab. Blitar'),('3506','35','Kab. Kediri'),('3507','35','Kab. Malang'),('3508','35','Kab. Lumajang'),('3509','35','Kab. Jember'),('3510','35','Kab. Banyuwangi'),('3511','35','Kab. Bondowoso'),('3512','35','Kab. Situbondo'),('3513','35','Kab. Probolinggo'),('3514','35','Kab. Pasuruan'),('3515','35','Kab. Sidoarjo'),('3516','35','Kab. Mojokerto'),('3517','35','Kab. Jombang'),('3518','35','Kab. Nganjuk'),('3519','35','Kab. Madiun'),('3520','35','Kab. Magetan'),('3521','35','Kab. Ngawi'),('3522','35','Kab. Bojonegoro'),('3523','35','Kab. Tuban'),('3524','35','Kab. Lamongan'),('3525','35','Kab. Gresik'),('3526','35','Kab. Bangkalan'),('3527','35','Kab. Sampang'),('3528','35','Kab. Pamekasan'),('3529','35','Kab. Sumenep'),('3571','35','Kota Kediri'),('3572','35','Kota Blitar'),('3573','35','Kota Malang'),('3574','35','Kota Probolinggo'),('3575','35','Kota Pasuruan'),('3576','35','Kota Mojokerto'),('3577','35','Kota Madiun'),('3578','35','Kota Surabaya'),('3579','35','Kota Batu'),('3601','36','Kab. Pandeglang'),('3602','36','Kab. Lebak'),('3603','36','Kab. Tangerang'),('3604','36','Kab. Serang'),('3671','36','Kota Tangerang'),('3672','36','Kota Cilegon'),('3673','36','Kota Serang'),('3674','36','Kota Tangerang Selatan'),('5101','51','Kab. Jembrana'),('5102','51','Kab. Tabanan'),('5103','51','Kab. Badung'),('5104','51','Kab. Gianyar'),('5105','51','Kab. Klungkung'),('5106','51','Kab. Bangli'),('5107','51','Kab. Karang Asem'),('5108','51','Kab. Buleleng'),('5171','51','Kota Denpasar'),('5201','52','Kab. Lombok Barat'),('5202','52','Kab. Lombok Tengah'),('5203','52','Kab. Lombok Timur'),('5204','52','Kab. Sumbawa'),('5205','52','Kab. Dompu'),('5206','52','Kab. Bima'),('5207','52','Kab. Sumbawa Barat'),('5208','52','Kab. Lombok Utara'),('5271','52','Kota Mataram'),('5272','52','Kota Bima'),('5301','53','Kab. Sumba Barat'),('5302','53','Kab. Sumba Timur'),('5303','53','Kab. Kupang'),('5304','53','Kab. Timor Tengah Selatan'),('5305','53','Kab. Timor Tengah Utara'),('5306','53','Kab. Belu'),('5307','53','Kab. Alor'),('5308','53','Kab. Lembata'),('5309','53','Kab. Flores Timur'),('5310','53','Kab. Sikka'),('5311','53','Kab. Ende'),('5312','53','Kab. Ngada'),('5313','53','Kab. Manggarai'),('5314','53','Kab. Rote Ndao'),('5315','53','Kab. Manggarai Barat'),('5316','53','Kab. Sumba Tengah'),('5317','53','Kab. Sumba Barat Daya'),('5318','53','Kab. Nagekeo'),('5319','53','Kab. Manggarai Timur'),('5320','53','Kab. Sabu Raijua'),('5371','53','Kota Kupang'),('6101','61','Kab. Sambas'),('6102','61','Kab. Bengkayang'),('6103','61','Kab. Landak'),('6104','61','Kab. Pontianak'),('6105','61','Kab. Sanggau'),('6106','61','Kab. Ketapang'),('6107','61','Kab. Sintang'),('6108','61','Kab. Kapuas Hulu'),('6109','61','Kab. Sekadau'),('6110','61','Kab. Melawi'),('6111','61','Kab. Kayong Utara'),('6112','61','Kab. Kubu Raya'),('6171','61','Kota Pontianak'),('6172','61','Kota Singkawang'),('6201','62','Kab. Kotawaringin Barat'),('6202','62','Kab. Kotawaringin Timur'),('6203','62','Kab. Kapuas'),('6204','62','Kab. Barito Selatan'),('6205','62','Kab. Barito Utara'),('6206','62','Kab. Sukamara'),('6207','62','Kab. Lamandau'),('6208','62','Kab. Seruyan'),('6209','62','Kab. Katingan'),('6210','62','Kab. Pulang Pisau'),('6211','62','Kab. Gunung Mas'),('6212','62','Kab. Barito Timur'),('6213','62','Kab. Murung Raya'),('6271','62','Kota Palangka Raya'),('6301','63','Kab. Tanah Laut'),('6302','63','Kab. Kota Baru'),('6303','63','Kab. Banjar'),('6304','63','Kab. Barito Kuala'),('6305','63','Kab. Tapin'),('6306','63','Kab. Hulu Sungai Selatan'),('6307','63','Kab. Hulu Sungai Tengah'),('6308','63','Kab. Hulu Sungai Utara'),('6309','63','Kab. Tabalong'),('6310','63','Kab. Tanah Bumbu'),('6311','63','Kab. Balangan'),('6371','63','Kota Banjarmasin'),('6372','63','Kota Banjar Baru'),('6401','64','Kab. Paser'),('6402','64','Kab. Kutai Barat'),('6403','64','Kab. Kutai Kartanegara'),('6404','64','Kab. Kutai Timur'),('6405','64','Kab. Berau'),('6409','64','Kab. Penajam Paser Utara'),('6471','64','Kota Balikpapan'),('6472','64','Kota Samarinda'),('6474','64','Kota Bontang'),('6501','65','Kab. Malinau'),('6502','65','Kab. Bulungan'),('6503','65','Kab. Tana Tidung'),('6504','65','Kab. Nunukan'),('6571','65','Kota Tarakan'),('7101','71','Kab. Bolaang Mongondow'),('7102','71','Kab. Minahasa'),('7103','71','Kab. Kepulauan Sangihe'),('7104','71','Kab. Kepulauan Talaud'),('7105','71','Kab. Minahasa Selatan'),('7106','71','Kab. Minahasa Utara'),('7107','71','Kab. Bolaang Mongondow Utara'),('7108','71','Kab. Siau Tagulandang Biaro'),('7109','71','Kab. Minahasa Tenggara'),('7110','71','Kab. Bolaang Mongondow Selatan'),('7111','71','Kab. Bolaang Mongondow Timur'),('7171','71','Kota Manado'),('7172','71','Kota Bitung'),('7173','71','Kota Tomohon'),('7174','71','Kota Kotamobagu'),('7201','72','Kab. Banggai Kepulauan'),('7202','72','Kab. Banggai'),('7203','72','Kab. Morowali'),('7204','72','Kab. Poso'),('7205','72','Kab. Donggala'),('7206','72','Kab. Toli-toli'),('7207','72','Kab. Buol'),('7208','72','Kab. Parigi Moutong'),('7209','72','Kab. Tojo Una-una'),('7210','72','Kab. Sigi'),('7271','72','Kota Palu'),('7301','73','Kab. Kepulauan Selayar'),('7302','73','Kab. Bulukumba'),('7303','73','Kab. Bantaeng'),('7304','73','Kab. Jeneponto'),('7305','73','Kab. Takalar'),('7306','73','Kab. Gowa'),('7307','73','Kab. Sinjai'),('7308','73','Kab. Maros'),('7309','73','Kab. Pangkajene Dan Kepulauan'),('7310','73','Kab. Barru'),('7311','73','Kab. Bone'),('7312','73','Kab. Soppeng'),('7313','73','Kab. Wajo'),('7314','73','Kab. Sidenreng Rappang'),('7315','73','Kab. Pinrang'),('7316','73','Kab. Enrekang'),('7317','73','Kab. Luwu'),('7318','73','Kab. Tana Toraja'),('7322','73','Kab. Luwu Utara'),('7325','73','Kab. Luwu Timur'),('7326','73','Kab. Toraja Utara'),('7371','73','Kota Makassar'),('7372','73','Kota Parepare'),('7373','73','Kota Palopo'),('7401','74','Kab. Buton'),('7402','74','Kab. Muna'),('7403','74','Kab. Konawe'),('7404','74','Kab. Kolaka'),('7405','74','Kab. Konawe Selatan'),('7406','74','Kab. Bombana'),('7407','74','Kab. Wakatobi'),('7408','74','Kab. Kolaka Utara'),('7409','74','Kab. Buton Utara'),('7410','74','Kab. Konawe Utara'),('7471','74','Kota Kendari'),('7472','74','Kota Baubau'),('7501','75','Kab. Boalemo'),('7502','75','Kab. Gorontalo'),('7503','75','Kab. Pohuwato'),('7504','75','Kab. Bone Bolango'),('7505','75','Kab. Gorontalo Utara'),('7571','75','Kota Gorontalo'),('7601','76','Kab. Majene'),('7602','76','Kab. Polewali Mandar'),('7603','76','Kab. Mamasa'),('7604','76','Kab. Mamuju'),('7605','76','Kab. Mamuju Utara'),('8101','81','Kab. Maluku Tenggara Barat'),('8102','81','Kab. Maluku Tenggara'),('8103','81','Kab. Maluku Tengah'),('8104','81','Kab. Buru'),('8105','81','Kab. Kepulauan Aru'),('8106','81','Kab. Seram Bagian Barat'),('8107','81','Kab. Seram Bagian Timur'),('8108','81','Kab. Maluku Barat Daya'),('8109','81','Kab. Buru Selatan'),('8171','81','Kota Ambon'),('8172','81','Kota Tual'),('8201','82','Kab. Halmahera Barat'),('8202','82','Kab. Halmahera Tengah'),('8203','82','Kab. Kepulauan Sula'),('8204','82','Kab. Halmahera Selatan'),('8205','82','Kab. Halmahera Utara'),('8206','82','Kab. Halmahera Timur'),('8207','82','Kab. Pulau Morotai'),('8271','82','Kota Ternate'),('8272','82','Kota Tidore Kepulauan'),('9101','91','Kab. Fakfak'),('9102','91','Kab. Kaimana'),('9103','91','Kab. Teluk Wondama'),('9104','91','Kab. Teluk Bintuni'),('9105','91','Kab. Manokwari'),('9106','91','Kab. Sorong Selatan'),('9107','91','Kab. Sorong'),('9108','91','Kab. Raja Ampat'),('9109','91','Kab. Tambrauw'),('9110','91','Kab. Maybrat'),('9171','91','Kota Sorong'),('9401','94','Kab. Merauke'),('9402','94','Kab. Jayawijaya'),('9403','94','Kab. Jayapura'),('9404','94','Kab. Nabire'),('9408','94','Kab. Kepulauan Yapen'),('9409','94','Kab. Biak Numfor'),('9410','94','Kab. Paniai'),('9411','94','Kab. Puncak Jaya'),('9412','94','Kab. Mimika'),('9413','94','Kab. Boven Digoel'),('9414','94','Kab. Mappi'),('9415','94','Kab. Asmat'),('9416','94','Kab. Yahukimo'),('9417','94','Kab. Pegunungan Bintang'),('9418','94','Kab. Tolikara'),('9419','94','Kab. Sarmi'),('9420','94','Kab. Keerom'),('9426','94','Kab. Waropen'),('9427','94','Kab. Supiori'),('9428','94','Kab. Mamberamo Raya'),('9429','94','Kab. Nduga'),('9430','94','Kab. Lanny Jaya'),('9431','94','Kab. Mamberamo Tengah'),('9432','94','Kab. Yalimo'),('9433','94','Kab. Puncak'),('9434','94','Kab. Dogiyai'),('9435','94','Kab. Intan Jaya'),('9436','94','Kab. Deiyai'),('9471','94','Kota Jayapura');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmaps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(3,1,'email','text','Email',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(4,1,'password','password','Password',1,0,0,1,1,0,'{\"validate\":{\"rule\":\"required\"}}',6),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',7),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',35),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',36),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',2),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',17),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',11),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,1,'firstname','text','Firstname',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',3),(57,1,'lastname','text','Lastname',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(58,1,'nrp','text','Nrp',0,1,1,1,1,1,'{}',8),(59,1,'agama','text','Agama',0,0,1,1,1,1,'{}',9),(60,1,'birth_place','text','Birth Place',0,0,1,1,1,1,'{}',10),(61,1,'birth_date','date','Birth Date',0,0,1,1,1,1,'{}',12),(62,1,'phone_home','text','Phone Home',0,0,1,1,1,1,'{}',13),(63,1,'phone_number','text','Phone Number',0,0,1,1,1,1,'{}',15),(64,1,'whatsapp','text','Whatsapp',0,0,1,1,1,1,'{}',16),(65,1,'address','text_area','Address',0,0,1,1,1,1,'{}',18),(66,1,'provincy','text','Provincy',0,1,1,1,1,1,'{}',19),(67,1,'city','text','City',0,1,1,1,1,1,'{}',20),(68,1,'zip_code','text','Zip Code',0,0,1,1,1,1,'{}',23),(69,1,'alumni_id','text','Alumni Id',0,0,1,1,1,1,'{}',24),(70,1,'email_verified_at','timestamp','Email Verified At',0,0,0,1,1,1,'{}',25),(71,1,'two_factor_secret','text','Two Factor Secret',0,0,0,0,1,1,'{}',26),(72,1,'two_factor_recovery_codes','text','Two Factor Recovery Codes',0,0,0,0,1,1,'{}',27),(73,1,'current_team_id','text','Current Team Id',0,0,0,0,1,1,'{}',31),(74,1,'profile_photo_path','image','Profile Photo Path',0,0,1,0,1,1,'{}',32),(75,1,'deleted_at','timestamp','Deleted At',0,0,0,0,1,1,'{}',37),(76,1,'user_belongsto_city_relationship','relationship','Birth Place',0,0,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"birth_place\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',22),(77,1,'user_belongsto_city_relationship_1','relationship','City',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',28),(78,1,'user_belongsto_provience_relationship','relationship','Provience',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Provience\",\"table\":\"proviences\",\"type\":\"belongsTo\",\"column\":\"provincy\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',29),(79,1,'user_belongstomany_role_relationship','relationship','roles',0,0,0,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',38),(80,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(81,8,'firstname','text','Firstname',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',2),(82,8,'lastname','text','Lastname',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',3),(83,8,'nrp','text','Nrp',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(84,8,'email','text','Email',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(85,8,'agama','text','Agama',0,0,1,1,1,1,'{}',6),(86,8,'birth_place','text','Birth Place',0,0,1,1,1,1,'{}',7),(87,8,'birth_date','date','Birth Date',0,0,1,1,1,1,'{}',8),(88,8,'phone_home','text','Phone Home',0,0,1,1,1,1,'{}',9),(89,8,'phone_number','text','Phone Number',0,0,1,1,1,1,'{}',10),(90,8,'whatsapp','text','Whatsapp',0,0,1,1,1,1,'{}',11),(91,8,'address','text_area','Address',0,0,1,1,1,1,'{}',12),(92,8,'provincy','text','Provincy',0,0,1,1,1,1,'{}',13),(93,8,'city','text','City',0,0,1,1,1,1,'{}',14),(94,8,'zip_code','text','Zip Code',0,0,1,1,1,1,'{}',15),(95,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',16),(96,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),(97,8,'deleted_at','timestamp','Deleted At',0,0,1,0,0,1,'{}',18),(98,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(99,9,'author_id','hidden','Author Id',0,1,1,1,1,1,'{\"default\":1}',4),(100,9,'company_id','text','Company Id',0,1,1,1,1,1,'{}',3),(101,9,'title','text','Title',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',6),(102,9,'slug','hidden','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',7),(103,9,'body','rich_text_box','Body',1,0,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',8),(104,9,'city','text','City',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',9),(105,9,'country','text','Country',0,0,1,1,1,1,'{}',10),(106,9,'published','text','Published',1,1,1,1,1,1,'{}',11),(107,9,'end_at','timestamp','End At',1,1,1,1,1,1,'{}',12),(108,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',13),(109,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(110,9,'career_belongsto_company_relationship','relationship','Company',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Company\",\"table\":\"companies\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(111,9,'career_belongsto_user_relationship','relationship','Author',0,1,1,0,0,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(112,10,'id','text','Id',1,0,0,1,1,0,'{}',1),(113,10,'provinsi_id','text','Provinsi Id',1,1,1,1,1,1,'{}',3),(114,10,'nama','text','Nama',1,1,1,1,1,1,'{}',4),(115,10,'city_belongsto_provience_relationship','relationship','provience',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Provience\",\"table\":\"proviences\",\"type\":\"belongsTo\",\"column\":\"provinsi_id\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(116,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(117,11,'author_id','hidden','Author Id',0,1,1,1,1,1,'{\"default\":1}',2),(118,11,'logo','image','Logo',0,1,1,1,1,1,'{\"validate\":{\"add\":{\"rule\":\"required\"}}}',3),(119,11,'name','text','Name',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(120,11,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',5),(121,11,'email','text','Email',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',6),(122,11,'phone','text','Phone',1,1,1,1,1,1,'{}',7),(123,11,'address','text_area','Address',1,0,1,1,1,1,'{}',8),(124,11,'gmaps','text','Gmaps Link',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',9),(125,11,'body','rich_text_box','Body',0,0,1,1,1,1,'{}',10),(126,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(127,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(128,11,'company_belongsto_user_relationship','relationship','Author',0,1,0,0,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(129,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(130,12,'author_id','hidden','Author Id',0,1,1,1,1,1,'{}',3),(131,12,'image','image','Image',1,1,1,1,1,1,'{}',4),(132,12,'title','text','Title',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(133,12,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',6),(134,12,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'{}',7),(135,12,'body','rich_text_box','Body',1,0,1,1,1,1,'{}',8),(136,12,'location','text','Location',0,1,1,1,1,1,'{}',9),(137,12,'published','radio_btn','Published',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',10),(138,12,'start_at','timestamp','Start At',1,1,1,1,1,1,'{}',11),(139,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',12),(140,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(141,12,'event_belongsto_user_relationship','relationship','Author',0,1,1,0,0,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(142,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(143,13,'author_id','hidden','Author Id',0,1,1,1,1,1,'{}',3),(144,13,'name','text','Name',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(145,13,'type','radio_btn','Type',1,1,1,1,1,1,'{\"default\":\"image\",\"options\":{\"image\":\"Image\",\"video\":\"Video\"}}',6),(146,13,'image','multiple_images','Image',0,0,1,1,1,1,'{}',8),(147,13,'video_url','text','Video Url',0,0,1,1,1,1,'{}',9),(148,13,'published','radio_btn','Published',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',10),(149,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(150,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(151,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(152,14,'nama','text','Nama',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',2),(153,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(154,15,'image','image','Image',0,1,1,1,1,1,'{}',2),(155,15,'title','text','Title',0,1,1,1,1,1,'{}',3),(156,15,'subtitle','text','Subtitle',0,1,1,1,1,1,'{}',4),(157,15,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(158,15,'link','text','Link',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',6),(159,15,'published','radio_btn','Published',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',7),(160,15,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(161,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(162,1,'user_belongsto_alumni_relationship','relationship','alumnis',0,0,0,1,1,1,'{\"model\":\"App\\\\Models\\\\Alumni\",\"table\":\"alumnis\",\"type\":\"belongsTo\",\"column\":\"alumni_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',30),(163,13,'gallery_belongsto_user_relationship','relationship','Author',0,1,1,0,0,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(165,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(166,17,'image','image','Image',1,1,1,1,1,1,'{}',2),(167,17,'title','text','Title',1,1,1,1,1,1,'{}',3),(168,17,'slug','hidden','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',4),(169,17,'excerpt','text_area','Excerpt',1,1,1,1,1,1,'{}',5),(170,17,'body','rich_text_box','Body',0,1,1,1,1,1,'{}',6),(171,17,'url','text','Url',0,0,1,1,1,1,'{}',7),(172,17,'publish','radio_btn','Publish',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',8),(173,17,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(174,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(175,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(176,19,'name','text','Name',1,1,1,1,1,1,'{}',2),(177,19,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(178,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(179,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(180,21,'university_id','text','University Id',1,1,1,1,1,1,'{}',2),(181,21,'name','text','Name',1,1,1,1,1,1,'{}',5),(182,21,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(183,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(184,22,'id','text','Id',1,0,0,0,0,0,'{}',1),(185,22,'faculty_id','text','Faculty Id',1,1,1,1,1,1,'{}',2),(186,22,'name','text','Name',1,1,1,1,1,1,'{}',4),(187,22,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(188,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(189,21,'faculty_belongsto_university_relationship','relationship','University',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\University\",\"table\":\"universities\",\"type\":\"belongsTo\",\"column\":\"university_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(190,22,'prody_belongsto_faculty_relationship','relationship','faculties',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Faculty\",\"table\":\"faculties\",\"type\":\"belongsTo\",\"column\":\"faculty_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(191,21,'slug','hidden','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',6),(192,19,'slug','hidden','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',3),(193,22,'slug','hidden','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',5),(194,21,'image','image','Image',1,1,1,1,1,1,'{}',4),(195,21,'body','rich_text_box','Body',1,0,1,1,1,1,'{}',7),(196,1,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"waiting\",\"options\":{\"enable\":\"enable\",\"disable\":\"disable\",\"waiting\":\"waiting\"}}',21),(197,1,'user_belongstomany_career_relationship','relationship','Careers',0,0,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Career\",\"table\":\"careers\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"career_users\",\"pivot\":\"1\",\"taggable\":\"0\"}',34),(198,1,'user_belongstomany_event_relationship','relationship','Events',0,0,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Event\",\"table\":\"events\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"event_users\",\"pivot\":\"1\",\"taggable\":\"0\"}',33),(199,24,'id','text','Id',1,0,0,0,0,0,'{}',1),(200,24,'user_id','text','User Id',1,1,1,1,1,1,'{}',2),(201,24,'career_id','text','Career Id',1,1,1,1,1,1,'{}',5),(202,24,'status','radio_btn','Status',1,1,1,1,1,1,'{\"default\":0,\"options\":{\"0\":\"Tolak\",\"1\":\"Terima\"}}',6),(203,24,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(204,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(205,24,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',9),(206,24,'career_user_belongsto_career_relationship','relationship','Careers',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Career\",\"table\":\"careers\",\"type\":\"belongsTo\",\"column\":\"career_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(207,24,'career_user_belongsto_user_relationship','relationship','Users',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(208,25,'id','text','Id',1,0,0,0,0,0,'{}',1),(209,25,'user_id','text','User Id',1,1,1,1,1,1,'{}',2),(210,25,'event_id','text','Event Id',1,1,1,1,1,1,'{}',4),(211,25,'status','radio_btn','Status',1,1,1,1,1,1,'{\"default\":0,\"options\":{\"0\":\"Tolak\",\"1\":\"Terima\"}}',6),(212,25,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(213,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(214,25,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',9),(215,25,'event_user_belongsto_event_relationship','relationship','events',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Event\",\"table\":\"events\",\"type\":\"belongsTo\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(216,25,'event_user_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(217,26,'id','text','Id',1,0,0,0,0,0,'{}',1),(218,26,'user_id','text','User Id',1,1,1,1,1,1,'{}',2),(219,26,'company_name','text','Company Name',0,1,1,1,1,1,'{}',4),(220,26,'jabatan','text','Jabatan',1,1,1,1,1,1,'{}',5),(221,26,'is_cureent','radio_btn','Is Cureent',1,1,1,1,1,1,'{\"deafault\":0,\"options\":{\"0\":\"Tidak\",\"1\":\"Ya\"}}',6),(222,26,'start_at','date','Start At',1,1,1,1,1,1,'{}',7),(223,26,'end_at','date','End At',0,1,1,1,1,1,'{}',8),(224,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(225,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(226,26,'work_experience_belongsto_user_relationship','relationship','User',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(227,27,'id','text','Id',1,0,0,0,0,0,'{}',1),(228,27,'user_id','text','User Id',1,1,1,1,1,1,'{}',2),(229,27,'image','image','Image',0,0,1,1,1,1,'{}',4),(230,27,'title','text','Title',1,1,1,1,1,1,'{}',5),(231,27,'note','text_area','Note',0,0,1,1,1,1,'{}',6),(232,27,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(233,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(234,27,'life_certificate_belongsto_user_relationship','relationship','User',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(235,28,'id','text','Id',1,0,0,0,0,0,'{}',1),(236,28,'title','text','Title',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',2),(237,28,'body','rich_text_box','Body',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',3),(238,28,'image','image','Image',1,1,1,1,1,1,'{\"validation\":{\"add\":\"required\"}}',4),(239,28,'image_structures','multiple_images','Image Structures',1,0,1,1,1,1,'{}',5),(240,28,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(241,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(242,30,'id','text','Id',1,0,0,0,0,0,'{}',1),(243,30,'user_id','text','User Id',1,1,1,1,1,1,'{}',3),(244,30,'university_id','text','University Id',0,1,1,1,1,1,'{}',4),(245,30,'faculty_id','text','Faculty Id',0,1,1,1,1,1,'{}',7),(246,30,'prody_id','text','Prody Id',0,1,1,1,1,1,'{}',9),(247,30,'image','hidden','Image',0,0,0,0,0,1,'{}',10),(248,30,'title','text','Title',0,1,1,1,1,1,'{}',11),(249,30,'pendidikan','radio_btn','Pendidikan',0,1,1,1,1,1,'{\"default\":\"kuliah\",\"options\":{\"kuliah\":\"kuliah\",\"sma\":\"sma\",\"smp\":\"smp\",\"sd\":\"sd\"}}',12),(250,30,'note','text_area','Note',0,0,1,1,1,1,'{}',13),(251,30,'is_cureent','radio_btn','Is Cureent',1,0,1,1,1,1,'{\"default\":0,\"options\":{\"0\":\"Tidak\",\"1\":\"Ya\"}}',14),(252,30,'start_at','date','Start At',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',15),(253,30,'end_at','text','End At',0,0,1,1,1,1,'{}',16),(254,30,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',17),(255,30,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',18),(256,30,'graduate_belongsto_university_relationship','relationship','University',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\University\",\"table\":\"universities\",\"type\":\"belongsTo\",\"column\":\"university_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_pages\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(257,30,'graduate_belongsto_user_relationship','relationship','User',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"about_pages\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(258,30,'graduate_belongsto_faculty_relationship','relationship','Faculty',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Faculty\",\"table\":\"about_pages\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_pages\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(259,30,'graduate_belongsto_prody_relationship','relationship','Prody',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Prody\",\"table\":\"about_pages\",\"type\":\"hasOne\",\"column\":\"prody_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"about_pages\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),(260,13,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',5),(261,13,'body','rich_text_box','Body',0,0,1,1,1,1,'{}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','App\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','App\\Http\\Controllers\\Backend\\UserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 04:20:13','2021-01-08 03:41:15'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-01-04 04:20:13','2021-01-04 04:20:13'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-01-04 04:20:13','2021-01-04 04:20:13'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(8,'alumnis','alumnis','Alumni','Alumnis','voyager-people','App\\Models\\Alumni',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:04:29','2021-01-04 02:54:45'),(9,'careers','careers','Career','Careers','voyager-plug','App\\Models\\Career',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:09:01','2021-01-04 02:55:10'),(10,'cities','cities','City','Cities','voyager-trees','App\\Models\\City',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:22:46','2021-01-04 09:23:26'),(11,'companies','companies','Company','Companies','voyager-crop','App\\Models\\Company',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:27:36','2021-01-04 10:01:27'),(12,'events','events','Event','Events','voyager-bomb','App\\Models\\Event',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:39:47','2021-01-22 01:55:29'),(13,'galleries','galleries','Gallery','Galleries','voyager-hotdog','App\\Models\\Gallery',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:44:27','2021-01-22 02:35:10'),(14,'proviences','proviences','Provience','Proviences','voyager-archive','App\\Models\\Provience',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null}','2021-01-04 09:45:30','2021-01-04 09:45:30'),(15,'sliders','sliders','Slider','Sliders','voyager-credit-cards','App\\Models\\Slider',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:47:34','2021-01-22 01:57:57'),(17,'services','services','Service','Services','voyager-activity','App\\Models\\Service',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-07 09:13:42','2021-01-22 01:57:37'),(19,'universities','universities','University','Universities','voyager-bulb','App\\Models\\University',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-07 16:47:11','2021-01-07 17:14:14'),(21,'faculties','faculties','Faculty','Faculties','voyager-bulb','App\\Models\\Faculty',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-07 16:47:51','2021-01-07 17:28:20'),(22,'prodies','prodies','Prody','Prodies','voyager-bulb','App\\Models\\Prody',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-07 16:48:31','2021-01-07 17:17:30'),(24,'career_users','career-users','Career User','Pelamar Loker','voyager-paper-plane','App\\Models\\CareerUser',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-08 03:50:38','2021-01-22 01:54:01'),(25,'event_users','event-users','Event User','Peserta Event','voyager-video','App\\Models\\EventUser',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-08 03:53:43','2021-01-22 01:55:11'),(26,'work_experiences','work-experiences','Work Experience','Work Experiences','voyager-milestone','App\\Models\\WorkExperience',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-17 22:30:59','2021-01-22 01:58:33'),(27,'life_certificates','life-certificates','Life Certificate','Life Certificates','voyager-magnet','App\\Models\\LifeCertificate',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-17 22:34:12','2021-01-17 22:35:17'),(28,'about_pages','about-pages','About Page','About Pages','voyager-leaf','App\\Models\\AboutPage',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-22 01:42:10','2021-01-22 02:54:21'),(30,'graduates','graduates','Graduate','Graduates','voyager-bolt','App\\Models\\Graduates',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-22 01:47:32','2021-01-22 01:51:01');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_users`
--

DROP TABLE IF EXISTS `event_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_users`
--

LOCK TABLES `event_users` WRITE;
/*!40000 ALTER TABLE `event_users` DISABLE KEYS */;
INSERT INTO `event_users` VALUES (1,3,6,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `event_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,NULL,'4c5811d9887031f4fec781f1d282926a.png','Kelsie Hintz','kelsie-hintz','However, everything is queer to-day.\' Just then she heard a little irritated at the top of its mouth and began to feel which way you can;--but I must have been changed for Mabel! I\'ll try if I can.','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','https://g.page/hungrypedia?share',1,'2021-01-07 04:20:22','2021-01-04 04:20:28','2021-01-04 04:20:28'),(2,NULL,'04ff30eb7c48bb47e29d07a1e08c707b.png','Verla Howe','verla-howe','Dormouse fell asleep instantly, and neither of the thing yourself, some winter day, I will tell you just now what the next thing was to twist it up into the sky. Twinkle, twinkle--\"\' Here the.','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','https://g.page/hungrypedia?share',1,'2021-01-08 04:20:23','2021-01-04 04:20:28','2021-01-04 04:20:28'),(3,NULL,'bfdb465735422c2e1a7efee3f521e20a.png','River Bednar','river-bednar','I got up in spite of all this time, and was just beginning to see anything; then she heard it muttering to himself as he spoke. \'A cat may look at me like that!\' By this time it vanished quite.','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','https://g.page/hungrypedia?share',1,'2021-01-09 04:20:24','2021-01-04 04:20:28','2021-01-04 04:20:28'),(4,NULL,'8704dc0cf8d6a5598d65f94ca218a039.png','German Lowe','german-lowe','NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, as she spoke. (The unfortunate little Bill had left off sneezing by this time?\' she said this, she came upon a neat little.','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','https://g.page/hungrypedia?share',1,'2021-01-08 04:20:26','2021-01-04 04:20:28','2021-01-04 04:20:28'),(5,NULL,'e34e32a36e436cad694e2394fabf5adc.png','Terry Waters','terry-waters','Mouse, in a moment. \'Let\'s go on with the name of nearly everything there. \'That\'s the reason of that?\' \'In my youth,\' Father William replied to his ear. Alice considered a little before she got up.','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','https://g.page/hungrypedia?share',1,'2021-01-07 04:20:27','2021-01-04 04:20:28','2021-01-04 04:20:28'),(6,NULL,'472248819be2df47ef24f67400326674.png','Abner Wiza III','abner-wiza-iii','Alice was very likely to eat or drink something or other; but the Hatter were having tea at it: a Dormouse was sitting on the breeze that followed them, the melancholy words:-- \'Soo--oop of the day.','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','https://g.page/hungrypedia?share',1,'2021-01-09 04:20:28','2021-01-04 04:20:28','2021-01-04 04:20:28');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `university_id` bigint(20) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,1,'faculties/January2021/bT04Q4NXPggemeNRxJyZ.png','Fakultas Teknik','fakultas-teknik','<p>Lorem ipsum condimentum ligula. Fusce fringilla magna non sapien dictum, eget faucibus dui maximus. Donec fringilla vel mi consequat tempor.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis diam erat. Duvelit lecspoe a blandit sit amet, tempor at lorem. Donec ultricies, lorem sed ultrices interdum, leo luctfiiius sem, vel vulputate diam ipsum sed lorem. Donec tempor arcu nisl, et molestie massa hhisque ut. Nunc at rutrum leo. Mauris metus mauris, tridd.</p>\r\n<p>Mauris tempus erat laoreet turpis lobortis, eu tincidunt erat fermentum. Aliquam nonh edunt urna. Integer tincidunt nec nisl vitae ullamcorper. Proin sed ultrices erat. Praesent vdd warius ultricemassa at faucibus. Aenean dignissim, orci sed faucibus pharetra, dui mi dir ssim tortor, sit amet ntum mi ligula sit amet augue. Pellentesqs placerat.</p>','2021-01-07 17:33:46','2021-01-07 17:33:46'),(2,1,'faculties/January2021/CGZf9XOrw1NR1utFQTPD.jpg','Fakultas Ilmu Komputer','fakultas-ilmu-komputer','<p>FIK UPN Veteran Jakarta</p>\r\n<p>Lorem ipsum condimentum ligula. Fusce fringilla magna non sapien dictum, eget faucibus dui maximus. Donec fringilla vel mi consequat tempor.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis diam erat. Duvelit lecspoe a blandit sit amet, tempor at lorem. Donec ultricies, lorem sed ultrices interdum, leo luctfiiius sem, vel vulputate diam ipsum sed lorem. Donec tempor arcu nisl, et molestie massa hhisque ut. Nunc at rutrum leo. Mauris metus mauris, tridd.</p>\r\n<p>Mauris tempus erat laoreet turpis lobortis, eu tincidunt erat fermentum. Aliquam nonh edunt urna. Integer tincidunt nec nisl vitae ullamcorper. Proin sed ultrices erat. Praesent vdd warius ultricemassa at faucibus. Aenean dignissim, orci sed faucibus pharetra, dui mi dir ssim tortor, sit amet ntum mi ligula sit amet augue. Pellentesqs placerat.</p>','2021-01-21 09:34:18','2021-01-21 09:34:18'),(3,1,'faculties/January2021/pbJqX732bXtPlhV1YYe6.jpg','Fakultas Ekonomi & Bisnis','fakultas-ekonomi','<p>FE UPN Veteran Jakarta</p>','2021-01-21 09:36:00','2021-01-21 11:05:26'),(4,1,'faculties/January2021/kn8PIBvpM7Wvyj0BDBjc.jpg','Fakultas Kedokteran','fakultas-kedokteran','<p>FK UPN Veteran Jakarta</p>','2021-01-21 09:37:22','2021-01-21 09:37:22'),(5,1,'faculties/January2021/5Qx748BuXwhzoW2jeBfv.jpg','Fakultas Kesehatan Masyarakat','fakultas-kesehatan-masyarakat','<p>FKM UPN Veteran Jakarta</p>','2021-01-21 09:38:00','2021-01-21 09:39:12'),(6,1,'faculties/January2021/LYDW4IOMtvxGhcpxdlYz.jpg','FISIP','fisip','<p>FISIP UPN Veteran Jakarta</p>','2021-01-21 09:40:17','2021-01-21 09:40:17'),(7,1,'faculties/January2021/DUgV7SOHENSFj190Jh85.jpg','Fakultas Hukum','fakultas-hukum','<p>FH UPN Veteran Jakarta</p>','2021-01-21 09:41:48','2021-01-21 09:41:48');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,NULL,'Test gallery','test-gallery','<p><span data-offset-key=\"96df2ae36efe404fbca4b27c1b374052:0\">This will automatically generate the slug from the input of the </span><span data-offset-key=\"96df2ae36efe404fbca4b27c1b374052:1\"><code class=\"code-0458e21e\" spellcheck=\"false\" data-slate-leaf=\"true\">title</code></span><span data-offset-key=\"96df2ae36efe404fbca4b27c1b374052:2\"> field. If a slug does already exists, it will only be updated if </span><span data-offset-key=\"96df2ae36efe404fbca4b27c1b374052:3\"><code class=\"code-0458e21e\" spellcheck=\"false\" data-slate-leaf=\"true\">forceUpdate</code></span><span data-offset-key=\"96df2ae36efe404fbca4b27c1b374052:4\" data-slate-fragment=\"JTdCJTIyb2JqZWN0JTIyJTNBJTIyZG9jdW1lbnQlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJwYXJhZ3JhcGglMjIlMkMlMjJpc1ZvaWQlMjIlM0FmYWxzZSUyQyUyMmRhdGElMjIlM0ElN0IlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMnRleHQlMjIlMkMlMjJsZWF2ZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJsZWFmJTIyJTJDJTIydGV4dCUyMiUzQSUyMlRoaXMlMjB3aWxsJTIwYXV0b21hdGljYWxseSUyMGdlbmVyYXRlJTIwdGhlJTIwc2x1ZyUyMGZyb20lMjB0aGUlMjBpbnB1dCUyMG9mJTIwdGhlJTIwJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJsZWFmJTIyJTJDJTIydGV4dCUyMiUzQSUyMnRpdGxlJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJtYXJrJTIyJTJDJTIydHlwZSUyMiUzQSUyMmNvZGUlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTdEJTdEJTVEJTdEJTJDJTdCJTIyb2JqZWN0JTIyJTNBJTIybGVhZiUyMiUyQyUyMnRleHQlMjIlM0ElMjIlMjBmaWVsZC4lMjBJZiUyMGElMjBzbHVnJTIwZG9lcyUyMGFscmVhZHklMjBleGlzdHMlMkMlMjBpdCUyMHdpbGwlMjBvbmx5JTIwYmUlMjB1cGRhdGVkJTIwaWYlMjAlMjIlMkMlMjJtYXJrcyUyMiUzQSU1QiU1RCU3RCUyQyU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyZm9yY2VVcGRhdGUlMjIlMkMlMjJtYXJrcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMm1hcmslMjIlMkMlMjJ0eXBlJTIyJTNBJTIyY29kZSUyMiUyQyUyMmRhdGElMjIlM0ElN0IlN0QlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJsZWFmJTIyJTJDJTIydGV4dCUyMiUzQSUyMiUyMGlzJTIwc2V0JTIwZW5hYmxlZCUyQyUyMGJ5JTIwZGVmYXVsdCUyMHRoaXMlMjBpcyUyMGRpc2FibGVkLiUyMiUyQyUyMm1hcmtzJTIyJTNBJTVCJTVEJTdEJTVEJTdEJTVEJTdEJTVEJTdE\"> is set enabled, by default this is disabled.</span></p>','image','[\"galleries\\/January2021\\/txb0Nu4TIwgTiaeAuYeJ.png\",\"galleries\\/January2021\\/p6UihszxcC50jYItbw1H.png\",\"galleries\\/January2021\\/7BKshUMKxMXbuySv04kw.png\"]','https://www.youtube.com/watch?v=SEp9Kh0M4f0',1,'2021-01-22 02:24:00','2021-01-22 02:25:44');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduates`
--

DROP TABLE IF EXISTS `graduates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graduates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `university_id` bigint(20) unsigned DEFAULT NULL,
  `faculty_id` bigint(20) unsigned DEFAULT NULL,
  `prody_id` bigint(20) unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan` enum('sd','smp','sma','kuliah') COLLATE utf8mb4_unicode_ci DEFAULT 'kuliah',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cureent` tinyint(1) NOT NULL DEFAULT 0,
  `start_at` date NOT NULL,
  `end_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduates`
--

LOCK TABLES `graduates` WRITE;
/*!40000 ALTER TABLE `graduates` DISABLE KEYS */;
INSERT INTO `graduates` VALUES (1,3,1,1,1,NULL,NULL,'kuliah','Kuliah di kampus Universitas Pembangunan Nasional',0,'2017-01-07','2021-01-07','2021-01-08 00:24:30','2021-01-08 00:24:30');
/*!40000 ALTER TABLE `graduates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `life_certificates`
--

DROP TABLE IF EXISTS `life_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `life_certificates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `life_certificates`
--

LOCK TABLES `life_certificates` WRITE;
/*!40000 ALTER TABLE `life_certificates` DISABLE KEYS */;
INSERT INTO `life_certificates` VALUES (1,3,'68d295e2982d8c7b5d7c0cee0dc60e29.png','Sertifikat Mrs. Destiny Kuphal Sr.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione obcaecati natus eius exercitationem.','2021-01-08 00:24:37','2021-01-08 00:24:37'),(2,3,'96152d1dd61d8c8703be2f9f66d17bf5.png','Sertifikat Estell Prosacco','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione obcaecati natus eius exercitationem.','2021-01-08 00:24:37','2021-01-08 00:24:37'),(3,3,'a182123589c849432234b5fb3c016f1a.png','Sertifikat Otha O\'Conner I','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione obcaecati natus eius exercitationem.','2021-01-08 00:24:37','2021-01-08 00:24:37');
/*!40000 ALTER TABLE `life_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-01-04 04:20:14','2021-01-08 00:38:30','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,2,'2021-01-04 04:20:14','2021-01-22 01:39:52','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,37,1,'2021-01-04 04:20:14','2021-01-08 01:52:33','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,3,'2021-01-04 04:20:14','2021-01-22 01:39:53','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,19,'2021-01-04 04:20:14','2021-01-22 01:52:45',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-01-04 04:20:14','2021-01-22 01:42:34','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-01-04 04:20:14','2021-01-22 01:42:34','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-01-04 04:20:14','2021-01-22 01:42:34','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,18,'2021-01-04 04:20:14','2021-01-22 01:52:45','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2021-01-04 04:20:14','2021-01-22 01:52:53','voyager.categories.index',NULL),(12,1,'Blog','','_self','voyager-news','#000000',NULL,4,'2021-01-04 04:20:14','2021-01-22 01:39:50','voyager.posts.index','null'),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,5,'2021-01-04 04:20:14','2021-01-22 01:39:50','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2021-01-04 04:20:15','2021-01-22 01:42:35','voyager.hooks',NULL),(15,2,'Faculty','','_self','voyager-bomb','#000000',NULL,2,'2021-01-04 04:22:25','2021-01-04 04:26:15','faculty.index','null'),(17,2,'Alumni','','_self','voyager-bomb','#000000',NULL,3,'2021-01-04 04:23:19','2021-01-04 04:29:26','alumni.index','null'),(18,2,'Blog','','_self','voyager-bomb','#000000',NULL,5,'2021-01-04 04:23:30','2021-01-22 02:51:44','blog.index','null'),(19,2,'Event','','_self','voyager-bomb','#000000',NULL,6,'2021-01-04 04:23:48','2021-01-22 02:51:44','event.index','null'),(20,2,'Career','','_self','voyager-bomb','#000000',NULL,7,'2021-01-04 04:24:01','2021-01-22 02:51:44','career.index','null'),(21,2,'About Us','','_self','voyager-bomb','#000000',NULL,1,'2021-01-04 04:26:09','2021-01-04 04:28:41','about.index','null'),(22,1,'Alumnis','','_self','voyager-people',NULL,37,2,'2021-01-04 09:04:29','2021-01-08 01:52:39','voyager.alumnis.index',NULL),(23,1,'Careers','','_self','voyager-plug',NULL,41,1,'2021-01-04 09:09:01','2021-01-08 01:52:47','voyager.careers.index',NULL),(24,1,'Cities','','_self','voyager-trees',NULL,36,2,'2021-01-04 09:22:46','2021-01-08 01:53:09','voyager.cities.index',NULL),(25,1,'Companies','','_self','voyager-crop',NULL,NULL,8,'2021-01-04 09:27:36','2021-01-22 01:52:53','voyager.companies.index',NULL),(26,1,'Events','','_self','voyager-bomb',NULL,40,1,'2021-01-04 09:39:47','2021-01-08 01:52:50','voyager.events.index',NULL),(27,1,'Galleries','','_self','voyager-hotdog',NULL,NULL,13,'2021-01-04 09:44:27','2021-01-22 01:52:45','voyager.galleries.index',NULL),(28,1,'Proviences','','_self','voyager-archive',NULL,36,1,'2021-01-04 09:45:30','2021-01-08 01:52:57','voyager.proviences.index',NULL),(29,1,'Sliders','','_self','voyager-credit-cards',NULL,NULL,16,'2021-01-04 09:47:34','2021-01-22 01:52:45','voyager.sliders.index',NULL),(30,1,'Services','','_self','voyager-activity',NULL,NULL,17,'2021-01-07 09:13:42','2021-01-22 01:52:45','voyager.services.index',NULL),(31,1,'Universities','','_self','voyager-bulb',NULL,35,1,'2021-01-07 16:47:11','2021-01-07 16:51:19','voyager.universities.index',NULL),(32,1,'Faculties','','_self','voyager-bulb',NULL,35,2,'2021-01-07 16:47:52','2021-01-07 16:51:25','voyager.faculties.index',NULL),(33,1,'Prodies','','_self','voyager-bulb',NULL,35,3,'2021-01-07 16:48:31','2021-01-07 16:51:25','voyager.prodies.index',NULL),(35,1,'University','#','_self','voyager-bulb','#000000',NULL,15,'2021-01-07 16:51:09','2021-01-22 01:52:45',NULL,''),(36,1,'Regional','#','_self','voyager-location','#000000',NULL,14,'2021-01-07 16:56:22','2021-01-22 01:52:45',NULL,''),(37,1,'Users','#','_self','voyager-group','#000000',NULL,9,'2021-01-07 16:57:43','2021-01-22 01:52:53',NULL,''),(38,1,'Career Users','','_self','voyager-paper-plane',NULL,41,2,'2021-01-08 03:50:38','2021-01-08 01:52:47','voyager.career-users.index',NULL),(39,1,'Event Users','','_self','voyager-video','#000000',40,2,'2021-01-08 03:53:43','2021-01-08 01:52:50','voyager.event-users.index','null'),(40,1,'Event','#','_self','voyager-video','#000000',NULL,12,'2021-01-08 03:57:57','2021-01-22 01:52:45',NULL,''),(41,1,'Career','#','_self','voyager-tv','#000000',NULL,11,'2021-01-08 03:58:27','2021-01-22 01:52:45',NULL,''),(42,1,'Work Experiences','','_self','voyager-milestone',NULL,46,1,'2021-01-17 22:30:59','2021-01-22 01:52:42','voyager.work-experiences.index',NULL),(43,1,'Life Certificates','','_self','voyager-magnet',NULL,46,2,'2021-01-17 22:34:12','2021-01-22 01:52:44','voyager.life-certificates.index',NULL),(44,1,'About Pages','','_self','voyager-leaf',NULL,NULL,6,'2021-01-22 01:42:10','2021-01-22 01:42:54','voyager.about-pages.index',NULL),(45,1,'Graduates','','_self','voyager-bolt',NULL,46,3,'2021-01-22 01:47:32','2021-01-22 01:52:45','voyager.graduates.index',NULL),(46,1,'User History','#','_self','voyager-certificate','#000000',NULL,10,'2021-01-22 01:51:58','2021-01-22 01:52:53',NULL,''),(47,2,'Gallery','','_self','voyager-images','#000000',NULL,4,'2021-01-22 02:51:33','2021-01-22 02:51:44','gallery.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,'frontend','2021-01-04 04:21:37','2021-01-04 04:21:37');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2016_01_01_000000_add_voyager_user_fields',1),(5,'2016_01_01_000000_create_data_types_table',1),(6,'2016_01_01_000000_create_pages_table',1),(7,'2016_01_01_000000_create_posts_table',1),(8,'2016_02_15_204651_create_categories_table',1),(9,'2016_05_19_173453_create_menu_table',1),(10,'2016_10_21_190000_create_roles_table',1),(11,'2016_10_21_190000_create_settings_table',1),(12,'2016_11_30_135954_create_permission_table',1),(13,'2016_11_30_141208_create_permission_role_table',1),(14,'2016_12_26_201236_data_types__add__server_side',1),(15,'2017_01_13_000000_add_route_to_menu_items_table',1),(16,'2017_01_14_005015_create_translations_table',1),(17,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(18,'2017_03_06_000000_add_controller_to_data_types_table',1),(19,'2017_04_11_000000_alter_post_nullable_fields_table',1),(20,'2017_04_21_000000_add_order_to_data_rows_table',1),(21,'2017_07_05_210000_add_policyname_to_data_types_table',1),(22,'2017_08_05_000000_add_group_to_settings_table',1),(23,'2017_11_26_013050_add_user_role_relationship',1),(24,'2017_11_26_015000_create_user_roles_table',1),(25,'2018_03_11_000000_add_user_settings',1),(26,'2018_03_14_000000_add_details_to_data_types_table',1),(27,'2018_03_16_000000_make_settings_value_nullable',1),(28,'2019_08_19_000000_create_failed_jobs_table',1),(29,'2019_12_14_000001_create_personal_access_tokens_table',1),(30,'2020_12_21_182123_create_sessions_table',1),(31,'2020_12_22_122012_create_sliders_table',1),(32,'2020_12_22_201418_create_events_table',1),(33,'2020_12_22_210555_create_companies_table',1),(34,'2020_12_22_210645_create_careers_table',1),(35,'2020_12_30_194200_create_alumnis_table',1),(36,'2020_12_31_105337_add_field_to_user',1),(38,'2021_01_03_224229_create_proviences_table',1),(39,'2021_01_03_224237_create_cities_table',1),(44,'2021_01_07_013616_add_status_on_users_table',2),(45,'2021_01_07_013658_create_services_table',2),(52,'2021_01_07_085422_create_faculties_table',3),(53,'2021_01_07_085434_create_universities_table',3),(54,'2021_01_07_085455_create_prodies_table',3),(59,'2021_01_07_181156_edit_field_companies',4),(60,'2021_01_08_225556_create_work_experiences_table',4),(61,'2021_01_08_225621_create_graduates_table',4),(62,'2021_01_08_225725_create_life_certificates_table',4),(65,'2021_01_07_223159_create_event_users_table',5),(66,'2021_01_07_223206_create_career_users_table',5),(67,'2021_01_20_160008_create_about_pages_table',6),(68,'2021_01_03_221637_create_galleries_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2021-01-04 04:20:15','2021-01-04 04:20:15');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('admin@admin.com','$2y$10$s6yuNZ7GjbkV5Q2ZPF4lJOeIFDOFuwSyGKZuiA3TKI.wJd0pwqXmK','2021-01-20 00:11:03'),('hanny.purwanti@gmail.com','$2y$10$DAnOcoLJkC7ZqPKVn57c4.RKuhrfCoo90zbbpIqy9RB44lbXXUi2e','2021-01-21 04:16:41'),('kurniawanwsp@gmail.com','$2y$10$1hrWMLaK3zBFgZki4h6DK.JPar.C1QQDpgyah.ZTE9byDVOv8h6QO','2021-01-21 05:13:59'),('koespratomo2002@yahoo.com','$2y$10$HU66K2t7kBEXadDYjEwMx.Cdv8tRPQhFX5XyO1pD0yMHXJjFQDV7e','2021-01-21 07:34:39');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,3),(3,3),(4,1),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,1),(11,3),(12,1),(12,3),(13,1),(13,3),(14,1),(14,3),(15,1),(15,3),(16,1),(16,3),(17,1),(17,3),(18,1),(18,3),(19,1),(19,3),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(23,3),(24,1),(24,3),(25,1),(25,3),(26,1),(26,3),(27,1),(27,3),(28,1),(28,3),(29,1),(29,3),(30,1),(30,3),(31,1),(31,3),(32,1),(32,3),(33,1),(33,3),(34,1),(34,3),(35,1),(35,3),(36,1),(36,3),(37,1),(37,3),(38,1),(38,3),(39,1),(39,3),(40,1),(40,3),(41,3),(42,1),(42,3),(43,1),(43,3),(44,1),(44,3),(45,1),(45,3),(46,1),(46,3),(47,1),(47,3),(48,1),(48,3),(49,1),(49,3),(50,1),(50,3),(51,1),(51,3),(52,1),(52,3),(53,1),(53,3),(54,1),(54,3),(55,1),(55,3),(56,1),(56,3),(57,1),(57,3),(58,1),(58,3),(59,1),(59,3),(60,1),(60,3),(61,1),(61,3),(62,1),(62,3),(63,1),(63,3),(64,1),(64,3),(65,1),(65,3),(66,1),(66,3),(67,1),(67,3),(68,1),(68,3),(69,1),(69,3),(70,1),(70,3),(71,1),(71,3),(72,1),(72,3),(73,1),(73,3),(74,1),(74,3),(75,1),(75,3),(76,1),(76,3),(77,1),(77,3),(78,1),(78,3),(79,1),(79,3),(80,1),(80,3),(81,1),(81,3),(82,1),(82,3),(83,1),(83,3),(84,1),(84,3),(85,1),(85,3),(86,1),(86,3),(87,1),(87,3),(88,1),(88,3),(89,1),(89,3),(90,1),(90,3),(91,1),(91,3),(92,1),(92,3),(93,1),(93,3),(94,1),(94,3),(95,1),(95,3),(96,1),(96,3),(97,1),(97,3),(98,1),(98,3),(99,1),(99,3),(100,1),(100,3),(101,1),(101,3),(102,1),(102,3),(103,1),(103,3),(104,1),(104,3),(105,1),(105,3),(106,1),(106,3),(107,1),(107,3),(108,1),(108,3),(109,1),(109,3),(110,1),(110,3),(111,1),(111,3),(112,1),(112,3),(113,1),(113,3),(114,1),(114,3),(115,1),(115,3),(116,1),(116,3),(117,1),(117,3),(118,1),(118,3),(119,1),(119,3),(120,1),(120,3),(121,1),(121,3),(122,1),(122,3),(123,1),(123,3),(124,1),(124,3),(125,1),(125,3),(126,1),(126,3),(127,1),(127,3),(128,1),(128,3),(129,1),(129,3),(130,1),(130,3),(131,1),(131,3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,'browse_bread',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(3,'browse_database',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(4,'browse_media',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(5,'browse_compass',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(6,'browse_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(7,'read_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(8,'edit_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(9,'add_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(10,'delete_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(11,'browse_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(12,'read_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(13,'edit_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(14,'add_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(15,'delete_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(16,'browse_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(17,'read_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(18,'edit_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(19,'add_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(20,'delete_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(21,'browse_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(22,'read_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(23,'edit_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(24,'add_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(25,'delete_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(26,'browse_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(27,'read_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(28,'edit_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(29,'add_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(30,'delete_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(31,'browse_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(32,'read_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(33,'edit_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(34,'add_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(35,'delete_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(36,'browse_pages','pages','2021-01-04 04:20:14','2021-01-04 04:20:14'),(37,'read_pages','pages','2021-01-04 04:20:14','2021-01-04 04:20:14'),(38,'edit_pages','pages','2021-01-04 04:20:15','2021-01-04 04:20:15'),(39,'add_pages','pages','2021-01-04 04:20:15','2021-01-04 04:20:15'),(40,'delete_pages','pages','2021-01-04 04:20:15','2021-01-04 04:20:15'),(41,'browse_hooks',NULL,'2021-01-04 04:20:15','2021-01-04 04:20:15'),(42,'browse_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(43,'read_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(44,'edit_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(45,'add_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(46,'delete_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(47,'browse_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(48,'read_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(49,'edit_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(50,'add_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(51,'delete_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(52,'browse_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(53,'read_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(54,'edit_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(55,'add_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(56,'delete_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(57,'browse_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(58,'read_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(59,'edit_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(60,'add_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(61,'delete_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(62,'browse_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(63,'read_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(64,'edit_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(65,'add_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(66,'delete_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(67,'browse_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(68,'read_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(69,'edit_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(70,'add_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(71,'delete_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(72,'browse_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(73,'read_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(74,'edit_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(75,'add_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(76,'delete_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(77,'browse_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(78,'read_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(79,'edit_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(80,'add_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(81,'delete_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(82,'browse_services','services','2021-01-07 09:13:42','2021-01-07 09:13:42'),(83,'read_services','services','2021-01-07 09:13:42','2021-01-07 09:13:42'),(84,'edit_services','services','2021-01-07 09:13:42','2021-01-07 09:13:42'),(85,'add_services','services','2021-01-07 09:13:42','2021-01-07 09:13:42'),(86,'delete_services','services','2021-01-07 09:13:42','2021-01-07 09:13:42'),(87,'browse_universities','universities','2021-01-07 16:47:11','2021-01-07 16:47:11'),(88,'read_universities','universities','2021-01-07 16:47:11','2021-01-07 16:47:11'),(89,'edit_universities','universities','2021-01-07 16:47:11','2021-01-07 16:47:11'),(90,'add_universities','universities','2021-01-07 16:47:11','2021-01-07 16:47:11'),(91,'delete_universities','universities','2021-01-07 16:47:11','2021-01-07 16:47:11'),(92,'browse_faculties','faculties','2021-01-07 16:47:52','2021-01-07 16:47:52'),(93,'read_faculties','faculties','2021-01-07 16:47:52','2021-01-07 16:47:52'),(94,'edit_faculties','faculties','2021-01-07 16:47:52','2021-01-07 16:47:52'),(95,'add_faculties','faculties','2021-01-07 16:47:52','2021-01-07 16:47:52'),(96,'delete_faculties','faculties','2021-01-07 16:47:52','2021-01-07 16:47:52'),(97,'browse_prodies','prodies','2021-01-07 16:48:31','2021-01-07 16:48:31'),(98,'read_prodies','prodies','2021-01-07 16:48:31','2021-01-07 16:48:31'),(99,'edit_prodies','prodies','2021-01-07 16:48:31','2021-01-07 16:48:31'),(100,'add_prodies','prodies','2021-01-07 16:48:31','2021-01-07 16:48:31'),(101,'delete_prodies','prodies','2021-01-07 16:48:31','2021-01-07 16:48:31'),(102,'browse_career_users','career_users','2021-01-08 03:50:38','2021-01-08 03:50:38'),(103,'read_career_users','career_users','2021-01-08 03:50:38','2021-01-08 03:50:38'),(104,'edit_career_users','career_users','2021-01-08 03:50:38','2021-01-08 03:50:38'),(105,'add_career_users','career_users','2021-01-08 03:50:38','2021-01-08 03:50:38'),(106,'delete_career_users','career_users','2021-01-08 03:50:38','2021-01-08 03:50:38'),(107,'browse_event_users','event_users','2021-01-08 03:53:43','2021-01-08 03:53:43'),(108,'read_event_users','event_users','2021-01-08 03:53:43','2021-01-08 03:53:43'),(109,'edit_event_users','event_users','2021-01-08 03:53:43','2021-01-08 03:53:43'),(110,'add_event_users','event_users','2021-01-08 03:53:43','2021-01-08 03:53:43'),(111,'delete_event_users','event_users','2021-01-08 03:53:43','2021-01-08 03:53:43'),(112,'browse_work_experiences','work_experiences','2021-01-17 22:30:59','2021-01-17 22:30:59'),(113,'read_work_experiences','work_experiences','2021-01-17 22:30:59','2021-01-17 22:30:59'),(114,'edit_work_experiences','work_experiences','2021-01-17 22:30:59','2021-01-17 22:30:59'),(115,'add_work_experiences','work_experiences','2021-01-17 22:30:59','2021-01-17 22:30:59'),(116,'delete_work_experiences','work_experiences','2021-01-17 22:30:59','2021-01-17 22:30:59'),(117,'browse_life_certificates','life_certificates','2021-01-17 22:34:12','2021-01-17 22:34:12'),(118,'read_life_certificates','life_certificates','2021-01-17 22:34:12','2021-01-17 22:34:12'),(119,'edit_life_certificates','life_certificates','2021-01-17 22:34:12','2021-01-17 22:34:12'),(120,'add_life_certificates','life_certificates','2021-01-17 22:34:12','2021-01-17 22:34:12'),(121,'delete_life_certificates','life_certificates','2021-01-17 22:34:12','2021-01-17 22:34:12'),(122,'browse_about_pages','about_pages','2021-01-22 01:42:10','2021-01-22 01:42:10'),(123,'read_about_pages','about_pages','2021-01-22 01:42:10','2021-01-22 01:42:10'),(124,'edit_about_pages','about_pages','2021-01-22 01:42:10','2021-01-22 01:42:10'),(125,'add_about_pages','about_pages','2021-01-22 01:42:10','2021-01-22 01:42:10'),(126,'delete_about_pages','about_pages','2021-01-22 01:42:10','2021-01-22 01:42:10'),(127,'browse_graduates','graduates','2021-01-22 01:47:32','2021-01-22 01:47:32'),(128,'read_graduates','graduates','2021-01-22 01:47:32','2021-01-22 01:47:32'),(129,'edit_graduates','graduates','2021-01-22 01:47:32','2021-01-22 01:47:32'),(130,'add_graduates','graduates','2021-01-22 01:47:32','2021-01-22 01:47:32'),(131,'delete_graduates','graduates','2021-01-22 01:47:32','2021-01-22 01:47:32');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(5,1,1,'UPNVJ Gelar Seminar Nasional Bela Negara dalam Perspektif Generasi Z, Peringati Hari Bela Negara','UPN Veteran Jakarta menggelar Webinar Series Seminar Nasional',NULL,'<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Dalam rangka memperingati Hari Bela Negara ke &ndash; 72 yang jatuh pada hari ini, Sabtu 19 Desember 2020. UPN Veteran Jakarta menggelar Webinar Series Seminar Nasional dengan mengangkat tema &ldquo;Bela Negara dalam Perspektif Gen Z (Generasi Z)&rdquo;.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Sebagai Generasi Z (Gen Z) mereka yang lahir di tahun 1995 sampai dengan 2010 umumnya mereka merupakan generasi yang disebut juga sebagai iGeneration atau generasi internet atau generasi net. Mereka selalu terhubung dengan dunia maya dan dapat melakukan segala sesuatunya dengan menggunakan kecanggihan teknologi yang ada.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Sebagai kampus berindentitas Bela Negara UPN Veteran Jakarta mendorong para Gen Z memiliki kesadaran Bela Negara yang hakikatnya kesediaan berbakti pada negara dan kesediaan berkorban membela negara.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Seminar nasional yang dihadiri 20 perwakilan perguruan tinggi di Indonesia ini merupakan rangkaian Diesnatalis UPN Veteran Jakarta ke -58 dengan menghadirkan narasumber Dr. dr. Taufiq Fredik Pasiak., M.Kes., M.Pd.I. yang merupakan CEO dan Founder Sekolah Otak Indonesia.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Dalam pembukaannya, Rektor UPN Veteran Jakarta Erna Hernawati mengatakan kegiatan ini sebagai membuka pandangan kita tentang Bela Negara yang bisa diimplementasikan saat ini dengan berbagai perspektif tenaga ahli maupun dari perwakilan mahasiswa atau Gen z.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">&ldquo;Semoga hasil dari rangkaian seminar ini memberikan manfaat untuk seluruh kampus yang tergabung dalam pelaksanaan ini, dengan mengusung kampus Bela Negara disini kita juga akan mendapatkan berbagai pandangan dari Gen z, diwakili mahasiswa dari 7 fakultas yang ada di UPN Veteran Jakarta. Tujuannya dengan menyatukan perspektif dan penanaman Bela Negara dalam karakteristik Gen Z, penanman Bela Negara merupakan hal yang posiif untuk membentuk karakter cinta tanah air&rdquo; kata Rektor.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Selain dr. Taufiq, terdapat delapan&nbsp;perwakilan mahasiswa aktif dan inspiratif yang memberikan cara pandang masing-masing mengenai Bela Negara yang disampaikan berdasarkan jurusan perkuliahan mereka saat ini.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Secara garis besar, dari delapan&nbsp;narasumber mahasiswa dapat disimpulkan bahwa Bela Negara adalah kewajiban berdasarkan undang undang dan bentuknya adalah sikap dan perilaku warga negara yang dijiwai oleh kecintaannya kepada negara kesatuan republik indonesia yang berdasarkan pancasila.&nbsp;Sebagai Gen Z dan juga mahasiswa dari berbagai fakultas bahwa kontribusi utama yang dapat dilakukan adalah menekuni dari ilmu yang dipelajari saat ini dimulai dari hal kecil dan diri sendiri untuk berprestasi dan loyalitas kepada masyarakat sehingga dapat berusaha untuk mengimplementasikan nya kepada negara dan manfaatnya dapat dirasakan secara luas dan sudah jelas untuk membangun bangsa dan negara indonesia yang lebih baik. Seperti tagline dari webinar hari ini yaitu \"Kami bicara. Kami peduli, kami beraksi untuk negeri tercinta\".</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Sebagai upaya meoptimalkan potensi otak tentang cara pandang dan cara menumbuhkan jiwa Bela Negara dalam pikiran Gen Z. Bersama dr. Taufiq para peserta membahas mengenai tantangan teknologi rekayasa otak. Hal ini dibahas karenakan gelombang perubahan yang sangat cepat.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">&ldquo;Dua hal yang penting yaitu akar dan ranting, saat ini kita hidup harus memiliki akar yang kuat dan ranting yang bisa menjangkau kemanapun dan sejauh mungkin&rdquo; ujar dr. Taufiq.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Akar bisa diartikan spiritual dan ranting diibaratkan memanfaatkan teknologi dimanapun dan kapanpun.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Teknologi yang berkembang saat ini memiliki keunikan tersendiri, seperti halnya teknologi membuat manusia bisa lebih kenal dirinya.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Dr. Taufiq mengatakan bela negara itu bisa dilihat dari bagaimana sumber daya manusia kita. UPNVJ merupakan kampus yang berindentitas Bela Negara sebagai pondasi ketahanan bangsa.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">&ldquo;Anda sebagai mahasiswa UPNVJ merupakan mahasiswa yang beruntung, karena pondasi kalian sudah dipupuk untuk menjadi seseorang yang kuat untuk bangsa&rdquo;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Dalam pembahasannya dr. Taufiq memberikan banyak contoh yang relevan untuk menunjukkan pentingnya pondasi dalam diri untuk perkembangan saat ini terutama bagi Gen Z.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Pemetaaan pikiran perihal tantangan masa depan bangsa yaitu demografi arus manusia yang non fisik yang luar biasa dan bertambahnya jumlah manusia, globalisasi dunia tanpa batas hal ini yang harus diperhatikan untuk Gen Z yang bisa menjadi ancaman sekaligus tantangan yang luar biasa, dan teknologi merupakan &lsquo;budak&rsquo; sekaligus &lsquo;tuan&rsquo;.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Teknologi itu adalah solusi bukan ancaman, seperti teknologi rekayasa otak. BCI (Brain Computer Interface) interaksi langsung otak dengan mesin, chip yang ditempel di kepala, otak yang mengetik (Thought Powered Typing), dan teknologi Artficial Intelligence : Sophia (robot perempuan dengan kemampuan yang hampir menyamai kecerdasan manusia).</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Dr. Taufiq mengatakan kendala terbesar yang dirasakan oleh Gen Z adalah isolasi diri, seperti menjauhkan yang dekat. Ini sebagai tantangan bagi Gen Z untuk tetap menjaga solidaritas dengan perkembangan teknologi dan tidak jatuh terlalu dalam dengan isolasi yang dibuat oleh diri sendiri.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; color: #333333; mso-fareast-language: EN-ID;\">Diakhir acara dr. Taufiq berpesan untuk tetap menjaga kolaborasi tanpa menghilangkan perbedaaan, perkuat akar dan kuasai hidup.</span></p>\r\n<p>&nbsp;</p>','posts/January2021/Mi1rer1UwkYz50hgQfG2.png','upnvj-gelar-seminar-nasional-bela-negara-dalam-perspektif-generasi-z-peringati-hari-bela-negara','Dalam rangka memperingati Hari Bela Negara ke – 72 yang jatuh pada hari ini, Sabtu 19 Desember 2020. UPN Veteran Jakarta menggelar Webinar Series Seminar Nasional dengan mengangkat tema “Bela Negara dalam Perspektif Gen Z (Generasi Z)”.','Bela Negara dalam Perspektif Gen Z (Generasi Z)','PUBLISHED',0,'2021-01-10 21:53:15','2021-01-10 21:53:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodies`
--

DROP TABLE IF EXISTS `prodies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `faculty_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodies`
--

LOCK TABLES `prodies` WRITE;
/*!40000 ALTER TABLE `prodies` DISABLE KEYS */;
INSERT INTO `prodies` VALUES (1,1,'(S1) Teknik Elektro','s1-teknik-elektro','2021-01-07 17:34:00','2021-01-21 11:10:05'),(2,1,'(S1) Teknik Mesin','s1-teknik-mesin','2021-01-07 17:35:00','2021-01-21 11:09:38'),(4,2,'(S1) Tehnik Informatika','s1-tehnik-informatika','2021-01-21 10:59:00','2021-01-21 11:07:53'),(5,2,'(S1) Sistem Informasi','s1-sistem-informasi','2021-01-21 11:00:00','2021-01-21 11:08:32'),(6,2,'(S1) Manajemen Informatika','s1-manajemen-informatika','2021-01-21 11:00:00','2021-01-21 11:07:38'),(7,2,'(D3) - PATIK','d3-patik','2021-01-21 11:01:00','2021-01-21 11:07:21'),(8,2,'(D3) Manajemen Informatika','d3-manajemen-informatika','2021-01-21 11:09:01','2021-01-21 11:09:01'),(9,1,'(S1) Teknik Industri','s1-teknik-industri','2021-01-21 11:10:34','2021-01-21 11:10:34'),(10,1,'(D3) Teknik Perkapalan','d3-teknik-perkapalan','2021-01-21 11:11:08','2021-01-21 11:11:08'),(11,1,'(S1) Teknik Perkapalan','s1-teknik-perkapalan','2021-01-21 11:12:00','2021-01-21 11:12:00'),(12,1,'(D3) Atevet','d3-atevet','2021-01-21 13:07:38','2021-01-21 13:07:38'),(13,1,'(D3) Akateks','d3-akateks','2021-01-21 13:08:19','2021-01-21 13:08:19'),(14,1,'(S1) Teknik Tekstil','s1-teknik-tekstil','2021-01-21 13:08:37','2021-01-21 13:08:37'),(15,4,'(S1) Sarjana Kedokteran (PSKPS)','s1-sarjana-kedokteran-pskps','2021-01-21 13:09:26','2021-01-21 13:09:26'),(16,4,'(S1) Profesi Kedokteran (PSKPD)','s1-profesi-kedokteran-pskpd','2021-01-21 13:10:01','2021-01-21 13:10:01'),(17,4,'(S1) Farmasi','s1-farmasi','2021-01-21 13:10:26','2021-01-21 13:10:26'),(18,7,'(S1) Hukum','s1-hukum','2021-01-21 13:13:22','2021-01-21 13:13:22'),(19,7,'(S2) Magister Hukum','s2-magister-hukum','2021-01-21 13:13:49','2021-01-21 13:13:49'),(20,6,'(S1) Ilmu Komunikasi','s1-ilmu-komunikasi','2021-01-21 13:14:27','2021-01-21 13:14:27'),(21,6,'(S1) Ilmu Politik','s1-ilmu-politik','2021-01-21 13:14:50','2021-01-21 13:14:50'),(22,6,'(S1) Hubungan Internasional','s1-hubungan-internasional','2021-01-21 13:15:13','2021-01-21 13:15:13'),(23,5,'(D3) Keperawatan','d3-keperawatan','2021-01-21 13:15:55','2021-01-21 13:15:55'),(24,5,'(D3) Fisioterapi','d3-fisioterapi','2021-01-21 13:16:16','2021-01-21 13:16:16'),(25,5,'(S1) Keperawatan','s1-keperawatan','2021-01-21 13:16:39','2021-01-21 13:16:39'),(26,5,'(S1) Kesehatan Masyarakat','s1-kesehatan-masyarakat','2021-01-21 13:17:30','2021-01-21 13:17:30'),(27,5,'(S1) Ilmu Gizi','s1-ilmu-gizi','2021-01-21 13:17:51','2021-01-21 13:17:51'),(28,5,'Profesi Ners','profesi-ners','2021-01-21 13:18:17','2021-01-21 13:18:17'),(29,3,'(D3) Perbankan Keuangan','d3-perbankan-keuangan','2021-01-21 13:18:52','2021-01-21 13:18:52'),(30,3,'(D3) Akuntansi','d3-akuntansi','2021-01-21 13:19:13','2021-01-21 13:19:13'),(31,3,'(S1) Akuntansi','s1-akuntansi','2021-01-21 13:19:29','2021-01-21 13:19:29'),(32,3,'(S1) Manajemen','s1-manajemen','2021-01-21 13:19:49','2021-01-21 13:19:49'),(33,3,'(S1) Ekonomi Pembangunan','s1-ekonomi-pembangunan','2021-01-21 13:20:16','2021-01-21 13:20:16'),(34,3,'(S1) Ekonomi Syariah','s1-ekonomi-syariah','2021-01-21 13:20:34','2021-01-21 13:20:34'),(35,3,'(S2) Magister Manajemen','s2-magister-manajemen','2021-01-21 13:20:52','2021-01-21 13:20:52');
/*!40000 ALTER TABLE `prodies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proviences`
--

DROP TABLE IF EXISTS `proviences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proviences` (
  `id` varchar(2) NOT NULL,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proviences`
--

LOCK TABLES `proviences` WRITE;
/*!40000 ALTER TABLE `proviences` DISABLE KEYS */;
INSERT INTO `proviences` VALUES ('11','Aceh'),('12','Sumatera Utara'),('13','Sumatera Barat'),('14','Riau'),('15','Jambi'),('16','Sumatera Selatan'),('17','Bengkulu'),('18','Lampung'),('19','Kepulauan Bangka Belitung'),('21','Kepulauan Riau'),('31','Dki Jakarta'),('32','Jawa Barat'),('33','Jawa Tengah'),('34','Di Yogyakarta'),('35','Jawa Timur'),('36','Banten'),('51','Bali'),('52','Nusa Tenggara Barat'),('53','Nusa Tenggara Timur'),('61','Kalimantan Barat'),('62','Kalimantan Tengah'),('63','Kalimantan Selatan'),('64','Kalimantan Timur'),('65','Kalimantan Utara'),('71','Sulawesi Utara'),('72','Sulawesi Tengah'),('73','Sulawesi Selatan'),('74','Sulawesi Tenggara'),('75','Gorontalo'),('76','Sulawesi Barat'),('81','Maluku'),('82','Maluku Utara'),('91','Papua Barat'),('94','Papua');
/*!40000 ALTER TABLE `proviences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,'user','Normal User','2021-01-04 04:20:14','2021-01-04 04:20:14'),(3,'developer','Developer','2021-01-04 08:37:44','2021-01-04 08:37:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'services/04.png','Kris Schinner','kris-schinner','Lorem ipsum dolor sit amet consectetur adipisicing elit.','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',NULL,1,'2021-01-07 08:55:27','2021-01-07 08:55:27'),(2,'services/01.png','Miss Clotilde Haley II','miss-clotilde-haley-ii','Lorem ipsum dolor sit amet consectetur adipisicing elit.','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',NULL,1,'2021-01-07 08:55:27','2021-01-07 08:55:27'),(3,'services/01.png','Nicole Johnson Sr.','nicole-johnson-sr','Lorem ipsum dolor sit amet consectetur adipisicing elit.','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',NULL,1,'2021-01-07 08:55:27','2021-01-07 08:55:27'),(4,'services/04.png','Oral Rogahn','oral-rogahn','Lorem ipsum dolor sit amet consectetur adipisicing elit.','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',NULL,1,'2021-01-07 08:55:27','2021-01-07 08:55:27'),(5,'services/03.png','Ardella Crona','ardella-crona','Lorem ipsum dolor sit amet consectetur adipisicing elit.','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',NULL,1,'2021-01-07 08:55:27','2021-01-07 08:55:27'),(6,'services/04.png','Mr. Jabari Windler Jr.','mr-jabari-windler-jr','Lorem ipsum dolor sit amet consectetur adipisicing elit.','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>',NULL,1,'2021-01-07 08:55:27','2021-01-07 08:55:27');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
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
INSERT INTO `sessions` VALUES ('CVyzG69AA8ebkNCCfelOrOLIYGQTOQUZJXcUatN5',14,'180.252.117.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQUROaE9rWFJFNlpJSEpjNm5kSWxON3RpOThUSm9hb0VGWThxanN6WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vaWthdXBudmoub3IuaWQvdXNlcnMvcHJvZmlsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkelZsaUhHbkZMTnF3Y2RoM28uWGliT0pwS3pILzZVUmlDcFVRREd0elYuM1NiMVNkMUtUWjIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHpWbGlIR25GTE5xd2NkaDNvLlhpYk9KcEt6SC82VVJpQ3BVUURHdHpWLjNTYjFTZDFLVFoyIjt9',1611261207),('CX1qgnprVsWgB8VWaCIz1legFgfFF9wmE5k6M9Le',NULL,'180.252.117.94','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE5lTVVycXdLR3J4dDNTbFRmQWg2MG04T0RFYVZDcGIzVHlweGFHciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHBzOi8vd3d3LmphZ2F0YWx1bW5pLmNvbS93ZWItYWRtaW4vdm95YWdlci1hc3NldHM/cGF0aD1mb250cyUyRnZveWFnZXIudHRmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1611261329),('iTB8iAnXcaRXLtnJqeN82rJ0VvkWS5CyY997XLhQ',4,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM2lobTRQbGV4Y2cyY2JJMGM0Wmd4UzBuSjZlQjN4SUZBWHZMejRCWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9qYWdhdGFsdW1uaS5zaXRlL2dhbGxlcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDhYZHFhZXdDbVR4SDdvTHdFdFM2VnU0Q3dJTWlSMlVaMjNPL2lPcGtjby5VYTZEeTU0TENXIjt9',1611268062),('OPTt5SYLogLw5Gn1v9Po0fHrrqMe7XvfAxv0ofcy',NULL,'158.140.173.40','Mozilla/5.0 (Linux; U; Android 7.1.1; id-id; MI MAX 2 Build/NMF26F) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/12.7.5-go','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2RUMmhxWDdMVUZKMVhsbGdyZjlId0t0RFc3RFhjektuV0o5T1J0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vaWthdXBudmoub3IuaWQvcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1611260799),('QS9oRiYXyuLsJd6wAgblTJh5bUD8ohk8J7YNbi66',NULL,'180.252.117.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmNVMGpZTlA3REpqYlpkTnZ0ZDY3SHlOMGVJVWVnbzdUTUxEeTRHcCI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRzVXNyWjlXMFkzSUtoaUhTZGJaRUt1Wm5mZlQ1U05IdWZYSmxvNlF4M2k1b0Vmbk81MVRveSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmlrYXVwbnZqLm9yLmlkL3dlYi1hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1611261136);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Pusat Ikatan Alumni Universitas Pembangunan Nasional Jakarta','','text',1,'Site'),(2,'site.description','Site Description','Website Resmi Ikatan Alumni Universitas Pembangunan Nasional Jakarta Tahun 2020 - 2023','','text',2,'Site'),(3,'site.logo','Site Logo','settings/January2021/JVyA0cNCN3t8oSQNk6k4.png','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/January2021/RdIyXkoZkeVvX5TtGhow.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','IKAUPNVJ','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Jagatalumni website','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/January2021/LKYwRNR8l7Rjk1iKB8Sb.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'site.icon','Site Icon','settings/January2021/APw8wKmjuhfSCW6f4Jdx.png',NULL,'image',6,'Site'),(12,'site.email','Site Email','admin@ikaupnvj.or.id',NULL,'text',7,'Site'),(13,'site.phone','Site Phone','+6282331725998',NULL,'text',8,'Site');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'89bb2a9ae1229032f79c7bf2588f391c.png','Ini judul','Kira Adams','Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have it explained,\' said the Mock Turtle. \'Hold your tongue, Ma!\' said the Gryphon, \'she wants for to know what to do, so Alice went on.','/',1,'2021-01-04 04:20:21','2021-01-04 04:20:21'),(2,'54eda743b785cc7d7cad7dd7316f3e40.png','Ini judul','Chelsea Thompson','Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice a little shriek and a fan! Quick, now!\' And Alice was a sound of many footsteps, and Alice rather unwillingly took the hookah out of the way of.','/',1,'2021-01-04 04:20:21','2021-01-04 04:20:21'),(3,'07e2d74ae39456448206e429abf17ac7.png','Ini judul','Rex Bednar','What made you so awfully clever?\' \'I have answered three questions, and that if you like!\' the Duchess sang the second thing is to find it out, we should all have our heads cut off, you know.','/',1,'2021-01-04 04:20:21','2021-01-04 04:20:21'),(4,'83c005cb3b465358ea1799b21909d705.png','Ini judul','Enola Wilderman','Who for such dainties would not open any of them. However, on the look-out for serpents night and day! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Pigeon in a great interest in.','/',1,'2021-01-04 04:20:21','2021-01-04 04:20:21'),(5,'dcabedfc0835366f81cf37837db60a96.png','Ini judul','Danyka Heller','I didn\'t!\' interrupted Alice. \'You must be,\' said the White Rabbit. She was moving them about as curious as it didn\'t much matter which way she put them into a graceful zigzag, and was suppressed.','/',1,'2021-01-04 04:20:21','2021-01-04 04:20:21');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2021-01-04 04:20:15','2021-01-04 04:20:15'),(2,'data_types','display_name_singular',6,'pt','Página','2021-01-04 04:20:15','2021-01-04 04:20:15'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2021-01-04 04:20:15','2021-01-04 04:20:15'),(4,'data_types','display_name_singular',4,'pt','Categoria','2021-01-04 04:20:15','2021-01-04 04:20:15'),(5,'data_types','display_name_singular',2,'pt','Menu','2021-01-04 04:20:15','2021-01-04 04:20:15'),(6,'data_types','display_name_singular',3,'pt','Função','2021-01-04 04:20:15','2021-01-04 04:20:15'),(7,'data_types','display_name_plural',5,'pt','Posts','2021-01-04 04:20:15','2021-01-04 04:20:15'),(8,'data_types','display_name_plural',6,'pt','Páginas','2021-01-04 04:20:15','2021-01-04 04:20:15'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-01-04 04:20:15','2021-01-04 04:20:15'),(10,'data_types','display_name_plural',4,'pt','Categorias','2021-01-04 04:20:15','2021-01-04 04:20:15'),(11,'data_types','display_name_plural',2,'pt','Menus','2021-01-04 04:20:15','2021-01-04 04:20:15'),(12,'data_types','display_name_plural',3,'pt','Funções','2021-01-04 04:20:15','2021-01-04 04:20:15'),(13,'categories','slug',1,'pt','categoria-1','2021-01-04 04:20:15','2021-01-04 04:20:15'),(14,'categories','name',1,'pt','Categoria 1','2021-01-04 04:20:15','2021-01-04 04:20:15'),(15,'categories','slug',2,'pt','categoria-2','2021-01-04 04:20:15','2021-01-04 04:20:15'),(16,'categories','name',2,'pt','Categoria 2','2021-01-04 04:20:15','2021-01-04 04:20:15'),(17,'pages','title',1,'pt','Olá Mundo','2021-01-04 04:20:15','2021-01-04 04:20:15'),(18,'pages','slug',1,'pt','ola-mundo','2021-01-04 04:20:15','2021-01-04 04:20:15'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-01-04 04:20:15','2021-01-04 04:20:15'),(20,'menu_items','title',1,'pt','Painel de Controle','2021-01-04 04:20:15','2021-01-04 04:20:15'),(21,'menu_items','title',2,'pt','Media','2021-01-04 04:20:15','2021-01-04 04:20:15'),(22,'menu_items','title',12,'pt','Publicações','2021-01-04 04:20:15','2021-01-04 04:20:15'),(23,'menu_items','title',3,'pt','Utilizadores','2021-01-04 04:20:15','2021-01-04 04:20:15'),(24,'menu_items','title',11,'pt','Categorias','2021-01-04 04:20:15','2021-01-04 04:20:15'),(25,'menu_items','title',13,'pt','Páginas','2021-01-04 04:20:15','2021-01-04 04:20:15'),(26,'menu_items','title',4,'pt','Funções','2021-01-04 04:20:15','2021-01-04 04:20:15'),(27,'menu_items','title',5,'pt','Ferramentas','2021-01-04 04:20:15','2021-01-04 04:20:15'),(28,'menu_items','title',6,'pt','Menus','2021-01-04 04:20:15','2021-01-04 04:20:15'),(29,'menu_items','title',7,'pt','Base de dados','2021-01-04 04:20:15','2021-01-04 04:20:15'),(30,'menu_items','title',10,'pt','Configurações','2021-01-04 04:20:15','2021-01-04 04:20:15');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universities`
--

DROP TABLE IF EXISTS `universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universities`
--

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;
INSERT INTO `universities` VALUES (1,'UPN Veteran Jakarta','upn-veteran-jakarta','2021-01-07 17:29:00','2021-01-19 04:09:00');
/*!40000 ALTER TABLE `universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni_id` bigint(20) unsigned DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` enum('enable','disable','waiting') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','Web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$sUsrZ9W0Y3IKhiHSdbZEKuZnffT5SNHufXJlo6Qx3i5oEfnO51Toy',NULL,NULL,'rVdv6GMZdU0CdPVGEHeWvhzZZD1f2xu92MvQtIXRIyx6PBKfsvpCbhcBEwiO',NULL,NULL,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14',NULL),(3,2,'Risqi','risqir57@gmail.com','Romadhoni','nrp2049','islam',NULL,'2021-01-03','681.800.1190','(789) 825-7167','271.302.3383','94306 Javon Islands\r\nMuellerport, RI 63877',NULL,NULL,'21307',1,'users/default.png','2021-01-04 07:59:00','enable','$2y$10$a4vFWNrMwIxnFT.i9/Finuc0Z8i.gnbDdOYQ9bOaaseK0mdogvgF.',NULL,NULL,NULL,NULL,NULL,'profile-photos/zlLZzBeo50pjvlDfIf5LPBQ8OdAXePnVKTE4ZbKm.png','2021-01-04 07:59:01','2021-01-20 09:31:10',NULL),(4,3,'Developer','developer@mail.com','Web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-03 04:49:00','enable','$2y$10$8XdqaewCmTxH7oLwEtS6Vu4CwIMiR2UZ23O/iOpkco.Ua6Dy54LCW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-04 09:49:28','2021-01-04 09:49:28',NULL),(9,2,'Test','rehouse.id@gmail.com','Rehouse','nrp123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$Iml57/v3Felq8SQtAXFKV.SrwpK/0G.Pt2vsXcX.bWMF4WDZCpm9m',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-05 02:32:38','2021-01-21 09:22:38','2021-01-21 09:22:38'),(10,2,'aji','chaidesar@gmail.com','chaidesar','123123123','islam','banda','1990-06-08','081260921187','081260921187','081260921187','adada','banten','serang','11212',4,'users/default.png','2021-01-05 02:43:48','disable','$2y$10$iQOO1EAGQ09OvjrQ1/XgEO1T.PljXMmF22icUDK3YjTeiSu4lJ.R6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-05 02:43:24','2021-01-13 03:35:30','2021-01-13 03:35:30'),(11,2,'aji','aji@aji.com','testing','111222333444',NULL,NULL,NULL,NULL,NULL,'0808080808',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-13 10:34:00','waiting','$2y$10$rYxKF20ouSHFF3CkE07LGey55sabtOeKlT.8H/QKNuZTXnb3O2jk.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-13 03:23:54','2021-01-13 03:36:26','2021-01-13 03:36:26'),(12,2,'aji','kjo18764@eoopy.com','bmbmbmbm','111222333444',NULL,NULL,NULL,NULL,NULL,'0808080808',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'waiting','$2y$10$NzOHhBWCSGHSiC1aX2uM8.XXDx8lncKy03DY3kExGp6bVt7wEU1Z6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-13 03:30:27','2021-01-13 03:36:15','2021-01-13 03:36:15'),(13,2,'aji','aji.babastudio@gmail.com','chaidesar','123456',NULL,NULL,NULL,NULL,NULL,'0808080808',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-13 03:38:00','enable','$2y$10$CmIcbn.1DvvzIkHZTwnO8uq.MyukhFxIUWdb/mEveco32DNjWcF96',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-13 03:37:58','2021-01-13 12:58:34',NULL),(14,2,'Endri','endri.daswari@gmail.com','Daswari','93.203.106',NULL,NULL,NULL,NULL,NULL,'0818182974',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 06:14:55','enable','$2y$10$zVliHGnFLNqwcdh3o.XibOJpKzH/6URiCpUQDGtzV.3Sb1Sd1KTZ2',NULL,NULL,NULL,NULL,NULL,'profile-photos/Mb3ZKqcG6eEwYuPWpfYzuD9nfR2LynuSABTItngd.png','2021-01-18 06:13:15','2021-01-21 02:58:18',NULL),(15,2,'Eko','grg95.0312@gmail.com','Marhaendianto','93.211.060',NULL,NULL,NULL,NULL,NULL,'082298562350',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$I10HD3Z9Pf7CjrmuZquAHO.9MHzadbvicN.tvpv1hBVLsUeaxS51e',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 09:46:10','2021-01-21 02:37:04',NULL),(16,2,'Mochamad Taufik','pikonyaida79@gmail.com','Saeful Anwar','203.513.020',NULL,NULL,NULL,NULL,NULL,'087880119665',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 09:53:13','enable','$2y$10$gZQRjbxN6yJh8lvdG429xeziM8ARS4aATko/Xnv5dqa0LZrMCM9EG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 09:52:09','2021-01-21 02:37:08',NULL),(17,2,'Sudarmanto','anto.sutimboel@gmail.com','Sutimbul','96.101.691',NULL,NULL,NULL,NULL,NULL,'081703321122',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 21:23:43','enable','$2y$10$xRjAc7KDTf.2S3NltC0hyujftI5F2cLu4XnY4z/xPsF0sb54sUuWi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 21:23:08','2021-01-21 02:37:12',NULL),(18,2,'Agus','hariharyanto694@gmail.com','Haryanto ST','97.412.002',NULL,NULL,NULL,NULL,NULL,'08161832245',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$YLkYHiU8Ipi.4fEYzKWmX.1NxeTeKeIcyF0Z4fkPbjr0pkHF1Kmx.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 21:56:18','2021-01-21 02:37:17',NULL),(19,2,'Komar','komar.aminuddin@gmail.com','Aminuddin','92.203.052',NULL,NULL,NULL,NULL,NULL,'08159274824',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 22:55:37','enable','$2y$10$/n0k04tbru1ije/KrV1vLuLt.lsVpUTDKJoEhNxKTAnqkdjBr4vP6',NULL,NULL,'N2Yyre60IWRrzNJNnwLqLiDhQR6OfU0v3wJSYhCCY3PfBF3SXE2oY6sKpdKn',NULL,NULL,NULL,'2021-01-18 22:54:59','2021-01-21 02:37:21',NULL),(20,2,'Fendi','fendi.aprianto@gmail.com','Aprianto','1010311023',NULL,NULL,NULL,NULL,NULL,'081290118533',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:02:35','enable','$2y$10$xXPXgZQREup7Oca03MwgH.8YM.bFU9SJlALVXeieYBRTWsHYrOXpO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:02:19','2021-01-21 02:37:25',NULL),(21,2,'Wiwi','wsetyawati09@gmail.com','Setyawati','96.102.008',NULL,NULL,NULL,NULL,NULL,'085710087091',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:10:17','enable','$2y$10$ZMKuiMAa9.C31tIUeXiIdeVJljqgnWIx4qh8ceo/M8Vg1fL5WwfNi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:02:24','2021-01-21 02:37:30',NULL),(22,2,'ROCHMANI','rochmani_022@yahoo.co.id','ROCHMANI','200412022',NULL,NULL,NULL,NULL,NULL,'081381391004',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:05:48','enable','$2y$10$3aI2N1A5wukEnrRLtc1L5.gpdNxyuwT5P0Kt1jTwgCeP5nIe/TKDK',NULL,NULL,'TwsAL7GlxUvbFaTLDXRSsZgMtUMwGYpFr24EvlalkhQ5h2FSzSMgAyFDmFgo',NULL,NULL,NULL,'2021-01-18 23:04:58','2021-01-21 02:37:38',NULL),(23,2,'Muhammad','syamroyam434@gmail.com','Syamsuddin','1210411182',NULL,NULL,NULL,NULL,NULL,'085695676323',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$TxTMjSRV6zYYLJ4uCU6Tbu1Bn2fuA8VGy4a6LzClNlbKL8TdzqXCi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:06:22','2021-01-21 02:35:02',NULL),(24,2,'Ade','adesuprijanto@gmail.com','Suprijanto','96102185',NULL,NULL,NULL,NULL,NULL,'081210167965',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:10:36','enable','$2y$10$9CcFQFzK3cPq0llGWNzYs..XxEHBqdLIG8oolOCTHR9d4zfwAinmi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:09:59','2021-01-21 02:35:06',NULL),(25,2,'Endang','10endangsubianto@gmail.com','Subiakto','883064',NULL,NULL,NULL,NULL,NULL,'081277970951',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$Qs2HwF3BkwzOa7sj8ib16.lrhs6KjgQsmMfKc14z7s8HCJQmZnWde',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:18:58','2021-01-21 02:35:10',NULL),(26,2,'Setiyo','setiyo75@gmail.com','Wiranto','95201008',NULL,NULL,NULL,NULL,NULL,'081277483675',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:24:37','enable','$2y$10$GiEAN2ziWilEQGD3JryyuONzJ5ZBW1fz.mdHoIkjzjZTS3lp6x4UW',NULL,NULL,'EIiFv85GtFi7R3u1zvsHdYkpipAi3gEzOdItSzm0AdtnWxtZJhor8r6xHRGq',NULL,NULL,NULL,'2021-01-18 23:24:11','2021-01-21 02:35:15',NULL),(27,2,'Faisyal','icong.bs@gmail.com','Syayuti','206212012',NULL,NULL,NULL,NULL,NULL,'081218676782',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$C8LoYLio627eRutLdTe4O.0RmXc0rQOHPCtzVhqueVtC7tTQrb4bO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:29:20','2021-01-21 02:35:20',NULL),(28,2,'A Paul C','pitungj@gmail.com','Matondang','1990245',NULL,NULL,NULL,NULL,NULL,'08121108742',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:31:33','enable','$2y$10$vgYYu3Y.yXyccvmpdxrTw.5U4pu61cLiGpgtxzr/hwiZEvTayYoAq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:30:45','2021-01-21 02:35:24',NULL),(29,2,'Ari','arirakabitor@gmail.com','Hermawan','200.111.017',NULL,NULL,NULL,NULL,NULL,'085218470240',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:36:26','enable','$2y$10$KjYt8zLfuRFAzbRxZKTKp.k8hVBG7PTjo.oRpFAgztlS/O7VEnCmy',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:36:05','2021-01-21 02:35:32',NULL),(30,2,'Joyo','joyo777oke@gmail.com','Purnomo','95512013',NULL,NULL,NULL,NULL,NULL,'082122384088',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:37:52','enable','$2y$10$sbFIvFlmU5ujAR2PtlBK.Oomev1DiJ1Z9Ee8y83nMcC7FmBiNrMAa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:37:03','2021-01-21 02:35:36',NULL),(31,2,'Solitaire','rammozessolitaire@gmail.com','Ram Mozes','93.311.047',NULL,NULL,NULL,NULL,NULL,'081280251659',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:38:50','enable','$2y$10$3EA5jz2e8N3zQtyLSHPkNuhyoZExiUZjxG/rBT8x32jBZp5meJpTq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:37:47','2021-01-21 02:35:41',NULL),(32,2,'Mardi vicky','rullyvan013@gmail.com','rullyvan','98201013',NULL,NULL,NULL,NULL,NULL,'081383831398',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-18 23:59:22','enable','$2y$10$bKqyyRUijtPZx6rNSUaLDO9BNDSOQEJj57NWsemzMHnWjh0qOjo/u',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:58:25','2021-01-21 02:35:50',NULL),(33,2,'Fairus','fairusabadi74@gmail.com','Abadi','200 111 031',NULL,NULL,NULL,NULL,NULL,'081311055509',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$nV.p6bUvtN7WV9TS/JRfHu3y8VPp.s5nVku6MbCS75qXH9d7z7Ol2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:58:29','2021-01-21 02:33:04',NULL),(34,2,'HENRI','henrykahong@gmail.com','KAHONO','203.212.006',NULL,NULL,NULL,NULL,NULL,'08111898815',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 00:00:37','enable','$2y$10$hbz0O.3zo2GbT0s1I3Rqy.MhQcBfTlIrQLKi2nRYEchYIW4tzXFgW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-18 23:59:42','2021-01-21 02:33:10',NULL),(35,2,'Teddy','teddyrasyid528@gmail.com','Rasyid','96101564',NULL,NULL,NULL,NULL,NULL,'081398877718',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$w5FswqPRKrvucFTrOuNc2OzYjP.mUI4GVq6QPv9tRTNXfauI1HpGS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:01:10','2021-01-21 02:33:15',NULL),(36,2,'Rasmono','rasmono.raden354@gmail.com','Rasmono','M/910061',NULL,NULL,NULL,NULL,NULL,'081311131354',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 00:03:41','enable','$2y$10$TR4/qk3iZCR1fkrXvkNrzuaL8CvlelI6OIbsFw6.S28Hms.oO92yG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:03:04','2021-01-21 02:33:20',NULL),(37,2,'Marullah','dadomarullah80@gmail.com','Dado','99.111.034',NULL,NULL,NULL,NULL,NULL,'085219013509',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 00:06:27','enable','$2y$10$nLabGnNux9Fw47VvcEzKn.4VV/82jp61YUswkOQVaBIaOxtCty6lG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:05:14','2021-01-21 02:33:26',NULL),(38,2,'Budi','boeds92032@gmail.com','Isnanto','92202032',NULL,NULL,NULL,NULL,NULL,'081224203767',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 00:16:34','enable','$2y$10$nPH58I14GG3lJdeBD9u8POGbkadgqaz3w1dmS0/R6cNptq1BUvZMG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:16:02','2021-01-21 02:33:31',NULL),(39,2,'Naufal Yudha','naufalyt10@gmail.com','Triadi','1610311029',NULL,NULL,NULL,NULL,NULL,'082122726916',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 00:17:54','enable','$2y$10$RUwKrJZDw.EkZaUl7dTIR.8/KZOhW3XVp9xoHnZY66Grzsay94/tW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:17:32','2021-01-21 02:33:46',NULL),(40,2,'machmud','vendiek@hotmail.com','efendi','1325',NULL,NULL,NULL,NULL,NULL,'081908602459',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$uHPOIWIEL.hPuG9nFZohWe5SIqAvYCYJKCoG/27Fi3V8.8OR41lZa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:21:46','2021-01-21 02:33:51',NULL),(41,2,'F X Dwi','nug2009@yahoo.com','Nugroho','911344',NULL,NULL,NULL,NULL,NULL,'08159422428',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 00:35:02','enable','$2y$10$tP.aHHM1gSrPIHyUfjV0TudJEAgwkluAFXo11XuRGvcWtYiFGHhui',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 00:28:27','2021-01-21 02:33:57',NULL),(42,2,'Taofik','tovikhidayat87@gmail.com','Hidayat','1210411017',NULL,NULL,NULL,NULL,NULL,'085959862270',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 01:15:25','enable','$2y$10$yiw9R/90GVLpekac.0poruNS5vOD19yozGLBagQXBoQhFJUHM7iou',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 01:15:04','2021-01-21 02:34:04',NULL),(43,2,'David','david.santoso412@gmail.com','Santoso','1010311027',NULL,NULL,NULL,NULL,NULL,'081383933282',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 01:18:44','enable','$2y$10$b05mcZoZaWbtT8MDF5OfaOW8nROvqstTGkpmFb84kufqYgwlbZiEu',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 01:18:17','2021-01-21 02:30:37',NULL),(44,2,'Theo Sinaga','theosinaga@yahoo.com','SINAGA','906.092',NULL,NULL,NULL,NULL,NULL,'081318300070',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 01:25:01','enable','$2y$10$YcgJf0fNaIJ57hc0f0c7xedUarxcg9mhPjao32F70ZXVA2h0ShBpW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 01:20:25','2021-01-21 02:30:43',NULL),(45,2,'Tony','tonypoluan@outlook.co.id','Poluan','880046',NULL,NULL,NULL,NULL,NULL,'085292647770',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$XdiCy8n/HEhqlk/cDpwokub0dCCZ0qo5OhfbmbEEw75Pgi0OfdhxS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 01:32:11','2021-01-21 02:30:48',NULL),(46,2,'Muhamad','muhamadidris838@gmail.com','Idris','1610111191',NULL,NULL,NULL,NULL,NULL,'082213203544',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$qXMFLIXTy1/ODy9gtEQr0.u7p9nMIAGl83TrR4oCbr5pFn2AFKB3a',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 02:14:01','2021-01-19 03:24:54',NULL),(47,2,'Khairunisa','nessachairunissa@gmail.com','Hilyati','1310512091',NULL,NULL,NULL,NULL,NULL,'081316107915',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 04:28:03','enable','$2y$10$cZj.rQmF.vYQWFEaFkd0leW7eBjGKSJ6BynuEXQtwZoj2TeC/kxTS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 04:27:34','2021-01-21 02:30:55',NULL),(48,2,'Rudy','rudy.asooy@gmail.com','Asooy','93.101.657',NULL,NULL,NULL,NULL,NULL,'08129476901',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 04:30:17','enable','$2y$10$1Bu3o1fQahYa56JziI06IOuYU4dGnNvVbqP7PGjS1jU2Pg1RkbMAC',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 04:29:37','2021-01-21 02:31:01',NULL),(49,2,'Hawirnan','hawirman10@gmail.com','Harun','913039',NULL,NULL,NULL,NULL,NULL,'082389311526',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 04:40:32','enable','$2y$10$wsTEkcDMmb/HfjMmWxD6feuBnzJUOC8I0Rg4k103mG83e452W31fG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 04:39:29','2021-01-21 02:31:08',NULL),(50,2,'Martyr','martyrike@gmail.com','Ignace','93.211.050',NULL,NULL,NULL,NULL,NULL,'081294738250',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$heWcLSeBbN7ZTa1ZP3hs0eLnzDe7fE.n5hBVXnoAh0nUeL9G3rAsa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 04:49:25','2021-01-21 02:31:16',NULL),(51,2,'Bibit','bibit.hariyanto@ymail.com','Hariyanto','93411020',NULL,NULL,NULL,NULL,NULL,'087877900822',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 05:08:59','enable','$2y$10$heE/vEHfQCPRL1RWfPciguG7sZAOV3dkcEsTe6TYVXi9VutMWKxhq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 05:00:47','2021-01-21 02:31:22',NULL),(52,2,'Dini','dsaraswati69@gmail.com','Saraswati','94.101.263',NULL,NULL,NULL,NULL,NULL,'081289273993',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 05:17:13','enable','$2y$10$w8pEg71ooOFDk8vSBDoUmugvAiP5SwfOLLcirWaJuZTNBTi2LPhnG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 05:15:26','2021-01-21 02:31:33',NULL),(53,2,'Hesti','hesti_081@yahoo.com','Septriana','200101025',NULL,NULL,NULL,NULL,NULL,'081290432894',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 05:50:28','enable','$2y$10$c61zCP2xOhX0bp5aSUyNBumS.xSBiiLLKHl9DYwSfmdW3XIzEwHrW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 05:49:12','2021-01-21 02:31:52',NULL),(54,2,'Muhamad','kotabagus@gmail.com','Zainal','872086',NULL,NULL,NULL,NULL,NULL,'089636435377',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 06:19:10','enable','$2y$10$naEjcGOVBIWirNhmuzNRluIXn.OS.diktUvK.o.loZxzl5mIKX86y',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 06:00:47','2021-01-21 02:28:38',NULL),(55,2,'Dasril','dasrilcece@gmail.com','Dasril','93211062',NULL,NULL,NULL,NULL,NULL,'081212756918',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 06:07:03','enable','$2y$10$hLAUQ8tX9M.PSPjDYNZwxu.NhqA5HgugBq0Ji07/Nxf2EJiwLyJ9.',NULL,NULL,'m1LLtysnumWncsY5wIlSIgIwoFOG1oxsMpnlkZDG8ffnyQ6LDwNVlCEitIFH',NULL,NULL,NULL,'2021-01-19 06:01:18','2021-01-21 02:28:43',NULL),(56,2,'everon','everon22@gmail.com','aer','206.213.003',NULL,NULL,NULL,NULL,NULL,'087786709006',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 06:24:10','enable','$2y$10$9i9fLxyMLKXzy33a/lPACeJBNHxlHufsIzwKVhZeQIaQ.YrXgd5bK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 06:23:41','2021-01-21 02:28:49',NULL),(57,2,'Mohammad riza','rizaadx@yahoo.com','Firdaus','906012',NULL,NULL,NULL,NULL,NULL,'081281180998',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 06:45:28','enable','$2y$10$qwQMw2d.JublCZIrgqn9XugTCIC83erbnJ95.7Ay03ejiaH8O7dO.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 06:43:41','2021-01-21 02:28:56',NULL),(58,2,'Endratno','endratno74@gmail.com','Ubiyakto','94.111.020',NULL,NULL,NULL,NULL,NULL,'081298363238',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 07:35:59','enable','$2y$10$w.NWBsLbGlTjoczAfWOmf.Bh7/48UJtYEZdIv50Bap50xspGYefAm',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 07:35:20','2021-01-21 02:29:02',NULL),(59,2,'Chaidir','c_achmad79@yahoo.com','Achmad','97.102.110',NULL,NULL,NULL,NULL,NULL,'081289666691',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 07:45:20','enable','$2y$10$YmGiIPm1nKCT8Vp2Haisp.Xyc18NJ2fYPFWB1ovvqvO8GJXeh4Auy',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 07:43:13','2021-01-21 02:29:07',NULL),(60,2,'Verly','quick@jagatalumni.com','Quick','93.211.022',NULL,NULL,NULL,NULL,NULL,'081380999992',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 07:46:27','enable','$2y$10$CAhYoz2YsY8RH58p7PtFfeLzqlfu8Ty5/ZtPRSUl6dSMrW.DN0CxK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 07:44:34','2021-01-21 02:29:18',NULL),(61,2,'Bahrul','bahrul.daray31@gmail.com','Ulum','911319',NULL,NULL,NULL,NULL,NULL,'08121092982',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 08:20:03','enable','$2y$10$47P0ZbZwP8lGDL2X42QDPezqpakM5YH940EGC5QM/EBWuBdvnCfoG',NULL,NULL,'aHMALRtUiaBPM3liA8OXpRPTQvrgEjXBHZRu9TGFqAasDSJON4qZkZWDHYbS',NULL,NULL,NULL,'2021-01-19 08:16:23','2021-01-21 02:29:20',NULL),(62,2,'Rachman','grg990367@gmail.com','Yudistira','97.102.217',NULL,NULL,NULL,NULL,NULL,'08118711332',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 08:34:28','enable','$2y$10$NTW0Oas9.ua201t0yNHrjOevGr0fpM8ebMd.Lud//G5jw1BxjdSbi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 08:33:28','2021-01-21 02:29:27',NULL),(63,2,'Hendri','camar311@yahoo.com','Wijaya','6747',NULL,NULL,NULL,NULL,NULL,'081318840359',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$WvPHypsnS5du08DqdiPhjepiiPJBeWJ9Em5v9GmNmE13UgBYW3Ml2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 08:46:47','2021-01-21 02:29:38',NULL),(64,2,'Jonius','john.cheotank@gmail.com','Sihotang','202211007',NULL,NULL,NULL,NULL,NULL,'085891325469',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 09:57:12','enable','$2y$10$f66KHKFaPbFakXFKKcHJdeWgdwVXoELs2cW6xqGnCaJbGfRY.st7m',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 09:56:20','2021-01-21 02:26:41',NULL),(65,2,'Siti','sitisaroh7552@gmail.com','Saroh','93.211.002',NULL,NULL,NULL,NULL,NULL,'087884477266',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 10:07:16','enable','$2y$10$bPyJ/3jm48zTRGNBMA4..Ot79qYrH/GSwg/PrEYPYGMRVBkiPdBMu',NULL,NULL,'XamUCbrbkrb4gDrcCOwPfmTfYDkYY36L8LTGFvg7xguiB9TKZAum78Dms11Z',NULL,NULL,NULL,'2021-01-19 10:04:10','2021-01-21 02:26:46',NULL),(66,2,'Totok','tt.sofianto@gmail.com','Sofianto','902122',NULL,NULL,NULL,NULL,NULL,'08170818188',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 10:17:39','enable','$2y$10$rsloX3BX1v69AK5JrifMQes8gBBPNmxb7DS09yre1TQDwW9g3cvEG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 10:16:55','2021-01-21 02:26:50',NULL),(67,2,'musrifah','riefa_revo@yahoo.co.id','yudiati','917218',NULL,NULL,NULL,NULL,NULL,'087875445500',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 14:55:26','enable','$2y$10$6eXt.ZoliYVHKqHkqkj/ku3skrb4pUZjS8mSC4H/mRY.p8KKf9SuS',NULL,NULL,NULL,NULL,NULL,'profile-photos/CIckGfZwxYse4VOHUMfx97KuUCrfa4rLjiAB5RL2.jpg','2021-01-19 14:20:57','2021-01-21 04:06:13',NULL),(68,2,'Imran','iyantabrani098@gmail.com','Muchammad','1832',NULL,NULL,NULL,NULL,NULL,'082172179167',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 15:50:38','enable','$2y$10$LXrEYTfspd8Q0XLxVG.0hOu3NglzdsQlL7sUhLkwGeDGX7ROhxc/e',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 15:17:12','2021-01-21 02:27:00',NULL),(69,2,'Imam','cahyonoimam9@gmail.com','cahyono','9505401',NULL,NULL,NULL,NULL,NULL,'081310117745',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$XEK/vh88PA3cdqcIfF4gseatmnt112UDJPSTjUD87pwOn1BmvGaQa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 15:19:33','2021-01-21 02:27:07',NULL),(70,2,'Ambar Lestari','a3barlest@gmail.com','Sumiarto','3811T',NULL,NULL,NULL,NULL,NULL,'Ambar Lestari',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 15:32:04','enable','$2y$10$rT9wFOE6DRJ4E8v4rOc2ruvsZea0gLBKJG9JFm2zl6HvgBfU9ZoHe',NULL,NULL,'FFZPghXjUfAyNpZDeFPpho8en7txCTfvjBo0WlZxRY3dWZCDLY1c5VrsaYRF',NULL,NULL,NULL,'2021-01-19 15:31:31','2021-01-21 02:27:13',NULL),(71,2,'Fachwan','fachwanrudy@gmail.com','Arudy','2240',NULL,NULL,NULL,NULL,NULL,'081285452313',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$I2HPuO78dsEakOzEIXniPOL7dGcEQuvLSX1MPuqYN7f5B04f9Ai9y',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 15:45:00','2021-01-21 02:27:20',NULL),(72,2,'Cucu Juanda','juandasaputra104@gmail.com','Juanda Saputra','912.125',NULL,NULL,NULL,NULL,NULL,'081299222098',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 15:58:33','enable','$2y$10$eAAjnpvHO73HNhmZK.NvW.pe1vwBHotf7jCNW2x.nhwQval2Ov9Fq',NULL,NULL,'iCw8QX7CFrKg0QqFJU5yBqUsZOiLlxVptMg7Q8Sjujt7Uvgc21XcTam8my5o',NULL,NULL,NULL,'2021-01-19 15:54:41','2021-01-21 02:27:31',NULL),(73,2,'Yelsi','yelsiyunelsi@gmail.com','Yunelsi','912146',NULL,NULL,NULL,NULL,NULL,'0i3806422903',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 16:04:21','enable','$2y$10$kKeOFcRjel2oGS8oQuS70umOe1bt.U0rQvR6n7bI2hi0iKu.ODh9W',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 15:58:24','2021-01-21 02:27:37',NULL),(74,2,'Ali','maskual@yahoo.com','Maskur','871929',NULL,NULL,NULL,NULL,NULL,'08128021250',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 16:03:22','enable','$2y$10$ngobk2fbovDzr0ENCOoqjuzy3Y/4x5r75AmmqejTHwiOZEOaeT/km',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 16:02:36','2021-01-21 02:23:55',NULL),(75,2,'Agus','aguspurwanto71mail.com@gmail.com','Purwanto','912096',NULL,NULL,NULL,NULL,NULL,'085624491755',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 16:41:43','enable','$2y$10$mHmPuLrj6tUelZIj5/hgsO.2uHvJAYqD115piNas62H.UJXzw.XUy',NULL,NULL,'tBM2VvRBBmL11tuIRYW2DUE3A1L6JKIYYp2UkKGQ0emu1JdSDVgAuYttz5wH',NULL,NULL,NULL,'2021-01-19 16:37:03','2021-01-21 02:24:00',NULL),(76,2,'Andry','andririyanto2003@gmail.com','Riyanto','71011041',NULL,NULL,NULL,NULL,NULL,'08127045403',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 16:59:18','enable','$2y$10$z/hI6h1EtMj5kfIrqP6AMukGfz9wNdhQ5fMgFtKDmMi9Ju4pVkHVO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 16:58:42','2021-01-21 02:24:05',NULL),(77,2,'Wiwi','akuwidya@yahoo.com','Widiyawati','912139',NULL,NULL,NULL,NULL,NULL,'+32 477 44 72 39',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$HRA10ZJVzZWlnVsJmPu3I.ltlt8yMN6RcmOxMxfM9KNllzbvecliO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 18:04:11','2021-01-21 02:24:09',NULL),(78,2,'Hari','harifsulistiawan@yahoo.co.uk','Sulistiawan','E41.1479/M',NULL,NULL,NULL,NULL,NULL,'0816730482',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 18:50:21','enable','$2y$10$M6VGoxs/HWZesO3DI.UV.eoYMy6/j8VPvOjR51aUKTU2b3FOE4.7q',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 18:47:52','2021-01-21 02:24:14',NULL),(79,2,'Yuni mahsa','yuni.astutiningsih@hanes.com','Astutiningsih','91284',NULL,NULL,NULL,NULL,NULL,'081298190279',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$UfS36CW.j92sUEh8fAFH4OTk09lrYGuQfl01HZUaftXsd1T4f/hcC',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 20:25:03','2021-01-21 02:24:21',NULL),(80,2,'Herman','herman.pm203@gmail.com','Prasojo','912083',NULL,NULL,NULL,NULL,NULL,'089680125616',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 20:31:37','enable','$2y$10$D0xohE25TMmzg6ATtBbUgeg8xyecQS8Lo2sVswqg3wDH2bd4f/7NS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 20:30:22','2021-01-21 02:24:27',NULL),(81,2,'Yelsi','yelsi1@yahoo.com','Yunelsi','912143',NULL,NULL,NULL,NULL,NULL,'083806422903',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 21:28:28','enable','$2y$10$rjbqg/SBH8ii/JjPmExmZ.cvaMF5lMGOkQ0iZf9vM0CmvCyTYRqt.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 21:27:11','2021-01-21 02:24:32',NULL),(82,2,'Hartono','hartonolucky75@gmail.com','Sukmo Tirto','93.211.055',NULL,NULL,NULL,NULL,NULL,'0818188577',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$lvf2olRzrLtM4CAuxZZUce3FUUdbmeiUbGETd3ezN8vLQM.r8O5Q2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 21:31:12','2021-01-21 02:24:38',NULL),(83,2,'R. Harjadi','harjadi.s@gmail.com','S','912031',NULL,NULL,NULL,NULL,NULL,'0818171555',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 22:00:22','enable','$2y$10$Jt7qs2wvCuXCVvM56j5wXufWWf3Tb8jkTbUZoCYNqhjLhcin5C8Bq',NULL,NULL,'4QctJ7yyUyfFYAV4yVMxE7n09t8grGjzUj2Uz6cxrTEMi3NGiNJiPwqbWbrY',NULL,NULL,'profile-photos/mGy35ig1ko9YA43eDe7edoO8zMATuLAIlBF2Y6MV.jpg','2021-01-19 21:58:04','2021-01-21 03:01:17',NULL),(84,2,'Ana','anakusumadewi72@gmail.com','Kusuma Dewi','912117',NULL,NULL,NULL,NULL,NULL,'085282372223',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$lPV0DB2goJTdUcTbDOlM8OGIiAOlc92EMPB0Rni5VGM0vBcOsftGe',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 22:29:44','2021-01-21 02:20:46',NULL),(85,2,'mamik','mamikrahayu79@gmail.com','rahayu','97511017',NULL,NULL,NULL,NULL,NULL,'08118708808',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$OOK/YbHyTG1G05P/pRitJ.C7rUHXjFSvBGXT8gKFyL9lxpE7IEywW',NULL,NULL,'HTL8Og4BhSiM2MxMgVScaEjTbszoA9ispxFjYqFF59eMsokR1XP9rk14pORk',NULL,NULL,NULL,'2021-01-19 23:23:27','2021-01-21 02:20:50',NULL),(86,2,'Agus','Agus.prabowo@hotmail.com','Prabowo','94213054',NULL,NULL,NULL,NULL,NULL,'0818755040',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$VhAWrcpPrxb7WTzn4vpCsedIwkgAFTUbwULhM5A7uOm0hyxKzTO02',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 23:31:10','2021-01-21 02:20:57',NULL),(87,2,'Agus','namakuhermanto@gmail.com','Hermanto','92204015',NULL,NULL,NULL,NULL,NULL,'081317520566',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 23:32:30','enable','$2y$10$SSy3aZKIWb8eXCR4c2dXOOA.V7nmw.NKpoSz2SPkDcOefxpl1WuVq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 23:31:39','2021-01-21 02:21:03',NULL),(88,2,'Olivia','maharanie.78@gmail.com','Maharanie','96.401.035',NULL,NULL,NULL,NULL,NULL,'087885754260',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 23:39:42','enable','$2y$10$u8VCghe8MGFiAwzLYoNabOlZU./nehWVUhBgcoqcKFERgFH//cErC',NULL,NULL,'sRKLcc7DduxnQeosvdF6uMZrlpCByLSgDOtkGhvdbxU1e3Hl380MJ8KJVHto',NULL,NULL,NULL,'2021-01-19 23:38:52','2021-01-21 02:21:11',NULL),(89,2,'Mohammad Rabil','rabilfernanda270@gmail.com','Fernanda','1610501029',NULL,NULL,NULL,NULL,NULL,'085155221223',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-19 23:52:39','enable','$2y$10$zWdEuFwgNpI9O8DW8P.gd.d2kopfXEmPl.0WVD5IV7Ff5EvZnjdYi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 23:52:00','2021-01-21 02:21:16',NULL),(90,2,'Henny','nienhw99@gmail.com','Widiastuty','93203117',NULL,NULL,NULL,NULL,NULL,'085265587870',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$zMHv2KLx7bCnYZq9CKtZz.XLP42r.xHUpOOMsj8aflO6faOfbAyK2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 23:53:51','2021-01-21 02:21:23',NULL),(91,2,'Dianita','dianita.aulia@gmail.com','Aulia','1210611092',NULL,NULL,NULL,NULL,NULL,'089631910200',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$DHn4D5cAHuDouEBSuPK9se7PtCjhWljpNXMaLMNdSDxTMIQdQqPvq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 23:58:54','2021-01-21 02:25:14',NULL),(92,2,'YENNY PANCA','yhepanknech@yahoo.co.id','DESSIARISANTI.S.','96.401.053',NULL,NULL,NULL,NULL,NULL,'082148000722',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$SYRo1HM6CMkxwyKBPpiOJOHrvkdGkVfagr3MIUXV6vAjhr5JI/i2G',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 00:06:01','2021-01-21 02:22:08',NULL),(93,2,'bambang','chimpil@yahoo.com','d. raharjo','94213007',NULL,NULL,NULL,NULL,NULL,'081310222243',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 00:21:57','enable','$2y$10$LMPuGkb8.t0V2sAkLyzI.u.oceuPNMwXQTYcmBGaTql4aqTqTLPca',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 00:20:48','2021-01-21 02:17:29',NULL),(94,2,'Susilo','susilo@president.ac.id','Sabar','94213036',NULL,NULL,NULL,NULL,NULL,'082299225555',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 00:41:26','enable','$2y$10$ebMCbZzIMjiqqXys7iQBf.BsNfo.kqdil1vWaj7elaKcK9GJucBxS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 00:40:49','2021-01-21 02:17:34',NULL),(95,2,'ade','kusmanaade30@gmail.com','kusmana','92101645',NULL,NULL,NULL,NULL,NULL,'0818667776',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 01:04:55','enable','$2y$10$d1Gs8gwiSN11.2lnRCLKn.lRVuIataANRUokwCYT/D5sANpPDMvnm',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:04:02','2021-01-21 02:17:39',NULL),(96,2,'Made Taufik','made.hidayat@gmail.com','Hidayat','4468',NULL,NULL,NULL,NULL,NULL,'081318247459',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 01:20:50','enable','$2y$10$6XZAPscXnr1gRvsDkMSOGeEErIN1FU/uvFHaCz97Ny14HY9Mg2kju',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:13:37','2021-01-21 02:17:44',NULL),(97,2,'M Eko Priliawito','Eko.priliawito@viva.co.id','Eko Koting','99102042',NULL,NULL,NULL,NULL,NULL,'081314233338',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 01:17:53','enable','$2y$10$/hKeWX8y3aRGPH7JE.YTTe7aO9KgWevn548qLOj8h2Zip7viNjCpm',NULL,NULL,'0hhBuludyoheAhijykKGPTOimgUBbAHglhsrzW9AGGNBgAjdCgkZ2iPpXC9p',NULL,NULL,NULL,'2021-01-20 01:16:56','2021-01-21 02:17:49',NULL),(98,2,'Dwi','dwice0609@gmail.com','Ana Sari','98101178',NULL,NULL,NULL,NULL,NULL,'082298072123',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$agE7kyuddSp5nnttB4nEBOle/5mcJRQr.yLwPTp1HUn/prIS8eFBq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:21:42','2021-01-20 01:28:35','2021-01-20 01:28:35'),(99,2,'Parwi','parwisarkawi@gmail.com','Parwi','96101570',NULL,NULL,NULL,NULL,NULL,'085313838455',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 01:32:48','enable','$2y$10$bbkrg9CIHHisyb8VJVNWK.yzg8dtv1XwN36MOi7gf/3ON6AO5MrRW',NULL,NULL,'RPYnZaGhyei2nw7aw5RaxThfuz5jDSXGcOL6rkzIPU2JUbwXxNtBsXCyOkG2',NULL,NULL,NULL,'2021-01-20 01:28:27','2021-01-21 02:17:58',NULL),(100,2,'Ambar','rurryambar.205@gmail.com','Rukmi S.','4490',NULL,NULL,NULL,NULL,NULL,'08170971917',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$ZZuoo525cK418XnRnHlqBujeGGxiZsKXNLI.LaTIFIcjyg5PqWZmu',NULL,NULL,'zUEAlrYJn8mAjr33uhbk2mpHw3NUc2XAwyuKMlFs9pqwBIdodf3fJvSBqc3o',NULL,NULL,NULL,'2021-01-20 01:32:35','2021-01-21 02:18:05',NULL),(101,2,'Aditya','aditya.ants@gmail.com','Hardianto','200211025',NULL,NULL,NULL,NULL,NULL,'08125126544',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$0mcvkpYKFiG9C3mB69DKbeZBI1kYjC1zwxScVJAfsocBU8qpyLs8.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:37:35','2021-01-21 02:18:15',NULL),(102,2,'Achmad','roden0707@gmail.com','Baharuddin','19702',NULL,NULL,NULL,NULL,NULL,'roden0707@gmail.com',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 01:40:18','enable','$2y$10$akgEbl8zQh7e8REhG/QYpOQCanIRYxqwGNDIuwGKe/TkNGggEg/vG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:38:50','2021-01-21 02:18:20',NULL),(103,2,'Dody','dody.sudarmadi@gmail.com','Sudarmadi','94112085',NULL,NULL,NULL,NULL,NULL,'08561200881',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 01:44:05','enable','$2y$10$kHiuwastphtXlquyfwjyjuyHOdYKDAKxcEeq.LcFwbW4.e.AxpLVG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:42:24','2021-01-21 02:19:16',NULL),(104,2,'Rachmat','rachmatfebriana@gmail.com','Febriana','0810112014',NULL,NULL,NULL,NULL,NULL,'085752942010',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$le9NZmB44Bl4jUOPBKG.FueifnHa0t17wtLND1nOniP6DgCrAvKS.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 01:54:16','2021-01-21 02:14:30',NULL),(105,2,'Fransisco kambuy','fkambuy@gmail.com','Sisco','0910713038',NULL,NULL,NULL,NULL,NULL,'081284926339',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:03:39','enable','$2y$10$wfX2jaSKXlcfwVfwrzyPPu73JTIuZjcyVQ9YP./lsrO6By6/X9eFm',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:00:54','2021-01-21 02:14:36',NULL),(106,2,'Rahadian','rhdn.yuliusman@gmail.com','Yuliusman','94.204.091',NULL,NULL,NULL,NULL,NULL,'08128081371',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:17:18','enable','$2y$10$0vbjGS.x9wh3iQNiCeqKbOM5g3HCo243BqHVDcfE7SsOB.peQlmPC',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:15:27','2021-01-21 02:14:43',NULL),(107,2,'Totok','totok.jenggot2000@gmail.com','Purnomo','99.402.305',NULL,NULL,NULL,NULL,NULL,'081389753547',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:17:04','enable','$2y$10$8.YWme1jpRNDFlTQ5onkEeR4cvZqhBDiBA7JO/d90U10.11g9kk0K',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:16:08','2021-01-21 02:14:49',NULL),(108,2,'Sudarto','atosudarto64@gmail.com','Ato','92.204.111',NULL,NULL,NULL,NULL,NULL,'082216207746',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$XZa7Wx1bdd.vWaTqpodQEu3j8BpHunYMkPQzg6Dhm/.uKoE07nNHO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:17:05','2021-01-21 02:14:54',NULL),(109,2,'Agus','agusprasetiyoap@gmail.com','Prasetiyo','94.102.114',NULL,NULL,NULL,NULL,NULL,'083813581203',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$.fL0MfFx2gvN.kHInqEVR.Ndr7mPHW71cgApw0pmV8igfaDhVlQ9a',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:17:08','2021-01-21 02:14:59',NULL),(110,2,'Sri','suharwatisri21@gmail.com','Suharwati','96.401.028',NULL,NULL,NULL,NULL,NULL,'087887192567',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:29:18','enable','$2y$10$7inMpPrKWol8MIGalq8SfuAAqs0pX6lJ8JL6m5CLeAcG0sUbBF3Y6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:27:37','2021-01-21 02:15:10',NULL),(111,2,'Syarah','rara.1one@gmail.com','Tuti Alawiyah','207711081',NULL,NULL,NULL,NULL,NULL,'087873630878',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$ta7vTu1Y24wGNY2KKoc/VOUdCgcL/Br3hSNPu8i56TusDD3972vo.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:32:45','2021-01-21 02:15:17',NULL),(112,2,'Achdiat','Achdiatnurviansyah.ad14@gmail.com','Nurviansyah','96.402.126',NULL,NULL,NULL,NULL,NULL,'083897834486',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:43:31','enable','$2y$10$poLOPBv2g9xmWwnD0rkY2.r3x4lqoyJ1wNK8TOOccEhqc60exyOz2',NULL,NULL,NULL,NULL,NULL,'profile-photos/wCaxhX8R8k1js98Yt7VRuoB3WVhOmJQMjRgKznCY.jpg','2021-01-20 02:43:00','2021-01-21 02:26:54',NULL),(113,2,'Tono','tono.zizou@gmail.com','Rachwidartono','94112006',NULL,NULL,NULL,NULL,NULL,'0818825959',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:46:03','enable','$2y$10$bDMff3/7uBItqsJtZE6KeekxdJzb092NDVL3/i.uIviAgxo5A9nN2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 02:45:12','2021-01-21 02:15:42',NULL),(114,2,'Muhammad','muhammad.upn@gmail.com','Muhammad','1010111030',NULL,NULL,NULL,NULL,NULL,'085287745340',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 02:51:08','enable','$2y$10$PZTQrpAahwYur59Jf8mGue2gvnhpD4CDrk7nnmZSZ4ApqGkD.OVeG',NULL,NULL,'WVV7VjU5ckbHy23ZgRxBuBPqEHlGqkQDR0wafkBfJFSS12ueZdazBvgaIgt9',NULL,NULL,NULL,'2021-01-20 02:50:09','2021-01-21 02:12:04',NULL),(115,2,'Muhammad','dafie.alhasyim@gmail.com','Ghaddafi Al Hasyim','204511075',NULL,NULL,NULL,NULL,NULL,'081311169356',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$VpJo3bvDdvrAWr7FKN.CPenx6qtLwOa7SE49eZ.cI17PAnImh5fju',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:09:52','2021-01-21 02:12:10',NULL),(116,2,'Sulaeman','sulaimanbr17@gmail.com','-','94111171',NULL,NULL,NULL,NULL,NULL,'081317221898',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:13:56','enable','$2y$10$erSVVaZ0HbBWWr8zk4K8f.cHtzgetAD9Ag7nRvSBkf6NCj82BeSOK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:12:33','2021-01-21 02:12:14',NULL),(117,2,'hendri','zooalfa@gmail.com','guntoro','93213030',NULL,NULL,NULL,NULL,NULL,'081219039035',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:15:12','enable','$2y$10$fx76J1GuZTO.SjKwb7qxy.cHrIYrB/R8yUvoYhuXMOgWSFyGeHn/K',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:14:32','2021-01-21 02:12:20',NULL),(118,2,'Firdah','firdah_z@gmail.com','Zairani','895267',NULL,NULL,NULL,NULL,NULL,'08111990292',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$TZDG96.bfV7dYpukJTOiV.m8VR3Q5CVUN1ywR0WAjcFDFVKEd7p.i',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:15:55','2021-01-21 02:12:25',NULL),(119,2,'Kristiawan','kristiawan.hertanto79@gmail.com','Hertanto','98402005',NULL,NULL,NULL,NULL,NULL,'08128691784',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:22:36','enable','$2y$10$yXdFUS1bwPagNkaoAaaSbel9RVlmBMJ6gNLn3erEH/C9WsVV25l.2',NULL,NULL,'6Dm7Q2F2KWjYyU6E7x49c9MsPTyI1qwewMqTHYmciS6f1DxV3vobPZTipQKv',NULL,NULL,NULL,'2021-01-20 03:20:13','2021-01-21 02:12:31',NULL),(120,2,'Dwi','dwisoe2810@gmail.com','Soelistijanto','93213042',NULL,NULL,NULL,NULL,NULL,'08128031952',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:26:19','enable','$2y$10$tBZ.tSszxialEhM7z/v6Qu4Ll3jobG.UGyASb6YqHnDyc2wX/83zG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:24:18','2021-01-21 02:12:40',NULL),(121,2,'Bambang','bambangpujicahyo@gmail.com','Pujicahyono','93213043',NULL,NULL,NULL,NULL,NULL,'0816344120',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:31:02','enable','$2y$10$/Bl1LKEVYPi7qI9jZULofeN5yl0tO7BLq36GB8lIY4/qwyu82QT2e',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:29:49','2021-01-21 02:12:48',NULL),(122,2,'Eko Teguh','e_karyono@yahoo.com','Karyono','881140',NULL,NULL,NULL,NULL,NULL,'08115192212',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:33:53','enable','$2y$10$TOj4bwFA2RvpKBuVhtyZx.5Md1P.wZ6TdnnUoiIdrpTGaSVDxoTKS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:31:44','2021-01-21 02:12:54',NULL),(123,2,'Setia','aspirasi164@gmail.com','Gunawan','93.112.065',NULL,NULL,NULL,NULL,NULL,'08129662008',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:38:39','enable','$2y$10$vzL3ioozAkcG1GP8/n9PHuhzbN4psSV3O5wfau0Pc9u/4oAXPjCM6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:37:21','2021-01-21 02:13:15',NULL),(124,2,'Muhammad','m.zuhron@gmail.com','Zuhron','93213017',NULL,NULL,NULL,NULL,NULL,'6281266661021',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:46:35','enable','$2y$10$oOWqMkOVVmh8ZxsmmeVDA.QUyfzuHlri5O0LLP1cCuQkBLIvV518e',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:45:49','2021-01-21 02:08:05',NULL),(125,2,'Kurniawan','kurniawanwsp@gmail.com','Kurniawan','93213041',NULL,NULL,NULL,NULL,NULL,'081386472000',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:47:18','enable','$2y$10$PDytIQJvHMpS.Bw/WZx.vuB97sf153VeXJsn80F56ru1/x6.FU8Py',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:46:39','2021-01-21 02:08:10',NULL),(126,2,'Juniantes','anthes075@gmail.com','Sinaga','93213057',NULL,NULL,NULL,NULL,NULL,'08121073180',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:48:28','enable','$2y$10$7.X5oZ3L2Ns3uqdHaJnftu44hZIqUMhnCCP/wX2Hy43zAAYa4Vbzm',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:47:54','2021-01-21 02:08:15',NULL),(127,2,'Franklin','iprantjokro74@gmail.com','Sudiharto','93.213.017',NULL,NULL,NULL,NULL,NULL,'085289418373',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 03:54:05','enable','$2y$10$mv0/rA2nLF4DaXCF63.pZOLLujnwhUve25IxV1DXLuys/2XZfIQrS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:52:34','2021-01-21 02:08:19',NULL),(128,2,'koespratomo','koespratomo2002@yahoo.com','koespratomo','4512',NULL,NULL,NULL,NULL,NULL,'08129991024',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$ccK.mGpKD9JjWX3vvJ44QOPelAih5xSrRXoHj1LvLsJs8R/DM9hhi',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 03:53:48','2021-01-21 02:08:26',NULL),(129,2,'Deddy','tomara.pru70@gmail.com','Mulyadi','914216',NULL,NULL,NULL,NULL,NULL,'083872778505',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 04:08:50','enable','$2y$10$BcNcjfu54uFb0MkOh00bs..z48CMVA60iOL7F9wTB4.6S.reakkEO',NULL,NULL,'KBoT7WYRXRYvwZTWXHNmQg3L18iH1rPkWovRJGurQ9gIuqilzUM8awSfDyL2',NULL,NULL,NULL,'2021-01-20 04:06:55','2021-01-21 02:08:30',NULL),(130,2,'Bambang','bambangharyadi1978@gmail.com','Haryadi','97402142',NULL,NULL,NULL,NULL,NULL,'081905084574',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 04:14:20','enable','$2y$10$lO16k987PGa2B7MXyMJLWu/0x7VkEkFNZcme7jfD//URqzvSZV/q2',NULL,NULL,'2Lh8u4Wxezmx39dxesgjR52VyAmtfi4zliP8IrNhUwIsxaVy6RtBahyHJIBd',NULL,NULL,NULL,'2021-01-20 04:08:18','2021-01-21 02:08:35',NULL),(131,2,'Saeful','thompyizs96@gmail.com','Azis','1110112028',NULL,NULL,NULL,NULL,NULL,'081388848547',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 04:12:26','enable','$2y$10$kDeInzjLAdvew.gCD1aMyusI.cWrE.G5wUq27dbrnTMdw3ZqYFyBW',NULL,NULL,NULL,NULL,NULL,'profile-photos/GTLhaPVCFn19BSXWYPkIgd1R6NZUItmMQp9wDh1y.jpg','2021-01-20 04:10:35','2021-01-21 02:17:11',NULL),(132,2,'Muzakar','muzakar97@gmail.com','Bokang','97201008',NULL,NULL,NULL,NULL,NULL,'081270253515',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$cZyy.MF2YVZG77iOHpFKN.agTKPF9CFitc658hOHPFBh4bj2NynE6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 04:10:45','2021-01-21 02:08:52',NULL),(133,2,'Petrus Kopong Lamataro','petruslamataro@gmail.com','LAMATARO','202 711 023',NULL,NULL,NULL,NULL,NULL,'081 246 478 901',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$osnp.u3ztTzMl9Vb0GF6lu6.FXVYOXMBQiC1EyQcS0tdEyTN0Kkkm',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 04:30:12','2021-01-21 02:09:08',NULL),(134,2,'Nur','nur_wdr@yahoo.com','Hasanah','204.111.054',NULL,NULL,NULL,NULL,NULL,'085609674594',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$8azJ3g1Bt0Hj6hINF7OGdOohy7Yjde2Q3UOT3kXewXreEzA7SZzUS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 04:35:35','2021-01-21 02:05:27',NULL),(135,2,'Bambang','bambangheda@gmail.com','Hedianto','94.213.017',NULL,NULL,NULL,NULL,NULL,'081280284359',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$dfHL9EGtGQX3Z193iFs4FuXu9.5H3qCeD0pjaB4JVJDHDsbS0eSMa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 04:42:32','2021-01-21 03:24:53',NULL),(136,2,'Arif bayu','pramintoarifbayush@gmail.com','Praminto','1210611108',NULL,NULL,NULL,NULL,NULL,'081211315054',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 04:54:59','enable','$2y$10$xwj9Bv.GmjoTfgmvH/sbIeHJ3LvMlKUrQ8T1tVUS7BswPzK6Z5NhW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 04:54:08','2021-01-21 02:05:35',NULL),(137,2,'Aryo Seno','aryo.gbs@gmail.com','Wicaksono','1420921074',NULL,NULL,NULL,NULL,NULL,'081294740070',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 04:58:38','enable','$2y$10$Dm9xN.goqch2FwPOQaNBLuFS6smciMTg4GFXQpOTvLdP.WKmvDJ2G',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 04:57:55','2021-01-21 02:05:41',NULL),(138,2,'Rana','rnsanjaya@yahoo.com','Sanjaya','201114039',NULL,NULL,NULL,NULL,NULL,'08158196694',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 05:30:11','enable','$2y$10$/85ECwaQzAAfQz/J4vgSm.4rEXHaASQrgNsgiYYw8/q8d/zntRp2m',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 05:26:54','2021-01-21 02:05:50',NULL),(139,2,'Hari','hariyos92@gmail.com','Suryatno','92202010',NULL,NULL,NULL,NULL,NULL,'0818742297',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$q9kBbP/mgVufQPhjoxQgwu.64IU.R2rjYbde8q744nj3ShQNK9ZVa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 05:29:14','2021-01-21 02:06:00',NULL),(140,2,'Agung','agung.nugroho2609@gmail.com','Nugroho','98412065',NULL,NULL,NULL,NULL,NULL,'81281332141',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$8y2a22fBEbt9ZZpA3EyEH.C/pt4iGjzEEh2XBPhiW3K4l.7M4y61G',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 05:40:14','2021-01-21 02:06:10',NULL),(141,2,'Henny','hanny.purwanti@gmail.com','Purwanti','202.612.082',NULL,NULL,NULL,NULL,NULL,'089630622667',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 05:45:02','enable','$2y$10$LWJy3Hmt05O8zi2MO0Mh1ujCfJuUeceTfjD05jWZT5eGqXz8MeMzG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 05:43:27','2021-01-21 02:06:21',NULL),(142,2,'Adin','adin_supriatna63@yahoo.co.id','Supriatna','4526',NULL,NULL,NULL,NULL,NULL,'081382607697',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$DyGoSn8mwIQ14WH/k8wd/OZblNNXfewDhcyAi1FyccefnYJ0VO25y',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 05:50:33','2021-01-21 02:06:31',NULL),(143,2,'Noveria','noveria.anoragawati@gmail.com','Anoragawati','99.0000',NULL,NULL,NULL,NULL,NULL,'081808309807',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$etl7XFoEo3.fBidK9Va2HuLzI66ngvIeISPD8nhYbg7k6MfBER7tu',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 05:59:36','2021-01-21 02:06:45',NULL),(144,2,'supriyadi','supriyadi_batam@yahoo.com','Batam','96211007',NULL,NULL,NULL,NULL,NULL,'081285515815',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 06:24:05','enable','$2y$10$pnRPD4hbQjUecKDrMEcfKumy0ehT1O7VrMJFo7.wGy3ewqnGV7.12',NULL,NULL,'6LDUr5oPJQTuwIlmyAVLMdLvK1tgcgj118IRlHlNK2FITSsJbWxzzaHnlBod',NULL,NULL,NULL,'2021-01-20 06:09:32','2021-01-21 01:54:47',NULL),(145,2,'Washington Parulian Manullang','parulianwashington@gmail.com','Parulian','123.101.132',NULL,NULL,NULL,NULL,NULL,'081958648275',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$sE31Z7QbXoOaC.uNtjyPJ.RtPCFRX5KRutd3rHYCwL9zHPlTYAY/a',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 06:15:50','2021-01-21 01:54:51',NULL),(146,2,'Totok','totok74hariono@gmail.com','Hariono','93.101.136',NULL,NULL,NULL,NULL,NULL,'08112641074',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 06:29:23','enable','$2y$10$oG2uBdtc.pNRb2k5vrWQ0eY/AvGBAjAZF25R6S0VxoOEw0igfvJ/W',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 06:28:39','2021-01-21 01:54:56',NULL),(147,2,'Eko','ekowahyudi9803@gmail.com','Wahyudi','98412035',NULL,NULL,NULL,NULL,NULL,'081381899285',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$WwAU5TdnN3HXO6R4um0GtOYKuFlNpRzmav0J4T3anUwoRChS/kr/2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 06:34:13','2021-01-21 01:55:00',NULL),(148,2,'Muchlis Purnama','jmuchlispurnama@gmail.com','Jaya','200.402.052',NULL,NULL,NULL,NULL,NULL,'08111607210',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 06:42:17','enable','$2y$10$h68wzDrmXf24nGmwuUSU5urAsc4aDv5WWA9VjJd/JmpjXbKR2D6PO',NULL,NULL,'IvkQeL6JrFTgoEMI23qfBHMADSgJCAQMNzO56KeNlk8CsJ9sc9EZjdxRkvKH',NULL,NULL,NULL,'2021-01-20 06:36:51','2021-01-21 01:55:04',NULL),(149,2,'Fauzi','fatih51107@gmail.com','Alfianto','912134',NULL,NULL,NULL,NULL,NULL,'081381828271',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$cUQnKbZvlVcibZnDw3Y9I.kg62Efr./uleklioY07HLmUWEXJ3ZGq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 06:37:52','2021-01-21 01:55:10',NULL),(150,2,'Sigit','sigitnaval90@gmail.com','Yulianto','0910317013',NULL,NULL,NULL,NULL,NULL,'085717019626',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 06:47:53','enable','$2y$10$GLl.coRLqgqrAB/yEfdS6e6Gvea.JZCDgou2gBZLfC2Q9u0sz7udK',NULL,NULL,'Wv8gBaaL4JZc43gs1e5f9dQfsh3ZrMQfNdHvcH9N5PGt1jxCeAMd34knmzx2',NULL,NULL,NULL,'2021-01-20 06:46:48','2021-01-21 01:55:16',NULL),(151,2,'Subagiono','subagionoa@gmail.com','Aprilianto','730488//M',NULL,NULL,NULL,NULL,NULL,'081285658974',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$JXTTZ.92O1uuWcVZTUgDLeNrRQChnp0lTUvwcdvv7LyxPKicfkN5u',NULL,NULL,'Mrg3gbJhMVDqxMeLEO4J56IKn1gE4CoQuPN876j2lOUEIVJmyNp9o1eYJvSG',NULL,NULL,NULL,'2021-01-20 06:49:32','2021-01-21 01:55:21',NULL),(152,2,'Mochamad','mfahriansyah@gmail.com','Fahriansyah','94102392',NULL,NULL,NULL,NULL,NULL,'087723450835',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 06:50:26','enable','$2y$10$o2CvshwruOzAHHHN.9Bhk.Dn68zqSFC9nFIDDe2YJ5j3eAgoeDWNO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 06:49:50','2021-01-21 01:55:26',NULL),(153,2,'Franki','frankimasif1975@gmail.com','Hari Miniarto','94112100',NULL,NULL,NULL,NULL,NULL,'087875200584',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:01:59','enable','$2y$10$xE3VpIU7DaQzS5LedmvtMOQfRjspsuCHpKvM7hTUFENlx81oguJ9y',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 06:59:11','2021-01-21 01:55:46',NULL),(154,2,'Miftahuddin','miftahsteven@gmail.com','Syarief','99511017',NULL,NULL,NULL,NULL,NULL,'081510646400',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:19:23','enable','$2y$10$l4NJj2ubYxnAHOfAu9Q0SOYgGFadfuOKoHWdOfJIAdGiBzrsKIuUu',NULL,NULL,'75s463K27PcZAHmYlNjUdGIWIs3fIleJVvxhPvLcCRirLxu2Vv823NChFKWX',NULL,NULL,NULL,'2021-01-20 07:18:44','2021-01-21 01:53:19',NULL),(155,2,'Yusnandar','yusnandar69@yahoo.co.id','Yunus','8840001',NULL,NULL,NULL,NULL,NULL,'0811960687',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:26:35','enable','$2y$10$8Kx7VZhn9/.VfSud5cE8WeUoUCR2E/sLjMqTbNbBv9XxyjOZFS2wC',NULL,NULL,'UsiFBdj19aoFa8LRsQaCmyCIWbhj7apUJJawczATbVq9ObcpCdlCVF5BO3JT',NULL,NULL,NULL,'2021-01-20 07:25:18','2021-01-21 01:53:13',NULL),(156,2,'Ebenido M.H','ebenidomht@gmail.com','Tambunan','1310114017',NULL,NULL,NULL,NULL,NULL,'081381086045',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:26:55','enable','$2y$10$SOG2GpboLhJxEAAZ8a26KuGfDgZLVtwCYXopuEFNVdKJ44ujoPhxu',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 07:26:34','2021-01-21 01:53:04',NULL),(157,2,'Yul Rian','yrianhaidir@gmail.com','Haidir','000000000',NULL,NULL,NULL,NULL,NULL,'08161110711',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:30:25','enable','$2y$10$c.Kig0PSi5aT5jLAwJ61tels8IxUFmEePnE44T8FGcAYHZFI5c1aa',NULL,NULL,'6NKHBNUBqYbcgtHvzPS6BiygOsGJ6fKif0hGrCZ7CbQiUMHCTrhvsFBSmrGS',NULL,NULL,NULL,'2021-01-20 07:29:49','2021-01-21 01:52:57',NULL),(158,2,'Ahmad Bisri','bisrienter@gmail.com','Mustofa','200412036',NULL,NULL,NULL,NULL,NULL,'082211088488',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:34:06','enable','$2y$10$1djH4kFfUAdql3opK4CE4OYBlx96sDoGGV78q5/Pp2t4U/voyDMKq',NULL,NULL,'d5zFhocFw8Hzbk64vXrCMVRHDkvTmLKWXvx7R3cdaGAmWP94W29aBI3gpRNw',NULL,NULL,NULL,'2021-01-20 07:32:37','2021-01-21 01:52:50',NULL),(159,2,'Benny','bennysudali76@gmail.com','S','00.00000',NULL,NULL,NULL,NULL,NULL,'081311220765',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:39:42','enable','$2y$10$9s2S6qetJ9qGhSI7Ye/V5esUUBj6EJOXPTvrwzGaX/N/sZ4ftQQSe',NULL,NULL,'2PW1TsLsTJXj1kHB8ktJI9jusQmAXFFGGgoQ0cpqsdomZIsc52Wh3f7TZRwT',NULL,NULL,NULL,'2021-01-20 07:37:37','2021-01-21 01:52:45',NULL),(160,2,'Budiman','budimansudardi@gmail.com','Sudardi','914.232',NULL,NULL,NULL,NULL,NULL,'082112906378',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:40:42','enable','$2y$10$hp2BmN0YUG9YWo8aV0KstufhVkkiyAG6avtLNL4ccReyDsK4v/XkO',NULL,NULL,NULL,NULL,NULL,'profile-photos/au6E3eIyXf5fhmUKsQW3Y70TcIuLRkEgg3nVL2SJ.png','2021-01-20 07:39:44','2021-01-21 02:16:20',NULL),(161,2,'arindo','mell_ary@yahoo.com','prastio','200.412.016',NULL,NULL,NULL,NULL,NULL,'081385665158',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:44:01','enable','$2y$10$qfbiCqhEGgbW0FY6fkUYXuvXubl36za8aiWTtzfZaS9hC2mJ6Vji2',NULL,NULL,'WcF9gzl7gOV98Jp5aGHTNeVUW9T23Da4Qs399rOl332O2rC0UmJO7D6ycjjg',NULL,NULL,NULL,'2021-01-20 07:43:33','2021-01-21 01:52:35',NULL),(162,2,'Roby','robyalrayie398@gmail.com','Nandi','99.412.020',NULL,NULL,NULL,NULL,NULL,'081282317713',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:53:17','enable','$2y$10$sywgfR/g4AsMwewvXCIaledmySJv2rSavM/8NHxHIDiMxvvR06Kue',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 07:50:02','2021-01-21 01:52:31',NULL),(163,2,'Hendra','hendragusur03@gmail.com','Hari Santoso','203311014',NULL,NULL,NULL,NULL,NULL,'081395852369',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 07:54:22','enable','$2y$10$cLtHhSXLl.j/7TXd5L1s8OiuBqHtj0Sj73mjniixJHt61acw8g9se',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 07:53:31','2021-01-21 01:52:18',NULL),(164,2,'Muhammad','m.tohirudin@gmail.com','Tohirudin','93201008',NULL,NULL,NULL,NULL,NULL,'081390277292',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$P5Yb6kLGZzg4q5Vmo3HoKOmoj4f29hBb5wQcRmkQj.ATHsohYTsH.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 08:05:21','2021-01-21 01:50:07',NULL),(165,2,'Heru','herupramono73@gmail.com','Pramono','99412073',NULL,NULL,NULL,NULL,NULL,'081219661523',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$qLkzeXvEAF8f1.E0Io9ZPe7QLx07B1NZ01xaHLaqyTgCxfw.DOENK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 08:12:38','2021-01-21 01:50:12',NULL),(166,2,'Rio','rst.satrio@gmail.com','Satrio','95102230',NULL,NULL,NULL,NULL,NULL,'08158034640',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 08:19:20','enable','$2y$10$aErQuvlEKzRmWyCdEJq.Fe2tbOpA2ezMEA9bZwlEaahPtmJAc5sEu',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 08:17:49','2021-01-21 01:50:16',NULL),(167,2,'Dede','dedeoktora85@gmail.com','Oktora','204112051',NULL,NULL,NULL,NULL,NULL,'081219541713',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 08:33:46','enable','$2y$10$MhshDuqYBms6Zbg5D.aVrOS6wMB3THK1JZFSp4lRgl3yi2iSYDesS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 08:33:24','2021-01-21 02:11:52',NULL),(168,2,'Washington Parulian Manullang','washingtonparulian@gmail.com','Parulian','93.101.132',NULL,NULL,NULL,NULL,NULL,'081958648275',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 08:54:18','enable','$2y$10$ZHGfRnWHFTrcp4oG6X2Qr.KbzE/WMUzw/sKzpRwB5pSSaOk2Cy64G',NULL,NULL,'gZsQoANKSXIF6p94FisU6mKDEPS7akq6pB3ZmXgacSg2XELLmKrEUF04KioW',NULL,NULL,NULL,'2021-01-20 08:52:21','2021-01-21 04:38:35',NULL),(169,2,'Marjamah','kiki.siregar1307@gmail.com','Razki','8742152',NULL,NULL,NULL,NULL,NULL,'081385134745',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$JeVHuduyjKiy9HTDkSYMvOyzbyuxZLp6OjX.du3rLQ2tHsuntzkAy',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 08:56:38','2021-01-21 01:50:38',NULL),(170,2,'Darwien','d4rw1en66@gmail.com','.','861686',NULL,NULL,NULL,NULL,NULL,'087781459203',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 08:58:48','enable','$2y$10$1gM815C.9R/Y5fonKpA8h.RR.aqFqRzaGN9FBXUWlTA4O6b.n6vEC',NULL,NULL,'BJrzVasO0RmDtU363VGVYRmave4rWAXIu95IcpRn9lQKxgw0n1RJJXhCdIjM',NULL,NULL,NULL,'2021-01-20 08:57:31','2021-01-21 01:50:45',NULL),(171,2,'Herdian','herdian016@gmail.com','Soelistio','208.412.016',NULL,NULL,NULL,NULL,NULL,'082110053988',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 08:57:58','enable','$2y$10$bk3cQV2GYd2PDHHP40yq4.Q/Bssp5MARkeH4gbP5LBruE81K0y4iS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 08:57:33','2021-01-21 01:50:51',NULL),(172,2,'Marjamah','kikisrg@yahoo.com','Razki','8742152',NULL,NULL,NULL,NULL,NULL,'081385134745',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 09:17:55','enable','$2y$10$ERUebF7NDxSqlbGw5gjAOeMunJN.UR6vtvuYCQK5DhWyddioIUlxy',NULL,NULL,'IHNPJPndRMKJRWTd2WQDPSZJm3VhRGFZM3YTVmPInh4CS0mgWHIZ0QfF7dZM',NULL,NULL,NULL,'2021-01-20 08:59:06','2021-01-21 01:50:56',NULL),(173,2,'Rendy','adv.rendysaputra@gmail.com','Saputra','0810611005',NULL,NULL,NULL,NULL,NULL,'081295497411',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 09:16:37','enable','$2y$10$jyWtPUE8o4EdLaM0mYRb6ulEv77m2DpX.Be4GZUPUmjCXETfCvBFS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 09:15:14','2021-01-21 01:45:58',NULL),(174,2,'Firman Agus','firman_agushartanto@yahoo.com','Hartanto','96.111.057',NULL,NULL,NULL,NULL,NULL,'081315944488',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 09:25:16','enable','$2y$10$k8f8z8MGVgjqFHT6Dpxy2..Ggo8cR/GqTZG.yFYrocS1qrrBa9lEa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 09:24:30','2021-01-21 01:46:03',NULL),(175,2,'Mochamad','syahmoeda@gmail.com','Iskandar','99.111.085',NULL,NULL,NULL,NULL,NULL,'081213489874',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 09:42:44','enable','$2y$10$7mkeWlZRluEkmAN4ZoSbUuzY06r9iQ2NICUEa6wMj9pP0Tiq7tOjO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 09:41:58','2021-01-21 01:46:07',NULL),(176,2,'E. Reggy','eduardusreggy5@gmail.com','Adisetya Mulyadi','0910411008',NULL,NULL,NULL,NULL,NULL,'085695470820',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 09:44:14','enable','$2y$10$heT64NHNsxRvE3xby1e7gu/QkYMc6yCTdOo5KOKwgeWpSvZUu5fbq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 09:43:13','2021-01-21 01:46:12',NULL),(177,2,'Joni','jonijap06@gmail.com','Joni','0910311033',NULL,NULL,NULL,NULL,NULL,'087818280957',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 09:56:13','enable','$2y$10$UvsLxjwexi72xud5XhaWtuenDoX/Mq1G5X5/yQJCUhPuMCv50qweG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 09:55:40','2021-01-21 01:46:16',NULL),(178,2,'sondang','sondangfredy17@gmail.com','fredy s','97.111.052',NULL,NULL,NULL,NULL,NULL,'081380647255',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 10:24:58','enable','$2y$10$t9YHlwu5x3vPvNoti7yxSucC0ha6vcmIWe06IZcl.1ygKsEWQLZJ6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 10:09:05','2021-01-21 01:46:22',NULL),(179,2,'supri','supriatevet97@gmail.com','yatno','97.402.009',NULL,NULL,NULL,NULL,NULL,'081906713151',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 10:11:54','enable','$2y$10$9dTbrdnnOfVX.vWQOpU/jO.hVYf.zn8jmOTJiI8PMi7hNRMzcF2F2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 10:10:20','2021-01-21 01:46:29',NULL),(180,2,'Fajar Krisman Yamoarota','gerindralase@gmail.com','Lase','96401033',NULL,NULL,NULL,NULL,NULL,'085200143400',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 10:51:28','enable','$2y$10$vuZDRFH1uvUXLXH3DRFCI.ndgr68uq0.BBxpIQhpiNeMyrBOYzh7y',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 10:50:31','2021-01-21 01:46:39',NULL),(181,2,'Sri indah','sindahpalupi@gmail.com','Palupi','204612024',NULL,NULL,NULL,NULL,NULL,'081297476549',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 11:08:12','enable','$2y$10$Pgr7trAeWYh7BZveU1xYnO.KnZoOml79gYO4KsiZ9v67oPhijBVBa',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 11:07:27','2021-01-21 01:46:45',NULL),(182,2,'M O Mirzal','ichal0834.mm@gmail.com','Mataniari','906097',NULL,NULL,NULL,NULL,NULL,'081331255555',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 12:22:17','enable','$2y$10$58hs9BuxsO4yFne3fRXo1u/PbJNhFebYJUJFuS5nxu3Vb42cFAHmy',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 12:20:54','2021-01-21 01:47:35',NULL),(183,2,'Darma','darmapatri36@gmail.com','Patri','92203203',NULL,NULL,NULL,NULL,NULL,'08159001890',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$JLxRVdAF8TPefU5qySiLXeMV0N04/8AC006sMDbdZ0h3a/JINUb6e',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 14:32:48','2021-01-21 01:43:52',NULL),(184,2,'Gunawan','gunakanwibisono82@gmail.com','Wibisono','200112115',NULL,NULL,NULL,NULL,NULL,'081399836146',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$xu6A7rJDzOUXZbefkl2WvOLWao4Dv1rX3e.iVGL6eJDelR1r5wOIO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 14:58:34','2021-01-21 01:43:57',NULL),(185,2,'Data','my.furbiz@gmail.com','Dummy','93.0000',NULL,NULL,NULL,NULL,NULL,'0818182',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 15:18:13','enable','$2y$10$FRwbYKUNnrBMhx78bZGMau/2YdG.QhVlINg6rP/ax9XVpCsNHWbdC',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 15:17:19','2021-01-21 09:28:12','2021-01-21 09:28:12'),(186,2,'Dummy','joda.farm8@gmail.com','Lagi','94.0000',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$VGyQv0mwbohOGMAHdq9nzO2t9EvMRLGTsQ8LO1dHtaZ01SfJ5GSva',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 15:23:26','2021-01-21 09:29:41','2021-01-21 09:29:41'),(187,2,'Wahdatul','ilmiwhdtl@gmail.com','ilmi','1610102072',NULL,NULL,NULL,NULL,NULL,'087880089476',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 15:46:28','enable','$2y$10$Pt/2Dfl8dV1mA2r/6XrWL.ig6x6BRFyuGDUf60qSJ/.4X75SDyame',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 15:45:57','2021-01-21 01:44:07',NULL),(188,2,'Riza','riza_zikrullah@yahoo.com','Zikrullah','202.112.034',NULL,NULL,NULL,NULL,NULL,'08568141455',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 16:15:55','enable','$2y$10$TdtxDpoqVVE.vTt/ZNmmV.zCO0b0tod5FiPIrPHhbOpLee0fTAB/6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 16:14:01','2021-01-21 01:44:11',NULL),(189,2,'Yenni','yenniaysida75@gmail.com','Aysida','93.101.127',NULL,NULL,NULL,NULL,NULL,'087787084969',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 16:18:26','enable','$2y$10$dK7h3TPUcwsuHw6uiyUK5OYJ.5sItO5qJuNy8ECSPwpKGa1TVuyHG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 16:17:27','2021-01-21 01:44:19',NULL),(190,2,'yusuf','yusufriyadi72@gmail.com','riyadi','94.204.011',NULL,NULL,NULL,NULL,NULL,'082113390804',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 16:27:01','enable','$2y$10$6XF71QCkOEy1D0OLy1VSW.MimKr3.paU9FCIx9MbznIAsEiDDwK4O',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 16:25:34','2021-01-21 01:44:24',NULL),(191,2,'abdul','adekarim77@gmail.com','karim','95511009',NULL,NULL,NULL,NULL,NULL,'081319488195',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 16:37:23','enable','$2y$10$.ULWDvmRXc/I4JknXNEx8.10zOOuJFz1HQqdXSSzT0DXLPOCC9DMe',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 16:35:55','2021-01-21 01:44:31',NULL),(192,2,'Marsudin','marsuddin@gmail.com','Marsudin','99412014',NULL,NULL,NULL,NULL,NULL,'081267571709',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 16:46:10','enable','$2y$10$oU5OmHPCjJklKyEpcu4D2uXk9HXdnGfpdhk/lX0Uk0PfxEzRL.obK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 16:43:59','2021-01-21 01:44:36',NULL),(193,2,'Lela','noerlela079@gmail.com','Nurlela','98101207',NULL,NULL,NULL,NULL,NULL,'089682401836',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$Ac9s85WHhIDcNGlsWrt8mOMVT9b.aFwYxhPEY7fNrkVboWsyeAggK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 16:49:33','2021-01-21 01:44:57',NULL),(194,2,'Abdul','zaniadoel@gmail.com','Zani','1110111091',NULL,NULL,NULL,NULL,NULL,'081314592527',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 16:56:59','enable','$2y$10$5PKMZo1ahMZgTBGjRDBUh.p.G9.rlsPb7/d2D31qlvM0aSNMjsiL6',NULL,NULL,'uxigwpIXw0J1zM9RUpEOfJL9anR3c0LF9I0Xm6ankrEDYZ6hawbpXZOlzwwf',NULL,NULL,NULL,'2021-01-20 16:55:17','2021-01-21 01:40:22',NULL),(195,2,'erwin','iingsurasena@gmail.com','irawan','93202017',NULL,NULL,NULL,NULL,NULL,'081281848858',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 17:17:28','enable','$2y$10$kwXWTV1LpD3vkGKqYQjOHuN0/DNgqXgYNn8Zc6Ho.w73v2kT595GW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 17:16:34','2021-01-21 01:40:30',NULL),(196,2,'Ady','addy.asus@gmail.com','Susanto','1110511094',NULL,NULL,NULL,NULL,NULL,'082210120167',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 18:25:02','enable','$2y$10$mu7Uk4zJoFKXPDFNU1fFxecQahJ70a37mf1S19uYzypQHlvYs/sfy',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 18:24:47','2021-01-21 01:40:36',NULL),(197,2,'Budi','budisrihayati@gmail.com','Srihayati','98017',NULL,NULL,NULL,NULL,NULL,'081277393791',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 18:26:14','enable','$2y$10$er3dobSCt4eP9EXtlCQWKu8TZfTrVcpATQNGLLIATLRTtutgunzUO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 18:25:52','2021-01-21 01:40:40',NULL),(198,2,'Setyani','tari.sp@gmail.com','Pujilestari','880034',NULL,NULL,NULL,NULL,NULL,'08112005853',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 18:36:42','enable','$2y$10$MeAhu3O5XiZwdgd/kWPKueF6/pBlA9epRiMsYKqVlTGeOHLQfl1ZS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 18:36:11','2021-01-21 01:34:56',NULL),(199,2,'Farid','frs0575@gmail.com','Santoso','94.213.044',NULL,NULL,NULL,NULL,NULL,'081382643084',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 18:39:21','enable','$2y$10$TNqoSBg1XP689Rp5efTBsuK0etCicN.Z96lIrwysPyRS/GsPV4Zbq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 18:38:05','2021-01-21 01:33:10',NULL),(200,2,'Maryani','yayanmaryani73@gmail.com','Maryani','93101122',NULL,NULL,NULL,NULL,NULL,'081387755101',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$DD0ueRKV.AV0Rv2YgZzWZ.LG4CNwyc46pyGP44QRsm2sJIDdt6Q8.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 18:55:43','2021-01-21 01:35:03',NULL),(201,2,'Leny','leniastuti366@gmail.com','Hastuti','93.101.118',NULL,NULL,NULL,NULL,NULL,'081213004684',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$sy3ZsrvvUJOBhWIxOVT3fOzkjwlKj8eNnWkZxpZIjb3ONJIKvZHCq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 19:24:40','2021-01-21 01:35:11',NULL),(202,2,'Huda','hudareti@gmail.com','Purwandoko','204.112.009',NULL,NULL,NULL,NULL,NULL,'085693472139',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 19:45:59','enable','$2y$10$HwJSuHYfeq0.0kI7ymCPOuySz/q12wqDVZX5FGfiElsT7.GgK9qqW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 19:45:23','2021-01-21 01:40:47',NULL),(203,2,'Iwan','isantosos@gmail.com','santoso','884060',NULL,NULL,NULL,NULL,NULL,'081510383513',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 20:05:09','enable','$2y$10$V87C/Om5br9jeeKuEKAZl.LRW4TAP3ItehAODMB8Mulfs37GGO4PK',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 20:04:22','2021-01-21 01:40:54',NULL),(204,2,'Edi','Edis1609@gmail.com','Santoso','92202092',NULL,NULL,NULL,NULL,NULL,'08119660697',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 20:13:01','enable','$2y$10$34vXvKjtVae2fmt5w8.Z.eA/5HaGj3ocheSjnu9/vx9qJE5sp1LbO',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 20:12:07','2021-01-20 21:52:03',NULL),(205,2,'Rahma','rahmadania@gmail.com','Dhania','0810112122',NULL,NULL,NULL,NULL,NULL,'081363121279',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 21:45:15','enable','$2y$10$cmCfiO.wuYCaAimY8cDVGu8e0t75cf.swJgQ7M88nhDUmc.wVBTZS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 21:44:09','2021-01-20 21:51:07',NULL),(206,2,'Carolin','carolinmarsintha@gmail.com','Marsintha','-',NULL,NULL,NULL,NULL,NULL,'085711832332',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$xshorENjOsbFK1ZvhVvg5eDCWPCgcAjabNPb/Y4DmOKpw6sOub1Ui',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 23:03:29','2021-01-21 01:40:59',NULL),(207,2,'DARNA','darnawati7415@yahoo.com','WATI','00000000000000000000',NULL,NULL,NULL,NULL,NULL,'085717714944',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 23:16:17','enable','$2y$10$iQ0ljRKSa6SYdNS.M4DWPuBu.yx.cf6qbrJ71l7DlAHj8ThSvRd7S',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-20 23:14:31','2021-01-21 01:41:03',NULL),(208,2,'gusti','gustiayusartikadewi.s.kom@gmail.com','dewi','208.511.018',NULL,NULL,NULL,NULL,NULL,'81319616976',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-20 23:21:45','enable','$2y$10$8salzhg21umfJ3tQow8/lOfV4LmIhcQMWB1SZcnqY0hKdtOp9kx7C',NULL,NULL,'xLuIyXceFh1J7gCr5CwLYM2T1t2ayG89wemy7O6J27CFRxtSngDJh3n4gex2',NULL,NULL,NULL,'2021-01-20 23:20:46','2021-01-21 01:41:11',NULL),(209,2,'Robbi','utomo.robbi@yahoo.com','Utomo','1010611059',NULL,NULL,NULL,NULL,NULL,'081281085733',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 00:51:00','enable','$2y$10$IMhakrCxczSgIEKeklVKz.ZsbLzrMllaN6tDdOuvXhnmBSVUFkabq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 00:50:08','2021-01-21 01:41:17',NULL),(210,2,'Trisunu','rtrsunu@gmail.com','Rachmadi','97.101.108',NULL,NULL,NULL,NULL,NULL,'081315097536',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 01:13:29','enable','$2y$10$7W/e1USKQRqE3sxNrMfStenh3ZHI2vC4.275UutMcpiXEmGq3QLFe',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 01:12:52','2021-01-21 01:35:44',NULL),(211,2,'La Ode Muhamad anzar','anzarahlan@gmail.com','Ode','97502106',NULL,NULL,NULL,NULL,NULL,'081245680763',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$q8PEfcDY0a5Jx/hOe.y/gOM4MvpvwwOzdDVqGe9V4ByM4Q2BhqPqW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 01:46:01','2021-01-21 01:51:10',NULL),(212,2,'ADHI','pramono.adhi26@rocketmail.com','PRAMONO','911236',NULL,NULL,NULL,NULL,NULL,'081212059230',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$jxla07vVkdLTmMOC4zf4POmpBY0PcN51qsUUFCPQ/Uc3zIxISnsum',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 02:37:02','2021-01-21 02:37:58',NULL),(213,2,'Joko','joan@bla-jkt.com','Susilo','92.203.237/K',NULL,NULL,NULL,NULL,NULL,'0816730708',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$Qed2oecEdVp1F3kFrkxGsu06S1oBwrhguSyCzzpaE.M9qghYFY7YS',NULL,NULL,'eUbw7Xfg6dU2Xq2mWW8JD9Awkv8odRzUIDBwVk0JeXyfWMorbzD7pyjyWV57',NULL,NULL,NULL,'2021-01-21 02:44:42','2021-01-21 03:23:30',NULL),(214,2,'Donny','dbahransyaf@gmail.com','Bahransaf','95.101.742',NULL,NULL,NULL,NULL,NULL,'08129037778',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$A7NacYnJ83W8GSXf4IFt2uwrNfYvDlWNvEIr.FBb0QjBHcq7dNWFS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 02:59:38','2021-01-21 03:22:49',NULL),(215,2,'Muhammad','muhammad.yaser89@gmail.com','Yasser','1010511048',NULL,NULL,NULL,NULL,NULL,'087785174753',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 03:15:46','enable','$2y$10$iDoO6uYxGI93w4Wsb9yvWOyWGUCeyDaMNMJnjYoAEFW0mDqUXUnjm',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 03:14:25','2021-01-21 03:22:57',NULL),(216,2,'Bambang','b.sapto.n@gmail.com','Sapto Nugroho','94.111.172',NULL,NULL,NULL,NULL,NULL,'08170104440',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 03:25:50','enable','$2y$10$/9TN0dsRohF/sITvY2Ox6.7gfxORocpmlY3zuLqm66VTzvo90HinS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 03:24:31','2021-01-21 03:25:50',NULL),(217,2,'Wiwi','wiwnurhaeti@gmail.com','Nurhaeti','943464340330113',NULL,NULL,NULL,NULL,NULL,'0857-7646-3598',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$nc5XQTT..t4SOMA3OfHpoON6b7VwQUiABMUWVX1yRRNUZo.NobO26',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 04:09:51','2021-01-21 04:48:50',NULL),(218,2,'Alfiah','alfiahj@gmail.com','Jamil','1110113203',NULL,NULL,NULL,NULL,NULL,'082114677212',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 04:29:33','enable','$2y$10$RdmBnZyHAY1.BfdwHdy2C.r9dKEJCGy0K0oVZTghc4hE.aUDrLeZy',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 04:28:45','2021-01-21 04:48:36',NULL),(219,2,'Ferry','fdarrent13@yahoo.com','Fadly','0810112180',NULL,NULL,NULL,NULL,NULL,'082117956583',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 05:17:04','enable','$2y$10$51AO8OWNrQUAM5FyzjzI9OFT.hnD3rnp5rrnQIBq7BoLKTKJ8fHm.',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 05:16:14','2021-01-21 07:06:38',NULL),(220,2,'Jerry Sandar','sibaranijerry2@gmail.com','Sibarani','94111132',NULL,NULL,NULL,NULL,NULL,'0811158322',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$b3tNrRg9M2ZYaXKtMeB/Ae02EzaSJRk2wb8b7BISN9w6Pc8yhLtSW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 05:21:24','2021-01-21 07:06:36',NULL),(221,2,'Sutomo','mytoms@gmail.com','Sembodo','93111023',NULL,NULL,NULL,NULL,NULL,'08113575888',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 06:37:37','enable','$2y$10$5GsXLUmj4T4m7MOXpz1K9.gntpq04dqWOEDVy.TSK4Ic7e8gS96h6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 06:36:26','2021-01-21 07:06:14',NULL),(222,2,'Sondang','alexcaca2007@yahoo.com','Tiominar','94111178',NULL,NULL,NULL,NULL,NULL,'08118095343',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 07:12:56','enable','$2y$10$nlHMmkHzqgyrCb3HYOSFoOmulTjRNC/AkHkk/czoOmkrTasjgulcS',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 07:12:05','2021-01-21 09:21:45',NULL),(223,2,'Agung Dani','agung_dhn@yahoo.com','Raharjo','204.112.075',NULL,NULL,NULL,NULL,NULL,'081315679543',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 07:51:41','enable','$2y$10$gRnTfQMdlF.u/yUN/UxFte2HUFwvkXD6SvUNFVRnGzfvIucG0uyCG',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 07:44:15','2021-01-21 09:21:32',NULL),(224,NULL,'Joni','jonisusilo26@gmail.com','Susilo','93 204 111',NULL,NULL,NULL,NULL,NULL,'085930197744',NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'enable','$2y$10$EuLTgTTkikWiRr58pKI5pu0V2zlPEnXfHtS5lNyD55URboJGViQhq',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 08:41:49','2021-01-21 09:21:26',NULL),(225,NULL,'Ryan','ryanbastian82@gmail.com','Bastian','1110512046',NULL,NULL,NULL,NULL,NULL,'085717240089',NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-21 09:15:54','enable','$2y$10$OfA7dUk.1gKD01mbubVjzuUf8KiGSuxN1pF91SDyBRx/Ate8QMCy6',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-21 09:14:02','2021-01-21 09:21:21',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_experiences`
--

DROP TABLE IF EXISTS `work_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_experiences` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cureent` tinyint(1) NOT NULL DEFAULT 0,
  `start_at` date NOT NULL,
  `end_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_experiences`
--

LOCK TABLES `work_experiences` WRITE;
/*!40000 ALTER TABLE `work_experiences` DISABLE KEYS */;
INSERT INTO `work_experiences` VALUES (1,3,'PT. ASA','isi jabatan',0,'2020-01-07','2021-01-07','2021-01-08 00:24:30','2021-01-08 00:24:30'),(2,176,'PT Mitra Tri Inti','General Affair',0,'2014-01-08','2015-02-06','2021-01-21 01:59:32','2021-01-21 01:59:32'),(3,176,'PT NET MEDIATAMA TELEVISI','SET BUILDER STAFF',0,'2015-11-02','2019-10-16','2021-01-21 02:01:33','2021-01-21 02:01:33'),(4,176,'PT Duta Visual Nusantara Tivi Tujuh (TRANS 7)','SET PROPERTY',1,'2019-11-04',NULL,'2021-01-21 02:03:27','2021-01-21 02:03:27'),(5,131,'Perum Bulog','Accounting & Risk Management',1,'2015-06-01',NULL,'2021-01-21 02:18:14','2021-01-21 02:18:14');
/*!40000 ALTER TABLE `work_experiences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 17:30:45
