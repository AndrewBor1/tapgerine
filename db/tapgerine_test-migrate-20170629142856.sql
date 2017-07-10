# WordPress MySQL database migration
#
# Generated: Thursday 29. June 2017 14:28 UTC
# Hostname: localhost
# Database: `tapgerine_test`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-07 08:48:37', '2017-06-07 08:48:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_duplicator_packages`
#

DROP TABLE IF EXISTS `wp_duplicator_packages`;


#
# Table structure of table `wp_duplicator_packages`
#

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_duplicator_packages`
#
INSERT INTO `wp_duplicator_packages` ( `id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20170629_tapgeribetest', 'a803af93b8fce7421805170629142432', 100, '2017-06-29 14:24:38', 'odmen', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-06-29 14:24:32";s:7:"Version";s:5:"1.2.8";s:9:"VersionWP";s:5:"4.7.5";s:9:"VersionDB";s:6:"5.7.17";s:10:"VersionPHP";s:23:"7.0.15-0ubuntu0.16.04.4";s:9:"VersionOS";s:5:"Linux";s:2:"ID";i:1;s:4:"Name";s:22:"20170629_tapgeribetest";s:4:"Hash";s:32:"a803af93b8fce7421805170629142432";s:8:"NameHash";s:55:"20170629_tapgeribetest_a803af93b8fce7421805170629142432";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:56:"/var/web/tapgerine-test.thegustoapp.com/wp-snapshots/tmp";s:8:"StoreURL";s:51:"http://tapgerine-test.thegustoapp.com/wp-snapshots/";s:8:"ScanFile";s:65:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_scan.json";s:7:"Runtime";s:9:"5.13 sec.";s:7:"ExeSize";s:8:"428.48KB";s:7:"ZipSize";s:7:"35.74MB";s:6:"Status";N;s:6:"WPUser";s:5:"odmen";s:7:"Archive";O:11:"DUP_Archive":14:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";s:67:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:39:"/var/web/tapgerine-test.thegustoapp.com";s:4:"Size";i:37478022;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-06-29 14:24:32";s:7:"Version";s:5:"1.2.8";s:9:"VersionWP";s:5:"4.7.5";s:9:"VersionDB";s:6:"5.7.17";s:10:"VersionPHP";s:23:"7.0.15-0ubuntu0.16.04.4";s:9:"VersionOS";s:5:"Linux";s:2:"ID";i:1;s:4:"Name";s:22:"20170629_tapgeribetest";s:4:"Hash";s:32:"a803af93b8fce7421805170629142432";s:8:"NameHash";s:55:"20170629_tapgeribetest_a803af93b8fce7421805170629142432";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:56:"/var/web/tapgerine-test.thegustoapp.com/wp-snapshots/tmp";s:8:"StoreURL";s:51:"http://tapgerine-test.thegustoapp.com/wp-snapshots/";s:8:"ScanFile";s:65:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_scan.json";s:7:"Runtime";s:9:"5.13 sec.";s:7:"ExeSize";s:8:"428.48KB";s:7:"ZipSize";s:7:"35.74MB";s:6:"Status";N;s:6:"WPUser";s:5:"odmen";s:7:"Archive";O:11:"DUP_Archive":14:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";s:67:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:39:"/var/web/tapgerine-test.thegustoapp.com";s:4:"Size";i:37478022;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";r:53;}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";s:69:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_installer.php";s:4:"Size";i:438759;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:53;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:799709;s:4:"File";s:68:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:8:"(Ubuntu)";s:10:"\0*\0Package";r:53;s:25:"\0DUP_Database\0dbStorePath";s:125:"/var/web/tapgerine-test.thegustoapp.com/wp-snapshots/tmp/20170629_tapgeribetest_a803af93b8fce7421805170629142432_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";s:69:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_installer.php";s:4:"Size";i:438759;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:53;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:799709;s:4:"File";s:68:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:8:"(Ubuntu)";s:10:"\0*\0Package";r:53;s:25:"\0DUP_Database\0dbStorePath";s:125:"/var/web/tapgerine-test.thegustoapp.com/wp-snapshots/tmp/20170629_tapgeribetest_a803af93b8fce7421805170629142432_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}') ;

