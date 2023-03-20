-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 mars 2023 à 15:01
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

CREATE TABLE `abonnements` (
  `abonnements_id` int(10) UNSIGNED NOT NULL,
  `abonnements_duree` varchar(50) NOT NULL,
  `etablissements_id` int(11) NOT NULL,
  `abonnements_datedebut` date NOT NULL,
  `abonnements_datefin` date NOT NULL,
  `abonnements_createdAt` date NOT NULL,
  `abonnements_etat` varchar(10) NOT NULL,
  `abonnements_montant` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `blogs_id` int(10) UNSIGNED NOT NULL,
  `blogs_presentation` text DEFAULT NULL,
  `blogs_lien` text NOT NULL,
  `blogs_image` text NOT NULL,
  `blogs_createdAt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `categories` (
  `categories_id` int(10) UNSIGNED NOT NULL,
  `categories_nom` varchar(200) NOT NULL,
  `categories_texte` text NOT NULL,
  `categories_image1` text NOT NULL,
  `categories_image2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `ccm` (
  `ccm_id` int(10) UNSIGNED NOT NULL,
  `ccm_entete` varchar(200) NOT NULL,
  `ccm_texte` varchar(200) NOT NULL,
  `ccm_image` text NOT NULL,
  `ccm_createdAt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `cgu` (
  `cgu_id` int(11) NOT NULL,
  `cgu_type` varchar(20) NOT NULL,
  `cgu_entete` text NOT NULL,
  `cgu_contenu` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cgu`
--

INSERT INTO `cgu` (`cgu_id`, `cgu_type`, `cgu_entete`, `cgu_contenu`) VALUES
(2, 'particulier', 'Qui somme nous ?', '<p><strong>IGOGUIDE</strong></p>\r\n<ol>\r\n<li>Une plateforme</li>\r\n<li>igoguide</li>\r\n<li>sdfsdfsdf</li>\r\n<li>sdf</li>\r\n<li>sd</li>\r\n<li>f</li>\r\n<li>sdf</li>\r\n</ol>'),
(3, 'particulier', 'qsdfqsdfqsdfqsdf', '<p>sqdfqsdfqsdf</p>'),
(4, 'particulier', 'qsdfqsdfqsdf', '<p>sqdfqsdfqsdf</p>'),
(5, 'professionnel', 'qsdfqsdf', '<p>sqdfqsdfqsdf</p>'),
(6, 'professionnel', 'sqdfqsdfqsdf', '<p>qsdfqsdfqsdfazerazer</p>');

-- --------------------------------------------------------

--
-- Structure de la table `cgv`
--

CREATE TABLE `cgv` (
  `cgv_id` int(11) NOT NULL,
  `cgv_entete` text NOT NULL,
  `cgv_contenu` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cgv`
--

INSERT INTO `cgv` (`cgv_id`, `cgv_entete`, `cgv_contenu`) VALUES
(2, 'qsdfqsdf', '<p>qsdfqsdfqsfqsf</p>');

-- --------------------------------------------------------

--
-- Structure de la table `etablissements`
--

CREATE TABLE `etablissements` (
  `etablissements_id` int(10) UNSIGNED NOT NULL,
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
  `etablissements_fb` varchar(255) NOT NULL,
  `etablissements_insta` varchar(200) DEFAULT NULL,
  `etablissements_photo` text DEFAULT NULL,
  `etablissements_activites` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `etablissements_createdAt` date NOT NULL,
  `etablissements_ville` varchar(200) NOT NULL,
  `sous_categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etablissements`
--

INSERT INTO `etablissements` (`etablissements_id`, `etablissements_nom`, `etablissements_presentation`, `etablissements_adresse`, `etablissements_motcle`, `etablissements_longitude`, `etablissements_latitude`, `etablissements_codepostal`, `etablissements_departement`, `etablissements_region`, `etablissements_pays`, `etablissements_telephone`, `etablissements_email`, `etablissements_website`, `etablissements_fb`, `etablissements_insta`, `etablissements_photo`, `etablissements_activites`, `users_id`, `categories_id`, `etablissements_createdAt`, `etablissements_ville`, `sous_categories_id`) VALUES
(10, 'qsdfqsdf', 'qsdfqsdf', '13ème Arrondissement, Paris, France', 'qsdfqsdf', '2.3598969', '48.8261675', '75013', 'Département de Paris', 'Île-de-France', 'France', 'qsdfqsdf', 'qsdfqsdf', 'qsdf', 'qsdfqsfd', 'qsdf', 'pro/uploads/', '{\"Piscines\":\"on\",\"Salle de bain et W.C\":null,\"Animaux\":null,\"Lits doubles\":null,\"Lits superpos\\u00e9s\":null,\"Bain \\u00e0 remous\":null,\"Acc\\u00e8s \\u00e0 Internet\":null,\"Enfants\":null,\"Lits d\'appoints\":null,\"Accessible aux handicap\\u00e9s\":null,\"Sauna\":null,\"M\\u00e9nage inclus\":null,\"Petit d\\u00e9jeuner inclus\":null,\"Lits pour b\\u00e9b\\u00e9\":null,\"Possibilit\\u00e9 de manger sur place\":null,\"Cuisines\":null,\"Draps et linges inclus\":null,\"Lits simples\":null,\"Canap\\u00e9s lits\":null,\"Tarif\":\"100\",\"Capacit\\u00e9\":\"100\",\"Age minimum\":\"12\",\"Nombre de couchage\":\"5\"}', 3, 1, '2023-03-20', 'Paris', 2);

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_contenu` text NOT NULL,
  `faq_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_question`, `faq_contenu`, `faq_type`) VALUES
(3, 'qsdfqsdfqsdf', '<p>qsdfqsdfqsdf</p>', 'professionnel'),
(4, 'qsdfqsdf', '<p>qsdfqsdfazerazer</p>', 'professionnel');

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `favoris_id` int(10) UNSIGNED NOT NULL,
  `etablissements_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `favoris_createdAt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mentions`
--

CREATE TABLE `mentions` (
  `mentions_id` int(10) UNSIGNED NOT NULL,
  `mentions_cgu` varchar(50) NOT NULL,
  `mentions_cgv` text NOT NULL,
  `mentions_legale` text NOT NULL,
  `mentions_confidentialites` varchar(50) NOT NULL,
  `mentions_faq` text NOT NULL,
  `mentions_disclosure` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20230313160800);

-- --------------------------------------------------------

--
-- Structure de la table `reseauxsociaux`
--

CREATE TABLE `reseauxsociaux` (
  `rs_id` int(10) UNSIGNED NOT NULL,
  `rs_name` varchar(50) NOT NULL,
  `rs_icon` text NOT NULL,
  `rs_lien` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `sous_categories_id` int(11) NOT NULL,
  `sous_categories_nom` varchar(255) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sous_categories`
--

INSERT INTO `sous_categories` (`sous_categories_id`, `sous_categories_nom`, `categories_id`) VALUES
(1, 'cabane sous terre', 1),
(2, 'cabane sur l\'eau', 1),
(3, 'qsdfqsdf', 2),
(4, 'qsdfqsdfqdf', 3),
(5, 'qsdfqsdfqsfd', 4),
(6, 'qsdfqsdfazer', 5),
(7, 'qsreiooer', 6);

-- --------------------------------------------------------

--
-- Structure de la table `superuser`
--

CREATE TABLE `superuser` (
  `superuser_id` int(11) NOT NULL,
  `superuser_pseudo` varchar(50) DEFAULT NULL,
  `superuser_motdepasse` varchar(50) DEFAULT NULL,
  `superuser_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `superuser`
--

INSERT INTO `superuser` (`superuser_id`, `superuser_pseudo`, `superuser_motdepasse`, `superuser_type`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `users_id` int(10) UNSIGNED NOT NULL,
  `users_nom` varchar(200) NOT NULL,
  `users_prenoms` varchar(200) NOT NULL,
  `users_email` varchar(200) NOT NULL,
  `users_telephone` varchar(200) NOT NULL,
  `users_motdepasse` varchar(200) NOT NULL,
  `users_type` varchar(200) NOT NULL,
  `users_photo` text DEFAULT NULL,
  `users_joinedAt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`users_id`, `users_nom`, `users_prenoms`, `users_email`, `users_telephone`, `users_motdepasse`, `users_type`, `users_photo`, `users_joinedAt`) VALUES
(1, 'sqdfqsdf', 'qsdfqsdfqdsf', 'qsd@gmail.com', 'qsdfqsdf', 'c129b324aee662b04eccf68babba85851346dff9', 'particulier', NULL, '2023-03-03'),
(2, 'sqdfqsdf', 'qsdfqsdf', 'rakoto.jenny1996@gmail.com', 'sqdfqsdfqsfd', 'c129b324aee662b04eccf68babba85851346dff9', 'professionnel', NULL, '2023-03-03'),
(3, 'Rabezavana', 'Ralay', 'bezana@gmail.com', '0343403434', 'c129b324aee662b04eccf68babba85851346dff9', 'professionnel', 'pro/uploads/devenez_partenaire.png', '2023-03-03');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD PRIMARY KEY (`abonnements_id`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blogs_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Index pour la table `ccm`
--
ALTER TABLE `ccm`
  ADD PRIMARY KEY (`ccm_id`);

--
-- Index pour la table `cgu`
--
ALTER TABLE `cgu`
  ADD PRIMARY KEY (`cgu_id`);

--
-- Index pour la table `cgv`
--
ALTER TABLE `cgv`
  ADD PRIMARY KEY (`cgv_id`);

--
-- Index pour la table `etablissements`
--
ALTER TABLE `etablissements`
  ADD PRIMARY KEY (`etablissements_id`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`favoris_id`);

--
-- Index pour la table `mentions`
--
ALTER TABLE `mentions`
  ADD PRIMARY KEY (`mentions_id`);

--
-- Index pour la table `reseauxsociaux`
--
ALTER TABLE `reseauxsociaux`
  ADD PRIMARY KEY (`rs_id`);

--
-- Index pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD PRIMARY KEY (`sous_categories_id`);

--
-- Index pour la table `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`superuser_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnements`
--
ALTER TABLE `abonnements`
  MODIFY `abonnements_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blogs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ccm`
--
ALTER TABLE `ccm`
  MODIFY `ccm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cgu`
--
ALTER TABLE `cgu`
  MODIFY `cgu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cgv`
--
ALTER TABLE `cgv`
  MODIFY `cgv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `etablissements`
--
ALTER TABLE `etablissements`
  MODIFY `etablissements_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `favoris_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mentions`
--
ALTER TABLE `mentions`
  MODIFY `mentions_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reseauxsociaux`
--
ALTER TABLE `reseauxsociaux`
  MODIFY `rs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `sous_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `superuser`
--
ALTER TABLE `superuser`
  MODIFY `superuser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
