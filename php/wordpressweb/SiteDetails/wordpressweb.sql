-- Wordpress SQL File

-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_wordpressweb_commentmeta`;
CREATE TABLE `wp_wordpressweb_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_wordpressweb_comments`;
CREATE TABLE `wp_wordpressweb_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1,  'A WordPress Commenter',  'wapuu@wordpress.example',  'https://wordpress.org/', '', '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0,  '1',  '', 'comment',  0,  0);

DROP TABLE IF EXISTS `wp_wordpressweb_links`;
CREATE TABLE `wp_wordpressweb_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_wordpressweb_options`;
CREATE TABLE `wp_wordpressweb_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl',  'http://127.0.0.1/learnings/programs/php/wordpressweb/',  'yes'),
(2, 'home', 'http://127.0.0.1/learnings/programs/php/wordpressweb/',  'yes'),
(3, 'blogname', 'Wordpress Web',  'yes'),
(4, 'blogdescription',  'Just Start To Develop WordPress sites',  'yes'),
(5, 'users_can_register', '0',  'yes'),
(6, 'admin_email',  'developerfarazhashmi@yahoo.com', 'yes'),
(7, 'start_of_week',  '1',  'yes'),
(8, 'use_balanceTags',  '0',  'yes'),
(9, 'use_smilies',  '1',  'yes'),
(10,  'require_name_email', '1',  'yes'),
(11,  'comments_notify',  '1',  'yes'),
(12,  'posts_per_rss',  '10', 'yes'),
(13,  'rss_use_excerpt',  '0',  'yes'),
(14,  'mailserver_url', 'mail.example.com', 'yes'),
(15,  'mailserver_login', 'login@example.com',  'yes'),
(16,  'mailserver_pass',  'password', 'yes'),
(17,  'mailserver_port',  '110',  'yes'),
(18,  'default_category', '1',  'yes'),
(19,  'default_comment_status', 'open', 'yes'),
(20,  'default_ping_status',  'open', 'yes'),
(21,  'default_pingback_flag',  '1',  'yes'),
(22,  'posts_per_page', '10', 'yes'),
(23,  'date_format',  'F j, Y', 'yes'),
(24,  'time_format',  'g:i a',  'yes'),
(25,  'links_updated_date_format',  'F j, Y g:i a', 'yes'),
(26,  'comment_moderation', '0',  'yes'),
(27,  'moderation_notify',  '1',  'yes'),
(28,  'permalink_structure',  '', 'yes'),
(29,  'rewrite_rules',  '', 'yes'),
(30,  'hack_file',  '0',  'yes'),
(31,  'blog_charset', 'UTF-8',  'yes'),
(32,  'moderation_keys',  '', 'no'),
(33,  'active_plugins', 'a:0:{}', 'yes'),
(34,  'category_base',  '', 'yes'),
(35,  'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36,  'comment_max_links',  '2',  'yes'),
(37,  'gmt_offset', '0',  'yes'),
(38,  'default_email_category', '1',  'yes'),
(39,  'recently_edited',  '', 'no'),
(40,  'template', 'bonativo', 'yes'),
(41,  'stylesheet', 'bonativo', 'yes'),
(42,  'comment_registration', '0',  'yes'),
(43,  'html_type',  'text/html',  'yes'),
(44,  'use_trackback',  '0',  'yes'),
(45,  'default_role', 'subscriber', 'yes'),
(46,  'db_version', '49752',  'yes'),
(47,  'uploads_use_yearmonth_folders',  '1',  'yes'),
(48,  'upload_path',  '', 'yes'),
(49,  'blog_public',  '1',  'yes'),
(50,  'default_link_category',  '2',  'yes'),
(51,  'show_on_front',  'posts',  'yes'),
(52,  'tag_base', '', 'yes'),
(53,  'show_avatars', '1',  'yes'),
(54,  'avatar_rating',  'G',  'yes'),
(55,  'upload_url_path',  '', 'yes'),
(56,  'thumbnail_size_w', '150',  'yes'),
(57,  'thumbnail_size_h', '150',  'yes'),
(58,  'thumbnail_crop', '1',  'yes'),
(59,  'medium_size_w',  '300',  'yes'),
(60,  'medium_size_h',  '300',  'yes'),
(61,  'avatar_default', 'mystery',  'yes'),
(62,  'large_size_w', '1024', 'yes'),
(63,  'large_size_h', '1024', 'yes'),
(64,  'image_default_link_type',  'none', 'yes'),
(65,  'image_default_size', '', 'yes'),
(66,  'image_default_align',  '', 'yes'),
(67,  'close_comments_for_old_posts', '0',  'yes'),
(68,  'close_comments_days_old',  '14', 'yes'),
(69,  'thread_comments',  '1',  'yes'),
(70,  'thread_comments_depth',  '5',  'yes'),
(71,  'page_comments',  '0',  'yes'),
(72,  'comments_per_page',  '50', 'yes'),
(73,  'default_comments_page',  'newest', 'yes'),
(74,  'comment_order',  'asc',  'yes'),
(75,  'sticky_posts', 'a:0:{}', 'yes'),
(76,  'widget_categories',  'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77,  'widget_text',  'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78,  'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79,  'uninstall_plugins',  'a:0:{}', 'no'),
(80,  'timezone_string',  '', 'yes'),
(81,  'page_for_posts', '0',  'yes'),
(82,  'page_on_front',  '0',  'yes'),
(83,  'default_post_format',  '0',  'yes'),
(84,  'link_manager_enabled', '0',  'yes'),
(85,  'finished_splitting_shared_terms',  '1',  'yes'),
(86,  'site_icon',  '0',  'yes'),
(87,  'medium_large_size_w',  '768',  'yes'),
(88,  'medium_large_size_h',  '0',  'yes'),
(89,  'wp_page_for_privacy_policy', '3',  'yes'),
(90,  'show_comments_cookies_opt_in', '1',  'yes'),
(91,  'admin_email_lifespan', '1643631548', 'yes'),
(92,  'disallowed_keys',  '', 'no'),
(93,  'comment_previously_approved',  '1',  'yes'),
(94,  'auto_plugin_theme_update_emails',  'a:0:{}', 'no'),
(95,  'auto_update_core_dev', 'enabled',  'yes'),
(96,  'auto_update_core_minor', 'enabled',  'yes'),
(97,  'auto_update_core_major', 'enabled',  'yes'),
(98,  'initial_db_version', '49752',  'yes'),
(99,  'wp_wordpressweb_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',  'yes'),
(100, 'fresh_site', '0',  'yes'),
(101, 'widget_search',  'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',  'yes'),
(102, 'widget_recent-posts',  'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives',  'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta',  'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',  'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',  'yes'),
(107, 'cron', 'a:8:{i:1628867973;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1628900373;a:3:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1628900374;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1628943571;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628943752;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628943759;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1629375571;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar',  'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key',  'QC,>p:AlN[D~/;6sl(_2mqj~5m;D<oqTID7Uay8!M *#vX,b4b{j_(cek00q`6[y', 'no'),
(115, 'nonce_salt', '{|^Wkv~Fzphz-^OPtt@B,Kgt9~}5Qg{*aYN?0k_4l;<KqOc+3FWMc{OJa!9FDoxv', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu',  'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys',  'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}',  'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1628081281;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(123, '_site_transient_update_core',  'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1628864496;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}',  'no'),
(129, '_site_transient_update_themes',  'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628864502;s:7:\"checked\";a:5:{s:8:\"bonativo\";s:0:\"\";s:24:\"styleHackTwentyTwentyOne\";s:3:\"1.4\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628864502;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:9:\"hello.php\";s:5:\"1.7.2\";}}',  'no'),
(131, 'auth_key', 'w]ya;H*A+p$#I~X!^*388exT*plow45qql;uFGnd ||u^ub<}hx6F$}V;4=<9H]I', 'no'),
(132, 'auth_salt',  '7WO8{TNaxXB5~wY]<bK<S7Vd.95Xhw8}nk~uy@Yptk4sL,H0<m*em(e5@Gj}=j5v', 'no'),
(133, 'logged_in_key',  'Us09[S8S[i=@e_U2[31n*%Uj#c 8c%]j^Lr&1)Hd6eN.zdH5ZW{Eg=|y,`7uY|NH', 'no'),
(134, 'logged_in_salt', 'DJ3Mni,;y7*UVL4$+L&P`(%LKT#3b:(x{.Yb|%%A5GUAQ<~GEuFAb)NFpDzQe>mF', 'no'),
(141, 'can_compress_scripts', '0',  'no'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'finished_updating_comment_type', '1',  'yes'),
(161, 'WPLANG', '', 'yes'),
(162, 'new_admin_email',  'developerfarazhashmi@yahoo.com', 'yes'),
(165, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(167, 'current_theme',  'Bonativo', 'yes'),
(168, 'theme_mods_bonativo',  'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:12:\"primary_menu\";i:2;s:14:\"secondary_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:87:\"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:23;s:3:\"url\";s:87:\"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png\";s:13:\"thumbnail_url\";s:87:\"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png\";s:6:\"height\";i:1600;s:5:\"width\";i:1600;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1628259525;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:16:\"background_image\";s:98:\"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/pakistan-flag_wallpaper-371566.png\";s:17:\"background_preset\";s:4:\"fill\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";}',  'yes'),
(169, 'theme_switched', '', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}',  'yes'),
(198, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(210, 'theme_mods_styleHackTwentyTwentyOne',  'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1628679488;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}',  'yes'),
(211, 'recovery_mode_email_last_sent',  '1628259526', 'yes'),
(236, 'category_children',  'a:0:{}', 'yes'),
(240, '_site_transient_timeout_browser_7eb58c7166c36d2a167da3ac5db9e9b2', '1629289682', 'no'),
(241, '_site_transient_browser_7eb58c7166c36d2a167da3ac5db9e9b2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.131\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(242, '_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', '1629289683', 'no'),
(243, '_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(246, '_site_transient_timeout_theme_roots',  '1628866301', 'no'),
(247, '_site_transient_theme_roots',  'a:5:{s:8:\"bonativo\";s:7:\"/themes\";s:24:\"styleHackTwentyTwentyOne\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

DROP TABLE IF EXISTS `wp_wordpressweb_postmeta`;
CREATE TABLE `wp_wordpressweb_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2,  '_wp_page_template',  'default'),
(2, 3,  '_wp_page_template',  'default'),
(3, 5,  '_menu_item_type',  'custom'),
(4, 5,  '_menu_item_menu_item_parent',  '0'),
(5, 5,  '_menu_item_object_id', '5'),
(6, 5,  '_menu_item_object',  'custom'),
(7, 5,  '_menu_item_target',  ''),
(8, 5,  '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5,  '_menu_item_xfn', ''),
(10,  5,  '_menu_item_url', 'http://hashmiwebsol/php/wordpressweb/'),
(12,  6,  '_menu_item_type',  'custom'),
(13,  6,  '_menu_item_menu_item_parent',  '0'),
(14,  6,  '_menu_item_object_id', '6'),
(15,  6,  '_menu_item_object',  'custom'),
(16,  6,  '_menu_item_target',  ''),
(17,  6,  '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18,  6,  '_menu_item_xfn', ''),
(19,  6,  '_menu_item_url', 'https://www.facebook.com/'),
(21,  7,  '_menu_item_type',  'custom'),
(22,  7,  '_menu_item_menu_item_parent',  '0'),
(23,  7,  '_menu_item_object_id', '7'),
(24,  7,  '_menu_item_object',  'custom'),
(25,  7,  '_menu_item_target',  ''),
(26,  7,  '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27,  7,  '_menu_item_xfn', ''),
(28,  7,  '_menu_item_url', 'https://twitter.com/'),
(30,  8,  '_menu_item_type',  'custom'),
(31,  8,  '_menu_item_menu_item_parent',  '0'),
(32,  8,  '_menu_item_object_id', '8'),
(33,  8,  '_menu_item_object',  'custom'),
(34,  8,  '_menu_item_target',  ''),
(35,  8,  '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36,  8,  '_menu_item_xfn', ''),
(37,  8,  '_menu_item_url', 'https://www.linkedin.com/'),
(39,  9,  '_edit_lock', '1628162603:1'),
(40,  11, '_edit_lock', '1628679837:1'),
(41,  13, '_edit_lock', '1628162633:1'),
(43,  16, '_edit_lock', '1628162668:1'),
(44,  18, '_menu_item_type',  'post_type'),
(45,  18, '_menu_item_menu_item_parent',  '0'),
(46,  18, '_menu_item_object_id', '16'),
(47,  18, '_menu_item_object',  'page'),
(48,  18, '_menu_item_target',  ''),
(49,  18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50,  18, '_menu_item_xfn', ''),
(51,  18, '_menu_item_url', ''),
(53,  19, '_menu_item_type',  'post_type'),
(54,  19, '_menu_item_menu_item_parent',  '0'),
(55,  19, '_menu_item_object_id', '13'),
(56,  19, '_menu_item_object',  'page'),
(57,  19, '_menu_item_target',  ''),
(58,  19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59,  19, '_menu_item_xfn', ''),
(60,  19, '_menu_item_url', ''),
(62,  20, '_menu_item_type',  'post_type'),
(63,  20, '_menu_item_menu_item_parent',  '0'),
(64,  20, '_menu_item_object_id', '11'),
(65,  20, '_menu_item_object',  'page'),
(66,  20, '_menu_item_target',  ''),
(67,  20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68,  20, '_menu_item_xfn', ''),
(69,  20, '_menu_item_url', ''),
(71,  5,  '_wp_old_date', '2021-08-04'),
(72,  22, '_wp_attached_file',  '2021/08/Screenshot-at-2021-07-26-12-15-49.png'),
(73,  22, '_wp_attachment_metadata',  'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:45:\"2021/08/Screenshot-at-2021-07-26-12-15-49.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"Screenshot-at-2021-07-26-12-15-49-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"Screenshot-at-2021-07-26-12-15-49-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Screenshot-at-2021-07-26-12-15-49-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"Screenshot-at-2021-07-26-12-15-49-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74,  11, '_thumbnail_id',  '22'),
(75,  23, '_wp_attached_file',  '2021/08/logo-websites-31315.png'),
(76,  23, '_wp_attachment_metadata',  'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:4:\"file\";s:31:\"2021/08/logo-websites-31315.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"logo-websites-31315-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"logo-websites-31315-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-websites-31315-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"logo-websites-31315-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"logo-websites-31315-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77,  23, '_wp_attachment_custom_header_last_used_bonativo',  '1628167026'),
(78,  23, '_wp_attachment_is_custom_header',  'bonativo'),
(79,  24, '_wp_trash_meta_status',  'publish'),
(80,  24, '_wp_trash_meta_time',  '1628167027'),
(81,  11, '_wp_page_template',  'temp-about.php'),
(82,  26, '_wp_attached_file',  '2021/08/pakistan-flag_wallpaper-371566.png'),
(83,  26, '_wp_attachment_metadata',  'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:1068;s:4:\"file\";s:42:\"2021/08/pakistan-flag_wallpaper-371566.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"pakistan-flag_wallpaper-371566-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"pakistan-flag_wallpaper-371566-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"pakistan-flag_wallpaper-371566-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"pakistan-flag_wallpaper-371566-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"pakistan-flag_wallpaper-371566-1536x863.png\";s:5:\"width\";i:1536;s:6:\"height\";i:863;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84,  26, '_wp_attachment_image_alt', 'Pakistan Flag'),
(85,  26, '_wp_attachment_is_custom_background',  'bonativo'),
(86,  27, '_wp_trash_meta_status',  'publish'),
(87,  27, '_wp_trash_meta_time',  '1628682929'),
(88,  28, '_wp_trash_meta_status',  'publish'),
(89,  28, '_wp_trash_meta_time',  '1628682938'),
(90,  29, '_wp_trash_meta_status',  'publish'),
(91,  29, '_wp_trash_meta_time',  '1628682942');

DROP TABLE IF EXISTS `wp_wordpressweb_posts`;
CREATE TABLE `wp_wordpressweb_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1,  '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',  'Hello world!', '', 'publish',  'open', 'open', '', 'hello-world',  '', '', '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=1',  0,  'post', '', 1),
(2, 1,  '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://hashmiwebsol/php/wordpressweb/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page',  '', 'publish',  'closed', 'open', '', 'sample-page',  '', '', '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?page_id=2',  0,  'page', '', 0),
(3, 1,  '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://hashmiwebsol/php/wordpressweb.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->',  'Privacy Policy', '', 'draft',  'closed', 'open', '', 'privacy-policy', '', '', '2021-08-04 12:19:28',  '2021-08-04 12:19:28',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?page_id=3',  0,  'page', '', 0),
(5, 1,  '2021-08-05 11:27:51',  '2021-08-04 14:28:31',  '', 'Home', '', 'publish',  'closed', 'closed', '', 'home', '', '', '2021-08-05 11:27:51',  '2021-08-05 11:27:51',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=5',  1,  'nav_menu_item',  '', 0),
(6, 1,  '2021-08-04 15:15:11',  '2021-08-04 15:15:11',  '', 'Facebook', '', 'publish',  'closed', 'closed', '', 'facebook', '', '', '2021-08-04 15:15:11',  '2021-08-04 15:15:11',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=6',  1,  'nav_menu_item',  '', 0),
(7, 1,  '2021-08-04 15:15:12',  '2021-08-04 15:15:12',  '', 'Twitter',  '', 'publish',  'closed', 'closed', '', 'twitter',  '', '', '2021-08-04 15:15:12',  '2021-08-04 15:15:12',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=7',  2,  'nav_menu_item',  '', 0),
(8, 1,  '2021-08-04 15:15:12',  '2021-08-04 15:15:12',  '', 'Linkedin', '', 'publish',  'closed', 'closed', '', 'linkedin', '', '', '2021-08-04 15:15:12',  '2021-08-04 15:15:12',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=8',  3,  'nav_menu_item',  '', 0),
(9, 1,  '2021-08-05 11:25:44',  '2021-08-05 11:25:44',  '', 'Home', '', 'publish',  'closed', 'closed', '', 'home', '', '', '2021-08-05 11:25:44',  '2021-08-05 11:25:44',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?page_id=9',  0,  'page', '', 0),
(10,  1,  '2021-08-05 11:25:44',  '2021-08-05 11:25:44',  '', 'Home', '', 'inherit',  'closed', 'closed', '', '9-revision-v1',  '', '', '2021-08-05 11:25:44',  '2021-08-05 11:25:44',  '', 9,  'http://hashmiwebsol/php/wordpressweb/?p=10', 0,  'revision', '', 0),
(11,  1,  '2021-08-05 11:26:03',  '2021-08-05 11:26:03',  '<!-- wp:paragraph -->\n<p>He heard quiet steps behind him. That didn\'t bode well. Who could be following him this late at night and in this deadbeat part of town? And at this particular moment, just after he pulled off the big time and was making off with the greenbacks. Was there another crook who\'d had the same idea, and was now watching him and waiting for a chance to grab the fruit of his labour? Or did the steps behind him mean that one of many law officers in town was on to him and just waiting to pounce and snap those cuffs on his wrists? He nervously looked all around. Suddenly he saw the alley. Like lightning he darted off to the left and disappeared between the two warehouses almost falling over the bin lying in the middle of the pavement. He tried to nervously tap his way along in the inky darkness and suddenly stiffened: it was a dead-end, he would have to go back the way he had come. The steps got louder and louder, he saw the black outline of a figure coming around the corner. Is this the end of the line? he thought pressing himself back against the wall trying to make himself invisible in the dark, was all that planning and energy wasted? He was dripping with sweat now, cold and wet, he could smell the fear coming off his clothes. Suddenly next to him, with a barely noticeable squeak, a door swung quietly to and fro in the night\'s breeze. Could this be the haven he\'d prayed for? Slowly he slid toward the door, pressing himself more and more into the wall, into the dark, away from his enemy. Would this door save his hide?He heard quiet steps behind him. That didn\'t bode well. Who could be following him this late at night and in this deadbeat part of town? And at this particular moment, just after he pulled off the big time and was making off with the greenbacks. Was there another crook who\'d had the same idea, and was now watching him and waiting for a chance to grab the fruit of his labour? Or did the steps behind him mean that one of many law officers in town was on to him and just waiting to pounce and snap those cuffs on his wrists? He nervously looked all around. Suddenly he saw the alley. Like lightning he darted off to the left and disappeared between the two warehouses almost falling over the bin lying in the middle of the pavement. He tried to nervously tap his way along in the inky darkness and suddenly stiffened: it was a dead-end, he would have to go back the way he had come. The steps got louder and louder, he saw the black outline of a figure coming around the corner. Is this the end of the line? he thought pressing himself back against the wall trying to make himself invisible in the dark, was all that planning and energy wasted? He was dripping with sweat now, cold and wet, he could smell the fear coming off his clothes. Suddenly next to him, with a barely noticeable squeak, a door swung quietly to and fro in the night\'s breeze. Could this be the haven he\'d prayed for? Slowly he slid toward the door, pressing himself more and more into the wall, into the dark, away from his enemy. Would this door save his hide?</p>\n<!-- /wp:paragraph -->', 'About',  '', 'publish',  'closed', 'closed', '', 'about',  '', '', '2021-08-11 11:06:09',  '2021-08-11 11:06:09',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?page_id=11', 0,  'page', '', 0),
(12,  1,  '2021-08-05 11:26:03',  '2021-08-05 11:26:03',  '', 'About',  '', 'inherit',  'closed', 'closed', '', '11-revision-v1', '', '', '2021-08-05 11:26:03',  '2021-08-05 11:26:03',  '', 11, 'http://hashmiwebsol/php/wordpressweb/?p=12', 0,  'revision', '', 0),
(13,  1,  '2021-08-05 11:26:16',  '2021-08-05 11:26:16',  '', 'Services', '', 'publish',  'closed', 'closed', '', 'services', '', '', '2021-08-05 11:26:16',  '2021-08-05 11:26:16',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?page_id=13', 0,  'page', '', 0),
(14,  1,  '2021-08-05 11:26:16',  '2021-08-05 11:26:16',  '', 'Services', '', 'inherit',  'closed', 'closed', '', '13-revision-v1', '', '', '2021-08-05 11:26:16',  '2021-08-05 11:26:16',  '', 13, 'http://hashmiwebsol/php/wordpressweb/?p=14', 0,  'revision', '', 0),
(16,  1,  '2021-08-05 11:26:51',  '2021-08-05 11:26:51',  '', 'Contact',  '', 'publish',  'closed', 'closed', '', 'contact',  '', '', '2021-08-05 11:26:51',  '2021-08-05 11:26:51',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?page_id=16', 0,  'page', '', 0),
(17,  1,  '2021-08-05 11:26:51',  '2021-08-05 11:26:51',  '', 'Contact',  '', 'inherit',  'closed', 'closed', '', '16-revision-v1', '', '', '2021-08-05 11:26:51',  '2021-08-05 11:26:51',  '', 16, 'http://hashmiwebsol/php/wordpressweb/?p=17', 0,  'revision', '', 0),
(18,  1,  '2021-08-05 11:27:51',  '2021-08-05 11:27:51',  ' ',  '', '', 'publish',  'closed', 'closed', '', '18', '', '', '2021-08-05 11:27:51',  '2021-08-05 11:27:51',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=18', 2,  'nav_menu_item',  '', 0),
(19,  1,  '2021-08-05 11:27:52',  '2021-08-05 11:27:52',  ' ',  '', '', 'publish',  'closed', 'closed', '', '19', '', '', '2021-08-05 11:27:52',  '2021-08-05 11:27:52',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=19', 3,  'nav_menu_item',  '', 0),
(20,  1,  '2021-08-05 11:27:53',  '2021-08-05 11:27:53',  ' ',  '', '', 'publish',  'closed', 'closed', '', '20', '', '', '2021-08-05 11:27:53',  '2021-08-05 11:27:53',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=20', 4,  'nav_menu_item',  '', 0),
(21,  1,  '2021-08-05 11:44:20',  '2021-08-05 11:44:20',  '<!-- wp:paragraph -->\n<p>He heard quiet steps behind him. That didn\'t bode well. Who could be following him this late at night and in this deadbeat part of town? And at this particular moment, just after he pulled off the big time and was making off with the greenbacks. Was there another crook who\'d had the same idea, and was now watching him and waiting for a chance to grab the fruit of his labour? Or did the steps behind him mean that one of many law officers in town was on to him and just waiting to pounce and snap those cuffs on his wrists? He nervously looked all around. Suddenly he saw the alley. Like lightning he darted off to the left and disappeared between the two warehouses almost falling over the bin lying in the middle of the pavement. He tried to nervously tap his way along in the inky darkness and suddenly stiffened: it was a dead-end, he would have to go back the way he had come. The steps got louder and louder, he saw the black outline of a figure coming around the corner. Is this the end of the line? he thought pressing himself back against the wall trying to make himself invisible in the dark, was all that planning and energy wasted? He was dripping with sweat now, cold and wet, he could smell the fear coming off his clothes. Suddenly next to him, with a barely noticeable squeak, a door swung quietly to and fro in the night\'s breeze. Could this be the haven he\'d prayed for? Slowly he slid toward the door, pressing himself more and more into the wall, into the dark, away from his enemy. Would this door save his hide?He heard quiet steps behind him. That didn\'t bode well. Who could be following him this late at night and in this deadbeat part of town? And at this particular moment, just after he pulled off the big time and was making off with the greenbacks. Was there another crook who\'d had the same idea, and was now watching him and waiting for a chance to grab the fruit of his labour? Or did the steps behind him mean that one of many law officers in town was on to him and just waiting to pounce and snap those cuffs on his wrists? He nervously looked all around. Suddenly he saw the alley. Like lightning he darted off to the left and disappeared between the two warehouses almost falling over the bin lying in the middle of the pavement. He tried to nervously tap his way along in the inky darkness and suddenly stiffened: it was a dead-end, he would have to go back the way he had come. The steps got louder and louder, he saw the black outline of a figure coming around the corner. Is this the end of the line? he thought pressing himself back against the wall trying to make himself invisible in the dark, was all that planning and energy wasted? He was dripping with sweat now, cold and wet, he could smell the fear coming off his clothes. Suddenly next to him, with a barely noticeable squeak, a door swung quietly to and fro in the night\'s breeze. Could this be the haven he\'d prayed for? Slowly he slid toward the door, pressing himself more and more into the wall, into the dark, away from his enemy. Would this door save his hide?</p>\n<!-- /wp:paragraph -->', 'About',  '', 'inherit',  'closed', 'closed', '', '11-revision-v1', '', '', '2021-08-05 11:44:20',  '2021-08-05 11:44:20',  '', 11, 'http://hashmiwebsol/php/wordpressweb/?p=21', 0,  'revision', '', 0),
(22,  1,  '2021-08-05 12:21:40',  '2021-08-05 12:21:40',  '', 'Screenshot at 2021-07-26 12-15-49',  '', 'inherit',  'open', 'closed', '', 'screenshot-at-2021-07-26-12-15-49',  '', '', '2021-08-05 12:21:40',  '2021-08-05 12:21:40',  '', 11, 'http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/Screenshot-at-2021-07-26-12-15-49.png',  0,  'attachment', 'image/png',  0),
(23,  1,  '2021-08-05 12:36:45',  '2021-08-05 12:36:45',  '', 'logo-websites-31315',  '', 'inherit',  'open', 'closed', '', 'logo-websites-31315',  '', '', '2021-08-05 12:36:45',  '2021-08-05 12:36:45',  '', 0,  'http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png',  0,  'attachment', 'image/png',  0),
(24,  1,  '2021-08-05 12:37:06',  '2021-08-05 12:37:06',  '{\n    \"bonativo::header_image\": {\n        \"value\": \"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-05 12:37:06\"\n    },\n    \"bonativo::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png\",\n            \"thumbnail_url\": \"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/logo-websites-31315.png\",\n            \"timestamp\": 1628167023644,\n            \"attachment_id\": 23,\n            \"width\": 1600,\n            \"height\": 1600\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-05 12:37:06\"\n    }\n}', '', '', 'trash',  'closed', 'closed', '', 'd2fa6720-710b-4019-a0cb-128423795738', '', '', '2021-08-05 12:37:06',  '2021-08-05 12:37:06',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=24', 0,  'customize_changeset',  '', 0),
(25,  1,  '2021-08-11 10:52:39',  '0000-00-00 00:00:00',  '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-11 10:52:39',  '0000-00-00 00:00:00',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=25', 0,  'post', '', 0),
(26,  1,  '2021-08-11 11:54:51',  '2021-08-11 11:54:51',  '', 'pakistan-flag_wallpaper-371566', '', 'inherit',  'open', 'closed', '', 'pakistan-flag_wallpaper-371566', '', '', '2021-08-11 11:55:23',  '2021-08-11 11:55:23',  '', 0,  'http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/pakistan-flag_wallpaper-371566.png', 0,  'attachment', 'image/png',  0),
(27,  1,  '2021-08-11 11:55:28',  '2021-08-11 11:55:28',  '{\n    \"bonativo::background_image\": {\n        \"value\": \"http://hashmiwebsol/php/wordpressweb/wp-content/uploads/2021/08/pakistan-flag_wallpaper-371566.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:28\"\n    }\n}',  '', '', 'trash',  'closed', 'closed', '', 'b7ebfc6a-3e1a-4d18-83e8-076d7dcb05b8', '', '', '2021-08-11 11:55:28',  '2021-08-11 11:55:28',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=27', 0,  'customize_changeset',  '', 0),
(28,  1,  '2021-08-11 11:55:37',  '2021-08-11 11:55:37',  '{\n    \"bonativo::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:37\"\n    },\n    \"bonativo::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:37\"\n    },\n    \"bonativo::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:37\"\n    },\n    \"bonativo::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:37\"\n    }\n}', '', '', 'trash',  'closed', 'closed', '', 'bf1df93c-bac2-4609-b5d2-01514a0dfb2b', '', '', '2021-08-11 11:55:37',  '2021-08-11 11:55:37',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=28', 0,  'customize_changeset',  '', 0),
(29,  1,  '2021-08-11 11:55:41',  '2021-08-11 11:55:41',  '{\n    \"bonativo::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:41\"\n    },\n    \"bonativo::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-11 11:55:41\"\n    }\n}',  '', '', 'trash',  'closed', 'closed', '', '502f0809-23d6-4c7c-b129-8b4dfb7c4f3f', '', '', '2021-08-11 11:55:41',  '2021-08-11 11:55:41',  '', 0,  'http://hashmiwebsol/php/wordpressweb/?p=29', 0,  'customize_changeset',  '', 0);

DROP TABLE IF EXISTS `wp_wordpressweb_term_relationships`;
CREATE TABLE `wp_wordpressweb_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1,  0),
(5, 2,  0),
(6, 3,  0),
(7, 3,  0),
(8, 3,  0),
(18,  2,  0),
(19,  2,  0),
(20,  2,  0);

DROP TABLE IF EXISTS `wp_wordpressweb_term_taxonomy`;
CREATE TABLE `wp_wordpressweb_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1,  'category', '', 0,  1),
(2, 2,  'nav_menu', '', 0,  4),
(3, 3,  'nav_menu', '', 0,  3);

DROP TABLE IF EXISTS `wp_wordpressweb_termmeta`;
CREATE TABLE `wp_wordpressweb_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_wordpressweb_terms`;
CREATE TABLE `wp_wordpressweb_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized',  'uncategorized',  0),
(2, 'Main Navigation',  'main-navigation',  0),
(3, 'Social Links', 'social-links', 0);

DROP TABLE IF EXISTS `wp_wordpressweb_usermeta`;
CREATE TABLE `wp_wordpressweb_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1,  'nickname', 'adminfarazhashmi'),
(2, 1,  'first_name', ''),
(3, 1,  'last_name',  ''),
(4, 1,  'description',  ''),
(5, 1,  'rich_editing', 'true'),
(6, 1,  'syntax_highlighting',  'true'),
(7, 1,  'comment_shortcuts',  'false'),
(8, 1,  'admin_color',  'fresh'),
(9, 1,  'use_ssl',  '0'),
(10,  1,  'show_admin_bar_front', 'true'),
(11,  1,  'locale', ''),
(12,  1,  'wp_wordpressweb_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13,  1,  'wp_wordpressweb_user_level', '10'),
(14,  1,  'dismissed_wp_pointers',  ''),
(15,  1,  'show_welcome_panel', '1'),
(17,  1,  'wp_wordpressweb_dashboard_quick_press_last_post_id', '25'),
(18,  1,  'community-events-location',  'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21,  1,  'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22,  1,  'metaboxhidden_nav-menus',  'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24,  1,  'nav_menu_recently_edited', '2'),
(26,  1,  'wp_wordpressweb_user-settings',  'libraryContent=browse'),
(27,  1,  'wp_wordpressweb_user-settings-time', '1628682940');

DROP TABLE IF EXISTS `wp_wordpressweb_users`;
CREATE TABLE `wp_wordpressweb_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_wordpressweb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminfarazhashmi', '$P$Bvaifg3nPMQ.XjlyYsniKJcOiSMbke/', 'adminfarazhashmi', 'developerfarazhashmi@yahoo.com', 'http://hashmiwebsol/php/wordpressweb', '2021-08-04 12:19:25',  '', 0,  'adminfarazhashmi');

-- 2021-08-13 14:23:05