#
# End of data contents of table `wp_duplicator_packages`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tapgerine-test.thegustoapp.com', 'yes'),
(2, 'home', 'http://tapgerine-test.thegustoapp.com', 'yes'),
(3, 'blogname', 'tapgeribe-test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andbor1rey@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=10&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:25:"duplicator/duplicator.php";i:2;s:33:"ssh-sftp-updater-support/sftp.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";i:4;s:19:"wp-scss/wp-scss.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tapgerine_test', 'yes'),
(41, 'stylesheet', 'tapgerine_test', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1498769317;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498812549;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498814541;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1496827220;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, 'can_compress_scripts', '0', 'no'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(138, 'ftp_credentials', 'a:3:{s:8:"hostname";s:14:"188.166.29.196";s:8:"username";s:4:"root";s:15:"connection_type";s:3:"ssh";}', 'yes'),
(141, 'acf_version', '5.5.14', 'yes'),
(149, 'wpscss_version', '1.2.2', 'no'),
(150, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TlRVMU1EZDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQTFMVEEySURFeE9qVXpPak0xIjtzOjM6InVybCI7czozNzoiaHR0cDovL3RhcGdlcmluZS10ZXN0LnRoZWd1c3RvYXBwLmNvbSI7fQ==', 'yes'),
(154, 'current_theme', 'TapgerineTest', 'yes'),
(155, 'theme_mods_tapgerine_test', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:4:"main";i:2;}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'wpscss_options', 'a:4:{s:8:"scss_dir";s:6:"/scss/";s:7:"css_dir";s:5:"/css/";s:17:"compiling_options";s:32:"Leafo\\ScssPhp\\Formatter\\Expanded";s:6:"errors";s:4:"show";}', 'yes'),
(167, 'options_top_logo', '24', 'no'),
(168, '_options_top_logo', 'field_5937fd835faba', 'no'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(179, 'options_log_in_text', 'войти', 'no'),
(180, '_options_log_in_text', 'field_59392600173d3', 'no'),
(199, 'options_top_logo_alt', '69', 'no'),
(200, '_options_top_logo_alt', 'field_59394da93ef02', 'no'),
(355, 'duplicator_settings', 'a:10:{s:7:"version";s:5:"1.2.8";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(356, 'duplicator_version_plugin', '1.2.8', 'yes'),
(357, 'duplicator_package_active', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-06-29 14:24:32";s:7:"Version";s:5:"1.2.8";s:9:"VersionWP";s:5:"4.7.5";s:9:"VersionDB";s:6:"5.7.17";s:10:"VersionPHP";s:23:"7.0.15-0ubuntu0.16.04.4";s:9:"VersionOS";s:5:"Linux";s:2:"ID";N;s:4:"Name";s:22:"20170629_tapgeribetest";s:4:"Hash";s:32:"a803af93b8fce7421805170629142432";s:8:"NameHash";s:55:"20170629_tapgeribetest_a803af93b8fce7421805170629142432";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:56:"/var/web/tapgerine-test.thegustoapp.com/wp-snapshots/tmp";s:8:"StoreURL";s:51:"http://tapgerine-test.thegustoapp.com/wp-snapshots/";s:8:"ScanFile";s:65:"20170629_tapgeribetest_a803af93b8fce7421805170629142432_scan.json";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":14:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:39:"/var/web/tapgerine-test.thegustoapp.com";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-06-29 14:24:32";s:7:"Version";s:5:"1.2.8";s:9:"VersionWP";s:5:"4.7.5";s:9:"VersionDB";s:6:"5.7.17";s:10:"VersionPHP";s:23:"7.0.15-0ubuntu0.16.04.4";s:9:"VersionOS";s:5:"Linux";s:2:"ID";N;s:4:"Name";s:22:"20170629_tapgeribetest";s:4:"Hash";s:32:"a803af93b8fce7421805170629142432";s:8:"NameHash";s:55:"20170629_tapgeribetest_a803af93b8fce7421805170629142432";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:56:"/var/web/tapgerine-test.thegustoapp.com/wp-snapshots/tmp";s:8:"StoreURL";s:51:"http://tapgerine-test.thegustoapp.com/wp-snapshots/";s:8:"ScanFile";N;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":14:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:39:"/var/web/tapgerine-test.thegustoapp.com";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";r:53;}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:53;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:8:"(Ubuntu)";s:10:"\0*\0Package";r:53;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:53;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:8:"(Ubuntu)";s:10:"\0*\0Package";r:53;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=592 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1496827346:1'),
(10, 7, '_wp_page_template', 'home_page.php'),
(11, 7, '_wp_trash_meta_status', 'publish'),
(12, 7, '_wp_trash_meta_time', '1496828698'),
(13, 7, '_wp_desired_post_slug', 'second-page'),
(14, 2, '_wp_trash_meta_status', 'publish'),
(15, 2, '_wp_trash_meta_time', '1496828700'),
(16, 2, '_wp_desired_post_slug', 'sample-page'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1496910303:1'),
(19, 10, '_wp_page_template', 'home_page.php'),
(20, 12, '_edit_last', '1'),
(21, 12, '_edit_lock', '1496838999:1'),
(24, 10, 'h_background', '20'),
(25, 10, '_h_background', 'field_5937e77c8c213'),
(26, 10, 'h_first_page_url', 'http://tapgerine-test.thegustoapp.com/first-page/'),
(27, 10, '_h_first_page_url', 'field_5937e7b88c214'),
(28, 10, 'h_second_page_url', 'http://tapgerine-test.thegustoapp.com/second-page/'),
(29, 10, '_h_second_page_url', 'field_5937e8028c215'),
(30, 17, 'h_background', '16'),
(31, 17, '_h_background', 'field_5937e77c8c213'),
(32, 17, 'h_first_page_url', ''),
(33, 17, '_h_first_page_url', 'field_5937e7b88c214'),
(34, 17, 'h_second_page_url', ''),
(35, 17, '_h_second_page_url', 'field_5937e8028c215'),
(38, 19, 'h_background', '18'),
(39, 19, '_h_background', 'field_5937e77c8c213'),
(40, 19, 'h_first_page_url', ''),
(41, 19, '_h_first_page_url', 'field_5937e7b88c214'),
(42, 19, 'h_second_page_url', ''),
(43, 19, '_h_second_page_url', 'field_5937e8028c215'),
(44, 20, '_wp_attached_file', '2017/06/home_background.jpg'),
(45, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:27:"2017/06/home_background.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"home_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"home_background-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"home_background-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"home_background-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 21, 'h_background', '20'),
(47, 21, '_h_background', 'field_5937e77c8c213'),
(48, 21, 'h_first_page_url', ''),
(49, 21, '_h_first_page_url', 'field_5937e7b88c214'),
(50, 21, 'h_second_page_url', ''),
(51, 21, '_h_second_page_url', 'field_5937e8028c215'),
(52, 22, '_edit_last', '1'),
(53, 22, '_edit_lock', '1496931178:1'),
(54, 24, '_wp_attached_file', '2017/06/logo.png'),
(55, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:153;s:6:"height";i:42;s:4:"file";s:16:"2017/06/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x42.png";s:5:"width";i:150;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 25, '_edit_last', '1'),
(57, 25, '_edit_lock', '1497013180:1'),
(58, 26, '_edit_last', '1'),
(59, 26, '_edit_lock', '1497021940:1'),
(60, 26, '_wp_page_template', 'first_page.php'),
(61, 28, 'h_background', '20'),
(62, 28, '_h_background', 'field_5937e77c8c213'),
(63, 28, 'h_first_page_url', 'http://tapgerine-test.thegustoapp.com/first-page/ ‎'),
(64, 28, '_h_first_page_url', 'field_5937e7b88c214'),
(65, 28, 'h_second_page_url', ''),
(66, 28, '_h_second_page_url', 'field_5937e8028c215'),
(67, 29, 'h_background', '20'),
(68, 29, '_h_background', 'field_5937e77c8c213'),
(69, 29, 'h_first_page_url', 'http://tapgerine-test.thegustoapp.com/first-page/'),
(70, 29, '_h_first_page_url', 'field_5937e7b88c214'),
(71, 29, 'h_second_page_url', ''),
(72, 29, '_h_second_page_url', 'field_5937e8028c215'),
(73, 35, '_wp_attached_file', '2017/06/f_top_background.png'),
(74, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:760;s:4:"file";s:28:"2017/06/f_top_background.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"f_top_background-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"f_top_background-300x152.png";s:5:"width";i:300;s:6:"height";i:152;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"f_top_background-768x389.png";s:5:"width";i:768;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"f_top_background-1024x519.png";s:5:"width";i:1024;s:6:"height";i:519;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 26, 'f_top_background', '35'),
(76, 26, '_f_top_background', 'field_5938018d3f628'),
(77, 26, 'f_top_description', 'convert your traffic into cash'),
(78, 26, '_f_top_description', 'field_593800f37b781'),
(79, 26, 'f_top_btn_text', 'join now'),
(80, 26, '_f_top_btn_text', 'field_593801307b783'),
(81, 26, 'f_top_btn_url', 'http://tapgerine-test.thegustoapp.com/second-page?banner=1'),
(82, 26, '_f_top_btn_url', 'field_5938014c7b784'),
(83, 36, 'f_top_background', '35'),
(84, 36, '_f_top_background', 'field_5938018d3f628'),
(85, 36, 'f_top_description', ''),
(86, 36, '_f_top_description', 'field_593800f37b781'),
(87, 36, 'f_top_btn_text', ''),
(88, 36, '_f_top_btn_text', 'field_593801307b783'),
(89, 36, 'f_top_btn_url', ''),
(90, 36, '_f_top_btn_url', 'field_5938014c7b784'),
(91, 37, 'f_top_background', '35'),
(92, 37, '_f_top_background', 'field_5938018d3f628'),
(93, 37, 'f_top_description', 'convert your traffic into cash'),
(94, 37, '_f_top_description', 'field_593800f37b781'),
(95, 37, 'f_top_btn_text', 'join now'),
(96, 37, '_f_top_btn_text', 'field_593801307b783'),
(97, 37, 'f_top_btn_url', ''),
(98, 37, '_f_top_btn_url', 'field_5938014c7b784'),
(99, 41, '_wp_attached_file', '2017/06/banner2.jpg'),
(100, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:250;s:4:"file";s:19:"2017/06/banner2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"banner2-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(101, 26, 'f_second_bgcolor', '#fd8102'),
(102, 26, '_f_second_bgcolor', 'field_5939040f040a5'),
(103, 26, 'f_second_banneer_img', '41'),
(104, 26, '_f_second_banneer_img', 'field_59390438fca95'),
(105, 42, 'f_top_background', '35'),
(106, 42, '_f_top_background', 'field_5938018d3f628'),
(107, 42, 'f_top_description', 'convert your traffic into cash'),
(108, 42, '_f_top_description', 'field_593800f37b781'),
(109, 42, 'f_top_btn_text', 'join now'),
(110, 42, '_f_top_btn_text', 'field_593801307b783') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(111, 42, 'f_top_btn_url', ''),
(112, 42, '_f_top_btn_url', 'field_5938014c7b784'),
(113, 42, 'f_second_bgcolor', '#fd8102'),
(114, 42, '_f_second_bgcolor', 'field_5939040f040a5'),
(115, 42, 'f_second_banneer_img', '41'),
(116, 42, '_f_second_banneer_img', 'field_59390438fca95'),
(117, 43, '_edit_last', '1'),
(118, 43, '_edit_lock', '1497097115:1'),
(119, 43, '_wp_page_template', 'second_page.php'),
(120, 45, '_edit_last', '1'),
(121, 45, '_edit_lock', '1497097114:1'),
(122, 46, 'h_background', '20'),
(123, 46, '_h_background', 'field_5937e77c8c213'),
(124, 46, 'h_first_page_url', 'http://tapgerine-test.thegustoapp.com/first-page/'),
(125, 46, '_h_first_page_url', 'field_5937e7b88c214'),
(126, 46, 'h_second_page_url', 'http://tapgerine-test.thegustoapp.com/second-page/'),
(127, 46, '_h_second_page_url', 'field_5937e8028c215'),
(164, 59, '_wp_attached_file', '2017/06/shutterstock-v12707153.mp4'),
(165, 59, '_wp_attachment_metadata', 'a:9:{s:8:"filesize";i:6782349;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:21;s:16:"length_formatted";s:4:"0:21";s:5:"width";i:1280;s:6:"height";i:676;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}}'),
(166, 60, '_wp_attached_file', '2017/06/shutterstock_v12707153.webm'),
(167, 60, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:1999829;s:8:"filesize";i:5596189;s:9:"mime_type";s:10:"video/webm";s:6:"length";i:21;s:16:"length_formatted";s:4:"0:21";s:5:"width";i:1280;s:6:"height";i:676;s:10:"fileformat";s:4:"webm";s:10:"dataformat";s:3:"vp8";s:5:"audio";a:10:{s:10:"dataformat";s:6:"vorbis";s:11:"sample_rate";i:44100;s:8:"channels";i:2;s:8:"language";s:3:"und";s:15:"bits_per_sample";i:32;s:8:"lossless";b:0;s:12:"bitrate_mode";s:3:"vbr";s:7:"bitrate";i:128000;s:11:"channelmode";s:6:"stereo";s:17:"compression_ratio";d:0.045351473922902494;}}'),
(168, 61, '_wp_attached_file', '2017/06/shutterstock_v12707153.ogv'),
(169, 61, '_wp_attachment_metadata', 'a:6:{s:8:"filesize";i:10489889;s:9:"mime_type";s:9:"video/ogg";s:5:"width";i:1280;s:6:"height";i:676;s:10:"fileformat";s:3:"ogg";s:10:"dataformat";s:6:"theora";}'),
(170, 62, '_wp_attached_file', '2017/06/video_banner.jpg'),
(171, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2017/06/video_banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"video_banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"video_banner-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"video_banner-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"video_banner-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(172, 63, '_wp_attached_file', '2017/06/s_top_section_logo.png'),
(173, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:138;s:6:"height";i:162;s:4:"file";s:30:"2017/06/s_top_section_logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"s_top_section_logo-138x150.png";s:5:"width";i:138;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 43, 's_background_video_mp4', '59'),
(175, 43, '_s_background_video_mp4', 'field_59390fb241984'),
(176, 43, 's_background_video_webm', '60'),
(177, 43, '_s_background_video_webm', 'field_59390ff841985'),
(178, 43, 's_background_video_ogv', '61'),
(179, 43, '_s_background_video_ogv', 'field_5939102041986'),
(180, 43, 's_top_background_img', '62'),
(181, 43, '_s_top_background_img', 'field_5939107319741'),
(182, 43, 's_top_logo', '63'),
(183, 43, '_s_top_logo', 'field_593913171ae7d'),
(184, 43, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(185, 43, '_s_top_description', 'field_593913331ae7e'),
(186, 43, 's_top_button_text', 'регистрация'),
(187, 43, '_s_top_button_text', 'field_593913581ae7f'),
(188, 64, 's_background_video_mp4', '59'),
(189, 64, '_s_background_video_mp4', 'field_59390fb241984'),
(190, 64, 's_background_video_webm', '60'),
(191, 64, '_s_background_video_webm', 'field_59390ff841985'),
(192, 64, 's_background_video_ogv', '61'),
(193, 64, '_s_background_video_ogv', 'field_5939102041986'),
(194, 64, 's_top_background_img', '62'),
(195, 64, '_s_top_background_img', 'field_5939107319741'),
(196, 64, 's_top_logo', '63'),
(197, 64, '_s_top_logo', 'field_593913171ae7d'),
(198, 64, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(199, 64, '_s_top_description', 'field_593913331ae7e'),
(200, 64, 's_top_button_text', 'регистрация'),
(201, 64, '_s_top_button_text', 'field_593913581ae7f'),
(202, 66, '_menu_item_type', 'custom'),
(203, 66, '_menu_item_menu_item_parent', '0'),
(204, 66, '_menu_item_object_id', '66'),
(205, 66, '_menu_item_object', 'custom'),
(206, 66, '_menu_item_target', ''),
(207, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(208, 66, '_menu_item_xfn', ''),
(209, 66, '_menu_item_url', '#SAbout'),
(211, 67, '_menu_item_type', 'custom'),
(212, 67, '_menu_item_menu_item_parent', '0'),
(213, 67, '_menu_item_object_id', '67'),
(214, 67, '_menu_item_object', 'custom'),
(215, 67, '_menu_item_target', ''),
(216, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(217, 67, '_menu_item_xfn', ''),
(218, 67, '_menu_item_url', '#SOurProducts'),
(220, 69, '_wp_attached_file', '2017/06/logo2.png'),
(221, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:306;s:6:"height";i:83;s:4:"file";s:17:"2017/06/logo2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo2-150x83.png";s:5:"width";i:150;s:6:"height";i:83;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"logo2-300x81.png";s:5:"width";i:300;s:6:"height";i:81;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(222, 43, 's_about_title', 'о нас'),
(223, 43, '_s_about_title', 'field_59395c1b01350'),
(224, 43, 's_about_description', 'Tapgerine — международная рекламная компания, занимающаяся продвижением мобильных приложений, а также созданием наиболее эффективных инструментов для монетизации мобильного трафика. Используя собственные технологические разработки, мы реализовываем медиа-стратегии клиентов, привлекая только лояльных пользователей. Мы применяем современные методы анализа данных и алгоритмы машинного обучения для увеличения конверсии ваших рекламных кампаний.'),
(225, 43, '_s_about_description', 'field_59395c3201351'),
(226, 43, 's_about_achievements_0_s_about_achievements_title', '4K+'),
(227, 43, '_s_about_achievements_0_s_about_achievements_title', 'field_59395db301353'),
(228, 43, 's_about_achievements_0_s_about_achievements_excerpt', 'мобильных партнеров'),
(229, 43, '_s_about_achievements_0_s_about_achievements_excerpt', 'field_59395dd001354'),
(230, 43, 's_about_achievements_1_s_about_achievements_title', '2K+'),
(231, 43, '_s_about_achievements_1_s_about_achievements_title', 'field_59395db301353'),
(232, 43, 's_about_achievements_1_s_about_achievements_excerpt', 'рекламных компаний'),
(233, 43, '_s_about_achievements_1_s_about_achievements_excerpt', 'field_59395dd001354'),
(234, 43, 's_about_achievements_2_s_about_achievements_title', '6М+'),
(235, 43, '_s_about_achievements_2_s_about_achievements_title', 'field_59395db301353'),
(236, 43, 's_about_achievements_2_s_about_achievements_excerpt', 'загрузок приложений'),
(237, 43, '_s_about_achievements_2_s_about_achievements_excerpt', 'field_59395dd001354'),
(238, 43, 's_about_achievements', '3'),
(239, 43, '_s_about_achievements', 'field_59395d6001352'),
(240, 43, 's_about_description_extra', 'Мы предлагаем огромное разнообразие программных решений для успешной монетизации каждого клика партнера. Зарегистрируйтесь в партнерской программе Tapgerine и начинайте зарабатывать прямо сейчас!'),
(241, 43, '_s_about_description_extra', 'field_59395dfa01355'),
(242, 43, 's_about_description_more_text', 'подробнее'),
(243, 43, '_s_about_description_more_text', 'field_59395e5d01356'),
(244, 78, 's_background_video_mp4', '59'),
(245, 78, '_s_background_video_mp4', 'field_59390fb241984'),
(246, 78, 's_background_video_webm', '60'),
(247, 78, '_s_background_video_webm', 'field_59390ff841985'),
(248, 78, 's_background_video_ogv', '61') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(249, 78, '_s_background_video_ogv', 'field_5939102041986'),
(250, 78, 's_top_background_img', '62'),
(251, 78, '_s_top_background_img', 'field_5939107319741'),
(252, 78, 's_top_logo', '63'),
(253, 78, '_s_top_logo', 'field_593913171ae7d'),
(254, 78, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(255, 78, '_s_top_description', 'field_593913331ae7e'),
(256, 78, 's_top_button_text', 'регистрация'),
(257, 78, '_s_top_button_text', 'field_593913581ae7f'),
(258, 78, 's_about_title', 'о нас'),
(259, 78, '_s_about_title', 'field_59395c1b01350'),
(260, 78, 's_about_description', 'Tapgerine — международная рекламная компания, занимающаяся продвижением мобильных приложений, а также созданием наиболее эффективных инструментов для монетизации мобильного трафика. Используя собственные технологические разработки, мы реализовываем медиа-стратегии клиентов, привлекая только лояльных пользователей. Мы применяем современные методы анализа данных и алгоритмы машинного обучения для увеличения конверсии ваших рекламных кампаний.'),
(261, 78, '_s_about_description', 'field_59395c3201351'),
(262, 78, 's_about_achievements_0_s_about_achievements_title', '4K+'),
(263, 78, '_s_about_achievements_0_s_about_achievements_title', 'field_59395db301353'),
(264, 78, 's_about_achievements_0_s_about_achievements_excerpt', 'мобильных партнеров'),
(265, 78, '_s_about_achievements_0_s_about_achievements_excerpt', 'field_59395dd001354'),
(266, 78, 's_about_achievements_1_s_about_achievements_title', '2K+'),
(267, 78, '_s_about_achievements_1_s_about_achievements_title', 'field_59395db301353'),
(268, 78, 's_about_achievements_1_s_about_achievements_excerpt', 'рекламных компаний'),
(269, 78, '_s_about_achievements_1_s_about_achievements_excerpt', 'field_59395dd001354'),
(270, 78, 's_about_achievements_2_s_about_achievements_title', '6М+'),
(271, 78, '_s_about_achievements_2_s_about_achievements_title', 'field_59395db301353'),
(272, 78, 's_about_achievements_2_s_about_achievements_excerpt', 'загрузок приложений'),
(273, 78, '_s_about_achievements_2_s_about_achievements_excerpt', 'field_59395dd001354'),
(274, 78, 's_about_achievements', '3'),
(275, 78, '_s_about_achievements', 'field_59395d6001352'),
(276, 78, 's_about_description_extra', ''),
(277, 78, '_s_about_description_extra', 'field_59395dfa01355'),
(278, 78, 's_about_description_more_text', ''),
(279, 78, '_s_about_description_more_text', 'field_59395e5d01356'),
(280, 79, 's_background_video_mp4', '59'),
(281, 79, '_s_background_video_mp4', 'field_59390fb241984'),
(282, 79, 's_background_video_webm', '60'),
(283, 79, '_s_background_video_webm', 'field_59390ff841985'),
(284, 79, 's_background_video_ogv', '61'),
(285, 79, '_s_background_video_ogv', 'field_5939102041986'),
(286, 79, 's_top_background_img', '62'),
(287, 79, '_s_top_background_img', 'field_5939107319741'),
(288, 79, 's_top_logo', '63'),
(289, 79, '_s_top_logo', 'field_593913171ae7d'),
(290, 79, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(291, 79, '_s_top_description', 'field_593913331ae7e'),
(292, 79, 's_top_button_text', 'регистрация'),
(293, 79, '_s_top_button_text', 'field_593913581ae7f'),
(294, 79, 's_about_title', 'о нас'),
(295, 79, '_s_about_title', 'field_59395c1b01350'),
(296, 79, 's_about_description', 'Tapgerine — международная рекламная компания, занимающаяся продвижением мобильных приложений, а также созданием наиболее эффективных инструментов для монетизации мобильного трафика. Используя собственные технологические разработки, мы реализовываем медиа-стратегии клиентов, привлекая только лояльных пользователей. Мы применяем современные методы анализа данных и алгоритмы машинного обучения для увеличения конверсии ваших рекламных кампаний.'),
(297, 79, '_s_about_description', 'field_59395c3201351'),
(298, 79, 's_about_achievements_0_s_about_achievements_title', '4K+'),
(299, 79, '_s_about_achievements_0_s_about_achievements_title', 'field_59395db301353'),
(300, 79, 's_about_achievements_0_s_about_achievements_excerpt', 'мобильных партнеров'),
(301, 79, '_s_about_achievements_0_s_about_achievements_excerpt', 'field_59395dd001354'),
(302, 79, 's_about_achievements_1_s_about_achievements_title', '2K+'),
(303, 79, '_s_about_achievements_1_s_about_achievements_title', 'field_59395db301353'),
(304, 79, 's_about_achievements_1_s_about_achievements_excerpt', 'рекламных компаний'),
(305, 79, '_s_about_achievements_1_s_about_achievements_excerpt', 'field_59395dd001354'),
(306, 79, 's_about_achievements_2_s_about_achievements_title', '6М+'),
(307, 79, '_s_about_achievements_2_s_about_achievements_title', 'field_59395db301353'),
(308, 79, 's_about_achievements_2_s_about_achievements_excerpt', 'загрузок приложений'),
(309, 79, '_s_about_achievements_2_s_about_achievements_excerpt', 'field_59395dd001354'),
(310, 79, 's_about_achievements', '3'),
(311, 79, '_s_about_achievements', 'field_59395d6001352'),
(312, 79, 's_about_description_extra', 'Мы предлагаем огромное разнообразие программных решений для успешной монетизации каждого клика партнера.\r\nЗарегистрируйтесь в партнерской программе Tapgerine и начинайте зарабатывать прямо сейчас!'),
(313, 79, '_s_about_description_extra', 'field_59395dfa01355'),
(314, 79, 's_about_description_more_text', 'подробнее'),
(315, 79, '_s_about_description_more_text', 'field_59395e5d01356'),
(316, 80, 's_background_video_mp4', '59'),
(317, 80, '_s_background_video_mp4', 'field_59390fb241984'),
(318, 80, 's_background_video_webm', '60'),
(319, 80, '_s_background_video_webm', 'field_59390ff841985'),
(320, 80, 's_background_video_ogv', '61'),
(321, 80, '_s_background_video_ogv', 'field_5939102041986'),
(322, 80, 's_top_background_img', '62'),
(323, 80, '_s_top_background_img', 'field_5939107319741'),
(324, 80, 's_top_logo', '63'),
(325, 80, '_s_top_logo', 'field_593913171ae7d'),
(326, 80, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(327, 80, '_s_top_description', 'field_593913331ae7e'),
(328, 80, 's_top_button_text', 'регистрация'),
(329, 80, '_s_top_button_text', 'field_593913581ae7f'),
(330, 80, 's_about_title', 'о нас'),
(331, 80, '_s_about_title', 'field_59395c1b01350'),
(332, 80, 's_about_description', 'Tapgerine — международная рекламная компания, занимающаяся продвижением мобильных приложений, а также созданием наиболее эффективных инструментов для монетизации мобильного трафика. Используя собственные технологические разработки, мы реализовываем медиа-стратегии клиентов, привлекая только лояльных пользователей. Мы применяем современные методы анализа данных и алгоритмы машинного обучения для увеличения конверсии ваших рекламных кампаний.'),
(333, 80, '_s_about_description', 'field_59395c3201351'),
(334, 80, 's_about_achievements_0_s_about_achievements_title', '4K+'),
(335, 80, '_s_about_achievements_0_s_about_achievements_title', 'field_59395db301353'),
(336, 80, 's_about_achievements_0_s_about_achievements_excerpt', 'мобильных партнеров'),
(337, 80, '_s_about_achievements_0_s_about_achievements_excerpt', 'field_59395dd001354'),
(338, 80, 's_about_achievements_1_s_about_achievements_title', '2K+'),
(339, 80, '_s_about_achievements_1_s_about_achievements_title', 'field_59395db301353'),
(340, 80, 's_about_achievements_1_s_about_achievements_excerpt', 'рекламных компаний'),
(341, 80, '_s_about_achievements_1_s_about_achievements_excerpt', 'field_59395dd001354'),
(342, 80, 's_about_achievements_2_s_about_achievements_title', '6М+'),
(343, 80, '_s_about_achievements_2_s_about_achievements_title', 'field_59395db301353'),
(344, 80, 's_about_achievements_2_s_about_achievements_excerpt', 'загрузок приложений'),
(345, 80, '_s_about_achievements_2_s_about_achievements_excerpt', 'field_59395dd001354'),
(346, 80, 's_about_achievements', '3'),
(347, 80, '_s_about_achievements', 'field_59395d6001352'),
(348, 80, 's_about_description_extra', 'Мы предлагаем огромное разнообразие программных решений для успешной монетизации каждого клика партнера. Зарегистрируйтесь в партнерской программе Tapgerine и начинайте зарабатывать прямо сейчас!') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(349, 80, '_s_about_description_extra', 'field_59395dfa01355'),
(350, 80, 's_about_description_more_text', 'подробнее'),
(351, 80, '_s_about_description_more_text', 'field_59395e5d01356'),
(352, 89, '_wp_attached_file', '2017/06/telephone.png'),
(353, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:107;s:6:"height";i:94;s:4:"file";s:21:"2017/06/telephone.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(354, 90, '_wp_attached_file', '2017/06/box.png'),
(355, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:107;s:6:"height";i:94;s:4:"file";s:15:"2017/06/box.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(356, 91, '_wp_attached_file', '2017/06/bag-of-money.png'),
(357, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:107;s:6:"height";i:94;s:4:"file";s:24:"2017/06/bag-of-money.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(358, 43, 's_products_title', 'наши продукты'),
(359, 43, '_s_products_title', 'field_5939b2c644d74'),
(360, 43, 's_product_products_0_s_product_products_icon', '89'),
(361, 43, '_s_product_products_0_s_product_products_icon', 'field_5939b3ec44d76'),
(362, 43, 's_product_products_0_s_product_products_excerpt', 'Эффективное решение для вашего бизнеса'),
(363, 43, '_s_product_products_0_s_product_products_excerpt', 'field_5939b44344d77'),
(364, 43, 's_product_products_0_s_product_products_name', 'Tapgerine Ad Platform.'),
(365, 43, '_s_product_products_0_s_product_products_name', 'field_5939b45344d78'),
(366, 43, 's_product_products_0_s_product_products_extra_excerpt', 'Партнерская программа для привлечения пользователей мобильных приложений и лидогенерации.'),
(367, 43, '_s_product_products_0_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(368, 43, 's_product_products_0_s_product_products_more', 'подробнее'),
(369, 43, '_s_product_products_0_s_product_products_more', 'field_5939b4b644d7a'),
(370, 43, 's_product_products_1_s_product_products_icon', '90'),
(371, 43, '_s_product_products_1_s_product_products_icon', 'field_5939b3ec44d76'),
(372, 43, 's_product_products_1_s_product_products_excerpt', 'Значимость каждого клика с'),
(373, 43, '_s_product_products_1_s_product_products_excerpt', 'field_5939b44344d77'),
(374, 43, 's_product_products_1_s_product_products_name', 'Superlink.'),
(375, 43, '_s_product_products_1_s_product_products_name', 'field_5939b45344d78'),
(376, 43, 's_product_products_1_s_product_products_extra_excerpt', 'Комплексное решение  по монетизации остаточного трафика для  увеличения ваших доходов.'),
(377, 43, '_s_product_products_1_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(378, 43, 's_product_products_1_s_product_products_more', 'подробнее'),
(379, 43, '_s_product_products_1_s_product_products_more', 'field_5939b4b644d7a'),
(380, 43, 's_product_products_2_s_product_products_icon', '91'),
(381, 43, '_s_product_products_2_s_product_products_icon', 'field_5939b3ec44d76'),
(382, 43, 's_product_products_2_s_product_products_excerpt', 'Разнообразие инструментов для монетизации мобильного  трафика: от'),
(383, 43, '_s_product_products_2_s_product_products_excerpt', 'field_5939b44344d77'),
(384, 43, 's_product_products_2_s_product_products_name', 'Tapgerine SDK:'),
(385, 43, '_s_product_products_2_s_product_products_name', 'field_5939b45344d78'),
(386, 43, 's_product_products_2_s_product_products_extra_excerpt', 'до индивидуальной системы распределения трафика.'),
(387, 43, '_s_product_products_2_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(388, 43, 's_product_products_2_s_product_products_more', 'подробнее'),
(389, 43, '_s_product_products_2_s_product_products_more', 'field_5939b4b644d7a'),
(390, 43, 's_product_products', '3'),
(391, 43, '_s_product_products', 'field_5939b2f544d75'),
(392, 92, 's_background_video_mp4', '59'),
(393, 92, '_s_background_video_mp4', 'field_59390fb241984'),
(394, 92, 's_background_video_webm', '60'),
(395, 92, '_s_background_video_webm', 'field_59390ff841985'),
(396, 92, 's_background_video_ogv', '61'),
(397, 92, '_s_background_video_ogv', 'field_5939102041986'),
(398, 92, 's_top_background_img', '62'),
(399, 92, '_s_top_background_img', 'field_5939107319741'),
(400, 92, 's_top_logo', '63'),
(401, 92, '_s_top_logo', 'field_593913171ae7d'),
(402, 92, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(403, 92, '_s_top_description', 'field_593913331ae7e'),
(404, 92, 's_top_button_text', 'регистрация'),
(405, 92, '_s_top_button_text', 'field_593913581ae7f'),
(406, 92, 's_about_title', 'о нас'),
(407, 92, '_s_about_title', 'field_59395c1b01350'),
(408, 92, 's_about_description', 'Tapgerine — международная рекламная компания, занимающаяся продвижением мобильных приложений, а также созданием наиболее эффективных инструментов для монетизации мобильного трафика. Используя собственные технологические разработки, мы реализовываем медиа-стратегии клиентов, привлекая только лояльных пользователей. Мы применяем современные методы анализа данных и алгоритмы машинного обучения для увеличения конверсии ваших рекламных кампаний.'),
(409, 92, '_s_about_description', 'field_59395c3201351'),
(410, 92, 's_about_achievements_0_s_about_achievements_title', '4K+'),
(411, 92, '_s_about_achievements_0_s_about_achievements_title', 'field_59395db301353'),
(412, 92, 's_about_achievements_0_s_about_achievements_excerpt', 'мобильных партнеров'),
(413, 92, '_s_about_achievements_0_s_about_achievements_excerpt', 'field_59395dd001354'),
(414, 92, 's_about_achievements_1_s_about_achievements_title', '2K+'),
(415, 92, '_s_about_achievements_1_s_about_achievements_title', 'field_59395db301353'),
(416, 92, 's_about_achievements_1_s_about_achievements_excerpt', 'рекламных компаний'),
(417, 92, '_s_about_achievements_1_s_about_achievements_excerpt', 'field_59395dd001354'),
(418, 92, 's_about_achievements_2_s_about_achievements_title', '6М+'),
(419, 92, '_s_about_achievements_2_s_about_achievements_title', 'field_59395db301353'),
(420, 92, 's_about_achievements_2_s_about_achievements_excerpt', 'загрузок приложений'),
(421, 92, '_s_about_achievements_2_s_about_achievements_excerpt', 'field_59395dd001354'),
(422, 92, 's_about_achievements', '3'),
(423, 92, '_s_about_achievements', 'field_59395d6001352'),
(424, 92, 's_about_description_extra', 'Мы предлагаем огромное разнообразие программных решений для успешной монетизации каждого клика партнера. Зарегистрируйтесь в партнерской программе Tapgerine и начинайте зарабатывать прямо сейчас!'),
(425, 92, '_s_about_description_extra', 'field_59395dfa01355'),
(426, 92, 's_about_description_more_text', 'подробнее'),
(427, 92, '_s_about_description_more_text', 'field_59395e5d01356'),
(428, 92, 's_products_title', 'наши продукты'),
(429, 92, '_s_products_title', 'field_5939b2c644d74'),
(430, 92, 's_product_products_0_s_product_products_icon', '89'),
(431, 92, '_s_product_products_0_s_product_products_icon', 'field_5939b3ec44d76'),
(432, 92, 's_product_products_0_s_product_products_excerpt', 'Эффективное решение для вашего бизнеса'),
(433, 92, '_s_product_products_0_s_product_products_excerpt', 'field_5939b44344d77'),
(434, 92, 's_product_products_0_s_product_products_name', 'Tapgerine Ad Platform.'),
(435, 92, '_s_product_products_0_s_product_products_name', 'field_5939b45344d78'),
(436, 92, 's_product_products_0_s_product_products_extra_excerpt', 'Партнерская программа для привлечения пользователей мобильных приложений и лидогенерации.'),
(437, 92, '_s_product_products_0_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(438, 92, 's_product_products_0_s_product_products_more', 'подробнее'),
(439, 92, '_s_product_products_0_s_product_products_more', 'field_5939b4b644d7a'),
(440, 92, 's_product_products_1_s_product_products_icon', '90'),
(441, 92, '_s_product_products_1_s_product_products_icon', 'field_5939b3ec44d76'),
(442, 92, 's_product_products_1_s_product_products_excerpt', 'Значимость каждого клика с'),
(443, 92, '_s_product_products_1_s_product_products_excerpt', 'field_5939b44344d77'),
(444, 92, 's_product_products_1_s_product_products_name', 'Superlink.'),
(445, 92, '_s_product_products_1_s_product_products_name', 'field_5939b45344d78'),
(446, 92, 's_product_products_1_s_product_products_extra_excerpt', 'Комплексное решение  по монетизации остаточного трафика для  увеличения ваших доходов.'),
(447, 92, '_s_product_products_1_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(448, 92, 's_product_products_1_s_product_products_more', 'подробнее') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(449, 92, '_s_product_products_1_s_product_products_more', 'field_5939b4b644d7a'),
(450, 92, 's_product_products_2_s_product_products_icon', '91'),
(451, 92, '_s_product_products_2_s_product_products_icon', 'field_5939b3ec44d76'),
(452, 92, 's_product_products_2_s_product_products_excerpt', 'Разнообразие инструментов для монетизации мобильного  трафика: от'),
(453, 92, '_s_product_products_2_s_product_products_excerpt', 'field_5939b44344d77'),
(454, 92, 's_product_products_2_s_product_products_name', 'Tapgerine SDK:'),
(455, 92, '_s_product_products_2_s_product_products_name', 'field_5939b45344d78'),
(456, 92, 's_product_products_2_s_product_products_extra_excerpt', 'до индивидуальной системы распределения трафика.'),
(457, 92, '_s_product_products_2_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(458, 92, 's_product_products_2_s_product_products_more', 'подробнее'),
(459, 92, '_s_product_products_2_s_product_products_more', 'field_5939b4b644d7a'),
(460, 92, 's_product_products', '3'),
(461, 92, '_s_product_products', 'field_5939b2f544d75'),
(462, 93, 'f_top_background', '35'),
(463, 93, '_f_top_background', 'field_5938018d3f628'),
(464, 93, 'f_top_description', 'convert your traffic into cash'),
(465, 93, '_f_top_description', 'field_593800f37b781'),
(466, 93, 'f_top_btn_text', 'join now'),
(467, 93, '_f_top_btn_text', 'field_593801307b783'),
(468, 93, 'f_top_btn_url', 'http://tapgerine-test.thegustoapp.com/second-page?0'),
(469, 93, '_f_top_btn_url', 'field_5938014c7b784'),
(470, 93, 'f_second_bgcolor', '#fd8102'),
(471, 93, '_f_second_bgcolor', 'field_5939040f040a5'),
(472, 93, 'f_second_banneer_img', '41'),
(473, 93, '_f_second_banneer_img', 'field_59390438fca95'),
(474, 26, 'f_second_banner_url', 'http://tapgerine-test.thegustoapp.com/second-page?banner=2'),
(475, 26, '_f_second_banner_url', 'field_593a9b37f0890'),
(476, 95, 'f_top_background', '35'),
(477, 95, '_f_top_background', 'field_5938018d3f628'),
(478, 95, 'f_top_description', 'convert your traffic into cash'),
(479, 95, '_f_top_description', 'field_593800f37b781'),
(480, 95, 'f_top_btn_text', 'join now'),
(481, 95, '_f_top_btn_text', 'field_593801307b783'),
(482, 95, 'f_top_btn_url', 'http://tapgerine-test.thegustoapp.com/second-page?0'),
(483, 95, '_f_top_btn_url', 'field_5938014c7b784'),
(484, 95, 'f_second_bgcolor', '#fd8102'),
(485, 95, '_f_second_bgcolor', 'field_5939040f040a5'),
(486, 95, 'f_second_banneer_img', '41'),
(487, 95, '_f_second_banneer_img', 'field_59390438fca95'),
(488, 95, 'f_second_banner_url', 'http://tapgerine-test.thegustoapp.com/second-page?1'),
(489, 95, '_f_second_banner_url', 'field_593a9b37f0890'),
(490, 96, 'f_top_background', '35'),
(491, 96, '_f_top_background', 'field_5938018d3f628'),
(492, 96, 'f_top_description', 'convert your traffic into cash'),
(493, 96, '_f_top_description', 'field_593800f37b781'),
(494, 96, 'f_top_btn_text', 'join now'),
(495, 96, '_f_top_btn_text', 'field_593801307b783'),
(496, 96, 'f_top_btn_url', 'http://tapgerine-test.thegustoapp.com/second-page?1'),
(497, 96, '_f_top_btn_url', 'field_5938014c7b784'),
(498, 96, 'f_second_bgcolor', '#fd8102'),
(499, 96, '_f_second_bgcolor', 'field_5939040f040a5'),
(500, 96, 'f_second_banneer_img', '41'),
(501, 96, '_f_second_banneer_img', 'field_59390438fca95'),
(502, 96, 'f_second_banner_url', 'http://tapgerine-test.thegustoapp.com/second-page?2'),
(503, 96, '_f_second_banner_url', 'field_593a9b37f0890'),
(504, 97, 'f_top_background', '35'),
(505, 97, '_f_top_background', 'field_5938018d3f628'),
(506, 97, 'f_top_description', 'convert your traffic into cash'),
(507, 97, '_f_top_description', 'field_593800f37b781'),
(508, 97, 'f_top_btn_text', 'join now'),
(509, 97, '_f_top_btn_text', 'field_593801307b783'),
(510, 97, 'f_top_btn_url', 'http://tapgerine-test.thegustoapp.com/second-page?banner=1'),
(511, 97, '_f_top_btn_url', 'field_5938014c7b784'),
(512, 97, 'f_second_bgcolor', '#fd8102'),
(513, 97, '_f_second_bgcolor', 'field_5939040f040a5'),
(514, 97, 'f_second_banneer_img', '41'),
(515, 97, '_f_second_banneer_img', 'field_59390438fca95'),
(516, 97, 'f_second_banner_url', 'http://tapgerine-test.thegustoapp.com/second-page?banner=2'),
(517, 97, '_f_second_banner_url', 'field_593a9b37f0890'),
(518, 43, 's_top_description_visited', 'Спасибо, что были с нами'),
(519, 43, '_s_top_description_visited', 'field_593bd5e2ce735'),
(520, 99, 's_background_video_mp4', '59'),
(521, 99, '_s_background_video_mp4', 'field_59390fb241984'),
(522, 99, 's_background_video_webm', '60'),
(523, 99, '_s_background_video_webm', 'field_59390ff841985'),
(524, 99, 's_background_video_ogv', '61'),
(525, 99, '_s_background_video_ogv', 'field_5939102041986'),
(526, 99, 's_top_background_img', '62'),
(527, 99, '_s_top_background_img', 'field_5939107319741'),
(528, 99, 's_top_logo', '63'),
(529, 99, '_s_top_logo', 'field_593913171ae7d'),
(530, 99, 's_top_description', 'Ищешь лучший способ монетизации CPA трафика?'),
(531, 99, '_s_top_description', 'field_593913331ae7e'),
(532, 99, 's_top_button_text', 'регистрация'),
(533, 99, '_s_top_button_text', 'field_593913581ae7f'),
(534, 99, 's_about_title', 'о нас'),
(535, 99, '_s_about_title', 'field_59395c1b01350'),
(536, 99, 's_about_description', 'Tapgerine — международная рекламная компания, занимающаяся продвижением мобильных приложений, а также созданием наиболее эффективных инструментов для монетизации мобильного трафика. Используя собственные технологические разработки, мы реализовываем медиа-стратегии клиентов, привлекая только лояльных пользователей. Мы применяем современные методы анализа данных и алгоритмы машинного обучения для увеличения конверсии ваших рекламных кампаний.'),
(537, 99, '_s_about_description', 'field_59395c3201351'),
(538, 99, 's_about_achievements_0_s_about_achievements_title', '4K+'),
(539, 99, '_s_about_achievements_0_s_about_achievements_title', 'field_59395db301353'),
(540, 99, 's_about_achievements_0_s_about_achievements_excerpt', 'мобильных партнеров'),
(541, 99, '_s_about_achievements_0_s_about_achievements_excerpt', 'field_59395dd001354'),
(542, 99, 's_about_achievements_1_s_about_achievements_title', '2K+'),
(543, 99, '_s_about_achievements_1_s_about_achievements_title', 'field_59395db301353'),
(544, 99, 's_about_achievements_1_s_about_achievements_excerpt', 'рекламных компаний'),
(545, 99, '_s_about_achievements_1_s_about_achievements_excerpt', 'field_59395dd001354'),
(546, 99, 's_about_achievements_2_s_about_achievements_title', '6М+'),
(547, 99, '_s_about_achievements_2_s_about_achievements_title', 'field_59395db301353'),
(548, 99, 's_about_achievements_2_s_about_achievements_excerpt', 'загрузок приложений') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(549, 99, '_s_about_achievements_2_s_about_achievements_excerpt', 'field_59395dd001354'),
(550, 99, 's_about_achievements', '3'),
(551, 99, '_s_about_achievements', 'field_59395d6001352'),
(552, 99, 's_about_description_extra', 'Мы предлагаем огромное разнообразие программных решений для успешной монетизации каждого клика партнера. Зарегистрируйтесь в партнерской программе Tapgerine и начинайте зарабатывать прямо сейчас!'),
(553, 99, '_s_about_description_extra', 'field_59395dfa01355'),
(554, 99, 's_about_description_more_text', 'подробнее'),
(555, 99, '_s_about_description_more_text', 'field_59395e5d01356'),
(556, 99, 's_products_title', 'наши продукты'),
(557, 99, '_s_products_title', 'field_5939b2c644d74'),
(558, 99, 's_product_products_0_s_product_products_icon', '89'),
(559, 99, '_s_product_products_0_s_product_products_icon', 'field_5939b3ec44d76'),
(560, 99, 's_product_products_0_s_product_products_excerpt', 'Эффективное решение для вашего бизнеса'),
(561, 99, '_s_product_products_0_s_product_products_excerpt', 'field_5939b44344d77'),
(562, 99, 's_product_products_0_s_product_products_name', 'Tapgerine Ad Platform.'),
(563, 99, '_s_product_products_0_s_product_products_name', 'field_5939b45344d78'),
(564, 99, 's_product_products_0_s_product_products_extra_excerpt', 'Партнерская программа для привлечения пользователей мобильных приложений и лидогенерации.'),
(565, 99, '_s_product_products_0_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(566, 99, 's_product_products_0_s_product_products_more', 'подробнее'),
(567, 99, '_s_product_products_0_s_product_products_more', 'field_5939b4b644d7a'),
(568, 99, 's_product_products_1_s_product_products_icon', '90'),
(569, 99, '_s_product_products_1_s_product_products_icon', 'field_5939b3ec44d76'),
(570, 99, 's_product_products_1_s_product_products_excerpt', 'Значимость каждого клика с'),
(571, 99, '_s_product_products_1_s_product_products_excerpt', 'field_5939b44344d77'),
(572, 99, 's_product_products_1_s_product_products_name', 'Superlink.'),
(573, 99, '_s_product_products_1_s_product_products_name', 'field_5939b45344d78'),
(574, 99, 's_product_products_1_s_product_products_extra_excerpt', 'Комплексное решение  по монетизации остаточного трафика для  увеличения ваших доходов.'),
(575, 99, '_s_product_products_1_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(576, 99, 's_product_products_1_s_product_products_more', 'подробнее'),
(577, 99, '_s_product_products_1_s_product_products_more', 'field_5939b4b644d7a'),
(578, 99, 's_product_products_2_s_product_products_icon', '91'),
(579, 99, '_s_product_products_2_s_product_products_icon', 'field_5939b3ec44d76'),
(580, 99, 's_product_products_2_s_product_products_excerpt', 'Разнообразие инструментов для монетизации мобильного  трафика: от'),
(581, 99, '_s_product_products_2_s_product_products_excerpt', 'field_5939b44344d77'),
(582, 99, 's_product_products_2_s_product_products_name', 'Tapgerine SDK:'),
(583, 99, '_s_product_products_2_s_product_products_name', 'field_5939b45344d78'),
(584, 99, 's_product_products_2_s_product_products_extra_excerpt', 'до индивидуальной системы распределения трафика.'),
(585, 99, '_s_product_products_2_s_product_products_extra_excerpt', 'field_5939b46844d79'),
(586, 99, 's_product_products_2_s_product_products_more', 'подробнее'),
(587, 99, '_s_product_products_2_s_product_products_more', 'field_5939b4b644d7a'),
(588, 99, 's_product_products', '3'),
(589, 99, '_s_product_products', 'field_5939b2f544d75'),
(590, 99, 's_top_description_visited', 'Спасибо, что были с нами'),
(591, 99, '_s_top_description_visited', 'field_593bd5e2ce735') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-07 08:48:37', '2017-06-07 08:48:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-06-07 08:48:37', '2017-06-07 08:48:37', '', 0, 'http://tapgerine-test.thegustoapp.com/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-07 08:48:37', '2017-06-07 08:48:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://tapgerine-test.thegustoapp.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-06-07 09:45:00', '2017-06-07 09:45:00', '', 0, 'http://tapgerine-test.thegustoapp.com/?page_id=2', 0, 'page', '', 0),
(7, 1, '2017-06-07 09:22:39', '2017-06-07 09:22:39', '', 'Second Page', '', 'trash', 'closed', 'closed', '', 'second-page__trashed', '', '', '2017-06-07 09:44:58', '2017-06-07 09:44:58', '', 0, 'http://tapgerine-test.thegustoapp.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-06-07 09:22:39', '2017-06-07 09:22:39', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-06-07 09:22:39', '2017-06-07 09:22:39', '', 7, 'http://tapgerine-test.thegustoapp.com/2017/06/07/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-06-07 09:45:00', '2017-06-07 09:45:00', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://tapgerine-test.thegustoapp.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-07 09:45:00', '2017-06-07 09:45:00', '', 2, 'http://tapgerine-test.thegustoapp.com/2017/06/07/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-06-07 09:45:24', '2017-06-07 09:45:24', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2017-06-08 08:27:25', '2017-06-08 08:27:25', '', 0, 'http://tapgerine-test.thegustoapp.com/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-06-07 09:45:24', '2017-06-07 09:45:24', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-07 09:45:24', '2017-06-07 09:45:24', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/07/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-06-07 11:46:03', '2017-06-07 11:46:03', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:13:"home_page.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'PT: Home_Page', 'pt-home_page', 'publish', 'closed', 'closed', '', 'group_5937e75a0ed42', '', '', '2017-06-07 11:48:58', '2017-06-07 11:48:58', '', 0, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2017-06-07 11:48:57', '2017-06-07 11:48:57', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Page Background', 'h_background', 'publish', 'closed', 'closed', '', 'field_5937e77c8c213', '', '', '2017-06-07 11:48:57', '2017-06-07 11:48:57', '', 12, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=13', 0, 'acf-field', '', 0),
(14, 1, '2017-06-07 11:48:57', '2017-06-07 11:48:57', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'First Page URL', 'h_first_page_url', 'publish', 'closed', 'closed', '', 'field_5937e7b88c214', '', '', '2017-06-07 11:48:57', '2017-06-07 11:48:57', '', 12, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=14', 1, 'acf-field', '', 0),
(15, 1, '2017-06-07 11:48:58', '2017-06-07 11:48:58', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Second Page URL', 'h_second_page_url', 'publish', 'closed', 'closed', '', 'field_5937e8028c215', '', '', '2017-06-07 11:48:58', '2017-06-07 11:48:58', '', 12, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=15', 2, 'acf-field', '', 0),
(17, 1, '2017-06-07 11:49:21', '2017-06-07 11:49:21', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-07 11:49:21', '2017-06-07 11:49:21', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/07/10-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-06-07 12:39:26', '2017-06-07 12:39:26', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-07 12:39:26', '2017-06-07 12:39:26', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/07/10-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-06-07 12:41:00', '2017-06-07 12:41:00', '', 'home_background', '', 'inherit', 'open', 'closed', '', 'home_background', '', '', '2017-06-07 12:41:02', '2017-06-07 12:41:02', '', 10, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/home_background.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-06-07 12:41:04', '2017-06-07 12:41:04', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-07 12:41:04', '2017-06-07 12:41:04', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/07/10-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-06-07 13:20:02', '2017-06-07 13:20:02', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:18:"acf-options-header";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'OP: Header', 'op-header', 'publish', 'closed', 'closed', '', 'group_5937fd668cc8b', '', '', '2017-06-08 13:14:54', '2017-06-08 13:14:54', '', 0, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2017-06-07 13:23:17', '2017-06-07 13:23:17', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Top Logo', 'top_logo', 'publish', 'closed', 'closed', '', 'field_5937fd835faba', '', '', '2017-06-07 13:23:17', '2017-06-07 13:23:17', '', 22, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2017-06-07 13:23:31', '2017-06-07 13:23:31', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-06-07 13:23:32', '2017-06-07 13:23:32', '', 0, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/logo.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2017-06-07 13:30:29', '2017-06-07 13:30:29', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:14:"first_page.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'PT: First_Page', 'pt-first_page', 'publish', 'closed', 'closed', '', 'group_5937ffde9fdbd', '', '', '2017-06-09 12:58:17', '2017-06-09 12:58:17', '', 0, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2017-06-07 13:31:48', '2017-06-07 13:31:48', '', 'First Page', '', 'publish', 'closed', 'closed', '', 'first-page', '', '', '2017-06-09 13:53:03', '2017-06-09 13:53:03', '', 0, 'http://tapgerine-test.thegustoapp.com/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-06-07 13:31:48', '2017-06-07 13:31:48', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-07 13:31:48', '2017-06-07 13:31:48', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/07/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-06-07 13:33:30', '2017-06-07 13:33:30', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-07 13:33:30', '2017-06-07 13:33:30', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/07/10-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-06-07 13:33:59', '2017-06-07 13:33:59', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-07 13:33:59', '2017-06-07 13:33:59', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/07/10-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-06-07 13:36:57', '2017-06-07 13:36:57', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'First Banner', '', 'publish', 'closed', 'closed', '', 'field_593801127b782', '', '', '2017-06-07 13:36:57', '2017-06-07 13:36:57', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2017-06-07 13:36:57', '2017-06-07 13:36:57', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Description', 'f_top_description', 'publish', 'closed', 'closed', '', 'field_593800f37b781', '', '', '2017-06-08 07:44:40', '2017-06-08 07:44:40', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=31', 2, 'acf-field', '', 0),
(32, 1, '2017-06-07 13:36:57', '2017-06-07 13:36:57', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button Text', 'f_top_btn_text', 'publish', 'closed', 'closed', '', 'field_593801307b783', '', '', '2017-06-07 13:37:57', '2017-06-07 13:37:57', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=32', 3, 'acf-field', '', 0),
(33, 1, '2017-06-07 13:36:57', '2017-06-07 13:36:57', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Button URL', 'f_top_btn_url', 'publish', 'closed', 'closed', '', 'field_5938014c7b784', '', '', '2017-06-07 13:37:57', '2017-06-07 13:37:57', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=33', 4, 'acf-field', '', 0),
(34, 1, '2017-06-07 13:37:57', '2017-06-07 13:37:57', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Section Background Image', 'f_top_background', 'publish', 'closed', 'closed', '', 'field_5938018d3f628', '', '', '2017-06-07 13:37:57', '2017-06-07 13:37:57', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2017-06-07 13:40:14', '2017-06-07 13:40:14', '', 'f_top_background', '', 'inherit', 'open', 'closed', '', 'f_top_background', '', '', '2017-06-07 13:40:15', '2017-06-07 13:40:15', '', 26, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/f_top_background.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2017-06-07 13:40:18', '2017-06-07 13:40:18', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-07 13:40:18', '2017-06-07 13:40:18', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/07/26-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-06-07 13:40:52', '2017-06-07 13:40:52', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-07 13:40:52', '2017-06-07 13:40:52', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/07/26-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-06-08 08:00:54', '2017-06-08 08:00:54', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Second Banner', '', 'publish', 'closed', 'closed', '', 'field_593903fc040a4', '', '', '2017-06-08 08:00:54', '2017-06-08 08:00:54', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=38', 5, 'acf-field', '', 0),
(39, 1, '2017-06-08 08:00:54', '2017-06-08 08:00:54', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Section Background Color', 'f_second_bgcolor', 'publish', 'closed', 'closed', '', 'field_5939040f040a5', '', '', '2017-06-08 08:00:54', '2017-06-08 08:00:54', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=39', 6, 'acf-field', '', 0),
(40, 1, '2017-06-08 08:01:22', '2017-06-08 08:01:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Banner Image', 'f_second_banneer_img', 'publish', 'closed', 'closed', '', 'field_59390438fca95', '', '', '2017-06-08 08:01:22', '2017-06-08 08:01:22', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=40', 7, 'acf-field', '', 0),
(41, 1, '2017-06-08 08:02:30', '2017-06-08 08:02:30', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2017-06-08 08:02:33', '2017-06-08 08:02:33', '', 26, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-06-08 08:02:36', '2017-06-08 08:02:36', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-08 08:02:36', '2017-06-08 08:02:36', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/08/26-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-06-08 08:24:31', '2017-06-08 08:24:31', '', 'Second Page', '', 'publish', 'closed', 'closed', '', 'second-page', '', '', '2017-06-10 11:22:19', '2017-06-10 11:22:19', '', 0, 'http://tapgerine-test.thegustoapp.com/?page_id=43', 0, 'page', '', 0),
(44, 1, '2017-06-08 08:24:31', '2017-06-08 08:24:31', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-08 08:24:31', '2017-06-08 08:24:31', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/08/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-06-08 08:24:55', '2017-06-08 08:24:55', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:15:"second_page.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'PT: Second_Page', 'pt-second_page', 'publish', 'closed', 'closed', '', 'group_593909c7e2e66', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 0, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2017-06-08 08:27:25', '2017-06-08 08:27:25', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-08 08:27:25', '2017-06-08 08:27:25', '', 10, 'http://tapgerine-test.thegustoapp.com/2017/06/08/10-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-06-08 08:52:45', '2017-06-08 08:52:45', 'a:10:{s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:8:"min_size";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Video Background (.mp4)', 's_background_video_mp4', 'publish', 'closed', 'closed', '', 'field_59390fb241984', '', '', '2017-06-08 08:54:05', '2017-06-08 08:54:05', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2017-06-08 08:52:45', '2017-06-08 08:52:45', 'a:10:{s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:8:"min_size";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Video Background (.webm)', 's_background_video_webm', 'publish', 'closed', 'closed', '', 'field_59390ff841985', '', '', '2017-06-08 08:54:05', '2017-06-08 08:54:05', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=52', 2, 'acf-field', '', 0),
(53, 1, '2017-06-08 08:52:45', '2017-06-08 08:52:45', 'a:10:{s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:8:"min_size";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Video Background (.ogv)', 's_background_video_ogv', 'publish', 'closed', 'closed', '', 'field_5939102041986', '', '', '2017-06-08 08:54:05', '2017-06-08 08:54:05', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=53', 3, 'acf-field', '', 0),
(54, 1, '2017-06-08 08:54:05', '2017-06-08 08:54:05', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Top Section', '', 'publish', 'closed', 'closed', '', 'field_5939106419740', '', '', '2017-06-08 08:54:05', '2017-06-08 08:54:05', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2017-06-08 08:54:05', '2017-06-08 08:54:05', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Background Image For Mobile Devices', 's_top_background_img', 'publish', 'closed', 'closed', '', 'field_5939107319741', '', '', '2017-06-08 08:54:05', '2017-06-08 08:54:05', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=55', 4, 'acf-field', '', 0),
(56, 1, '2017-06-08 09:05:47', '2017-06-08 09:05:47', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo Icon', 's_top_logo', 'publish', 'closed', 'closed', '', 'field_593913171ae7d', '', '', '2017-06-08 09:05:47', '2017-06-08 09:05:47', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=56', 5, 'acf-field', '', 0),
(57, 1, '2017-06-08 09:05:47', '2017-06-08 09:05:47', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Description Text', 's_top_description', 'publish', 'closed', 'closed', '', 'field_593913331ae7e', '', '', '2017-06-08 09:05:47', '2017-06-08 09:05:47', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=57', 6, 'acf-field', '', 0),
(58, 1, '2017-06-08 09:05:47', '2017-06-08 09:05:47', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button Text', 's_top_button_text', 'publish', 'closed', 'closed', '', 'field_593913581ae7f', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=58', 8, 'acf-field', '', 0),
(59, 1, '2017-06-08 09:06:12', '2017-06-08 09:06:12', '', 'shutterstock v12707153', '', 'inherit', 'open', 'closed', '', 'shutterstock-v12707153', '', '', '2017-06-08 09:06:12', '2017-06-08 09:06:12', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/shutterstock-v12707153.mp4', 0, 'attachment', 'video/mp4', 0),
(60, 1, '2017-06-08 09:06:23', '2017-06-08 09:06:23', '', 'shutterstock_v12707153', '', 'inherit', 'open', 'closed', '', 'shutterstock_v12707153', '', '', '2017-06-08 09:06:23', '2017-06-08 09:06:23', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/shutterstock_v12707153.webm', 0, 'attachment', 'video/webm', 0),
(61, 1, '2017-06-08 09:06:35', '2017-06-08 09:06:35', '', 'shutterstock_v12707153', '', 'inherit', 'open', 'closed', '', 'shutterstock_v12707153-2', '', '', '2017-06-08 09:06:35', '2017-06-08 09:06:35', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/shutterstock_v12707153.ogv', 0, 'attachment', 'video/ogg', 0),
(62, 1, '2017-06-08 09:07:08', '2017-06-08 09:07:08', '', 'video_banner', '', 'inherit', 'open', 'closed', '', 'video_banner', '', '', '2017-06-08 09:07:10', '2017-06-08 09:07:10', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/video_banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2017-06-08 09:07:18', '2017-06-08 09:07:18', '', 's_top_section_logo', '', 'inherit', 'open', 'closed', '', 's_top_section_logo', '', '', '2017-06-08 09:07:20', '2017-06-08 09:07:20', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/s_top_section_logo.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2017-06-08 09:08:09', '2017-06-08 09:08:09', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-08 09:08:09', '2017-06-08 09:08:09', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/08/43-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-06-08 10:25:26', '2017-06-08 10:25:26', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Log In Button Text', 'log_in_text', 'publish', 'closed', 'closed', '', 'field_59392600173d3', '', '', '2017-06-08 13:14:54', '2017-06-08 13:14:54', '', 22, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=65', 2, 'acf-field', '', 0),
(66, 1, '2017-06-08 12:28:47', '2017-06-08 12:28:47', '', 'о нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2017-06-08 12:32:39', '2017-06-08 12:32:39', '', 0, 'http://tapgerine-test.thegustoapp.com/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2017-06-08 12:28:47', '2017-06-08 12:28:47', '', 'наши продукты', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%88%d0%b8-%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%82%d1%8b', '', '', '2017-06-08 12:32:39', '2017-06-08 12:32:39', '', 0, 'http://tapgerine-test.thegustoapp.com/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2017-06-08 13:14:54', '2017-06-08 13:14:54', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Top Logo Alternative', 'top_logo_alt', 'publish', 'closed', 'closed', '', 'field_59394da93ef02', '', '', '2017-06-08 13:14:54', '2017-06-08 13:14:54', '', 22, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 1, '2017-06-08 13:15:56', '2017-06-08 13:15:56', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2017-06-08 13:15:59', '2017-06-08 13:15:59', '', 0, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/logo2.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'About Section', '', 'publish', 'closed', 'closed', '', 'field_59395c010134f', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=70', 9, 'acf-field', '', 0),
(71, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Section Title', 's_about_title', 'publish', 'closed', 'closed', '', 'field_59395c1b01350', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=71', 10, 'acf-field', '', 0),
(72, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Description', 's_about_description', 'publish', 'closed', 'closed', '', 'field_59395c3201351', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=72', 11, 'acf-field', '', 0),
(73, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Achievements', 's_about_achievements', 'publish', 'closed', 'closed', '', 'field_59395d6001352', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=73', 12, 'acf-field', '', 0),
(74, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 's_about_achievements_title', 'publish', 'closed', 'closed', '', 'field_59395db301353', '', '', '2017-06-08 14:26:21', '2017-06-08 14:26:21', '', 73, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Excerpt', 's_about_achievements_excerpt', 'publish', 'closed', 'closed', '', 'field_59395dd001354', '', '', '2017-06-08 14:26:21', '2017-06-08 14:26:21', '', 73, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Extra Description', 's_about_description_extra', 'publish', 'closed', 'closed', '', 'field_59395dfa01355', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=76', 13, 'acf-field', '', 0),
(77, 1, '2017-06-08 14:26:21', '2017-06-08 14:26:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'View More Button Text', 's_about_description_more_text', 'publish', 'closed', 'closed', '', 'field_59395e5d01356', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=77', 14, 'acf-field', '', 0),
(78, 1, '2017-06-08 14:35:18', '2017-06-08 14:35:18', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-08 14:35:18', '2017-06-08 14:35:18', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/08/43-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-06-08 14:35:56', '2017-06-08 14:35:56', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-08 14:35:56', '2017-06-08 14:35:56', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/08/43-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-06-08 15:14:39', '2017-06-08 15:14:39', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-08 15:14:39', '2017-06-08 15:14:39', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/08/43-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Our Products Section', '', 'publish', 'closed', 'closed', '', 'field_5939b2a444d73', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=81', 15, 'acf-field', '', 0),
(82, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Ection Title', 's_products_title', 'publish', 'closed', 'closed', '', 'field_5939b2c644d74', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=82', 16, 'acf-field', '', 0),
(83, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"block";s:12:"button_label";s:0:"";}', 'Products', 's_product_products', 'publish', 'closed', 'closed', '', 'field_5939b2f544d75', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&#038;p=83', 17, 'acf-field', '', 0),
(84, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Product Icon', 's_product_products_icon', 'publish', 'closed', 'closed', '', 'field_5939b3ec44d76', '', '', '2017-06-08 20:35:08', '2017-06-08 20:35:08', '', 83, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Excerpt', 's_product_products_excerpt', 'publish', 'closed', 'closed', '', 'field_5939b44344d77', '', '', '2017-06-08 20:35:08', '2017-06-08 20:35:08', '', 83, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Product Name', 's_product_products_name', 'publish', 'closed', 'closed', '', 'field_5939b45344d78', '', '', '2017-06-08 20:35:08', '2017-06-08 20:35:08', '', 83, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Extra Excerpt', 's_product_products_extra_excerpt', 'publish', 'closed', 'closed', '', 'field_5939b46844d79', '', '', '2017-06-08 20:35:08', '2017-06-08 20:35:08', '', 83, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=87', 3, 'acf-field', '', 0),
(88, 1, '2017-06-08 20:35:08', '2017-06-08 20:35:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'View More Button Text', 's_product_products_more', 'publish', 'closed', 'closed', '', 'field_5939b4b644d7a', '', '', '2017-06-08 20:35:08', '2017-06-08 20:35:08', '', 83, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=88', 4, 'acf-field', '', 0),
(89, 1, '2017-06-08 20:44:26', '2017-06-08 20:44:26', '', 'telephone', '', 'inherit', 'open', 'closed', '', 'telephone', '', '', '2017-06-08 20:44:26', '2017-06-08 20:44:26', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/telephone.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2017-06-08 20:45:20', '2017-06-08 20:45:20', '', 'box', '', 'inherit', 'open', 'closed', '', 'box', '', '', '2017-06-08 20:45:20', '2017-06-08 20:45:20', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/box.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2017-06-08 20:46:01', '2017-06-08 20:46:01', '', 'bag-of-money', '', 'inherit', 'open', 'closed', '', 'bag-of-money', '', '', '2017-06-08 20:46:01', '2017-06-08 20:46:01', '', 43, 'http://tapgerine-test.thegustoapp.com/wp-content/uploads/2017/06/bag-of-money.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2017-06-08 20:47:05', '2017-06-08 20:47:05', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-08 20:47:05', '2017-06-08 20:47:05', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/08/43-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-06-09 12:57:03', '2017-06-09 12:57:03', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-09 12:57:03', '2017-06-09 12:57:03', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/09/26-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-06-09 12:58:17', '2017-06-09 12:58:17', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Banner URL', 'f_second_banner_url', 'publish', 'closed', 'closed', '', 'field_593a9b37f0890', '', '', '2017-06-09 12:58:17', '2017-06-09 12:58:17', '', 25, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=94', 8, 'acf-field', '', 0),
(95, 1, '2017-06-09 12:58:46', '2017-06-09 12:58:46', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-09 12:58:46', '2017-06-09 12:58:46', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/09/26-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-06-09 13:02:17', '2017-06-09 13:02:17', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-09 13:02:17', '2017-06-09 13:02:17', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/09/26-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-06-09 13:53:03', '2017-06-09 13:53:03', '', 'First Page', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-06-09 13:53:03', '2017-06-09 13:53:03', '', 26, 'http://tapgerine-test.thegustoapp.com/2017/06/09/26-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-06-10 11:21:36', '2017-06-10 11:21:36', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Description Visited Text', 's_top_description_visited', 'publish', 'closed', 'closed', '', 'field_593bd5e2ce735', '', '', '2017-06-10 11:21:36', '2017-06-10 11:21:36', '', 45, 'http://tapgerine-test.thegustoapp.com/?post_type=acf-field&p=98', 7, 'acf-field', '', 0),
(99, 1, '2017-06-10 11:22:19', '2017-06-10 11:22:19', '', 'Second Page', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-06-10 11:22:19', '2017-06-10 11:22:19', '', 43, 'http://tapgerine-test.thegustoapp.com/2017/06/10/43-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-06-29 14:19:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-29 14:19:45', '0000-00-00 00:00:00', '', 0, 'http://tapgerine-test.thegustoapp.com/?p=100', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(66, 2, 0),
(67, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'odmen'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"c42895abeedef901fa44a1509835aff1965847d11554a875136cb1bde4bc04b7";a:4:{s:10:"expiration";i:1499955585;s:2:"ip";s:14:"85.238.106.225";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1498745985;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '100'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1496836157'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'acf_user_settings', 'a:0:{}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'odmen', '$P$BUZhq3woDEQFr2wFuayndkG4WvuRNi.', 'odmen', 'andbor1rey@gmail.com', '', '2017-06-07 08:48:37', '', 0, 'odmen') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

