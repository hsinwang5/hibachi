-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-11-20 05:56:23','2018-11-20 05:56:23','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://hibachi.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://hibachi.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Hibachi','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Chinese &amp; Japanese Restaurant','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','hsinwang5@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:21:\"backwpup/backwpup.php\";i:4;s:39:\"manual-image-crop/manual-image-crop.php\";i:5;s:31:\"wp-migrate-db/wp-migrate-db.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','hibachichinese','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','hibachichinese','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','43764','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','43','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','0','yes');
INSERT INTO `wp_options` VALUES (93,'initial_db_version','38590','yes');
INSERT INTO `wp_options` VALUES (94,'wp_user_roles','a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:84:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:1;s:19:\"backwpup_jobs_start\";b:1;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:1;s:23:\"backwpup_backups_delete\";b:1;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:1;s:17:\"backwpup_settings\";b:1;s:16:\"backwpup_restore\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:46:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:17:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:11:\"read_blocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:14:\"backwpup_admin\";a:2:{s:4:\"name\";s:14:\"BackWPup Admin\";s:12:\"capabilities\";a:12:{s:4:\"read\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:1;s:19:\"backwpup_jobs_start\";b:1;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:1;s:23:\"backwpup_backups_delete\";b:1;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:1;s:17:\"backwpup_settings\";b:1;s:16:\"backwpup_restore\";b:1;}}s:14:\"backwpup_check\";a:2:{s:4:\"name\";s:21:\"BackWPup jobs checker\";s:12:\"capabilities\";a:12:{s:4:\"read\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:0;s:19:\"backwpup_jobs_start\";b:0;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:0;s:23:\"backwpup_backups_delete\";b:0;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:0;s:17:\"backwpup_settings\";b:0;s:16:\"backwpup_restore\";b:0;}}s:15:\"backwpup_helper\";a:2:{s:4:\"name\";s:20:\"BackWPup jobs helper\";s:12:\"capabilities\";a:12:{s:4:\"read\";b:1;s:8:\"backwpup\";b:1;s:13:\"backwpup_jobs\";b:1;s:18:\"backwpup_jobs_edit\";b:0;s:19:\"backwpup_jobs_start\";b:1;s:16:\"backwpup_backups\";b:1;s:25:\"backwpup_backups_download\";b:1;s:23:\"backwpup_backups_delete\";b:1;s:13:\"backwpup_logs\";b:1;s:20:\"backwpup_logs_delete\";b:1;s:17:\"backwpup_settings\";b:0;s:16:\"backwpup_restore\";b:0;}}}','yes');
INSERT INTO `wp_options` VALUES (95,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'nonce_key','mqg.B&ABEs$U5?&^![SJuUgd )4}{@n(sTUh?db,O~1sJL)MXt`A_CzE@$Tj &tE','no');
INSERT INTO `wp_options` VALUES (109,'nonce_salt','!(P%I2WlRzU/7bcd~#fp,X3![izEAhA5ZR10hbI)uB,nzSUry_rxIPn?qr]dQm%B','no');
INSERT INTO `wp_options` VALUES (110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'cron','a:8:{i:1544691383;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544715061;a:1:{s:22:\"backwpup_check_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544723783;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544735465;a:1:{s:18:\"ai1wm_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544755092;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544765378;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544767134;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (114,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542693916;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544680840;s:7:\"checked\";a:2:{s:14:\"hibachichinese\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (143,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (152,'current_theme','Hibachi Chinese','yes');
INSERT INTO `wp_options` VALUES (153,'theme_mods_hibachichinese','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (154,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (199,'acf_version','5.7.7','yes');
INSERT INTO `wp_options` VALUES (239,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (270,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (271,'new_admin_email','hsinwang5@gmail.com','yes');
INSERT INTO `wp_options` VALUES (318,'wpseo','a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"9.2.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1543199892;}','yes');
INSERT INTO `wp_options` VALUES (319,'wpseo_titles','a:73:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:10:\"title-food\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-food\";s:0:\"\";s:12:\"noindex-food\";b:0;s:13:\"showdate-food\";b:0;s:23:\"display-metabox-pt-food\";b:1;s:23:\"post_types-food-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (320,'wpseo_social','a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (321,'wpseo_flush_rewrite','1','yes');
INSERT INTO `wp_options` VALUES (322,'_transient_timeout_wpseo_link_table_inaccessible','1574735892','no');
INSERT INTO `wp_options` VALUES (323,'_transient_wpseo_link_table_inaccessible','0','no');
INSERT INTO `wp_options` VALUES (324,'_transient_timeout_wpseo_meta_table_inaccessible','1574735892','no');
INSERT INTO `wp_options` VALUES (325,'_transient_wpseo_meta_table_inaccessible','0','no');
INSERT INTO `wp_options` VALUES (328,'rewrite_rules','a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"food/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"food/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"food/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"food/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"food/([^/]+)/embed/?$\";s:37:\"index.php?food=$matches[1]&embed=true\";s:25:\"food/([^/]+)/trackback/?$\";s:31:\"index.php?food=$matches[1]&tb=1\";s:33:\"food/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&paged=$matches[2]\";s:40:\"food/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&cpage=$matches[2]\";s:29:\"food/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?food=$matches[1]&page=$matches[2]\";s:21:\"food/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"food/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"food/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"food/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"dinner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"dinner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"dinner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"dinner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"dinner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"dinner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"dinner/([^/]+)/embed/?$\";s:39:\"index.php?dinner=$matches[1]&embed=true\";s:27:\"dinner/([^/]+)/trackback/?$\";s:33:\"index.php?dinner=$matches[1]&tb=1\";s:35:\"dinner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?dinner=$matches[1]&paged=$matches[2]\";s:42:\"dinner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?dinner=$matches[1]&cpage=$matches[2]\";s:31:\"dinner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?dinner=$matches[1]&page=$matches[2]\";s:23:\"dinner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"dinner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"dinner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"dinner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"dinner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"dinner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=43&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (563,'_site_transient_timeout_browser_7c536d82012ce7c421315e5571540a1e','1544908199','no');
INSERT INTO `wp_options` VALUES (564,'_site_transient_browser_7c536d82012ce7c421315e5571540a1e','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (583,'ai1wm_secret_key','YaRRePO4hh7Y','yes');
INSERT INTO `wp_options` VALUES (584,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:221:\"<a href=\"http://hibachi.local/wp-content/ai1wm-backups/hibachi.local-20181209-032401-496.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\" title=\"hibachi.local\"><span>Download hibachi.local</span><em>Size: 63 MB</em></a>\";}','yes');
INSERT INTO `wp_options` VALUES (587,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (588,'wpmdb_settings','a:13:{s:3:\"key\";s:40:\"Tn6guAJpPIXOBVoLFtpmuH5xPaLtIlfZYnX8gnDh\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}','no');
INSERT INTO `wp_options` VALUES (589,'wpmdb_schema_version','2','no');
INSERT INTO `wp_options` VALUES (590,'wpmdb_usage','a:2:{s:6:\"action\";s:8:\"savefile\";s:4:\"time\";i:1544478305;}','no');
INSERT INTO `wp_options` VALUES (600,'backwpup_cfg_hash','0b2322','no');
INSERT INTO `wp_options` VALUES (601,'backwpup_jobs','a:0:{}','no');
INSERT INTO `wp_options` VALUES (602,'backwpup_version','3.6.6','no');
INSERT INTO `wp_options` VALUES (603,'backwpup_cfg_showadminbar','','no');
INSERT INTO `wp_options` VALUES (604,'backwpup_cfg_showfoldersize','','no');
INSERT INTO `wp_options` VALUES (605,'backwpup_cfg_protectfolders','1','no');
INSERT INTO `wp_options` VALUES (606,'backwpup_cfg_jobmaxexecutiontime','30','no');
INSERT INTO `wp_options` VALUES (607,'backwpup_cfg_jobstepretry','3','no');
INSERT INTO `wp_options` VALUES (608,'backwpup_cfg_jobrunauthkey','c499a589','no');
INSERT INTO `wp_options` VALUES (609,'backwpup_cfg_loglevel','normal_translated','no');
INSERT INTO `wp_options` VALUES (610,'backwpup_cfg_jobwaittimems','0','no');
INSERT INTO `wp_options` VALUES (611,'backwpup_cfg_jobdooutput','0','no');
INSERT INTO `wp_options` VALUES (612,'backwpup_cfg_windows','0','no');
INSERT INTO `wp_options` VALUES (613,'backwpup_cfg_maxlogs','30','no');
INSERT INTO `wp_options` VALUES (614,'backwpup_cfg_gzlogs','0','no');
INSERT INTO `wp_options` VALUES (615,'backwpup_cfg_logfolder','uploads/backwpup-0b2322-logs/','no');
INSERT INTO `wp_options` VALUES (616,'backwpup_cfg_httpauthuser','','no');
INSERT INTO `wp_options` VALUES (617,'backwpup_cfg_httpauthpassword','','no');
INSERT INTO `wp_options` VALUES (619,'inpsyde-phone-consent-given-BackWPup','a:4:{s:6:\"plugin\";s:8:\"BackWPup\";s:10:\"identifier\";s:32:\"d9b8e07054667ce81e256ebf30363c1e\";s:11:\"php_version\";s:5:\"7.2.9\";s:10:\"wp_version\";s:5:\"4.9.8\";}','no');
INSERT INTO `wp_options` VALUES (642,'_site_transient_timeout_browser_2006b42dc247a2442bc1dcd4235b2bf3','1545081687','no');
INSERT INTO `wp_options` VALUES (643,'_site_transient_browser_2006b42dc247a2442bc1dcd4235b2bf3','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.80\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (667,'upgrade_500_was_gutenberg_active','1','no');
INSERT INTO `wp_options` VALUES (668,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (675,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (692,'wpmdb_state_timeout_5c0ede6126aab','1544564706','no');
INSERT INTO `wp_options` VALUES (693,'wpmdb_state_5c0ede6126aab','a:22:{s:6:\"action\";s:19:\"wpmdb_migrate_table\";s:6:\"intent\";s:8:\"savefile\";s:3:\"url\";s:0:\"\";s:9:\"form_data\";s:290:\"action=savefile&save_computer=1&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fhibachi.local&replace_new%5B%5D=%2F%2Fhsinchihw.sgedu.site&replace_guids=1&exclude_transients=1&save_migration_profile_option=new&create_new_profile=&remote_json_data=\";s:5:\"stage\";s:7:\"migrate\";s:5:\"nonce\";s:10:\"ed7b824ba8\";s:12:\"site_details\";a:1:{s:5:\"local\";a:10:{s:12:\"is_multisite\";s:5:\"false\";s:8:\"site_url\";s:20:\"http://hibachi.local\";s:8:\"home_url\";s:20:\"http://hibachi.local\";s:6:\"prefix\";s:3:\"wp_\";s:15:\"uploads_baseurl\";s:40:\"http://hibachi.local/wp-content/uploads/\";s:7:\"uploads\";a:6:{s:4:\"path\";s:38:\"/app/public/wp-content/uploads/2018/12\";s:3:\"url\";s:47:\"http://hibachi.local/wp-content/uploads/2018/12\";s:6:\"subdir\";s:8:\"/2018/12\";s:7:\"basedir\";s:30:\"/app/public/wp-content/uploads\";s:7:\"baseurl\";s:39:\"http://hibachi.local/wp-content/uploads\";s:5:\"error\";b:0;}s:11:\"uploads_dir\";s:33:\"wp-content/uploads/wp-migrate-db/\";s:8:\"subsites\";a:0:{}s:13:\"subsites_info\";a:0:{}s:20:\"is_subdomain_install\";s:5:\"false\";}}s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";s:4:\"body\";s:11:\"{\"error\":0}\";s:9:\"dump_path\";s:86:\"/app/public/wp-content/uploads/wp-migrate-db/local-migrate-20181210214505-yh3up.sql.gz\";s:13:\"dump_filename\";s:34:\"local-migrate-20181210214505-yh3up\";s:8:\"dump_url\";s:95:\"http://hibachi.local/wp-content/uploads/wp-migrate-db/local-migrate-20181210214505-iv490.sql.gz\";s:10:\"db_version\";s:6:\"5.7.23\";s:8:\"site_url\";s:20:\"http://hibachi.local\";s:18:\"find_replace_pairs\";a:2:{s:11:\"replace_old\";a:1:{i:1;s:15:\"//hibachi.local\";}s:11:\"replace_new\";a:1:{i:1;s:22:\"//hsinchihw.sgedu.site\";}}s:18:\"migration_state_id\";s:13:\"5c0ede6126aab\";s:5:\"table\";s:17:\"wp_yoast_seo_meta\";s:11:\"current_row\";s:0:\"\";s:10:\"last_table\";s:1:\"1\";s:12:\"primary_keys\";s:0:\"\";s:4:\"gzip\";s:1:\"0\";}','no');
INSERT INTO `wp_options` VALUES (955,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1544680839;s:15:\"version_checked\";s:5:\"5.0.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (957,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"hsinwang5@gmail.com\";s:7:\"version\";s:5:\"5.0.1\";s:9:\"timestamp\";i:1544671482;}','no');
INSERT INTO `wp_options` VALUES (1058,'_site_transient_timeout_theme_roots','1544682640','no');
INSERT INTO `wp_options` VALUES (1059,'_site_transient_theme_roots','a:2:{s:14:\"hibachichinese\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1060,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1544680840;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.81\";s:21:\"backwpup/backwpup.php\";s:5:\"3.6.6\";s:23:\"gutenberg/gutenberg.php\";s:5:\"4.6.1\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:5:\"1.0.8\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"9.2.1\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.9\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:5:\"4.7.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/gutenberg.4.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.81\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.81.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1985064\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1985064\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1985064\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1985064\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"backwpup/backwpup.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/backwpup\";s:4:\"slug\";s:8:\"backwpup\";s:6:\"plugin\";s:21:\"backwpup/backwpup.php\";s:11:\"new_version\";s:5:\"3.6.6\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/backwpup/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/backwpup.3.6.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/backwpup/assets/icon-256x256.png?rev=1422084\";s:2:\"1x\";s:61:\"https://ps.w.org/backwpup/assets/icon-128x128.png?rev=1422084\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/backwpup/assets/banner-1544x500.png?rev=1954500\";s:2:\"1x\";s:63:\"https://ps.w.org/backwpup/assets/banner-772x250.png?rev=1954500\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-migrate-db.1.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"9.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.9.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=955 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (29,14,'_edit_lock','1542782683:1');
INSERT INTO `wp_postmeta` VALUES (30,14,'_oembed_fb03bb0b9c9e7bf69eccd1e749e55745','<iframe src=\"https://player.vimeo.com/video/22439234?app_id=122963\" width=\"500\" height=\"281\" frameborder=\"0\" title=\"The Mountain\" allow=\"autoplay; fullscreen\" allowfullscreen></iframe>');
INSERT INTO `wp_postmeta` VALUES (31,14,'_oembed_time_fb03bb0b9c9e7bf69eccd1e749e55745','1542782279');
INSERT INTO `wp_postmeta` VALUES (34,1,'_edit_lock','1543116498:1');
INSERT INTO `wp_postmeta` VALUES (40,20,'_edit_lock','1543006183:1');
INSERT INTO `wp_postmeta` VALUES (51,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (52,31,'_edit_lock','1543538873:1');
INSERT INTO `wp_postmeta` VALUES (55,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (56,20,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (57,20,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (58,20,'price','12.95');
INSERT INTO `wp_postmeta` VALUES (59,20,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (60,34,'price','12.95');
INSERT INTO `wp_postmeta` VALUES (61,34,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (65,41,'_edit_lock','1543441209:1');
INSERT INTO `wp_postmeta` VALUES (66,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (67,41,'price','7.75');
INSERT INTO `wp_postmeta` VALUES (68,41,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (69,42,'_edit_lock','1543441195:1');
INSERT INTO `wp_postmeta` VALUES (70,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (71,42,'price','7.25');
INSERT INTO `wp_postmeta` VALUES (72,42,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (73,2,'_edit_lock','1542959607:1');
INSERT INTO `wp_postmeta` VALUES (74,43,'_edit_lock','1544586787:1');
INSERT INTO `wp_postmeta` VALUES (75,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (76,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (77,46,'_edit_lock','1543174207:1');
INSERT INTO `wp_postmeta` VALUES (85,43,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (86,43,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (87,51,'hero_image_1_mobile','48');
INSERT INTO `wp_postmeta` VALUES (88,51,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (89,43,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (90,43,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (91,53,'hero_image_1_mobile','48');
INSERT INTO `wp_postmeta` VALUES (92,53,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (93,53,'hero_image_1_desktop','50');
INSERT INTO `wp_postmeta` VALUES (94,53,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (95,43,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (96,43,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (97,55,'hero_image_1_mobile','48');
INSERT INTO `wp_postmeta` VALUES (98,55,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (99,55,'hero_image_1_desktop','50');
INSERT INTO `wp_postmeta` VALUES (100,55,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (101,55,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (102,55,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (108,58,'hero_image_1_mobile','56');
INSERT INTO `wp_postmeta` VALUES (109,58,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (110,58,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (111,58,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (112,58,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (113,58,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (117,65,'hero_image_1_mobile','59');
INSERT INTO `wp_postmeta` VALUES (118,65,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (119,65,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (120,65,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (121,65,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (122,65,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (123,66,'hero_image_1_mobile','');
INSERT INTO `wp_postmeta` VALUES (124,66,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (125,66,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (126,66,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (127,66,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (128,66,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (129,67,'hero_image_1_mobile','59');
INSERT INTO `wp_postmeta` VALUES (130,67,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (131,67,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (132,67,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (133,67,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (134,67,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (135,68,'hero_image_1_mobile','56');
INSERT INTO `wp_postmeta` VALUES (136,68,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (137,68,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (138,68,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (139,68,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (140,68,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (141,69,'hero_image_1_mobile','56');
INSERT INTO `wp_postmeta` VALUES (142,69,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (143,69,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (144,69,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (145,69,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (146,69,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (147,70,'hero_image_1_mobile','59');
INSERT INTO `wp_postmeta` VALUES (148,70,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (149,70,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (150,70,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (151,70,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (152,70,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (159,43,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (160,43,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (161,43,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (162,43,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (163,43,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (164,43,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (165,76,'hero_image_1_mobile','59');
INSERT INTO `wp_postmeta` VALUES (166,76,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (167,76,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (168,76,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (169,76,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (170,76,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (171,76,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (172,76,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (173,76,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (174,76,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (175,76,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (176,76,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (180,78,'hero_image_1_mobile','77');
INSERT INTO `wp_postmeta` VALUES (181,78,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (182,78,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (183,78,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (184,78,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (185,78,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (186,78,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (187,78,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (188,78,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (189,78,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (190,78,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (191,78,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (195,80,'hero_image_1_mobile','79');
INSERT INTO `wp_postmeta` VALUES (196,80,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (197,80,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (198,80,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (199,80,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (200,80,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (201,80,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (202,80,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (203,80,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (204,80,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (205,80,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (206,80,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (207,81,'_wp_attached_file','2018/11/dreamstime_l_56836922-e1543019136655.jpg');
INSERT INTO `wp_postmeta` VALUES (208,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1825;s:6:\"height\";i:2738;s:4:\"file\";s:48:\"2018/11/dreamstime_l_56836922-e1543019136655.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"dreamstime_l_56836922-e1543019136655-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"dreamstime_l_56836922-e1543019136655-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"dreamstime_l_56836922-e1543019136655-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"dreamstime_l_56836922-e1543019136655-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"heroImageMobile\";a:4:{s:4:\"file\";s:48:\"dreamstime_l_56836922-e1543019136655-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"heroImageDesktop\";a:4:{s:4:\"file\";s:49:\"dreamstime_l_56836922-e1543019136655-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:31:\"(c) Lisovskaya | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (209,81,'_wp_attachment_backup_sizes','a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2738;s:6:\"height\";i:1825;s:4:\"file\";s:25:\"dreamstime_l_56836922.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:33:\"dreamstime_l_56836922-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:33:\"dreamstime_l_56836922-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:33:\"dreamstime_l_56836922-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:34:\"dreamstime_l_56836922-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"heroImageMobile-orig\";a:4:{s:4:\"file\";s:33:\"dreamstime_l_56836922-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"heroImageDesktop-orig\";a:4:{s:4:\"file\";s:34:\"dreamstime_l_56836922-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (210,82,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (211,82,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (212,82,'hero_image_1_desktop','57');
INSERT INTO `wp_postmeta` VALUES (213,82,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (214,82,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (215,82,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (216,82,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (217,82,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (218,82,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (219,82,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (220,82,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (221,82,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (227,85,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (228,85,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (229,85,'hero_image_1_desktop','84');
INSERT INTO `wp_postmeta` VALUES (230,85,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (231,85,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (232,85,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (233,85,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (234,85,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (235,85,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (236,85,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (237,85,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (238,85,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (239,86,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (240,86,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (241,86,'hero_image_1_desktop','84');
INSERT INTO `wp_postmeta` VALUES (242,86,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (243,86,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (244,86,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (245,86,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (246,86,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (247,86,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (248,86,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (249,86,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (250,86,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (253,88,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (254,88,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (255,88,'hero_image_1_desktop','87');
INSERT INTO `wp_postmeta` VALUES (256,88,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (257,88,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (258,88,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (259,88,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (260,88,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (261,88,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (262,88,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (263,88,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (264,88,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (269,91,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (270,91,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (271,91,'hero_image_1_desktop','90');
INSERT INTO `wp_postmeta` VALUES (272,91,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (273,91,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (274,91,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (275,91,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (276,91,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (277,91,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (278,91,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (279,91,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (280,91,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (281,92,'_wp_attached_file','2018/11/dreamstime_l_56836922-1-e1543019882391.jpg');
INSERT INTO `wp_postmeta` VALUES (282,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2738;s:6:\"height\";i:1825;s:4:\"file\";s:50:\"2018/11/dreamstime_l_56836922-1-e1543019882391.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"dreamstime_l_56836922-1-e1543019882391-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"dreamstime_l_56836922-1-e1543019882391-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"dreamstime_l_56836922-1-e1543019882391-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"dreamstime_l_56836922-1-e1543019882391-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"heroImageMobile\";a:4:{s:4:\"file\";s:50:\"dreamstime_l_56836922-1-e1543019882391-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"heroImageDesktop\";a:4:{s:4:\"file\";s:51:\"dreamstime_l_56836922-1-e1543019882391-1280x600.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:31:\"(c) Lisovskaya | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (283,92,'_wp_attachment_backup_sizes','a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2738;s:6:\"height\";i:1825;s:4:\"file\";s:27:\"dreamstime_l_56836922-1.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:35:\"dreamstime_l_56836922-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:35:\"dreamstime_l_56836922-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:35:\"dreamstime_l_56836922-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:36:\"dreamstime_l_56836922-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"heroImageMobile-orig\";a:4:{s:4:\"file\";s:35:\"dreamstime_l_56836922-1-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"heroImageDesktop-orig\";a:4:{s:4:\"file\";s:36:\"dreamstime_l_56836922-1-1280x600.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (284,93,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (285,93,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (286,93,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (287,93,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (288,93,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (289,93,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (290,93,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (291,93,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (292,93,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (293,93,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (294,93,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (295,93,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (296,94,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (297,94,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (298,94,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (299,94,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (300,94,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (301,94,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (302,94,'hero_image_2_mobile','74');
INSERT INTO `wp_postmeta` VALUES (303,94,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (304,94,'hero_image_2_desktop','75');
INSERT INTO `wp_postmeta` VALUES (305,94,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (306,94,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (307,94,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (310,96,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (311,96,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (312,96,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (313,96,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (314,96,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (315,96,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (316,96,'hero_image_2_mobile','95');
INSERT INTO `wp_postmeta` VALUES (317,96,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (318,96,'hero_image_2_desktop','95');
INSERT INTO `wp_postmeta` VALUES (319,96,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (320,96,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (321,96,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (322,97,'_wp_attached_file','2018/11/filet_and_chicken-e1543038644922.jpg');
INSERT INTO `wp_postmeta` VALUES (323,97,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:44:\"2018/11/filet_and_chicken-e1543038644922.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"filet_and_chicken-e1543038644922-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"filet_and_chicken-e1543038644922-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"filet_and_chicken-e1543038644922-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"filet_and_chicken-e1543038644922-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"heroImageMobile\";a:4:{s:4:\"file\";s:44:\"filet_and_chicken-e1543038644922-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"heroImageDesktop\";a:4:{s:4:\"file\";s:45:\"filet_and_chicken-e1543038644922-1280x600.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:2:{s:15:\"heroImageMobile\";a:5:{s:1:\"x\";s:2:\"26\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:18:\"230.53846153846075\";s:1:\"h\";s:3:\"333\";s:5:\"scale\";s:1:\"4\";}s:16:\"heroImageDesktop\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"19\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"234.37500000000367\";s:5:\"scale\";s:1:\"4\";}}}');
INSERT INTO `wp_postmeta` VALUES (324,97,'_wp_attachment_backup_sizes','a:7:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"filet_and_chicken.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:29:\"filet_and_chicken-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:29:\"filet_and_chicken-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:29:\"filet_and_chicken-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:30:\"filet_and_chicken-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"heroImageMobile-orig\";a:4:{s:4:\"file\";s:29:\"filet_and_chicken-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"heroImageDesktop-orig\";a:4:{s:4:\"file\";s:30:\"filet_and_chicken-1280x600.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` VALUES (325,98,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (326,98,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (327,98,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (328,98,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (329,98,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (330,98,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (331,98,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (332,98,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (333,98,'hero_image_2_desktop','');
INSERT INTO `wp_postmeta` VALUES (334,98,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (335,98,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (336,98,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (338,43,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (339,43,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (340,101,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (341,101,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (342,101,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (343,101,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (344,101,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (345,101,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (346,101,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (347,101,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (348,101,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (349,101,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (350,101,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (351,101,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (352,101,'hero_image_2_logo','');
INSERT INTO `wp_postmeta` VALUES (353,101,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (356,103,'_wp_attached_file','2018/11/Premium2.png');
INSERT INTO `wp_postmeta` VALUES (357,103,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2018/11/Premium2.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Premium2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Premium2-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Premium2-768x288.png\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"heroImageMobile\";a:4:{s:4:\"file\";s:20:\"Premium2-450x300.png\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"wordImage\";a:4:{s:4:\"file\";s:20:\"Premium2-250x150.png\";s:5:\"width\";i:250;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (358,104,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (359,104,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (360,104,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (361,104,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (362,104,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (363,104,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (364,104,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (365,104,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (366,104,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (367,104,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (368,104,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (369,104,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (370,104,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (371,104,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (372,42,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (373,42,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (374,41,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (375,41,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (376,106,'_edit_lock','1543388683:1');
INSERT INTO `wp_postmeta` VALUES (377,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (378,106,'price','16.95');
INSERT INTO `wp_postmeta` VALUES (379,106,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (380,106,'category','Specials');
INSERT INTO `wp_postmeta` VALUES (381,106,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (382,107,'_edit_lock','1543448842:1');
INSERT INTO `wp_postmeta` VALUES (383,107,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (384,109,'_edit_lock','1543651260:1');
INSERT INTO `wp_postmeta` VALUES (385,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (386,43,'special_offer_1','Free order of egg rolls with purchase of $25 or more (pickup only)');
INSERT INTO `wp_postmeta` VALUES (387,43,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (388,43,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (389,43,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (390,43,'special_offer_2','Free order of soup with purchase of $50 or more (pickup only)');
INSERT INTO `wp_postmeta` VALUES (391,43,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (392,43,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (393,43,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (394,115,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (395,115,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (396,115,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (397,115,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (398,115,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (399,115,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (400,115,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (401,115,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (402,115,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (403,115,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (404,115,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (405,115,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (406,115,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (407,115,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (408,115,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (409,115,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (410,115,'special_offer_1_image','');
INSERT INTO `wp_postmeta` VALUES (411,115,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (412,115,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (413,115,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (414,115,'special_offer_2_image','');
INSERT INTO `wp_postmeta` VALUES (415,115,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (422,119,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (423,119,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (424,119,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (425,119,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (426,119,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (427,119,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (428,119,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (429,119,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (430,119,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (431,119,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (432,119,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (433,119,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (434,119,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (435,119,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (436,119,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (437,119,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (438,119,'special_offer_1_image','118');
INSERT INTO `wp_postmeta` VALUES (439,119,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (440,119,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (441,119,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (442,119,'special_offer_2_image','');
INSERT INTO `wp_postmeta` VALUES (443,119,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (446,121,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (447,121,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (448,121,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (449,121,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (450,121,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (451,121,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (452,121,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (453,121,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (454,121,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (455,121,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (456,121,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (457,121,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (458,121,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (459,121,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (460,121,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (461,121,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (462,121,'special_offer_1_image','118');
INSERT INTO `wp_postmeta` VALUES (463,121,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (464,121,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (465,121,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (466,121,'special_offer_2_image','120');
INSERT INTO `wp_postmeta` VALUES (467,121,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (468,122,'_wp_attached_file','2018/11/2264466866_ecbe325138_z.jpg');
INSERT INTO `wp_postmeta` VALUES (469,122,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1111;s:4:\"file\";s:35:\"2018/11/2264466866_ecbe325138_z.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"2264466866_ecbe325138_z-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"2264466866_ecbe325138_z-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"2264466866_ecbe325138_z-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"2264466866_ecbe325138_z-1024x569.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:569;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"heroImageMobile\";a:4:{s:4:\"file\";s:35:\"2264466866_ecbe325138_z-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"heroImageDesktop\";a:4:{s:4:\"file\";s:36:\"2264466866_ecbe325138_z-1280x600.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"wordImage\";a:4:{s:4:\"file\";s:35:\"2264466866_ecbe325138_z-250x150.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"smallBanner\";a:4:{s:4:\"file\";s:35:\"2264466866_ecbe325138_z-450x150.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:11:\"smallBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"36\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"166.66666666666666\";s:5:\"scale\";s:1:\"4\";}}}');
INSERT INTO `wp_postmeta` VALUES (470,123,'_wp_attached_file','2018/11/general-tso-chicken.0.0.jpg');
INSERT INTO `wp_postmeta` VALUES (471,123,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:35:\"2018/11/general-tso-chicken.0.0.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"general-tso-chicken.0.0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"general-tso-chicken.0.0-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"general-tso-chicken.0.0-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"general-tso-chicken.0.0-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"heroImageMobile\";a:4:{s:4:\"file\";s:35:\"general-tso-chicken.0.0-450x650.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"heroImageDesktop\";a:4:{s:4:\"file\";s:36:\"general-tso-chicken.0.0-1200x600.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"wordImage\";a:4:{s:4:\"file\";s:35:\"general-tso-chicken.0.0-250x150.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"smallBanner\";a:4:{s:4:\"file\";s:35:\"general-tso-chicken.0.0-450x150.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:11:\"smallBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"54\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"166.66666666666666\";s:5:\"scale\";s:3:\"2.4\";}}}');
INSERT INTO `wp_postmeta` VALUES (472,124,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (473,124,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (474,124,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (475,124,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (476,124,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (477,124,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (478,124,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (479,124,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (480,124,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (481,124,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (482,124,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (483,124,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (484,124,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (485,124,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (486,124,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (487,124,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (488,124,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (489,124,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (490,124,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (491,124,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (492,124,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (493,124,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (494,20,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (495,20,'_wp_trash_meta_time','1543196784');
INSERT INTO `wp_postmeta` VALUES (496,20,'_wp_desired_post_slug','hibachi-steak');
INSERT INTO `wp_postmeta` VALUES (497,43,'_yoast_wpseo_metadesc','Homepage for Hibachi Chinese Restaurant at 3230 Medlock Bridge Rd');
INSERT INTO `wp_postmeta` VALUES (498,43,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (499,130,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (500,130,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (501,130,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (502,130,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (503,130,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (504,130,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (505,130,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (506,130,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (507,130,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (508,130,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (509,130,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (510,130,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (511,130,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (512,130,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (513,130,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (514,130,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (515,130,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (516,130,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (517,130,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (518,130,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (519,130,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (520,130,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (521,131,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (522,131,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (523,131,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (524,131,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (525,131,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (526,131,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (527,131,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (528,131,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (529,131,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (530,131,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (531,131,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (532,131,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (533,131,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (534,131,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (535,131,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (536,131,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (537,131,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (538,131,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (539,131,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (540,131,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (541,131,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (542,131,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (543,132,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (544,132,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (545,132,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (546,132,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (547,132,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (548,132,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (549,132,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (550,132,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (551,132,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (552,132,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (553,132,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (554,132,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (555,132,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (556,132,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (557,132,'special_offer_1','Free order of egg rolls with purchase of $20 or more');
INSERT INTO `wp_postmeta` VALUES (558,132,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (559,132,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (560,132,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (561,132,'special_offer_2','Free General Tso\'s Chicken with purchase of $40 or more');
INSERT INTO `wp_postmeta` VALUES (562,132,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (563,132,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (564,132,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (565,135,'_edit_lock','1543537760:1');
INSERT INTO `wp_postmeta` VALUES (566,135,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (567,135,'price','8.95');
INSERT INTO `wp_postmeta` VALUES (568,135,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (569,135,'category','Chicken');
INSERT INTO `wp_postmeta` VALUES (570,135,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (571,135,'order','5');
INSERT INTO `wp_postmeta` VALUES (572,135,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (573,41,'order','7');
INSERT INTO `wp_postmeta` VALUES (574,41,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (575,42,'order','7');
INSERT INTO `wp_postmeta` VALUES (576,42,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (577,143,'_edit_lock','1543441220:1');
INSERT INTO `wp_postmeta` VALUES (578,143,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (579,143,'price','7.65');
INSERT INTO `wp_postmeta` VALUES (580,143,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (581,143,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (582,143,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (583,143,'order','7');
INSERT INTO `wp_postmeta` VALUES (584,143,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (586,145,'_edit_lock','1543393129:1');
INSERT INTO `wp_postmeta` VALUES (587,145,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (588,145,'price','9.99');
INSERT INTO `wp_postmeta` VALUES (589,145,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (590,145,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (591,145,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (592,145,'order','7');
INSERT INTO `wp_postmeta` VALUES (593,145,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (594,146,'_edit_lock','1543441245:1');
INSERT INTO `wp_postmeta` VALUES (595,146,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (596,146,'price','5.55');
INSERT INTO `wp_postmeta` VALUES (597,146,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (598,146,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (599,146,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (600,146,'order','1');
INSERT INTO `wp_postmeta` VALUES (601,146,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (602,147,'_edit_lock','1543393277:1');
INSERT INTO `wp_postmeta` VALUES (603,147,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (604,147,'price','4');
INSERT INTO `wp_postmeta` VALUES (605,147,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (606,147,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (607,147,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (608,147,'order','12');
INSERT INTO `wp_postmeta` VALUES (609,147,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (610,146,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (611,146,'_wp_trash_meta_time','1543441266');
INSERT INTO `wp_postmeta` VALUES (612,146,'_wp_desired_post_slug','a');
INSERT INTO `wp_postmeta` VALUES (613,147,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (614,147,'_wp_trash_meta_time','1543441268');
INSERT INTO `wp_postmeta` VALUES (615,147,'_wp_desired_post_slug','c');
INSERT INTO `wp_postmeta` VALUES (616,145,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (617,145,'_wp_trash_meta_time','1543441277');
INSERT INTO `wp_postmeta` VALUES (618,145,'_wp_desired_post_slug','testing');
INSERT INTO `wp_postmeta` VALUES (619,148,'_edit_lock','1543536960:1');
INSERT INTO `wp_postmeta` VALUES (620,148,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (621,148,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (622,148,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (623,148,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (624,148,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (625,148,'order','5');
INSERT INTO `wp_postmeta` VALUES (626,148,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (627,155,'_edit_lock','1543454584:1');
INSERT INTO `wp_postmeta` VALUES (628,155,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (629,155,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (630,155,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (631,155,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (632,155,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (633,155,'order','1');
INSERT INTO `wp_postmeta` VALUES (634,155,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (635,156,'_edit_lock','1543550321:1');
INSERT INTO `wp_postmeta` VALUES (636,156,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (637,156,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (638,156,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (639,156,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (640,156,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (641,156,'order','2');
INSERT INTO `wp_postmeta` VALUES (642,156,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (643,157,'_edit_lock','1543539230:1');
INSERT INTO `wp_postmeta` VALUES (645,160,'_edit_lock','1543454682:1');
INSERT INTO `wp_postmeta` VALUES (646,160,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (647,160,'price','6.24');
INSERT INTO `wp_postmeta` VALUES (648,160,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (649,160,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (650,160,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (651,160,'order','7');
INSERT INTO `wp_postmeta` VALUES (652,160,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (653,160,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (654,160,'_wp_trash_meta_time','1543454841');
INSERT INTO `wp_postmeta` VALUES (655,160,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (656,161,'_edit_lock','1543536987:1');
INSERT INTO `wp_postmeta` VALUES (657,161,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (658,161,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (659,161,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (660,161,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (661,161,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (662,161,'order','5');
INSERT INTO `wp_postmeta` VALUES (663,161,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (664,162,'_edit_lock','1543817521:1');
INSERT INTO `wp_postmeta` VALUES (665,162,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (666,162,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (667,162,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (668,162,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (669,162,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (670,162,'order','5');
INSERT INTO `wp_postmeta` VALUES (671,162,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (672,163,'_edit_lock','1543817628:1');
INSERT INTO `wp_postmeta` VALUES (673,163,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (674,163,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (675,163,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (676,163,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (677,163,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (678,163,'order','5');
INSERT INTO `wp_postmeta` VALUES (679,163,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (680,164,'_edit_lock','1544142261:1');
INSERT INTO `wp_postmeta` VALUES (681,164,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (682,164,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (683,164,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (684,164,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (685,164,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (686,164,'order','6');
INSERT INTO `wp_postmeta` VALUES (687,164,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (688,165,'_edit_lock','1544132001:1');
INSERT INTO `wp_postmeta` VALUES (689,165,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (690,165,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (691,165,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (692,165,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (693,165,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (694,165,'order','6');
INSERT INTO `wp_postmeta` VALUES (695,165,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (696,157,'_wp_old_date','2018-11-28');
INSERT INTO `wp_postmeta` VALUES (697,157,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (699,168,'_edit_lock','1543958004:1');
INSERT INTO `wp_postmeta` VALUES (700,168,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (701,157,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (702,157,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (703,157,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (704,157,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (705,157,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (706,157,'_category-dinner','field_5c0088d49550e');
INSERT INTO `wp_postmeta` VALUES (707,157,'order','7');
INSERT INTO `wp_postmeta` VALUES (708,157,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (709,173,'_edit_lock','1543539222:1');
INSERT INTO `wp_postmeta` VALUES (710,173,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (711,173,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (712,173,'_price','field_5bf509011e720');
INSERT INTO `wp_postmeta` VALUES (713,173,'category','Lunch');
INSERT INTO `wp_postmeta` VALUES (714,173,'_category','field_5bfa17c11c7f2');
INSERT INTO `wp_postmeta` VALUES (715,173,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (716,173,'_category-dinner','field_5c0088d49550e');
INSERT INTO `wp_postmeta` VALUES (717,173,'order','7');
INSERT INTO `wp_postmeta` VALUES (718,173,'_order','field_5bfe3bfef87fd');
INSERT INTO `wp_postmeta` VALUES (719,165,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (720,165,'_category-dinner','field_5c0088d49550e');
INSERT INTO `wp_postmeta` VALUES (721,164,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (722,164,'_category-dinner','field_5c0088d49550e');
INSERT INTO `wp_postmeta` VALUES (723,174,'_edit_lock','1543550129:1');
INSERT INTO `wp_postmeta` VALUES (724,174,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (725,174,'price','1.75');
INSERT INTO `wp_postmeta` VALUES (726,174,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (727,174,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (728,174,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (729,174,'order','5');
INSERT INTO `wp_postmeta` VALUES (730,174,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (731,156,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (732,156,'_category-dinner','field_5c0088d49550e');
INSERT INTO `wp_postmeta` VALUES (733,175,'_edit_lock','1543648690:1');
INSERT INTO `wp_postmeta` VALUES (734,175,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (735,175,'price','1.25');
INSERT INTO `wp_postmeta` VALUES (736,175,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (737,175,'category-dinner','Appetizer');
INSERT INTO `wp_postmeta` VALUES (738,175,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (739,175,'order','5');
INSERT INTO `wp_postmeta` VALUES (740,175,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (741,176,'_edit_lock','1543818194:1');
INSERT INTO `wp_postmeta` VALUES (742,176,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (743,176,'price','1.95');
INSERT INTO `wp_postmeta` VALUES (744,176,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (745,176,'category-dinner','Soup');
INSERT INTO `wp_postmeta` VALUES (746,176,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (747,176,'order','4');
INSERT INTO `wp_postmeta` VALUES (748,176,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (749,176,'price2','3.50');
INSERT INTO `wp_postmeta` VALUES (750,176,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (751,176,'_','field_5c023636d9572');
INSERT INTO `wp_postmeta` VALUES (752,179,'_edit_lock','1543648982:1');
INSERT INTO `wp_postmeta` VALUES (753,179,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (754,179,'price','1.95');
INSERT INTO `wp_postmeta` VALUES (755,179,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (756,179,'price2','3.50');
INSERT INTO `wp_postmeta` VALUES (757,179,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (758,179,'category-dinner','Soup');
INSERT INTO `wp_postmeta` VALUES (759,179,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (760,179,'order','5');
INSERT INTO `wp_postmeta` VALUES (761,179,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (762,180,'_edit_lock','1543817996:1');
INSERT INTO `wp_postmeta` VALUES (763,180,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (764,180,'price','8.45');
INSERT INTO `wp_postmeta` VALUES (765,180,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (766,180,'price2','');
INSERT INTO `wp_postmeta` VALUES (767,180,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (768,180,'category-dinner','Chicken');
INSERT INTO `wp_postmeta` VALUES (769,180,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (770,180,'order','1');
INSERT INTO `wp_postmeta` VALUES (771,180,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (772,181,'_edit_lock','1543649453:1');
INSERT INTO `wp_postmeta` VALUES (773,181,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (774,181,'price','8.45');
INSERT INTO `wp_postmeta` VALUES (775,181,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (776,181,'price2','');
INSERT INTO `wp_postmeta` VALUES (777,181,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (778,181,'category-dinner','Beef');
INSERT INTO `wp_postmeta` VALUES (779,181,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (780,181,'order','1');
INSERT INTO `wp_postmeta` VALUES (781,181,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (782,182,'_edit_lock','1543649521:1');
INSERT INTO `wp_postmeta` VALUES (783,182,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (784,182,'price','8.45');
INSERT INTO `wp_postmeta` VALUES (785,182,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (786,182,'price2','');
INSERT INTO `wp_postmeta` VALUES (787,182,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (788,182,'category-dinner','Seafood');
INSERT INTO `wp_postmeta` VALUES (789,182,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (790,182,'order','1');
INSERT INTO `wp_postmeta` VALUES (791,182,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (792,185,'_edit_lock','1543651980:1');
INSERT INTO `wp_postmeta` VALUES (793,185,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (794,185,'price','6.25');
INSERT INTO `wp_postmeta` VALUES (795,185,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (796,185,'price2','');
INSERT INTO `wp_postmeta` VALUES (797,185,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (798,185,'category-dinner','Chicken');
INSERT INTO `wp_postmeta` VALUES (799,185,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (800,185,'order','5');
INSERT INTO `wp_postmeta` VALUES (801,185,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (802,185,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (803,185,'_wp_trash_meta_time','1543817585');
INSERT INTO `wp_postmeta` VALUES (804,185,'_wp_desired_post_slug','tes');
INSERT INTO `wp_postmeta` VALUES (806,187,'_edit_lock','1543817591:1');
INSERT INTO `wp_postmeta` VALUES (807,187,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (808,187,'price','8.95');
INSERT INTO `wp_postmeta` VALUES (809,187,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (810,187,'price2','');
INSERT INTO `wp_postmeta` VALUES (811,187,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (812,187,'category-dinner','Chicken');
INSERT INTO `wp_postmeta` VALUES (813,187,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (814,187,'order','5');
INSERT INTO `wp_postmeta` VALUES (815,187,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (816,188,'_edit_lock','1543817765:1');
INSERT INTO `wp_postmeta` VALUES (817,188,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (818,188,'price','8.95');
INSERT INTO `wp_postmeta` VALUES (819,188,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (820,188,'price2','');
INSERT INTO `wp_postmeta` VALUES (821,188,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (822,188,'category-dinner','Chicken');
INSERT INTO `wp_postmeta` VALUES (823,188,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (824,188,'order','5');
INSERT INTO `wp_postmeta` VALUES (825,188,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (826,189,'_edit_lock','1543817866:1');
INSERT INTO `wp_postmeta` VALUES (827,189,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (828,189,'price','8.95');
INSERT INTO `wp_postmeta` VALUES (829,189,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (830,189,'price2','');
INSERT INTO `wp_postmeta` VALUES (831,189,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (832,189,'category-dinner','Chicken');
INSERT INTO `wp_postmeta` VALUES (833,189,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (834,189,'order','5');
INSERT INTO `wp_postmeta` VALUES (835,189,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (836,190,'_edit_lock','1543818322:1');
INSERT INTO `wp_postmeta` VALUES (837,190,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (838,190,'price','12.95');
INSERT INTO `wp_postmeta` VALUES (839,190,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (840,190,'price2','');
INSERT INTO `wp_postmeta` VALUES (841,190,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (842,190,'category-dinner','Specials');
INSERT INTO `wp_postmeta` VALUES (843,190,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (844,190,'order','5');
INSERT INTO `wp_postmeta` VALUES (845,190,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (846,191,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (847,191,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (848,191,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (849,191,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (850,191,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (851,191,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (852,191,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (853,191,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (854,191,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (855,191,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (856,191,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (857,191,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (858,191,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (859,191,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (860,191,'special_offer_1','Free order of egg rolls with purchase of $20 or more (mention code HIBACHI20)');
INSERT INTO `wp_postmeta` VALUES (861,191,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (862,191,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (863,191,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (864,191,'special_offer_2','Free order of wings with purchase of $50 or more (mention code HIBACHI20 + flavor)');
INSERT INTO `wp_postmeta` VALUES (865,191,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (866,191,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (867,191,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (868,192,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (869,192,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (870,192,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (871,192,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (872,192,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (873,192,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (874,192,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (875,192,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (876,192,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (877,192,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (878,192,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (879,192,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (880,192,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (881,192,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (882,192,'special_offer_1','Free order of egg rolls with purchase of $20 or more (mention code HIBACHI20)');
INSERT INTO `wp_postmeta` VALUES (883,192,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (884,192,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (885,192,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (886,192,'special_offer_2','Free order of wings with purchase of $50 or more (mention code HIBACHI50 + flavor)');
INSERT INTO `wp_postmeta` VALUES (887,192,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (888,192,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (889,192,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (890,193,'_edit_lock','1543967706:1');
INSERT INTO `wp_postmeta` VALUES (891,193,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (892,193,'price','10.95');
INSERT INTO `wp_postmeta` VALUES (893,193,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (894,193,'price2','');
INSERT INTO `wp_postmeta` VALUES (895,193,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (896,193,'category-dinner','Hibachi');
INSERT INTO `wp_postmeta` VALUES (897,193,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (898,193,'order','5');
INSERT INTO `wp_postmeta` VALUES (899,193,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (900,194,'_edit_lock','1544071133:1');
INSERT INTO `wp_postmeta` VALUES (901,194,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (902,194,'price','8.95');
INSERT INTO `wp_postmeta` VALUES (903,194,'_price','field_5c00894d08311');
INSERT INTO `wp_postmeta` VALUES (904,194,'price2','');
INSERT INTO `wp_postmeta` VALUES (905,194,'_price2','field_5c023639d9573');
INSERT INTO `wp_postmeta` VALUES (906,194,'category-dinner','Pork');
INSERT INTO `wp_postmeta` VALUES (907,194,'_category-dinner','field_5c00894d08374');
INSERT INTO `wp_postmeta` VALUES (908,194,'order','5');
INSERT INTO `wp_postmeta` VALUES (909,194,'_order','field_5c00894d083b9');
INSERT INTO `wp_postmeta` VALUES (910,195,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (911,195,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (912,195,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (913,195,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (914,195,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (915,195,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (916,195,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (917,195,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (918,195,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (919,195,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (920,195,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (921,195,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (922,195,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (923,195,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (924,195,'special_offer_1','Free order of egg rolls with purchase of $25 or more');
INSERT INTO `wp_postmeta` VALUES (925,195,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (926,195,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (927,195,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (928,195,'special_offer_2','Free order of soup with purchase of $50 or more');
INSERT INTO `wp_postmeta` VALUES (929,195,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (930,195,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (931,195,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (932,196,'hero_image_1_mobile','81');
INSERT INTO `wp_postmeta` VALUES (933,196,'_hero_image_1_mobile','field_5bf7b6e18bf0f');
INSERT INTO `wp_postmeta` VALUES (934,196,'hero_image_1_desktop','92');
INSERT INTO `wp_postmeta` VALUES (935,196,'_hero_image_1_desktop','field_5bf86952334db');
INSERT INTO `wp_postmeta` VALUES (936,196,'test','this is a test');
INSERT INTO `wp_postmeta` VALUES (937,196,'_test','field_5bf86a73f934a');
INSERT INTO `wp_postmeta` VALUES (938,196,'hero_image_2_mobile','97');
INSERT INTO `wp_postmeta` VALUES (939,196,'_hero_image_2_mobile','field_5bf885e92a849');
INSERT INTO `wp_postmeta` VALUES (940,196,'hero_image_2_desktop','97');
INSERT INTO `wp_postmeta` VALUES (941,196,'_hero_image_2_desktop','field_5bf88600b47d8');
INSERT INTO `wp_postmeta` VALUES (942,196,'hero_image_2_title','Hibachi NY Steak and Shrimp');
INSERT INTO `wp_postmeta` VALUES (943,196,'_hero_image_2_title','field_5bf8861214717');
INSERT INTO `wp_postmeta` VALUES (944,196,'hero_image_2_logo','103');
INSERT INTO `wp_postmeta` VALUES (945,196,'_hero_image_2_logo','field_5bf9a40a534d5');
INSERT INTO `wp_postmeta` VALUES (946,196,'special_offer_1','Free order of egg rolls with purchase of $25 or more (pickup only)');
INSERT INTO `wp_postmeta` VALUES (947,196,'_special_offer_1','field_5bfaf85c3bc21');
INSERT INTO `wp_postmeta` VALUES (948,196,'special_offer_1_image','122');
INSERT INTO `wp_postmeta` VALUES (949,196,'_special_offer_1_image','field_5bfaf88f1c472');
INSERT INTO `wp_postmeta` VALUES (950,196,'special_offer_2','Free order of soup with purchase of $50 or more (pickup only)');
INSERT INTO `wp_postmeta` VALUES (951,196,'_special_offer_2','field_5bfaf8a1d12a0');
INSERT INTO `wp_postmeta` VALUES (952,196,'special_offer_2_image','123');
INSERT INTO `wp_postmeta` VALUES (953,196,'_special_offer_2_image','field_5bfaf8ac7029a');
INSERT INTO `wp_postmeta` VALUES (954,197,'_edit_lock','1544131841:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2018-11-20 05:56:23','2018-11-20 05:56:23','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2018-11-20 05:56:23','2018-11-20 05:56:23','',0,'http://hibachi.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2018-11-20 05:56:23','2018-11-20 05:56:23','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://hibachi.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2018-11-20 05:56:23','2018-11-20 05:56:23','',0,'http://hibachi.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2018-11-20 05:56:23','2018-11-20 05:56:23','<h2>Who we are</h2><p>Our website address is: http://hibachi.local.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','draft','closed','open','','privacy-policy','','','2018-11-20 05:56:23','2018-11-20 05:56:23','',0,'http://hibachi.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2018-11-21 05:36:27','2018-11-21 05:36:27','<!-- wp:cover {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\"} -->\n<div class=\"wp-block-cover has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong> the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you’ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture is Worth a Thousand Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you’ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":302,\"height\":202} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\" width=\"302\" height=\"202\"/><figcaption>If your theme supports it, you’ll see the \"wide\" button on the image toolbar. Give it a try.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don’t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That’s the spirit behind the inserter—the <code>(+)</code> button you’ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Testing this quote</p><cite>citation/author</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn’t know about. Here’s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavor to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It’s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null,null],\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/ZjESfxPI3R.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"full\"} -->\n<figure class=\"wp-block-image alignfull\"><img src=\"https://cldup.com/8lhI-gKnI2.jpg\" alt=\"Accessibility is important — don’t forget image alt attribute\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null],\"align\":\"wide\",\"className\":\"alignwide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It’s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\",\"className\":\"wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://vimeo.com/22439234\n</div></figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here’s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">\n	<em>\n		If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.	</em>\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"?\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"></p>\n<!-- /wp:paragraph -->','Welcome to the Gutenberg Editor','','publish','open','open','','welcome-to-the-gutenberg-editor','','\nhttps://vimeo.com/22439234','2018-11-21 06:39:56','2018-11-21 06:39:56','',0,'http://hibachi.local/?p=14',0,'post','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2018-11-21 05:36:27','2018-11-21 05:36:27','<!-- wp:cover {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\"} -->\n<div class=\"wp-block-cover has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you’ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong> the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture is Worth a Thousand Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you’ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\"/><figcaption>If your theme supports it, you’ll see the \"wide\" button on the image toolbar. Give it a try.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don’t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That’s the spirit behind the inserter—the <code>(+)</code> button you’ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Testing this quote</p><cite>citation/author</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn’t know about. Here’s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavor to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It’s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null,null],\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/ZjESfxPI3R.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"full\"} -->\n<figure class=\"wp-block-image alignfull\"><img src=\"https://cldup.com/8lhI-gKnI2.jpg\" alt=\"Accessibility is important — don’t forget image alt attribute\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null],\"align\":\"wide\",\"className\":\"alignwide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It’s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\",\"className\":\"wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://vimeo.com/22439234\n</div></figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here’s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">\n	<em>\n		If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.	</em>\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"?\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"></p>\n<!-- /wp:paragraph -->','Welcome to the Gutenberg Editor','','inherit','closed','closed','','14-revision-v1','','','2018-11-21 05:36:27','2018-11-21 05:36:27','',14,'http://hibachi.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2018-11-21 06:37:59','2018-11-21 06:37:59','<!-- wp:cover {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\"} -->\n<div class=\"wp-block-cover has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you’ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong> the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture is Worth a Thousand Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you’ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\"/><figcaption>If your theme supports it, you’ll see the \"wide\" button on the image toolbar. Give it a try.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don’t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That’s the spirit behind the inserter—the <code>(+)</code> button you’ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Testing this quote</p><cite>citation/author</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn’t know about. Here’s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavor to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It’s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null,null],\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/ZjESfxPI3R.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"full\"} -->\n<figure class=\"wp-block-image alignfull\"><img src=\"https://cldup.com/8lhI-gKnI2.jpg\" alt=\"Accessibility is important — don’t forget image alt attribute\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null],\"align\":\"wide\",\"className\":\"alignwide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It’s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\",\"className\":\"wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://vimeo.com/22439234\n</div></figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here’s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">\n	<em>\n		If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.	</em>\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"?\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"></p>\n<!-- /wp:paragraph -->','Welcome to the Gutenberg Editor','','inherit','closed','closed','','14-autosave-v1','','','2018-11-21 06:37:59','2018-11-21 06:37:59','',14,'http://hibachi.local/14-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2018-11-21 06:39:25','2018-11-21 06:39:25','<!-- wp:cover {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\"} -->\n<div class=\"wp-block-cover has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong> the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you’ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture is Worth a Thousand Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you’ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\"/><figcaption>If your theme supports it, you’ll see the \"wide\" button on the image toolbar. Give it a try.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don’t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That’s the spirit behind the inserter—the <code>(+)</code> button you’ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Testing this quote</p><cite>citation/author</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn’t know about. Here’s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavor to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It’s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null,null],\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/ZjESfxPI3R.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"full\"} -->\n<figure class=\"wp-block-image alignfull\"><img src=\"https://cldup.com/8lhI-gKnI2.jpg\" alt=\"Accessibility is important — don’t forget image alt attribute\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null],\"align\":\"wide\",\"className\":\"alignwide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It’s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\",\"className\":\"wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://vimeo.com/22439234\n</div></figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here’s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">\n	<em>\n		If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.	</em>\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"?\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"></p>\n<!-- /wp:paragraph -->','Welcome to the Gutenberg Editor','','inherit','closed','closed','','14-revision-v1','','','2018-11-21 06:39:25','2018-11-21 06:39:25','',14,'http://hibachi.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2018-11-21 06:39:56','2018-11-21 06:39:56','<!-- wp:cover {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\"} -->\n<div class=\"wp-block-cover has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong> the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you’ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture is Worth a Thousand Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you’ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"left\",\"width\":302,\"height\":202} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\" width=\"302\" height=\"202\"/><figcaption>If your theme supports it, you’ll see the \"wide\" button on the image toolbar. Give it a try.</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don’t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That’s the spirit behind the inserter—the <code>(+)</code> button you’ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Testing this quote</p><cite>citation/author</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn’t know about. Here’s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavor to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It’s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null,null],\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/ZjESfxPI3R.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"full\"} -->\n<figure class=\"wp-block-image alignfull\"><img src=\"https://cldup.com/8lhI-gKnI2.jpg\" alt=\"Accessibility is important — don’t forget image alt attribute\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[null,null],\"align\":\"wide\",\"className\":\"alignwide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It’s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\",\"className\":\"wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://vimeo.com/22439234\n</div></figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here’s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">\n	<em>\n		If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.	</em>\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"?\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"></p>\n<!-- /wp:paragraph -->','Welcome to the Gutenberg Editor','','inherit','closed','closed','','14-revision-v1','','','2018-11-21 06:39:56','2018-11-21 06:39:56','',14,'http://hibachi.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2018-11-21 07:20:13','2018-11-21 07:20:13','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>12.95</p>\n<!-- /wp:paragraph -->','Hibachi Steak','','trash','open','open','','hibachi-steak__trashed','','','2018-11-26 01:46:24','2018-11-26 01:46:24','',0,'http://hibachi.local/?p=20',0,'post','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2018-11-21 07:20:13','2018-11-21 07:20:13','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce. </p>\n<!-- /wp:paragraph -->','Hibachi Steak','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 07:20:13','2018-11-21 07:20:13','',20,'http://hibachi.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2018-11-21 07:22:14','2018-11-21 07:22:14','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce. </p>\n<!-- /wp:paragraph -->','Untitled Reusable Block','','publish','closed','closed','','untitled-reusable-block','','','2018-11-21 07:22:14','2018-11-21 07:22:14','',0,'http://hibachi.local/?wp_block=untitled-reusable-block',0,'wp_block','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2018-11-21 07:27:22','2018-11-21 07:27:22','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>12.95</p>\n<!-- /wp:paragraph -->','Hibachi Steak','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 07:27:22','2018-11-21 07:27:22','',20,'http://hibachi.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2018-11-21 07:29:31','2018-11-21 07:29:31','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"food\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Food Attributes','food-attributes','publish','closed','closed','','group_5bf508ef2d554','','','2018-11-30 00:50:15','2018-11-30 00:50:15','',0,'http://hibachi.local/?post_type=acf-field-group&#038;p=31',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2018-11-21 07:29:31','2018-11-21 07:29:31','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:3:\".01\";}','price','price','publish','closed','closed','','field_5bf509011e720','','','2018-11-21 07:29:31','2018-11-21 07:29:31','',31,'http://hibachi.local/?post_type=acf-field&p=32',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2018-11-21 07:31:27','2018-11-21 07:31:27','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>12.95</p>\n<!-- /wp:paragraph -->','Hibachi Steak','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 07:31:27','2018-11-21 07:31:27','',20,'http://hibachi.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2018-11-21 07:31:27','2018-11-21 07:31:27','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>12.95</p>\n<!-- /wp:paragraph -->','Hibachi Steak','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 07:31:27','2018-11-21 07:31:27','',20,'http://hibachi.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2018-11-21 07:48:34','2018-11-21 07:48:34','<!-- wp:paragraph -->\n<p>Premium flank steak grilled Hibachi-style and tossed with fresh chinese vegetables. Comes with a side of Yum Yum Sauce.&nbsp;</p>\n<!-- /wp:paragraph -->','Hibachi Steak','','inherit','closed','closed','','20-autosave-v1','','','2018-11-21 07:48:34','2018-11-21 07:48:34','',20,'http://hibachi.local/20-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,0,'2018-11-21 07:54:15','2018-11-21 07:54:15','<!-- wp:paragraph -->\n<p>Prime flank steak grilled Hibachi style and tossed with a medley of fresh Chinese vegetables. Includes a side of Yum Yum sauce.</p>\n<!-- /wp:paragraph -->','L. Hibachi Steak','','publish','closed','closed','','hibachi-steak','','','2018-11-28 21:40:09','2018-11-28 21:40:09','',0,'http://hibachi.local/?post_type=food&#038;p=41',0,'food','',0);
INSERT INTO `wp_posts` VALUES (42,0,'2018-11-21 07:55:51','2018-11-21 07:55:51','<!-- wp:paragraph -->\n<p>Chunks of chicken breast grilled Hibachi style and tossed with a medley of fresh Chinese veggies + side of Yum Yum sauce.&nbsp;</p>\n<!-- /wp:paragraph -->','L. Hibachi Chicken','','publish','closed','closed','','hibachi-chicken','','','2018-11-28 21:39:55','2018-11-28 21:39:55','',0,'http://hibachi.local/?post_type=food&#038;p=42',0,'food','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2018-11-23 07:56:50','2018-11-23 07:56:50','','Home','','publish','closed','closed','','home','','','2018-12-06 05:31:46','2018-12-06 05:31:46','',0,'http://hibachi.local/?page_id=43',0,'page','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2018-11-23 07:56:50','2018-11-23 07:56:50','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 07:56:50','2018-11-23 07:56:50','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2018-11-23 08:16:46','2018-11-23 08:16:46','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Hero Image','hero-image','publish','closed','closed','','group_5bf7b6d06855d','','','2018-11-25 19:32:08','2018-11-25 19:32:08','',0,'http://hibachi.local/?post_type=acf-field-group&#038;p=46',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2018-11-23 08:16:46','2018-11-23 08:16:46','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:54:\"The first hero image shown on homepage, mobile version\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','hero image 1 mobile','hero_image_1_mobile','publish','closed','closed','','field_5bf7b6e18bf0f','','','2018-11-23 08:16:46','2018-11-23 08:16:46','',46,'http://hibachi.local/?post_type=acf-field&p=47',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2018-11-23 20:55:29','2018-11-23 20:55:29','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 20:55:29','2018-11-23 20:55:29','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2018-11-23 20:56:20','2018-11-23 20:56:20','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','hero image 1 desktop','hero_image_1_desktop','publish','closed','closed','','field_5bf86952334db','','','2018-11-23 20:56:20','2018-11-23 20:56:20','',46,'http://hibachi.local/?post_type=acf-field&p=52',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2018-11-23 20:56:39','2018-11-23 20:56:39','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 20:56:39','2018-11-23 20:56:39','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2018-11-23 21:00:56','2018-11-23 21:00:56','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 21:00:56','2018-11-23 21:00:56','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2018-11-23 21:37:12','2018-11-23 21:37:12','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 21:37:12','2018-11-23 21:37:12','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2018-11-23 22:49:08','2018-11-23 22:49:08','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 22:49:08','2018-11-23 22:49:08','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2018-11-23 22:50:10','2018-11-23 22:50:10','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 22:50:10','2018-11-23 22:50:10','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2018-11-23 22:50:20','2018-11-23 22:50:20','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 22:50:20','2018-11-23 22:50:20','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2018-11-23 22:51:35','2018-11-23 22:51:35','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 22:51:35','2018-11-23 22:51:35','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2018-11-23 22:53:35','2018-11-23 22:53:35','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 22:53:35','2018-11-23 22:53:35','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2018-11-23 22:54:01','2018-11-23 22:54:01','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 22:54:01','2018-11-23 22:54:01','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2018-11-23 22:58:06','2018-11-23 22:58:06','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','hero image 2 mobile','hero_image_2_mobile','publish','closed','closed','','field_5bf885e92a849','','','2018-11-23 22:58:06','2018-11-23 22:58:06','',46,'http://hibachi.local/?post_type=acf-field&p=71',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2018-11-23 22:58:19','2018-11-23 22:58:19','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','hero image 2 desktop','hero_image_2_desktop','publish','closed','closed','','field_5bf88600b47d8','','','2018-11-23 22:58:19','2018-11-23 22:58:19','',46,'http://hibachi.local/?post_type=acf-field&p=72',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2018-11-23 22:59:15','2018-11-23 22:59:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"The title for the main featured dish in hero image 2\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','hero image 2 title','hero_image_2_title','publish','closed','closed','','field_5bf8861214717','','','2018-11-23 22:59:15','2018-11-23 22:59:15','',46,'http://hibachi.local/?post_type=acf-field&p=73',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2018-11-23 23:08:10','2018-11-23 23:08:10','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-23 23:08:10','2018-11-23 23:08:10','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2018-11-24 00:21:33','2018-11-24 00:21:33','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:21:33','2018-11-24 00:21:33','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2018-11-24 00:22:42','2018-11-24 00:22:42','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:22:42','2018-11-24 00:22:42','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2018-11-24 00:25:31','2018-11-24 00:25:31','','dreamstime_l_56836922','','inherit','open','closed','','dreamstime_l_56836922','','','2018-11-24 00:25:41','2018-11-24 00:25:41','',43,'http://hibachi.local/wp-content/uploads/2018/11/dreamstime_l_56836922.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2018-11-24 00:25:42','2018-11-24 00:25:42','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:25:42','2018-11-24 00:25:42','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2018-11-24 00:27:22','2018-11-24 00:27:22','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:27:22','2018-11-24 00:27:22','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2018-11-24 00:27:46','2018-11-24 00:27:46','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:27:46','2018-11-24 00:27:46','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2018-11-24 00:33:26','2018-11-24 00:33:26','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:33:26','2018-11-24 00:33:26','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2018-11-24 00:37:17','2018-11-24 00:37:17','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:37:17','2018-11-24 00:37:17','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2018-11-24 00:37:54','2018-11-24 00:37:54','','dreamstime_l_56836922','','inherit','open','closed','','dreamstime_l_56836922-2','','','2018-11-24 00:38:05','2018-11-24 00:38:05','',43,'http://hibachi.local/wp-content/uploads/2018/11/dreamstime_l_56836922-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2018-11-24 00:38:07','2018-11-24 00:38:07','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 00:38:07','2018-11-24 00:38:07','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2018-11-24 02:18:50','2018-11-24 02:18:50','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 02:18:50','2018-11-24 02:18:50','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2018-11-24 02:29:21','2018-11-24 02:29:21','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 02:29:21','2018-11-24 02:29:21','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2018-11-24 05:49:51','2018-11-24 05:49:51','','filet_and_chicken','','inherit','open','closed','','filet_and_chicken','','','2018-11-24 05:49:51','2018-11-24 05:49:51','',43,'http://hibachi.local/wp-content/uploads/2018/11/filet_and_chicken.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (98,1,'2018-11-24 05:51:14','2018-11-24 05:51:14','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 05:51:14','2018-11-24 05:51:14','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2018-11-24 19:19:26','2018-11-24 19:19:26','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:42:\"Logo to be displayed for the featured dish\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','hero image 2 logo','hero_image_2_logo','publish','closed','closed','','field_5bf9a40a534d5','','','2018-11-24 19:19:26','2018-11-24 19:19:26','',46,'http://hibachi.local/?post_type=acf-field&p=100',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2018-11-24 21:28:48','2018-11-24 21:28:48','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 21:28:48','2018-11-24 21:28:48','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2018-11-24 21:34:25','2018-11-24 21:34:25','','Premium2','','inherit','open','closed','','premium2','','','2018-11-24 21:34:25','2018-11-24 21:34:25','',43,'http://hibachi.local/wp-content/uploads/2018/11/Premium2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (104,1,'2018-11-24 21:38:10','2018-11-24 21:38:10','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-24 21:38:10','2018-11-24 21:38:10','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2018-11-25 03:34:47','2018-11-25 03:34:47','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:5:\"Lunch\";s:5:\"Lunch\";s:5:\"Other\";s:5:\"Other\";}s:13:\"default_value\";a:1:{i:0;s:5:\"Lunch\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','category','category','publish','closed','closed','','field_5bfa17c11c7f2','','','2018-11-30 00:48:11','2018-11-30 00:48:11','',31,'http://hibachi.local/?post_type=acf-field&#038;p=105',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,0,'2018-11-25 03:37:00','2018-11-25 03:37:00','<!-- wp:paragraph -->\n<p>Chunks of premium steak and jumbo shrimp grilled Hibachi style and tossed with Chinese veggies. Served with a large side of Yum Yum sauce. </p>\n<!-- /wp:paragraph -->','Hibachi Shrimp & Steak','','publish','closed','closed','','hibachi-shrimp-steak','','','2018-11-25 03:37:00','2018-11-25 03:37:00','',0,'http://hibachi.local/?post_type=food&#038;p=106',0,'food','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2018-11-25 07:50:31','2018-11-25 07:50:31','<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Served Mon-Fri 11:00am- 3:00pm Sat 11:30am - 3:00pm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>All</strong> <strong>orders come with fried rice and choice of Egg Roll or Soda. Add a soup    for only $.75 more</strong></p>\n<!-- /wp:paragraph -->','Lunch Menu','','publish','closed','closed','','lunch-menu','','','2018-11-28 23:47:22','2018-11-28 23:47:22','',0,'http://hibachi.local/?page_id=107',0,'page','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2018-11-25 07:50:31','2018-11-25 07:50:31','','Lunch Menu','','inherit','closed','closed','','107-revision-v1','','','2018-11-25 07:50:31','2018-11-25 07:50:31','',107,'http://hibachi.local/107-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2018-11-25 07:50:45','2018-11-25 07:50:45','<!-- wp:paragraph -->\n<p>All dinners served with a regular size of steamed white rice. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Add fried rice for $1.00 more</p>\n<!-- /wp:paragraph -->','Dinner Menu','','publish','closed','closed','','dinner-menu','','','2018-12-01 07:41:30','2018-12-01 07:41:30','',0,'http://hibachi.local/?page_id=109',0,'page','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2018-11-25 07:50:45','2018-11-25 07:50:45','','Dinner Menu','','inherit','closed','closed','','109-revision-v1','','','2018-11-25 07:50:45','2018-11-25 07:50:45','',109,'http://hibachi.local/109-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2018-11-25 19:31:27','2018-11-25 19:31:27','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','special offer 1','special_offer_1','publish','closed','closed','','field_5bfaf85c3bc21','','','2018-11-25 19:31:27','2018-11-25 19:31:27','',46,'http://hibachi.local/?post_type=acf-field&p=111',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2018-11-25 19:31:46','2018-11-25 19:31:46','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','special offer 1 image','special_offer_1_image','publish','closed','closed','','field_5bfaf88f1c472','','','2018-11-25 19:31:46','2018-11-25 19:31:46','',46,'http://hibachi.local/?post_type=acf-field&p=112',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2018-11-25 19:31:56','2018-11-25 19:31:56','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','special offer 2','special_offer_2','publish','closed','closed','','field_5bfaf8a1d12a0','','','2018-11-25 19:31:56','2018-11-25 19:31:56','',46,'http://hibachi.local/?post_type=acf-field&p=113',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2018-11-25 19:32:08','2018-11-25 19:32:08','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','special offer 2 image','special_offer_2_image','publish','closed','closed','','field_5bfaf8ac7029a','','','2018-11-25 19:32:08','2018-11-25 19:32:08','',46,'http://hibachi.local/?post_type=acf-field&p=114',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2018-11-25 19:39:54','2018-11-25 19:39:54','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-25 19:39:54','2018-11-25 19:39:54','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2018-11-25 20:41:15','2018-11-25 20:41:15','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-25 20:41:15','2018-11-25 20:41:15','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2018-11-25 23:40:00','2018-11-25 23:40:00','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-25 23:40:00','2018-11-25 23:40:00','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2018-11-26 00:06:11','2018-11-26 00:06:11','','2264466866_ecbe325138_z','','inherit','open','closed','','2264466866_ecbe325138_z','','','2018-11-26 00:06:11','2018-11-26 00:06:11','',43,'http://hibachi.local/wp-content/uploads/2018/11/2264466866_ecbe325138_z.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (123,1,'2018-11-26 00:06:33','2018-11-26 00:06:33','','general-tso-chicken.0.0','','inherit','open','closed','','general-tso-chicken-0-0','','','2018-11-26 00:06:33','2018-11-26 00:06:33','',43,'http://hibachi.local/wp-content/uploads/2018/11/general-tso-chicken.0.0.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (124,1,'2018-11-26 00:06:46','2018-11-26 00:06:46','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-26 00:06:46','2018-11-26 00:06:46','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2018-11-27 06:59:33','2018-11-27 06:59:33','<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-27 06:59:33','2018-11-27 06:59:33','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2018-11-27 07:01:49','2018-11-27 07:01:49','','home','','inherit','closed','closed','','43-revision-v1','','','2018-11-27 07:01:49','2018-11-27 07:01:49','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2018-11-27 07:02:05','2018-11-27 07:02:05','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-11-27 07:02:05','2018-11-27 07:02:05','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2018-11-28 06:56:52','2018-11-28 06:56:52','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:107:\"Order of dishes to appear on menu. 1 means it will always be placed first before 2, and etc. Defaults to 5.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:5;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','order','order','publish','closed','closed','','field_5bfe3bfef87fd','','','2018-11-30 00:48:35','2018-11-30 00:48:35','',31,'http://hibachi.local/?post_type=acf-field&#038;p=134',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (135,0,'2018-11-28 07:07:34','2018-11-28 07:07:34','','General Tso\'s Chicken','','publish','closed','closed','','general-tsos-chicken','','','2018-11-28 07:07:34','2018-11-28 07:07:34','',0,'http://hibachi.local/?post_type=food&#038;p=135',0,'food','',0);
INSERT INTO `wp_posts` VALUES (143,0,'2018-11-28 07:22:07','2018-11-28 07:22:07','<!-- wp:paragraph -->\n<p>Jumbo shrimp grilled hibachi-style and tossed with a medley of fresh Chinese vegetables. Served with a side of yum yum sauce.&nbsp;</p>\n<!-- /wp:paragraph -->','L. Hibachi Shrimp','','publish','closed','closed','','l-hibachi-shrimp','','','2018-11-28 21:40:20','2018-11-28 21:40:20','',0,'http://hibachi.local/?post_type=food&#038;p=143',0,'food','',0);
INSERT INTO `wp_posts` VALUES (145,0,'2018-11-28 07:24:11','2018-11-28 07:24:11','<!-- wp:paragraph -->\n<p>test test test</p>\n<!-- /wp:paragraph -->','Testing','','trash','closed','closed','','testing__trashed','','','2018-11-28 21:41:17','2018-11-28 21:41:17','',0,'http://hibachi.local/?post_type=food&#038;p=145',0,'food','',0);
INSERT INTO `wp_posts` VALUES (146,0,'2018-11-28 07:33:49','2018-11-28 07:33:49','<!-- wp:paragraph -->\n<p>aaaaaa</p>\n<!-- /wp:paragraph -->','A','','trash','closed','closed','','a__trashed','','','2018-11-28 21:41:06','2018-11-28 21:41:06','',0,'http://hibachi.local/?post_type=food&#038;p=146',0,'food','',0);
INSERT INTO `wp_posts` VALUES (147,0,'2018-11-28 07:34:51','2018-11-28 07:34:51','<!-- wp:paragraph -->\n<p>ccc</p>\n<!-- /wp:paragraph -->','C','','trash','closed','closed','','c__trashed','','','2018-11-28 21:41:08','2018-11-28 21:41:08','',0,'http://hibachi.local/?post_type=food&#038;p=147',0,'food','',0);
INSERT INTO `wp_posts` VALUES (148,0,'2018-11-28 22:07:27','2018-11-28 22:07:27','<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">Fresh chicken breast and Chinese vegetables stir-fried in Hunan-style sauce, enhanced with spicy thai chili. </p>\n<!-- /wp:paragraph -->','L. Hunan Chicken','','publish','closed','closed','','l-hunan-chicken','','','2018-11-30 00:16:00','2018-11-30 00:16:00','',0,'http://hibachi.local/?post_type=food&#038;p=148',0,'food','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2018-11-28 23:40:19','2018-11-28 23:40:19','<!-- wp:paragraph -->\n<p>\n\nAll orders come with fried rice and choice of Egg Roll or Soda. Add a soup    for only $.75 more\n\n</p>\n<!-- /wp:paragraph -->','Lunch Menu','','inherit','closed','closed','','107-revision-v1','','','2018-11-28 23:40:19','2018-11-28 23:40:19','',107,'http://hibachi.local/107-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2018-11-28 23:43:05','2018-11-28 23:43:05','<!-- wp:paragraph -->\n<p>All <strong>orders come with fried rice and choice of Egg Roll or Soda. Add a soup    for only $.75 more</strong></p>\n<!-- /wp:paragraph -->','Lunch Menu','','inherit','closed','closed','','107-revision-v1','','','2018-11-28 23:43:05','2018-11-28 23:43:05','',107,'http://hibachi.local/107-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2018-11-28 23:43:25','2018-11-28 23:43:25','<!-- wp:paragraph -->\n<p><strong>All</strong> <strong>orders come with fried rice and choice of Egg Roll or Soda. Add a soup    for only $.75 more</strong></p>\n<!-- /wp:paragraph -->','Lunch Menu','','inherit','closed','closed','','107-revision-v1','','','2018-11-28 23:43:25','2018-11-28 23:43:25','',107,'http://hibachi.local/107-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2018-11-28 23:44:34','2018-11-28 23:44:34','<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Served Mon-Fri 11:00 AM - 3:00 PM Sat 11:30 - 3:00 PM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>All</strong> <strong>orders come with fried rice and choice of Egg Roll or Soda. Add a soup    for only $.75 more</strong></p>\n<!-- /wp:paragraph -->','Lunch Menu','','inherit','closed','closed','','107-revision-v1','','','2018-11-28 23:44:34','2018-11-28 23:44:34','',107,'http://hibachi.local/107-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2018-11-28 23:47:22','2018-11-28 23:47:22','<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Served Mon-Fri 11:00am- 3:00pm Sat 11:30am - 3:00pm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>All</strong> <strong>orders come with fried rice and choice of Egg Roll or Soda. Add a soup    for only $.75 more</strong></p>\n<!-- /wp:paragraph -->','Lunch Menu','','inherit','closed','closed','','107-revision-v1','','','2018-11-28 23:47:22','2018-11-28 23:47:22','',107,'http://hibachi.local/107-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (155,0,'2018-11-28 23:50:37','2018-11-28 23:50:37','<!-- wp:paragraph -->\n<p>100% chicken breast and freshly chopped broccoli all stir-fried in a brown ginger sauce that\'s not too sweet. </p>\n<!-- /wp:paragraph -->','L. Chicken Broccoli','','publish','closed','closed','','l-chicken-broccoli','','','2018-11-28 23:58:56','2018-11-28 23:58:56','',0,'http://hibachi.local/?post_type=food&#038;p=155',0,'food','',0);
INSERT INTO `wp_posts` VALUES (156,0,'2018-11-28 23:53:48','2018-11-28 23:53:48','<!-- wp:paragraph -->\n<p>Fresh chicken breast with carrots, onions, and mushrooms stir-fried in a light and tasty white sauce made with rice vinegar. </p>\n<!-- /wp:paragraph -->','L. Moo Goo Gai Pan','','publish','closed','closed','','moo-goo-gai-pan','','','2018-11-30 03:58:41','2018-11-30 03:58:41','',0,'http://hibachi.local/?post_type=food&#038;p=156',0,'food','',0);
INSERT INTO `wp_posts` VALUES (157,0,'2018-11-30 00:17:28','2018-11-30 00:17:28','<!-- wp:paragraph -->\n<p>Sliced pork and Chinese vegetables stir-fried in traditional spicy Szechuan style.&nbsp;</p>\n<!-- /wp:paragraph -->','L. Szechuan Pork','','publish','closed','closed','','l-szechuan-chicken-or-pork','','','2018-11-30 00:53:50','2018-11-30 00:53:50','',0,'http://hibachi.local/?post_type=food&#038;p=157',0,'food','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2018-11-28 23:59:26','2018-11-28 23:59:26','<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">100% chicken breast and freshly chopped broccoli all stir-fried in a brown ginger sauce that\'s not too sweet. </p>\n<!-- /wp:paragraph -->','L. Chicken Broccoli','','inherit','closed','closed','','155-autosave-v1','','','2018-11-28 23:59:26','2018-11-28 23:59:26','',155,'http://hibachi.local/155-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (160,0,'2018-11-29 01:26:14','2018-11-29 01:26:14','<!-- wp:paragraph -->\n<p>testes</p>\n<!-- /wp:paragraph -->','TEST','','trash','closed','closed','','test__trashed','','','2018-11-29 01:27:21','2018-11-29 01:27:21','',0,'http://hibachi.local/?post_type=food&#038;p=160',0,'food','',0);
INSERT INTO `wp_posts` VALUES (161,0,'2018-11-29 01:29:27','2018-11-29 01:29:27','<!-- wp:paragraph -->\n<p>100% chicken breast and Chinese vegetables stir fried in brown ginger soy sauce, garnished with cashew nuts</p>\n<!-- /wp:paragraph -->','L. Cashew Nut Chicken','','publish','closed','closed','','cashew-nut-chicken','','','2018-11-30 00:16:27','2018-11-30 00:16:27','',0,'http://hibachi.local/?post_type=food&#038;p=161',0,'food','',0);
INSERT INTO `wp_posts` VALUES (162,0,'2018-11-29 01:30:28','2018-11-29 01:30:28','<!-- wp:paragraph -->\n<p>100% chicken breast and Chinese vegetables stir fried in a sweet and spicy garlic red sauce, topped with extra garlic shaving</p>\n<!-- /wp:paragraph -->','L. Garlic Chicken','','publish','closed','closed','','garlic-chicken','','','2018-11-30 00:17:12','2018-11-30 00:17:12','',0,'http://hibachi.local/?post_type=food&#038;p=162',0,'food','',0);
INSERT INTO `wp_posts` VALUES (163,0,'2018-11-29 01:32:16','2018-11-29 01:32:16','<!-- wp:paragraph -->\n<p>Diced chicken and Chinese vegetables stir fried in brown ginger soy sauce, garnished with peanuts&nbsp;</p>\n<!-- /wp:paragraph -->','L. Kung Pao Chicken','','publish','closed','closed','','kung-pao-chicken','','','2018-11-30 00:17:03','2018-11-30 00:17:03','',0,'http://hibachi.local/?post_type=food&#038;p=163',0,'food','',0);
INSERT INTO `wp_posts` VALUES (164,0,'2018-11-29 01:33:26','2018-11-29 01:33:26','<!-- wp:paragraph -->\n<p>100% chicken breast and Chinese vegetables stir-fried in a brown ginger sauce that’s not too sweet. </p>\n<!-- /wp:paragraph -->','L. Chicken with Veggies','','publish','closed','closed','','chicken-or-pork-with-veggies','','','2018-12-06 21:33:40','2018-12-06 21:33:40','',0,'http://hibachi.local/?post_type=food&#038;p=164',0,'food','',0);
INSERT INTO `wp_posts` VALUES (165,0,'2018-11-29 01:37:32','2018-11-29 01:37:32','<!-- wp:paragraph -->\n<p>Fresh sliced Pork and Chinese vegetables stir-fried in a brown ginger sauce that’s not too sweet. </p>\n<!-- /wp:paragraph -->','L. Pork with Veggies','','publish','closed','closed','','pork-with-veggies','','','2018-12-06 21:33:21','2018-12-06 21:33:21','',0,'http://hibachi.local/?post_type=food&#038;p=165',0,'food','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2018-11-30 00:48:35','2018-11-30 00:48:35','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:7:{s:9:\"Appetizer\";s:9:\"Appetizer\";s:4:\"Beef\";s:4:\"Beef\";s:7:\"Chicken\";s:7:\"Chicken\";s:4:\"Pork\";s:4:\"Pork\";s:6:\"Shrimp\";s:6:\"Shrimp\";s:8:\"Specials\";s:8:\"Specials\";s:4:\"Soup\";s:4:\"Soup\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','category-dinner','category-dinner','publish','closed','closed','','field_5c0088d49550e','','','2018-11-30 00:49:23','2018-11-30 00:49:23','',31,'http://hibachi.local/?post_type=acf-field&#038;p=166',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2018-11-30 00:50:21','2018-11-30 00:50:21','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"dinner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Food Attributes - Dinner','food-attributes-dinner','publish','closed','closed','','group_5c00894d0733f','','','2018-12-04 21:15:44','2018-12-04 21:15:44','',0,'http://hibachi.local/?post_type=acf-field-group&#038;p=168',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2018-11-30 00:50:21','2018-11-30 00:50:21','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:3:\".01\";}','price','price','publish','closed','closed','','field_5c00894d08311','','','2018-11-30 00:50:21','2018-11-30 00:50:21','',168,'http://hibachi.local/?post_type=acf-field&p=169',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2018-11-30 00:50:21','2018-11-30 00:50:21','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:8:{s:9:\"Appetizer\";s:9:\"Appetizer\";s:4:\"Beef\";s:4:\"Beef\";s:7:\"Chicken\";s:7:\"Chicken\";s:4:\"Pork\";s:4:\"Pork\";s:7:\"Seafood\";s:7:\"Seafood\";s:8:\"Specials\";s:8:\"Specials\";s:7:\"Hibachi\";s:7:\"Hibachi\";s:4:\"Soup\";s:4:\"Soup\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','category-dinner','category-dinner','publish','closed','closed','','field_5c00894d08374','','','2018-12-04 21:15:44','2018-12-04 21:15:44','',168,'http://hibachi.local/?post_type=acf-field&#038;p=171',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2018-11-30 00:50:21','2018-11-30 00:50:21','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:107:\"Order of dishes to appear on menu. 1 means it will always be placed first before 2, and etc. Defaults to 5.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:5;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','order','order','publish','closed','closed','','field_5c00894d083b9','','','2018-12-01 07:21:17','2018-12-01 07:21:17','',168,'http://hibachi.local/?post_type=acf-field&#038;p=172',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (173,0,'2018-11-30 00:53:15','2018-11-30 00:53:15','<!-- wp:paragraph -->\n<p>100% chicken breast and Chinese vegetables stir-fried in traditional spicy Szechuan style. </p>\n<!-- /wp:paragraph -->','L. Szechuan Chicken','','publish','closed','closed','','l-szechuan-chicken','','','2018-11-30 00:53:38','2018-11-30 00:53:38','',0,'http://hibachi.local/?post_type=food&#038;p=173',0,'food','',0);
INSERT INTO `wp_posts` VALUES (174,0,'2018-11-30 00:56:15','2018-11-30 00:56:15','<!-- wp:paragraph -->\n<p>Large Egg rolls stuffed with Shrimp, cabbage, carrots, and other veggies. </p>\n<!-- /wp:paragraph -->','Shrimp Egg Roll','','publish','closed','closed','','shrimp-egg-roll','','','2018-11-30 00:56:15','2018-11-30 00:56:15','',0,'http://hibachi.local/?post_type=dinner&#038;p=174',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (175,0,'2018-12-01 07:18:09','2018-12-01 07:18:09','<!-- wp:paragraph -->\n<p>Classic Chinese egg rolls stuffed with cabbage, pork, and carrots wrapped in an egg-wrapper. </p>\n<!-- /wp:paragraph -->','Egg Roll','','publish','closed','closed','','egg-roll','','','2018-12-01 07:18:10','2018-12-01 07:18:10','',0,'http://hibachi.local/?post_type=dinner&#038;p=175',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (176,0,'2018-12-01 07:20:06','2018-12-01 07:20:06','<!-- wp:paragraph -->\n<p>Classic soup made with freshly cracked eggs and crispy fried noodles.&nbsp;</p>\n<!-- /wp:paragraph -->','Egg Drop Soup','','publish','closed','closed','','egg-drop-soup','','','2018-12-01 07:21:41','2018-12-01 07:21:41','',0,'http://hibachi.local/?post_type=dinner&#038;p=176',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2018-12-01 07:21:17','2018-12-01 07:21:17','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:47:\"Secondary price for different sizes/options/etc\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:3:\".01\";}','price2','price2','publish','closed','closed','','field_5c023639d9573','','','2018-12-01 07:21:17','2018-12-01 07:21:17','',168,'http://hibachi.local/?post_type=acf-field&p=177',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (179,0,'2018-12-01 07:23:02','2018-12-01 07:23:02','<!-- wp:paragraph -->\n<p>Classic soup made with tofu bits, eggs, water chestnuts, and crispy fried noodles. </p>\n<!-- /wp:paragraph -->','Hot & Sour Soup','','publish','closed','closed','','hot-sour-soup','','','2018-12-01 07:23:02','2018-12-01 07:23:02','',0,'http://hibachi.local/?post_type=dinner&#038;p=179',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (180,0,'2018-12-01 07:30:09','2018-12-01 07:30:09','<!-- wp:paragraph -->\n<p>Fried rice stir fried with peas, carrots, and 100% chicken breast</p>\n<!-- /wp:paragraph -->','Chicken Fried Rice','','publish','closed','closed','','chicken-fried-rice','','','2018-12-03 06:18:28','2018-12-03 06:18:28','',0,'http://hibachi.local/?post_type=dinner&#038;p=180',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (181,0,'2018-12-01 07:30:53','2018-12-01 07:30:53','<!-- wp:paragraph -->\n<p>Fried rice stir fried with peas, carrots, and beef</p>\n<!-- /wp:paragraph -->','Beef Fried Rice','','publish','closed','closed','','beef-fried-rice','','','2018-12-01 07:30:53','2018-12-01 07:30:53','',0,'http://hibachi.local/?post_type=dinner&#038;p=181',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (182,0,'2018-12-01 07:31:24','2018-12-01 07:31:24','<!-- wp:paragraph -->\n<p>Fried rice stir fried with peas, carrots, and Shrimp</p>\n<!-- /wp:paragraph -->','Shrimp Fried Rice','','publish','closed','closed','','shrimp-fried-rice','','','2018-12-01 07:32:01','2018-12-01 07:32:01','',0,'http://hibachi.local/?post_type=dinner&#038;p=182',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2018-12-01 07:41:23','2018-12-01 07:41:23','<!-- wp:paragraph -->\n<p>All dinners served with a regular size of steamed white rice. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Add f</p>\n<!-- /wp:paragraph -->','Dinner Menu','','inherit','closed','closed','','109-autosave-v1','','','2018-12-01 07:41:23','2018-12-01 07:41:23','',109,'http://hibachi.local/109-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2018-12-01 07:41:30','2018-12-01 07:41:30','<!-- wp:paragraph -->\n<p>All dinners served with a regular size of steamed white rice. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Add fried rice for $1.00 more</p>\n<!-- /wp:paragraph -->','Dinner Menu','','inherit','closed','closed','','109-revision-v1','','','2018-12-01 07:41:30','2018-12-01 07:41:30','',109,'http://hibachi.local/109-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (185,0,'2018-12-01 08:13:00','2018-12-01 08:13:00','<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->','tes','','trash','closed','closed','','tes__trashed','','','2018-12-03 06:13:05','2018-12-03 06:13:05','',0,'http://hibachi.local/?post_type=dinner&#038;p=185',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (187,0,'2018-12-03 06:14:52','2018-12-03 06:14:52','<!-- wp:paragraph -->\n<p>\n\n100% chicken breast and Chinese vegetables stir fried in a sweet and spicy garlic red sauce, topped with extra garlic shaving\n\n</p>\n<!-- /wp:paragraph -->','Garlic Chicken','','publish','closed','closed','','garlic-chicken','','','2018-12-03 06:14:53','2018-12-03 06:14:53','',0,'http://hibachi.local/?post_type=dinner&#038;p=187',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (188,0,'2018-12-03 06:16:05','2018-12-03 06:16:05','<!-- wp:paragraph -->\n<p>\n\nDiced chicken and Chinese vegetables stir fried in brown ginger soy sauce, garnished with peanuts&nbsp;\n\n</p>\n<!-- /wp:paragraph -->','Kung Pao Chicken','','publish','closed','closed','','kung-pao-chicken','','','2018-12-03 06:16:05','2018-12-03 06:16:05','',0,'http://hibachi.local/?post_type=dinner&#038;p=188',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (189,0,'2018-12-03 06:17:46','2018-12-03 06:17:46','<!-- wp:paragraph -->\n<p>100% chicken breast wok-tossed in a sweet sesame sauce with a medly of Chinese vegetables. Garnished with authentic white sesame seeds.</p>\n<!-- /wp:paragraph -->','Teriyaki Chicken','','publish','closed','closed','','teriyaki-chicken','','','2018-12-03 06:17:46','2018-12-03 06:17:46','',0,'http://hibachi.local/?post_type=dinner&#038;p=189',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (190,0,'2018-12-03 06:27:33','2018-12-03 06:27:33','<!-- wp:paragraph -->\n<p>A hearty mix of Chicken, Pork, Beef, and Shrimp wok-tossed in the chef\'s special sauce, garnished with an assortment of vegetables. </p>\n<!-- /wp:paragraph -->','Four Seasons','','publish','closed','closed','','four-seasons','','','2018-12-03 06:27:33','2018-12-03 06:27:33','',0,'http://hibachi.local/?post_type=dinner&#038;p=190',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (191,1,'2018-12-04 20:37:25','2018-12-04 20:37:25','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-12-04 20:37:25','2018-12-04 20:37:25','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (192,1,'2018-12-04 20:38:12','2018-12-04 20:38:12','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-12-04 20:38:12','2018-12-04 20:38:12','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (193,0,'2018-12-04 21:16:26','2018-12-04 21:16:26','<!-- wp:paragraph -->\n<p>\n\nChunks of chicken breast grilled Hibachi style and tossed with a medley of fresh Chinese veggies + side of Yum Yum sauce.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->','Hibachi Chicken','','publish','closed','closed','','hibachi-chicken','','','2018-12-04 21:16:26','2018-12-04 21:16:26','',0,'http://hibachi.local/?post_type=dinner&#038;p=193',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (194,0,'2018-12-04 23:58:26','2018-12-04 23:58:26','<!-- wp:paragraph -->\n<p>Sliced pork and Chinese vegetables stir fried in a sweet and spicy garlic red sauce, topped with extra garlic shaving</p>\n<!-- /wp:paragraph -->','Pork w/ Garlic Sauce','','publish','closed','closed','','pork-w-garlic-sauce','','','2018-12-04 23:58:26','2018-12-04 23:58:26','',0,'http://hibachi.local/?post_type=dinner&#038;p=194',0,'dinner','',0);
INSERT INTO `wp_posts` VALUES (195,1,'2018-12-06 04:42:32','2018-12-06 04:42:32','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-12-06 04:42:32','2018-12-06 04:42:32','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (196,1,'2018-12-06 05:31:46','2018-12-06 05:31:46','','Home','','inherit','closed','closed','','43-revision-v1','','','2018-12-06 05:31:46','2018-12-06 05:31:46','',43,'http://hibachi.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (197,1,'2018-12-06 21:32:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-12-06 21:32:56','0000-00-00 00:00:00','',0,'http://hibachi.local/?post_type=food&p=197',0,'food','',0);
INSERT INTO `wp_posts` VALUES (198,1,'2018-12-08 21:10:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-12-08 21:10:00','0000-00-00 00:00:00','',0,'http://hibachi.local/?p=198',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (14,1,0);
INSERT INTO `wp_term_relationships` VALUES (20,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Hsinwang');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','wp496_privacy');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"e62453b79e2579dde0f107952f92149475b6779537e5dda664a1a22f944dfb91\";a:4:{s:10:\"expiration\";i:1544649686;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36\";s:5:\"login\";i:1544476886;}s:64:\"544661f06f600c6901ab36ea8057c39cff3823a6f4b75b9f8d7dc71c23d86c1d\";a:4:{s:10:\"expiration\";i:1544754981;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36\";s:5:\"login\";i:1544582181;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','198');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.95.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','editor=tinymce&libraryContent=browse&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1543537967');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'meta-box-order_post','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:23:\"acf-group_5bf508ef2d554\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_acf-field-group','a:1:{i:0;s:25:\"acf-field-group-locations\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'meta-box-order_acf-field-group','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'screen_layout_acf-field-group','2');
INSERT INTO `wp_usermeta` VALUES (30,1,'meta-box-order_page','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:47:\"acf-group_5bf7b6d06855d,acf-group_5bf508ef2d554\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (31,1,'closedpostboxes_food','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'metaboxhidden_food','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (33,1,'meta-box-order_food','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:47:\"acf-group_5bf7b6d06855d,acf-group_5bf508ef2d554\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (34,1,'edit_food_per_page','20');
INSERT INTO `wp_usermeta` VALUES (35,1,'wp_backwpup_dinotopt_backwpup_notice_promoter','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Hsinwang','$P$B6eYpBsrTqx030VfoWKpGoaRUgElat1','hsinwang','hsinwang5@gmail.com','','2018-11-20 05:56:23','',0,'Hsinwang');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_meta`
--

DROP TABLE IF EXISTS `wp_yoast_seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

LOCK TABLES `wp_yoast_seo_meta` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_meta` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_meta` VALUES (4,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (5,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (6,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (7,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (8,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (9,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (10,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (11,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (12,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (13,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (43,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (126,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (127,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (128,0,0);
/*!40000 ALTER TABLE `wp_yoast_seo_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13  8:47:08
