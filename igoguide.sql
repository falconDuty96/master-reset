-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 mars 2023 à 09:04
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `igoguide`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnements`
--

DROP TABLE IF EXISTS `abonnements`;
CREATE TABLE IF NOT EXISTS `abonnements` (
  `abonnements_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `abonnements_duree` varchar(50) NOT NULL,
  `etablissements_id` int NOT NULL,
  `abonnements_datedebut` date NOT NULL,
  `abonnements_datefin` date NOT NULL,
  `abonnements_createdAt` date NOT NULL,
  `abonnements_etat` varchar(10) NOT NULL,
  `abonnements_montant` varchar(100) NOT NULL,
  PRIMARY KEY (`abonnements_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `blogs_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `blogs_presentation` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `blogs_lien` text NOT NULL,
  `blogs_image` text NOT NULL,
  `blogs_createdAt` date NOT NULL,
  PRIMARY KEY (`blogs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`blogs_id`, `blogs_presentation`, `blogs_lien`, `blogs_image`, `blogs_createdAt`) VALUES
(10, 'Google', 'https://google.com', 'dashboard/uploads/phone-g75fd4bada_1920.jpg', '2023-03-15'),
(11, 'qsdfqsdf', 'sary', 'dashboard/uploads/photographer-g1cd664b18_1920.jpg', '2023-03-16');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `categories_nom` varchar(200) NOT NULL,
  `categories_texte` text NOT NULL,
  `categories_image1` text NOT NULL,
  `categories_image2` text NOT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_nom`, `categories_texte`, `categories_image1`, `categories_image2`) VALUES
(1, 'Hébergements ', 'Des nuits atypiques, c\'est assuré…insolites, c\'est probable…et des nuits magiques, c\'est certain! L\'univers que', 'dashboard/uploads/activite.jpg', 'dashboard/uploads/balade.jpg'),
(2, 'Où boire ?', 'Se retrouver entre amis ou en famille pour un partage de bons moments.', 'dashboard/uploads/bar.jpg', 'dashboard/uploads/hebergement_atypique.jpg'),
(3, 'Restaurants', 'Lorsque l\'on va au restaurant, on ne se contente plus de savourer un délicieux repas. On cherche aussi', 'dashboard/uploads/drinks-gdb6d36a89_1920.jpg', 'dashboard/uploads/brick-wall-g1e5f2117e_1920.jpg'),
(4, 'Balade', 'À la recherche d\'une activité dans le lieu où vous vous trouvez ? Envie de découvrir les régions françaises sous', 'dashboard/uploads/bike-ride-g0393d745a_1920.jpg', 'dashboard/uploads/little-girl-g9e8827e6c_1920.jpg'),
(5, 'Activités', 'À la recherche d\'une activité dans le lieu où vous vous trouvez ? Envie de découvrir les régions françaises sou', 'dashboard/uploads/photographer-g1cd664b18_1920.jpg', 'dashboard/uploads/child-ga45e57a49_1920.jpg'),
(6, 'Services', 'Et si pour animer votre soirée ou rendre votre séjour inoubliable, vous faisiez appel aux services d', 'dashboard/uploads/seo-g4696b6c02_1920.jpg', 'dashboard/uploads/phone-g75fd4bada_1920.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `ccm`
--

DROP TABLE IF EXISTS `ccm`;
CREATE TABLE IF NOT EXISTS `ccm` (
  `ccm_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ccm_entete` varchar(200) NOT NULL,
  `ccm_texte` varchar(200) NOT NULL,
  `ccm_image` text NOT NULL,
  `ccm_createdAt` date NOT NULL,
  PRIMARY KEY (`ccm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `ccm`
--

INSERT INTO `ccm` (`ccm_id`, `ccm_entete`, `ccm_texte`, `ccm_image`, `ccm_createdAt`) VALUES
(1, 'Etape 1: Choisir une destination !!!', 'Super ! Accédez', 'image/Comment/igoguide icone COMMENT CA MARCHE 1.png', '0000-00-00'),
(2, 'Etape 2: J\'ai trouvé, uh uh', 'Super ! Accédez à présent directement à sa fiche ! Tous ses renseignements dont ses photos, site, tarifs, adresse, mail et téléphone ci-trouvent', 'image/Comment/igoguide icone COMMENT CA MARCHE 2.png', '0000-00-00'),
(3, 'Etape 3: J\'y vais', 'Ah! Vous voyez ! Vos recherches étaient vraiment, faciles sur IGOguide!', 'image/Comment/igoguide icone COMMENT CA MARCHE 3.png', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `cgu`
--

DROP TABLE IF EXISTS `cgu`;
CREATE TABLE IF NOT EXISTS `cgu` (
  `cgu_id` int NOT NULL AUTO_INCREMENT,
  `cgu_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `cgu_entete` text COLLATE utf8mb4_general_ci NOT NULL,
  `cgu_contenu` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`cgu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cgu`
--

INSERT INTO `cgu` (`cgu_id`, `cgu_type`, `cgu_entete`, `cgu_contenu`) VALUES
(2, 'particulier', 'Qui somme nous ?', '<p><strong>IGOGUIDE</strong></p>\r\n<ol>\r\n<li>Une plateforme</li>\r\n<li>igoguide</li>\r\n<li>sdfsdfsdf</li>\r\n<li>sdf</li>\r\n<li>sd</li>\r\n<li>f</li>\r\n<li>sdf</li>\r\n</ol>'),
(3, 'particulier', 'qsdfqsdfqsdfqsdf', '<p>sqdfqsdfqsdf</p>'),
(4, 'particulier', 'qsdfqsdfqsdf', '<p>sqdfqsdfqsdf</p>');

-- --------------------------------------------------------

--
-- Structure de la table `cgv`
--

DROP TABLE IF EXISTS `cgv`;
CREATE TABLE IF NOT EXISTS `cgv` (
  `cgv_id` int NOT NULL AUTO_INCREMENT,
  `cgv_entete` text COLLATE utf8mb4_general_ci NOT NULL,
  `cgv_contenu` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`cgv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etablissements`
--

DROP TABLE IF EXISTS `etablissements`;
CREATE TABLE IF NOT EXISTS `etablissements` (
  `etablissements_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `etablissements_nom` varchar(200) NOT NULL,
  `etablissements_presentation` varchar(255) NOT NULL,
  `etablissements_adresse` varchar(255) NOT NULL,
  `etablissements_motcle` varchar(255) NOT NULL,
  `etablissements_longitude` varchar(255) NOT NULL,
  `etablissements_latitude` varchar(255) NOT NULL,
  `etablissements_codepostal` varchar(255) NOT NULL,
  `etablissements_departement` varchar(255) NOT NULL,
  `etablissements_region` varchar(255) NOT NULL,
  `etablissements_pays` varchar(255) NOT NULL,
  `etablissements_telephone` varchar(255) NOT NULL,
  `etablissements_email` varchar(255) NOT NULL,
  `etablissements_website` varchar(255) NOT NULL,
  `etablissements_socialsnetworks` varchar(255) NOT NULL,
  `etablissements_photo` text NOT NULL,
  `etablissements_informations` json NOT NULL,
  `users_id` int NOT NULL,
  `categories_id` int NOT NULL,
  `etablissements_createdAt` date NOT NULL,
  PRIMARY KEY (`etablissements_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `faq_question` text COLLATE utf8mb4_general_ci NOT NULL,
  `faq_contenu` text COLLATE utf8mb4_general_ci NOT NULL,
  `faq_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE IF NOT EXISTS `favoris` (
  `favoris_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `etablissements_id` int NOT NULL,
  `users_id` int NOT NULL,
  `favoris_createdAt` date NOT NULL,
  PRIMARY KEY (`favoris_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `mentions`
--

DROP TABLE IF EXISTS `mentions`;
CREATE TABLE IF NOT EXISTS `mentions` (
  `mentions_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `mentions_cgu` varchar(50) NOT NULL,
  `mentions_cgv` text NOT NULL,
  `mentions_legale` text NOT NULL,
  `mentions_confidentialites` varchar(50) NOT NULL,
  `mentions_faq` text NOT NULL,
  `mentions_disclosure` text NOT NULL,
  PRIMARY KEY (`mentions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20230313160800);

-- --------------------------------------------------------

--
-- Structure de la table `reseauxsociaux`
--

DROP TABLE IF EXISTS `reseauxsociaux`;
CREATE TABLE IF NOT EXISTS `reseauxsociaux` (
  `rs_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rs_name` varchar(50) NOT NULL,
  `rs_icon` text NOT NULL,
  `rs_lien` text NOT NULL,
  PRIMARY KEY (`rs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `superuser`
--

DROP TABLE IF EXISTS `superuser`;
CREATE TABLE IF NOT EXISTS `superuser` (
  `superuser_id` int NOT NULL AUTO_INCREMENT,
  `superuser_pseudo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `superuser_motdepasse` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `superuser_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`superuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `superuser`
--

INSERT INTO `superuser` (`superuser_id`, `superuser_pseudo`, `superuser_motdepasse`, `superuser_type`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_nom` varchar(200) NOT NULL,
  `users_prenoms` varchar(200) NOT NULL,
  `users_email` varchar(200) NOT NULL,
  `users_telephone` varchar(200) NOT NULL,
  `users_motdepasse` varchar(200) NOT NULL,
  `users_type` varchar(200) NOT NULL,
  `users_photo` text NOT NULL,
  `users_joinedAt` date NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
