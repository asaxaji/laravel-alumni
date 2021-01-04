-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: unialumni_db
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnis`
--

LOCK TABLES `alumnis` WRITE;
/*!40000 ALTER TABLE `alumnis` DISABLE KEYS */;
INSERT INTO `alumnis` VALUES (1,'Risqi','Romadhoni','nrp2049','risqir57@gmail.com','islam','Dagmarchester','2021-01-03','681.800.1190','(789) 825-7167','271.302.3383','94306 Javon Islands\r\nMuellerport, RI 63877','Singapore','South Elena','21307','2021-01-04 04:20:31','2021-01-04 08:05:06',NULL),(2,'Hailee','D\'Amore','nrp0235','angel00@kutch.com','islam','Paucekmouth','2021-01-03','415.312.8425','865-630-6699','(429) 836-0556','65388 Zion Flats\nKochport, OK 35952-5099','Cape Verde','South Fridaburgh','06300-4643','2021-01-04 04:20:31','2021-01-04 04:20:31',NULL),(3,'Magnus','Rutherford','nrp5850','devonte35@waelchi.com','islam','Stehrville','2021-01-03','+1-497-951-6815','773-254-6606','+1-986-753-6721','474 Yolanda Shoal Apt. 534\nJoshuahbury, IA 26091-9987','Armenia','East Hannah','46014','2021-01-04 04:20:31','2021-01-04 04:20:31',NULL);
/*!40000 ALTER TABLE `alumnis` ENABLE KEYS */;
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
INSERT INTO `careers` VALUES (1,1,1,'Feest Plaza','feest-plaza','<h2>Details all Thing About This Event</h2>\r\n<p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','North Venaburgh','Svalbard & Jan Mayen Islands',1,'2021-01-22 04:20:00','2021-01-04 04:20:00','2021-01-04 09:17:44'),(2,1,1,'Enid Road','enid-road','<h2>Details all Thing About This Event</h2>\r\n<p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Adolphusville','Western Sahara',1,'2021-01-15 04:20:00','2021-01-04 04:20:00','2021-01-04 09:18:57'),(3,1,1,'Blanda Prairie','blanda-prairie','<h2>Details all Thing About This Event</h2>\r\n<p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Lake Elenora','United Kingdom',1,'2021-01-15 04:20:00','2021-01-04 04:20:00','2021-01-04 09:20:46'),(4,NULL,1,'Einar Manor','einar-manor','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','East Jamey','Jamaica',1,'2021-01-24 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(5,NULL,1,'Wilkinson Forges','wilkinson-forges','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','South Shawn','South Africa',1,'2021-01-18 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(6,NULL,1,'Waelchi Extensions','waelchi-extensions','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Tayaland','Croatia',1,'2021-01-14 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(7,NULL,1,'Samir Greens','samir-greens','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','South Carolina','Mexico',1,'2021-01-18 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(8,NULL,1,'Pascale Corner','pascale-corner','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Mariashire','Niue',1,'2021-01-22 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(9,NULL,1,'Bosco Drive','bosco-drive','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Lenoreborough','Ethiopia',1,'2021-01-15 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(10,NULL,1,'Stamm Harbors','stamm-harbors','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','East Shanonberg','Japan',1,'2021-01-22 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(11,NULL,1,'Tabitha Manor','tabitha-manor','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Erickaville','Maldives',1,'2021-01-17 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31'),(12,NULL,1,'Grady Turnpike','grady-turnpike','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','Lake Kayden','Malawi',1,'2021-01-18 04:20:31','2021-01-04 04:20:31','2021-01-04 04:20:31');
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmaps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `companies` VALUES (1,NULL,'9ead706356d02ce8e654aa7653e26ff0.png','Prof. Amaya Moen MD','prof-amaya-moen-md','company@mail.com','+1.664.482.2611','2900 Judy Groves\nWernerview, MT 12786','https://g.page/hungrypedia?share','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','2021-01-04 04:20:31','2021-01-04 04:20:31'),(2,NULL,'2078254b945c58275f4b167698cd7259.png','Dr. Frankie Mueller III','dr-frankie-mueller-iii','company@mail.com','(924) 847-6813','454 Lizeth Rue\nNew Noeport, MD 35679-5930','https://g.page/hungrypedia?share','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','2021-01-04 04:20:31','2021-01-04 04:20:31'),(3,NULL,'6e8ca391276ba7063067e0fc9954256b.png','Dr. Doyle Trantow Sr.','dr-doyle-trantow-sr','company@mail.com','535.968.9292','72113 Charlie Dale Suite 823\nBirdieport, AL 27026-1686','https://g.page/hungrypedia?share','<h2>Details all Thing About This Event</h2><p>Aenean viverra rhoncus pede. Phasellus leo dolor, tempus non, auctor endrerit quis, nisi. Fusce neque. Donec vitae orci sed dolor rutrum auctor. Sed ngilla mauris sit amet nibhr, tempus non, auctor endrerit quis, nisi.</p>','2021-01-04 04:20:31','2021-01-04 04:20:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(3,1,'email','text','Email',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(4,1,'password','password','Password',1,0,0,1,1,0,'{\"validate\":{\"rule\":\"required\"}}',6),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',7),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',28),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',29),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',2),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',17),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',11),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,1,'firstname','text','Firstname',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',3),(57,1,'lastname','text','Lastname',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(58,1,'nrp','text','Nrp',0,1,1,1,1,1,'{}',8),(59,1,'agama','text','Agama',0,0,1,1,1,1,'{}',9),(60,1,'birth_place','text','Birth Place',0,0,1,1,1,1,'{}',10),(61,1,'birth_date','date','Birth Date',0,0,1,1,1,1,'{}',12),(62,1,'phone_home','text','Phone Home',0,0,1,1,1,1,'{}',13),(63,1,'phone_number','text','Phone Number',0,0,1,1,1,1,'{}',15),(64,1,'whatsapp','text','Whatsapp',0,1,1,1,1,1,'{}',16),(65,1,'address','text_area','Address',0,0,1,1,1,1,'{}',18),(66,1,'provincy','text','Provincy',0,1,1,1,1,1,'{}',19),(67,1,'city','text','City',0,1,1,1,1,1,'{}',20),(68,1,'zip_code','text','Zip Code',0,0,1,1,1,1,'{}',21),(69,1,'alumni_id','text','Alumni Id',0,0,1,1,1,1,'{}',22),(70,1,'email_verified_at','timestamp','Email Verified At',0,0,1,1,1,1,'{}',23),(71,1,'two_factor_secret','text','Two Factor Secret',0,0,1,0,1,1,'{}',24),(72,1,'two_factor_recovery_codes','text','Two Factor Recovery Codes',0,0,1,0,1,1,'{}',25),(73,1,'current_team_id','text','Current Team Id',0,0,1,0,1,1,'{}',26),(74,1,'profile_photo_path','image','Profile Photo Path',0,0,1,0,1,1,'{}',27),(75,1,'deleted_at','timestamp','Deleted At',0,0,1,0,1,1,'{}',30),(76,1,'user_belongsto_city_relationship','relationship','Birth Place',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"birth_place\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',31),(77,1,'user_belongsto_city_relationship_1','relationship','City',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',32),(78,1,'user_belongsto_provience_relationship','relationship','Provience',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Provience\",\"table\":\"proviences\",\"type\":\"belongsTo\",\"column\":\"provincy\",\"key\":\"nama\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',33),(79,1,'user_belongstomany_role_relationship','relationship','roles',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',34),(80,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(81,8,'firstname','text','Firstname',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',2),(82,8,'lastname','text','Lastname',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',3),(83,8,'nrp','text','Nrp',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(84,8,'email','text','Email',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(85,8,'agama','text','Agama',0,0,1,1,1,1,'{}',6),(86,8,'birth_place','text','Birth Place',0,0,1,1,1,1,'{}',7),(87,8,'birth_date','date','Birth Date',0,0,1,1,1,1,'{}',8),(88,8,'phone_home','text','Phone Home',0,0,1,1,1,1,'{}',9),(89,8,'phone_number','text','Phone Number',0,0,1,1,1,1,'{}',10),(90,8,'whatsapp','text','Whatsapp',0,0,1,1,1,1,'{}',11),(91,8,'address','text_area','Address',0,0,1,1,1,1,'{}',12),(92,8,'provincy','text','Provincy',0,0,1,1,1,1,'{}',13),(93,8,'city','text','City',0,0,1,1,1,1,'{}',14),(94,8,'zip_code','text','Zip Code',0,0,1,1,1,1,'{}',15),(95,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',16),(96,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),(97,8,'deleted_at','timestamp','Deleted At',0,0,1,0,1,1,'{}',18),(98,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(99,9,'author_id','hidden','Author Id',0,1,1,1,1,1,'{\"default\":1}',4),(100,9,'company_id','text','Company Id',0,1,1,1,1,1,'{}',3),(101,9,'title','text','Title',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',6),(102,9,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',7),(103,9,'body','rich_text_box','Body',1,0,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',8),(104,9,'city','text','City',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',9),(105,9,'country','text','Country',0,0,1,1,1,1,'{}',10),(106,9,'published','text','Published',1,1,1,1,1,1,'{}',11),(107,9,'end_at','timestamp','End At',1,1,1,1,1,1,'{}',12),(108,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',13),(109,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(110,9,'career_belongsto_company_relationship','relationship','Company',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Company\",\"table\":\"companies\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(111,9,'career_belongsto_user_relationship','relationship','Author',0,1,0,0,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(112,10,'id','text','Id',1,0,0,1,1,0,'{}',1),(113,10,'provinsi_id','text','Provinsi Id',1,1,1,1,1,1,'{}',3),(114,10,'nama','text','Nama',1,1,1,1,1,1,'{}',4),(115,10,'city_belongsto_provience_relationship','relationship','provience',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Provience\",\"table\":\"proviences\",\"type\":\"belongsTo\",\"column\":\"provinsi_id\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(116,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(117,11,'author_id','text','Author Id',0,1,1,1,1,1,'{\"default\":1}',2),(118,11,'logo','image','Logo',0,1,1,1,1,1,'{\"validate\":{\"add\":{\"rule\":\"required\"}}}',3),(119,11,'name','text','Name',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',4),(120,11,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',5),(121,11,'email','text','Email',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',6),(122,11,'phone','text','Phone',1,1,1,1,1,1,'{}',7),(123,11,'address','text_area','Address',1,0,1,1,1,1,'{}',8),(124,11,'gmaps','text','Gmaps Link',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',9),(125,11,'body','rich_text_box','Body',0,0,1,1,1,1,'{}',10),(126,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(127,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(128,11,'company_belongsto_user_relationship','relationship','Author',0,1,0,0,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(129,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(130,12,'author_id','hidden','Author Id',0,1,1,1,1,1,'{}',3),(131,12,'image','image','Image',1,1,1,1,1,1,'{}',4),(132,12,'title','text','Title',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(133,12,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',6),(134,12,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'{}',7),(135,12,'body','rich_text_box','Body',1,0,1,1,1,1,'{}',8),(136,12,'location','text','Location',0,1,1,1,1,1,'{}',9),(137,12,'published','select_dropdown','Published',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',10),(138,12,'start_at','timestamp','Start At',1,1,1,1,1,1,'{}',11),(139,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',12),(140,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(141,12,'event_belongsto_user_relationship','relationship','Author',0,1,1,0,0,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(142,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(143,13,'author_id','text','Author Id',0,1,1,1,1,1,'{}',2),(144,13,'name','text','Name',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',3),(145,13,'type','text','Type',1,1,1,1,1,1,'{\"default\":\"image\",\"options\":{\"image\":\"Image\",\"video\":\"Video\"}}',4),(146,13,'image','image','Image',1,1,1,1,1,1,'{}',5),(147,13,'video_url','text','Video Url',1,1,1,1,1,1,'{}',6),(148,13,'published','select_dropdown','Published',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',7),(149,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(150,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(151,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(152,14,'nama','text','Nama',1,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',2),(153,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(154,15,'image','image','Image',0,1,1,1,1,1,'{}',2),(155,15,'title','text','Title',0,1,1,1,1,1,'{}',3),(156,15,'subtitle','text','Subtitle',0,1,1,1,1,1,'{}',4),(157,15,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',5),(158,15,'link','text','Link',0,1,1,1,1,1,'{\"validate\":{\"rule\":\"required\"}}',6),(159,15,'published','select_dropdown','Published',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"0\":\"Not Active\",\"1\":\"Active\"}}',7),(160,15,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(161,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(162,1,'user_belongsto_alumni_relationship','relationship','alumnis',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Alumni\",\"table\":\"alumnis\",\"type\":\"belongsTo\",\"column\":\"alumni_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"alumnis\",\"pivot\":\"0\",\"taggable\":null}',35);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 04:20:13','2021-01-04 09:03:12'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-01-04 04:20:13','2021-01-04 04:20:13'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-01-04 04:20:13','2021-01-04 04:20:13'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(8,'alumnis','alumnis','Alumni','Alumnis','voyager-people','App\\Models\\Alumni',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null}','2021-01-04 09:04:29','2021-01-04 09:04:29'),(9,'careers','careers','Career','Careers','voyager-plug','App\\Models\\Career',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:09:01','2021-01-04 09:21:09'),(10,'cities','cities','City','Cities','voyager-trees','App\\Models\\City',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:22:46','2021-01-04 09:23:26'),(11,'companies','companies','Company','Companies','voyager-crop','App\\Models\\Company',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:27:36','2021-01-04 09:29:37'),(12,'events','events','Event','Events','voyager-bomb','App\\Models\\Event',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-04 09:39:47','2021-01-04 09:41:10'),(13,'galleries','galleries','Gallery','Galleries','voyager-hotdog','App\\Models\\Gallery',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null}','2021-01-04 09:44:27','2021-01-04 09:44:27'),(14,'proviences','proviences','Provience','Proviences','voyager-archive','App\\Models\\Provience',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null}','2021-01-04 09:45:30','2021-01-04 09:45:30'),(15,'sliders','sliders','Slider','Sliders','voyager-credit-cards','App\\Models\\Slider',NULL,NULL,NULL,1,0,'{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null}','2021-01-04 09:47:34','2021-01-04 09:47:34');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
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
  `type` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-01-04 04:20:14','2021-01-04 04:20:14','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-01-04 04:20:14','2021-01-04 04:20:14','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-01-04 04:20:14','2021-01-04 04:20:14','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,17,'2021-01-04 04:20:14','2021-01-04 09:49:48',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,16,'2021-01-04 04:20:14','2021-01-04 09:49:58','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.categories.index',NULL),(12,1,'Blog','','_self','voyager-news','#000000',NULL,5,'2021-01-04 04:20:14','2021-01-04 09:50:42','voyager.posts.index','null'),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2021-01-04 04:20:14','2021-01-04 09:49:48','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2021-01-04 04:20:15','2021-01-04 09:49:48','voyager.hooks',NULL),(15,2,'Faculty','','_self','voyager-bomb','#000000',NULL,2,'2021-01-04 04:22:25','2021-01-04 04:26:15','faculty.index','null'),(17,2,'Alumni','','_self','voyager-bomb','#000000',NULL,3,'2021-01-04 04:23:19','2021-01-04 04:29:26','alumni.index','null'),(18,2,'Blog','','_self','voyager-bomb','#000000',NULL,4,'2021-01-04 04:23:30','2021-01-04 04:29:54','blog.index','null'),(19,2,'Event','','_self','voyager-bomb','#000000',NULL,5,'2021-01-04 04:23:48','2021-01-04 04:30:12','event.index','null'),(20,2,'Career','','_self','voyager-bomb','#000000',NULL,6,'2021-01-04 04:24:01','2021-01-04 04:30:24','career.index','null'),(21,2,'About Us','','_self','voyager-bomb','#000000',NULL,1,'2021-01-04 04:26:09','2021-01-04 04:28:41','about.index','null'),(22,1,'Alumnis','','_self','voyager-people',NULL,NULL,8,'2021-01-04 09:04:29','2021-01-04 09:49:58','voyager.alumnis.index',NULL),(23,1,'Careers','','_self','voyager-plug',NULL,NULL,9,'2021-01-04 09:09:01','2021-01-04 09:49:58','voyager.careers.index',NULL),(24,1,'Cities','','_self','voyager-trees',NULL,NULL,10,'2021-01-04 09:22:46','2021-01-04 09:49:58','voyager.cities.index',NULL),(25,1,'Companies','','_self','voyager-crop',NULL,NULL,11,'2021-01-04 09:27:36','2021-01-04 09:49:58','voyager.companies.index',NULL),(26,1,'Events','','_self','voyager-bomb',NULL,NULL,12,'2021-01-04 09:39:47','2021-01-04 09:49:58','voyager.events.index',NULL),(27,1,'Galleries','','_self','voyager-hotdog',NULL,NULL,13,'2021-01-04 09:44:27','2021-01-04 09:49:58','voyager.galleries.index',NULL),(28,1,'Proviences','','_self','voyager-archive',NULL,NULL,14,'2021-01-04 09:45:30','2021-01-04 09:49:58','voyager.proviences.index',NULL),(29,1,'Sliders','','_self','voyager-credit-cards',NULL,NULL,15,'2021-01-04 09:47:34','2021-01-04 09:49:58','voyager.sliders.index',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2016_01_01_000000_add_voyager_user_fields',1),(5,'2016_01_01_000000_create_data_types_table',1),(6,'2016_01_01_000000_create_pages_table',1),(7,'2016_01_01_000000_create_posts_table',1),(8,'2016_02_15_204651_create_categories_table',1),(9,'2016_05_19_173453_create_menu_table',1),(10,'2016_10_21_190000_create_roles_table',1),(11,'2016_10_21_190000_create_settings_table',1),(12,'2016_11_30_135954_create_permission_table',1),(13,'2016_11_30_141208_create_permission_role_table',1),(14,'2016_12_26_201236_data_types__add__server_side',1),(15,'2017_01_13_000000_add_route_to_menu_items_table',1),(16,'2017_01_14_005015_create_translations_table',1),(17,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(18,'2017_03_06_000000_add_controller_to_data_types_table',1),(19,'2017_04_11_000000_alter_post_nullable_fields_table',1),(20,'2017_04_21_000000_add_order_to_data_rows_table',1),(21,'2017_07_05_210000_add_policyname_to_data_types_table',1),(22,'2017_08_05_000000_add_group_to_settings_table',1),(23,'2017_11_26_013050_add_user_role_relationship',1),(24,'2017_11_26_015000_create_user_roles_table',1),(25,'2018_03_11_000000_add_user_settings',1),(26,'2018_03_14_000000_add_details_to_data_types_table',1),(27,'2018_03_16_000000_make_settings_value_nullable',1),(28,'2019_08_19_000000_create_failed_jobs_table',1),(29,'2019_12_14_000001_create_personal_access_tokens_table',1),(30,'2020_12_21_182123_create_sessions_table',1),(31,'2020_12_22_122012_create_sliders_table',1),(32,'2020_12_22_201418_create_events_table',1),(33,'2020_12_22_210555_create_companies_table',1),(34,'2020_12_22_210645_create_careers_table',1),(35,'2020_12_30_194200_create_alumnis_table',1),(36,'2020_12_31_105337_add_field_to_user',1),(37,'2021_01_03_221637_create_galleries_table',1),(38,'2021_01_03_224229_create_proviences_table',1),(39,'2021_01_03_224237_create_cities_table',1);
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
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,1),(4,3),(5,1),(5,3),(6,1),(6,3),(7,1),(7,3),(8,1),(8,3),(9,1),(9,3),(10,1),(10,3),(11,1),(11,3),(12,1),(12,3),(13,1),(13,3),(14,1),(14,3),(15,1),(15,3),(16,1),(16,3),(17,1),(17,3),(18,1),(18,3),(19,1),(19,3),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(23,3),(24,1),(24,3),(25,1),(25,3),(26,1),(26,3),(27,1),(27,3),(28,1),(28,3),(29,1),(29,3),(30,1),(30,3),(31,1),(31,3),(32,1),(32,3),(33,1),(33,3),(34,1),(34,3),(35,1),(35,3),(36,1),(36,3),(37,1),(37,3),(38,1),(38,3),(39,1),(39,3),(40,1),(40,3),(41,3),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,'browse_bread',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(3,'browse_database',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(4,'browse_media',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(5,'browse_compass',NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(6,'browse_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(7,'read_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(8,'edit_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(9,'add_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(10,'delete_menus','menus','2021-01-04 04:20:14','2021-01-04 04:20:14'),(11,'browse_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(12,'read_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(13,'edit_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(14,'add_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(15,'delete_roles','roles','2021-01-04 04:20:14','2021-01-04 04:20:14'),(16,'browse_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(17,'read_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(18,'edit_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(19,'add_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(20,'delete_users','users','2021-01-04 04:20:14','2021-01-04 04:20:14'),(21,'browse_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(22,'read_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(23,'edit_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(24,'add_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(25,'delete_settings','settings','2021-01-04 04:20:14','2021-01-04 04:20:14'),(26,'browse_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(27,'read_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(28,'edit_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(29,'add_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(30,'delete_categories','categories','2021-01-04 04:20:14','2021-01-04 04:20:14'),(31,'browse_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(32,'read_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(33,'edit_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(34,'add_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(35,'delete_posts','posts','2021-01-04 04:20:14','2021-01-04 04:20:14'),(36,'browse_pages','pages','2021-01-04 04:20:14','2021-01-04 04:20:14'),(37,'read_pages','pages','2021-01-04 04:20:14','2021-01-04 04:20:14'),(38,'edit_pages','pages','2021-01-04 04:20:15','2021-01-04 04:20:15'),(39,'add_pages','pages','2021-01-04 04:20:15','2021-01-04 04:20:15'),(40,'delete_pages','pages','2021-01-04 04:20:15','2021-01-04 04:20:15'),(41,'browse_hooks',NULL,'2021-01-04 04:20:15','2021-01-04 04:20:15'),(42,'browse_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(43,'read_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(44,'edit_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(45,'add_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(46,'delete_alumnis','alumnis','2021-01-04 09:04:29','2021-01-04 09:04:29'),(47,'browse_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(48,'read_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(49,'edit_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(50,'add_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(51,'delete_careers','careers','2021-01-04 09:09:01','2021-01-04 09:09:01'),(52,'browse_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(53,'read_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(54,'edit_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(55,'add_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(56,'delete_cities','cities','2021-01-04 09:22:46','2021-01-04 09:22:46'),(57,'browse_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(58,'read_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(59,'edit_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(60,'add_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(61,'delete_companies','companies','2021-01-04 09:27:36','2021-01-04 09:27:36'),(62,'browse_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(63,'read_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(64,'edit_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(65,'add_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(66,'delete_events','events','2021-01-04 09:39:47','2021-01-04 09:39:47'),(67,'browse_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(68,'read_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(69,'edit_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(70,'add_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(71,'delete_galleries','galleries','2021-01-04 09:44:27','2021-01-04 09:44:27'),(72,'browse_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(73,'read_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(74,'edit_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(75,'add_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(76,'delete_proviences','proviences','2021-01-04 09:45:30','2021-01-04 09:45:30'),(77,'browse_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(78,'read_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(79,'edit_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(80,'add_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34'),(81,'delete_sliders','sliders','2021-01-04 09:47:34','2021-01-04 09:47:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-04 04:20:14','2021-01-04 04:20:14');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('4AW2qDetFd3Pg96WDR1ADfcatHmcXqHWMwEES0IV',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNDhCNndabFM2S2xTemJHamdKcFY1ZThzYzNLdlBOSUdRd1I4N2ZTSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHA6Ly9qYWdhdGFsdW1uaS5zaXRlL3dlYi1hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWltYWdlcyUyRmxvZ28taWNvbi5wbmciO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM2OiJodHRwOi8vamFnYXRhbHVtbmkuc2l0ZS91c2VyL3Byb2ZpbGUiO31zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHNVc3JaOVcwWTNJS2hpSFNkYlpFS3VabmZmVDVTTkh1ZlhKbG82UXgzaTVvRWZuTzUxVG95IjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1609736153),('zXEzfqyUMvyLDibHleYiiUc6iYkOh1RnUFJQ4QxD',3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTo3OntzOjY6Il90b2tlbiI7czo0MDoid0t2ZE9Pbk5FRVozZ1VXRGhOYVlJMjhOc3FqR01xeGZxNnViWFdxciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9qYWdhdGFsdW1uaS5zaXRlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGE0dkZXTnJNd0l4bkZULmk5L0ZpbnVjMFo4aS5nbmJEZE9ZUTliT2Fhc2VLMG1kb2d2Z0YuIjtzOjM6InVybCI7YTowOnt9czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkYTR2RldOck13SXhuRlQuaTkvRmludWMwWjhpLmduYkRkT1lROWJPYWFzZUswbWRvZ3ZnRi4iO30=',1609729526);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/January2021/RdIyXkoZkeVvX5TtGhow.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','Jagatalumni','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Jagatalumni website','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','Web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'users/default.png',NULL,'$2y$10$sUsrZ9W0Y3IKhiHSdbZEKuZnffT5SNHufXJlo6Qx3i5oEfnO51Toy',NULL,NULL,'RS3thugqawaBRSGslWXB1oOr4fSKVlFPU3BXxsvjicuBqEJEISQpN4SiMO7N',NULL,NULL,NULL,'2021-01-04 04:20:14','2021-01-04 04:20:14',NULL),(3,2,'Risqi','risqir57@gmail.com','Romadhoni','nrp2049','islam',NULL,'2021-01-03','681.800.1190','(789) 825-7167','271.302.3383','94306 Javon Islands\r\nMuellerport, RI 63877',NULL,NULL,'21307',1,'users/default.png','2021-01-04 07:59:42','$2y$10$a4vFWNrMwIxnFT.i9/Finuc0Z8i.gnbDdOYQ9bOaaseK0mdogvgF.',NULL,NULL,NULL,NULL,NULL,'profile-photos/zlLZzBeo50pjvlDfIf5LPBQ8OdAXePnVKTE4ZbKm.png','2021-01-04 07:59:01','2021-01-04 08:14:25',NULL),(4,NULL,'Developer','developer@mail.com','Web',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'users/default.png','2021-01-03 04:49:00','$2y$10$8XdqaewCmTxH7oLwEtS6Vu4CwIMiR2UZ23O/iOpkco.Ua6Dy54LCW',NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-04 09:49:28','2021-01-04 09:49:28',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-03 23:57:23
