-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 13 mars 2023 à 10:06
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testing`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add city', 7, 'add_city'),
(26, 'Can change city', 7, 'change_city'),
(27, 'Can delete city', 7, 'delete_city'),
(28, 'Can view city', 7, 'view_city'),
(29, 'Can add etablishment', 8, 'add_etablishment'),
(30, 'Can change etablishment', 8, 'change_etablishment'),
(31, 'Can delete etablishment', 8, 'delete_etablishment'),
(32, 'Can view etablishment', 8, 'view_etablishment'),
(33, 'Can add etablishment type', 9, 'add_etablishmenttype'),
(34, 'Can change etablishment type', 9, 'change_etablishmenttype'),
(35, 'Can delete etablishment type', 9, 'delete_etablishmenttype'),
(36, 'Can view etablishment type', 9, 'view_etablishmenttype'),
(37, 'Can add user type', 10, 'add_usertype'),
(38, 'Can change user type', 10, 'change_usertype'),
(39, 'Can delete user type', 10, 'delete_usertype'),
(40, 'Can view user type', 10, 'view_usertype'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add subscription', 12, 'add_subscription'),
(46, 'Can change subscription', 12, 'change_subscription'),
(47, 'Can delete subscription', 12, 'delete_subscription'),
(48, 'Can view subscription', 12, 'view_subscription'),
(49, 'Can add social', 13, 'add_social'),
(50, 'Can change social', 13, 'change_social'),
(51, 'Can delete social', 13, 'delete_social'),
(52, 'Can view social', 13, 'view_social'),
(53, 'Can add payment', 14, 'add_payment'),
(54, 'Can change payment', 14, 'change_payment'),
(55, 'Can delete payment', 14, 'delete_payment'),
(56, 'Can view payment', 14, 'view_payment'),
(57, 'Can add media', 15, 'add_media'),
(58, 'Can change media', 15, 'change_media'),
(59, 'Can delete media', 15, 'delete_media'),
(60, 'Can view media', 15, 'view_media'),
(61, 'Can add favoris', 16, 'add_favoris'),
(62, 'Can change favoris', 16, 'change_favoris'),
(63, 'Can delete favoris', 16, 'delete_favoris'),
(64, 'Can view favoris', 16, 'view_favoris'),
(65, 'Can add etablishment sub type', 17, 'add_etablishmentsubtype'),
(66, 'Can change etablishment sub type', 17, 'change_etablishmentsubtype'),
(67, 'Can delete etablishment sub type', 17, 'delete_etablishmentsubtype'),
(68, 'Can view etablishment sub type', 17, 'view_etablishmentsubtype'),
(69, 'Can add contact', 18, 'add_contact'),
(70, 'Can change contact', 18, 'change_contact'),
(71, 'Can delete contact', 18, 'delete_contact'),
(72, 'Can view contact', 18, 'view_contact'),
(73, 'Can add activite', 19, 'add_activite'),
(74, 'Can change activite', 19, 'change_activite'),
(75, 'Can delete activite', 19, 'delete_activite'),
(76, 'Can view activite', 19, 'view_activite'),
(77, 'Can add notification', 20, 'add_notification'),
(78, 'Can change notification', 20, 'change_notification'),
(79, 'Can delete notification', 20, 'delete_notification'),
(80, 'Can view notification', 20, 'view_notification'),
(81, 'Can add contact mail', 21, 'add_contactmail'),
(82, 'Can change contact mail', 21, 'change_contactmail'),
(83, 'Can delete contact mail', 21, 'delete_contactmail'),
(84, 'Can view contact mail', 21, 'view_contactmail'),
(85, 'Can add other', 22, 'add_other'),
(86, 'Can change other', 22, 'change_other'),
(87, 'Can delete other', 22, 'delete_other'),
(88, 'Can view other', 22, 'view_other'),
(89, 'Can add forfait', 23, 'add_forfait'),
(90, 'Can change forfait', 23, 'change_forfait'),
(91, 'Can delete forfait', 23, 'delete_forfait'),
(92, 'Can view forfait', 23, 'view_forfait'),
(93, 'Can add promotion', 24, 'add_promotion'),
(94, 'Can change promotion', 24, 'change_promotion'),
(95, 'Can delete promotion', 24, 'delete_promotion'),
(96, 'Can view promotion', 24, 'view_promotion'),
(97, 'Can add banner', 25, 'add_banner'),
(98, 'Can change banner', 25, 'change_banner'),
(99, 'Can delete banner', 25, 'delete_banner'),
(100, 'Can view banner', 25, 'view_banner');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'igoMaster', 'city'),
(8, 'igoMaster', 'etablishment'),
(9, 'igoMaster', 'etablishmenttype'),
(10, 'igoMaster', 'usertype'),
(11, 'igoMaster', 'user'),
(12, 'igoMaster', 'subscription'),
(13, 'igoMaster', 'social'),
(14, 'igoMaster', 'payment'),
(15, 'igoMaster', 'media'),
(16, 'igoMaster', 'favoris'),
(17, 'igoMaster', 'etablishmentsubtype'),
(18, 'igoMaster', 'contact'),
(19, 'igoMaster', 'activite'),
(20, 'igoMaster', 'notification'),
(21, 'igoMaster', 'contactmail'),
(22, 'igoMaster', 'other'),
(23, 'igoMaster', 'forfait'),
(24, 'igoMaster', 'promotion'),
(25, 'igoMaster', 'banner');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-13 06:52:58.005097'),
(2, 'auth', '0001_initial', '2023-03-13 06:52:58.346865'),
(3, 'admin', '0001_initial', '2023-03-13 06:52:58.495781'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-13 06:52:58.501765'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-13 06:52:58.507749'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-13 06:52:58.566592'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-13 06:52:58.599609'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-13 06:52:58.632245'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-13 06:52:58.639007'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-13 06:52:58.677303'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-13 06:52:58.679298'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-13 06:52:58.686421'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-13 06:52:58.715045'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-13 06:52:58.746119'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-13 06:52:58.778034'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-13 06:52:58.784224'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-13 06:52:58.816138'),
(18, 'igoMaster', '0001_initial', '2023-03-13 06:52:59.484716'),
(19, 'igoMaster', '0002_contactmail_notification', '2023-03-13 06:52:59.595220'),
(20, 'igoMaster', '0003_alter_user_phone', '2023-03-13 06:52:59.624142'),
(21, 'igoMaster', '0004_auto_20220901_1646', '2023-03-13 06:52:59.696947'),
(22, 'igoMaster', '0005_auto_20220902_2342', '2023-03-13 06:52:59.797855'),
(23, 'igoMaster', '0006_auto_20220907_1903', '2023-03-13 06:52:59.916686'),
(24, 'igoMaster', '0007_forfait_promotion', '2023-03-13 06:52:59.990503'),
(25, 'igoMaster', '0008_promotion_text', '2023-03-13 06:53:00.035415'),
(26, 'igoMaster', '0009_alter_contactmail_createdat', '2023-03-13 06:53:00.062312'),
(27, 'igoMaster', '0010_alter_contactmail_createdat', '2023-03-13 06:53:00.091747'),
(28, 'igoMaster', '0011_auto_20221123_0001', '2023-03-13 06:53:00.125867'),
(29, 'igoMaster', '0012_etablishmentsubtype_image', '2023-03-13 06:53:00.164273'),
(30, 'igoMaster', '0013_alter_user_joinedat', '2023-03-13 06:53:00.190504'),
(31, 'sessions', '0001_initial', '2023-03-13 06:53:00.223536');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_activite`
--

