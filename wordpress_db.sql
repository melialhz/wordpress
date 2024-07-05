-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 13 juin 2024 à 16:33
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wordpress_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-06-11 12:19:00', '2024-06-11 12:19:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'cinéma', 'yes'),
(4, 'blogdescription', 'ESGI-Movies', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ilyanagolmi@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '24', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wordpress-cinema', 'yes'),
(41, 'stylesheet', 'wordpress-cinema', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '85', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1733660340', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1718299141;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1718324341;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1718324356;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1718367541;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1718367556;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1718376501;a:1:{s:25:\"moviewp_transient_cleaner\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1718713448;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1718799541;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.4\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/fr_FR/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/fr_FR/wordpress-6.5.4.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1718281157;s:15:\"version_checked\";s:5:\"6.5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718292897;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1718292891;s:7:\"checked\";a:4:{s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";s:16:\"wordpress-cinema\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentytwentytwo.1.7.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(132, 'can_compress_scripts', '1', 'yes'),
(137, 'finished_updating_comment_type', '1', 'yes'),
(138, 'current_theme', 'cinéma4You', 'yes'),
(139, 'theme_mods_lille', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718112735;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(140, 'theme_switched', '', 'yes'),
(149, 'theme_mods_cinema', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718174049;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(186, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(187, 'recently_activated', 'a:0:{}', 'yes'),
(193, 'widget_moviewpcustomlink', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'moviewp-search-nonce', '36ed809927', 'yes'),
(216, 'moviewppanel_color_style', 'blue', 'yes'),
(217, 'moviewppanel_google_fonts', 'jost', 'yes'),
(218, 'moviewppanel_apikey', '', 'yes'),
(219, 'moviewppanel_apilanguage', '', 'yes'),
(220, 'moviewppanel_disqus', '', 'yes'),
(221, 'moviewppanel_omdb', '', 'yes'),
(222, 'moviewppanel_multiplayer', '', 'yes'),
(223, 'moviewppanel_multiserver', '', 'yes'),
(224, 'moviewppanel_tvdl', '', 'yes'),
(225, 'moviewppanel_switch', '', 'yes'),
(226, 'moviewppanel_enabletv', '', 'yes'),
(227, 'moviewppanel_enabletag', '', 'yes'),
(228, 'moviewppanel_sortby', '', 'yes'),
(229, 'moviewppanel_quality', '', 'yes'),
(230, 'moviewppanel_share', '', 'yes'),
(231, 'moviewppanel_letter', '', 'yes'),
(232, 'moviewppanel_postviews', '', 'yes'),
(233, 'moviewppanel_likes', '', 'yes'),
(234, 'moviewppanel_similar', '', 'yes'),
(235, 'moviewppanel_favorites', '', 'yes'),
(236, 'moviewppanel_minify', '', 'yes'),
(237, 'moviewppanel_scroll', '', 'yes'),
(238, 'moviewppanel_full', '', 'yes'),
(239, 'moviewppanel_grid', '', 'yes'),
(240, 'moviewppanel_seo', '', 'yes'),
(241, 'moviewppanel_advertise', '', 'yes'),
(242, 'moviewppanel_email', '', 'yes'),
(243, 'moviewppanel_recently', '', 'yes'),
(244, 'moviewppanel_mostrated', '', 'yes'),
(245, 'moviewppanel_mostwatched', '', 'yes'),
(246, 'moviewppanel_testolike', '', 'yes'),
(247, 'moviewppanel_releasedate', '', 'yes'),
(248, 'moviewppanel_titleato', '', 'yes'),
(249, 'moviewppanel_fullbio', '', 'yes'),
(250, 'moviewppanel_nobio', '', 'yes'),
(251, 'moviewppanel_monetize', '', 'yes'),
(252, 'moviewppanel_txtsponsor', '', 'yes'),
(253, 'moviewppanel_txtcomments', '', 'yes'),
(254, 'moviewppanel_sharebutton', '', 'yes'),
(255, 'moviewppanel_topicon', '', 'yes'),
(256, 'moviewppanel_randomicon', '', 'yes'),
(257, 'moviewppanel_description', '', 'yes'),
(258, 'moviewppanel_description_tv', '', 'yes'),
(259, 'moviewppanel_slogan', '', 'yes'),
(260, 'moviewppanel_latest', '', 'yes'),
(261, 'moviewppanel_txtmovies', '', 'yes'),
(262, 'moviewppanel_intheaters', '', 'yes'),
(263, 'moviewppanel_top', '', 'yes'),
(264, 'moviewppanel_random', '', 'yes'),
(265, 'moviewppanel_tvseries', '', 'yes'),
(266, 'moviewppanel_genre', '', 'yes'),
(267, 'moviewppanel_year', '', 'yes'),
(268, 'moviewppanel_country', '', 'yes'),
(269, 'moviewppanel_search', '', 'yes'),
(270, 'moviewppanel_network', '', 'yes'),
(271, 'moviewppanel_creator', '', 'yes'),
(272, 'moviewppanel_stars', '', 'yes'),
(273, 'moviewppanel_season', '', 'yes'),
(274, 'moviewppanel_seasons', '', 'yes'),
(275, 'moviewppanel_episode', '', 'yes'),
(276, 'moviewppanel_episodes', '', 'yes'),
(277, 'moviewppanel_director', '', 'yes'),
(278, 'moviewppanel_play', '', 'yes'),
(279, 'moviewppanel_trailer', '', 'yes'),
(280, 'moviewppanel_streaming', '', 'yes'),
(281, 'moviewppanel_watch', '', 'yes'),
(282, 'moviewppanel_download', '', 'yes'),
(283, 'moviewppanel_textautoembed', '', 'yes'),
(284, 'moviewppanel_textmultiserver', '', 'yes'),
(285, 'moviewppanel_textfavorites', '', 'yes'),
(286, 'moviewppanel_txtnoletter', '', 'yes'),
(287, 'moviewppanel_related', '', 'yes'),
(288, 'moviewppanel_header_code', '', 'yes'),
(289, 'moviewppanel_adbutton', '2', 'yes'),
(290, 'moviewppanel_sponsor', '2', 'yes'),
(291, 'moviewppanel_footer_showlinks', '1', 'yes'),
(292, 'moviewppanel_footer_copyright', '', 'yes'),
(293, 'moviewppanel_site_logo', '', 'yes'),
(294, 'moviewppanel_site_favicon', '', 'yes'),
(295, 'moviewppanel_header_soc_icons', '2', 'yes'),
(296, 'moviewppanel_customizer', '2', 'yes'),
(297, 'moviewppanel_url_facebook', '', 'yes'),
(298, 'moviewppanel_url_twitter', '', 'yes'),
(299, 'moviewppanel_url_instagram', '', 'yes'),
(300, 'moviewppanel_comments', '2', 'yes'),
(301, 'moviewppanel_footer_banner', '2', 'yes'),
(302, 'moviewppanel_banner_position_1', '', 'yes'),
(303, 'theme_mods_cinema3', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718230231;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(320, 'recovery_mode_email_last_sent', '1718117905', 'yes'),
(542, 'theme_mods_movies', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718173912;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'no'),
(544, 'theme_mods_wordpress-cinema', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718291443;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(551, 'theme_switched_via_customizer', '', 'yes'),
(552, 'customize_stashed_theme_mods', 'a:0:{}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(606, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1718281157;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(611, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(615, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(677, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(681, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"7\",\"critical\":\"0\"}', 'yes'),
(729, 'auth_key', 'QSdOyCBNmnKj1/,wOmu5!pTk!&nvs;Dc8H++#Q#-c6Vw!y+UMChdc0Wr84)PFCsr', 'no'),
(730, 'auth_salt', '{/Xlf//T/@DCYcJd>~a<5`up e4Lf,IMJp>t?@>,nR<RP<!0ngz#lJ($oI^lPvkN', 'no'),
(731, 'logged_in_key', '_X;ErlIRcwG&d#ZP~n_Q,67cMh4~GToa}.gjU/y4_1{%zO;NqXhPdtc?5^qIPVuk', 'no'),
(732, 'logged_in_salt', 'n#KOjWuwgc4)mK0T(;BA^p{?m/&3w_Msk-qSBD5br^e[=$0$MLP:yoIF}n}d_Sj3', 'no'),
(733, 'nonce_key', 'Y[6M$[/2i(<h@83]XR]Gg)ln6Hi$i_f0fF@8hrY2AC[.;`Jg D{o$:>EB$Lg,IW)', 'no'),
(734, 'nonce_salt', '-3GJ2_hjq-ejUM~h7c]#_5#|7>7 |m[Vc$UxLVg990S#dTYXK{+u$<~./iYYpuoK', 'no'),
(744, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1718303028', 'no'),
(745, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 60: SSL certificate problem: unable to get local issuer certificate</p></div><div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 60: SSL certificate problem: unable to get local issuer certificate</p></div>', 'no'),
(749, 'category_children', 'a:1:{i:11;a:1:{i:0;i:4;}}', 'yes'),
(769, '_site_transient_timeout_available_translations', '1718294967', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(770, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.0.8/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.4.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-04-17 04:58:23\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.4.4/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-13 11:58:50\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-03-20 07:52:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.5/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-31 05:08:14\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-04-24 08:56:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-05 16:32:52\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-28 12:45:26\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-17 14:48:34\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-03-26 13:47:17\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-13 14:21:47\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/6.5.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-03-26 13:44:37\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/6.5.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-03 13:12:29\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.5/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-29 13:45:43\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-03-24 17:26:23\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-02 19:22:48\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-06 03:31:15\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-10 06:30:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-06 03:31:51\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-10 15:53:58\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-27 01:40:49\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-21 15:08:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-08 03:22:25\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-27 13:30:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.5/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-21 17:55:40\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-06-02 15:48:46\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.4.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-16 17:07:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-04-24 18:38:28\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-05 14:33:45\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-07 10:01:23\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-06 13:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.2.5/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-19 23:22:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.4.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-13 08:23:07\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.5/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-09 11:52:45\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-22 14:20:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-31 12:01:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-04 16:29:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-11 06:47:05\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.25/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.6\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.1.6/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-07 10:10:04\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-11 13:06:03\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.5.4/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-09 12:35:56\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.5.4/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-13 09:28:47\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-28 13:16:04\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.0.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.4/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-16 08:56:54\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-03 15:18:38\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-05 23:24:37\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-11 06:28:18\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-12 14:57:40\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-09 09:56:33\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/6.5.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-07 18:27:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-21 13:57:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-28 12:52:40\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-04-29 14:17:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/6.5.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-13 10:10:53\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-12 17:48:04\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-29 19:01:12\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-28 08:42:13\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-03 08:22:16\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-04-03 15:29:12\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-11 14:03:20\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-14 05:23:13\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-18 15:04:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-01 01:02:38\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.4.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-04-21 03:44:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-06-03 15:01:22\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.5.4\";s:7:\"updated\";s:19:\"2024-05-19 09:07:33\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(786, 'theme_mods_cinemaa', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1718288492;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'no'),
(793, '_site_transient_timeout_wp_remote_block_patterns_14a63d121f9b13aca3d398276090fa58', '1718289358', 'no'),
(794, '_site_transient_wp_remote_block_patterns_14a63d121f9b13aca3d398276090fa58', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:78:\"cURL error 60: SSL certificate problem: unable to get local issuer certificate\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(795, '_site_transient_timeout_wp_remote_block_patterns_e1699eb0bc34e7dd8f9d3477605c72a8', '1718289358', 'no'),
(796, '_site_transient_wp_remote_block_patterns_e1699eb0bc34e7dd8f9d3477605c72a8', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:78:\"cURL error 60: SSL certificate problem: unable to get local issuer certificate\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(814, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1718337798', 'no'),
(815, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 60: SSL certificate problem: unable to get local issuer certificate</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 60: SSL certificate problem: unable to get local issuer certificate</p></div>', 'no'),
(816, '_site_transient_timeout_theme_roots', '1718297160', 'no'),
(817, '_site_transient_theme_roots', 'a:4:{s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:16:\"wordpress-cinema\";s:7:\"/themes\";}', 'no'),
(856, '_site_transient_timeout_wp_remote_block_patterns_b956cf0b1ce284bb7722c282f8fa281d', '1718296185', 'no'),
(857, '_site_transient_wp_remote_block_patterns_b956cf0b1ce284bb7722c282f8fa281d', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:78:\"cURL error 60: SSL certificate problem: unable to get local issuer certificate\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(858, '_site_transient_timeout_wp_remote_block_patterns_ed8a2dff063897a4a08d39a8862bc89c', '1718296185', 'no'),
(859, '_site_transient_wp_remote_block_patterns_ed8a2dff063897a4a08d39a8862bc89c', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:78:\"cURL error 60: SSL certificate problem: unable to get local issuer certificate\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2024/06/ezgif.com-speed.gif'),
(4, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1340;s:6:\"height\";i:1324;s:4:\"file\";s:27:\"2024/06/ezgif.com-speed.gif\";s:8:\"filesize\";i:68365;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-300x296.gif\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:22057;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"ezgif.com-speed-1024x1012.gif\";s:5:\"width\";i:1024;s:6:\"height\";i:1012;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:170672;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:6855;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-768x759.gif\";s:5:\"width\";i:768;s:6:\"height\";i:759;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:114514;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 7, '_wp_attached_file', '2024/06/cropped-ezgif.com-speed.gif'),
(6, 7, '_wp_attachment_context', 'site-icon'),
(7, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:35:\"2024/06/cropped-ezgif.com-speed.gif\";s:8:\"filesize\";i:74803;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:33555;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:11867;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-270x270.gif\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:28855;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-192x192.gif\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:17367;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-180x180.gif\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:15824;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:33:\"cropped-ezgif.com-speed-32x32.gif\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:1648;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_customize_restore_dismissed', '1'),
(10, 9, '_wp_trash_meta_status', 'publish'),
(11, 9, '_wp_trash_meta_time', '1718113495'),
(12, 10, '_edit_lock', '1718114019:1'),
(13, 11, '_edit_lock', '1718114593:1'),
(14, 7, '_oembed_0d44490e9e03233e2940fadd467cf3b9', '{{unknown}}'),
(15, 12, '_menu_item_type', 'custom'),
(16, 12, '_menu_item_menu_item_parent', '0'),
(17, 12, '_menu_item_object_id', '12'),
(18, 12, '_menu_item_object', 'custom'),
(19, 12, '_menu_item_target', ''),
(20, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 12, '_menu_item_xfn', ''),
(22, 12, '_menu_item_url', 'http://localhost:8888/'),
(23, 12, '_menu_item_orphaned', '1718114649'),
(24, 13, '_menu_item_type', 'post_type'),
(25, 13, '_menu_item_menu_item_parent', '0'),
(26, 13, '_menu_item_object_id', '2'),
(27, 13, '_menu_item_object', 'page'),
(28, 13, '_menu_item_target', ''),
(29, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 13, '_menu_item_xfn', ''),
(31, 13, '_menu_item_url', ''),
(32, 13, '_menu_item_orphaned', '1718114649'),
(34, 2, '_edit_lock', '1718114966:1'),
(35, 2, '_wp_trash_meta_status', 'publish'),
(36, 2, '_wp_trash_meta_time', '1718115115'),
(37, 2, '_wp_desired_post_slug', 'sample-page'),
(38, 16, '_edit_lock', '1718115034:1'),
(39, 17, '_edit_lock', '1718115555:1'),
(40, 19, '_edit_lock', '1718115653:1'),
(41, 20, '_edit_lock', '1718116000:1'),
(42, 1, '_edit_lock', '1718116144:1'),
(45, 14, '_customize_restore_dismissed', '1'),
(47, 23, '_wp_page_template', 'default'),
(48, 24, '_wp_page_template', 'default'),
(49, 25, '_wp_page_template', 'default'),
(50, 26, '_wp_page_template', 'default'),
(51, 27, '_wp_page_template', 'default'),
(52, 28, '_wp_page_template', 'default'),
(53, 29, '_wp_page_template', 'pages/collection.php'),
(54, 30, '_wp_page_template', 'default'),
(55, 22, '_customize_restore_dismissed', '1'),
(56, 31, '_edit_lock', '1718173831:1'),
(57, 32, '_wp_trash_meta_status', 'publish'),
(58, 32, '_wp_trash_meta_time', '1718174049'),
(59, 33, '_edit_lock', '1718175177:1'),
(62, 23, '_edit_lock', '1718175583:1'),
(63, 30, '_wp_trash_meta_status', 'publish'),
(64, 30, '_wp_trash_meta_time', '1718175740'),
(65, 30, '_wp_desired_post_slug', 'networks'),
(66, 27, '_wp_trash_meta_status', 'publish'),
(67, 27, '_wp_trash_meta_time', '1718175742'),
(68, 27, '_wp_desired_post_slug', 'letter'),
(69, 3, '_wp_trash_meta_status', 'draft'),
(70, 3, '_wp_trash_meta_time', '1718175745'),
(71, 3, '_wp_desired_post_slug', 'privacy-policy'),
(72, 1, '_wp_trash_meta_status', 'publish'),
(73, 1, '_wp_trash_meta_time', '1718175798'),
(74, 1, '_wp_desired_post_slug', 'hello-world'),
(75, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(76, 33, '_wp_trash_meta_status', 'publish'),
(77, 33, '_wp_trash_meta_time', '1718175800'),
(78, 33, '_wp_desired_post_slug', 'wordpress-movies'),
(79, 38, '_menu_item_type', 'custom'),
(80, 38, '_menu_item_menu_item_parent', '0'),
(81, 38, '_menu_item_object_id', '38'),
(82, 38, '_menu_item_object', 'custom'),
(83, 38, '_menu_item_target', ''),
(84, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 38, '_menu_item_xfn', ''),
(86, 38, '_menu_item_url', 'http://localhost:8888/'),
(87, 38, '_menu_item_orphaned', '1718175862'),
(88, 39, '_menu_item_type', 'post_type'),
(89, 39, '_menu_item_menu_item_parent', '0'),
(90, 39, '_menu_item_object_id', '28'),
(91, 39, '_menu_item_object', 'page'),
(92, 39, '_menu_item_target', ''),
(93, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 39, '_menu_item_xfn', ''),
(95, 39, '_menu_item_url', ''),
(96, 39, '_menu_item_orphaned', '1718175862'),
(97, 40, '_menu_item_type', 'post_type'),
(98, 40, '_menu_item_menu_item_parent', '0'),
(99, 40, '_menu_item_object_id', '29'),
(100, 40, '_menu_item_object', 'page'),
(101, 40, '_menu_item_target', ''),
(102, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 40, '_menu_item_xfn', ''),
(104, 40, '_menu_item_url', ''),
(105, 40, '_menu_item_orphaned', '1718175862'),
(106, 41, '_menu_item_type', 'post_type'),
(107, 41, '_menu_item_menu_item_parent', '0'),
(108, 41, '_menu_item_object_id', '25'),
(109, 41, '_menu_item_object', 'page'),
(110, 41, '_menu_item_target', ''),
(111, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 41, '_menu_item_xfn', ''),
(113, 41, '_menu_item_url', ''),
(114, 41, '_menu_item_orphaned', '1718175862'),
(115, 42, '_menu_item_type', 'post_type'),
(116, 42, '_menu_item_menu_item_parent', '0'),
(117, 42, '_menu_item_object_id', '26'),
(118, 42, '_menu_item_object', 'page'),
(119, 42, '_menu_item_target', ''),
(120, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 42, '_menu_item_xfn', ''),
(122, 42, '_menu_item_url', ''),
(123, 42, '_menu_item_orphaned', '1718175862'),
(124, 43, '_menu_item_type', 'post_type'),
(125, 43, '_menu_item_menu_item_parent', '0'),
(126, 43, '_menu_item_object_id', '23'),
(127, 43, '_menu_item_object', 'page'),
(128, 43, '_menu_item_target', ''),
(129, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 43, '_menu_item_xfn', ''),
(131, 43, '_menu_item_url', ''),
(132, 43, '_menu_item_orphaned', '1718175862'),
(133, 44, '_menu_item_type', 'post_type'),
(134, 44, '_menu_item_menu_item_parent', '0'),
(135, 44, '_menu_item_object_id', '24'),
(136, 44, '_menu_item_object', 'page'),
(137, 44, '_menu_item_target', ''),
(138, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 44, '_menu_item_xfn', ''),
(140, 44, '_menu_item_url', ''),
(141, 44, '_menu_item_orphaned', '1718175862'),
(150, 45, '_wp_trash_meta_status', 'publish'),
(151, 45, '_wp_trash_meta_time', '1718176138'),
(152, 48, '_menu_item_type', 'taxonomy'),
(153, 48, '_menu_item_menu_item_parent', '0'),
(154, 48, '_menu_item_object_id', '2'),
(155, 48, '_menu_item_object', 'category'),
(156, 48, '_menu_item_target', ''),
(157, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 48, '_menu_item_xfn', ''),
(159, 48, '_menu_item_url', ''),
(160, 49, '_menu_item_type', 'taxonomy'),
(161, 49, '_menu_item_menu_item_parent', '0'),
(162, 49, '_menu_item_object_id', '4'),
(163, 49, '_menu_item_object', 'category'),
(164, 49, '_menu_item_target', ''),
(165, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 49, '_menu_item_xfn', ''),
(167, 49, '_menu_item_url', ''),
(168, 50, '_menu_item_type', 'taxonomy'),
(169, 50, '_menu_item_menu_item_parent', '0'),
(170, 50, '_menu_item_object_id', '7'),
(171, 50, '_menu_item_object', 'category'),
(172, 50, '_menu_item_target', ''),
(173, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 50, '_menu_item_xfn', ''),
(175, 50, '_menu_item_url', ''),
(192, 53, '_menu_item_type', 'taxonomy'),
(193, 53, '_menu_item_menu_item_parent', '0'),
(194, 53, '_menu_item_object_id', '9'),
(195, 53, '_menu_item_object', 'category'),
(196, 53, '_menu_item_target', ''),
(197, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 53, '_menu_item_xfn', ''),
(199, 53, '_menu_item_url', ''),
(200, 54, '_menu_item_type', 'taxonomy'),
(201, 54, '_menu_item_menu_item_parent', '0'),
(202, 54, '_menu_item_object_id', '5'),
(203, 54, '_menu_item_object', 'category'),
(204, 54, '_menu_item_target', ''),
(205, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 54, '_menu_item_xfn', ''),
(207, 54, '_menu_item_url', ''),
(208, 47, '_wp_trash_meta_status', 'publish'),
(209, 47, '_wp_trash_meta_time', '1718176169'),
(210, 55, '_wp_trash_meta_status', 'publish'),
(211, 55, '_wp_trash_meta_time', '1718176303'),
(212, 56, '_wp_trash_meta_status', 'publish'),
(213, 56, '_wp_trash_meta_time', '1718230286'),
(214, 58, '_menu_item_type', 'taxonomy'),
(215, 58, '_menu_item_menu_item_parent', '0'),
(216, 58, '_menu_item_object_id', '6'),
(217, 58, '_menu_item_object', 'category'),
(218, 58, '_menu_item_target', ''),
(219, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 58, '_menu_item_xfn', ''),
(221, 58, '_menu_item_url', ''),
(222, 59, '_menu_item_type', 'taxonomy'),
(223, 59, '_menu_item_menu_item_parent', '0'),
(224, 59, '_menu_item_object_id', '3'),
(225, 59, '_menu_item_object', 'category'),
(226, 59, '_menu_item_target', ''),
(227, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 59, '_menu_item_xfn', ''),
(229, 59, '_menu_item_url', ''),
(254, 57, '_wp_trash_meta_status', 'publish'),
(255, 57, '_wp_trash_meta_time', '1718230338'),
(256, 63, '_menu_item_type', 'taxonomy'),
(257, 63, '_menu_item_menu_item_parent', '0'),
(258, 63, '_menu_item_object_id', '2'),
(259, 63, '_menu_item_object', 'category'),
(260, 63, '_menu_item_target', ''),
(261, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(262, 63, '_menu_item_xfn', ''),
(263, 63, '_menu_item_url', ''),
(264, 63, '_menu_item_orphaned', '1718259920'),
(265, 64, '_menu_item_type', 'taxonomy'),
(266, 64, '_menu_item_menu_item_parent', '0'),
(267, 64, '_menu_item_object_id', '4'),
(268, 64, '_menu_item_object', 'category'),
(269, 64, '_menu_item_target', ''),
(270, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(271, 64, '_menu_item_xfn', ''),
(272, 64, '_menu_item_url', ''),
(273, 64, '_menu_item_orphaned', '1718259920'),
(274, 65, '_menu_item_type', 'taxonomy'),
(275, 65, '_menu_item_menu_item_parent', '0'),
(276, 65, '_menu_item_object_id', '3'),
(277, 65, '_menu_item_object', 'category'),
(278, 65, '_menu_item_target', ''),
(279, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 65, '_menu_item_xfn', ''),
(281, 65, '_menu_item_url', ''),
(282, 65, '_menu_item_orphaned', '1718259920'),
(283, 66, '_menu_item_type', 'taxonomy'),
(284, 66, '_menu_item_menu_item_parent', '0'),
(285, 66, '_menu_item_object_id', '6'),
(286, 66, '_menu_item_object', 'category'),
(287, 66, '_menu_item_target', ''),
(288, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(289, 66, '_menu_item_xfn', ''),
(290, 66, '_menu_item_url', ''),
(291, 66, '_menu_item_orphaned', '1718259920'),
(292, 67, '_edit_lock', '1718260590:1'),
(293, 24, '_wp_trash_meta_status', 'publish'),
(294, 24, '_wp_trash_meta_time', '1718260614'),
(295, 24, '_wp_desired_post_slug', 'top'),
(296, 23, '_wp_trash_meta_status', 'publish'),
(297, 23, '_wp_trash_meta_time', '1718260615'),
(298, 23, '_wp_desired_post_slug', 'random'),
(299, 26, '_wp_trash_meta_status', 'publish'),
(300, 26, '_wp_trash_meta_time', '1718260617'),
(301, 26, '_wp_desired_post_slug', 'favorites'),
(302, 25, '_wp_trash_meta_status', 'publish'),
(303, 25, '_wp_trash_meta_time', '1718260619'),
(304, 25, '_wp_desired_post_slug', 'contact'),
(305, 28, '_wp_trash_meta_status', 'publish'),
(306, 28, '_wp_trash_meta_time', '1718260622'),
(307, 28, '_wp_desired_post_slug', 'alphabet'),
(308, 73, '_edit_lock', '1718260544:1'),
(309, 74, '_edit_lock', '1718260789:1'),
(310, 48, '_wp_old_date', '2024-06-12'),
(311, 49, '_wp_old_date', '2024-06-12'),
(312, 50, '_wp_old_date', '2024-06-12'),
(315, 53, '_wp_old_date', '2024-06-12'),
(316, 54, '_wp_old_date', '2024-06-12'),
(317, 58, '_wp_old_date', '2024-06-12'),
(318, 59, '_wp_old_date', '2024-06-12'),
(340, 77, '_menu_item_type', 'taxonomy'),
(341, 77, '_menu_item_menu_item_parent', '0'),
(342, 77, '_menu_item_object_id', '11'),
(343, 77, '_menu_item_object', 'category'),
(344, 77, '_menu_item_target', ''),
(345, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(346, 77, '_menu_item_xfn', ''),
(347, 77, '_menu_item_url', ''),
(349, 78, '_edit_lock', '1718261231:1'),
(350, 79, '_edit_lock', '1718261233:1'),
(351, 80, '_edit_lock', '1718261502:1'),
(361, 82, '_edit_lock', '1718263322:1'),
(362, 29, '_edit_lock', '1718283130:1'),
(363, 83, '_edit_lock', '1718263277:1'),
(364, 84, '_wp_attached_file', '2024/06/ezgif.com-speed.gif'),
(365, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1340;s:6:\"height\";i:1324;s:4:\"file\";s:27:\"2024/06/ezgif.com-speed.gif\";s:8:\"filesize\";i:68365;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-300x296.gif\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:22057;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"ezgif.com-speed-1024x1012.gif\";s:5:\"width\";i:1024;s:6:\"height\";i:1012;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:170672;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:6855;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-768x759.gif\";s:5:\"width\";i:768;s:6:\"height\";i:759;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:114514;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-300x200.gif\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:18057;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:27:\"ezgif.com-speed-500x350.gif\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:37716;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 84, '_wp_attachment_image_alt', 'movies'),
(367, 85, '_wp_attachment_image_alt', 'movies'),
(368, 85, '_wp_attached_file', '2024/06/cropped-ezgif.com-speed.gif'),
(369, 85, '_wp_attachment_context', 'site-icon'),
(370, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:35:\"2024/06/cropped-ezgif.com-speed.gif\";s:8:\"filesize\";i:72787;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:35839;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:12880;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-300x200.gif\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:25631;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-500x350.gif\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:63171;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-270x270.gif\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:32543;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-192x192.gif\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:18515;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:35:\"cropped-ezgif.com-speed-180x180.gif\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:16936;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:33:\"cropped-ezgif.com-speed-32x32.gif\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:1710;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 86, '_edit_lock', '1718263780:1'),
(372, 86, '_wp_trash_meta_status', 'publish'),
(373, 86, '_wp_trash_meta_time', '1718263785'),
(375, 87, '_customize_restore_dismissed', '1'),
(376, 88, '_edit_lock', '1718280699:1'),
(377, 89, '_edit_last', '1'),
(378, 89, '_edit_lock', '1718280877:1'),
(379, 90, '_wp_attached_file', '2024/06/titanic-150x150-1.jpg'),
(380, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:29:\"2024/06/titanic-150x150-1.jpg\";s:8:\"filesize\";i:8341;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 91, '_edit_last', '1'),
(382, 91, '_edit_lock', '1718281047:1'),
(383, 92, '_wp_attached_file', '2024/06/81Z7PowQQDL._AC_UF10001000_QL80_.jpg'),
(384, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:802;s:6:\"height\";i:1000;s:4:\"file\";s:44:\"2024/06/81Z7PowQQDL._AC_UF10001000_QL80_.jpg\";s:8:\"filesize\";i:116627;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"81Z7PowQQDL._AC_UF10001000_QL80_-241x300.jpg\";s:5:\"width\";i:241;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19171;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"81Z7PowQQDL._AC_UF10001000_QL80_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7232;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"81Z7PowQQDL._AC_UF10001000_QL80_-768x958.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:958;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133786;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:44:\"81Z7PowQQDL._AC_UF10001000_QL80_-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15820;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:44:\"81Z7PowQQDL._AC_UF10001000_QL80_-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37218;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 93, '_edit_last', '1'),
(386, 93, '_edit_lock', '1718281370:1'),
(387, 94, '_wp_attached_file', '2024/06/1974-superdad-1.jpg'),
(388, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:606;s:4:\"file\";s:27:\"2024/06/1974-superdad-1.jpg\";s:8:\"filesize\";i:244621;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-198x300.jpg\";s:5:\"width\";i:198;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15187;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7367;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12807;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-400x350.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29134;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 95, '_edit_last', '1'),
(390, 95, '_edit_lock', '1718281357:1'),
(391, 96, '_wp_attached_file', '2024/06/215297.webp'),
(392, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1180;s:6:\"height\";i:1600;s:4:\"file\";s:19:\"2024/06/215297.webp\";s:8:\"filesize\";i:528818;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"215297-221x300.webp\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24462;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"215297-755x1024.webp\";s:5:\"width\";i:755;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:221456;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"215297-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9688;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"215297-768x1041.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1041;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:228464;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"215297-1133x1536.webp\";s:5:\"width\";i:1133;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:406472;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:19:\"215297-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20032;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:19:\"215297-500x350.webp\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:52902;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 98, '_edit_last', '1'),
(394, 98, '_edit_lock', '1718281317:1'),
(395, 99, '_wp_attached_file', '2024/06/2036046983.jpg'),
(396, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:414;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2024/06/2036046983.jpg\";s:8:\"filesize\";i:45747;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"2036046983-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22888;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"2036046983-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8895;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:22:\"2036046983-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17695;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:22:\"2036046983-414x350.jpg\";s:5:\"width\";i:414;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41423;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(397, 100, '_edit_last', '1'),
(398, 100, '_edit_lock', '1718281393:1'),
(399, 101, '_wp_attached_file', '2024/06/d54bbf222b4b5758a7916287c26ef1eb.webp'),
(400, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:310;s:6:\"height\";i:420;s:4:\"file\";s:45:\"2024/06/d54bbf222b4b5758a7916287c26ef1eb.webp\";s:8:\"filesize\";i:27894;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"d54bbf222b4b5758a7916287c26ef1eb-221x300.webp\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14754;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"d54bbf222b4b5758a7916287c26ef1eb-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7448;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:45:\"d54bbf222b4b5758a7916287c26ef1eb-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13032;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:45:\"d54bbf222b4b5758a7916287c26ef1eb-310x350.webp\";s:5:\"width\";i:310;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:26070;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 101, '_wp_attachment_image_alt', 'machine'),
(402, 102, '_edit_last', '1'),
(403, 102, '_edit_lock', '1718281589:1'),
(404, 103, '_edit_last', '1'),
(405, 103, '_edit_lock', '1718281506:1'),
(406, 104, '_wp_attached_file', '2024/06/animauxalaloupeblog.png'),
(407, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:877;s:6:\"height\";i:570;s:4:\"file\";s:31:\"2024/06/animauxalaloupeblog.png\";s:8:\"filesize\";i:191930;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"animauxalaloupeblog-300x195.png\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106107;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"animauxalaloupeblog-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46275;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"animauxalaloupeblog-768x499.png\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:568212;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:31:\"animauxalaloupeblog-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:108874;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:31:\"animauxalaloupeblog-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:289405;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(408, 105, '_edit_last', '1'),
(409, 105, '_edit_lock', '1718281564:1'),
(410, 106, '_wp_attached_file', '2024/06/sinister-1.jpg'),
(411, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:22:\"2024/06/sinister-1.jpg\";s:8:\"filesize\";i:10263;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"sinister-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6966;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:22:\"sinister-1-194x200.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12480;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(412, 107, '_wp_attached_file', '2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg'),
(413, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:49:\"2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg\";s:8:\"filesize\";i:7685;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(414, 108, '_wp_attached_file', '2024/06/uncharted-1.jpg'),
(415, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:193;s:6:\"height\";i:262;s:4:\"file\";s:23:\"2024/06/uncharted-1.jpg\";s:8:\"filesize\";i:11567;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"uncharted-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8057;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:23:\"uncharted-1-193x200.jpg\";s:5:\"width\";i:193;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13446;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 109, '_edit_last', '1'),
(417, 109, '_edit_lock', '1718281769:1'),
(418, 110, '_edit_last', '1'),
(419, 110, '_edit_lock', '1718281612:1'),
(519, 85, '_oembed_0d44490e9e03233e2940fadd467cf3b9', '{{unknown}}'),
(520, 29, '_thumbnail_id', '85'),
(521, 123, '_edit_lock', '1718296042:1'),
(524, 123, '_edit_last', '1'),
(527, 123, 'film_year_of_release', '1967'),
(528, 123, 'film_rating', '4.6'),
(529, 123, 'film_trailer_video', 'https://www.google.com/search?q=titanic+trailler&rlz=1C5GCCM_en&oq=titanic+trailler&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQABgNGIAEMgkIAhAAGA0YgAQyCQgDEAAYDRiABDIICAQQABgNGB4yCAgFEAAYDRgeMggIBhAAGA0YHjIICAcQABgNGB4yCAgIEAAYDRgeMggICRAAGA0YHtIBCTg2MDZqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:75cfee74,vid:LuPB43YSgCs,st:0'),
(530, 123, 'film_description', 'film romantique , d\'un bateau appelé titanic'),
(531, 125, '_edit_lock', '1718295972:1'),
(534, 125, '_edit_last', '1'),
(537, 125, 'film_year_of_release', '2002'),
(538, 125, 'film_rating', '5'),
(539, 125, 'film_trailer_video', 'https://www.youtube.com/watch?v=hEJnMQG9ev8'),
(540, 125, 'film_description', 'Film d\'action celebre , avec des acteur competant'),
(541, 127, '_edit_lock', '1718295936:1'),
(544, 127, '_edit_last', '1'),
(547, 127, 'film_year_of_release', '2004'),
(548, 127, 'film_rating', '2'),
(549, 127, 'film_trailer_video', 'https://www.youtube.com/watch?v=yJz408gy3wk'),
(550, 127, 'film_description', 'sur les dinosaures'),
(551, 129, '_edit_lock', '1718296030:1'),
(554, 129, '_edit_last', '1'),
(557, 129, 'film_year_of_release', '2009'),
(558, 129, 'film_rating', '3'),
(559, 129, 'film_trailer_video', 'https://www.studiocine.com/files/studio/images/films/affiches/S/sinister.jpg'),
(560, 129, 'film_description', 'horreur , une histoire etrange'),
(561, 131, '_wp_attached_file', '2024/06/sinister-1-194x200-1.jpg'),
(562, 131, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:194;s:6:\"height\";i:200;s:4:\"file\";s:32:\"2024/06/sinister-1-194x200-1.jpg\";s:8:\"filesize\";i:12480;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"sinister-1-194x200-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6987;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(565, 133, '_wp_attached_file', '2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg'),
(566, 133, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:49:\"2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg\";s:8:\"filesize\";i:7685;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(571, 135, '_wp_attached_file', '2024/06/215297-150x150-1.webp'),
(572, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:29:\"2024/06/215297-150x150-1.webp\";s:8:\"filesize\";i:9688;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(573, 136, '_wp_attached_file', '2024/06/215297.webp'),
(574, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1180;s:6:\"height\";i:1600;s:4:\"file\";s:19:\"2024/06/215297.webp\";s:8:\"filesize\";i:528818;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"215297-221x300.webp\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24462;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"215297-755x1024.webp\";s:5:\"width\";i:755;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:221456;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"215297-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9688;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"215297-768x1041.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1041;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:228464;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"215297-1133x1536.webp\";s:5:\"width\";i:1133;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:406472;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:19:\"215297-148x200.webp\";s:5:\"width\";i:148;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12226;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:19:\"215297-258x350.webp\";s:5:\"width\";i:258;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:31742;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(582, 140, '_wp_attached_file', '2024/06/titanic-210x300-1.jpg'),
(583, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:210;s:6:\"height\";i:300;s:4:\"file\";s:29:\"2024/06/titanic-210x300-1.jpg\";s:8:\"filesize\";i:19493;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"titanic-210x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7850;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:29:\"titanic-210x300-1-140x200.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9565;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 142, '_edit_lock', '1718296315:1'),
(589, 143, '_wp_attached_file', '2024/06/1974-superdad-1.jpg'),
(590, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:606;s:4:\"file\";s:27:\"2024/06/1974-superdad-1.jpg\";s:8:\"filesize\";i:244621;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-198x300.jpg\";s:5:\"width\";i:198;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15187;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7367;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-132x200.jpg\";s:5:\"width\";i:132;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8355;}s:16:\"single_thumbnail\";a:5:{s:4:\"file\";s:27:\"1974-superdad-1-231x350.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19064;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(593, 142, '_edit_last', '1'),
(596, 142, 'film_year_of_release', '2011'),
(597, 142, 'film_rating', '4'),
(598, 142, 'film_trailer_video', 'https://www.youtube.com/watch?v=XccOY7p9Ps4'),
(599, 142, 'film_description', 'film de comédie'),
(600, 145, '_edit_lock', '1718296300:1'),
(601, 146, '_wp_attached_file', '2024/06/Bugs-bunnyreclining.webp'),
(602, 146, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:340;s:6:\"height\";i:250;s:4:\"file\";s:32:\"2024/06/Bugs-bunnyreclining.webp\";s:8:\"filesize\";i:26452;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"Bugs-bunnyreclining-300x221.webp\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15520;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"Bugs-bunnyreclining-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7120;}s:15:\"films_thumbnail\";a:5:{s:4:\"file\";s:32:\"Bugs-bunnyreclining-272x200.webp\";s:5:\"width\";i:272;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13056;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(605, 145, '_edit_last', '1'),
(608, 145, 'film_year_of_release', '2001'),
(609, 145, 'film_rating', '5'),
(610, 145, 'film_trailer_video', 'https://www.youtube.com/watch?v=XccOY7p9Ps4'),
(611, 145, 'film_description', 'film de tout le monde'),
(616, 142, '_pingme', '1'),
(617, 142, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-06-11 12:19:00', '2024-06-11 12:19:00', '<!-- wp:paragraph -->\n<p>Welcome guys</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-06-12 07:03:18', '2024-06-12 07:03:18', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2024-06-11 12:19:00', '2024-06-11 12:19:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-06-11 14:11:55', '2024-06-11 14:11:55', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-06-11 12:19:00', '2024-06-11 12:19:00', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2024-06-12 07:02:25', '2024-06-12 07:02:25', '', 0, 'http://localhost:8888/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-06-11 12:19:02', '2024-06-11 12:19:02', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-06-11 12:19:02', '2024-06-11 12:19:02', '', 0, 'http://localhost:8888/2024/06/11/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-06-11 12:19:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-11 12:19:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=5', 0, 'post', '', 0),
(6, 1, '2024-06-11 13:42:52', '2024-06-11 13:42:52', '', 'ezgif.com-speed', '', 'inherit', 'open', 'closed', '', 'ezgif-com-speed', '', '', '2024-06-11 13:42:52', '2024-06-11 13:42:52', '', 0, 'http://localhost:8888/wp-content/uploads/2024/06/ezgif.com-speed.gif', 0, 'attachment', 'image/gif', 0),
(7, 1, '2024-06-11 13:43:26', '2024-06-11 13:43:26', 'http://localhost:8888/wp-content/uploads/2024/06/cropped-ezgif.com-speed.gif', 'cropped-ezgif.com-speed.gif', '', 'inherit', 'open', 'closed', '', 'cropped-ezgif-com-speed-gif', '', '', '2024-06-11 13:43:26', '2024-06-11 13:43:26', '', 6, 'http://localhost:8888/wp-content/uploads/2024/06/cropped-ezgif.com-speed.gif', 0, 'attachment', 'image/gif', 0),
(8, 1, '2024-06-11 13:43:37', '0000-00-00 00:00:00', '{\n    \"blogname\": {\n        \"value\": \"cinema\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 13:43:37\"\n    },\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 13:43:37\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0f47308c-f3cd-4a33-a912-aade86eb59cb', '', '', '2024-06-11 13:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2024-06-11 13:44:55', '2024-06-11 13:44:55', '{\n    \"blogname\": {\n        \"value\": \"cin\\u00e9ma\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 13:44:55\"\n    },\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 13:44:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '882d3494-df1e-4ee0-9c29-e9f8193fd693', '', '', '2024-06-11 13:44:55', '2024-06-11 13:44:55', '', 0, 'http://localhost:8888/2024/06/11/882d3494-df1e-4ee0-9c29-e9f8193fd693/', 0, 'customize_changeset', '', 0),
(10, 1, '2024-06-11 13:56:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-11 13:56:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=10', 0, 'post', '', 0),
(11, 1, '2024-06-11 13:56:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-11 13:56:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=11', 0, 'post', '', 0),
(12, 1, '2024-06-11 14:04:09', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-11 14:04:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2024-06-11 14:04:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-11 14:04:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2024-06-11 14:11:04', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 14:11:04\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 14:11:04\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 14:11:04\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8b0548fc-680a-45ca-95f1-5f1b6307b26d', '', '', '2024-06-11 14:11:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2024-06-11 14:11:55', '2024-06-11 14:11:55', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-06-11 14:11:55', '2024-06-11 14:11:55', '', 2, 'http://localhost:8888/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-06-11 14:12:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-06-11 14:12:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=16', 0, 'page', '', 0),
(17, 1, '2024-06-11 14:13:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-06-11 14:13:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2024-06-11 14:19:36', '2024-06-11 14:19:36', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2024-06-11 14:19:36', '2024-06-11 14:19:36', '', 0, 'http://localhost:8888/2024/06/11/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(19, 1, '2024-06-11 14:23:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-06-11 14:23:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=19', 0, 'wp_block', '', 0),
(20, 1, '2024-06-11 14:28:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-06-11 14:28:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=20', 0, 'wp_block', '', 0),
(21, 1, '2024-06-11 14:31:26', '2024-06-11 14:31:26', '<!-- wp:paragraph -->\n<p>Welcome guys</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-06-11 14:31:26', '2024-06-11 14:31:26', '', 1, 'http://localhost:8888/?p=21', 0, 'revision', '', 0),
(22, 1, '2024-06-11 23:11:07', '0000-00-00 00:00:00', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-11 23:11:07\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a4d27b9b-aabb-4176-9e08-bd3e652fbb23', '', '', '2024-06-11 23:11:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Random Content', 'Random', '', 'trash', 'closed', 'closed', '', 'random__trashed', '', '', '2024-06-13 06:36:55', '2024-06-13 06:36:55', '', 0, 'http://localhost:8888/random/', 0, 'page', '', 0),
(24, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Top Content', 'Top', '', 'trash', 'closed', 'closed', '', 'top__trashed', '', '', '2024-06-13 06:36:54', '2024-06-13 06:36:54', '', 0, 'http://localhost:8888/top/', 0, 'page', '', 0),
(25, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Contact Content', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2024-06-13 06:36:59', '2024-06-13 06:36:59', '', 0, 'http://localhost:8888/contact/', 0, 'page', '', 0),
(26, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Favorites Content', 'Favorites', '', 'trash', 'closed', 'closed', '', 'favorites__trashed', '', '', '2024-06-13 06:36:57', '2024-06-13 06:36:57', '', 0, 'http://localhost:8888/favorites/', 0, 'page', '', 0),
(27, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Letter Content', 'Letter', '', 'trash', 'closed', 'closed', '', 'letter__trashed', '', '', '2024-06-12 07:02:22', '2024-06-12 07:02:22', '', 0, 'http://localhost:8888/letter/', 0, 'page', '', 0),
(28, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Alphabet Content', 'Alphabet', '', 'trash', 'closed', 'closed', '', 'alphabet__trashed', '', '', '2024-06-13 06:37:02', '2024-06-13 06:37:02', '', 0, 'http://localhost:8888/alphabet/', 0, 'page', '', 0),
(29, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Collection Content', 'Collection', '', 'publish', 'closed', 'closed', '', 'collection', '', '', '2024-06-13 12:49:26', '2024-06-13 12:49:26', '', 0, 'http://localhost:8888/collection/', 0, 'page', '', 0),
(30, 1, '2024-06-11 23:11:20', '2024-06-11 23:11:20', 'Networks Content', 'Networks', '', 'trash', 'closed', 'closed', '', 'networks__trashed', '', '', '2024-06-12 07:02:20', '2024-06-12 07:02:20', '', 0, 'http://localhost:8888/networks/', 0, 'page', '', 0),
(31, 1, '2024-06-12 06:32:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-12 06:32:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=31', 0, 'post', '', 0),
(32, 1, '2024-06-12 06:34:09', '2024-06-12 06:34:09', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 06:34:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b1adb1bb-3512-4db9-80d7-28c3d7ca73b4', '', '', '2024-06-12 06:34:09', '2024-06-12 06:34:09', '', 0, 'http://localhost:8888/b1adb1bb-3512-4db9-80d7-28c3d7ca73b4/', 0, 'customize_changeset', '', 0),
(33, 1, '2024-06-12 06:55:16', '2024-06-12 06:55:16', '', 'wordpress-movies', '', 'trash', 'open', 'open', '', 'wordpress-movies__trashed', '', '', '2024-06-12 07:03:20', '2024-06-12 07:03:20', '', 0, 'http://localhost:8888/?p=33', 0, 'post', '', 0),
(34, 1, '2024-06-12 06:55:16', '2024-06-12 06:55:16', '', 'wordpress-movies', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2024-06-12 06:55:16', '2024-06-12 06:55:16', '', 33, 'http://localhost:8888/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-06-12 07:02:20', '2024-06-12 07:02:20', 'Networks Content', 'Networks', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-06-12 07:02:20', '2024-06-12 07:02:20', '', 30, 'http://localhost:8888/?p=35', 0, 'revision', '', 0),
(36, 1, '2024-06-12 07:02:22', '2024-06-12 07:02:22', 'Letter Content', 'Letter', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2024-06-12 07:02:22', '2024-06-12 07:02:22', '', 27, 'http://localhost:8888/?p=36', 0, 'revision', '', 0),
(37, 1, '2024-06-12 07:02:25', '2024-06-12 07:02:25', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-06-12 07:02:25', '2024-06-12 07:02:25', '', 3, 'http://localhost:8888/?p=37', 0, 'revision', '', 0),
(38, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2024-06-12 07:04:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-12 07:04:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2024-06-12 07:08:58', '2024-06-12 07:08:58', '{\n    \"wordpress-cinema::nav_menu_locations[header]\": {\n        \"value\": -5837876423242152000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:08:58\"\n    },\n    \"nav_menu[-5837876423242152000]\": {\n        \"value\": {\n            \"name\": \"categorie\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:08:58\"\n    },\n    \"nav_menu_item[-9076211129035035000]\": {\n        \"value\": {\n            \"object_id\": 24,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Top\",\n            \"url\": \"http://localhost:8888/top/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Top\",\n            \"nav_menu_term_id\": -5837876423242152000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:08:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e1b21f22-0d74-4ad0-aaf1-7030f60f0756', '', '', '2024-06-12 07:08:58', '2024-06-12 07:08:58', '', 0, 'http://localhost:8888/e1b21f22-0d74-4ad0-aaf1-7030f60f0756/', 0, 'customize_changeset', '', 0),
(47, 1, '2024-06-12 07:09:29', '2024-06-12 07:09:29', '{\n    \"nav_menu_item[-3621338751380969500]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-4770342288157391000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-5402882993956092000]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"Action\",\n            \"url\": \"http://localhost:8888/category/action/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Action\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-5048575442011367000]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"Com\\u00e9die\",\n            \"url\": \"http://localhost:8888/category/comedie/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Com\\u00e9die\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-6824621002661974000]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"Documentaire\",\n            \"url\": \"http://localhost:8888/category/documentaire/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Documentaire\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-4261602920648831000]\": {\n        \"value\": {\n            \"object_id\": 3,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"taxonomy\",\n            \"title\": \"Drama\",\n            \"url\": \"http://localhost:8888/category/drama/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Drama\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-6744897387398867000]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"Horreur\",\n            \"url\": \"http://localhost:8888/category/horreur/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Horreur\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-799531712740018200]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"taxonomy\",\n            \"title\": \"Movies\",\n            \"url\": \"http://localhost:8888/category/movies/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Movies\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    },\n    \"nav_menu_item[-6176225121578899000]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"taxonomy\",\n            \"title\": \"Science-Fiction\",\n            \"url\": \"http://localhost:8888/category/science-fiction/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Science-Fiction\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Category\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:09:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '47640bec-1d76-44c0-a8bf-174690b21a1a', '', '', '2024-06-12 07:09:29', '2024-06-12 07:09:29', '', 0, 'http://localhost:8888/47640bec-1d76-44c0-a8bf-174690b21a1a/', 0, 'customize_changeset', '', 0),
(48, 1, '2024-06-13 12:53:07', '2024-06-12 07:09:29', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/48/', 1, 'nav_menu_item', '', 0),
(49, 1, '2024-06-13 12:53:07', '2024-06-12 07:09:29', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 11, 'http://localhost:8888/49/', 2, 'nav_menu_item', '', 0),
(50, 1, '2024-06-13 12:53:07', '2024-06-12 07:09:29', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/50/', 3, 'nav_menu_item', '', 0),
(53, 1, '2024-06-13 12:53:07', '2024-06-12 07:09:29', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/53/', 4, 'nav_menu_item', '', 0),
(54, 1, '2024-06-13 12:53:07', '2024-06-12 07:09:29', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/54/', 5, 'nav_menu_item', '', 0),
(55, 1, '2024-06-12 07:11:43', '2024-06-12 07:11:43', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 07:11:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e36e0070-e732-497f-8daa-e6ecef0b0aed', '', '', '2024-06-12 07:11:43', '2024-06-12 07:11:43', '', 0, 'http://localhost:8888/e36e0070-e732-497f-8daa-e6ecef0b0aed/', 0, 'customize_changeset', '', 0),
(56, 1, '2024-06-12 22:11:26', '2024-06-12 22:11:26', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 22:11:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec047cec-5d59-47fc-a9c0-35c5cd5ed586', '', '', '2024-06-12 22:11:26', '2024-06-12 22:11:26', '', 0, 'http://localhost:8888/ec047cec-5d59-47fc-a9c0-35c5cd5ed586/', 0, 'customize_changeset', '', 0),
(57, 1, '2024-06-12 22:12:18', '2024-06-12 22:12:18', '{\n    \"nav_menu_item[-5167669285687050000]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"taxonomy\",\n            \"title\": \"Horreur\",\n            \"url\": \"http://localhost:8888/category/horreur/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Horreur\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 22:12:18\"\n    },\n    \"nav_menu_item[-3621024399063511000]\": {\n        \"value\": {\n            \"object_id\": 3,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"taxonomy\",\n            \"title\": \"Drama\",\n            \"url\": \"http://localhost:8888/category/drama/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Drama\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 22:12:18\"\n    },\n    \"nav_menu_item[-7763191168571881000]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 11,\n            \"type\": \"taxonomy\",\n            \"title\": \"Documentaire\",\n            \"url\": \"http://localhost:8888/category/documentaire/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Documentaire\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 22:12:18\"\n    },\n    \"nav_menu_item[-2922179624683925500]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 12,\n            \"type\": \"taxonomy\",\n            \"title\": \"Com\\u00e9die\",\n            \"url\": \"http://localhost:8888/category/comedie/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Com\\u00e9die\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 22:12:18\"\n    },\n    \"nav_menu_item[-5550135807543255000]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 13,\n            \"type\": \"taxonomy\",\n            \"title\": \"Action\",\n            \"url\": \"http://localhost:8888/category/action/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Action\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-12 22:12:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e72bd69c-a1c4-4da1-b6de-d9211eeda59d', '', '', '2024-06-12 22:12:18', '2024-06-12 22:12:18', '', 0, 'http://localhost:8888/e72bd69c-a1c4-4da1-b6de-d9211eeda59d/', 0, 'customize_changeset', '', 0),
(58, 1, '2024-06-13 12:53:07', '2024-06-12 22:12:18', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/58/', 6, 'nav_menu_item', '', 0),
(59, 1, '2024-06-13 12:53:07', '2024-06-12 22:12:18', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/59/', 7, 'nav_menu_item', '', 0),
(63, 1, '2024-06-13 06:25:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-13 06:25:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2024-06-13 06:25:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-13 06:25:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2024-06-13 06:25:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-13 06:25:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2024-06-13 06:25:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-06-13 06:25:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2024-06-13 06:26:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-06-13 06:26:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=67', 0, 'page', '', 0),
(68, 1, '2024-06-13 06:36:54', '2024-06-13 06:36:54', 'Top Content', 'Top', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2024-06-13 06:36:54', '2024-06-13 06:36:54', '', 24, 'http://localhost:8888/?p=68', 0, 'revision', '', 0),
(69, 1, '2024-06-13 06:36:55', '2024-06-13 06:36:55', 'Random Content', 'Random', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-06-13 06:36:55', '2024-06-13 06:36:55', '', 23, 'http://localhost:8888/?p=69', 0, 'revision', '', 0),
(70, 1, '2024-06-13 06:36:57', '2024-06-13 06:36:57', 'Favorites Content', 'Favorites', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2024-06-13 06:36:57', '2024-06-13 06:36:57', '', 26, 'http://localhost:8888/?p=70', 0, 'revision', '', 0),
(71, 1, '2024-06-13 06:36:59', '2024-06-13 06:36:59', 'Contact Content', 'Contact', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-06-13 06:36:59', '2024-06-13 06:36:59', '', 25, 'http://localhost:8888/?p=71', 0, 'revision', '', 0),
(72, 1, '2024-06-13 06:37:02', '2024-06-13 06:37:02', 'Alphabet Content', 'Alphabet', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2024-06-13 06:37:02', '2024-06-13 06:37:02', '', 28, 'http://localhost:8888/?p=72', 0, 'revision', '', 0),
(73, 1, '2024-06-13 06:38:06', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 06:38:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=73', 0, 'post', '', 0),
(74, 1, '2024-06-13 06:38:48', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 06:38:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=74', 0, 'post', '', 0),
(77, 1, '2024-06-13 12:53:07', '2024-06-13 06:49:32', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2024-06-13 12:53:07', '2024-06-13 12:53:07', '', 0, 'http://localhost:8888/?p=77', 8, 'nav_menu_item', '', 0),
(78, 1, '2024-06-13 06:49:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 06:49:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=78', 0, 'post', '', 0),
(79, 1, '2024-06-13 06:49:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 06:49:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=79', 0, 'post', '', 0),
(80, 1, '2024-06-13 06:49:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 06:49:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=80', 0, 'post', '', 0),
(82, 1, '2024-06-13 07:16:59', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 07:16:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=82', 0, 'post', '', 0),
(83, 1, '2024-06-13 07:23:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-06-13 07:23:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=83', 0, 'page', '', 0),
(84, 1, '2024-06-13 07:28:00', '2024-06-13 07:28:00', '', 'ezgif.com-speed', '', 'inherit', 'open', 'closed', '', 'ezgif-com-speed-2', '', '', '2024-06-13 07:28:17', '2024-06-13 07:28:17', '', 0, 'http://localhost:8888/wp-content/uploads/2024/06/ezgif.com-speed.gif', 0, 'attachment', 'image/gif', 0),
(85, 1, '2024-06-13 07:28:40', '2024-06-13 07:28:40', 'http://localhost:8888/wp-content/uploads/2024/06/cropped-ezgif.com-speed.gif', 'cropped-ezgif.com-speed.gif', '', 'inherit', 'open', 'closed', '', 'cropped-ezgif-com-speed-gif-2', '', '', '2024-06-13 07:28:40', '2024-06-13 07:28:40', '', 84, 'http://localhost:8888/wp-content/uploads/2024/06/cropped-ezgif.com-speed.gif', 0, 'attachment', 'image/gif', 0),
(86, 1, '2024-06-13 07:29:45', '2024-06-13 07:29:45', '{\n    \"blogdescription\": {\n        \"value\": \"ESGI-Movies\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-13 07:29:40\"\n    },\n    \"site_icon\": {\n        \"value\": 85,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-13 07:29:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c9c9b67-1f83-4fae-b130-ab8bbe652170', '', '', '2024-06-13 07:29:45', '2024-06-13 07:29:45', '', 0, 'http://localhost:8888/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2024-06-13 07:31:42', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-06-13 07:31:42\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '11a52dd4-bbc2-4408-b551-e3bd3e0f030d', '', '', '2024-06-13 07:31:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=87', 0, 'customize_changeset', '', 0),
(88, 1, '2024-06-13 12:13:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-06-13 12:13:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=88', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2024-06-13 12:16:55', '2024-06-13 12:16:55', '<h6><img class=\"alignnone size-full wp-image-90\" src=\"http://localhost:8888/wp-content/uploads/2024/06/titanic-150x150-1.jpg\" alt=\"\" width=\"150\" height=\"150\" /></h6>\r\n<div>\r\n<div class=\"yTFeqb wp-ms oJxARb nBWfrd i8qq8b\" data-hveid=\"CC4QAA\">\r\n<div class=\"WFxqwc BGdUVb OTFaAf\">\r\n<div class=\"xGj8Mb\">\r\n<div class=\"wDYxhc\" data-attrid=\"kc:/film/film:theatrical region aware release date\" data-md=\"1001\" data-hveid=\"CBwQAA\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQkCl6BAgcEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQyxMoAHoECBwQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\">Date de sortie : </span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\">7 janvier 1998 (<a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=France&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3SCmKN1HiBLHSLHIsk7WMspOt9NMyc3LBhFVJRmpiSVFmcmKOQlFqemZ-nkJieWJRKpCTk5pYnKqQkliSuoiVza0oMS85dQcr4y52Jg4GALNaFCpcAAAA&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECBwQAg\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECBwQAg\">France</a>)</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CB0QAA\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQkCl6BAgdEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQyxMoAHoECB0QAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\">Réalisateur : </span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=James+Cameron&amp;si=ACC90nyvvWro6QmnyY1IfSdgk5wwjB1r8BGd_IWRjXqmKPQqm09PVmIlWluZYO-o5nzvbhed_WUjxMxfS8U9CTQjK_8Q-Gd8WiBgg9lvFYX291Mg_Pk-mHnph6czNqopELwLEppavfYJUoPGg73JqoZlycAUn9RTHzIm5e0iHoC7RCTiTHyPpvLD8QqLnolPdfGfESbN1x4F&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECB0QAg\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECB0QAg\">James Cameron</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" data-attrid=\"kc:/film/film:music\" data-md=\"1001\" data-hveid=\"CBoQAA\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQkCl6BAgaEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQyxMoAHoECBoQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\">Bande originale : </span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=James+Horner&amp;si=ACC90nzx_D3_zUKRnpAjmO0UBLNxnt7EyN4YYdru6U3bxLI-L9pwob8-vVvK64xPvBYEWefpuhCgATgtZNDlQjfWEPN0QAQIG54Ef7ebOr9YKt42jWf9Wk9prq_RtKWmeliZgSqCHFXEseTxsPyOG9DL4AClWG5pRfS0Mun1YiSEcFj9xyGoKliI34MenbMi_MbdJ5QDoYAQ&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECBoQAg\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECBoQAg\">James Horner</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" data-attrid=\"kc:/film/film:screenplay\" data-md=\"1001\" data-hveid=\"CB8QAA\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQkCl6BAgfEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQyxMoAHoECB8QAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\">Scénario : </span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=James+Cameron&amp;si=ACC90nyvvWro6QmnyY1IfSdgk5wwjB1r8BGd_IWRjXqmKPQqm09PVmIlWluZYO-o5nzvbhed_WUjxMxfS8U9CTQjK_8Q-Gd8WiBgg9lvFYX291Mg_Pk-mHnph6czNqopELwLEppavfYJUoPGg73JqoZlycAUn9RTHzIm5e0iHoC7RCTiTHyPpvLD8QqLnolPdfGfESbN1x4F&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECB8QAg\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECB8QAg\">James Cameron</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" data-attrid=\"kc:/award/award_winner:nominations\" data-md=\"1001\" data-hveid=\"CCMQAA\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQkCl6BAgjEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQyxMoAHoECCMQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\">Nominations : </span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=Oscar+de+la+meilleure+actrice&amp;si=ACC90nyvvWro6QmnyY1IfSdgk5wwjB1r8BGd_IWRjXqmKPQqm6ZDM7PMBBt1CN2Ace1umE8m32VrWXBo0_0AbAu_yGZg-bN_d_hDrBw1yzhPhD1EjLwb73gTfPbjRKzXI8JkPfhOXFudQDE3IRHfaz3_KFZukhDL75w2tamYaoQs3kNIeuMKlkNkNdSVycGEZ6vSD15qQ9RCHUfOcpIlo96Hh01QQdKVBaeKgX6AEWIlcFc0Gpjl9tdimjAX4rB3Flwss_yN4H8d9kTzMK87rFDFX-Zq4UG_bDbk0qZYBV0jYKAE2WI1bSo%3D&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECCMQAg\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECCMQAg\">Oscar de la meilleure actrice</a>, <a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=titanic+film,+1997+nominations&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3SCmKN9FSyk620k8sTyxKgZDx5Zl5ealFVnn5uZl5iSWZ-XnFi1jlSjJLEvMykxXSMnNydRQMLS3NFZAUAAAJxpgiUQAAAA&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQ44YBKAF6BAgjEAM\"><span class=\"SW5pqf\">PLUS </span></a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"wDYxhc\" data-attrid=\"ss:/webfacts:pay_de_product\" data-md=\"1001\" data-hveid=\"CCAQAA\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQkCl6BAggEAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQyxMoAHoECCAQAQ\">\r\n<div class=\"rVusze\"><span class=\"w8qArf\">Pays de production : </span><span class=\"LrzXr kno-fv wHYlTd z8gr9e\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;sca_esv=ba8d56c099ffe98e&amp;sca_upv=1&amp;rlz=1C5GCCM_en&amp;biw=1512&amp;bih=858&amp;q=%C3%89tats-Unis&amp;stick=H4sIAAAAAAAAAONgVuLUz9U3sEw2LzdYxMp9uLMksaRYNzQvsxgAqdG-khsAAAA&amp;ved=2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECCAQAg\" data-ved=\"2ahUKEwix37TDx9iGAxWNT6QEHYfMAiMQmxMoAHoECCAQAg\">États-Unis</a></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"PmPt7d QprcBd ApHyTb\"></div>', 'Titanic', '', 'publish', 'open', 'closed', '', 'titanic', '', '', '2024-06-13 12:16:55', '2024-06-13 12:16:55', '', 0, 'http://localhost:8888/?post_type=films&#038;p=89', 0, 'films', '', 0),
(90, 1, '2024-06-13 12:15:25', '2024-06-13 12:15:25', '', 'titanic-150x150', '', 'inherit', 'open', 'closed', '', 'titanic-150x150', '', '', '2024-06-13 12:15:25', '2024-06-13 12:15:25', '', 89, 'http://localhost:8888/wp-content/uploads/2024/06/titanic-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2024-06-13 12:19:48', '2024-06-13 12:19:48', '<img class=\"alignnone size-medium wp-image-92\" src=\"http://localhost:8888/wp-content/uploads/2024/06/81Z7PowQQDL._AC_UF10001000_QL80_-241x300.jpg\" alt=\"\" width=\"241\" height=\"300\" />\r\n<ul>\r\n 	<li><strong>Titre</strong> : The Conjuring</li>\r\n 	<li><strong>Contenu</strong> : The Conjuring est un film d\'horreur américain de 2013 réalisé par James Wan. Il raconte l\'histoire de deux enquêteurs paranormaux, Ed et Lorraine Warren, qui viennent en aide à une famille terrorisée par une présence sinistre dans leur ferme isolée.</li>\r\n 	<li><strong>Catégorie</strong> : horreur</li>\r\n</ul>', 'The Conjuring', '', 'publish', 'open', 'closed', '', 'the-conjuring', '', '', '2024-06-13 12:19:48', '2024-06-13 12:19:48', '', 0, 'http://localhost:8888/?post_type=films&#038;p=91', 0, 'films', '', 0),
(92, 1, '2024-06-13 12:19:32', '2024-06-13 12:19:32', '', '81Z7PowQQDL._AC_UF1000,1000_QL80_', '', 'inherit', 'open', 'closed', '', '81z7powqqdl-_ac_uf10001000_ql80_', '', '', '2024-06-13 12:19:32', '2024-06-13 12:19:32', '', 91, 'http://localhost:8888/wp-content/uploads/2024/06/81Z7PowQQDL._AC_UF10001000_QL80_.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2024-06-13 12:21:01', '2024-06-13 12:21:01', '<ul>\r\n 	<li><strong>Titre</strong> : Superbad</li>\r\n 	<li><strong>Contenu</strong> : Superbad est une comédie américaine de 2007 réalisée par Greg Mottola. Le film suit deux amis inséparables, Seth et Evan, alors qu\'ils naviguent dans les défis de la fin du lycée et tentent de profiter de leur dernière fête avant de partir pour l\'université.</li>\r\n 	<li><strong>Catégorie</strong> : comédie</li>\r\n 	<li><strong>Image à la une</strong> : Une image du film \"Superbad\".<img class=\"alignnone size-medium wp-image-94\" src=\"http://localhost:8888/wp-content/uploads/2024/06/1974-superdad-1-198x300.jpg\" alt=\"\" width=\"198\" height=\"300\" /></li>\r\n</ul>', 'Superbad', '', 'publish', 'open', 'closed', '', 'superbad', '', '', '2024-06-13 12:22:50', '2024-06-13 12:22:50', '', 0, 'http://localhost:8888/?post_type=films&#038;p=93', 0, 'films', '', 0),
(94, 1, '2024-06-13 12:20:45', '2024-06-13 12:20:45', '', '1974-superdad-1', '', 'inherit', 'open', 'closed', '', '1974-superdad-1', '', '', '2024-06-13 12:20:45', '2024-06-13 12:20:45', '', 93, 'http://localhost:8888/wp-content/uploads/2024/06/1974-superdad-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2024-06-13 12:22:01', '2024-06-13 12:22:01', '<ul>\r\n 	<li><strong>Titre</strong> : Mad Max: Fury Road</li>\r\n 	<li><strong>Contenu</strong> : Mad Max: Fury Road est un film d\'action post-apocalyptique de 2015 réalisé par George Miller. Le film suit Max Rockatansky alors qu\'il s\'allie à Furiosa pour échapper à un tyran et sauver un groupe de jeunes femmes captives.</li>\r\n 	<li><strong>Catégorie</strong> : action<img class=\"alignnone size-medium wp-image-96\" src=\"http://localhost:8888/wp-content/uploads/2024/06/215297-221x300.webp\" alt=\"\" width=\"221\" height=\"300\" /></li>\r\n</ul>', 'Mad Max: Fury Road', '', 'publish', 'open', 'closed', '', 'mad-max-fury-road', '', '', '2024-06-13 12:22:37', '2024-06-13 12:22:37', '', 0, 'http://localhost:8888/?post_type=films&#038;p=95', 0, 'films', '', 0),
(96, 1, '2024-06-13 12:21:50', '2024-06-13 12:21:50', '', '215297', '', 'inherit', 'open', 'closed', '', '215297', '', '', '2024-06-13 12:21:50', '2024-06-13 12:21:50', '', 95, 'http://localhost:8888/wp-content/uploads/2024/06/215297.webp', 0, 'attachment', 'image/webp', 0),
(97, 1, '2024-06-13 12:22:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2024-06-13 12:22:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=films&p=97', 0, 'films', '', 0),
(98, 1, '2024-06-13 12:24:15', '2024-06-13 12:24:15', '<h3 class=\"LC20lb MBeuO DKV0Md\">Meilleurs films de science fiction<img class=\"alignnone size-medium wp-image-99\" src=\"http://localhost:8888/wp-content/uploads/2024/06/2036046983-248x300.jpg\" alt=\"\" width=\"248\" height=\"300\" /></h3>', 'Avatar', '', 'publish', 'open', 'closed', '', 'avatar', '', '', '2024-06-13 12:24:15', '2024-06-13 12:24:15', '', 0, 'http://localhost:8888/?post_type=films&#038;p=98', 0, 'films', '', 0),
(99, 1, '2024-06-13 12:24:11', '2024-06-13 12:24:11', '', '2036046983', '', 'inherit', 'open', 'closed', '', '2036046983', '', '', '2024-06-13 12:24:11', '2024-06-13 12:24:11', '', 98, 'http://localhost:8888/wp-content/uploads/2024/06/2036046983.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2024-06-13 12:25:36', '2024-06-13 12:25:36', 'serie sur M8\r\n\r\n<img class=\"alignnone size-medium wp-image-101\" src=\"http://localhost:8888/wp-content/uploads/2024/06/d54bbf222b4b5758a7916287c26ef1eb-221x300.webp\" alt=\"machine\" width=\"221\" height=\"300\" />', 'Machine', '', 'publish', 'open', 'closed', '', 'machine', '', '', '2024-06-13 12:25:36', '2024-06-13 12:25:36', '', 0, 'http://localhost:8888/?post_type=films&#038;p=100', 0, 'films', '', 0),
(101, 1, '2024-06-13 12:25:21', '2024-06-13 12:25:21', '', 'd54bbf222b4b5758a7916287c26ef1eb', '', 'inherit', 'open', 'closed', '', 'd54bbf222b4b5758a7916287c26ef1eb', '', '', '2024-06-13 12:25:30', '2024-06-13 12:25:30', '', 100, 'http://localhost:8888/wp-content/uploads/2024/06/d54bbf222b4b5758a7916287c26ef1eb.webp', 0, 'attachment', 'image/webp', 0),
(102, 1, '2024-06-13 12:26:06', '2024-06-13 12:26:06', 'Film espagnole\r\n\r\n<img class=\"alignnone size-medium wp-image-7\" src=\"http://localhost:8888/wp-content/uploads/2024/06/cropped-ezgif.com-speed-300x300.gif\" alt=\"\" width=\"300\" height=\"300\" />', 'Quizz', '', 'publish', 'open', 'closed', '', 'quizz', '', '', '2024-06-13 12:26:29', '2024-06-13 12:26:29', '', 0, 'http://localhost:8888/?post_type=films&#038;p=102', 0, 'films', '', 0),
(103, 1, '2024-06-13 12:27:28', '2024-06-13 12:27:28', '<img class=\"alignnone size-medium wp-image-104\" src=\"http://localhost:8888/wp-content/uploads/2024/06/animauxalaloupeblog-300x195.png\" alt=\"\" width=\"300\" height=\"195\" />', 'documentaire sur les animaux', '', 'publish', 'open', 'closed', '', 'documentaire-sur-les-animaux', '', '', '2024-06-13 12:27:28', '2024-06-13 12:27:28', '', 0, 'http://localhost:8888/?post_type=films&#038;p=103', 0, 'films', '', 0),
(104, 1, '2024-06-13 12:27:16', '2024-06-13 12:27:16', '', 'animauxalaloupeblog', '', 'inherit', 'open', 'closed', '', 'animauxalaloupeblog', '', '', '2024-06-13 12:27:16', '2024-06-13 12:27:16', '', 103, 'http://localhost:8888/wp-content/uploads/2024/06/animauxalaloupeblog.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2024-06-13 12:28:27', '2024-06-13 12:28:27', '<img class=\"alignnone size-full wp-image-108\" src=\"http://localhost:8888/wp-content/uploads/2024/06/uncharted-1.jpg\" alt=\"\" width=\"193\" height=\"262\" />', 'Film connu', '', 'publish', 'open', 'closed', '', 'film-connu', '', '', '2024-06-13 12:28:27', '2024-06-13 12:28:27', '', 0, 'http://localhost:8888/?post_type=films&#038;p=105', 0, 'films', '', 0),
(106, 1, '2024-06-13 12:28:14', '2024-06-13 12:28:14', '', 'sinister', '', 'inherit', 'open', 'closed', '', 'sinister', '', '', '2024-06-13 12:28:14', '2024-06-13 12:28:14', '', 105, 'http://localhost:8888/wp-content/uploads/2024/06/sinister-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2024-06-13 12:28:14', '2024-06-13 12:28:14', '', 'sur_la_terre_des_dinosaures-150x150', '', 'inherit', 'open', 'closed', '', 'sur_la_terre_des_dinosaures-150x150', '', '', '2024-06-13 12:28:14', '2024-06-13 12:28:14', '', 105, 'http://localhost:8888/wp-content/uploads/2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2024-06-13 12:28:14', '2024-06-13 12:28:14', '', 'uncharted', '', 'inherit', 'open', 'closed', '', 'uncharted', '', '', '2024-06-13 12:28:14', '2024-06-13 12:28:14', '', 105, 'http://localhost:8888/wp-content/uploads/2024/06/uncharted-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2024-06-13 12:28:45', '2024-06-13 12:28:45', '<img class=\"alignnone size-full wp-image-107\" src=\"http://localhost:8888/wp-content/uploads/2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg\" alt=\"\" width=\"150\" height=\"150\" />', 'Sur la terre', '', 'publish', 'open', 'closed', '', 'sur-la-terre', '', '', '2024-06-13 12:29:29', '2024-06-13 12:29:29', '', 0, 'http://localhost:8888/?post_type=films&#038;p=109', 0, 'films', '', 0),
(110, 1, '2024-06-13 12:29:15', '2024-06-13 12:29:15', '<img class=\"alignnone size-full wp-image-106\" src=\"http://localhost:8888/wp-content/uploads/2024/06/sinister-1.jpg\" alt=\"\" width=\"194\" height=\"259\" />', 'Comme jamais', '', 'publish', 'open', 'closed', '', 'comme-jamais', '', '', '2024-06-13 12:29:15', '2024-06-13 12:29:15', '', 0, 'http://localhost:8888/?post_type=films&#038;p=110', 0, 'films', '', 0),
(122, 1, '2024-06-13 12:49:26', '2024-06-13 12:49:26', 'Collection Content', 'Collection', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2024-06-13 12:49:26', '2024-06-13 12:49:26', '', 29, 'http://localhost:8888/?p=122', 0, 'revision', '', 0),
(123, 1, '2024-06-13 14:37:29', '2024-06-13 14:37:29', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/titanic-210x300-1.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Titanic', '', 'publish', 'open', 'open', '', 'titanic', '', '', '2024-06-13 16:27:22', '2024-06-13 16:27:22', '', 0, 'http://localhost:8888/?p=123', 0, 'post', '', 0),
(124, 1, '2024-06-13 14:37:29', '2024-06-13 14:37:29', '', 'Titanic', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2024-06-13 14:37:29', '2024-06-13 14:37:29', '', 123, 'http://localhost:8888/?p=124', 0, 'revision', '', 0),
(125, 1, '2024-06-13 16:21:58', '2024-06-13 16:21:58', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":136,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/215297-755x1024.webp\" alt=\"\" class=\"wp-image-136\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Mad Max', '', 'publish', 'open', 'open', '', 'mad-max', '', '', '2024-06-13 16:26:12', '2024-06-13 16:26:12', '', 0, 'http://localhost:8888/?p=125', 0, 'post', '', 0),
(126, 1, '2024-06-13 16:21:58', '2024-06-13 16:21:58', '', 'Mad Max', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2024-06-13 16:21:58', '2024-06-13 16:21:58', '', 125, 'http://localhost:8888/?p=126', 0, 'revision', '', 0),
(127, 1, '2024-06-13 16:23:38', '2024-06-13 16:23:38', '<!-- wp:image {\"id\":133,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg\" alt=\"\" class=\"wp-image-133\"/></figure>\n<!-- /wp:image -->', 'Sur la terre des annimaux', '', 'publish', 'open', 'open', '', 'sur-la-terre-des-annimaux', '', '', '2024-06-13 16:25:36', '2024-06-13 16:25:36', '', 0, 'http://localhost:8888/?p=127', 0, 'post', '', 0),
(128, 1, '2024-06-13 16:23:38', '2024-06-13 16:23:38', '', 'Sur la terre des annimaux', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2024-06-13 16:23:38', '2024-06-13 16:23:38', '', 127, 'http://localhost:8888/?p=128', 0, 'revision', '', 0),
(129, 1, '2024-06-13 16:25:04', '2024-06-13 16:25:04', '<!-- wp:image {\"id\":131,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/sinister-1-194x200-1.jpg\" alt=\"\" class=\"wp-image-131\"/></figure>\n<!-- /wp:image -->', 'Sinistre', '', 'publish', 'open', 'open', '', 'sinistre', '', '', '2024-06-13 16:25:18', '2024-06-13 16:25:18', '', 0, 'http://localhost:8888/?p=129', 0, 'post', '', 0),
(130, 1, '2024-06-13 16:25:04', '2024-06-13 16:25:04', '', 'Sinistre', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2024-06-13 16:25:04', '2024-06-13 16:25:04', '', 129, 'http://localhost:8888/?p=130', 0, 'revision', '', 0),
(131, 1, '2024-06-13 16:25:16', '2024-06-13 16:25:16', '', 'sinister-1-194x200-1', '', 'inherit', 'open', 'closed', '', 'sinister-1-194x200-1', '', '', '2024-06-13 16:25:16', '2024-06-13 16:25:16', '', 129, 'http://localhost:8888/wp-content/uploads/2024/06/sinister-1-194x200-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2024-06-13 16:25:17', '2024-06-13 16:25:17', '<!-- wp:image {\"id\":131,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/sinister-1-194x200-1.jpg\" alt=\"\" class=\"wp-image-131\"/></figure>\n<!-- /wp:image -->', 'Sinistre', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2024-06-13 16:25:17', '2024-06-13 16:25:17', '', 129, 'http://localhost:8888/?p=132', 0, 'revision', '', 0),
(133, 1, '2024-06-13 16:25:34', '2024-06-13 16:25:34', '', 'sur_la_terre_des_dinosaures-150x150-1', '', 'inherit', 'open', 'closed', '', 'sur_la_terre_des_dinosaures-150x150-1', '', '', '2024-06-13 16:25:34', '2024-06-13 16:25:34', '', 127, 'http://localhost:8888/wp-content/uploads/2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2024-06-13 16:25:35', '2024-06-13 16:25:35', '<!-- wp:image {\"id\":133,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/sur_la_terre_des_dinosaures-150x150-1.jpg\" alt=\"\" class=\"wp-image-133\"/></figure>\n<!-- /wp:image -->', 'Sur la terre des annimaux', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2024-06-13 16:25:35', '2024-06-13 16:25:35', '', 127, 'http://localhost:8888/?p=134', 0, 'revision', '', 0),
(135, 1, '2024-06-13 16:25:49', '2024-06-13 16:25:49', '', '215297-150x150-1', '', 'inherit', 'open', 'closed', '', '215297-150x150-1', '', '', '2024-06-13 16:25:49', '2024-06-13 16:25:49', '', 125, 'http://localhost:8888/wp-content/uploads/2024/06/215297-150x150-1.webp', 0, 'attachment', 'image/webp', 0),
(136, 1, '2024-06-13 16:26:03', '2024-06-13 16:26:03', '', '215297', '', 'inherit', 'open', 'closed', '', '215297-2', '', '', '2024-06-13 16:26:03', '2024-06-13 16:26:03', '', 125, 'http://localhost:8888/wp-content/uploads/2024/06/215297.webp', 0, 'attachment', 'image/webp', 0),
(137, 1, '2024-06-13 16:26:08', '2024-06-13 16:26:08', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"blob:http://localhost:8888/cd7dfd02-4a09-4fe9-b616-f1822bff067d\" alt=\"\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Mad Max', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2024-06-13 16:26:08', '2024-06-13 16:26:08', '', 125, 'http://localhost:8888/?p=137', 0, 'revision', '', 0),
(138, 1, '2024-06-13 16:26:11', '2024-06-13 16:26:11', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":136,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/215297-755x1024.webp\" alt=\"\" class=\"wp-image-136\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Mad Max', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2024-06-13 16:26:11', '2024-06-13 16:26:11', '', 125, 'http://localhost:8888/?p=138', 0, 'revision', '', 0),
(140, 1, '2024-06-13 16:27:18', '2024-06-13 16:27:18', '', 'titanic-210x300-1', '', 'inherit', 'open', 'closed', '', 'titanic-210x300-1', '', '', '2024-06-13 16:27:18', '2024-06-13 16:27:18', '', 123, 'http://localhost:8888/wp-content/uploads/2024/06/titanic-210x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2024-06-13 16:27:21', '2024-06-13 16:27:21', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/titanic-210x300-1.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Titanic', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2024-06-13 16:27:21', '2024-06-13 16:27:21', '', 123, 'http://localhost:8888/?p=141', 0, 'revision', '', 0),
(142, 1, '2024-06-13 16:28:48', '2024-06-13 16:28:48', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":143,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/1974-superdad-1.jpg\" alt=\"\" class=\"wp-image-143\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Superdad', '', 'publish', 'open', 'open', '', 'superdad', '', '', '2024-06-13 16:31:54', '2024-06-13 16:31:54', '', 0, 'http://localhost:8888/?p=142', 0, 'post', '', 0),
(143, 1, '2024-06-13 16:28:43', '2024-06-13 16:28:43', '', '1974-superdad-1', '', 'inherit', 'open', 'closed', '', '1974-superdad-1-2', '', '', '2024-06-13 16:28:43', '2024-06-13 16:28:43', '', 142, 'http://localhost:8888/wp-content/uploads/2024/06/1974-superdad-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2024-06-13 16:28:48', '2024-06-13 16:28:48', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":143,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/1974-superdad-1.jpg\" alt=\"\" class=\"wp-image-143\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Superdad', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2024-06-13 16:28:48', '2024-06-13 16:28:48', '', 142, 'http://localhost:8888/?p=144', 0, 'revision', '', 0),
(145, 1, '2024-06-13 16:31:05', '2024-06-13 16:31:05', '<!-- wp:image {\"id\":146,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/Bugs-bunnyreclining.webp\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->', 'Box Bunny', '', 'publish', 'open', 'open', '', 'box-bunny', '', '', '2024-06-13 16:31:39', '2024-06-13 16:31:39', '', 0, 'http://localhost:8888/?p=145', 0, 'post', '', 0),
(146, 1, '2024-06-13 16:30:51', '2024-06-13 16:30:51', '', 'Bugs-bunnyreclining', '', 'inherit', 'open', 'closed', '', 'bugs-bunnyreclining', '', '', '2024-06-13 16:30:51', '2024-06-13 16:30:51', '', 145, 'http://localhost:8888/wp-content/uploads/2024/06/Bugs-bunnyreclining.webp', 0, 'attachment', 'image/webp', 0),
(147, 1, '2024-06-13 16:31:05', '2024-06-13 16:31:05', '<!-- wp:image {\"id\":146,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:8888/wp-content/uploads/2024/06/Bugs-bunnyreclining.webp\" alt=\"\" class=\"wp-image-146\"/></figure>\n<!-- /wp:image -->', 'Box Bunny', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2024-06-13 16:31:05', '2024-06-13 16:31:05', '', 145, 'http://localhost:8888/?p=147', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'TV Series', 'tv-series', 0),
(2, 'Action', 'action', 0),
(3, 'Drama', 'drama', 0),
(4, 'Comédie', 'comedie', 0),
(5, 'Science-Fiction', 'science-fiction', 0),
(6, 'Horreur', 'horreur', 0),
(7, 'Documentaire', 'documentaire', 0),
(8, 'twentytwentytwo', 'twentytwentytwo', 0),
(9, 'Movies', 'movies', 0),
(10, 'acceuil', 'acceuil', 0),
(11, 'humour', 'humour', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 8, 0),
(33, 1, 0),
(48, 10, 0),
(49, 10, 0),
(50, 10, 0),
(53, 10, 0),
(54, 10, 0),
(58, 10, 0),
(59, 10, 0),
(77, 10, 0),
(89, 3, 0),
(91, 6, 0),
(93, 4, 0),
(93, 11, 0),
(95, 2, 0),
(98, 5, 0),
(100, 1, 0),
(102, 9, 0),
(103, 7, 0),
(105, 2, 0),
(109, 7, 0),
(110, 6, 0),
(123, 3, 0),
(125, 2, 0),
(127, 7, 0),
(129, 6, 0),
(142, 1, 0),
(142, 2, 0),
(142, 3, 0),
(142, 5, 0),
(142, 7, 0),
(142, 9, 0),
(142, 11, 0),
(145, 1, 0),
(145, 2, 0),
(145, 3, 0),
(145, 5, 0),
(145, 7, 0),
(145, 9, 0),
(145, 11, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', 'rrire', 11, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 3),
(8, 8, 'wp_theme', '', 0, 1),
(9, 9, 'category', '', 0, 2),
(10, 10, 'nav_menu', '', 0, 8),
(11, 11, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'ectoplasm'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&posts_list_mode=excerpt'),
(19, 1, 'wp_user-settings-time', '1718288505'),
(20, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-06-13T12:49:15.687Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:3:{i:0;s:23:\"taxonomy-panel-category\";i:1;s:15:\"page-attributes\";i:2;s:14:\"featured-image\";}}s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'session_tokens', 'a:5:{s:64:\"d7b0c11e27013e49e012ae72514c6dfd721c62c751d378d38bb0a5dfc4ac50b4\";a:4:{s:10:\"expiration\";i:1719384105;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1718174505;}s:64:\"10aee7845705e23c4b40dffe3e292aed691ae907ac458a22242dd6d0491cc81b\";a:4:{s:10:\"expiration\";i:1718403026;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1718230226;}s:64:\"6b04ce3409bea277629fee9f8c1a7b9cfc5b940e81513ffbfc12ee66f3a8c73f\";a:4:{s:10:\"expiration\";i:1718432599;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1718259799;}s:64:\"c6182817b1f9487e1e9406d436fde1caf539e8cea9fe3d37a8cd8b3b51460a27\";a:4:{s:10:\"expiration\";i:1718457106;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1718284306;}s:64:\"0d73c9de7ec49d51cb1c4fa48b7e041c89a6c27b6ad61b2c0c8a9377414a4d55\";a:4:{s:10:\"expiration\";i:1718464089;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1718291289;}}'),
(24, 1, 'nav_menu_recently_edited', '10'),
(25, 1, 'edit_category_per_page', '20'),
(26, 1, 'edit_films_per_page', '20');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B.ExELhp/5bN1XXQLpw5Gmr/l6Mkui/', 'admin', 'ilyanagolmi@gmail.com', 'http://localhost:8888', '2024-06-11 12:19:00', '', 0, 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=863;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
