-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-05-27 07:17:22','2021-05-27 07:17:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://kindtand.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://kindtand.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','kindtand','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','sp@29x.studio','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','kindtand','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','kindtand','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','16','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1637651842','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:6:{i:1622704643;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622704644;a:5:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622704767;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622704769;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622791044;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','?D~T.z$ 0zN^?c%U7Zfg/oUIjvc6GxD()&+3GA>P8+Tk>xC5nkib >t {-;iNdW2','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','Ctvuw<oS?0fBI+_kF]YvFY`e_BL<o~sN[6s!}Lyjfxr`pVkXRZPx 5NR} O[>5aj','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1622100880;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1622704018;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622704021;s:7:\"checked\";a:4:{s:8:\"kindtand\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_a510f07700847945031e793207ee1b90','1622704768','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_a510f07700847945031e793207ee1b90','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1622704768','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (150,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (155,'acf_version','5.9.5','yes');
INSERT INTO `wp_options` VALUES (156,'current_theme','29x Studio','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_kindtand','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:8:\"site-nav\";i:2;s:10:\"footer-nav\";i:0;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (158,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (183,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (185,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":6,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (234,'_transient_timeout_acf_plugin_updates','1622876820','no');
INSERT INTO `wp_options` VALUES (235,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}','no');
INSERT INTO `wp_options` VALUES (236,'_site_transient_timeout_theme_roots','1622705820','no');
INSERT INTO `wp_options` VALUES (237,'_site_transient_theme_roots','a:4:{s:8:\"kindtand\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (238,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622704021;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1622102546:1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (5,5,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (6,5,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (7,5,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (8,5,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (9,5,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (10,5,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (11,5,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (12,5,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (13,6,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (14,6,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (15,6,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (16,6,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (17,6,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (18,6,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (19,6,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (20,6,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (21,7,'_edit_lock','1622102552:1');
INSERT INTO `wp_postmeta` VALUES (22,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,7,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (24,7,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (25,7,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (26,7,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (27,7,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (28,7,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (29,7,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (30,7,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (31,8,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (32,8,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (33,8,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (34,8,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (35,8,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (36,8,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (37,8,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (38,8,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (39,9,'_edit_lock','1622102557:1');
INSERT INTO `wp_postmeta` VALUES (40,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (41,9,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (42,9,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (43,9,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (44,9,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (45,9,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (46,9,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (47,9,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (48,9,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (49,10,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (50,10,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (51,10,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (52,10,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (53,10,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (54,10,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (55,10,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (56,10,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (57,11,'_edit_lock','1622102560:1');
INSERT INTO `wp_postmeta` VALUES (58,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,11,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (60,11,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (61,11,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (62,11,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (63,11,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (64,11,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (65,11,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (66,11,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (67,12,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (68,12,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (69,12,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (70,12,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (71,12,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (72,12,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (73,12,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (74,12,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (75,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (76,2,'_wp_trash_meta_time','1622102281');
INSERT INTO `wp_postmeta` VALUES (77,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (78,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (79,3,'_wp_trash_meta_time','1622102285');
INSERT INTO `wp_postmeta` VALUES (80,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (81,11,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (82,5,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (83,7,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (84,9,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (85,1,'_edit_lock','1622185833:1');
INSERT INTO `wp_postmeta` VALUES (86,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (87,1,'_wp_trash_meta_time','1622185980');
INSERT INTO `wp_postmeta` VALUES (88,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (89,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (90,16,'_edit_lock','1622194030:1');
INSERT INTO `wp_postmeta` VALUES (91,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (92,16,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (93,16,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (94,16,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (95,16,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (96,16,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (97,16,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (98,16,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (99,16,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (100,17,'topBannerTitle','');
INSERT INTO `wp_postmeta` VALUES (101,17,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (102,17,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (103,17,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (104,17,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (105,17,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (106,17,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (107,17,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (108,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (109,18,'_wp_trash_meta_time','1622186112');
INSERT INTO `wp_postmeta` VALUES (110,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (111,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (112,19,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (113,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (114,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (115,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (116,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (117,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (119,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (120,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (121,20,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (122,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (123,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (124,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (125,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (126,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (128,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (129,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (130,21,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (131,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (132,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (133,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (134,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (135,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (137,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (138,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (139,22,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (140,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (141,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (142,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (143,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (144,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (146,23,'topBannerTitle','banner');
INSERT INTO `wp_postmeta` VALUES (147,23,'_topBannerTitle','field_60a771bfaba34');
INSERT INTO `wp_postmeta` VALUES (148,23,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (149,23,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (150,23,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (151,23,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (152,23,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (153,23,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (154,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (155,25,'_edit_lock','1622187100:1');
INSERT INTO `wp_postmeta` VALUES (156,27,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (157,27,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (158,27,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (159,27,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (160,27,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (161,27,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (162,27,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (163,27,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (164,30,'_wp_attached_file','2021/05/kindtand-hero.png');
INSERT INTO `wp_postmeta` VALUES (165,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:1400;s:4:\"file\";s:25:\"2021/05/kindtand-hero.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"kindtand-hero-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"kindtand-hero-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"kindtand-hero-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"kindtand-hero-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (166,16,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (167,16,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (168,16,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (169,16,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (170,31,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (171,31,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (172,31,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (173,31,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (174,31,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (175,31,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (176,31,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (177,31,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (178,31,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (179,31,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (180,31,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (181,31,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (182,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (183,25,'_wp_trash_meta_time','1622189459');
INSERT INTO `wp_postmeta` VALUES (184,25,'_wp_desired_post_slug','group_60b09ad715050');
INSERT INTO `wp_postmeta` VALUES (185,26,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (186,26,'_wp_trash_meta_time','1622189459');
INSERT INTO `wp_postmeta` VALUES (187,26,'_wp_desired_post_slug','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (188,28,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (189,28,'_wp_trash_meta_time','1622189459');
INSERT INTO `wp_postmeta` VALUES (190,28,'_wp_desired_post_slug','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (191,29,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (192,29,'_wp_trash_meta_time','1622189459');
INSERT INTO `wp_postmeta` VALUES (193,29,'_wp_desired_post_slug','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (194,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,32,'_edit_lock','1622194095:1');
INSERT INTO `wp_postmeta` VALUES (196,16,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (197,16,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (198,16,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (199,16,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (200,35,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (201,35,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (202,35,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (203,35,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (204,35,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (205,35,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (206,35,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (207,35,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (208,35,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (209,35,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (210,35,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (211,35,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (212,35,'heroTitle','Hero title');
INSERT INTO `wp_postmeta` VALUES (213,35,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (214,35,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (215,35,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (216,36,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (217,36,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (218,36,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (219,36,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (220,36,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (221,36,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (222,36,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (223,36,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (224,36,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (225,36,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (226,36,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (227,36,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (228,36,'heroTitle','Hero title');
INSERT INTO `wp_postmeta` VALUES (229,36,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (230,36,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (231,36,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (232,37,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (233,37,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (234,37,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (235,37,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (236,37,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (237,37,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (238,37,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (239,37,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (240,37,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (241,37,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (242,37,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (243,37,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (244,37,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (245,37,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (246,37,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (247,37,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (248,38,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (249,38,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (250,38,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (251,38,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (252,38,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (253,38,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (254,38,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (255,38,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (256,38,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (257,38,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (258,38,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (259,38,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (260,38,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (261,38,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (262,38,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (263,38,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (264,41,'_wp_attached_file','2021/05/SampleVideo_1280x720_1mb.mp4');
INSERT INTO `wp_postmeta` VALUES (265,41,'_wp_attachment_metadata','a:10:{s:8:\"filesize\";i:1055736;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:5;s:16:\"length_formatted\";s:4:\"0:05\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (266,16,'heroVideo','41');
INSERT INTO `wp_postmeta` VALUES (267,16,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (268,16,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (269,16,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (270,43,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (271,43,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (272,43,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (273,43,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (274,43,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (275,43,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (276,43,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (277,43,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (278,43,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (279,43,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (280,43,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (281,43,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (282,43,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (283,43,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (284,43,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (285,43,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (286,43,'heroVideo','');
INSERT INTO `wp_postmeta` VALUES (287,43,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (288,43,'heroVideoUrl','http://kindtand.local/wp-content/uploads/2021/05/SampleVideo_1280x720_1mb.mp4');
INSERT INTO `wp_postmeta` VALUES (289,43,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (290,44,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (291,44,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (292,44,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (293,44,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (294,44,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (295,44,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (296,44,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (297,44,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (298,44,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (299,44,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (300,44,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (301,44,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (302,44,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (303,44,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (304,44,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (305,44,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (306,44,'heroVideo','');
INSERT INTO `wp_postmeta` VALUES (307,44,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (308,44,'heroVideoUrl','http://kindtand.local/wp-content/uploads/2021/05/SampleVideo_1280x720_1mb.mp4');
INSERT INTO `wp_postmeta` VALUES (309,44,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (310,45,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (311,45,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (312,45,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (313,45,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (314,45,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (315,45,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (316,45,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (317,45,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (318,45,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (319,45,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (320,45,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (321,45,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (322,45,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (323,45,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (324,45,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (325,45,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (326,45,'heroVideo','');
INSERT INTO `wp_postmeta` VALUES (327,45,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (328,45,'heroVideoUrl','http://kindtand.local/wp-content/uploads/2021/05/SampleVideo_1280x720_1mb.mp4');
INSERT INTO `wp_postmeta` VALUES (329,45,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (330,46,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (331,46,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (332,46,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (333,46,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (334,46,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (335,46,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (336,46,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (337,46,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (338,46,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (339,46,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (340,46,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (341,46,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (342,46,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (343,46,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (344,46,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (345,46,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (346,46,'heroVideo','');
INSERT INTO `wp_postmeta` VALUES (347,46,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (348,46,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (349,46,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (350,47,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (351,47,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (352,47,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (353,47,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (354,47,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (355,47,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (356,47,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (357,47,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (358,47,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (359,47,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (360,47,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (361,47,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (362,47,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (363,47,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (364,47,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (365,47,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (366,47,'heroVideo','');
INSERT INTO `wp_postmeta` VALUES (367,47,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (368,47,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (369,47,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (370,48,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (371,48,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (372,48,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (373,48,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (374,48,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (375,48,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (376,48,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (377,48,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (378,48,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (379,48,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (380,48,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (381,48,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (382,48,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (383,48,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (384,48,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (385,48,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (386,48,'heroVideo','41');
INSERT INTO `wp_postmeta` VALUES (387,48,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (388,48,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (389,48,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (390,49,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (391,49,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (392,49,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (393,49,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (394,49,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (395,49,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (396,49,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (397,49,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (398,49,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (399,49,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (400,49,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (401,49,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (402,49,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (403,49,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (404,49,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (405,49,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (406,49,'heroVideo','41');
INSERT INTO `wp_postmeta` VALUES (407,49,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (408,49,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (409,49,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (410,50,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (411,50,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (412,50,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (413,50,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (414,50,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (415,50,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (416,50,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (417,50,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (418,50,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (419,50,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (420,50,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (421,50,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (422,50,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (423,50,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (424,50,'heroBackgroundImage','');
INSERT INTO `wp_postmeta` VALUES (425,50,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (426,50,'heroVideo','41');
INSERT INTO `wp_postmeta` VALUES (427,50,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (428,50,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (429,50,'_heroVideoUrl','field_60b0a84f20d27');
INSERT INTO `wp_postmeta` VALUES (430,51,'topBannerTitle','banner new');
INSERT INTO `wp_postmeta` VALUES (431,51,'_topBannerTitle','field_60b09ae817b6b');
INSERT INTO `wp_postmeta` VALUES (432,51,'topBannertext','');
INSERT INTO `wp_postmeta` VALUES (433,51,'_topBannertext','field_60a771ccaba35');
INSERT INTO `wp_postmeta` VALUES (434,51,'topBannerLink','');
INSERT INTO `wp_postmeta` VALUES (435,51,'_topBannerLink','field_60a771d8aba36');
INSERT INTO `wp_postmeta` VALUES (436,51,'topBannerImage','');
INSERT INTO `wp_postmeta` VALUES (437,51,'_topBannerImage','field_60a771faaba37');
INSERT INTO `wp_postmeta` VALUES (438,51,'topBannerBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (439,51,'_topBannerBackgroundImage','field_60b09c7c2856a');
INSERT INTO `wp_postmeta` VALUES (440,51,'topBannerVideo','');
INSERT INTO `wp_postmeta` VALUES (441,51,'_topBannerVideo','field_60b09c982856b');
INSERT INTO `wp_postmeta` VALUES (442,51,'heroTitle','hero title');
INSERT INTO `wp_postmeta` VALUES (443,51,'_heroTitle','field_60b0a59ab169d');
INSERT INTO `wp_postmeta` VALUES (444,51,'heroBackgroundImage','30');
INSERT INTO `wp_postmeta` VALUES (445,51,'_heroBackgroundImage','field_60b0a5ad6fecb');
INSERT INTO `wp_postmeta` VALUES (446,51,'heroVideo','41');
INSERT INTO `wp_postmeta` VALUES (447,51,'_heroVideo','field_60b0a7ec86e7e');
INSERT INTO `wp_postmeta` VALUES (448,51,'heroVideoUrl','');
INSERT INTO `wp_postmeta` VALUES (449,51,'_heroVideoUrl','field_60b0a84f20d27');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-05-27 07:17:22','2021-05-27 07:17:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-05-28 07:13:00','2021-05-28 07:13:00','',0,'http://kindtand.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-05-27 07:17:22','2021-05-27 07:17:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://kindtand.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-05-27 07:58:01','2021-05-27 07:58:01','',0,'http://kindtand.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-05-27 07:17:22','2021-05-27 07:17:22','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://kindtand.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-05-27 07:58:05','2021-05-27 07:58:05','',0,'http://kindtand.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-05-27 07:57:17','2021-05-27 07:57:17','','Priser','','publish','closed','closed','','priser','','','2021-05-27 08:02:26','2021-05-27 08:02:26','',0,'http://kindtand.local/?page_id=5',10,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-05-27 07:57:17','2021-05-27 07:57:17','','Priser','','inherit','closed','closed','','5-revision-v1','','','2021-05-27 07:57:17','2021-05-27 07:57:17','',5,'http://kindtand.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-05-27 07:57:36','2021-05-27 07:57:36','','Klinikken','','publish','closed','closed','','klinikken','','','2021-05-27 08:02:32','2021-05-27 08:02:32','',0,'http://kindtand.local/?page_id=7',20,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-05-27 07:57:36','2021-05-27 07:57:36','','Klinikken','','inherit','closed','closed','','7-revision-v1','','','2021-05-27 07:57:36','2021-05-27 07:57:36','',7,'http://kindtand.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-05-27 07:57:47','2021-05-27 07:57:47','','Personale','','publish','closed','closed','','personale','','','2021-05-27 08:02:37','2021-05-27 08:02:37','',0,'http://kindtand.local/?page_id=9',30,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-05-27 07:57:47','2021-05-27 07:57:47','','Personale','','inherit','closed','closed','','9-revision-v1','','','2021-05-27 07:57:47','2021-05-27 07:57:47','',9,'http://kindtand.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-05-27 07:57:55','2021-05-27 07:57:55','','Kontakt','','publish','closed','closed','','kontakt','','','2021-05-27 08:02:40','2021-05-27 08:02:40','',0,'http://kindtand.local/?page_id=11',40,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-05-27 07:57:55','2021-05-27 07:57:55','','Kontakt','','inherit','closed','closed','','11-revision-v1','','','2021-05-27 07:57:55','2021-05-27 07:57:55','',11,'http://kindtand.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-05-27 07:58:01','2021-05-27 07:58:01','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://kindtand.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-05-27 07:58:01','2021-05-27 07:58:01','',2,'http://kindtand.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-05-27 07:58:05','2021-05-27 07:58:05','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://kindtand.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-05-27 07:58:05','2021-05-27 07:58:05','',3,'http://kindtand.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-05-28 07:13:00','2021-05-28 07:13:00','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-05-28 07:13:00','2021-05-28 07:13:00','',1,'http://kindtand.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-05-28 07:13:25','2021-05-28 07:13:25','','Forside title','','publish','closed','closed','','forside-title','','','2021-05-28 08:47:06','2021-05-28 08:47:06','',0,'http://kindtand.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-05-28 07:13:25','2021-05-28 07:13:25','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 07:13:25','2021-05-28 07:13:25','',16,'http://kindtand.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-05-28 07:15:12','2021-05-28 07:15:12','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-28 07:15:12\"\n    },\n    \"page_on_front\": {\n        \"value\": \"16\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-28 07:15:12\"\n    }\n}','','','trash','closed','closed','','aacfa6dc-819b-410e-9643-e4bbbc7d76e6','','','2021-05-28 07:15:12','2021-05-28 07:15:12','',0,'http://kindtand.local/aacfa6dc-819b-410e-9643-e4bbbc7d76e6/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-05-28 07:16:39','2021-05-28 07:16:15',' ','','','publish','closed','closed','','19','','','2021-05-28 07:16:39','2021-05-28 07:16:39','',0,'http://kindtand.local/?p=19',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-05-28 07:16:39','2021-05-28 07:16:15',' ','','','publish','closed','closed','','20','','','2021-05-28 07:16:39','2021-05-28 07:16:39','',0,'http://kindtand.local/?p=20',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-05-28 07:16:39','2021-05-28 07:16:15',' ','','','publish','closed','closed','','21','','','2021-05-28 07:16:39','2021-05-28 07:16:39','',0,'http://kindtand.local/?p=21',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-05-28 07:16:39','2021-05-28 07:16:15',' ','','','publish','closed','closed','','22','','','2021-05-28 07:16:39','2021-05-28 07:16:39','',0,'http://kindtand.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-05-28 07:20:15','2021-05-28 07:20:15','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 07:20:15','2021-05-28 07:20:15','',16,'http://kindtand.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-05-28 07:21:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-05-28 07:21:19','0000-00-00 00:00:00','',0,'http://kindtand.local/?post_type=acf-field-group&p=24',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-05-28 07:26:46','2021-05-28 07:26:46','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Top banner','top-banner','trash','closed','closed','','group_60b09ad715050__trashed','','','2021-05-28 08:10:59','2021-05-28 08:10:59','',0,'http://kindtand.local/?post_type=acf-field-group&#038;p=25',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-05-28 07:26:46','2021-05-28 07:26:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','topBannerTitle','trash','closed','closed','','field_60b09ae817b6b__trashed','','','2021-05-28 08:10:59','2021-05-28 08:10:59','',25,'http://kindtand.local/?post_type=acf-field&#038;p=26',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-05-28 07:27:01','2021-05-28 07:27:01','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 07:27:01','2021-05-28 07:27:01','',16,'http://kindtand.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-05-28 07:33:18','2021-05-28 07:33:18','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Baggrundsbillede','topBannerBackgroundImage','trash','closed','closed','','field_60b09c7c2856a__trashed','','','2021-05-28 08:10:59','2021-05-28 08:10:59','',25,'http://kindtand.local/?post_type=acf-field&#038;p=28',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-05-28 07:33:18','2021-05-28 07:33:18','a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Video','topBannerVideo','trash','closed','closed','','field_60b09c982856b__trashed','','','2021-05-28 08:10:59','2021-05-28 08:10:59','',25,'http://kindtand.local/?post_type=acf-field&#038;p=29',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-05-28 08:10:33','2021-05-28 08:10:33','','kindtand-hero','','inherit','open','closed','','kindtand-hero','','','2021-05-28 08:10:33','2021-05-28 08:10:33','',16,'http://kindtand.local/wp-content/uploads/2021/05/kindtand-hero.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-05-28 08:10:40','2021-05-28 08:10:40','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:10:40','2021-05-28 08:10:40','',16,'http://kindtand.local/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-05-28 08:11:23','2021-05-28 08:11:23','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Hero','hero','publish','closed','closed','','group_60b0a594cb873','','','2021-05-28 08:22:52','2021-05-28 08:22:52','',0,'http://kindtand.local/?post_type=acf-field-group&#038;p=32',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-05-28 08:11:23','2021-05-28 08:11:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','heroTitle','publish','closed','closed','','field_60b0a59ab169d','','','2021-05-28 08:11:23','2021-05-28 08:11:23','',32,'http://kindtand.local/?post_type=acf-field&p=33',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-05-28 08:11:48','2021-05-28 08:11:48','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Baggrundsbillede','heroBackgroundImage','publish','closed','closed','','field_60b0a5ad6fecb','','','2021-05-28 08:11:48','2021-05-28 08:11:48','',32,'http://kindtand.local/?post_type=acf-field&p=34',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-05-28 08:12:04','2021-05-28 08:12:04','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:12:04','2021-05-28 08:12:04','',16,'http://kindtand.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-05-28 08:13:10','2021-05-28 08:13:10','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:13:10','2021-05-28 08:13:10','',16,'http://kindtand.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-05-28 08:13:59','2021-05-28 08:13:59','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:13:59','2021-05-28 08:13:59','',16,'http://kindtand.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-05-28 08:19:32','2021-05-28 08:19:32','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:19:32','2021-05-28 08:19:32','',16,'http://kindtand.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-05-28 08:21:17','2021-05-28 08:21:17','a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Video','heroVideo','publish','closed','closed','','field_60b0a7ec86e7e','','','2021-05-28 08:21:17','2021-05-28 08:21:17','',32,'http://kindtand.local/?post_type=acf-field&p=40',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-05-28 08:21:45','2021-05-28 08:21:45','','SampleVideo_1280x720_1mb','','inherit','open','closed','','samplevideo_1280x720_1mb','','','2021-05-28 08:21:45','2021-05-28 08:21:45','',16,'http://kindtand.local/wp-content/uploads/2021/05/SampleVideo_1280x720_1mb.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-05-28 08:22:52','2021-05-28 08:22:52','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video url','heroVideoUrl','publish','closed','closed','','field_60b0a84f20d27','','','2021-05-28 08:22:52','2021-05-28 08:22:52','',32,'http://kindtand.local/?post_type=acf-field&p=42',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-05-28 08:23:02','2021-05-28 08:23:02','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:23:02','2021-05-28 08:23:02','',16,'http://kindtand.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-05-28 08:30:13','2021-05-28 08:30:13','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:30:13','2021-05-28 08:30:13','',16,'http://kindtand.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-05-28 08:30:51','2021-05-28 08:30:51','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:30:51','2021-05-28 08:30:51','',16,'http://kindtand.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-05-28 08:32:21','2021-05-28 08:32:21','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:32:21','2021-05-28 08:32:21','',16,'http://kindtand.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-05-28 08:42:40','2021-05-28 08:42:40','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:42:40','2021-05-28 08:42:40','',16,'http://kindtand.local/?p=47',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-05-28 08:43:14','2021-05-28 08:43:14','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:43:14','2021-05-28 08:43:14','',16,'http://kindtand.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-05-28 08:46:27','2021-05-28 08:46:27','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:46:27','2021-05-28 08:46:27','',16,'http://kindtand.local/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-05-28 08:46:46','2021-05-28 08:46:46','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:46:46','2021-05-28 08:46:46','',16,'http://kindtand.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-05-28 08:47:06','2021-05-28 08:47:06','','Forside title','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 08:47:06','2021-05-28 08:47:06','',16,'http://kindtand.local/?p=51',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Site nav','site-nav',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','sp@29x.studio');
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
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"9495e557fe7ea63212765967473e52b226302c5000927a8186c54cce4bd50f92\";a:4:{s:10:\"expiration\";i:1622272767;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622099967;}s:64:\"ba439d4a7b88d0cb0ddde48b373f765c72ac0e9170eb1ecffc9d271104cc12de\";a:4:{s:10:\"expiration\";i:1622358649;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622185849;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1622189435');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `wp_users` VALUES (1,'sp@29x.studio','$P$BHlbE8.Ye4/C2hhg0eieBGrjAhgRh41','sp29x-studio','sp@29x.studio','http://kindtand.local','2021-05-27 07:17:22','',0,'sp@29x.studio');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03  9:22:08