DROP TABLE IF EXISTS `igomaster_activite`;
CREATE TABLE IF NOT EXISTS `igomaster_activite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `children` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `pets` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `handicaps` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `breakfast` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `difficults` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_activite_etablishment_id_3b54d68f` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_banner`
--

DROP TABLE IF EXISTS `igomaster_banner`;
CREATE TABLE IF NOT EXISTS `igomaster_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_city`
--

DROP TABLE IF EXISTS `igomaster_city`;
CREATE TABLE IF NOT EXISTS `igomaster_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `country` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_contact`
--

DROP TABLE IF EXISTS `igomaster_contact`;
CREATE TABLE IF NOT EXISTS `igomaster_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `telephone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `website` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_contact_etablishment_id_d3669d7a` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_contactmail`
--

DROP TABLE IF EXISTS `igomaster_contactmail`;
CREATE TABLE IF NOT EXISTS `igomaster_contactmail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `isOpened` tinyint(1) NOT NULL,
  `fromUser` int NOT NULL,
  `createdAt` date NOT NULL,
  `toUser_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_contactmail_toUser_id_20d1a7b2` (`toUser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_etablishment`
--

DROP TABLE IF EXISTS `igomaster_etablishment`;
CREATE TABLE IF NOT EXISTS `igomaster_etablishment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `presentation` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `tags` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `createdAt` date NOT NULL,
  `city_id` int NOT NULL,
  `owner_id` int NOT NULL,
  `subType_id` int NOT NULL,
  `postal` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_etablishment_city_id_347ab774` (`city_id`),
  KEY `igoMaster_etablishment_owner_id_cfc182cf` (`owner_id`),
  KEY `igoMaster_etablishment_subType_id_03334f8a` (`subType_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_etablishmentsubtype`
--

DROP TABLE IF EXISTS `igomaster_etablishmentsubtype`;
CREATE TABLE IF NOT EXISTS `igomaster_etablishmentsubtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `type_id` int NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_etablishmentsubtype_type_id_f2a8843d` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_etablishmenttype`
--

DROP TABLE IF EXISTS `igomaster_etablishmenttype`;
CREATE TABLE IF NOT EXISTS `igomaster_etablishmenttype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_favoris`
--

DROP TABLE IF EXISTS `igomaster_favoris`;
CREATE TABLE IF NOT EXISTS `igomaster_favoris` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_favoris_etablishment_id_fc72f1aa` (`etablishment_id`),
  KEY `igoMaster_favoris_user_id_63fc24e1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_forfait`
--

DROP TABLE IF EXISTS `igomaster_forfait`;
CREATE TABLE IF NOT EXISTS `igomaster_forfait` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double NOT NULL,
  `duration` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_media`
--

DROP TABLE IF EXISTS `igomaster_media`;
CREATE TABLE IF NOT EXISTS `igomaster_media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_media_etablishment_id_cf6290d2` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_notification`
--

DROP TABLE IF EXISTS `igomaster_notification`;
CREATE TABLE IF NOT EXISTS `igomaster_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `isOpened` tinyint(1) NOT NULL,
  `fromUser` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `toUser_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_notification_toUser_id_baa93fc9` (`toUser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_other`
--

DROP TABLE IF EXISTS `igomaster_other`;
CREATE TABLE IF NOT EXISTS `igomaster_other` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `etablishment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_other_etablishment_id_f0c1a817` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_payment`
--

DROP TABLE IF EXISTS `igomaster_payment`;
CREATE TABLE IF NOT EXISTS `igomaster_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `subscription_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_payment_subscription_id_c8bdf83e` (`subscription_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_promotion`
--

DROP TABLE IF EXISTS `igomaster_promotion`;
CREATE TABLE IF NOT EXISTS `igomaster_promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `duration` int NOT NULL,
  `fee` double NOT NULL,
  `stopDate` date NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  `text` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_promotion_etablishment_id_9be7e698` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_social`
--

DROP TABLE IF EXISTS `igomaster_social`;
CREATE TABLE IF NOT EXISTS `igomaster_social` (
  `id` int NOT NULL AUTO_INCREMENT,
  `facebookName` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `instagramName` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `tweeterName` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `tiktokName` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_social_etablishment_id_5a4edb0c` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_subscription`
--

DROP TABLE IF EXISTS `igomaster_subscription`;
CREATE TABLE IF NOT EXISTS `igomaster_subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isActiive` tinyint(1) NOT NULL,
  `activeDuration` int NOT NULL,
  `fee` double NOT NULL,
  `stopDate` date NOT NULL,
  `createdAt` date NOT NULL,
  `etablishment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `igoMaster_subscription_etablishment_id_25997fd0` (`etablishment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_user`
--

DROP TABLE IF EXISTS `igomaster_user`;
CREATE TABLE IF NOT EXISTS `igomaster_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `FName` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Pass` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Photo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JoinedAt` date DEFAULT NULL,
  `Type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`Email`),
  KEY `igoMaster_user_Type_id_65671e35` (`Type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `igomaster_usertype`
--

DROP TABLE IF EXISTS `igomaster_usertype`;
CREATE TABLE IF NOT EXISTS `igomaster_usertype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
