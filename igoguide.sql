-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 mars 2023 à 18:12
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

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

CREATE TABLE `abonnements` (
  `abonnements_id` int(10) UNSIGNED NOT NULL,
  `abonnements_duree` varchar(50) NOT NULL,
  `etablissements_id` int(11) NOT NULL,
  `abonnements_datedebut` date DEFAULT NULL,
  `abonnements_datefin` date DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `abonnements_createdAt` date NOT NULL,
  `abonnements_etat` varchar(10) NOT NULL,
  `abonnements_montant` varchar(100) NOT NULL,
  `abonnements_reference` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `abonnements`
--

INSERT INTO `abonnements` (`abonnements_id`, `abonnements_duree`, `etablissements_id`, `abonnements_datedebut`, `abonnements_datefin`, `users_id`, `abonnements_createdAt`, `abonnements_etat`, `abonnements_montant`, `abonnements_reference`) VALUES
(1, '1', 359, NULL, NULL, 420, '2023-03-24', 'non paye', '50', 'ref641d9f04ccfd8');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cgv`
--

INSERT INTO `cgv` (`cgv_id`, `cgv_entete`, `cgv_contenu`) VALUES
(2, 'qsdfqsdf', '<p>qsdfqsdfqsfqsf</p>');

-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

CREATE TABLE `emails` (
  `emails_id` int(11) NOT NULL,
  `emails_envoyeur` text NOT NULL,
  `emails_contenu` text NOT NULL,
  `emails_date` text NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emails`
--

INSERT INTO `emails` (`emails_id`, `emails_envoyeur`, `emails_contenu`, `emails_date`, `users_id`) VALUES
(1, 'rakoto@gmail.com', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Modi, sunt libero voluptate illo, molestiae expedita quam enim sapiente necessitatibus sequi voluptatem perspiciatis nobis unde repudiandae commodi reprehenderit aliquam magnam optio?', '2023/03/24', 422),
(2, 'rabezavana@gmail.com', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Modi, sunt libero voluptate illo, molestiae expedita quam enim sapiente necessitatibus sequi voluptatem perspiciatis nobis unde repudiandae commodi reprehenderit aliquam magnam optio?', '2023/03/24', 422);

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
  `etablissements_activites` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `etablissements_createdAt` date NOT NULL,
  `etablissements_ville` varchar(200) NOT NULL,
  `sous_categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `etablissements`
--

INSERT INTO `etablissements` (`etablissements_id`, `etablissements_nom`, `etablissements_presentation`, `etablissements_adresse`, `etablissements_motcle`, `etablissements_longitude`, `etablissements_latitude`, `etablissements_codepostal`, `etablissements_departement`, `etablissements_region`, `etablissements_pays`, `etablissements_telephone`, `etablissements_email`, `etablissements_website`, `etablissements_fb`, `etablissements_insta`, `etablissements_photo`, `etablissements_activites`, `users_id`, `categories_id`, `etablissements_createdAt`, `etablissements_ville`, `sous_categories_id`) VALUES
(1, 'Balade en bateau traditionnel sur la Loire', 'Balades et dégustation de produits régionaux à bord de bateaux traditionnels de Loire à Bouchemaine.', 'Quai de la Noé, Bouchemaine, France', 'activité,activite,activites', '-0.6065683', '47.4235151', '49080', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 6 71 55 28 67', 'contact@labatelleriedelaloire.fr', '-', 'https://www.facebook.com/LaBatelleriedeLoire/', '', '1_68UIrNM.jpg', '{}', 264, 4, '2022-12-07', 'Bouchemaine', 25),
(2, 'Balade en bateau traditionnel sur la Loire', 'Balades et dégustation de produits régionaux à bord de bateaux traditionnels de Loire à Bouchemaine.', 'Quai de la Noé, Bouchemaine, France', 'activité,activite,activites', '-0.6065683', '47.4235151', '49080', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 6 71 55 28 67', 'contact@labatelleriedelaloire.fr', '-', 'https://www.facebook.com/LaBatelleriedeLoire/', '', '2_P63zoSX.jpg', '{}', 264, 4, '2022-12-07', 'Bouchemaine', 25),
(3, 'Balade en bateau traditionnel sur la Loire', 'Balades et dégustation de produits régionaux à bord de bateaux traditionnels de Loire à Bouchemaine.', 'Quai de la Noé, Bouchemaine, France', 'activité,activite,activites', '-0.6065683', '47.4235151', '49080', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 6 71 55 28 67', 'contact@labatelleriedelaloire.fr', '-', 'https://www.facebook.com/LaBatelleriedeLoire/', '', '3_ZsPOoj6.jpg', '{}', 264, 4, '2022-12-07', 'Bouchemaine', 25),
(4, 'Balade en bateau traditionnel sur la Loire', 'Balades et dégustation de produits régionaux à bord de bateaux traditionnels de Loire à Bouchemaine.', 'Quai de la Noé, Bouchemaine, France', 'activité,activite,activites', '-0.6065683', '47.4235151', '49080', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 6 71 55 28 67', 'contact@labatelleriedelaloire.fr', '-', 'https://www.facebook.com/LaBatelleriedeLoire/', '', '5_L6vyGAy.jpg', '{}', 264, 4, '2022-12-07', 'Bouchemaine', 25),
(5, 'Balade en bateau traditionnel sur la Loire', 'Balades et dégustation de produits régionaux à bord de bateaux traditionnels de Loire à Bouchemaine.', 'Quai de la Noé, Bouchemaine, France', 'activité,activite,activites', '-0.6065683', '47.4235151', '49080', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 6 71 55 28 67', 'contact@labatelleriedelaloire.fr', '-', 'https://www.facebook.com/LaBatelleriedeLoire/', '', '6_Sq5N3HW.jpg', '{}', 264, 4, '2022-12-07', 'Bouchemaine', 25),
(6, 'Balade en bateau traditionnel sur la Loire', 'Balades et dégustation de produits régionaux à bord de bateaux traditionnels de Loire à Bouchemaine.', 'Quai de la Noé, Bouchemaine, France', 'activité,activite,activites', '-0.6065683', '47.4235151', '49080', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 6 71 55 28 67', 'contact@labatelleriedelaloire.fr', '-', 'https://www.facebook.com/LaBatelleriedeLoire/', '', '7_Fsh9DM0.jpg', '{}', 264, 4, '2022-12-07', 'Bouchemaine', 25),
(7, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '1_FzOu5Od.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(8, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '2_EYVZBMj.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(9, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '3_g9aNsve.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(10, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '4_cJyAG9z.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(11, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '5_39slBX0.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(12, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '7_fUIkyZb.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(13, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '8_92dlV0n.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(14, 'Promenade en mer avec vision sous-marine', 'Promenades en mer - Pêche en Mer - Navettes Collioure. KapMer est une entreprise familiale spécialisée dans les navettes entre Argelès et Collioure. ', 'Port-Argèles, Argelès-sur-Mer, France', 'Balade en mer', '3.0469451', '42.5424437', '66700', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 4 83 43 26 36', 'contact@kapmer.fr', '-', 'https://www.facebook.com/KapMer.Argeles/', '', '9_PIXidbI.jpg', '{}', 424, 4, '2022-12-23', 'Argelès-sur-Mer', 25),
(15, 'Balade découverte et animations avec les lamas', 'balade avec des lamas en  Maine et Loire...en découvrant le paysage', '3 Avort, Tuffalun, France', 'balade', '-0.2734515', '47.3122993', '49700', 'Maine-et-Loire', 'Pays de la Loire', 'France', ' 06 95 40 00 41', 'escapades-du-meugon@orange.fr', '-', '', '', '0_GXnA07O.webp', '{}', 258, 4, '2022-12-07', 'Tuffalun', 26),
(16, 'Balade découverte et animations avec les lamas', 'balade avec des lamas en  Maine et Loire...en découvrant le paysage', '3 Avort, Tuffalun, France', 'balade', '-0.2734515', '47.3122993', '49700', 'Maine-et-Loire', 'Pays de la Loire', 'France', ' 06 95 40 00 41', 'escapades-du-meugon@orange.fr', '-', '', '', '1_chWrX8A.webp', '{}', 258, 4, '2022-12-07', 'Tuffalun', 26),
(17, 'Balade découverte et animations avec les lamas', 'balade avec des lamas en  Maine et Loire...en découvrant le paysage', '3 Avort, Tuffalun, France', 'balade', '-0.2734515', '47.3122993', '49700', 'Maine-et-Loire', 'Pays de la Loire', 'France', ' 06 95 40 00 41', 'escapades-du-meugon@orange.fr', '-', '', '', '2_YP7PLLy.webp', '{}', 258, 4, '2022-12-07', 'Tuffalun', 26),
(18, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '1_4vdUSet.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(19, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '1_OMmaf1C.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(20, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '2_ZCqukdp.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(21, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '4_LWxD9yD.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(22, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '5_aXmhfEx.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(23, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '6_orQJYlq.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(24, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '6_ncsYXnz.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(25, 'Balade-découvert du marais vendéen en canoë ', 'Balades et randonnées en canoë  La Route du Sel propose un large choix de balades.', '49 Rue de Verdun, Sallertaine, France', 'Balade', '-1.9576166', '46.8599494', '85300', 'Vendée', 'Pays de la Loire', 'France', '+33 2 51 93 03 40', 'contact.routedusel@gmail.com', '-', 'https://www.facebook.com/LaRouteDuSelSallertaine', '', '9_7CTVKdK.jpg', '{}', 276, 4, '2022-12-08', 'Sallertaine', 26),
(26, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '1_a88MgpM.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(27, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '2_cJuD1Qs.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(28, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '3_mInZpyi.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(29, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '4_crXYxTw.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(30, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '5_ziNTBqx.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(31, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '6_g4EEL1n.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(32, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '9_5fl5V0U.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(33, 'Balade en skate électrique tout terrain', ' Initiation - Balade et randonnée en Skate électrique tout terrain', 'Boulevard de la Plage, Torreilles, France', 'Balade en skate', '3.0270311', '42.7654957', '66440', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 75 14 79 31', '66commesurdesroulettes@gmail.com', '-', 'https://www.facebook.com/66commesurdesroulettes', '', '8_InSH3e1.jpg', '{}', 406, 4, '2022-12-22', 'Torreilles', 26),
(34, 'Les mégalithes de Carnac', 'Haut-lieu de la civilisation mégalithique, le littoral morbihannais conserve de la période néolithique quelques-uns de ses plus beaux monuments.', 'Le Menec, 56340 Carnac, France', 'BALADE CIRCUIT', '-3.0813048', '47.5928622', '56340', 'Morbihan', 'Bretagne', 'France', '+33 2 97 52 29 81', 'carnac@monuments-nationaux.fr', '-', 'https://www.facebook.com/alignementscarnac', '', '2.png', '{}', 305, 4, '2022-12-09', 'Carnac', 27),
(35, 'Les mégalithes de Carnac', 'Haut-lieu de la civilisation mégalithique, le littoral morbihannais conserve de la période néolithique quelques-uns de ses plus beaux monuments.', 'Le Menec, 56340 Carnac, France', 'BALADE CIRCUIT', '-3.0813048', '47.5928622', '56340', 'Morbihan', 'Bretagne', 'France', '+33 2 97 52 29 81', 'carnac@monuments-nationaux.fr', '-', 'https://www.facebook.com/alignementscarnac', '', '3_dUxgO2v.jpg', '{}', 305, 4, '2022-12-09', 'Carnac', 27),
(36, 'Les mégalithes de Carnac', 'Haut-lieu de la civilisation mégalithique, le littoral morbihannais conserve de la période néolithique quelques-uns de ses plus beaux monuments.', 'Le Menec, 56340 Carnac, France', 'BALADE CIRCUIT', '-3.0813048', '47.5928622', '56340', 'Morbihan', 'Bretagne', 'France', '+33 2 97 52 29 81', 'carnac@monuments-nationaux.fr', '-', 'https://www.facebook.com/alignementscarnac', '', '4_61L6g3Z.jpg', '{}', 305, 4, '2022-12-09', 'Carnac', 27),
(37, 'Les mégalithes de Carnac', 'Haut-lieu de la civilisation mégalithique, le littoral morbihannais conserve de la période néolithique quelques-uns de ses plus beaux monuments.', 'Le Menec, 56340 Carnac, France', 'BALADE CIRCUIT', '-3.0813048', '47.5928622', '56340', 'Morbihan', 'Bretagne', 'France', '+33 2 97 52 29 81', 'carnac@monuments-nationaux.fr', '-', 'https://www.facebook.com/alignementscarnac', '', '1_MuD5D2i.jpg', '{}', 305, 4, '2022-12-09', 'Carnac', 27),
(38, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '001_tdith27.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(39, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '1_LQAPdRH.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(40, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '2_Y6gd285.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(41, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '3_8gACWfr.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(42, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '4_diinezQ.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(43, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '6_We7XZqy.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(44, 'Visite guidée de la cité et du château de Carcassonne', 'Visites guidées, excursions à Carcassonne et Pays Cathare. Visite privée, visite en famille.', 'Carcassonne, France', 'balade en occitanie', '2.3517703', '43.2132151', '11000', 'Aude', 'Occitanie', 'France', '+33 6 09 92 61 61', 'guidelanguedoc@gmail.com', '-', 'https://www.facebook.com/carcassonnevisiteguidee/', '', '9_Zw5kWG4.jpg', '{}', 389, 4, '2022-12-21', 'Carcassonne', 27),
(45, 'Balade tropicale au Tropicarium Bonsaï', 'L’exotisme règne en maître toute l’année au Tropicarium Bonsaï de La Baule.  Balade tropicale en plein cœur de la Baule ! La diversité florale du Tropicarium, ses Bonsaï, ses plantes rares ou encore son impressionnante collection de plantes grasses font d', 'Route de Brederac, La Baule-Escoublac, France', 'Balade', '-2.33162', '47.2818623', '44500', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 7 50 06 79 08', 'tropicarium.bonsai@orange.fr', '-', 'https://www.facebook.com/TropicariumBonsai/', '', '1_RNSIO1Z.jpg', '{}', 281, 4, '2022-12-08', 'La Baule-Escoublac', 28),
(46, 'Balade tropicale au Tropicarium Bonsaï', 'L’exotisme règne en maître toute l’année au Tropicarium Bonsaï de La Baule.  Balade tropicale en plein cœur de la Baule ! La diversité florale du Tropicarium, ses Bonsaï, ses plantes rares ou encore son impressionnante collection de plantes grasses font d', 'Route de Brederac, La Baule-Escoublac, France', 'Balade', '-2.33162', '47.2818623', '44500', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 7 50 06 79 08', 'tropicarium.bonsai@orange.fr', '-', 'https://www.facebook.com/TropicariumBonsai/', '', '2_TetiRBM.jpg', '{}', 281, 4, '2022-12-08', 'La Baule-Escoublac', 28),
(47, 'Balade tropicale au Tropicarium Bonsaï', 'L’exotisme règne en maître toute l’année au Tropicarium Bonsaï de La Baule.  Balade tropicale en plein cœur de la Baule ! La diversité florale du Tropicarium, ses Bonsaï, ses plantes rares ou encore son impressionnante collection de plantes grasses font d', 'Route de Brederac, La Baule-Escoublac, France', 'Balade', '-2.33162', '47.2818623', '44500', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 7 50 06 79 08', 'tropicarium.bonsai@orange.fr', '-', 'https://www.facebook.com/TropicariumBonsai/', '', '3_ffCCFZP.jpg', '{}', 281, 4, '2022-12-08', 'La Baule-Escoublac', 28),
(48, 'Balade tropicale au Tropicarium Bonsaï', 'L’exotisme règne en maître toute l’année au Tropicarium Bonsaï de La Baule.  Balade tropicale en plein cœur de la Baule ! La diversité florale du Tropicarium, ses Bonsaï, ses plantes rares ou encore son impressionnante collection de plantes grasses font d', 'Route de Brederac, La Baule-Escoublac, France', 'Balade', '-2.33162', '47.2818623', '44500', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 7 50 06 79 08', 'tropicarium.bonsai@orange.fr', '-', 'https://www.facebook.com/TropicariumBonsai/', '', '9_ZOK4xDI.jpg', '{}', 281, 4, '2022-12-08', 'La Baule-Escoublac', 28),
(49, 'Balade tropicale au Tropicarium Bonsaï', 'L’exotisme règne en maître toute l’année au Tropicarium Bonsaï de La Baule.  Balade tropicale en plein cœur de la Baule ! La diversité florale du Tropicarium, ses Bonsaï, ses plantes rares ou encore son impressionnante collection de plantes grasses font d', 'Route de Brederac, La Baule-Escoublac, France', 'Balade', '-2.33162', '47.2818623', '44500', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 7 50 06 79 08', 'tropicarium.bonsai@orange.fr', '-', 'https://www.facebook.com/TropicariumBonsai/', '', '8_O9n91dV.jpg', '{}', 281, 4, '2022-12-08', 'La Baule-Escoublac', 28),
(50, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '1_BCA13Vd.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(51, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '2_rQuOHOa.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(52, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '3_SAIhOr0.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(53, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '4_s0P9ycx.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(54, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '5_7G0VDIo.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(55, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '6_ZJvNEKF.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(56, 'Promenade en calèche en Camargue Gardoise', 'Faire découvrir la Camargue Gardoise en calèche. Partager la passion ou la découverte. Venez découvrir la Camargue Gardoise, classée Grand site de France, aux pas des chevaux. Installé dans nos calèches grand confort et couverte, dont une est adaptée au h', 'Pré des Mauves, Le Cailar, France', 'Balade ', '4.244324', '43.671512', '30740', 'Gard', 'Occitanie', 'France', '+33 6 86 67 82 80', 'lescalechesdecamargue@gmail.com', '-', 'https://www.facebook.com/lescalechesdecamargue/', '', '7_hQ7jaH4.jpg', '{}', 397, 4, '2022-12-22', 'Le Cailar', 28),
(57, 'Thomas Segaud ', 'Un souffleur de verre contemporain, artiste créateur, et qui transmet son savoir.  \r\nC’est à 17 ans que Thomas s’est découvert une passion pour le verre, une forme de coup de foudre, « l’appel du bruit assourdissant des fours de fusion et d’une matière se', '1 Rue Pixérécourt, Paris, France', 'activite,activité,activites', '2.3954507', '48.8702396', '75020', 'Département de Paris', 'Île-de-France', 'France', '670020650', 'contact@thomassegaud.com', '-', 'https://www.facebook.com/ThomasSegaudGlassSabbath/', '', '1_wXKhdHo.jpg', '{}', 180, 5, '2022-12-02', 'Paris', 30),
(58, 'Thomas Segaud ', 'Un souffleur de verre contemporain, artiste créateur, et qui transmet son savoir.  \r\nC’est à 17 ans que Thomas s’est découvert une passion pour le verre, une forme de coup de foudre, « l’appel du bruit assourdissant des fours de fusion et d’une matière se', '1 Rue Pixérécourt, Paris, France', 'activite,activité,activites', '2.3954507', '48.8702396', '75020', 'Département de Paris', 'Île-de-France', 'France', '670020650', 'contact@thomassegaud.com', '-', 'https://www.facebook.com/ThomasSegaudGlassSabbath/', '', '2_ewqagkY.jpg', '{}', 180, 5, '2022-12-02', 'Paris', 30),
(59, 'Thomas Segaud ', 'Un souffleur de verre contemporain, artiste créateur, et qui transmet son savoir.  \r\nC’est à 17 ans que Thomas s’est découvert une passion pour le verre, une forme de coup de foudre, « l’appel du bruit assourdissant des fours de fusion et d’une matière se', '1 Rue Pixérécourt, Paris, France', 'activite,activité,activites', '2.3954507', '48.8702396', '75020', 'Département de Paris', 'Île-de-France', 'France', '670020650', 'contact@thomassegaud.com', '-', 'https://www.facebook.com/ThomasSegaudGlassSabbath/', '', '3_PG4h2VG.jpg', '{}', 180, 5, '2022-12-02', 'Paris', 30),
(60, 'Thomas Segaud ', 'Un souffleur de verre contemporain, artiste créateur, et qui transmet son savoir.  \r\nC’est à 17 ans que Thomas s’est découvert une passion pour le verre, une forme de coup de foudre, « l’appel du bruit assourdissant des fours de fusion et d’une matière se', '1 Rue Pixérécourt, Paris, France', 'activite,activité,activites', '2.3954507', '48.8702396', '75020', 'Département de Paris', 'Île-de-France', 'France', '670020650', 'contact@thomassegaud.com', '-', 'https://www.facebook.com/ThomasSegaudGlassSabbath/', '', '4_wNE7kjC.jpg', '{}', 180, 5, '2022-12-02', 'Paris', 30),
(61, 'Thomas Segaud ', 'Un souffleur de verre contemporain, artiste créateur, et qui transmet son savoir.  \r\nC’est à 17 ans que Thomas s’est découvert une passion pour le verre, une forme de coup de foudre, « l’appel du bruit assourdissant des fours de fusion et d’une matière se', '1 Rue Pixérécourt, Paris, France', 'activite,activité,activites', '2.3954507', '48.8702396', '75020', 'Département de Paris', 'Île-de-France', 'France', '670020650', 'contact@thomassegaud.com', '-', 'https://www.facebook.com/ThomasSegaudGlassSabbath/', '', '5_0y3Vjgj.jpg', '{}', 180, 5, '2022-12-02', 'Paris', 30),
(62, 'Thomas Segaud ', 'Un souffleur de verre contemporain, artiste créateur, et qui transmet son savoir.  \r\nC’est à 17 ans que Thomas s’est découvert une passion pour le verre, une forme de coup de foudre, « l’appel du bruit assourdissant des fours de fusion et d’une matière se', '1 Rue Pixérécourt, Paris, France', 'activite,activité,activites', '2.3954507', '48.8702396', '75020', 'Département de Paris', 'Île-de-France', 'France', '670020650', 'contact@thomassegaud.com', '-', 'https://www.facebook.com/ThomasSegaudGlassSabbath/', '', '7_jru4jUz.jpg', '{}', 180, 5, '2022-12-02', 'Paris', 30),
(63, 'Sortie de voile sur bateau', 'Le Cercle de la Voile de Dieppe est un club proposant des stages navigation, croisière ou régate sur habitables. On vous propose des sorties de voiles sur bateau au bord des falaises', 'Quai du Carénage, 76200 Dieppe, France', 'activite,activité,activites', '1.0830483', '49.92704010000001', '76200', 'Seine-Maritime', 'Normandie', 'France', '+33 2 35 84 32 99', 'contact@cvdieppe.fr', '-', 'https://www.facebook.com/cvdieppe', '', '222_0g7L7kC.jpg', '{}', 184, 5, '2022-12-05', 'Dieppe', 30),
(64, 'Sortie de voile sur bateau', 'Le Cercle de la Voile de Dieppe est un club proposant des stages navigation, croisière ou régate sur habitables. On vous propose des sorties de voiles sur bateau au bord des falaises', 'Quai du Carénage, 76200 Dieppe, France', 'activite,activité,activites', '1.0830483', '49.92704010000001', '76200', 'Seine-Maritime', 'Normandie', 'France', '+33 2 35 84 32 99', 'contact@cvdieppe.fr', '-', 'https://www.facebook.com/cvdieppe', '', '223.jpg', '{}', 184, 5, '2022-12-05', 'Dieppe', 30),
(65, 'Sortie de voile sur bateau', 'Le Cercle de la Voile de Dieppe est un club proposant des stages navigation, croisière ou régate sur habitables. On vous propose des sorties de voiles sur bateau au bord des falaises', 'Quai du Carénage, 76200 Dieppe, France', 'activite,activité,activites', '1.0830483', '49.92704010000001', '76200', 'Seine-Maritime', 'Normandie', 'France', '+33 2 35 84 32 99', 'contact@cvdieppe.fr', '-', 'https://www.facebook.com/cvdieppe', '', '224.jpg', '{}', 184, 5, '2022-12-05', 'Dieppe', 30),
(66, 'Sortie de voile sur bateau', 'Le Cercle de la Voile de Dieppe est un club proposant des stages navigation, croisière ou régate sur habitables. On vous propose des sorties de voiles sur bateau au bord des falaises', 'Quai du Carénage, 76200 Dieppe, France', 'activite,activité,activites', '1.0830483', '49.92704010000001', '76200', 'Seine-Maritime', 'Normandie', 'France', '+33 2 35 84 32 99', 'contact@cvdieppe.fr', '-', 'https://www.facebook.com/cvdieppe', '', '225.jpg', '{}', 184, 5, '2022-12-05', 'Dieppe', 30),
(67, 'Sortie de voile sur bateau', 'Le Cercle de la Voile de Dieppe est un club proposant des stages navigation, croisière ou régate sur habitables. On vous propose des sorties de voiles sur bateau au bord des falaises', 'Quai du Carénage, 76200 Dieppe, France', 'activite,activité,activites', '1.0830483', '49.92704010000001', '76200', 'Seine-Maritime', 'Normandie', 'France', '+33 2 35 84 32 99', 'contact@cvdieppe.fr', '-', 'https://www.facebook.com/cvdieppe', '', '226.jpg', '{}', 184, 5, '2022-12-05', 'Dieppe', 30),
(68, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '1_TRNSk3w.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(69, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '3_lJHowY2.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(70, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '4_JJTrk2J.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(71, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '5_lM6ofOy.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(72, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '6_Kg5TsAb.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(73, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '7_SiOyrQ6.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(74, 'La Manivelle Cartonnage', 'Atelier de création en cartonnage situé en Normandie 76640, meubles sur mesure , sur commande. Le cartonnage est la discipline, voire l’art qui permet de transformer du carton en meubles, en objets décoratifs et utiles. L’atelier La manivelle vous offre c', 'La manivelle, 490 Route de la Mer, 76640 Cliponville, France', 'activité atelier et stage', '0.6582496', '49.6770984', '76640', 'Seine-Maritime', 'Normandie', 'France', '+33 6 81 70 34 52', 'emmanuellezaree@lamanivelle.fr', '-', 'https://www.facebook.com/lamanivelle.fr', '', '9_8fkqrel.jpg', '{}', 297, 5, '2022-12-09', 'Cliponville', 30),
(75, 'Evasion Rafting Morvan', 'rafting kayak  avec de super moniteur. Activité physique et ludique en famille ou entre amis', 'Le Pont, 58140 Chalaux, France', 'activite,activité,activites', '3.919582', '47.340531', '58140', 'Nièvre', 'Bourgogne-Franche-Comté', 'France', '386249433', 'evasionraftingmorvan@gmail.com', '-', '', '', '002_R7tX6LM.jpg', '{}', 153, 5, '2022-12-02', 'Chalaux', 31),
(76, 'Evasion Rafting Morvan', 'rafting kayak  avec de super moniteur. Activité physique et ludique en famille ou entre amis', 'Le Pont, 58140 Chalaux, France', 'activite,activité,activites', '3.919582', '47.340531', '58140', 'Nièvre', 'Bourgogne-Franche-Comté', 'France', '386249433', 'evasionraftingmorvan@gmail.com', '-', '', '', '003_Qb2sbUB.jpg', '{}', 153, 5, '2022-12-02', 'Chalaux', 31),
(77, 'Evasion Rafting Morvan', 'rafting kayak  avec de super moniteur. Activité physique et ludique en famille ou entre amis', 'Le Pont, 58140 Chalaux, France', 'activite,activité,activites', '3.919582', '47.340531', '58140', 'Nièvre', 'Bourgogne-Franche-Comté', 'France', '386249433', 'evasionraftingmorvan@gmail.com', '-', '', '', '004_AjAbHRc.jpg', '{}', 153, 5, '2022-12-02', 'Chalaux', 31),
(78, 'Evasion Rafting Morvan', 'rafting kayak  avec de super moniteur. Activité physique et ludique en famille ou entre amis', 'Le Pont, 58140 Chalaux, France', 'activite,activité,activites', '3.919582', '47.340531', '58140', 'Nièvre', 'Bourgogne-Franche-Comté', 'France', '386249433', 'evasionraftingmorvan@gmail.com', '-', '', '', '005_NwuAx35.jpg', '{}', 153, 5, '2022-12-02', 'Chalaux', 31),
(79, 'Evasion Rafting Morvan', 'rafting kayak  avec de super moniteur. Activité physique et ludique en famille ou entre amis', 'Le Pont, 58140 Chalaux, France', 'activite,activité,activites', '3.919582', '47.340531', '58140', 'Nièvre', 'Bourgogne-Franche-Comté', 'France', '386249433', 'evasionraftingmorvan@gmail.com', '-', '', '', '006_gWNJsdY.jpg', '{}', 153, 5, '2022-12-02', 'Chalaux', 31),
(80, 'Paris jump', 'Vous souhaitez réaliser ou offrir un saut en parachute tandem ? Vous habitez à Paris ou sa région ?  Ne cherchez plus, vous êtes à la bonne adresse', 'Centre de Vol à Voile (CVVSFC), Aérodrome de Saint-Florentin - Chéu, 89600 Chéu, France', 'actvite,activité,activité sportive', '3.7712622', '47.98154470000001', '89600', 'Yonne', 'Bourgogne-Franche-Comté', 'France', '658637799', 'contact@parisjump.com', '-', 'https://www.facebook.com/parisjump', '', '333.jpg', '{}', 164, 5, '2022-12-02', 'Chéu', 31),
(81, 'Paris jump', 'Vous souhaitez réaliser ou offrir un saut en parachute tandem ? Vous habitez à Paris ou sa région ?  Ne cherchez plus, vous êtes à la bonne adresse', 'Centre de Vol à Voile (CVVSFC), Aérodrome de Saint-Florentin - Chéu, 89600 Chéu, France', 'actvite,activité,activité sportive', '3.7712622', '47.98154470000001', '89600', 'Yonne', 'Bourgogne-Franche-Comté', 'France', '658637799', 'contact@parisjump.com', '-', 'https://www.facebook.com/parisjump', '', '999.jpg', '{}', 164, 5, '2022-12-02', 'Chéu', 31),
(82, 'Paris jump', 'Vous souhaitez réaliser ou offrir un saut en parachute tandem ? Vous habitez à Paris ou sa région ?  Ne cherchez plus, vous êtes à la bonne adresse', 'Centre de Vol à Voile (CVVSFC), Aérodrome de Saint-Florentin - Chéu, 89600 Chéu, France', 'actvite,activité,activité sportive', '3.7712622', '47.98154470000001', '89600', 'Yonne', 'Bourgogne-Franche-Comté', 'France', '658637799', 'contact@parisjump.com', '-', 'https://www.facebook.com/parisjump', '', '888.jpg', '{}', 164, 5, '2022-12-02', 'Chéu', 31),
(83, 'Paris jump', 'Vous souhaitez réaliser ou offrir un saut en parachute tandem ? Vous habitez à Paris ou sa région ?  Ne cherchez plus, vous êtes à la bonne adresse', 'Centre de Vol à Voile (CVVSFC), Aérodrome de Saint-Florentin - Chéu, 89600 Chéu, France', 'actvite,activité,activité sportive', '3.7712622', '47.98154470000001', '89600', 'Yonne', 'Bourgogne-Franche-Comté', 'France', '658637799', 'contact@parisjump.com', '-', 'https://www.facebook.com/parisjump', '', '555.jpg', '{}', 164, 5, '2022-12-02', 'Chéu', 31),
(84, 'Paris jump', 'Vous souhaitez réaliser ou offrir un saut en parachute tandem ? Vous habitez à Paris ou sa région ?  Ne cherchez plus, vous êtes à la bonne adresse', 'Centre de Vol à Voile (CVVSFC), Aérodrome de Saint-Florentin - Chéu, 89600 Chéu, France', 'actvite,activité,activité sportive', '3.7712622', '47.98154470000001', '89600', 'Yonne', 'Bourgogne-Franche-Comté', 'France', '658637799', 'contact@parisjump.com', '-', 'https://www.facebook.com/parisjump', '', '444.jpg', '{}', 164, 5, '2022-12-02', 'Chéu', 31),
(85, 'Eskaléo', '\r\nCanyoning, Via Ferrata et Escalade, dans le Parc naturel régional du Haut Jura\r\n\r\nNous proposons des prestations d’encadrement en canyoning, via ferrata et escalade, dans le Parc naturel régional du Haut Jura. Eskaléo est une entreprise spécialisée dans', 'Franche-Comté, France', 'activite,activité,activites', '6.0223016', '47.1343207', '', '', 'Bourgogne-Franche-Comté', 'France', '+33 6 47 88 55 71', 'contact@eskaleo.fr', '-', 'https://www.facebook.com/eskaleo.fr', '', '3_N099stU.jpg', '{}', 167, 5, '2022-12-02', '', 31),
(86, 'Eskaléo', '\r\nCanyoning, Via Ferrata et Escalade, dans le Parc naturel régional du Haut Jura\r\n\r\nNous proposons des prestations d’encadrement en canyoning, via ferrata et escalade, dans le Parc naturel régional du Haut Jura. Eskaléo est une entreprise spécialisée dans', 'Franche-Comté, France', 'activite,activité,activites', '6.0223016', '47.1343207', '', '', 'Bourgogne-Franche-Comté', 'France', '+33 6 47 88 55 71', 'contact@eskaleo.fr', '-', 'https://www.facebook.com/eskaleo.fr', '', '6_ejbh9Tu.jpg', '{}', 167, 5, '2022-12-02', '', 31),
(87, 'Eskaléo', '\r\nCanyoning, Via Ferrata et Escalade, dans le Parc naturel régional du Haut Jura\r\n\r\nNous proposons des prestations d’encadrement en canyoning, via ferrata et escalade, dans le Parc naturel régional du Haut Jura. Eskaléo est une entreprise spécialisée dans', 'Franche-Comté, France', 'activite,activité,activites', '6.0223016', '47.1343207', '', '', 'Bourgogne-Franche-Comté', 'France', '+33 6 47 88 55 71', 'contact@eskaleo.fr', '-', 'https://www.facebook.com/eskaleo.fr', '', '7_80csEJE.jpg', '{}', 167, 5, '2022-12-02', '', 31),
(88, 'Eskaléo', '\r\nCanyoning, Via Ferrata et Escalade, dans le Parc naturel régional du Haut Jura\r\n\r\nNous proposons des prestations d’encadrement en canyoning, via ferrata et escalade, dans le Parc naturel régional du Haut Jura. Eskaléo est une entreprise spécialisée dans', 'Franche-Comté, France', 'activite,activité,activites', '6.0223016', '47.1343207', '', '', 'Bourgogne-Franche-Comté', 'France', '+33 6 47 88 55 71', 'contact@eskaleo.fr', '-', 'https://www.facebook.com/eskaleo.fr', '', '9_AIQw76o.jpg', '{}', 167, 5, '2022-12-02', '', 31),
(89, 'Eskaléo', '\r\nCanyoning, Via Ferrata et Escalade, dans le Parc naturel régional du Haut Jura\r\n\r\nNous proposons des prestations d’encadrement en canyoning, via ferrata et escalade, dans le Parc naturel régional du Haut Jura. Eskaléo est une entreprise spécialisée dans', 'Franche-Comté, France', 'activite,activité,activites', '6.0223016', '47.1343207', '', '', 'Bourgogne-Franche-Comté', 'France', '+33 6 47 88 55 71', 'contact@eskaleo.fr', '-', 'https://www.facebook.com/eskaleo.fr', '', '6_CyA5n5z.jpg', '{}', 167, 5, '2022-12-02', '', 31),
(90, 'Roc et Eaux', 'le canyoning est une activité qui mêle technique de cordes et progression aquatique. Elle consiste à descendre un torrent où l’eau serpente dans des gorges ou des ravins étroits. Pour franchir ces obstacles le canyoniste doit descendre en rappel, sauter, ', '12 Rue du Crait, Larnod, France', 'activité,activite,activites', '5.974489999999999', '47.1892862', '25720', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '+33 6 19 80 31 22', 'roceteau@gmail.com', '-', 'https://www.facebook.com/RocetEau/', '', '1_CLrT6BX.png', '{}', 168, 5, '2022-12-02', 'Larnod', 31),
(91, 'Roc et Eaux', 'le canyoning est une activité qui mêle technique de cordes et progression aquatique. Elle consiste à descendre un torrent où l’eau serpente dans des gorges ou des ravins étroits. Pour franchir ces obstacles le canyoniste doit descendre en rappel, sauter, ', '12 Rue du Crait, Larnod, France', 'activité,activite,activites', '5.974489999999999', '47.1892862', '25720', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '+33 6 19 80 31 22', 'roceteau@gmail.com', '-', 'https://www.facebook.com/RocetEau/', '', '2_u80x65F.jpg', '{}', 168, 5, '2022-12-02', 'Larnod', 31),
(92, 'Roc et Eaux', 'le canyoning est une activité qui mêle technique de cordes et progression aquatique. Elle consiste à descendre un torrent où l’eau serpente dans des gorges ou des ravins étroits. Pour franchir ces obstacles le canyoniste doit descendre en rappel, sauter, ', '12 Rue du Crait, Larnod, France', 'activité,activite,activites', '5.974489999999999', '47.1892862', '25720', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '+33 6 19 80 31 22', 'roceteau@gmail.com', '-', 'https://www.facebook.com/RocetEau/', '', '3_Db90ls6.jpg', '{}', 168, 5, '2022-12-02', 'Larnod', 31),
(93, 'Roc et Eaux', 'le canyoning est une activité qui mêle technique de cordes et progression aquatique. Elle consiste à descendre un torrent où l’eau serpente dans des gorges ou des ravins étroits. Pour franchir ces obstacles le canyoniste doit descendre en rappel, sauter, ', '12 Rue du Crait, Larnod, France', 'activité,activite,activites', '5.974489999999999', '47.1892862', '25720', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '+33 6 19 80 31 22', 'roceteau@gmail.com', '-', 'https://www.facebook.com/RocetEau/', '', '8_iXpVzu8.jpg', '{}', 168, 5, '2022-12-02', 'Larnod', 31),
(94, 'Roc et Eaux', 'le canyoning est une activité qui mêle technique de cordes et progression aquatique. Elle consiste à descendre un torrent où l’eau serpente dans des gorges ou des ravins étroits. Pour franchir ces obstacles le canyoniste doit descendre en rappel, sauter, ', '12 Rue du Crait, Larnod, France', 'activité,activite,activites', '5.974489999999999', '47.1892862', '25720', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '+33 6 19 80 31 22', 'roceteau@gmail.com', '-', 'https://www.facebook.com/RocetEau/', '', '8_JWl0uQq.jpg', '{}', 168, 5, '2022-12-02', 'Larnod', 31),
(95, 'Canoë-kayak au cœur de la Suisse Normande', 'Au cœur de la Suisse Normande, Thury Plein Air est une base de loisirs qui vous accueille pour des activités sportives tel que le Canoë-kayak. Des alentours exceptionnels vous accueilleront pour la randonnée pédestre. Venez également découvrir en groupe d', '22 Impasse des Lavandières, Le Hom, France', 'activite,activité,activites', '-0.4829982', '48.98735139999999', '14220', 'Calvados', 'Normandie', 'France', '+33 2 31 79 40 59', 'contact@thurypleinair.fr', '-', 'https://www.facebook.com/thurypleinair/', '', '2_ig6l18y.jpg', '{}', 208, 5, '2022-12-05', 'Le Hom', 31);
INSERT INTO `etablissements` (`etablissements_id`, `etablissements_nom`, `etablissements_presentation`, `etablissements_adresse`, `etablissements_motcle`, `etablissements_longitude`, `etablissements_latitude`, `etablissements_codepostal`, `etablissements_departement`, `etablissements_region`, `etablissements_pays`, `etablissements_telephone`, `etablissements_email`, `etablissements_website`, `etablissements_fb`, `etablissements_insta`, `etablissements_photo`, `etablissements_activites`, `users_id`, `categories_id`, `etablissements_createdAt`, `etablissements_ville`, `sous_categories_id`) VALUES
(96, 'Canoë-kayak au cœur de la Suisse Normande', 'Au cœur de la Suisse Normande, Thury Plein Air est une base de loisirs qui vous accueille pour des activités sportives tel que le Canoë-kayak. Des alentours exceptionnels vous accueilleront pour la randonnée pédestre. Venez également découvrir en groupe d', '22 Impasse des Lavandières, Le Hom, France', 'activite,activité,activites', '-0.4829982', '48.98735139999999', '14220', 'Calvados', 'Normandie', 'France', '+33 2 31 79 40 59', 'contact@thurypleinair.fr', '-', 'https://www.facebook.com/thurypleinair/', '', '3_ktFWAva.jpg', '{}', 208, 5, '2022-12-05', 'Le Hom', 31),
(97, 'Canoë-kayak au cœur de la Suisse Normande', 'Au cœur de la Suisse Normande, Thury Plein Air est une base de loisirs qui vous accueille pour des activités sportives tel que le Canoë-kayak. Des alentours exceptionnels vous accueilleront pour la randonnée pédestre. Venez également découvrir en groupe d', '22 Impasse des Lavandières, Le Hom, France', 'activite,activité,activites', '-0.4829982', '48.98735139999999', '14220', 'Calvados', 'Normandie', 'France', '+33 2 31 79 40 59', 'contact@thurypleinair.fr', '-', 'https://www.facebook.com/thurypleinair/', '', '4_Q0wVIbu.jpg', '{}', 208, 5, '2022-12-05', 'Le Hom', 31),
(98, 'Canoë-kayak au cœur de la Suisse Normande', 'Au cœur de la Suisse Normande, Thury Plein Air est une base de loisirs qui vous accueille pour des activités sportives tel que le Canoë-kayak. Des alentours exceptionnels vous accueilleront pour la randonnée pédestre. Venez également découvrir en groupe d', '22 Impasse des Lavandières, Le Hom, France', 'activite,activité,activites', '-0.4829982', '48.98735139999999', '14220', 'Calvados', 'Normandie', 'France', '+33 2 31 79 40 59', 'contact@thurypleinair.fr', '-', 'https://www.facebook.com/thurypleinair/', '', '5_N2pqXtl.jpg', '{}', 208, 5, '2022-12-05', 'Le Hom', 31),
(99, 'Canoë-kayak au cœur de la Suisse Normande', 'Au cœur de la Suisse Normande, Thury Plein Air est une base de loisirs qui vous accueille pour des activités sportives tel que le Canoë-kayak. Des alentours exceptionnels vous accueilleront pour la randonnée pédestre. Venez également découvrir en groupe d', '22 Impasse des Lavandières, Le Hom, France', 'activite,activité,activites', '-0.4829982', '48.98735139999999', '14220', 'Calvados', 'Normandie', 'France', '+33 2 31 79 40 59', 'contact@thurypleinair.fr', '-', 'https://www.facebook.com/thurypleinair/', '', '6_Eu2jYIm.jpg', '{}', 208, 5, '2022-12-05', 'Le Hom', 31),
(100, 'Canoë-kayak au cœur de la Suisse Normande', 'Au cœur de la Suisse Normande, Thury Plein Air est une base de loisirs qui vous accueille pour des activités sportives tel que le Canoë-kayak. Des alentours exceptionnels vous accueilleront pour la randonnée pédestre. Venez également découvrir en groupe d', '22 Impasse des Lavandières, Le Hom, France', 'activite,activité,activites', '-0.4829982', '48.98735139999999', '14220', 'Calvados', 'Normandie', 'France', '+33 2 31 79 40 59', 'contact@thurypleinair.fr', '-', 'https://www.facebook.com/thurypleinair/', '', '7_aeKajo5.jpg', '{}', 208, 5, '2022-12-05', 'Le Hom', 31),
(101, 'Balade guidée en kayak de mer dans le golfe du Morbihan', 'Balades environnementales et culturelles en kayak de mer. Encadrement en kayak de mer en itinérance Encadrement en kayak de mer en itinérance. Pour découvrir les histoires du golfe différemment, autour de la faune, de la flore et du patrimoine culturel. E', 'Bono, France', 'activite, activites, activité sportive', '-2.947753', '47.640443', '', 'Morbihan', 'Bretagne', 'France', '+33 6 77 01 11 09', 'contactgcg@orange.fr', '-', 'https://www.facebook.com/gitecontregite/', '', '2_pZIbRzV.jpg', '{}', 237, 5, '2022-12-06', 'Bono', 31),
(102, 'Balade guidée en kayak de mer dans le golfe du Morbihan', 'Balades environnementales et culturelles en kayak de mer. Encadrement en kayak de mer en itinérance Encadrement en kayak de mer en itinérance. Pour découvrir les histoires du golfe différemment, autour de la faune, de la flore et du patrimoine culturel. E', 'Bono, France', 'activite, activites, activité sportive', '-2.947753', '47.640443', '', 'Morbihan', 'Bretagne', 'France', '+33 6 77 01 11 09', 'contactgcg@orange.fr', '-', 'https://www.facebook.com/gitecontregite/', '', '3_cXTjQoc.jpg', '{}', 237, 5, '2022-12-06', 'Bono', 31),
(103, 'Balade guidée en kayak de mer dans le golfe du Morbihan', 'Balades environnementales et culturelles en kayak de mer. Encadrement en kayak de mer en itinérance Encadrement en kayak de mer en itinérance. Pour découvrir les histoires du golfe différemment, autour de la faune, de la flore et du patrimoine culturel. E', 'Bono, France', 'activite, activites, activité sportive', '-2.947753', '47.640443', '', 'Morbihan', 'Bretagne', 'France', '+33 6 77 01 11 09', 'contactgcg@orange.fr', '-', 'https://www.facebook.com/gitecontregite/', '', '6_VimEh18.jpg', '{}', 237, 5, '2022-12-06', 'Bono', 31),
(104, 'Balade guidée en kayak de mer dans le golfe du Morbihan', 'Balades environnementales et culturelles en kayak de mer. Encadrement en kayak de mer en itinérance Encadrement en kayak de mer en itinérance. Pour découvrir les histoires du golfe différemment, autour de la faune, de la flore et du patrimoine culturel. E', 'Bono, France', 'activite, activites, activité sportive', '-2.947753', '47.640443', '', 'Morbihan', 'Bretagne', 'France', '+33 6 77 01 11 09', 'contactgcg@orange.fr', '-', 'https://www.facebook.com/gitecontregite/', '', '8_hIYiTyn.jpg', '{}', 237, 5, '2022-12-06', 'Bono', 31),
(105, 'Balade guidée en kayak de mer dans le golfe du Morbihan', 'Balades environnementales et culturelles en kayak de mer. Encadrement en kayak de mer en itinérance Encadrement en kayak de mer en itinérance. Pour découvrir les histoires du golfe différemment, autour de la faune, de la flore et du patrimoine culturel. E', 'Bono, France', 'activite, activites, activité sportive', '-2.947753', '47.640443', '', 'Morbihan', 'Bretagne', 'France', '+33 6 77 01 11 09', 'contactgcg@orange.fr', '-', 'https://www.facebook.com/gitecontregite/', '', '9_H5jXNR9.jpg', '{}', 237, 5, '2022-12-06', 'Bono', 31),
(106, 'Balade guidée en kayak de mer dans le golfe du Morbihan', 'Balades environnementales et culturelles en kayak de mer. Encadrement en kayak de mer en itinérance Encadrement en kayak de mer en itinérance. Pour découvrir les histoires du golfe différemment, autour de la faune, de la flore et du patrimoine culturel. E', 'Bono, France', 'activite, activites, activité sportive', '-2.947753', '47.640443', '', 'Morbihan', 'Bretagne', 'France', '+33 6 77 01 11 09', 'contactgcg@orange.fr', '-', 'https://www.facebook.com/gitecontregite/', '', '9_wLmfZDZ.jpg', '{}', 237, 5, '2022-12-06', 'Bono', 31),
(107, 'Rally 4x4 sur le circuit de Haute Saintonge', 'Race circuit rally stage en  Charente Maritime ', '16620 Montboyer, France', 'activité sportive, activites ,activite', '0.072783', '45.324725', '16620', 'Charente', 'Nouvelle-Aquitaine', 'France', '07 49 62 16 14', 'racerally4x4@gmail.com', '-', '', '', '1_BpUSN7T.webp', '{}', 291, 5, '2022-12-09', 'Montboyer', 31),
(108, 'Rally 4x4 sur le circuit de Haute Saintonge', 'Race circuit rally stage en  Charente Maritime ', '16620 Montboyer, France', 'activité sportive, activites ,activite', '0.072783', '45.324725', '16620', 'Charente', 'Nouvelle-Aquitaine', 'France', '07 49 62 16 14', 'racerally4x4@gmail.com', '-', '', '', '0_5Jn6GqF.webp', '{}', 291, 5, '2022-12-09', 'Montboyer', 31),
(109, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '1_qCy0pQk.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(110, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '3_tGtASzO.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(111, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '4_G6LaOLT.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(112, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '5_lZI9Mkl.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(113, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '6_hHzeR0U.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(114, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '7_UtwW1BF.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(115, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '8_eeqmCqw.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(116, 'Saut en parachute au dessus du bassin de Marennes-Oléron', 'Découvrir les sensations de la chute libre en Nouvelle Aquitaine avec un saut en parachute tandem. ', 'Aéroport de Rochefort Charente-Maritime, La Sauzaie, Saint-Agnant, Charente-Maritime, France', 'activité sportive ', '-0.9834732000000002', '45.8868854', '17620', 'Charente-Maritime', 'Nouvelle-Aquitaine', 'France', '+33 7 87 21 49 04', 'bigair.parachutisme@gmail.com', '-', 'https://www.facebook.com/parachutismecharentemaritime/?ref=bookmarks', '', '9_H3vJIkd.jpg', '{}', 292, 5, '2022-12-09', 'Saint-Agnant', 31),
(117, 'Canopée Guadeloupe: Canyon & Randonnée', 'Canyoning en Guadeloupe ', 'Plage de Malendure, Bouillante, Guadeloupe', 'activité, activites, activite sportive', '-61.7768482', '16.1723986', '97125', 'Canton de Sainte-Rose-1', 'Basse-Terre', 'Guadeloupe', '+590 590 26-9559', 'canopee.forest.adventure@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063591339486&fref=ts', '', '1_NCh0NpV.jpg', '{}', 308, 5, '2022-12-13', 'Bouillante', 31),
(118, 'Canopée Guadeloupe: Canyon & Randonnée', 'Canyoning en Guadeloupe ', 'Plage de Malendure, Bouillante, Guadeloupe', 'activité, activites, activite sportive', '-61.7768482', '16.1723986', '97125', 'Canton de Sainte-Rose-1', 'Basse-Terre', 'Guadeloupe', '+590 590 26-9559', 'canopee.forest.adventure@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063591339486&fref=ts', '', '1_285A6vH.jpg', '{}', 308, 5, '2022-12-13', 'Bouillante', 31),
(119, 'Canopée Guadeloupe: Canyon & Randonnée', 'Canyoning en Guadeloupe ', 'Plage de Malendure, Bouillante, Guadeloupe', 'activité, activites, activite sportive', '-61.7768482', '16.1723986', '97125', 'Canton de Sainte-Rose-1', 'Basse-Terre', 'Guadeloupe', '+590 590 26-9559', 'canopee.forest.adventure@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063591339486&fref=ts', '', '2_arUyEWc.jpg', '{}', 308, 5, '2022-12-13', 'Bouillante', 31),
(120, 'Canopée Guadeloupe: Canyon & Randonnée', 'Canyoning en Guadeloupe ', 'Plage de Malendure, Bouillante, Guadeloupe', 'activité, activites, activite sportive', '-61.7768482', '16.1723986', '97125', 'Canton de Sainte-Rose-1', 'Basse-Terre', 'Guadeloupe', '+590 590 26-9559', 'canopee.forest.adventure@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063591339486&fref=ts', '', '4_bQZYkrk.jpg', '{}', 308, 5, '2022-12-13', 'Bouillante', 31),
(121, 'Canopée Guadeloupe: Canyon & Randonnée', 'Canyoning en Guadeloupe ', 'Plage de Malendure, Bouillante, Guadeloupe', 'activité, activites, activite sportive', '-61.7768482', '16.1723986', '97125', 'Canton de Sainte-Rose-1', 'Basse-Terre', 'Guadeloupe', '+590 590 26-9559', 'canopee.forest.adventure@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063591339486&fref=ts', '', '5_BzqNEgW.jpg', '{}', 308, 5, '2022-12-13', 'Bouillante', 31),
(122, 'Canopée Guadeloupe: Canyon & Randonnée', 'Canyoning en Guadeloupe ', 'Plage de Malendure, Bouillante, Guadeloupe', 'activité, activites, activite sportive', '-61.7768482', '16.1723986', '97125', 'Canton de Sainte-Rose-1', 'Basse-Terre', 'Guadeloupe', '+590 590 26-9559', 'canopee.forest.adventure@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063591339486&fref=ts', '', '7_tnckdRj.jpg', '{}', 308, 5, '2022-12-13', 'Bouillante', 31),
(123, 'catamaran uhaina', 'activité sur Catamaran en Guadeloupe ', 'Cottages du Lagon, route du moule, Saint-François 97118, Guadeloupe', 'activité sportive, activite', '-61.278811', '16.2594462', '97118', 'Canton de Saint-François', 'Grande-Terre', 'Guadeloupe', '0690 38 58 28', 'uhainacroisieres@gmail.com', '-', '', '', '3_ZkVOrv3.jpg', '{}', 312, 5, '2022-12-13', 'Saint-François', 31),
(124, 'catamaran uhaina', 'activité sur Catamaran en Guadeloupe ', 'Cottages du Lagon, route du moule, Saint-François 97118, Guadeloupe', 'activité sportive, activite', '-61.278811', '16.2594462', '97118', 'Canton de Saint-François', 'Grande-Terre', 'Guadeloupe', '0690 38 58 28', 'uhainacroisieres@gmail.com', '-', '', '', '4_2lV9B9C.jpg', '{}', 312, 5, '2022-12-13', 'Saint-François', 31),
(125, 'catamaran uhaina', 'activité sur Catamaran en Guadeloupe ', 'Cottages du Lagon, route du moule, Saint-François 97118, Guadeloupe', 'activité sportive, activite', '-61.278811', '16.2594462', '97118', 'Canton de Saint-François', 'Grande-Terre', 'Guadeloupe', '0690 38 58 28', 'uhainacroisieres@gmail.com', '-', '', '', '6_y9np8mf.jpg', '{}', 312, 5, '2022-12-13', 'Saint-François', 31),
(126, 'catamaran uhaina', 'activité sur Catamaran en Guadeloupe ', 'Cottages du Lagon, route du moule, Saint-François 97118, Guadeloupe', 'activité sportive, activite', '-61.278811', '16.2594462', '97118', 'Canton de Saint-François', 'Grande-Terre', 'Guadeloupe', '0690 38 58 28', 'uhainacroisieres@gmail.com', '-', '', '', '7_2QmEmjk.jpg', '{}', 312, 5, '2022-12-13', 'Saint-François', 31),
(127, 'catamaran uhaina', 'activité sur Catamaran en Guadeloupe ', 'Cottages du Lagon, route du moule, Saint-François 97118, Guadeloupe', 'activité sportive, activite', '-61.278811', '16.2594462', '97118', 'Canton de Saint-François', 'Grande-Terre', 'Guadeloupe', '0690 38 58 28', 'uhainacroisieres@gmail.com', '-', '', '', '24_RrTy30j.jpg', '{}', 312, 5, '2022-12-13', 'Saint-François', 31),
(128, 'Rafting sur le Gave de Pau', ' Rafting, miniraft, hotdog, canoë, kayak et hydro-speed sur le Gave de Pau.', 'Camping Le Saillet, Lestelle-Bétharram, France', 'Activité sportive', '-0.2063676', '43.12977130000001', '64800', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '0617551932', 'contact@rafting-pyrenees.com', '-', '', '', '1_P5nfj4X.jpeg', '{}', 387, 5, '2022-12-21', 'Lestelle-Bétharram', 31),
(129, 'Rafting sur le Gave de Pau', ' Rafting, miniraft, hotdog, canoë, kayak et hydro-speed sur le Gave de Pau.', 'Camping Le Saillet, Lestelle-Bétharram, France', 'Activité sportive', '-0.2063676', '43.12977130000001', '64800', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '0617551932', 'contact@rafting-pyrenees.com', '-', '', '', '2_smPaLUf.jpeg', '{}', 387, 5, '2022-12-21', 'Lestelle-Bétharram', 31),
(130, 'Rafting sur le Gave de Pau', ' Rafting, miniraft, hotdog, canoë, kayak et hydro-speed sur le Gave de Pau.', 'Camping Le Saillet, Lestelle-Bétharram, France', 'Activité sportive', '-0.2063676', '43.12977130000001', '64800', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '0617551932', 'contact@rafting-pyrenees.com', '-', '', '', '0_nPt82M6.jpeg', '{}', 387, 5, '2022-12-21', 'Lestelle-Bétharram', 31),
(131, 'Spéléologie dans les Hautes-Pyrénées', 'Guide de spéléologie, de canyoning et de rando en raquettes, je propose des demi journées,', 'Bagnères-de-Bigorre, France', 'activité,activites, activité sportive', '0.1491049', '43.065093', '65200', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 73 47 83 66', 'Contact@pyrenees-autrement.com', '-', 'https://www.facebook.com/PyreneesAutrement/', '', '1_Cut1bBr.jpg', '{}', 392, 5, '2022-12-22', 'Bagnères-de-Bigorre', 31),
(132, 'Spéléologie dans les Hautes-Pyrénées', 'Guide de spéléologie, de canyoning et de rando en raquettes, je propose des demi journées,', 'Bagnères-de-Bigorre, France', 'activité,activites, activité sportive', '0.1491049', '43.065093', '65200', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 73 47 83 66', 'Contact@pyrenees-autrement.com', '-', 'https://www.facebook.com/PyreneesAutrement/', '', '3_i8U5wbV.jpg', '{}', 392, 5, '2022-12-22', 'Bagnères-de-Bigorre', 31),
(133, 'Spéléologie dans les Hautes-Pyrénées', 'Guide de spéléologie, de canyoning et de rando en raquettes, je propose des demi journées,', 'Bagnères-de-Bigorre, France', 'activité,activites, activité sportive', '0.1491049', '43.065093', '65200', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 73 47 83 66', 'Contact@pyrenees-autrement.com', '-', 'https://www.facebook.com/PyreneesAutrement/', '', '4_R5J4n8D.jpg', '{}', 392, 5, '2022-12-22', 'Bagnères-de-Bigorre', 31),
(134, 'Spéléologie dans les Hautes-Pyrénées', 'Guide de spéléologie, de canyoning et de rando en raquettes, je propose des demi journées,', 'Bagnères-de-Bigorre, France', 'activité,activites, activité sportive', '0.1491049', '43.065093', '65200', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 73 47 83 66', 'Contact@pyrenees-autrement.com', '-', 'https://www.facebook.com/PyreneesAutrement/', '', '6_AVJkh9H.jpg', '{}', 392, 5, '2022-12-22', 'Bagnères-de-Bigorre', 31),
(135, 'Spéléologie dans les Hautes-Pyrénées', 'Guide de spéléologie, de canyoning et de rando en raquettes, je propose des demi journées,', 'Bagnères-de-Bigorre, France', 'activité,activites, activité sportive', '0.1491049', '43.065093', '65200', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 73 47 83 66', 'Contact@pyrenees-autrement.com', '-', 'https://www.facebook.com/PyreneesAutrement/', '', '7_qEV4HC1.jpg', '{}', 392, 5, '2022-12-22', 'Bagnères-de-Bigorre', 31),
(136, 'Spéléologie dans les Hautes-Pyrénées', 'Guide de spéléologie, de canyoning et de rando en raquettes, je propose des demi journées,', 'Bagnères-de-Bigorre, France', 'activité,activites, activité sportive', '0.1491049', '43.065093', '65200', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 73 47 83 66', 'Contact@pyrenees-autrement.com', '-', 'https://www.facebook.com/PyreneesAutrement/', '', '8_Kd9mMoV.jpg', '{}', 392, 5, '2022-12-22', 'Bagnères-de-Bigorre', 31),
(137, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '1_4fT4iLK.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(138, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '2_G4im8R0.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(139, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '3_7OXIZgX.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(140, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '4_B114wvJ.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(141, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '5_E41DKAK.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(142, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '6_GJhLwkH.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(143, 'Descente de canyon dans les Hautes-Pyrénées', 'Venez découvrir le Canyon, la Spéléo et la Rando avec Fifye.', 'Argelès-Gazost, France', 'Activité, activite sportive', '-0.101087', '43.005028', '65400', 'Hautes-Pyrénées', 'Occitanie', 'France', '+33 6 17 69 51 93', 'info@fifye.com', '-', 'https://www.facebook.com/LeRoiDeLaFaille/', '', '8_FswORDg.jpg', '{}', 401, 5, '2022-12-22', 'Argelès-Gazost', 31),
(144, 'Accrobranche au parc Air de nature', 'Air de Nature est un parc aventure en forêt situé sur la commune de Saint Quentin.  Accessibles pour les plus tranquilles comme les plus courageux.', 'Route de Vallabrix, Saint-Quentin-la-Poterie, France', 'activité sportive ,activite ', '4.4559837', '44.0419654', '30700', 'Gard', 'Occitanie', 'France', '+33 6 17 87 79 28', 'airdenature@gmail.com', '-', 'https://www.facebook.com/airdenature', '', '1_C7aUeJz.jpg', '{}', 412, 5, '2022-12-22', 'Saint-Quentin-la-Poterie', 31),
(145, 'Accrobranche au parc Air de nature', 'Air de Nature est un parc aventure en forêt situé sur la commune de Saint Quentin.  Accessibles pour les plus tranquilles comme les plus courageux.', 'Route de Vallabrix, Saint-Quentin-la-Poterie, France', 'activité sportive ,activite ', '4.4559837', '44.0419654', '30700', 'Gard', 'Occitanie', 'France', '+33 6 17 87 79 28', 'airdenature@gmail.com', '-', 'https://www.facebook.com/airdenature', '', '3_qK0WOqx.jpg', '{}', 412, 5, '2022-12-22', 'Saint-Quentin-la-Poterie', 31),
(146, 'Accrobranche au parc Air de nature', 'Air de Nature est un parc aventure en forêt situé sur la commune de Saint Quentin.  Accessibles pour les plus tranquilles comme les plus courageux.', 'Route de Vallabrix, Saint-Quentin-la-Poterie, France', 'activité sportive ,activite ', '4.4559837', '44.0419654', '30700', 'Gard', 'Occitanie', 'France', '+33 6 17 87 79 28', 'airdenature@gmail.com', '-', 'https://www.facebook.com/airdenature', '', '4_2UjzAet.jpg', '{}', 412, 5, '2022-12-22', 'Saint-Quentin-la-Poterie', 31),
(147, 'Accrobranche au parc Air de nature', 'Air de Nature est un parc aventure en forêt situé sur la commune de Saint Quentin.  Accessibles pour les plus tranquilles comme les plus courageux.', 'Route de Vallabrix, Saint-Quentin-la-Poterie, France', 'activité sportive ,activite ', '4.4559837', '44.0419654', '30700', 'Gard', 'Occitanie', 'France', '+33 6 17 87 79 28', 'airdenature@gmail.com', '-', 'https://www.facebook.com/airdenature', '', '5_JmBStwR.jpg', '{}', 412, 5, '2022-12-22', 'Saint-Quentin-la-Poterie', 31),
(148, 'Accrobranche au parc Air de nature', 'Air de Nature est un parc aventure en forêt situé sur la commune de Saint Quentin.  Accessibles pour les plus tranquilles comme les plus courageux.', 'Route de Vallabrix, Saint-Quentin-la-Poterie, France', 'activité sportive ,activite ', '4.4559837', '44.0419654', '30700', 'Gard', 'Occitanie', 'France', '+33 6 17 87 79 28', 'airdenature@gmail.com', '-', 'https://www.facebook.com/airdenature', '', '6_R4LlxpO.jpg', '{}', 412, 5, '2022-12-22', 'Saint-Quentin-la-Poterie', 31),
(149, 'Accrobranche au parc Air de nature', 'Air de Nature est un parc aventure en forêt situé sur la commune de Saint Quentin.  Accessibles pour les plus tranquilles comme les plus courageux.', 'Route de Vallabrix, Saint-Quentin-la-Poterie, France', 'activité sportive ,activite ', '4.4559837', '44.0419654', '30700', 'Gard', 'Occitanie', 'France', '+33 6 17 87 79 28', 'airdenature@gmail.com', '-', 'https://www.facebook.com/airdenature', '', '9_ebso4bJ.jpg', '{}', 412, 5, '2022-12-22', 'Saint-Quentin-la-Poterie', 31),
(150, 'Labyrinthe Artmazia', 'petits et grands venez vous perdre dans un des plus grands labyrinthe végétale du monde.', '25 Route de Neufchâtel, 76270 Bully, France', 'activite,activité,acivites ludiques', '1.3700945', '49.7272341', '76270', 'Seine-Maritime', 'Normandie', 'France', '06 14 73 97 34', 'labyrinthe.artmazia@gmail.com', '-', 'https://www.facebook.com/labyrintheartmazia', '', '111.jpg', '{}', 188, 5, '2022-12-05', 'Bully', 32),
(151, 'Labyrinthe Artmazia', 'petits et grands venez vous perdre dans un des plus grands labyrinthe végétale du monde.', '25 Route de Neufchâtel, 76270 Bully, France', 'activite,activité,acivites ludiques', '1.3700945', '49.7272341', '76270', 'Seine-Maritime', 'Normandie', 'France', '06 14 73 97 34', 'labyrinthe.artmazia@gmail.com', '-', 'https://www.facebook.com/labyrintheartmazia', '', '222_Qvc5WCw.jpg', '{}', 188, 5, '2022-12-05', 'Bully', 32),
(152, 'Labyrinthe Artmazia', 'petits et grands venez vous perdre dans un des plus grands labyrinthe végétale du monde.', '25 Route de Neufchâtel, 76270 Bully, France', 'activite,activité,acivites ludiques', '1.3700945', '49.7272341', '76270', 'Seine-Maritime', 'Normandie', 'France', '06 14 73 97 34', 'labyrinthe.artmazia@gmail.com', '-', 'https://www.facebook.com/labyrintheartmazia', '', '999.webp', '{}', 188, 5, '2022-12-05', 'Bully', 32),
(153, 'Labyrinthe Artmazia', 'petits et grands venez vous perdre dans un des plus grands labyrinthe végétale du monde.', '25 Route de Neufchâtel, 76270 Bully, France', 'activite,activité,acivites ludiques', '1.3700945', '49.7272341', '76270', 'Seine-Maritime', 'Normandie', 'France', '06 14 73 97 34', 'labyrinthe.artmazia@gmail.com', '-', 'https://www.facebook.com/labyrintheartmazia', '', '777.webp', '{}', 188, 5, '2022-12-05', 'Bully', 32),
(154, 'Labyrinthe Artmazia', 'petits et grands venez vous perdre dans un des plus grands labyrinthe végétale du monde.', '25 Route de Neufchâtel, 76270 Bully, France', 'activite,activité,acivites ludiques', '1.3700945', '49.7272341', '76270', 'Seine-Maritime', 'Normandie', 'France', '06 14 73 97 34', 'labyrinthe.artmazia@gmail.com', '-', 'https://www.facebook.com/labyrintheartmazia', '', '333_KkbX8SH.jpg', '{}', 188, 5, '2022-12-05', 'Bully', 32),
(155, 'Char à voile en baie du Mont St Michel', 'AVEL se propose de vous initier et de vous faire découvrir les plaisirs du char à voile', '4 Rue du Bord de Mer, Hirel, France', 'activite,activité,activites', '-1.8005633', '48.606744', '35120', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 81 24 52 33', 'avelchar@laposte.net', '-', 'https://www.facebook.com/avelcharavoile/', '', '2.png', '{}', 243, 5, '2022-12-07', 'Hirel', 32),
(156, 'Char à voile en baie du Mont St Michel', 'AVEL se propose de vous initier et de vous faire découvrir les plaisirs du char à voile', '4 Rue du Bord de Mer, Hirel, France', 'activite,activité,activites', '-1.8005633', '48.606744', '35120', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 81 24 52 33', 'avelchar@laposte.net', '-', 'https://www.facebook.com/avelcharavoile/', '', '3_VuxrGAJ.jpg', '{}', 243, 5, '2022-12-07', 'Hirel', 32),
(157, 'Char à voile en baie du Mont St Michel', 'AVEL se propose de vous initier et de vous faire découvrir les plaisirs du char à voile', '4 Rue du Bord de Mer, Hirel, France', 'activite,activité,activites', '-1.8005633', '48.606744', '35120', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 81 24 52 33', 'avelchar@laposte.net', '-', 'https://www.facebook.com/avelcharavoile/', '', '4_BcVeEWK.jpg', '{}', 243, 5, '2022-12-07', 'Hirel', 32),
(158, 'Char à voile en baie du Mont St Michel', 'AVEL se propose de vous initier et de vous faire découvrir les plaisirs du char à voile', '4 Rue du Bord de Mer, Hirel, France', 'activite,activité,activites', '-1.8005633', '48.606744', '35120', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 81 24 52 33', 'avelchar@laposte.net', '-', 'https://www.facebook.com/avelcharavoile/', '', '5_Tebr5J1.jpg', '{}', 243, 5, '2022-12-07', 'Hirel', 32),
(159, 'Char à voile en baie du Mont St Michel', 'AVEL se propose de vous initier et de vous faire découvrir les plaisirs du char à voile', '4 Rue du Bord de Mer, Hirel, France', 'activite,activité,activites', '-1.8005633', '48.606744', '35120', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 81 24 52 33', 'avelchar@laposte.net', '-', 'https://www.facebook.com/avelcharavoile/', '', '6_lk53PWU.jpg', '{}', 243, 5, '2022-12-07', 'Hirel', 32),
(160, 'Char à voile en baie du Mont St Michel', 'AVEL se propose de vous initier et de vous faire découvrir les plaisirs du char à voile', '4 Rue du Bord de Mer, Hirel, France', 'activite,activité,activites', '-1.8005633', '48.606744', '35120', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 81 24 52 33', 'avelchar@laposte.net', '-', 'https://www.facebook.com/avelcharavoile/', '', '7_L4Dyd64.jpg', '{}', 243, 5, '2022-12-07', 'Hirel', 32),
(161, 'Croisière privée de la pointe du Grouin au Cap Fréhel', 'Laissez-vous tenter par une balade en mer aux alentours de Saint-Malo. \r\n', 'Saint-Malo, France', 'activite,activité,activites ', '-2.025674', '48.649337', '', 'Ille-et-Vilaine', 'Bretagne', 'France', '+33 6 85 49 34 03', 'echappeemalouine@orange.fr', '-', 'https://www.facebook.com/profile.php?id=100063629737735', '', '0001.jpg', '{}', 249, 5, '2022-12-07', 'Saint-Malo', 32),
(162, 'Legendia Parc', 'Au cœur du Pays de Retz, Legendia Parc est une destination de légendes au thème unique en France. Dans un parc préservé de 33 hectares, vous passerez une journée inoubliable ! Vous irez à la rencontre de plus de 500 animaux de 60 espèces différentes et vo', '4 La Poitevinière, Frossay, France', 'activite,activité,activites ludique', '-1.9725832', '47.2199961', '44320', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 2 40 39 75 06', 'contact@legendiaparc.com', '-', 'https://www.facebook.com/legendiaparc/?ref=page_internal', '', '1_tiDruZu.jpg', '{}', 279, 5, '2022-12-08', 'Frossay', 32),
(163, 'Legendia Parc', 'Au cœur du Pays de Retz, Legendia Parc est une destination de légendes au thème unique en France. Dans un parc préservé de 33 hectares, vous passerez une journée inoubliable ! Vous irez à la rencontre de plus de 500 animaux de 60 espèces différentes et vo', '4 La Poitevinière, Frossay, France', 'activite,activité,activites ludique', '-1.9725832', '47.2199961', '44320', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 2 40 39 75 06', 'contact@legendiaparc.com', '-', 'https://www.facebook.com/legendiaparc/?ref=page_internal', '', '3_tSJOAdi.jpg', '{}', 279, 5, '2022-12-08', 'Frossay', 32),
(164, 'Legendia Parc', 'Au cœur du Pays de Retz, Legendia Parc est une destination de légendes au thème unique en France. Dans un parc préservé de 33 hectares, vous passerez une journée inoubliable ! Vous irez à la rencontre de plus de 500 animaux de 60 espèces différentes et vo', '4 La Poitevinière, Frossay, France', 'activite,activité,activites ludique', '-1.9725832', '47.2199961', '44320', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 2 40 39 75 06', 'contact@legendiaparc.com', '-', 'https://www.facebook.com/legendiaparc/?ref=page_internal', '', '4_jRXwtOo.jpg', '{}', 279, 5, '2022-12-08', 'Frossay', 32),
(165, 'Legendia Parc', 'Au cœur du Pays de Retz, Legendia Parc est une destination de légendes au thème unique en France. Dans un parc préservé de 33 hectares, vous passerez une journée inoubliable ! Vous irez à la rencontre de plus de 500 animaux de 60 espèces différentes et vo', '4 La Poitevinière, Frossay, France', 'activite,activité,activites ludique', '-1.9725832', '47.2199961', '44320', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 2 40 39 75 06', 'contact@legendiaparc.com', '-', 'https://www.facebook.com/legendiaparc/?ref=page_internal', '', '6_RgjwTGg.jpg', '{}', 279, 5, '2022-12-08', 'Frossay', 32),
(166, 'Legendia Parc', 'Au cœur du Pays de Retz, Legendia Parc est une destination de légendes au thème unique en France. Dans un parc préservé de 33 hectares, vous passerez une journée inoubliable ! Vous irez à la rencontre de plus de 500 animaux de 60 espèces différentes et vo', '4 La Poitevinière, Frossay, France', 'activite,activité,activites ludique', '-1.9725832', '47.2199961', '44320', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 2 40 39 75 06', 'contact@legendiaparc.com', '-', 'https://www.facebook.com/legendiaparc/?ref=page_internal', '', '8_sK53yfW.jpg', '{}', 279, 5, '2022-12-08', 'Frossay', 32),
(167, 'Legendia Parc', 'Au cœur du Pays de Retz, Legendia Parc est une destination de légendes au thème unique en France. Dans un parc préservé de 33 hectares, vous passerez une journée inoubliable ! Vous irez à la rencontre de plus de 500 animaux de 60 espèces différentes et vo', '4 La Poitevinière, Frossay, France', 'activite,activité,activites ludique', '-1.9725832', '47.2199961', '44320', 'Loire-Atlantique', 'Pays de la Loire', 'France', '+33 2 40 39 75 06', 'contact@legendiaparc.com', '-', 'https://www.facebook.com/legendiaparc/?ref=page_internal', '', '9_Ychzldp.jpg', '{}', 279, 5, '2022-12-08', 'Frossay', 32),
(168, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '001_2vOXyB4.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(169, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '1_nOXbTr6.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(170, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '2_zr6egEM.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(171, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '3_nVCayid.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(172, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '4_nJeN3dP.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(173, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '6_wXAxCvv.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(174, 'Survol du Marais Poitevin en montgolfière', 'Découvrez la montgolfière et le Marais Poitevin. Laissez vous guider et charmer par la magie du vol.', '8 Petite Rue de la Douve, Coulon, France', 'activité,activites,activite', '-0.5837639', '46.3229656', '79510', 'Deux-Sèvres', 'Nouvelle-Aquitaine', 'France', '+33 6 65 09 49 92', 'Info@terres-denvol.fr', '-', 'https://www.facebook.com/terresdenvol', '', '9_2A6BoBv.jpg', '{}', 287, 5, '2022-12-08', 'Coulon', 32),
(175, 'Vol en montgolfière sur le Périgord', 'Avec Vol en Ballon, découvrez le Périgord noir depuis les airs à bord de notre montgolfière.', 'Le Pech, Saint-Vincent-de-Cosse, France', 'Activité Ludique', '1.129475', '44.83901700000001', '24220', 'Dordogne', 'Nouvelle-Aquitaine', 'France', '+33 6 20 25 91 58', 'contact@volenballon.fr', '-', '', '', '1_cOrDl80.jpg', '{}', 335, 5, '2022-12-19', 'Saint-Vincent-de-Cosse', 32),
(176, 'Vol en montgolfière sur le Périgord', 'Avec Vol en Ballon, découvrez le Périgord noir depuis les airs à bord de notre montgolfière.', 'Le Pech, Saint-Vincent-de-Cosse, France', 'Activité Ludique', '1.129475', '44.83901700000001', '24220', 'Dordogne', 'Nouvelle-Aquitaine', 'France', '+33 6 20 25 91 58', 'contact@volenballon.fr', '-', '', '', '3_cSbOCSa.jpg', '{}', 335, 5, '2022-12-19', 'Saint-Vincent-de-Cosse', 32),
(177, 'Vol en montgolfière sur le Périgord', 'Avec Vol en Ballon, découvrez le Périgord noir depuis les airs à bord de notre montgolfière.', 'Le Pech, Saint-Vincent-de-Cosse, France', 'Activité Ludique', '1.129475', '44.83901700000001', '24220', 'Dordogne', 'Nouvelle-Aquitaine', 'France', '+33 6 20 25 91 58', 'contact@volenballon.fr', '-', '', '', '4_zPZNF76.jpg', '{}', 335, 5, '2022-12-19', 'Saint-Vincent-de-Cosse', 32),
(178, 'Vol en montgolfière sur le Périgord', 'Avec Vol en Ballon, découvrez le Périgord noir depuis les airs à bord de notre montgolfière.', 'Le Pech, Saint-Vincent-de-Cosse, France', 'Activité Ludique', '1.129475', '44.83901700000001', '24220', 'Dordogne', 'Nouvelle-Aquitaine', 'France', '+33 6 20 25 91 58', 'contact@volenballon.fr', '-', '', '', '5_JLF3Mza.jpg', '{}', 335, 5, '2022-12-19', 'Saint-Vincent-de-Cosse', 32),
(179, 'Vol en montgolfière sur le Périgord', 'Avec Vol en Ballon, découvrez le Périgord noir depuis les airs à bord de notre montgolfière.', 'Le Pech, Saint-Vincent-de-Cosse, France', 'Activité Ludique', '1.129475', '44.83901700000001', '24220', 'Dordogne', 'Nouvelle-Aquitaine', 'France', '+33 6 20 25 91 58', 'contact@volenballon.fr', '-', '', '', '6_FBdlVmY.jpg', '{}', 335, 5, '2022-12-19', 'Saint-Vincent-de-Cosse', 32),
(180, 'Vol en montgolfière sur le Périgord', 'Avec Vol en Ballon, découvrez le Périgord noir depuis les airs à bord de notre montgolfière.', 'Le Pech, Saint-Vincent-de-Cosse, France', 'Activité Ludique', '1.129475', '44.83901700000001', '24220', 'Dordogne', 'Nouvelle-Aquitaine', 'France', '+33 6 20 25 91 58', 'contact@volenballon.fr', '-', '', '', '7_zGcnchU.jpg', '{}', 335, 5, '2022-12-19', 'Saint-Vincent-de-Cosse', 32),
(181, 'Train Touristique Guîtres-Marcenais', 'Traction par la locomotive Diesel D-4033 de 1944. Dépaysement garanti, retour en arrière et souvenirs pour ceux qui ont connu les petites lignes secondaires de la SNCF, découverte pour les plus jeunes et émerveillement curieux pour les enfants qui ne conn', '13 Avenue de la Gare, Guitres, France', 'Activites Ludique, activité', '-0.197661', '45.03821000000001', '33230', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 2 43 75 10 42', 'communication.aacfvi@trainguitres.fr', '-', 'https://www.facebook.com/TrainTouristiqueGuitres/?ref=bookmarks', '', '3_jFaqAma.jpg', '{}', 337, 5, '2022-12-19', 'Guitres', 32),
(182, 'Train Touristique Guîtres-Marcenais', 'Traction par la locomotive Diesel D-4033 de 1944. Dépaysement garanti, retour en arrière et souvenirs pour ceux qui ont connu les petites lignes secondaires de la SNCF, découverte pour les plus jeunes et émerveillement curieux pour les enfants qui ne conn', '13 Avenue de la Gare, Guitres, France', 'Activites Ludique, activité', '-0.197661', '45.03821000000001', '33230', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 2 43 75 10 42', 'communication.aacfvi@trainguitres.fr', '-', 'https://www.facebook.com/TrainTouristiqueGuitres/?ref=bookmarks', '', '5_XkIPAKM.jpg', '{}', 337, 5, '2022-12-19', 'Guitres', 32),
(183, 'Train Touristique Guîtres-Marcenais', 'Traction par la locomotive Diesel D-4033 de 1944. Dépaysement garanti, retour en arrière et souvenirs pour ceux qui ont connu les petites lignes secondaires de la SNCF, découverte pour les plus jeunes et émerveillement curieux pour les enfants qui ne conn', '13 Avenue de la Gare, Guitres, France', 'Activites Ludique, activité', '-0.197661', '45.03821000000001', '33230', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 2 43 75 10 42', 'communication.aacfvi@trainguitres.fr', '-', 'https://www.facebook.com/TrainTouristiqueGuitres/?ref=bookmarks', '', '6_1Nt8XWZ.jpg', '{}', 337, 5, '2022-12-19', 'Guitres', 32),
(184, 'Train Touristique Guîtres-Marcenais', 'Traction par la locomotive Diesel D-4033 de 1944. Dépaysement garanti, retour en arrière et souvenirs pour ceux qui ont connu les petites lignes secondaires de la SNCF, découverte pour les plus jeunes et émerveillement curieux pour les enfants qui ne conn', '13 Avenue de la Gare, Guitres, France', 'Activites Ludique, activité', '-0.197661', '45.03821000000001', '33230', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 2 43 75 10 42', 'communication.aacfvi@trainguitres.fr', '-', 'https://www.facebook.com/TrainTouristiqueGuitres/?ref=bookmarks', '', '7_b7hkg8p.jpg', '{}', 337, 5, '2022-12-19', 'Guitres', 32),
(185, 'Train Touristique Guîtres-Marcenais', 'Traction par la locomotive Diesel D-4033 de 1944. Dépaysement garanti, retour en arrière et souvenirs pour ceux qui ont connu les petites lignes secondaires de la SNCF, découverte pour les plus jeunes et émerveillement curieux pour les enfants qui ne conn', '13 Avenue de la Gare, Guitres, France', 'Activites Ludique, activité', '-0.197661', '45.03821000000001', '33230', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 2 43 75 10 42', 'communication.aacfvi@trainguitres.fr', '-', 'https://www.facebook.com/TrainTouristiqueGuitres/?ref=bookmarks', '', '8_GsMFBUj.jpg', '{}', 337, 5, '2022-12-19', 'Guitres', 32),
(186, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '1_AQ9KQhY.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(187, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '3_vZ5cbma.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(188, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '4_rkRNXz1.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(189, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '5_x25QoeU.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(190, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '6_5rr8XGq.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(191, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '7_zwrGMSt.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32);
INSERT INTO `etablissements` (`etablissements_id`, `etablissements_nom`, `etablissements_presentation`, `etablissements_adresse`, `etablissements_motcle`, `etablissements_longitude`, `etablissements_latitude`, `etablissements_codepostal`, `etablissements_departement`, `etablissements_region`, `etablissements_pays`, `etablissements_telephone`, `etablissements_email`, `etablissements_website`, `etablissements_fb`, `etablissements_insta`, `etablissements_photo`, `etablissements_activites`, `users_id`, `categories_id`, `etablissements_createdAt`, `etablissements_ville`, `sous_categories_id`) VALUES
(192, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '8_CAKKq7a.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(193, 'Repas spectacle au cabaret Saint Sabastien', 'Rendez-vous au cœur du Médoc pour un dîner-spectacle qui mérite vraiment le détour. le Saint Sabastien fait salle comble depuis 1996. La recette est simple : un accueil chaleureux et sincère, une cuisine généreuse et soignée, un cadre intimiste et convivi', '11 Rue Charles Plumeau, 33340 Couquèques, France', 'activité Ludique', '-0.8485038', '45.3439872', '33340', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 41 38 65', 'contact@saintsabastien.com', '-', 'https://www.facebook.com/LeSaintSabastien/', '', '9_CfWd46F.jpg', '{}', 357, 5, '2022-12-20', 'Couquèques', 32),
(194, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '1_82eDY3R.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(195, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '2_zESLk1K.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(196, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '3_F5uxVMr.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(197, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '4_yP3bIdV.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(198, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '9_hODYHCs.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(199, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '8_1hITQJR.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(200, 'Battle Archery / Laser Run / Learn-O', 'Ludo Loisirs anime 11 activités insolites sportives et culturelles en itinérance en Occitane. ', 'Le Soler, France', 'Activité, activites activite ludique', '2.795395', '42.682392', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '+33 6 64 39 62 36', 'contact@ludoloisirs.com', '-', 'https://www.facebook.com/LudoLoisirs/', '', '7_MzBqWf8.jpg', '{}', 402, 5, '2022-12-22', 'Le Soler', 32),
(201, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '1_oJUKqKa.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(202, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '3_5tZ5VoZ.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(203, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '4_GcJwqMY.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(204, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '6_hvVVFuP.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(205, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '8_MKCNhqR.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(206, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '9_QeC8lt9.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(207, 'Simulation de chute libre avec Twistair', 'Simulateur de chute libre - Loisirs Situé en plein cœur du parc d’activité d’Odysseum Montpellier', 'Place des Grands-Hommes, Allée Ulysse, Montpellier, France', 'activite, activité , activites ludique', '3.9183233', '43.6034342', '34000', 'Hérault', 'Occitanie', 'France', '+33 6 21 79 26 82', 'contact@twist-air.com', '-', 'https://www.facebook.com/Twistairmontpellier/', '', '286909022_2706761872801941_7573590932229584189_n.jpg', '{}', 408, 5, '2022-12-22', 'Montpellier', 32),
(208, 'rendez-vous au chateau', 'Rendez-vous au Château vous propose de partager un moment privilégié au cœur du patrimoine culturel et gastronomique régional.', '5 Rue de Condé, 33000 Bordeaux, France', 'actvite,activité,activites', '-0.5733855', '44.8433951', '33000', 'Gironde', 'Nouvelle-Aquitaine', 'France', ' +33(0)628.350.095', 'contact@rendezvousauchateau.com', '-', '', '', '002_kX080Ue.jpg', '{}', 177, 5, '2022-12-02', 'Bordeaux', 33),
(209, 'rendez-vous au chateau', 'Rendez-vous au Château vous propose de partager un moment privilégié au cœur du patrimoine culturel et gastronomique régional.', '5 Rue de Condé, 33000 Bordeaux, France', 'actvite,activité,activites', '-0.5733855', '44.8433951', '33000', 'Gironde', 'Nouvelle-Aquitaine', 'France', ' +33(0)628.350.095', 'contact@rendezvousauchateau.com', '-', '', '', '003_tUKhmHf.jpg', '{}', 177, 5, '2022-12-02', 'Bordeaux', 33),
(210, 'rendez-vous au chateau', 'Rendez-vous au Château vous propose de partager un moment privilégié au cœur du patrimoine culturel et gastronomique régional.', '5 Rue de Condé, 33000 Bordeaux, France', 'actvite,activité,activites', '-0.5733855', '44.8433951', '33000', 'Gironde', 'Nouvelle-Aquitaine', 'France', ' +33(0)628.350.095', 'contact@rendezvousauchateau.com', '-', '', '', '004_LPXg39h.jpg', '{}', 177, 5, '2022-12-02', 'Bordeaux', 33),
(211, 'rendez-vous au chateau', 'Rendez-vous au Château vous propose de partager un moment privilégié au cœur du patrimoine culturel et gastronomique régional.', '5 Rue de Condé, 33000 Bordeaux, France', 'actvite,activité,activites', '-0.5733855', '44.8433951', '33000', 'Gironde', 'Nouvelle-Aquitaine', 'France', ' +33(0)628.350.095', 'contact@rendezvousauchateau.com', '-', '', '', '005_aiywuFa.jpg', '{}', 177, 5, '2022-12-02', 'Bordeaux', 33),
(212, 'rendez-vous au chateau', 'Rendez-vous au Château vous propose de partager un moment privilégié au cœur du patrimoine culturel et gastronomique régional.', '5 Rue de Condé, 33000 Bordeaux, France', 'actvite,activité,activites', '-0.5733855', '44.8433951', '33000', 'Gironde', 'Nouvelle-Aquitaine', 'France', ' +33(0)628.350.095', 'contact@rendezvousauchateau.com', '-', '', '', '005_gXsqtCm.jpg', '{}', 177, 5, '2022-12-02', 'Bordeaux', 33),
(213, 'La Maison du Chef Normand', 'En Normandie, dans le Calvados, Près de Deauville et du parc zoologique du Cerza de Lisieux. Dans une grande cuisine toute équipée. ', '28 La Forge, Saint-Philbert-des-Champs, France', 'activite,activité,activites gustative', '0.2819183', '49.2119572', '14130', 'Calvados', 'Normandie', 'France', '+33 2 31 64 86 10', 'lamaisonduchefnormand@orange.fr', '-', 'https://www.facebook.com/LaMaisonDuChefNormand/', '', '2_lyaHJE2.jpg', '{}', 196, 5, '2022-12-05', 'Saint-Philbert-des-Champs', 33),
(214, 'La Maison du Chef Normand', 'En Normandie, dans le Calvados, Près de Deauville et du parc zoologique du Cerza de Lisieux. Dans une grande cuisine toute équipée. ', '28 La Forge, Saint-Philbert-des-Champs, France', 'activite,activité,activites gustative', '0.2819183', '49.2119572', '14130', 'Calvados', 'Normandie', 'France', '+33 2 31 64 86 10', 'lamaisonduchefnormand@orange.fr', '-', 'https://www.facebook.com/LaMaisonDuChefNormand/', '', '4_iBlRzCz.jpg', '{}', 196, 5, '2022-12-05', 'Saint-Philbert-des-Champs', 33),
(215, 'La Maison du Chef Normand', 'En Normandie, dans le Calvados, Près de Deauville et du parc zoologique du Cerza de Lisieux. Dans une grande cuisine toute équipée. ', '28 La Forge, Saint-Philbert-des-Champs, France', 'activite,activité,activites gustative', '0.2819183', '49.2119572', '14130', 'Calvados', 'Normandie', 'France', '+33 2 31 64 86 10', 'lamaisonduchefnormand@orange.fr', '-', 'https://www.facebook.com/LaMaisonDuChefNormand/', '', '6_Q6hLqyx.jpg', '{}', 196, 5, '2022-12-05', 'Saint-Philbert-des-Champs', 33),
(216, 'La Maison du Chef Normand', 'En Normandie, dans le Calvados, Près de Deauville et du parc zoologique du Cerza de Lisieux. Dans une grande cuisine toute équipée. ', '28 La Forge, Saint-Philbert-des-Champs, France', 'activite,activité,activites gustative', '0.2819183', '49.2119572', '14130', 'Calvados', 'Normandie', 'France', '+33 2 31 64 86 10', 'lamaisonduchefnormand@orange.fr', '-', 'https://www.facebook.com/LaMaisonDuChefNormand/', '', '7_S6Wrli3.jpg', '{}', 196, 5, '2022-12-05', 'Saint-Philbert-des-Champs', 33),
(217, 'La Maison du Chef Normand', 'En Normandie, dans le Calvados, Près de Deauville et du parc zoologique du Cerza de Lisieux. Dans une grande cuisine toute équipée. ', '28 La Forge, Saint-Philbert-des-Champs, France', 'activite,activité,activites gustative', '0.2819183', '49.2119572', '14130', 'Calvados', 'Normandie', 'France', '+33 2 31 64 86 10', 'lamaisonduchefnormand@orange.fr', '-', 'https://www.facebook.com/LaMaisonDuChefNormand/', '', '9_GB0lSTz.jpg', '{}', 196, 5, '2022-12-05', 'Saint-Philbert-des-Champs', 33),
(218, 'La Cité du Vin', 'Un lieu unique dédié aux cultures du vin.', '1 Esplanade de Pontac, Bordeaux, France', 'vin', '-0.5618751', '44.8569285', '33300', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 16 20 20', 'contact@laciteduvin.com', '-', 'https://www.facebook.com/laciteduvin', '', '1_WoaaHvF.jpg', '{}', 307, 5, '2022-12-13', 'Bordeaux', 33),
(219, 'La Cité du Vin', 'Un lieu unique dédié aux cultures du vin.', '1 Esplanade de Pontac, Bordeaux, France', 'vin', '-0.5618751', '44.8569285', '33300', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 16 20 20', 'contact@laciteduvin.com', '-', 'https://www.facebook.com/laciteduvin', '', '4_8ken3od.jpg', '{}', 307, 5, '2022-12-13', 'Bordeaux', 33),
(220, 'La Cité du Vin', 'Un lieu unique dédié aux cultures du vin.', '1 Esplanade de Pontac, Bordeaux, France', 'vin', '-0.5618751', '44.8569285', '33300', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 16 20 20', 'contact@laciteduvin.com', '-', 'https://www.facebook.com/laciteduvin', '', '5_0GeoJRb.jpg', '{}', 307, 5, '2022-12-13', 'Bordeaux', 33),
(221, 'La Cité du Vin', 'Un lieu unique dédié aux cultures du vin.', '1 Esplanade de Pontac, Bordeaux, France', 'vin', '-0.5618751', '44.8569285', '33300', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 16 20 20', 'contact@laciteduvin.com', '-', 'https://www.facebook.com/laciteduvin', '', '5_EAhfqG3.jpg', '{}', 307, 5, '2022-12-13', 'Bordeaux', 33),
(222, 'La Cité du Vin', 'Un lieu unique dédié aux cultures du vin.', '1 Esplanade de Pontac, Bordeaux, France', 'vin', '-0.5618751', '44.8569285', '33300', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 16 20 20', 'contact@laciteduvin.com', '-', 'https://www.facebook.com/laciteduvin', '', '6_sw532Ua.jpg', '{}', 307, 5, '2022-12-13', 'Bordeaux', 33),
(223, 'La Cité du Vin', 'Un lieu unique dédié aux cultures du vin.', '1 Esplanade de Pontac, Bordeaux, France', 'vin', '-0.5618751', '44.8569285', '33300', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 5 56 16 20 20', 'contact@laciteduvin.com', '-', 'https://www.facebook.com/laciteduvin', '', '2_FjjUq9g.jpg', '{}', 307, 5, '2022-12-13', 'Bordeaux', 33),
(224, 'Visite du Jardin-verger Conservatoire', 'Le conservatoire des Légumes Anciens du Béarn a été créé le 23 juillet 2013. Le jardin potager propose des collections de variétés rares de légumes, de plantes médicinales, aromatiques et tinctoriales. Plus de 500 espèces et/ou variétés composent cette co', '3 Route du Bois, Assat, France', 'Activité Gustative', '-0.294531', '43.2533408', '64510', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '+33 6 15 57 93 39', 'jardinverger64@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063766564166', '', '1_RZoUlvc.jpg', '{}', 334, 5, '2022-12-19', 'Assat', 33),
(225, 'Visite du Jardin-verger Conservatoire', 'Le conservatoire des Légumes Anciens du Béarn a été créé le 23 juillet 2013. Le jardin potager propose des collections de variétés rares de légumes, de plantes médicinales, aromatiques et tinctoriales. Plus de 500 espèces et/ou variétés composent cette co', '3 Route du Bois, Assat, France', 'Activité Gustative', '-0.294531', '43.2533408', '64510', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '+33 6 15 57 93 39', 'jardinverger64@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063766564166', '', '3_l0RgKvQ.jpg', '{}', 334, 5, '2022-12-19', 'Assat', 33),
(226, 'Visite du Jardin-verger Conservatoire', 'Le conservatoire des Légumes Anciens du Béarn a été créé le 23 juillet 2013. Le jardin potager propose des collections de variétés rares de légumes, de plantes médicinales, aromatiques et tinctoriales. Plus de 500 espèces et/ou variétés composent cette co', '3 Route du Bois, Assat, France', 'Activité Gustative', '-0.294531', '43.2533408', '64510', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '+33 6 15 57 93 39', 'jardinverger64@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063766564166', '', '4_na8jiiW.jpg', '{}', 334, 5, '2022-12-19', 'Assat', 33),
(227, 'Visite du Jardin-verger Conservatoire', 'Le conservatoire des Légumes Anciens du Béarn a été créé le 23 juillet 2013. Le jardin potager propose des collections de variétés rares de légumes, de plantes médicinales, aromatiques et tinctoriales. Plus de 500 espèces et/ou variétés composent cette co', '3 Route du Bois, Assat, France', 'Activité Gustative', '-0.294531', '43.2533408', '64510', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '+33 6 15 57 93 39', 'jardinverger64@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063766564166', '', '5_GXIwu5W.jpg', '{}', 334, 5, '2022-12-19', 'Assat', 33),
(228, 'Visite du Jardin-verger Conservatoire', 'Le conservatoire des Légumes Anciens du Béarn a été créé le 23 juillet 2013. Le jardin potager propose des collections de variétés rares de légumes, de plantes médicinales, aromatiques et tinctoriales. Plus de 500 espèces et/ou variétés composent cette co', '3 Route du Bois, Assat, France', 'Activité Gustative', '-0.294531', '43.2533408', '64510', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '+33 6 15 57 93 39', 'jardinverger64@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063766564166', '', '6_G3Ysf8s.jpg', '{}', 334, 5, '2022-12-19', 'Assat', 33),
(229, 'Visite du Jardin-verger Conservatoire', 'Le conservatoire des Légumes Anciens du Béarn a été créé le 23 juillet 2013. Le jardin potager propose des collections de variétés rares de légumes, de plantes médicinales, aromatiques et tinctoriales. Plus de 500 espèces et/ou variétés composent cette co', '3 Route du Bois, Assat, France', 'Activité Gustative', '-0.294531', '43.2533408', '64510', 'Pyrénées-Atlantiques', 'Nouvelle-Aquitaine', 'France', '+33 6 15 57 93 39', 'jardinverger64@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100063766564166', '', '7_8pF6HoO.jpg', '{}', 334, 5, '2022-12-19', 'Assat', 33),
(230, 'Bwinetour Tours', 'Voyage et découvertes de nos circuits viticoles en groupe ou en privé. Bordeaux Wine Tour vous ouvre les portes de nos châteaux Grands Crus Classés partenaires Découvrir l’univers de la vigne et du vin à travers l’histoire de ses Châteaux, dégustations pr', '37 Rue des Tuilières, 33290 Blanquefort, France', 'activite, activité, activites éducative', '-0.6337841', '44.94292129999999', '33290', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33(0)6 50 61 65 56', 'contact@bwinetour.com', '-', '', '', '17.jpg', '{}', 67, 5, '2022-11-30', 'Blanquefort', 34),
(231, 'Bwinetour Tours', 'Voyage et découvertes de nos circuits viticoles en groupe ou en privé. Bordeaux Wine Tour vous ouvre les portes de nos châteaux Grands Crus Classés partenaires Découvrir l’univers de la vigne et du vin à travers l’histoire de ses Châteaux, dégustations pr', '37 Rue des Tuilières, 33290 Blanquefort, France', 'activite, activité, activites éducative', '-0.6337841', '44.94292129999999', '33290', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33(0)6 50 61 65 56', 'contact@bwinetour.com', '-', '', '', '18.jpg', '{}', 67, 5, '2022-11-30', 'Blanquefort', 34),
(232, 'Bwinetour Tours', 'Voyage et découvertes de nos circuits viticoles en groupe ou en privé. Bordeaux Wine Tour vous ouvre les portes de nos châteaux Grands Crus Classés partenaires Découvrir l’univers de la vigne et du vin à travers l’histoire de ses Châteaux, dégustations pr', '37 Rue des Tuilières, 33290 Blanquefort, France', 'activite, activité, activites éducative', '-0.6337841', '44.94292129999999', '33290', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33(0)6 50 61 65 56', 'contact@bwinetour.com', '-', '', '', '19.jpg', '{}', 67, 5, '2022-11-30', 'Blanquefort', 34),
(233, 'Bwinetour Tours', 'Voyage et découvertes de nos circuits viticoles en groupe ou en privé. Bordeaux Wine Tour vous ouvre les portes de nos châteaux Grands Crus Classés partenaires Découvrir l’univers de la vigne et du vin à travers l’histoire de ses Châteaux, dégustations pr', '37 Rue des Tuilières, 33290 Blanquefort, France', 'activite, activité, activites éducative', '-0.6337841', '44.94292129999999', '33290', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33(0)6 50 61 65 56', 'contact@bwinetour.com', '-', '', '', '20.jpg', '{}', 67, 5, '2022-11-30', 'Blanquefort', 34),
(234, 'Bwinetour Tours', 'Voyage et découvertes de nos circuits viticoles en groupe ou en privé. Bordeaux Wine Tour vous ouvre les portes de nos châteaux Grands Crus Classés partenaires Découvrir l’univers de la vigne et du vin à travers l’histoire de ses Châteaux, dégustations pr', '37 Rue des Tuilières, 33290 Blanquefort, France', 'activite, activité, activites éducative', '-0.6337841', '44.94292129999999', '33290', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33(0)6 50 61 65 56', 'contact@bwinetour.com', '-', '', '', 'photo_2022-11-25_16-20-37_GJBH8oo.jpg', '{}', 67, 5, '2022-11-30', 'Blanquefort', 34),
(235, 'Pêche avec un moniteur guide', 'Bonjour à toutes et tous je suis moniteur guide de pêche, je propose différentes prestations', 'Viry-Châtillon, France', 'activite,activité,activites', '2.375902', '48.666218', '91170', 'Essonne', 'Île-de-France', 'France', '+33 6 80 56 96 23', 'yann.normandie.idf.peche@gmail.com', '-', 'https://www.facebook.com/normandidfpeche', '', '1_22IrANV.webp', '{}', 214, 5, '2022-12-06', 'Viry-Châtillon', 34),
(236, 'Pêche avec un moniteur guide', 'Bonjour à toutes et tous je suis moniteur guide de pêche, je propose différentes prestations', 'Viry-Châtillon, France', 'activite,activité,activites', '2.375902', '48.666218', '91170', 'Essonne', 'Île-de-France', 'France', '+33 6 80 56 96 23', 'yann.normandie.idf.peche@gmail.com', '-', 'https://www.facebook.com/normandidfpeche', '', '8_bcEjWcA.jpg', '{}', 214, 5, '2022-12-06', 'Viry-Châtillon', 34),
(237, 'Pêche avec un moniteur guide', 'Bonjour à toutes et tous je suis moniteur guide de pêche, je propose différentes prestations', 'Viry-Châtillon, France', 'activite,activité,activites', '2.375902', '48.666218', '91170', 'Essonne', 'Île-de-France', 'France', '+33 6 80 56 96 23', 'yann.normandie.idf.peche@gmail.com', '-', 'https://www.facebook.com/normandidfpeche', '', '4_jF80ohS.jpg', '{}', 214, 5, '2022-12-06', 'Viry-Châtillon', 34),
(238, 'Pêche avec un moniteur guide', 'Bonjour à toutes et tous je suis moniteur guide de pêche, je propose différentes prestations', 'Viry-Châtillon, France', 'activite,activité,activites', '2.375902', '48.666218', '91170', 'Essonne', 'Île-de-France', 'France', '+33 6 80 56 96 23', 'yann.normandie.idf.peche@gmail.com', '-', 'https://www.facebook.com/normandidfpeche', '', '5_1f6SqJD.jpg', '{}', 214, 5, '2022-12-06', 'Viry-Châtillon', 34),
(239, 'Pêche avec un moniteur guide', 'Bonjour à toutes et tous je suis moniteur guide de pêche, je propose différentes prestations', 'Viry-Châtillon, France', 'activite,activité,activites', '2.375902', '48.666218', '91170', 'Essonne', 'Île-de-France', 'France', '+33 6 80 56 96 23', 'yann.normandie.idf.peche@gmail.com', '-', 'https://www.facebook.com/normandidfpeche', '', '9_MRp3g02.jpg', '{}', 214, 5, '2022-12-06', 'Viry-Châtillon', 34),
(240, 'Le Musée National Adrien Dubouche', 'Le musée retrace l’histoire de la céramique de l’Antiquité à nos jours..', '8 Place Winston Churchill, Limoges, France', 'musée', '1.2529646', '45.8321576', '87000', 'Haute-Vienne', 'Nouvelle-Aquitaine', 'France', '+33 5 55 33 08 50', 'contact@limogesciteceramique.fr', '-', '', '', '2_EJoCNQ7.jpg', '{}', 306, 5, '2022-12-13', 'Limoges', 34),
(241, 'Le Musée National Adrien Dubouche', 'Le musée retrace l’histoire de la céramique de l’Antiquité à nos jours..', '8 Place Winston Churchill, Limoges, France', 'musée', '1.2529646', '45.8321576', '87000', 'Haute-Vienne', 'Nouvelle-Aquitaine', 'France', '+33 5 55 33 08 50', 'contact@limogesciteceramique.fr', '-', '', '', '1_0W2ODh2.jpg', '{}', 306, 5, '2022-12-13', 'Limoges', 34),
(242, 'Le Musée National Adrien Dubouche', 'Le musée retrace l’histoire de la céramique de l’Antiquité à nos jours..', '8 Place Winston Churchill, Limoges, France', 'musée', '1.2529646', '45.8321576', '87000', 'Haute-Vienne', 'Nouvelle-Aquitaine', 'France', '+33 5 55 33 08 50', 'contact@limogesciteceramique.fr', '-', '', '', '4_CqeI2RD.jpg', '{}', 306, 5, '2022-12-13', 'Limoges', 34),
(243, 'Le Musée National Adrien Dubouche', 'Le musée retrace l’histoire de la céramique de l’Antiquité à nos jours..', '8 Place Winston Churchill, Limoges, France', 'musée', '1.2529646', '45.8321576', '87000', 'Haute-Vienne', 'Nouvelle-Aquitaine', 'France', '+33 5 55 33 08 50', 'contact@limogesciteceramique.fr', '-', '', '', '3_DFabIEt.jpg', '{}', 306, 5, '2022-12-13', 'Limoges', 34),
(244, 'Le Musée National Adrien Dubouche', 'Le musée retrace l’histoire de la céramique de l’Antiquité à nos jours..', '8 Place Winston Churchill, Limoges, France', 'musée', '1.2529646', '45.8321576', '87000', 'Haute-Vienne', 'Nouvelle-Aquitaine', 'France', '+33 5 55 33 08 50', 'contact@limogesciteceramique.fr', '-', '', '', '5_my0RDw4.jpg', '{}', 306, 5, '2022-12-13', 'Limoges', 34),
(245, 'Musée du Parfum FRAGONARD', 'UN VOYAGE OLFACTIF INÉDIT À PARIS !', '9 Rue Scribe, 75009 Paris, France', 'Parfumerie', '2.330266', '48.871493', '75009', 'Département de Paris', 'Île-de-France', 'France', '+33 1 47 42 04 56', 'tourisme@fragonard.com', '-', '', '', '1_DH2xAFU.jpg', '{}', 320, 5, '2022-12-15', 'Paris', 34),
(246, 'Musée du Parfum FRAGONARD', 'UN VOYAGE OLFACTIF INÉDIT À PARIS !', '9 Rue Scribe, 75009 Paris, France', 'Parfumerie', '2.330266', '48.871493', '75009', 'Département de Paris', 'Île-de-France', 'France', '+33 1 47 42 04 56', 'tourisme@fragonard.com', '-', '', '', '2_axkjDxy.jpg', '{}', 320, 5, '2022-12-15', 'Paris', 34),
(247, 'Musée du Parfum FRAGONARD', 'UN VOYAGE OLFACTIF INÉDIT À PARIS !', '9 Rue Scribe, 75009 Paris, France', 'Parfumerie', '2.330266', '48.871493', '75009', 'Département de Paris', 'Île-de-France', 'France', '+33 1 47 42 04 56', 'tourisme@fragonard.com', '-', '', '', '3_NNNkoYB.jpg', '{}', 320, 5, '2022-12-15', 'Paris', 34),
(248, 'Musée du Parfum FRAGONARD', 'UN VOYAGE OLFACTIF INÉDIT À PARIS !', '9 Rue Scribe, 75009 Paris, France', 'Parfumerie', '2.330266', '48.871493', '75009', 'Département de Paris', 'Île-de-France', 'France', '+33 1 47 42 04 56', 'tourisme@fragonard.com', '-', '', '', '3_rGuCgeM.jpg', '{}', 320, 5, '2022-12-15', 'Paris', 34),
(249, 'Musée du Parfum FRAGONARD', 'UN VOYAGE OLFACTIF INÉDIT À PARIS !', '9 Rue Scribe, 75009 Paris, France', 'Parfumerie', '2.330266', '48.871493', '75009', 'Département de Paris', 'Île-de-France', 'France', '+33 1 47 42 04 56', 'tourisme@fragonard.com', '-', '', '', '4_WIcSECn.jpg', '{}', 320, 5, '2022-12-15', 'Paris', 34),
(250, 'Musée du Parfum FRAGONARD', 'UN VOYAGE OLFACTIF INÉDIT À PARIS !', '9 Rue Scribe, 75009 Paris, France', 'Parfumerie', '2.330266', '48.871493', '75009', 'Département de Paris', 'Île-de-France', 'France', '+33 1 47 42 04 56', 'tourisme@fragonard.com', '-', '', '', '5_9TcTJfz.jpg', '{}', 320, 5, '2022-12-15', 'Paris', 34),
(251, 'Le spa du Lodge Roche Tamarin', 'Afin de vous accorder une parenthèse dans le temps dans un cadre unique, village nature est un lieu conçu pour votre bien-être au cœur d’un jardin tropical, afin de vous permettre de recueillir les bienfaits de soins exceptionnels et ressentir le bien êtr', '142 Chemin Boeuf Mort, La Possession 97419, La Réunion', 'activite, activité, activites, bien être', '55.3412021', '-20.9499271', '97419', 'Canton de la Possession', 'Saint-Paul', 'La Réunion', '+262 262 44 66 88', 'infos@villagenature.com', '-', 'https://www.facebook.com/LodgeTamarinvillagenature', '', '9.jpg', '{}', 65, 5, '2022-11-30', 'La Possession', 35),
(252, 'Le spa du Lodge Roche Tamarin', 'Afin de vous accorder une parenthèse dans le temps dans un cadre unique, village nature est un lieu conçu pour votre bien-être au cœur d’un jardin tropical, afin de vous permettre de recueillir les bienfaits de soins exceptionnels et ressentir le bien êtr', '142 Chemin Boeuf Mort, La Possession 97419, La Réunion', 'activite, activité, activites, bien être', '55.3412021', '-20.9499271', '97419', 'Canton de la Possession', 'Saint-Paul', 'La Réunion', '+262 262 44 66 88', 'infos@villagenature.com', '-', 'https://www.facebook.com/LodgeTamarinvillagenature', '', '10.jpg', '{}', 65, 5, '2022-11-30', 'La Possession', 35),
(253, 'Le spa du Lodge Roche Tamarin', 'Afin de vous accorder une parenthèse dans le temps dans un cadre unique, village nature est un lieu conçu pour votre bien-être au cœur d’un jardin tropical, afin de vous permettre de recueillir les bienfaits de soins exceptionnels et ressentir le bien êtr', '142 Chemin Boeuf Mort, La Possession 97419, La Réunion', 'activite, activité, activites, bien être', '55.3412021', '-20.9499271', '97419', 'Canton de la Possession', 'Saint-Paul', 'La Réunion', '+262 262 44 66 88', 'infos@villagenature.com', '-', 'https://www.facebook.com/LodgeTamarinvillagenature', '', '11.jpg', '{}', 65, 5, '2022-11-30', 'La Possession', 35),
(254, 'Le spa du Lodge Roche Tamarin', 'Afin de vous accorder une parenthèse dans le temps dans un cadre unique, village nature est un lieu conçu pour votre bien-être au cœur d’un jardin tropical, afin de vous permettre de recueillir les bienfaits de soins exceptionnels et ressentir le bien êtr', '142 Chemin Boeuf Mort, La Possession 97419, La Réunion', 'activite, activité, activites, bien être', '55.3412021', '-20.9499271', '97419', 'Canton de la Possession', 'Saint-Paul', 'La Réunion', '+262 262 44 66 88', 'infos@villagenature.com', '-', 'https://www.facebook.com/LodgeTamarinvillagenature', '', '13.png', '{}', 65, 5, '2022-11-30', 'La Possession', 35),
(255, 'Le spa du Lodge Roche Tamarin', 'Afin de vous accorder une parenthèse dans le temps dans un cadre unique, village nature est un lieu conçu pour votre bien-être au cœur d’un jardin tropical, afin de vous permettre de recueillir les bienfaits de soins exceptionnels et ressentir le bien êtr', '142 Chemin Boeuf Mort, La Possession 97419, La Réunion', 'activite, activité, activites, bien être', '55.3412021', '-20.9499271', '97419', 'Canton de la Possession', 'Saint-Paul', 'La Réunion', '+262 262 44 66 88', 'infos@villagenature.com', '-', 'https://www.facebook.com/LodgeTamarinvillagenature', '', '14.jpg', '{}', 65, 5, '2022-11-30', 'La Possession', 35),
(256, 'Le spa du Lodge Roche Tamarin', 'Afin de vous accorder une parenthèse dans le temps dans un cadre unique, village nature est un lieu conçu pour votre bien-être au cœur d’un jardin tropical, afin de vous permettre de recueillir les bienfaits de soins exceptionnels et ressentir le bien êtr', '142 Chemin Boeuf Mort, La Possession 97419, La Réunion', 'activite, activité, activites, bien être', '55.3412021', '-20.9499271', '97419', 'Canton de la Possession', 'Saint-Paul', 'La Réunion', '+262 262 44 66 88', 'infos@villagenature.com', '-', 'https://www.facebook.com/LodgeTamarinvillagenature', '', '15.png', '{}', 65, 5, '2022-11-30', 'La Possession', 35),
(257, 'Centre Aqua Lys', 'Depuis 2005\r\nLe centre AQUA LYS c’est 5 esthéticiennes professionnelles.Aqua Lys, Centre de Beauté et de Détente à Vichy, en Auvergne (03), vous attends pour vous faire partager un moment de bonheur et de relaxation : Epilation, Manucure, Maquillage, Soin', '52 Avenue Victoria, Vichy, France', 'activite,activité,activites', '3.4239914', '46.12837409999999', '03200', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '+33 4 70 96 24 2', 'nindoye03@gmail.com', '-', 'https://www.facebook.com/Aqualys.Spa.Vichy', '', '1_jfgBDaP.jpg', '{}', 102, 5, '2022-12-01', 'Vichy', 35),
(258, 'Centre Aqua Lys', 'Depuis 2005\r\nLe centre AQUA LYS c’est 5 esthéticiennes professionnelles.Aqua Lys, Centre de Beauté et de Détente à Vichy, en Auvergne (03), vous attends pour vous faire partager un moment de bonheur et de relaxation : Epilation, Manucure, Maquillage, Soin', '52 Avenue Victoria, Vichy, France', 'activite,activité,activites', '3.4239914', '46.12837409999999', '03200', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '+33 4 70 96 24 2', 'nindoye03@gmail.com', '-', 'https://www.facebook.com/Aqualys.Spa.Vichy', '', '3_KTSTeYg.jpg', '{}', 102, 5, '2022-12-01', 'Vichy', 35),
(259, 'Centre Aqua Lys', 'Depuis 2005\r\nLe centre AQUA LYS c’est 5 esthéticiennes professionnelles.Aqua Lys, Centre de Beauté et de Détente à Vichy, en Auvergne (03), vous attends pour vous faire partager un moment de bonheur et de relaxation : Epilation, Manucure, Maquillage, Soin', '52 Avenue Victoria, Vichy, France', 'activite,activité,activites', '3.4239914', '46.12837409999999', '03200', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '+33 4 70 96 24 2', 'nindoye03@gmail.com', '-', 'https://www.facebook.com/Aqualys.Spa.Vichy', '', '4_CV472Ul.jpg', '{}', 102, 5, '2022-12-01', 'Vichy', 35),
(260, 'Centre Aqua Lys', 'Depuis 2005\r\nLe centre AQUA LYS c’est 5 esthéticiennes professionnelles.Aqua Lys, Centre de Beauté et de Détente à Vichy, en Auvergne (03), vous attends pour vous faire partager un moment de bonheur et de relaxation : Epilation, Manucure, Maquillage, Soin', '52 Avenue Victoria, Vichy, France', 'activite,activité,activites', '3.4239914', '46.12837409999999', '03200', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '+33 4 70 96 24 2', 'nindoye03@gmail.com', '-', 'https://www.facebook.com/Aqualys.Spa.Vichy', '', '5_8SbGFUr.jpg', '{}', 102, 5, '2022-12-01', 'Vichy', 35),
(261, 'Centre Aqua Lys', 'Depuis 2005\r\nLe centre AQUA LYS c’est 5 esthéticiennes professionnelles.Aqua Lys, Centre de Beauté et de Détente à Vichy, en Auvergne (03), vous attends pour vous faire partager un moment de bonheur et de relaxation : Epilation, Manucure, Maquillage, Soin', '52 Avenue Victoria, Vichy, France', 'activite,activité,activites', '3.4239914', '46.12837409999999', '03200', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '+33 4 70 96 24 2', 'nindoye03@gmail.com', '-', 'https://www.facebook.com/Aqualys.Spa.Vichy', '', '6_Lgnst8U.jpg', '{}', 102, 5, '2022-12-01', 'Vichy', 35),
(262, 'Centre Aqua Lys', 'Depuis 2005\r\nLe centre AQUA LYS c’est 5 esthéticiennes professionnelles.Aqua Lys, Centre de Beauté et de Détente à Vichy, en Auvergne (03), vous attends pour vous faire partager un moment de bonheur et de relaxation : Epilation, Manucure, Maquillage, Soin', '52 Avenue Victoria, Vichy, France', 'activite,activité,activites', '3.4239914', '46.12837409999999', '03200', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '+33 4 70 96 24 2', 'nindoye03@gmail.com', '-', 'https://www.facebook.com/Aqualys.Spa.Vichy', '', '7_fBdNKJB.jpg', '{}', 102, 5, '2022-12-01', 'Vichy', 35),
(263, 'Caleden', 'Caleden offre des soins esthétiques haut de gamme avec sa ligne de soins visage Sothys.\r\n\r\nCette grande marque au nom mythique propose un univers d’un raffinement extrême, synonyme d’excellence et de prestige dans les instituts de beauté et les spas du mo', 'Caleden - Complexe thermal et thermoludique de Chaudes-Aigues, Avenue Georges Pompidou, Chaudes-Aigues, France', 'activite,activité,activites', '3.0029591', '44.8509511', '15110', 'Cantal', 'Auvergne-Rhône-Alpes', 'France', '0471235106', 'info@caleden.com', '-', '', '', 'bulle_page_spa2.png', '{}', 110, 5, '2022-12-01', 'Chaudes-Aigues', 35),
(264, 'Caleden', 'Caleden offre des soins esthétiques haut de gamme avec sa ligne de soins visage Sothys.\r\n\r\nCette grande marque au nom mythique propose un univers d’un raffinement extrême, synonyme d’excellence et de prestige dans les instituts de beauté et les spas du mo', 'Caleden - Complexe thermal et thermoludique de Chaudes-Aigues, Avenue Georges Pompidou, Chaudes-Aigues, France', 'activite,activité,activites', '3.0029591', '44.8509511', '15110', 'Cantal', 'Auvergne-Rhône-Alpes', 'France', '0471235106', 'info@caleden.com', '-', '', '', 'bulle_page_spa3.png', '{}', 110, 5, '2022-12-01', 'Chaudes-Aigues', 35),
(265, 'Caleden', 'Caleden offre des soins esthétiques haut de gamme avec sa ligne de soins visage Sothys.\r\n\r\nCette grande marque au nom mythique propose un univers d’un raffinement extrême, synonyme d’excellence et de prestige dans les instituts de beauté et les spas du mo', 'Caleden - Complexe thermal et thermoludique de Chaudes-Aigues, Avenue Georges Pompidou, Chaudes-Aigues, France', 'activite,activité,activites', '3.0029591', '44.8509511', '15110', 'Cantal', 'Auvergne-Rhône-Alpes', 'France', '0471235106', 'info@caleden.com', '-', '', '', 'soins-pied.png', '{}', 110, 5, '2022-12-01', 'Chaudes-Aigues', 35),
(266, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '2_JsF3i0x.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(267, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '3_pQ8za3w.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(268, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '4_CUif8QL.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(269, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '5_Gcv5lhy.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(270, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '6_PMcU1ue.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(271, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '7_U4hVVmd.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(272, 'La Parenthèse ', 'Vivez l’expérience unique du soin signature selon Sothys. Des protocoles d’exception, odes au bien-être, à la relaxation et à la beauté du corps. Une promesse d’évasion et de sensorialité absolue.  \r\nHanakasumi : Un protocole unique d’inspiration japonais', '16 Avenue Charles de Gaulle, 73100 Aix-les-Bains, France', 'activite,activité,activites', '5.911327399999999', '45.6886727', '73100', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '+33479341900', 'contact@spalaparenthese.com', '-', '', '', '8_Tr0ToOw.jpg', '{}', 112, 5, '2022-12-01', 'Aix-les-Bains', 35),
(273, 'SPA Ö Des Lauzes', 'Le Spa Õ des Lauzes\r\n\r\nSPA D’EAU THERMALE DES ALPES\r\n\r\nLe Spa Õ des Lauzes c’est 1500m² d’espaces aqua-ludiques et de bien-être, autour d’une collection exclusive de soins inspirés du thermalisme\r\nLe spa Õ des Lauzes est labellisé SPA de France (classé 5 ', 'Les thermes de la Léchère, La Léchère, France', 'activite,activité,activites', '6.4837245', '45.515583', '73261', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '04 79 22 44 16', 'spa@lalecherelesbains.com', '-', 'https://www.facebook.com/La.Lechere.Les.Bains/', '', '2_9hzQBHB.jpg', '{}', 120, 5, '2022-12-02', 'La Léchère', 35),
(274, 'SPA Ö Des Lauzes', 'Le Spa Õ des Lauzes\r\n\r\nSPA D’EAU THERMALE DES ALPES\r\n\r\nLe Spa Õ des Lauzes c’est 1500m² d’espaces aqua-ludiques et de bien-être, autour d’une collection exclusive de soins inspirés du thermalisme\r\nLe spa Õ des Lauzes est labellisé SPA de France (classé 5 ', 'Les thermes de la Léchère, La Léchère, France', 'activite,activité,activites', '6.4837245', '45.515583', '73261', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '04 79 22 44 16', 'spa@lalecherelesbains.com', '-', 'https://www.facebook.com/La.Lechere.Les.Bains/', '', '3_zKW6FPO.jpg', '{}', 120, 5, '2022-12-02', 'La Léchère', 35),
(275, 'SPA Ö Des Lauzes', 'Le Spa Õ des Lauzes\r\n\r\nSPA D’EAU THERMALE DES ALPES\r\n\r\nLe Spa Õ des Lauzes c’est 1500m² d’espaces aqua-ludiques et de bien-être, autour d’une collection exclusive de soins inspirés du thermalisme\r\nLe spa Õ des Lauzes est labellisé SPA de France (classé 5 ', 'Les thermes de la Léchère, La Léchère, France', 'activite,activité,activites', '6.4837245', '45.515583', '73261', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '04 79 22 44 16', 'spa@lalecherelesbains.com', '-', 'https://www.facebook.com/La.Lechere.Les.Bains/', '', '4_R3SvgN3.jpg', '{}', 120, 5, '2022-12-02', 'La Léchère', 35),
(276, 'SPA Ö Des Lauzes', 'Le Spa Õ des Lauzes\r\n\r\nSPA D’EAU THERMALE DES ALPES\r\n\r\nLe Spa Õ des Lauzes c’est 1500m² d’espaces aqua-ludiques et de bien-être, autour d’une collection exclusive de soins inspirés du thermalisme\r\nLe spa Õ des Lauzes est labellisé SPA de France (classé 5 ', 'Les thermes de la Léchère, La Léchère, France', 'activite,activité,activites', '6.4837245', '45.515583', '73261', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '04 79 22 44 16', 'spa@lalecherelesbains.com', '-', 'https://www.facebook.com/La.Lechere.Les.Bains/', '', '6_XMJxeo5.jpg', '{}', 120, 5, '2022-12-02', 'La Léchère', 35),
(277, 'SPA Ö Des Lauzes', 'Le Spa Õ des Lauzes\r\n\r\nSPA D’EAU THERMALE DES ALPES\r\n\r\nLe Spa Õ des Lauzes c’est 1500m² d’espaces aqua-ludiques et de bien-être, autour d’une collection exclusive de soins inspirés du thermalisme\r\nLe spa Õ des Lauzes est labellisé SPA de France (classé 5 ', 'Les thermes de la Léchère, La Léchère, France', 'activite,activité,activites', '6.4837245', '45.515583', '73261', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '04 79 22 44 16', 'spa@lalecherelesbains.com', '-', 'https://www.facebook.com/La.Lechere.Les.Bains/', '', '7_eBOJr8D.jpg', '{}', 120, 5, '2022-12-02', 'La Léchère', 35),
(278, 'SPA Ö Des Lauzes', 'Le Spa Õ des Lauzes\r\n\r\nSPA D’EAU THERMALE DES ALPES\r\n\r\nLe Spa Õ des Lauzes c’est 1500m² d’espaces aqua-ludiques et de bien-être, autour d’une collection exclusive de soins inspirés du thermalisme\r\nLe spa Õ des Lauzes est labellisé SPA de France (classé 5 ', 'Les thermes de la Léchère, La Léchère, France', 'activite,activité,activites', '6.4837245', '45.515583', '73261', 'Savoie', 'Auvergne-Rhône-Alpes', 'France', '04 79 22 44 16', 'spa@lalecherelesbains.com', '-', 'https://www.facebook.com/La.Lechere.Les.Bains/', '', '8_kqkqnd0.jpg', '{}', 120, 5, '2022-12-02', 'La Léchère', 35),
(279, 'Spa Le sen Bon', 'En choisissant Montsoreau comme destination de vacances, vous larguez les amarres et lâchez prise dans un cadre totalement naturel et préservé. La Marine de Loire vous permet de faire une vraie pause détente. Notre personnel dévoué du Sent-Bon Spa prendra', '9 Avenue de la Loire, Montsoreau, France', 'activite,activité,activites bien être', '0.0560872', '47.2167677', '49730', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 2 41 50 18 21', 'resa@hotel-lamarinedeloire.com', '-', 'https://www.facebook.com/SpaLaMarineDeLoire/', '', '2_uucXKKc.jpg', '{}', 123, 5, '2022-12-02', 'Montsoreau', 35),
(280, 'Spa Le sen Bon', 'En choisissant Montsoreau comme destination de vacances, vous larguez les amarres et lâchez prise dans un cadre totalement naturel et préservé. La Marine de Loire vous permet de faire une vraie pause détente. Notre personnel dévoué du Sent-Bon Spa prendra', '9 Avenue de la Loire, Montsoreau, France', 'activite,activité,activites bien être', '0.0560872', '47.2167677', '49730', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 2 41 50 18 21', 'resa@hotel-lamarinedeloire.com', '-', 'https://www.facebook.com/SpaLaMarineDeLoire/', '', '3_WXVwhYT.jpg', '{}', 123, 5, '2022-12-02', 'Montsoreau', 35),
(281, 'Spa Le sen Bon', 'En choisissant Montsoreau comme destination de vacances, vous larguez les amarres et lâchez prise dans un cadre totalement naturel et préservé. La Marine de Loire vous permet de faire une vraie pause détente. Notre personnel dévoué du Sent-Bon Spa prendra', '9 Avenue de la Loire, Montsoreau, France', 'activite,activité,activites bien être', '0.0560872', '47.2167677', '49730', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 2 41 50 18 21', 'resa@hotel-lamarinedeloire.com', '-', 'https://www.facebook.com/SpaLaMarineDeLoire/', '', '4_qXvrSR6.jpg', '{}', 123, 5, '2022-12-02', 'Montsoreau', 35),
(282, 'Spa Le sen Bon', 'En choisissant Montsoreau comme destination de vacances, vous larguez les amarres et lâchez prise dans un cadre totalement naturel et préservé. La Marine de Loire vous permet de faire une vraie pause détente. Notre personnel dévoué du Sent-Bon Spa prendra', '9 Avenue de la Loire, Montsoreau, France', 'activite,activité,activites bien être', '0.0560872', '47.2167677', '49730', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 2 41 50 18 21', 'resa@hotel-lamarinedeloire.com', '-', 'https://www.facebook.com/SpaLaMarineDeLoire/', '', '6.png', '{}', 123, 5, '2022-12-02', 'Montsoreau', 35),
(283, 'Spa Le sen Bon', 'En choisissant Montsoreau comme destination de vacances, vous larguez les amarres et lâchez prise dans un cadre totalement naturel et préservé. La Marine de Loire vous permet de faire une vraie pause détente. Notre personnel dévoué du Sent-Bon Spa prendra', '9 Avenue de la Loire, Montsoreau, France', 'activite,activité,activites bien être', '0.0560872', '47.2167677', '49730', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 2 41 50 18 21', 'resa@hotel-lamarinedeloire.com', '-', 'https://www.facebook.com/SpaLaMarineDeLoire/', '', '7_NRB6TFX.jpg', '{}', 123, 5, '2022-12-02', 'Montsoreau', 35),
(284, 'Spa Le sen Bon', 'En choisissant Montsoreau comme destination de vacances, vous larguez les amarres et lâchez prise dans un cadre totalement naturel et préservé. La Marine de Loire vous permet de faire une vraie pause détente. Notre personnel dévoué du Sent-Bon Spa prendra', '9 Avenue de la Loire, Montsoreau, France', 'activite,activité,activites bien être', '0.0560872', '47.2167677', '49730', 'Maine-et-Loire', 'Pays de la Loire', 'France', '+33 2 41 50 18 21', 'resa@hotel-lamarinedeloire.com', '-', 'https://www.facebook.com/SpaLaMarineDeLoire/', '', '8_Lkq9Kjd.jpg', '{}', 123, 5, '2022-12-02', 'Montsoreau', 35),
(285, 'Cinq Mondes', 'Cinq Mondes vous invite à un véritable Voyage Sensoriel à travers une merveilleuse palette de soins empreints de qualité, d’authenticité et de cérémonial.', 'Spa Cinq Mondes Grand Hôtel-Dieu Lyon, 69002 Lyon, France', 'activite,activité,activites bien être', '4.8364033', '45.75966419999999', '69002', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0142660060', 'contact@cinqmondes.com', '-', 'https://www.facebook.com/cinqmondes/about', '', '002_QH2Jh3A.jpg', '{}', 134, 5, '2022-12-02', 'Lyon', 35);
INSERT INTO `etablissements` (`etablissements_id`, `etablissements_nom`, `etablissements_presentation`, `etablissements_adresse`, `etablissements_motcle`, `etablissements_longitude`, `etablissements_latitude`, `etablissements_codepostal`, `etablissements_departement`, `etablissements_region`, `etablissements_pays`, `etablissements_telephone`, `etablissements_email`, `etablissements_website`, `etablissements_fb`, `etablissements_insta`, `etablissements_photo`, `etablissements_activites`, `users_id`, `categories_id`, `etablissements_createdAt`, `etablissements_ville`, `sous_categories_id`) VALUES
(286, 'Cinq Mondes', 'Cinq Mondes vous invite à un véritable Voyage Sensoriel à travers une merveilleuse palette de soins empreints de qualité, d’authenticité et de cérémonial.', 'Spa Cinq Mondes Grand Hôtel-Dieu Lyon, 69002 Lyon, France', 'activite,activité,activites bien être', '4.8364033', '45.75966419999999', '69002', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0142660060', 'contact@cinqmondes.com', '-', 'https://www.facebook.com/cinqmondes/about', '', '003_koNiZ7J.jpg', '{}', 134, 5, '2022-12-02', 'Lyon', 35),
(287, 'Cinq Mondes', 'Cinq Mondes vous invite à un véritable Voyage Sensoriel à travers une merveilleuse palette de soins empreints de qualité, d’authenticité et de cérémonial.', 'Spa Cinq Mondes Grand Hôtel-Dieu Lyon, 69002 Lyon, France', 'activite,activité,activites bien être', '4.8364033', '45.75966419999999', '69002', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0142660060', 'contact@cinqmondes.com', '-', 'https://www.facebook.com/cinqmondes/about', '', '004_ogs1eAx.jpg', '{}', 134, 5, '2022-12-02', 'Lyon', 35),
(288, 'Cinq Mondes', 'Cinq Mondes vous invite à un véritable Voyage Sensoriel à travers une merveilleuse palette de soins empreints de qualité, d’authenticité et de cérémonial.', 'Spa Cinq Mondes Grand Hôtel-Dieu Lyon, 69002 Lyon, France', 'activite,activité,activites bien être', '4.8364033', '45.75966419999999', '69002', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0142660060', 'contact@cinqmondes.com', '-', 'https://www.facebook.com/cinqmondes/about', '', '005_6va8ZgU.jpg', '{}', 134, 5, '2022-12-02', 'Lyon', 35),
(289, 'Cinq Mondes', 'Cinq Mondes vous invite à un véritable Voyage Sensoriel à travers une merveilleuse palette de soins empreints de qualité, d’authenticité et de cérémonial.', 'Spa Cinq Mondes Grand Hôtel-Dieu Lyon, 69002 Lyon, France', 'activite,activité,activites bien être', '4.8364033', '45.75966419999999', '69002', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0142660060', 'contact@cinqmondes.com', '-', 'https://www.facebook.com/cinqmondes/about', '', '006_0RNsYa0.jpg', '{}', 134, 5, '2022-12-02', 'Lyon', 35),
(290, 'Cinq Mondes', 'Cinq Mondes vous invite à un véritable Voyage Sensoriel à travers une merveilleuse palette de soins empreints de qualité, d’authenticité et de cérémonial.', 'Spa Cinq Mondes Grand Hôtel-Dieu Lyon, 69002 Lyon, France', 'activite,activité,activites bien être', '4.8364033', '45.75966419999999', '69002', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0142660060', 'contact@cinqmondes.com', '-', 'https://www.facebook.com/cinqmondes/about', '', '007_lBSOF7V.jpg', '{}', 134, 5, '2022-12-02', 'Lyon', 35),
(291, 'Savonnerie Ciment', 'Remettre au gout du jour des savoir-faire artisanaux, avec des innovations maisons, voici la vocation des Savonneries Ciment. ', '100 Ave Parmentier, 75011 Paris, France', 'activite,activité,activites', '2.374052', '48.8662681', '75011', 'Département de Paris', 'Île-de-France', 'France', '+33 6 95 87 29 17', 'contact@ciment.paris', '-', '', 'https://www.instagram.com/p/ClqcP4SOGJ5/', 'Screenshot_2022-12-02_at_17-00-59_CIMENT_sur_Instagram_Depuis_plusieurs_années_on_est_no_urEG2Hu.png', '{}', 174, 5, '2022-12-02', 'Paris', 36),
(292, 'La fée bidule', 'Création et Recyclage de vêtements et accessoires de mode. Marque déposée.', '1052 Route du Roy, Origne, France', 'Recyclage couture boutique', '-0.5009821', '44.50215180000001', '33113', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 6 05 20 32 98', 'lafeebidule@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100064772838277', '', '1_dxQoo6V.jpg', '{}', 311, 5, '2022-12-13', 'Origne', 36),
(293, 'La fée bidule', 'Création et Recyclage de vêtements et accessoires de mode. Marque déposée.', '1052 Route du Roy, Origne, France', 'Recyclage couture boutique', '-0.5009821', '44.50215180000001', '33113', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 6 05 20 32 98', 'lafeebidule@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100064772838277', '', '2_62V5YJr.jpg', '{}', 311, 5, '2022-12-13', 'Origne', 36),
(294, 'La fée bidule', 'Création et Recyclage de vêtements et accessoires de mode. Marque déposée.', '1052 Route du Roy, Origne, France', 'Recyclage couture boutique', '-0.5009821', '44.50215180000001', '33113', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 6 05 20 32 98', 'lafeebidule@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100064772838277', '', '3_xNsJqtr.jpg', '{}', 311, 5, '2022-12-13', 'Origne', 36),
(295, 'La fée bidule', 'Création et Recyclage de vêtements et accessoires de mode. Marque déposée.', '1052 Route du Roy, Origne, France', 'Recyclage couture boutique', '-0.5009821', '44.50215180000001', '33113', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 6 05 20 32 98', 'lafeebidule@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100064772838277', '', '4_AXbx6CG.jpg', '{}', 311, 5, '2022-12-13', 'Origne', 36),
(296, 'La fée bidule', 'Création et Recyclage de vêtements et accessoires de mode. Marque déposée.', '1052 Route du Roy, Origne, France', 'Recyclage couture boutique', '-0.5009821', '44.50215180000001', '33113', 'Gironde', 'Nouvelle-Aquitaine', 'France', '+33 6 05 20 32 98', 'lafeebidule@gmail.com', '-', 'https://www.facebook.com/profile.php?id=100064772838277', '', '5_nXzbMaU.jpg', '{}', 311, 5, '2022-12-13', 'Origne', 36),
(297, 'claire annie fleuriste', 'Annie Claire vous proposes des bouquets de fleurs faits à partir de  fleurs et de végétaux rigoureusement sélectionnés par une équipe de fleuristes califiés', '39 Rue des Lices, Angers, France', 'fleurs fleuristes', '-0.554918', '47.4677946', '49100', 'Maine-et-Loire', 'Pays de la Loire', 'France', '0241881834', 'annieclaire.fleurs@orange.fr', '-', '', '', 'v.jpg', '{}', 200, 6, '2022-12-05', 'Angers', 37),
(298, 'claire annie fleuriste', 'Annie Claire vous proposes des bouquets de fleurs faits à partir de  fleurs et de végétaux rigoureusement sélectionnés par une équipe de fleuristes califiés', '39 Rue des Lices, Angers, France', 'fleurs fleuristes', '-0.554918', '47.4677946', '49100', 'Maine-et-Loire', 'Pays de la Loire', 'France', '0241881834', 'annieclaire.fleurs@orange.fr', '-', '', '', 'vvv.jpeg', '{}', 200, 6, '2022-12-05', 'Angers', 37),
(299, 'Let’s fly production ', 'Outillés de matériaux haut de gamme et performants, let fly production vous accompagne pour vos projets de tournage avec drones partout en france', 'Boulevard Constantin Descat, 59200 Tourcoing, France', 'Photographie, tournage vidéo, drones ', '3.1549129', '50.6989372', '59200', 'Nord', 'Hauts-de-France', 'France', '+33613970557', 'contact@letflyproduction', '-', '', 'Letsflyproduction', '48CF5C0A-357B-40DD-B7C9-49A43756835E.jpeg', '{}', 66, 6, '2022-11-30', 'Tourcoing', 38),
(300, 'Let’s fly production ', 'Outillés de matériaux haut de gamme et performants, let fly production vous accompagne pour vos projets de tournage avec drones partout en france', 'Boulevard Constantin Descat, 59200 Tourcoing, France', 'Photographie, tournage vidéo, drones ', '3.1549129', '50.6989372', '59200', 'Nord', 'Hauts-de-France', 'France', '+33613970557', 'contact@letflyproduction', '-', '', 'Letsflyproduction', '64AF6E6B-C09B-44A5-A739-E7AA2A91EFE1.jpeg', '{}', 66, 6, '2022-11-30', 'Tourcoing', 38),
(301, 'Let’s fly production ', 'Outillés de matériaux haut de gamme et performants, let fly production vous accompagne pour vos projets de tournage avec drones partout en france', 'Boulevard Constantin Descat, 59200 Tourcoing, France', 'Photographie, tournage vidéo, drones ', '3.1549129', '50.6989372', '59200', 'Nord', 'Hauts-de-France', 'France', '+33613970557', 'contact@letflyproduction', '-', '', 'Letsflyproduction', '89E5BD97-A9BF-49D4-86A9-E20C710C21E1.jpeg', '{}', 66, 6, '2022-11-30', 'Tourcoing', 38),
(302, 'Let’s fly production ', 'Outillés de matériaux haut de gamme et performants, let fly production vous accompagne pour vos projets de tournage avec drones partout en france', 'Boulevard Constantin Descat, 59200 Tourcoing, France', 'Photographie, tournage vidéo, drones ', '3.1549129', '50.6989372', '59200', 'Nord', 'Hauts-de-France', 'France', '+33613970557', 'contact@letflyproduction', '-', '', 'Letsflyproduction', '7125EDC6-C856-4B0A-AB5C-FCCD8EE164DB.jpeg', '{}', 66, 6, '2022-11-30', 'Tourcoing', 38),
(303, 'Teddy muchembled photographies', 'Pour tout événement important à vos yeux, teddy muchembled photographie est disponible pour vous aider à les immortaliser. Photographe professionnel et expérimenté il se déplace dans le secteur d’Amiens et ses alentours ', 'Amiens, France', 'Photographe ', '2.295753', '49.894067', '', 'Somme', 'Hauts-de-France', 'France', '+330685373471', 'teddy.muchembled@hotmail.fr', '-', '', 'Teddymuchembled', '83A4BD63-DC69-40A0-A9CB-3DD058FBEA0D.jpeg', '{}', 68, 6, '2022-11-30', 'Amiens', 38),
(304, 'Teddy muchembled photographies', 'Pour tout événement important à vos yeux, teddy muchembled photographie est disponible pour vous aider à les immortaliser. Photographe professionnel et expérimenté il se déplace dans le secteur d’Amiens et ses alentours ', 'Amiens, France', 'Photographe ', '2.295753', '49.894067', '', 'Somme', 'Hauts-de-France', 'France', '+330685373471', 'teddy.muchembled@hotmail.fr', '-', '', 'Teddymuchembled', '0F24F52E-C1DD-45D6-80B6-0328A7D1EB1B.jpeg', '{}', 68, 6, '2022-11-30', 'Amiens', 38),
(305, 'Teddy muchembled photographies', 'Pour tout événement important à vos yeux, teddy muchembled photographie est disponible pour vous aider à les immortaliser. Photographe professionnel et expérimenté il se déplace dans le secteur d’Amiens et ses alentours ', 'Amiens, France', 'Photographe ', '2.295753', '49.894067', '', 'Somme', 'Hauts-de-France', 'France', '+330685373471', 'teddy.muchembled@hotmail.fr', '-', '', 'Teddymuchembled', '07784D5F-141C-495C-8A46-4DE81702F467.jpeg', '{}', 68, 6, '2022-11-30', 'Amiens', 38),
(306, 'Puyfontaine studio', 'Vous ressentez comme un besoin de révéler votre personnalité avec des portraits authentiques et unique, studio Puyfontaine est à votre disposition ', '4 Rue des Guillemites, 75004 Paris, IDF, France', 'Studio éphémère, photographe, portraitiste , photographie ', '2.3573461', '48.8580364', '75004', 'Département de Paris', 'Île-de-France', 'France', '+330620085922', 'thibault@studio-puyfontaine.com', '-', '', 'StudioPuyfontaine', 'A324187C-1CDD-4812-9782-B51C4C032918.jpeg', '{}', 71, 6, '2022-11-30', 'Paris', 38),
(307, 'Puyfontaine studio', 'Vous ressentez comme un besoin de révéler votre personnalité avec des portraits authentiques et unique, studio Puyfontaine est à votre disposition ', '4 Rue des Guillemites, 75004 Paris, IDF, France', 'Studio éphémère, photographe, portraitiste , photographie ', '2.3573461', '48.8580364', '75004', 'Département de Paris', 'Île-de-France', 'France', '+330620085922', 'thibault@studio-puyfontaine.com', '-', '', 'StudioPuyfontaine', '34DC3207-E683-4192-953F-DA7255DEAB29.jpeg', '{}', 71, 6, '2022-11-30', 'Paris', 38),
(308, 'Puyfontaine studio', 'Vous ressentez comme un besoin de révéler votre personnalité avec des portraits authentiques et unique, studio Puyfontaine est à votre disposition ', '4 Rue des Guillemites, 75004 Paris, IDF, France', 'Studio éphémère, photographe, portraitiste , photographie ', '2.3573461', '48.8580364', '75004', 'Département de Paris', 'Île-de-France', 'France', '+330620085922', 'thibault@studio-puyfontaine.com', '-', '', 'StudioPuyfontaine', '780641CB-64DA-4514-9E74-7D1E1739D77E.jpeg', '{}', 71, 6, '2022-11-30', 'Paris', 38),
(309, 'Puyfontaine studio', 'Vous ressentez comme un besoin de révéler votre personnalité avec des portraits authentiques et unique, studio Puyfontaine est à votre disposition ', '4 Rue des Guillemites, 75004 Paris, IDF, France', 'Studio éphémère, photographe, portraitiste , photographie ', '2.3573461', '48.8580364', '75004', 'Département de Paris', 'Île-de-France', 'France', '+330620085922', 'thibault@studio-puyfontaine.com', '-', '', 'StudioPuyfontaine', '47A2E676-91F6-4C82-8E06-2C7B74083544.jpeg', '{}', 71, 6, '2022-11-30', 'Paris', 38),
(310, 'STEVE LE PEMP PHOTOGRAPHE', 'photo portrait, mariage, urbain, évènement, steve le pemp met son expérience en photographie à votre disposition partout en france', 'Région Centre-Val de Loire, Rue Saint-Pierre Lentin, Orléans, France', 'photo photographe portraitiste photographie', '1.9097564', '47.9012115', '45000', 'Loiret', 'Centre-Val de Loire', 'France', '  06 74 37 38 76', 'stevelepemp@live.fr', '-', '', 'Steve Le Pemp', '49933823_334086154104002_362991398162728603_n.jpg', '{}', 103, 6, '2022-12-01', 'Orléans', 38),
(311, 'STEVE LE PEMP PHOTOGRAPHE', 'photo portrait, mariage, urbain, évènement, steve le pemp met son expérience en photographie à votre disposition partout en france', 'Région Centre-Val de Loire, Rue Saint-Pierre Lentin, Orléans, France', 'photo photographe portraitiste photographie', '1.9097564', '47.9012115', '45000', 'Loiret', 'Centre-Val de Loire', 'France', '  06 74 37 38 76', 'stevelepemp@live.fr', '-', '', 'Steve Le Pemp', '41173533_1679221415522861_265529670879007067_n.jpg', '{}', 103, 6, '2022-12-01', 'Orléans', 38),
(312, 'STEVE LE PEMP PHOTOGRAPHE', 'photo portrait, mariage, urbain, évènement, steve le pemp met son expérience en photographie à votre disposition partout en france', 'Région Centre-Val de Loire, Rue Saint-Pierre Lentin, Orléans, France', 'photo photographe portraitiste photographie', '1.9097564', '47.9012115', '45000', 'Loiret', 'Centre-Val de Loire', 'France', '  06 74 37 38 76', 'stevelepemp@live.fr', '-', '', 'Steve Le Pemp', '43818095_318601248935423_3759423201316701417_n.jpg', '{}', 103, 6, '2022-12-01', 'Orléans', 38),
(313, ' AEROKONCEPT', 'aerokoncept vous accompagne pour toutes vos prises de vue aériennes et imagerie par drone', '43 Rue Jean Jaurès, 59152 Anstaing, France', 'drone imagerie aériennes', '3.1867549', '50.606529', '59152', 'Nord', 'Hauts-de-France', 'France', '07 62 83 50 50', 'contact@aerokoncept.com', '-', 'Aerokoncept', '', 'i1.jpeg', '{}', 121, 6, '2022-12-02', 'Anstaing', 38),
(314, 'STUDIO BLASCO', 'studio blaco est un studio de photographie spécialisé dans la phot portrait, grossesse, nouveau-né, ou encore mariage', 'Vaucluse, France', 'photographe', '6.685102', '47.2581909', '25380', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '04 89 51 34 30', 'contact@studioblasco.com', '-', '', 'studioblasco', '317340346_681633670271093_5282822085907209243_n.webp', '{}', 156, 6, '2022-12-02', 'Vaucluse', 38),
(315, 'STUDIO BLASCO', 'studio blaco est un studio de photographie spécialisé dans la phot portrait, grossesse, nouveau-né, ou encore mariage', 'Vaucluse, France', 'photographe', '6.685102', '47.2581909', '25380', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '04 89 51 34 30', 'contact@studioblasco.com', '-', '', 'studioblasco', '311030750_796144575023080_7588849264129234686_n.webp', '{}', 156, 6, '2022-12-02', 'Vaucluse', 38),
(316, 'STUDIO BLASCO', 'studio blaco est un studio de photographie spécialisé dans la phot portrait, grossesse, nouveau-né, ou encore mariage', 'Vaucluse, France', 'photographe', '6.685102', '47.2581909', '25380', 'Doubs', 'Bourgogne-Franche-Comté', 'France', '04 89 51 34 30', 'contact@studioblasco.com', '-', '', 'studioblasco', '272724643_259567546256268_5091022133715835871_n.jpg', '{}', 156, 6, '2022-12-02', 'Vaucluse', 38),
(317, 'donna photographie', 'donna photographie pour toutes vos envies de photo de mariage, femme enceinte, nouveau-né et famille', 'Coustouges, France', 'photo, photographie', '2.649408', '42.367484', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '06.49.65.09.93', 'DONNAPHOTOGRAPHIE@GMAIL.COM', '-', '', 'donna.photographie', '210719976_3915950061866670_3478284547538184369_n.jpg', '{}', 163, 6, '2022-12-02', 'Coustouges', 38),
(318, 'donna photographie', 'donna photographie pour toutes vos envies de photo de mariage, femme enceinte, nouveau-né et famille', 'Coustouges, France', 'photo, photographie', '2.649408', '42.367484', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '06.49.65.09.93', 'DONNAPHOTOGRAPHIE@GMAIL.COM', '-', '', 'donna.photographie', '118196700_744257859695429_656074727533257686_n.jpg', '{}', 163, 6, '2022-12-02', 'Coustouges', 38),
(319, 'donna photographie', 'donna photographie pour toutes vos envies de photo de mariage, femme enceinte, nouveau-né et famille', 'Coustouges, France', 'photo, photographie', '2.649408', '42.367484', '', 'Pyrénées-Orientales', 'Occitanie', 'France', '06.49.65.09.93', 'DONNAPHOTOGRAPHIE@GMAIL.COM', '-', '', 'donna.photographie', '110019756_748538455957762_455712871920407953_n.jpg', '{}', 163, 6, '2022-12-02', 'Coustouges', 38),
(320, 'gilles lefrancq photographie', 'gilles lefrancq est un spécialiste du reportage photographique il vous aide à donner des images à vos idée', 'Nîmes, France', 'reportage photographique ', '4.360054', '43.836699', '', 'Gard', 'Occitanie', 'France', '+33 (0)6 75 67 64 85', 'photo@gilleslefrancq.fr', '-', '', 'gilleslefrancq', '95143224_227286701896414_6483040269568656544_n.jpg', '{}', 166, 6, '2022-12-02', 'Nîmes', 38),
(321, 'gilles lefrancq photographie', 'gilles lefrancq est un spécialiste du reportage photographique il vous aide à donner des images à vos idée', 'Nîmes, France', 'reportage photographique ', '4.360054', '43.836699', '', 'Gard', 'Occitanie', 'France', '+33 (0)6 75 67 64 85', 'photo@gilleslefrancq.fr', '-', '', 'gilleslefrancq', '28754555_201497703941878_4753739166934630400_n.jpg', '{}', 166, 6, '2022-12-02', 'Nîmes', 38),
(322, 'gilles lefrancq photographie', 'gilles lefrancq est un spécialiste du reportage photographique il vous aide à donner des images à vos idée', 'Nîmes, France', 'reportage photographique ', '4.360054', '43.836699', '', 'Gard', 'Occitanie', 'France', '+33 (0)6 75 67 64 85', 'photo@gilleslefrancq.fr', '-', '', 'gilleslefrancq', '93421019_164849671653662_5131535036229803979_n.jpg', '{}', 166, 6, '2022-12-02', 'Nîmes', 38),
(323, ' DOCHLERAUDREY PHOTOGRAPHIE', 'audrey dolcer est une spécialiste de photo de mariage et famille', 'Loire-Atlantique, France', 'photo photographe', '-1.8157647', '47.27804680000001', '', 'Loire-Atlantique', 'Pays de la Loire', 'France', '06 73 04 85 86', 'audreydochler@hotmail.fr', '-', '', 'audreydochler_photographe', '292976107_143569288296840_6558134293709447193_n.webp', '{}', 171, 6, '2022-12-02', '', 38),
(324, ' DOCHLERAUDREY PHOTOGRAPHIE', 'audrey dolcer est une spécialiste de photo de mariage et famille', 'Loire-Atlantique, France', 'photo photographe', '-1.8157647', '47.27804680000001', '', 'Loire-Atlantique', 'Pays de la Loire', 'France', '06 73 04 85 86', 'audreydochler@hotmail.fr', '-', '', 'audreydochler_photographe', '316550331_646966797128518_6551222238430386183_n.jpg', '{}', 171, 6, '2022-12-02', '', 38),
(325, ' DOCHLERAUDREY PHOTOGRAPHIE', 'audrey dolcer est une spécialiste de photo de mariage et famille', 'Loire-Atlantique, France', 'photo photographe', '-1.8157647', '47.27804680000001', '', 'Loire-Atlantique', 'Pays de la Loire', 'France', '06 73 04 85 86', 'audreydochler@hotmail.fr', '-', '', 'audreydochler_photographe', '275025389_1083108535568482_3230056954465067645_n.webp', '{}', 171, 6, '2022-12-02', '', 38),
(326, 'SONOTECH CONSULTING', 'Etablissemnet de cours en ligne', 'Lolita Fort Point, Summer Street, Boston, MA, USA', 'Cours, Java, Python', '-71.0512045', '42.35043659999999', '02210', 'Suffolk County', 'Massachusetts', 'United States', '+22810223128', 'pepe20@gmail.com', '-', '', '', 'leptop.jpg', '{}', 154, 6, '2022-12-05', 'Boston', 38),
(327, 'Cameki Production', 'Photographe vidéaste professionnel pour vos évènements, enregistrer vos meilleurs moments et créer les plus beaux souvenirs.', '249 Rue du Faubourg Saint-Martin, Paris, France', 'Photographe Vidéaste évènement ', '2.3670949', '48.8829732', '75010', 'Département de Paris', 'Île-de-France', 'France', '0652545490', 'contact.cameki@gmail.com', '-', '', 'cameki_production', 'P1077316.jpg', '{}', 331, 6, '2022-12-18', 'Paris', 38),
(328, 'BARON LEFEVRE', 'Grace à des produits frais BARON LEFEVRE TRAITEUR vous propose une cuisine simple, une cuisine familiale.', '1 Rue Cassini, 44000 Nantes, France', 'traiteur', '-1.5655343', '47.2145798', '44000', 'Loire-Atlantique', 'Pays de la Loire', 'France', '02.40.47.90.45', 'boutiquetraiteur@baron-cassini.fr', '-', '', 'traiteurbaronlefevre', '270996698_608164670486290_35015030128493317_n.jpg', '{}', 193, 6, '2022-12-05', 'Nantes', 39),
(329, 'BARON LEFEVRE', 'Grace à des produits frais BARON LEFEVRE TRAITEUR vous propose une cuisine simple, une cuisine familiale.', '1 Rue Cassini, 44000 Nantes, France', 'traiteur', '-1.5655343', '47.2145798', '44000', 'Loire-Atlantique', 'Pays de la Loire', 'France', '02.40.47.90.45', 'boutiquetraiteur@baron-cassini.fr', '-', '', 'traiteurbaronlefevre', '316024491_495494175683574_4330894933809715522_n.jpg', '{}', 193, 6, '2022-12-05', 'Nantes', 39),
(330, 'Plaisir fleuri', 'envie de faire plaisir à un proche lui arraché un sourire en lui offrant des fleurs pour toutes les occasions plaisir fleuri vous offre son catalogue de fleur et son service de livraison rapide', 'Lentilly, France', 'fleurs fleuristes bouquet', '4.662736', '45.818962', '69210', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '06.18.17.18.94', 'plaisirfleuri@gmail.com', '-', '', 'plaisir.fleuri', '163665145_493343738356456_7546764846969255721_n.jpg', '{}', 99, 6, '2022-12-01', 'Lentilly', 40),
(331, 'Plaisir fleuri', 'envie de faire plaisir à un proche lui arraché un sourire en lui offrant des fleurs pour toutes les occasions plaisir fleuri vous offre son catalogue de fleur et son service de livraison rapide', 'Lentilly, France', 'fleurs fleuristes bouquet', '4.662736', '45.818962', '69210', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '06.18.17.18.94', 'plaisirfleuri@gmail.com', '-', '', 'plaisir.fleuri', '170531117_275442547627357_5729655814739678845_n.jpg', '{}', 99, 6, '2022-12-01', 'Lentilly', 40),
(332, 'Plaisir fleuri', 'envie de faire plaisir à un proche lui arraché un sourire en lui offrant des fleurs pour toutes les occasions plaisir fleuri vous offre son catalogue de fleur et son service de livraison rapide', 'Lentilly, France', 'fleurs fleuristes bouquet', '4.662736', '45.818962', '69210', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '06.18.17.18.94', 'plaisirfleuri@gmail.com', '-', '', 'plaisir.fleuri', '127086928_403515427668807_4838788493287361275_n.jpg', '{}', 99, 6, '2022-12-01', 'Lentilly', 40),
(333, 'CHEZ TATA SOPHIE', 'CHEZ TATA SOPHIE est une jardinerie fleuristerie ou vous trouverez toutes les fleurs que vous recherchez', 'Avenue de Corbeil, 77350 Le Mée-sur-Seine, France', 'fleurs fleuristes', '2.6389045', '48.5505287', '', 'Seine-et-Marne', 'Île-de-France', 'France', '0164097950', 'coucou@cheztatasophie.fr', '-', 'Jardin De France', '', 'LL.jpeg', '{}', 204, 6, '2022-12-05', 'Le Mée-sur-Seine', 40),
(334, 'CHEZ TATA SOPHIE', 'CHEZ TATA SOPHIE est une jardinerie fleuristerie ou vous trouverez toutes les fleurs que vous recherchez', 'Avenue de Corbeil, 77350 Le Mée-sur-Seine, France', 'fleurs fleuristes', '2.6389045', '48.5505287', '', 'Seine-et-Marne', 'Île-de-France', 'France', '0164097950', 'coucou@cheztatasophie.fr', '-', 'Jardin De France', '', 'L.jpeg', '{}', 204, 6, '2022-12-05', 'Le Mée-sur-Seine', 40),
(335, 'Scoot nomad', 'Vous avez besoin d’un scooter pour satisfaire vos envies de tourisme où autres, scoot nomad viens à votre secours en vous proposant sa panoplie de scooter pour location à des coûts très abordables ', '8 Rue Baudin, Villeurbanne, France', 'Location, scooter, tourisme ', '4.904913200000001', '45.7660245', '69100', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0665727499', 'scoot-nomad@live', '-', '', 'Ladrometourisme', 'DA5A02AA-C361-4245-9BB7-036AC505FC5B.jpeg', '{}', 75, 6, '2022-11-30', 'Villeurbanne', 41),
(336, 'Scoot nomad', 'Vous avez besoin d’un scooter pour satisfaire vos envies de tourisme où autres, scoot nomad viens à votre secours en vous proposant sa panoplie de scooter pour location à des coûts très abordables ', '8 Rue Baudin, Villeurbanne, France', 'Location, scooter, tourisme ', '4.904913200000001', '45.7660245', '69100', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0665727499', 'scoot-nomad@live', '-', '', 'Ladrometourisme', '86EC7A07-F8E3-4D96-8036-1E7A8E0900F1.jpeg', '{}', 75, 6, '2022-11-30', 'Villeurbanne', 41),
(337, 'Scoot nomad', 'Vous avez besoin d’un scooter pour satisfaire vos envies de tourisme où autres, scoot nomad viens à votre secours en vous proposant sa panoplie de scooter pour location à des coûts très abordables ', '8 Rue Baudin, Villeurbanne, France', 'Location, scooter, tourisme ', '4.904913200000001', '45.7660245', '69100', 'Rhône', 'Auvergne-Rhône-Alpes', 'France', '0665727499', 'scoot-nomad@live', '-', '', 'Ladrometourisme', 'BA13C046-BBDE-497B-9005-5A1A527B9162.jpeg', '{}', 75, 6, '2022-11-30', 'Villeurbanne', 41),
(338, 'Vans Ardèche', 'vans Ardèche est un Loueur professionnel de van aménagé pour vos nuits et expérience insolites, vos libertés et vos envies sont leur priorités', '120 Chemin du Vivier, 07130 Soyons, France', 'location de van', '4.850665999999999', '44.8847712', '07130', 'Ardèche', 'Auvergne-Rhône-Alpes', 'France', '+33 7 82 26 99 77', 'vansardeche07@gmail.com', '-', '', 'vansardeche', '72392477_1287695244763107_5664195839030719903_n.jpg', '{}', 89, 6, '2022-12-01', 'Soyons', 41),
(339, 'Vans Ardèche', 'vans Ardèche est un Loueur professionnel de van aménagé pour vos nuits et expérience insolites, vos libertés et vos envies sont leur priorités', '120 Chemin du Vivier, 07130 Soyons, France', 'location de van', '4.850665999999999', '44.8847712', '07130', 'Ardèche', 'Auvergne-Rhône-Alpes', 'France', '+33 7 82 26 99 77', 'vansardeche07@gmail.com', '-', '', 'vansardeche', '73123797_166360321104103_5737304233868044188_n.jpg', '{}', 89, 6, '2022-12-01', 'Soyons', 41),
(340, 'Vans Ardèche', 'vans Ardèche est un Loueur professionnel de van aménagé pour vos nuits et expérience insolites, vos libertés et vos envies sont leur priorités', '120 Chemin du Vivier, 07130 Soyons, France', 'location de van', '4.850665999999999', '44.8847712', '07130', 'Ardèche', 'Auvergne-Rhône-Alpes', 'France', '+33 7 82 26 99 77', 'vansardeche07@gmail.com', '-', '', 'vansardeche', '82964013_506475833317879_3195120263270981629_n.jpg', '{}', 89, 6, '2022-12-01', 'Soyons', 41),
(341, 'easy Location', 'pour toutes location de véhicule faites-vous livrer immédiatement chez vous par easy location la crème de la crème en la matière', '6 Rue Chantemerle, Ville-la-Grand, France', 'location voiture véhicules  ', '6.2680396', '46.2018571', '74100', 'Haute-Savoie', 'Auvergne-Rhône-Alpes', 'France', '(+33)7 69 75 05 44', 'imedialocationannemasse@gmail.com', '-', '', '', 'bbbb.jpg', '{}', 92, 6, '2022-12-01', 'Ville-la-Grand', 41),
(342, 'easy Location', 'pour toutes location de véhicule faites-vous livrer immédiatement chez vous par easy location la crème de la crème en la matière', '6 Rue Chantemerle, Ville-la-Grand, France', 'location voiture véhicules  ', '6.2680396', '46.2018571', '74100', 'Haute-Savoie', 'Auvergne-Rhône-Alpes', 'France', '(+33)7 69 75 05 44', 'imedialocationannemasse@gmail.com', '-', '', '', 'qqq.png', '{}', 92, 6, '2022-12-01', 'Ville-la-Grand', 41),
(343, 'easy Location', 'pour toutes location de véhicule faites-vous livrer immédiatement chez vous par easy location la crème de la crème en la matière', '6 Rue Chantemerle, Ville-la-Grand, France', 'location voiture véhicules  ', '6.2680396', '46.2018571', '74100', 'Haute-Savoie', 'Auvergne-Rhône-Alpes', 'France', '(+33)7 69 75 05 44', 'imedialocationannemasse@gmail.com', '-', '', '', 'bbbb_K9LJ8WV.jpg', '{}', 92, 6, '2022-12-01', 'Ville-la-Grand', 41),
(344, 'RENT A CAR', 'Pour toutes locations de voiture à nantes contactez RENT A CAR', '45 Quai de Malakoff, 44000 Nantes, France', 'location voiture', '-1.5413143', '47.21486549999999', '44000', 'Loire-Atlantique', 'Pays de la Loire', 'France', '0240751515', 'nantesgare@rentacar.fr', '-', 'Rent A Car Location de voitures et utilitaires', '', 'ww.jpg', '{}', 195, 6, '2022-12-05', 'Nantes', 41),
(345, 'RENT A CAR', 'Pour toutes locations de voiture à nantes contactez RENT A CAR', '45 Quai de Malakoff, 44000 Nantes, France', 'location voiture', '-1.5413143', '47.21486549999999', '44000', 'Loire-Atlantique', 'Pays de la Loire', 'France', '0240751515', 'nantesgare@rentacar.fr', '-', 'Rent A Car Location de voitures et utilitaires', '', 'www.jpg', '{}', 195, 6, '2022-12-05', 'Nantes', 41),
(346, 'Un vélo à la campagne', 'un vélo à la campagne est un service de location de vélos électriques et classiques pour satisfaire vos envies de balades ou de randonné ', 'La Gare, 03330 Louroux-de-Bouble, France', 'vélo location ', '2.9858675', '46.2237296', '03330', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '04 70 32 72 26', 'unveloalacampagne@gmail.com', '-', '', 'un_velo_a_la_campagne', '185223699_284686663408112_71900596339941476_n.jpg', '{}', 95, 6, '2022-12-01', 'Louroux-de-Bouble', 42),
(347, 'Un vélo à la campagne', 'un vélo à la campagne est un service de location de vélos électriques et classiques pour satisfaire vos envies de balades ou de randonné ', 'La Gare, 03330 Louroux-de-Bouble, France', 'vélo location ', '2.9858675', '46.2237296', '03330', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '04 70 32 72 26', 'unveloalacampagne@gmail.com', '-', '', 'un_velo_a_la_campagne', '120165406_356853352420181_4192022334187680973_n.jpg', '{}', 95, 6, '2022-12-01', 'Louroux-de-Bouble', 42),
(348, 'Un vélo à la campagne', 'un vélo à la campagne est un service de location de vélos électriques et classiques pour satisfaire vos envies de balades ou de randonné ', 'La Gare, 03330 Louroux-de-Bouble, France', 'vélo location ', '2.9858675', '46.2237296', '03330', 'Allier', 'Auvergne-Rhône-Alpes', 'France', '04 70 32 72 26', 'unveloalacampagne@gmail.com', '-', '', 'un_velo_a_la_campagne', '241677242_220653560079608_1769928991979194572_n.jpg', '{}', 95, 6, '2022-12-01', 'Louroux-de-Bouble', 42),
(349, 'Location de canoë, kayak, vélo, VTC ou VTT', 'Base nautique de location de canoës et de kayak,de paddle, de vélos VTT,VTC en Lot-et-Garonne', 'Cadamas, Montayral, France', 'Service de Location du velo', '0.9886259999999998', '44.492121', '47500', 'Lot-et-Garonne', 'Nouvelle-Aquitaine', 'France', '+33 6 52 38 65 23', 'nic.ovara1@orange.fr', '-', 'https://www.facebook.com/profile.php?id=100063771320476', '', '2_bxMBI4O.jpg', '{}', 345, 6, '2022-12-19', 'Montayral', 42),
(350, 'Location de canoë, kayak, vélo, VTC ou VTT', 'Base nautique de location de canoës et de kayak,de paddle, de vélos VTT,VTC en Lot-et-Garonne', 'Cadamas, Montayral, France', 'Service de Location du velo', '0.9886259999999998', '44.492121', '47500', 'Lot-et-Garonne', 'Nouvelle-Aquitaine', 'France', '+33 6 52 38 65 23', 'nic.ovara1@orange.fr', '-', 'https://www.facebook.com/profile.php?id=100063771320476', '', '4_qwI2UAi.jpg', '{}', 345, 6, '2022-12-19', 'Montayral', 42),
(351, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '1_Qk25CXM.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(352, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '2_gkt2skm.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(353, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '3_zz9brrt.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(354, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '4_vjndBlB.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(355, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '5_IF72Xdc.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(356, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '6_JBX8FaR.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(357, 'Canoë-kayak dans les Gorges du Gardon', 'Location de canoes kayak sur la rivière le Gardon à proximité du Pont du Gard ', '194 Chemin de Saint Privat, Collias, France', 'Service, divers', '4.4849052', '43.9544443', '30210', 'Gard', 'Occitanie', 'France', '+33 4 66 22 87 20', 'canoe-collias.fr@hotmail.fr', '-', 'https://www.facebook.com/profile.php?id=100063457903226', '', '8_BcI3QAK.jpg', '{}', 414, 6, '2022-12-22', 'Collias', 43),
(358, 'fevrier4', 'dqsdf', 'Nir\'Info, Lot 2A 80 C, Tananarive, Madagascar', 'fevrier', '47.5315768', '-18.9037026', '101', 'District d\'Antananarivo Avaradrano', 'Analamanga', 'Madagascar', '0343403434', 'fevrier@gmail.com', 'qsfd', 'qsdf', 'qsdf', '[\"pro\\/uploads\\/pngtree-vector-phone-cell-icon-png-image_332938.jpg\",\"pro\\/uploads\\/en epi.jfif\",\"pro\\/uploads\\/Moov_Africa_logo.png\",\"pro\\/uploads\\/alen-alen-wer.jpg\"]', '{\"Piscines\":\"on\",\"Salle de bain et W.C\":\"on\",\"Animaux\":\"on\",\"Lits doubles\":\"on\",\"Lits superpos\\u00e9s\":\"on\",\"Bain \\u00e0 remous\":null,\"Acc\\u00e8s \\u00e0 Internet\":null,\"Enfants\":null,\"Lits d\'appoints\":null,\"Accessible aux handicap\\u00e9s\":null,\"Sauna\":null,\"M\\u00e9nage inclus\":null,\"Petit d\\u00e9jeuner inclus\":null,\"Lits pour b\\u00e9b\\u00e9\":null,\"Possibilit\\u00e9 de manger sur place\":null,\"Cuisines\":null,\"Draps et linges inclus\":null,\"Lits simples\":null,\"Canap\\u00e9s lits\":\"on\",\"Tarif\":\"1000 euros\\/jour\",\"Capacit\\u00e9\":\"10\",\"Age minimum\":\"12\",\"Nombre de couchage\":\"5\"}', 420, 1, '2023-03-22', 'Tananarive', 1),
(359, 'Le Grand Canyon', 'Je suis le grand canyon de ma ville hahaha', 'Rennes, France', 'grand canyon', '-1.6777926', '48.117266', '10002', 'Ille-et-Vilaine', 'Bretagne', 'France', '0345003450', 'grand@gmail.com', 'https://nir-info.mg', 'https://facebook.com', 'https://instagram.com', '[\"pro\\/uploads\\/0973cd4e200835f5f649064dbeec93e9.jpg\",\"pro\\/uploads\\/6435-music-skin-WallFizz.jpg\",\"pro\\/uploads\\/beginners_start_here-play.jpg\",\"pro\\/uploads\\/conseils-pour-une-photo-de-profil-reussie-mateus-campos-felipe.jpg\",\"pro\\/uploads\\/DzHWFcUXQAE4tj8.jpg\"]', '{\"Piscines\":\"on\",\"Salle de bain et W.C\":\"on\",\"Animaux\":null,\"Lits doubles\":null,\"Lits superpos\\u00e9s\":null,\"Bain \\u00e0 remous\":\"on\",\"Acc\\u00e8s \\u00e0 Internet\":\"on\",\"Enfants\":\"on\",\"Lits d\'appoints\":null,\"Accessible aux handicap\\u00e9s\":null,\"Sauna\":null,\"M\\u00e9nage inclus\":null,\"Petit d\\u00e9jeuner inclus\":null,\"Lits pour b\\u00e9b\\u00e9\":null,\"Possibilit\\u00e9 de manger sur place\":null,\"Cuisines\":null,\"Draps et linges inclus\":null,\"Lits simples\":null,\"Canap\\u00e9s lits\":null,\"Tarif\":\"100\",\"Capacit\\u00e9\":\"12\",\"Age minimum\":\"12\",\"Nombre de couchage\":null}', 422, 1, '2023-03-23', 'Rennes', 6),
(363, 'Atelier dev', 'Atelier de developpement d\'application mobile et desktop', 'Rennes, France', 'dev mobile', '-1.6777926', '48.117266', '1300', 'Ille-et-Vilaine', 'Bretagne', 'France', '0348712345', 'dev@dev.com', 'https://tuto-info.com', 'https://facebook.com', 'https://instagram.com', '[\"pro\\/uploads\\/0.PNG\",\"pro\\/uploads\\/9.PNG\",\"pro\\/uploads\\/Capture.PNG\",\"pro\\/uploads\\/Capture7.PNG\",\"pro\\/uploads\\/kl.PNG\",\"pro\\/uploads\\/l.PNG\",\"pro\\/uploads\\/LOGO.jpg\",\"pro\\/uploads\\/R.PNG\"]', '{\"Heure d\'ouverture\":\"10:00\",\"Heure de fermeture\":\"20:00\",\"Jours ouverts\":\"Lundi\",\"Adapt\\u00e9 aux handicap\\u00e9s\":\"on\"}', 422, 2, '2023-03-24', 'Rennes', 12);

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_contenu` text NOT NULL,
  `faq_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `forfait`
--

CREATE TABLE `forfait` (
  `id` int(11) NOT NULL,
  `prix` float DEFAULT NULL,
  `nbre_annee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `forfait`
--

INSERT INTO `forfait` (`id`, `prix`, `nbre_annee`) VALUES
(1, 50, 1),
(2, 94.99, 2);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `sous_categories_id` int(11) NOT NULL,
  `sous_categories_nom` varchar(255) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sous_categories_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sous_categories`
--

INSERT INTO `sous_categories` (`sous_categories_id`, `sous_categories_nom`, `categories_id`, `sous_categories_description`) VALUES
(1, 'Cabanes dans les arbres', 1, 'S’endormir au plus près des étoiles, se réveiller avec le chant des oiseaux et être surpris par un écureuil qui vous regarde depuis sa branche, quoi de plus bienfaisant que ce retour en enfance  dans une cabane en bois, perchée en hauteur...'),
(2, 'Cabanes sur terre', 1, 'Les cabanes sont uniques, chacune dans leur style et souvent construites en fonction de leur environnement. Elles permettent au plus petits comme aux plus âgés de vivre un rêve éveillé. '),
(3, 'Cabanes sous terre', 1, 'Cette sensation étrange que l’on peut éprouver en habitant une caverne, une grotte ou une demeure aménagée dans le roc donne aux habitats troglodytes ce côté rassurant et chaleureux d’une demeure solide.'),
(4, 'Cabanes sur l\'eau', 1, 'Les séjours dans les cabanes sur l\'eau sont souvent  très agréables car ils sont  au calme, en pleine nature pour pouvoir admirer un magnifique ciel étoilé, écouter les grenouilles et les divers oiseaux...'),
(5, 'Tipis - tentes - yourtes', 1, 'Une nuit insolite en tipi indien ou dans une yourte permet d\'apprécier l’atmosphère unique de ces habitats nomades avec leurs lits surbaissés, les grands tapis, les coussins colorés et les couettes moelleuses. '),
(6, 'Bulles', 1, 'Dormir à la belle étoile, à l’abri des intempéries sous un toit transparent pour profiter d’une immersion en pleine nature, avec une vue à 360° ! Des bulles, des dômes, des pyramides… tout en transparence pour ne faire qu’un avec la nuit.'),
(7, 'Habitats roulants', 1, 'Ce mode d’habitation est synonyme de liberté. Alors que les roulottes étaient pour les gitans, tziganes et autres nomades un moyen de locomotion autant que de lieu de vie, aujourd\'hui vous pouvez en profiter pour la nuit !'),
(8, 'Monuments Historiques', 1, 'Vous y trouverez châteaux, abbayes, phares et maisons historiques transformées aujourd\'hui en hébergements ou chambres d\'hôtes. Amateurs d’histoires et de bâtis anciens? Ces hébergements sont idéal pour des séjours authentiques!'),
(9, 'Bateaux', 1, 'Alors que chercher à dormir dans un bateau ne coule pas de source, c’est pourtant un moyen très ressourçant pour une soirée en amoureux ou un week-end entre amis...'),
(10, 'Hébergements de charme', 1, 'La chambre d’hôte est un mode d’hébergement pour les personnes qui recherchent la proximité, la convivialité et le bien être. Souvent, on peut aussi profiter du jardin et de la piscine. Les propriétaires aiment accueillir chez eux !'),
(11, 'Hôtels atypiques', 1, 'Certains hôtels  sont atypiques, hors du commun, fascinants et inhabituels par leur forme, leur décoration et leur ambiance. Souvent accompagnés par des décorateurs d’intérieurs plus originaux les uns que les autres, profitez-en !'),
(12, 'Bars lounges - Whiskies - Cocktails', 2, 'Souvent dans une atmosphère calfeutrée et propice à la dégustation, les lieux proposent généralement la dégustation de whiskies, du single malt à une sélection impressionnante de scotchs aussi nombreuse que variée.  '),
(13, 'Bars rooftop', 2, 'Du dernier étage d’un gratte-ciel en passant par une terrasse romantique, les bars rooftops avec leur vue spectaculaire proposent aussi bien des dîners sophistiqués qu’un joli cocktail, une soirée électro ou un moment fun en famille. '),
(14, 'Bars à vins', 2, 'C’est le week-end ! Les vacances ! Alors pourquoi ne pas se retrouver entre amis, amoureux ou en famille autour d’un verre de vin ?'),
(15, 'Pubs - Bars à Tapas', 2, 'Se retrouver entre amis pour se détendre autour d’un verre accompagné de tapas, rien de plus convivial! Ou peut-être un pub irlandais traditionnel décoré d’éléments en bois sombres serait plus adapté?'),
(16, 'Bar à thèmes - Jeux - Billard', 2, 'Depuis un certain temps, le phénomène des bars à thème ne cesse de s’intensifier en France. Ces bars, malgré leurs appellations, ne proposent pas tous des boissons alcoolisées, mais plutôt des ambiances comme celle des jeux vidéo et autres jeux...   '),
(17, 'Concerts Bars', 2, 'S’amuser, se détendre en assistant à des concerts de jazz, Blues, Rock, countries… avec des saxophonites, pianistes, chanteurs…nombreux sont les bars qui offrent ce genre de concert dans tous les styles de musique!'),
(18, 'Bars à Chats', 2, 'Les petits félins sont une grande passion et la gourmandise un très joli défaut ?  On peut se détendre entre calme et relaxation avec son animal préféré ! '),
(19, 'Restaurants originaux', 3, 'De nombreux restaurants proposent pour les soirées de fête entre amis ou d\'anniversaire, des animations avec certains concepts assez hors normes pour séduire les clients !'),
(20, 'Restaurants avec animation', 3, 'Une soirée avec animation est une manière d’offrir une expérience unique et différente aux clients, de souder les équipes de travail, de divertir les amis et de s’amuser en famille. Bien sûr, un groupe de musique est l’animation en général !'),
(21, 'Brasseries - Bistrots - Auberges', 3, 'Si, au départ, le bistro avec tables en bois ou zinc et nappes vichy, se voulait modeste et sans prétention, à présent, ils proposent des espaces généralement ouverts, conviviaux et modernes. Le design y a pris une place importante !'),
(22, 'Cuisine traditionnelle', 3, 'La cuisine traditionnelle française fait référence à divers styles gastronomiques dérivés de la culture française. Chaque région, parfois même chaque département, regorge de recettes traditionnelles souvent transmises de génération en génération. '),
(23, 'Cuisine du monde', 3, 'On aurait envie de se changer les idées et partir ailleurs manger une cuisine aux saveurs exotiques! On peut voyager et se faire un petit tour du monde à travers les cuisines asiatique, orientale, américaine et européenne.'),
(24, 'Type fast-food - Tapas', 3, 'Ce type de restauration est axé sur la rapidité, à toute heure et pour un prix peu élevé, qui peuvent être consommés sur place ou emportés sous emballage. On y retrouve les food-trucks et les traditionnels enseignes d’hamburgers, des kebabs, de pizza'),
(25, 'Au fil de l\'eau', 4, 'Il y a mille et une façon de se balader et celle où on glisse sur l’eau est tout de même, une des plus agréable, il faut bien le dire ! A bord d’un canoë, kayak ou paddle à deux, en famille ou entre amis, vivre une expérience 100 % nature !'),
(26, 'Randonnées natures', 4, 'Randonner, c\'est voyager à son propre rythme, se retrouver au cœur de la nature et des routes pittoresques qui mènent à des trésors insoupçonnés. On peut en profiter pour aller à la pêche des perles sauvages à pied, à vélo ou à cheval, en solo, en fa'),
(27, 'Sites historiques', 4, 'Se balader, c’est aussi découvrir  les joyaux architecturaux d’une ville dans laquelle il fait bon entamer une balade historique à travers les siècles.  '),
(28, 'Les perles sauvages', 4, 'Ces balades offrent un environnement naturel exceptionnel. Si on souhaite etre dans secteur sauvage, il existe de nombreux lieux remarquables avec des randonnées absolument fabuleuses à faire!'),
(29, 'Les jardins imaginaires', 4, 'Ces jardins sont dessinés avec des lignes architecturales très contemporaines, illustrations de la manière dont l’homme dialogue avec la Nature. Les parcours proposent comme des tableaux avec des voûtes parfumées faites de houblon, de glycine, de jas'),
(30, 'Ateliers et stages', 5, 'Envie d\'une activité pour quelques jours ou pour toute l’année? Que ce soit les activités sportives ou manuelles, que l\'on soit un artisan, un créatif ou un artiste dans l\'âme, on peut toujours apprendre à faire quelque chose...'),
(31, 'Activités physiques et sportives', 5, 'L’activité physique vise à améliorer essentiellement sa condition physique et se présente sous forme de jeux individuels ou collectifs, donnant généralement lieu à  des compétitions mais pas seulement. On sait bien que la pratique régulière d\'un spor'),
(32, 'Activités ludiques', 5, 'Les activités ludiques sont souvent des activités qui concernent les enfants mais pas que !'),
(33, 'Activités gustatives', 5, 'Vous avez envie de faire une activité dans l’univers de la cuisine ou encore, vous cherchez à faire des dégustations ? Il y a beaucoup de façons de déguster les produits ! Souvent, les artisans vous font découvrir l’amour de leurs produits de terroir'),
(34, 'Activités éducatives', 5, 'On peut toujours en apprendre plus. Pour visiter, en prendre plein les yeux, découvrir de nouvelles choses, revenir sur des souvenirs, sentir, voir, toucher, entendre…Il est  toujours satisfaisant de se “coucher le soir moins bête…” ! '),
(35, 'Activités bien-être', 5, 'Lorsque l’on éprouve cet état, cette sensation de bien-être, c’est que la satisfaction des besoins du corps et le calme de l\'esprit sont atteints.  On  peut les retrouver grâce aux massages, au yoga ou dans des ateliers de développement personnel.'),
(36, 'Shopping artisans et créateurs', 5, 'Retrouvez ici, des boutiques de créateurs partout où vous serez en France. Trouvez des artistes créateurs  pour faire du shopping de façon créative !'),
(37, 'Organisateurs', 6, 'L\'organisateur est celui qui régie la conception d\'un événement de bout en bout, mais pas obligatoirement. Il peut s’occuper des préparatifs, de l\'organisation matérielle d\'un événement, du mariage à l’anniversaire en passant par la réception...'),
(38, 'Photographes', 6, 'C’est un professionnel de l\'image et il existe plusieurs types de photographes. Créatif, il propose de réaliser des prises de vue dans les domaines de la mode, du mariage, du paysage...Souvent on peut faire appel à un photographe/vidéaste aussi !'),
(39, 'Traiteurs', 6, 'Pour confectionner le repas idéal ou créer son évènement gourmand, le savoir-faire des traiteurs permet la qualité et les produits travaillés sont les ingrédients d’une soirée réussie. Le traiteur se déplace et conceptualise le repas sur place !'),
(40, 'Fleuristes', 6, 'Les fleuristes assemblent chaque bouquet avec amour pour donner le meilleur de leur art. Les fleurs peuvent être livrées par de véritables artisans qui savent réaliser une composition florale ! Faites vous plaisir !'),
(41, 'Locations de véhicules', 6, 'Une voiture de location au meilleur prix, avec un large choix de modèles de voitures et d’utilitaires. Tous les choix s\'offrent suivant les besoins de location: Economique, Mini, Compacte, Monospace, Intermédiaire, Premium, 4x4, Break, SUV! Souvent l'),
(42, 'Locations de vélos', 6, 'La tendance actuelle voudrait que l’on puisse se déplacer sans encombrement et visiter, se faire une balade, une randonnée ou du sport, sans avoir à se préoccuper de charger ou stocker un vélo. Il y a des magasins de location de tout type ! '),
(43, 'Divers', 6, 'IGOguide a pensé à tous les petits détails qui permettent aux utilisateurs de pouvoir s’organiser pendant leur soirée, week-end ou vacances! Cette catégorie permet de rassembler des entreprises qui facilitent le quotidien très utiles !');

-- --------------------------------------------------------

--
-- Structure de la table `superuser`
--

CREATE TABLE `superuser` (
  `superuser_id` int(11) NOT NULL,
  `superuser_pseudo` varchar(50) DEFAULT NULL,
  `superuser_motdepasse` varchar(50) DEFAULT NULL,
  `superuser_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `users_joinedAt` date NOT NULL,
  `users_etablissement` text DEFAULT NULL,
  `users_etablissement_logo` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`users_id`, `users_nom`, `users_prenoms`, `users_email`, `users_telephone`, `users_motdepasse`, `users_type`, `users_photo`, `users_joinedAt`, `users_etablissement`, `users_etablissement_logo`) VALUES
(1, 'GOEH', 'Wilfrid', 'einswilligoeh@gmail.com', '+228 98490524', 'frido123', 'professionnel', 'Capture_décran_du_2022-08-12_14-02-37.png', '0000-00-00', NULL, NULL),
(2, 'BIYAWA', 'Serge', 'bkbs@gmail.com', '+228 98490524', 'bagoulaaa', 'professionnel', 'ca451247b657b0bda55c14f1ab466dcf.png', '0000-00-00', NULL, NULL),
(3, 'luciole ', 'bleu', 'oldi012022@gmail.com', '+22893252719', 'guide1234', 'professionnel', 'light-bulb-g4fc316e47_1920.jpg', '0000-00-00', NULL, NULL),
(4, 'test_1', 'test_1', 'test@gmail.com', '32658974', '123456789', 'professionnel', '', '0000-00-00', NULL, NULL),
(5, 'SONOMOU aa', 'Sekou Abraham aa', '123sonomousekou@gmail.com', '+22870026994', 'azerty1234', 'professionnel', '', '0000-00-00', NULL, NULL),
(6, 'Landines', 'Les', 'igoguide.marketing@gmail.com', ' 06 95 05 30 18', '123456789', 'professionnel', 'logo_blanc_principal_fond_transparent_pn_2AWOKNf.webp', '2022-11-08', NULL, NULL),
(7, 'SAMPSON', 'Kossi David', 'sampsondavid168@gmail.com', '0022893683366', 'Skdn24111996@', 'professionnel', 'IMG_traitée.jpg', '2022-11-11', NULL, NULL),
(8, 'Makpalibe', 'Oteme olivier', 'Otemeoli@gmail.com', '90435405', 'otemeOLI1234', 'professionnel', '07071493-7624-4856-90AB-A152F6FA1F34.png', '2022-11-11', NULL, NULL),
(9, 'BONFOH', 'Aymane', 'aymanebonfoh001@gmail.com', '0022893452858', 'Yatimpou001', 'professionnel', '16681624411925408249725806993216.jpg', '2022-11-11', NULL, NULL),
(10, 'BODE', 'Tarik', 'tarikbode@gmail.com', '+22890119303', 'Invincible2@@', 'professionnel', 'IMG_20200201_121316_5_2.jpg', '2022-11-11', NULL, NULL),
(11, 'User 1', 'User 1', 'contact@parc-robinson.fr', '06 30 36 43 25', '123456789', 'professionnel', '77F48F5F-55CA-467D-AA4D-9DC83A230649.jpeg', '2022-11-14', NULL, NULL),
(12, 'user6', 'user6', 'contact@peniche-cestlavie.com', '+33 6 68 26 27 12', '0123456789', 'professionnel', 'péniche_c_la_vie.jpg', '2022-11-14', NULL, NULL),
(13, 'User 2', 'User 2', 'paysbasque@evolution2.com', '+33 5 59 63 30 90', '123456789', 'professionnel', '3EAB8618-1A29-4D07-A1C1-755C8B077663.jpeg', '2022-11-14', NULL, NULL),
(14, 'user7', 'user7', 'nideno46@gmail.com', '+33 6 70 57 33 46', '0123456789', 'professionnel', '9.jpg', '2022-11-14', NULL, NULL),
(15, 'User 3', 'User 3', 'vertiforet@gmail.com', '+33629600355', '123456789', 'professionnel', '6E6D0DE9-633C-4737-9421-0BFDAA5C2A69.jpeg', '2022-11-14', NULL, NULL),
(16, 'User 4', 'User 4', 'adrenalineparc@wanadoo.fr', '05 58 48 56 62', '123456789', 'professionnel', 'D3B8D52F-7762-4FCA-8614-95C4CDAC95DC.jpeg', '2022-11-14', NULL, NULL),
(17, 'User5', 'User5', 'hostensaventure@gmail.com', '+33 6 07 34 72 10', '123456789', 'professionnel', 'BA877E83-8876-4447-AB80-D1807AE82031.jpeg', '2022-11-14', NULL, NULL),
(18, 'User 16', 'User 16', 'tenleyre@gmail.com', '+33 6 33 08 20 86', '123456789', 'professionnel', '1504CC58-3EEF-4B77-BB91-C5B532CCB193.jpeg', '2022-11-14', NULL, NULL),
(19, 'User 17', 'User 17', 'manuobry@orange.fr', '+33 6 80 61 53 63', '123456789', 'professionnel', '0C5A1EA6-93AA-4AA8-AC91-E6C6062AEF8B.jpeg', '2022-11-14', NULL, NULL),
(20, 'user8', 'user8', 'contact@lesgeorennes.com', '  +33 7 81 17 23 15', '0123456789', 'professionnel', '1.png', '2022-11-14', NULL, NULL),
(21, 'user9', 'user9', 'info@chalets-lou-braisadou.com', '+33 4 71 64 74 27', '0123456789', 'professionnel', '3_fn47jX7.jpg', '2022-11-14', NULL, NULL),
(22, 'User 18', 'User 18', 'info@parcdeloisirsdufour.fr', '05 57 70 34 06', '123456789', 'professionnel', '858CBA21-FC83-41C6-B2D7-DD772F187EE8.jpeg', '2022-11-15', NULL, NULL),
(23, 'User 19', 'User 19', 'escalad.parc@free.fr', '0687849047', '123456789', 'professionnel', '83B43F7F-F0E2-47DA-8EC1-2ADBA175693D.jpeg', '2022-11-15', NULL, NULL),
(24, 'User 20', 'User 20', 'contact@lacauxbranches.fr', '06 44 18 38 05', '123456789', 'professionnel', '70A2AE2E-C168-457A-8831-23B29ED39DCB.jpeg', '2022-11-15', NULL, NULL),
(25, 'user10', 'user10', 'info@cabanesdesgrandscepages.com', '+33 4 88 95 87 58', '0123456789', 'professionnel', '2.jpg', '2022-11-15', NULL, NULL),
(26, 'Landine', 'Les', 'gg@gmail.com', '01 23 45 67 89', '123456789', 'professionnel', 'wi-fi.png', '2022-11-18', NULL, NULL),
(27, 'Alice', 'Aux pays des merveilles', 'orlandre19@gmail.com', '0123456789', '0123456789', 'professionnel', 'Capture_decran_2022-10-18_a_12.13.40_6Jnejd7.png', '2022-11-19', NULL, NULL),
(28, 'Standard infos', 'et rosa', 'contact@street-art-city.com', '644955986', '0123456789', 'professionnel', 'photo_2022-11-25_16-20-37.jpg', '2022-11-25', NULL, NULL),
(29, 'Landines', 'Les', 'mailtest@gmail.com', '0695053018', '123456789', 'professionnel', '_Les_Landines_menu_déroulant_DEdiEd4.webp', '2022-11-28', NULL, NULL),
(30, 'christophe', 'marchesseau', 'info@excellencedessens.com', '+590 590 29-4810', '0123456789', 'professionnel', '1.png', '2022-11-30', NULL, NULL),
(31, 'Village', 'Nature', 'infos@villagenature.com', '+262 262 44 66 88', '0123456789', 'professionnel', '8.jpg', '2022-11-30', NULL, NULL),
(32, 'Anthony', 'Brezeski', 'contact@letflyproduction', '+33613970557', '0123456789', 'professionnel', '8FB3CDDB-1D27-4BAC-97C8-6C474F3287F5.jpeg', '2022-11-30', NULL, NULL),
(33, 'Win ', 'Tour', 'contact@bwinetour.com', '+33(0)6 50 61 65 56', '0123456789', 'professionnel', '16.jpg', '2022-11-30', NULL, NULL),
(34, 'Muchembled', 'Teddy', 'teddy.muchembled@hotmail.fr', '+330685373471', '0123456789', 'professionnel', '27583322-8E50-4888-9FFE-2D889CA597FB.jpeg', '2022-11-30', NULL, NULL),
(35, 'Phebus Hotel', 'et Spa', 'phebus@relaischateaux.com', '490055131', '0123456789', 'professionnel', '22.jpg', '2022-11-30', NULL, NULL),
(36, 'Spa O', 'De soleil', 'spaodesoleil@orange.fr', '+33 4 94 10 12 62', '0123456789', 'professionnel', 'a.jpg', '2022-11-30', NULL, NULL),
(37, 'Puyfontaine', 'Thibault', 'thibault@studio-puyfontaine.com', '+330620085922', '0123456789', 'professionnel', '9B1AC0DC-166F-453F-8779-283D7F98F23D.jpeg', '2022-11-30', NULL, NULL),
(38, 'le jardin ', 'des sens', 'lejardindessens@wanadoo.fr', '+33 4 94 40 98 02', '0123456789', 'professionnel', '1_BjI6GIQ.jpg', '2022-11-30', NULL, NULL),
(39, 'aphrodite ', 'spa', 'aphroditespa83@gmail.com', '+33 7 77 90 22 22', '0123456789', 'professionnel', 'a_Izdg2sE.jpg', '2022-11-30', NULL, NULL),
(40, 'CHEZ MAMAN', 'CHEZ MAMAN', 'contact@chez-maman.com', '+33251722063', '0123456789', 'professionnel', 'Screenshot_20221130-160325.png', '2022-11-30', NULL, NULL),
(41, 'Ladrome ', 'Tourisme ', 'scoot-nomad@live', '0665727499', '0123456789', 'professionnel', '60F23519-5B55-4118-83B7-FAE0F34B9573.jpeg', '2022-11-30', NULL, NULL),
(42, 'Angha ', 'Spa', 'hello@angha-spa.com', '494386967', '0123456789', 'professionnel', 'spa.jpg', '2022-12-01', NULL, NULL),
(43, 'Spa', 'Nux', 'spa@hotelnegrecoste.com', '+33 4 42 24 52 92', '0123456789', 'professionnel', '1_ErmYoEx.jpg', '2022-12-01', NULL, NULL),
(44, 'Trouvel', 'didier', 'did.trouvel@gmail.com', '0667866149', '0123456789', 'professionnel', '301644481_119878190808137_6486285149273018227_n.jpg', '2022-12-01', NULL, NULL),
(45, 'Le Dôme', 'bleu', 'spaledomebleu@gmail.com', '+33 4 42 36 22 00', '0123456789', 'professionnel', 'a_4wT5wFg.jpg', '2022-12-01', NULL, NULL),
(46, 'Micallef', 'Alison', 'allison.micallef.photographe@gmail.com', '+33629743043', '0123456789', 'professionnel', '273243517_231328495873464_7160684360634840124_n.jpg', '2022-12-01', NULL, NULL),
(47, 'yourte auvergne', 'yourte auvergne', 'contact@yourte-auvergne.fr', '0632568709', '0123456789', 'professionnel', '4_4AUKxep.jpg', '2022-12-01', NULL, NULL),
(48, 'domaine de la chaux de revel', 'domaine de la chaux de revel', 'pascal.montaz@gmail.com', '04 71 40 68 10', '0123456789', 'professionnel', '1_sfJwv9r.jpg', '2022-12-01', NULL, NULL),
(49, 'traiteurs de france', 'traiteurs de france', 'contact@traiteurs-de-france.com', '+33 1 42 33 30 17', '0123456789', 'professionnel', '275695374_156567126791084_8408626820073680485_n.jpg', '2022-12-01', NULL, NULL),
(50, 'Les Thermes ', 'Marins', 'contact@lesthermesmarins.fr', '+33491526161', '0123456789', 'professionnel', '1_fb7x9L0.jpg', '2022-12-01', NULL, NULL),
(51, 'La gazelle Perchée', 'La gazelle Perchée', 'sejour@lagazelleperchee.com', '0643568804', '0123456789', 'professionnel', '1_6wXs9wz.jpg', '2022-12-01', NULL, NULL),
(52, 'Spa', ' Institut du cours', 'contact@institut-du-cours.fr', '+33 4 42 26 00 26', '0123456789', 'professionnel', '001_Vc15c2w.jpg', '2022-12-01', NULL, NULL),
(53, 'Vans Ardèche', 'Vans Ardèche', 'vansardeche07@gmail.com', '+33 7 82 26 99 77', '0123456789', 'professionnel', '70649584_106435970681821_1793645404560929793_n.jpg', '2022-12-01', NULL, NULL),
(54, 'Le Tour Institut ', 'et Spa', 'contact@latourinstitutspa.com', '+33 4 90 07 33 16', '0123456789', 'professionnel', '1_7TgbHTZ.jpg', '2022-12-01', NULL, NULL),
(55, 'le lac des graves', 'le lac des graves', 'contact@lacdesgraves.com', '04 71 47 94 06', '0123456789', 'professionnel', '6_hYMtDhI.jpg', '2022-12-01', NULL, NULL),
(56, 'Imedia Location', 'Imedia Location', 'imedialocationannemasse@gmail.com', '(+33)7 69 75 05 44', '0123456789', 'professionnel', 'mmm.png', '2022-12-01', NULL, NULL),
(57, 'Auberge de beauté', 'et Spa', 'aubergedebeaute@gmail.com', '04.42.55.28.82', '0123456789', 'professionnel', '001_Vzpeao2.jpg', '2022-12-01', NULL, NULL),
(58, 'Océanide Spa ', ' près de la mer', 'contact@spa-oceanide.fr', '0607907592', '0123456789', 'professionnel', '4_idhlT4r.jpg', '2022-12-01', NULL, NULL),
(59, 'Un vélo à la campagne', 'Un vélo à la campagne', 'unveloalacampagne@gmail.com', '04 70 32 72 26', '0123456789', 'professionnel', '118405437_118500919766037_6621797156026777528_n.jpg', '2022-12-01', NULL, NULL),
(60, ' DAUPHIN', 'Audrey', 'plaisirfleuri@gmail.com', '06.18.17.18.94', '0123456789', 'professionnel', '162410834_714894742540509_1818041717482144043_n.jpg', '2022-12-01', NULL, NULL),
(61, 'prehistoric lodges', 'prehistoric lodges', 'contact@hebergement-bulles.com', '0475872442', '0123456789', 'professionnel', '3_G5kRWi9.jpg', '2022-12-01', NULL, NULL),
(62, 'le buron de niercombes', 'le buron de niercombes', 'isabelle.pfeffer@wanadoo.fr', '0680242333', '0123456789', 'professionnel', '1_rg1icgI.jpg', '2022-12-01', NULL, NULL),
(63, 'Centre Aqua ', 'Lys', 'nindoye03@gmail.com', '+33 4 70 96 24 2', '0123456789', 'professionnel', '2_Q3hGQ51.jpg', '2022-12-01', NULL, NULL),
(64, 'steve', 'le pem', 'stevelepemp@live.fr', '  06 74 37 38 76', '0123456789', 'professionnel', '38863780_283553519095378_415468842425253888_n.jpg', '2022-12-01', NULL, NULL),
(65, 'LE PAMPRE', 'LE PAMPRE', 'contact@lepampre.fr', '0387501620', '0123456789', 'professionnel', 'Screenshot_20221201-152038.png', '2022-12-01', NULL, NULL),
(66, 'buron de la fumade vieille', 'buron de la fumade vieille', 'burondelafumade@gmail.com', '0671770904', '0123456789', 'professionnel', '3_1x11UGm.jpg', '2022-12-01', NULL, NULL),
(67, 'guegan', 'christelle', 'contact@christelleguegan.fr', '07 50 15 34 65', '0123456789', 'professionnel', '285466869_150266614238365_5484049259681285633_n.jpg', '2022-12-01', NULL, NULL),
(68, 'Le Naturspa', 'Le Naturspa', 'reception@lesranchisses.fr', '+33 4 75 88 31 97', '0123456789', 'professionnel', '001_GRGrMgB.jpg', '2022-12-01', NULL, NULL),
(69, 'cool under canvas', 'cool under canvas', 'hello@coolundercanvas.com', '625815527', '0123456789', 'professionnel', '3_qGESb8g.jpg', '2022-12-01', NULL, NULL),
(70, 'Caleden', 'Caleden', 'info@caleden.com', '0471235106', '0123456789', 'professionnel', 'bulle_page_spa1.png', '2022-12-01', NULL, NULL),
(71, 'le servière', 'le servière', 'truffiereparis@hotmail.com', '0648068511', '0123456789', 'professionnel', '1_bu2zO6T.jpg', '2022-12-01', NULL, NULL),
(72, 'La ', 'La Parenthèse ', 'contact@spalaparenthese.com', '+33479341900', '0123456789', 'professionnel', '1_n3dDKFP.jpg', '2022-12-01', NULL, NULL),
(73, 'gautier', 'stephane', 'contact@stephane-gautier.com', '+33 (6) 33 23 42 37', '0123456789', 'professionnel', '189052342_389985238878861_4391231747375592441_n.jpg', '2022-12-01', NULL, NULL),
(74, 'le bois basalte', 'le bois basalte', 'reservation@le-bois-basalte.fr', '0966953276', '0123456789', 'professionnel', '4_qKMXusr.jpg', '2022-12-01', NULL, NULL),
(75, 'Valdys Resort ', ' Pornichet', 'thalasso.vladysportnichet@thalasso.com', ' 0229202725', '0123456789', 'professionnel', 'femme-piscine-en-thalasso-5ed0c307a7ba0-8-6.webp', '2022-12-01', NULL, NULL),
(76, 'cap guery', 'cap guery', 'contact@lacabanedelours.com', '0473652009', '0123456789', 'professionnel', '4_PMZcwQA.jpg', '2022-12-01', NULL, NULL),
(77, 'larum bavan', 'larum bavan', 'jeremy-bonnet@live', '+33 4 71 60 43 47', '0123456789', 'professionnel', '314411989_652715433004863_1256542046265485124_n.jpg', '2022-12-01', NULL, NULL),
(78, 'NOM', 'Prenom', 'les3cas@hotmail.com', '0695053018', 'Projet01', 'professionnel', 'Depositphotos_70999225_XL.jpg', '2022-12-01', NULL, NULL),
(79, 'Nom', 'Prenom', 'spa@lalecherelesbains.com', '04 79 22 44 16', '0123456789', 'professionnel', '1_SShFBds.jpg', '2022-12-02', NULL, NULL),
(80, 'nom', 'prénom', 'contact@aerokoncept.com', '07 62 83 50 50', '0123456789', 'professionnel', 'i2.jpeg', '2022-12-02', NULL, NULL),
(81, 'Nom ', 'Prenom', 'reservation@cannesriviera.com', '0497062040', '0123456789', 'professionnel', '001_P28eSux.jpg', '2022-12-02', NULL, NULL),
(82, 'Nom', 'Prenom', 'resa@hotel-lamarinedeloire.com', '+33 2 41 50 18 21', '0123456789', 'professionnel', '1_LZlmeXm.jpg', '2022-12-02', NULL, NULL),
(83, 'Nom', 'Prénom', 'contact@kingmarcel.com', '450322145', '0123456789', 'professionnel', 'Screenshot_20221202-102424.png', '2022-12-02', NULL, NULL),
(84, 'Nom', 'Prenom', 'info@millesime-spa.fr', '+33 4 76 77 03 03', '0123456789', 'professionnel', '1_9S1AsDt.jpg', '2022-12-02', NULL, NULL),
(85, 'Nom', 'Prénom', 'info@chateau-cheyrelle.com', '06830004334', '0123456789', 'professionnel', '3_zxcflFV.jpg', '2022-12-02', NULL, NULL),
(86, 'Nom', 'Prénom ', 'infos@toulouse-croisiere', '+33612823227', '0123456789', 'professionnel', 'Screenshot_20221202-104255.png', '2022-12-02', NULL, NULL),
(87, 'Nom', 'Prenom', 'reservation@hotel-stbrevinlocean.com', '+33 2 28 53 20 00', '0123456789', 'professionnel', '001_SMEDH5F.jpg', '2022-12-02', NULL, NULL),
(88, 'Nom', 'Prenom', 'hotel@alliey.com', '+33 4 92 24 40 02', '0123456789', 'professionnel', '2_JTXGgUf.jpg', '2022-12-02', NULL, NULL),
(89, 'nom', 'prénoms', 'lenyvina.photographe@gmail.com', '0783830417', '0123456789', 'professionnel', '301641991_186062373801179_8120938865462256337_n.jpg', '2022-12-02', NULL, NULL),
(90, 'Nom', 'Prénom ', 'contact@bustronome.com', '+33 (0) 954 444 555', '0123456789', 'professionnel', 'Screenshot_20221202-115715.png', '2022-12-02', NULL, NULL),
(91, 'Nom', 'Prenom', 'contact@cinqmondes.com', '0142660060', '0123456789', 'professionnel', '001_ARyE03C.jpg', '2022-12-02', NULL, NULL),
(92, 'Nom', 'Prénom', 'didier.chalmeton@wanadoo.fr', '+33 4 73 63 89 37', '0123456789', 'professionnel', '1_qD0u34p.jpg', '2022-12-02', NULL, NULL),
(93, 'fauvel', 'philippe', 'philippe.fauvel@gmail.com', ' +33 6 51 75 21 71', '0123456789', 'professionnel', '146077100_2722555651295363_5626206475803455925_n.jpg', '2022-12-02', NULL, NULL),
(94, 'Nom', 'Prénom ', 'contact@sensuniques.fr', '01 42 23 04 63', '0123456789', 'professionnel', 'Screenshot_20221202-121350.png', '2022-12-02', NULL, NULL),
(95, 'Nom', 'Prenom', 'accueil@excellence-spa.com', ' 0492214517', '0123456789', 'professionnel', '1_puD3UOe.jpg', '2022-12-02', NULL, NULL),
(96, 'Nom', 'Prénom', 'les-prades@wanadoo.fr', '0471204817', '0123456789', 'professionnel', '1.webp', '2022-12-02', NULL, NULL),
(97, 'nom', 'prénom', 'contact@iris-production.fr', '01 43 97 06 59', '0123456789', 'professionnel', 'aaa.jpeg', '2022-12-02', NULL, NULL),
(98, 'Nom', 'Prénom ', 'contact@wagonbleu.fr', '01 45 22 35 25', '0123456789', 'professionnel', 'Screenshot_20221202-123119.png', '2022-12-02', NULL, NULL),
(99, 'Nom', 'Prénom', 'contact@domainedelours.fr', '0471202799', '0123456789', 'professionnel', '1_fYyJoTJ.jpg', '2022-12-02', NULL, NULL),
(100, 'Nom', 'Prenom', 'spapeaudours@gmail.com', '04 92 55 39 42', '0123456789', 'professionnel', 'a_ZzzaVoT.jpg', '2022-12-02', NULL, NULL),
(101, 'Nom', 'Prénom', '123@gmail.com', '0444052410', '0123456789', 'professionnel', '1_sREffMZ.jpg', '2022-12-02', NULL, NULL),
(102, 'nom', 'prénoms', 'contact@laveriedessneakers.fr', '651997954', '0123456789', 'professionnel', '293071803_549355030067200_919067832620328681_n.webp', '2022-12-02', NULL, NULL),
(103, 'Nom', 'Prénom ', 'info@ecudefrance.com', '+33145760003', '0123456789', 'professionnel', 'Screenshot_20221202-125800.png', '2022-12-02', NULL, NULL),
(104, 'Nom', 'Prenom', 'contact@foxtrott.fr', '03 84 25 18 47', '0123456789', 'professionnel', '315313133_113532428235203_5540439428281157329_n.jpg', '2022-12-02', NULL, NULL),
(105, 'Nom', 'Prénom', 'meuniero@hotmail.fr', '0385547067', '0123456789', 'professionnel', '3_t4h6EL4.jpg', '2022-12-02', NULL, NULL),
(106, 'Nom', 'Prénom ', 'contact@domainederaba-talence.fr', '+33 5 57 26 58 28', '0123456789', 'professionnel', 'Screenshot_20221202-131349_Dgkfxl3.png', '2022-12-02', NULL, NULL),
(107, 'Nom', 'Prénom', 'contact@lesgalants.fr', '0660715657', '0123456789', 'professionnel', '4_lbHL2jj.jpg', '2022-12-02', NULL, NULL),
(108, 'Nom', 'Prenom', 'info@detours-in-france.com', '+33 9 83 29 71 56', '0123456789', 'professionnel', '1_hDAzfiT.jpg', '2022-12-02', NULL, NULL),
(109, 'nom', 'prénom', 'sasu.llav@gmail.com', '+33470034915', '0123456789', 'professionnel', '275465112_468270961706478_6937982035635093181_n.jpg', '2022-12-02', NULL, NULL),
(110, 'nom', 'prenom', 'evasionraftingmorvan@gmail.com', '386249433', '0123456789', 'professionnel', '001_s2frBRg.jpg', '2022-12-02', NULL, NULL),
(111, 'Lamah fff', 'Pepe dd', 'pepe20@gmail.com', '+22810223128', 'aa', 'professionnel', '', '2022-12-02', NULL, NULL),
(112, 'Nom', 'Prénom ', '12pankajarora@gmail.com', '0033 - 142732918', '0123456789', 'professionnel', 'Screenshot_20221202-145010.png', '2022-12-02', NULL, NULL),
(113, 'nom', 'prénoms', 'contact@studioblasco.com', '04 89 51 34 30', '0123456789', 'professionnel', '316186592_1211732776438370_5255041113731067158_n.webp', '2022-12-02', NULL, NULL),
(114, 'Nom', 'Prénom', 'contact@lescabanesdevire.com', '0652251373', '0123456789', 'professionnel', '3_5NPKxOr.jpg', '2022-12-02', NULL, NULL),
(115, 'Nom', 'Prénom ', 'bollynan@gmail.com', '+33 1 45 08 40 51', '0123456789', 'professionnel', 'Screenshot_20221202-150339.png', '2022-12-02', NULL, NULL),
(116, 'Nom', 'Prénom', 'domainedelapierreronde@gmail.com', '0380841307', '0123456789', 'professionnel', '1_ZoMMTEa.webp', '2022-12-02', NULL, NULL),
(117, 'Nom', 'Prénom ', 'info@indiastreeat.com', '+33 9 86 07 06 91', '0123456789', 'professionnel', 'Screenshot_20221202-151519.png', '2022-12-02', NULL, NULL),
(118, 'nom', 'prénom', 'DONNAPHOTOGRAPHIE@GMAIL.COM', '06.49.65.09.93', '0123456789', 'professionnel', '276967842_1341622906343295_8857628488858653889_n.webp', '2022-12-02', NULL, NULL),
(119, 'Nom', 'Prenom', 'contact@parisjump.com', '658637799', '0123456789', 'professionnel', 'userprofile/me.jpg', '2022-12-02', NULL, NULL),
(120, 'Nom', 'Prénom', 'ettevaux@orange.fr', '0386309551', '0123456789', 'professionnel', '1_DCr1CKX.jpg', '2022-12-02', NULL, NULL),
(121, 'lefrancq', 'gilles', 'photo@gilleslefrancq.fr', '+33 (0)6 75 67 64 85', '0123456789', 'professionnel', '95752041_270394597461950_7870341036893125986_n.jpg', '2022-12-02', NULL, NULL),
(122, 'Nom', 'Prenom', 'contact@eskaleo.fr', '+33 6 47 88 55 71', '0123456789', 'professionnel', '1_L77Aqz3.jpg', '2022-12-02', NULL, NULL),
(123, 'Nom', 'Prenom', 'roceteau@gmail.com', '+33 6 19 80 31 22', '0123456789', 'professionnel', '1.png', '2022-12-02', NULL, NULL),
(124, 'Nom', 'Prénom', 'resa@slowmoov.fr', '0385537660', '0123456789', 'professionnel', '3_IryQJQk.jpg', '2022-12-02', NULL, NULL),
(125, 'Nom', 'Prénom ', 'aigle.dor@wanadoo.fr', '+334 73 80 00 50', '0123456789', 'professionnel', 'Screenshot_20221202-154458.png', '2022-12-02', NULL, NULL),
(126, 'dochler', 'audrey', 'audreydochler@hotmail.fr', '06 73 04 85 86', '0123456789', 'professionnel', '316638088_824070348886710_884877983659500366_n.jpg', '2022-12-02', NULL, NULL),
(127, 'Nom', 'Prénom', 'christine.moissenet71@gmail.com', '0385596019', '0123456789', 'professionnel', '1_9utf6UQ.png', '2022-12-02', NULL, NULL),
(128, 'Nom', 'Prénom ', 'bistrotdelyon@bistrotsdecuisiniers.com', '+33 4 78 38 47 47', '0123456789', 'professionnel', 'Screenshot_20221202-160250.png', '2022-12-02', NULL, NULL),
(129, 'Nom', 'Prenom', 'contact@ciment.paris', '+33 6 95 87 29 17', '0123456789', 'professionnel', 'Screenshot_2022-12-02_at_17-00-48_CIMENT_sur_Instagram_Depuis_plusieurs_années_on_est_no_cdrnZlf.png', '2022-12-02', NULL, NULL),
(130, 'nom', 'prénoms', 'sylphotoevenement@gmail.com', '0769924295', '0123456789', 'professionnel', '292961543_430722435630702_8492024450128507032_n.jpg', '2022-12-02', NULL, NULL),
(131, 'Nom', 'Prénom ', 'auxdeuxsaveurs@icloud.com', '+33524723448', '0123456789', 'professionnel', 'Screenshot_20221202-162448.png', '2022-12-02', NULL, NULL),
(132, 'Nom', 'Prenom', 'contact@rendezvousauchateau.com', ' +33(0)628.350.095', '0123456789', 'professionnel', '001_g8C58Ws.jpg', '2022-12-02', NULL, NULL),
(133, 'Nom', 'Prénom', 'info@airstream-france.com', '0386557818', '0123456789', 'professionnel', '1_nlYgjTT.webp', '2022-12-02', NULL, NULL),
(134, 'Szpitala', 'Pascal', 'CONTACT@PASCAL-SZPITALAK.COM', '06 27 21 06 75', '0123456789', 'professionnel', '291877368_1177720336103300_6123814572753869436_n.jpg', '2022-12-02', NULL, NULL),
(135, 'Nom', 'Prenom', 'contact@thomassegaud.com', '670020650', '0123456789', 'professionnel', '001_axAha08.jpg', '2022-12-02', NULL, NULL),
(136, 'Nom', 'Prenom', 'contact@vertical-way.fr', '+33 6 85 28 00 02', '0123456789', 'professionnel', '011.webp', '2022-12-02', NULL, NULL),
(137, 'Nom', 'Prénom', 'lamaisonducanal@aol.fr', '0660787753', '0123456789', 'professionnel', '1_pj3dFTI.jpg', '2022-12-02', NULL, NULL),
(138, 'Test ', 'Avant Mise en Ligne', 'igoguide.service@gmail.com', '0123456789', '0123456789', 'professionnel', 'earth.png', '2022-12-04', NULL, NULL),
(139, 'Nom', 'Prenom', 'contact@cvdieppe.fr', '+33 2 35 84 32 99', '0123456789', 'professionnel', '221.jpg', '2022-12-05', NULL, NULL),
(140, 'Nom', 'Prénom', 'reception.hotel@gerard-bertrand.com', '0468452850', '0123456789', 'professionnel', '2_7viSMsO.jpg', '2022-12-05', NULL, NULL),
(141, 'Nom', 'Prenom', 'museemaisondescroyances@gmail.com', '+33 2 27 30 46 04', '0123456789', 'professionnel', '8_DqH8rZV.jpg', '2022-12-05', NULL, NULL),
(142, 'Nom ', 'Prénom', 'tresordecampagne@gmail.com', '0678639944', '0123456789', 'professionnel', '1_dIFs6Rj.jpg', '2022-12-05', NULL, NULL),
(143, 'Nom', 'Prenom', 'labyrinthe.artmazia@gmail.com', '06 14 73 97 34', '0123456789', 'professionnel', '000.webp', '2022-12-05', NULL, NULL),
(144, 'nom', 'prénoms', 'amc.traiteur@gmail.com', '06 45 41 26 36', '0123456789', 'professionnel', '148459425_152754833225733_4112880301175980233_n.jpg', '2022-12-05', NULL, NULL),
(145, 'nom', 'prénoms', 'boutiquetraiteur@baron-cassini.fr', '02.40.47.90.45', '0123456789', 'professionnel', '278387795_1019516978687507_5032375704864584287_n.jpg', '2022-12-05', NULL, NULL),
(146, 'Nom', 'Prenom', 'www.rails@collinesnormandes.fr', '02 31 69 39 30', '0123456789', 'professionnel', '111_oeMHSDr.jpg', '2022-12-05', NULL, NULL),
(147, 'nom', 'prénoms', 'nantesgare@rentacar.fr', '0240751515', '0123456789', 'professionnel', 'wwww.jpg', '2022-12-05', NULL, NULL),
(148, 'Nom', 'Prenom', 'lamaisonduchefnormand@orange.fr', '+33 2 31 64 86 10', '0123456789', 'professionnel', '1_LpGLEqf.jpg', '2022-12-05', NULL, NULL),
(149, 'Nom', 'Prénom', 'hp.tudu@hotmail.fr', '0448683347', '0123456789', 'professionnel', '2_rbbURGv.jpg', '2022-12-05', NULL, NULL),
(150, 'Nom', 'Prenom', 'visite.histoire@gmail.com', '+33 6 64 74 26 69', '0123456789', 'professionnel', '2_vsXNY8W.jpg', '2022-12-05', NULL, NULL),
(151, 'annie', 'claire', 'annieclaire.fleurs@orange.fr', '0241881834', '0123456789', 'professionnel', 'vv.jpg', '2022-12-05', NULL, NULL),
(152, 'Nom', 'Prénom', 'info@nidsdesvosges.fr', '06 32 93 65 74', '0123456789', 'professionnel', '1_vy538Cv.jpg', '2022-12-05', NULL, NULL),
(153, 'Nom', 'Prénom ', 'contact@table-enbraille.fr', '04 72 39 92 31', '0123456789', 'professionnel', 'Screenshot_20221205-151555.png', '2022-12-05', NULL, NULL),
(154, 'Nom', 'Prenom', 'contact@jean-connait-un-rayon.fr', '+33 7 86 15 48 31', '0123456789', 'professionnel', '33.jpg', '2022-12-05', NULL, NULL),
(155, 'nom', 'prénom', 'coucou@cheztatasophie.fr', '0164097950', '0123456789', 'professionnel', 'LLL.png', '2022-12-05', NULL, NULL),
(156, 'Nom', 'Prénom', 'info@gites-de-france.fr', '02 47 27 56 10', '0123456789', 'professionnel', '5_9rx7O3X.jpg', '2022-12-05', NULL, NULL),
(157, 'Nom', 'Prénom ', 'hello@lesfromagivores.com', '04-78-91-28-92', '0123456789', 'professionnel', 'Screenshot_20221205-153328.png', '2022-12-05', NULL, NULL),
(158, 'Nom', 'Prenom', 'corinne@camechante.com', '+33 2 50 65 45 92', '0123456789', 'professionnel', '2_uzDDPH7.jpg', '2022-12-05', NULL, NULL),
(159, 'Nom', 'Prenom', 'contact@thurypleinair.fr', '+33 2 31 79 40 59', '0123456789', 'professionnel', '1_rV4aDCz.jpg', '2022-12-05', NULL, NULL),
(160, 'nom', 'prénoms', 'euro.loc@wanadoo.fr', '06 82 26 02 88', '0123456789', 'professionnel', 'eee.png', '2022-12-05', NULL, NULL),
(161, 'Nom', 'Prénom ', 'largousier@orange.fr', '+3387962899', '0123456789', 'professionnel', 'Screenshot_20221205-155206.png', '2022-12-05', NULL, NULL),
(162, 'Nom', 'Prénom', 'soleilo.mostuejouls@gmail.com', '06 22 84 61 00', '0123456789', 'professionnel', '5.webp', '2022-12-05', NULL, NULL),
(163, 'Nom', 'Prénom ', 'contact@latoque-blanche.net', '0134860555', '0123456789', 'professionnel', 'Screenshot_20221205-160832.png', '2022-12-05', NULL, NULL),
(164, 'Nom', 'Prenom', 'contact@cycleslecoq.fr', '07.66.87.30.88', '0123456789', 'professionnel', '1_ATaHtep.webp', '2022-12-05', NULL, NULL),
(165, 'Nom', 'Prenom', 'yann.normandie.idf.peche@gmail.com', '+33 6 80 56 96 23', '0123456789', 'professionnel', 'userprofile/1_t8IVoh9.jpg', '2022-12-06', NULL, NULL),
(166, 'Nom', 'Prenom', 'caen@climb-up.fr', '+33 2 90 87 00 54', '0123456789', 'professionnel', 'userprofile/1_87sxVwx.jpg', '2022-12-06', NULL, NULL),
(167, 'Nom', 'Prenom', 'contact@cahem.eu', '+33 2 31 72 57 78', '0123456789', 'professionnel', 'userprofile/7.png', '2022-12-06', NULL, NULL),
(168, 'Nom', 'Prénom', 'lacavedubarav@gmail.com', '0148045759', '0123456789', 'professionnel', 'userprofile/2.jpg', '2022-12-06', NULL, NULL),
(169, 'Nom', 'Prenom', 'discovery.walks.bayeux@gmail.com', '+33 7 70 18 46 53', '0123456789', 'professionnel', 'userprofile/6.png', '2022-12-06', NULL, NULL),
(170, 'Nom', 'Prénom', 'baravins.terra@gmail.com', '01 42 76 04 48', '0123456789', 'professionnel', 'userprofile/2.jpg.crdownload', '2022-12-06', NULL, NULL),
(171, 'Nom', 'Prenom', 'rivalkarting@orange.fr', '+33 2 33 59 60 33', '0123456789', 'professionnel', 'userprofile/1_7Gqua4h.jpg', '2022-12-06', NULL, NULL),
(172, 'Nom', 'Prénom', 'restaurantlabdv@gmail.com', '+33 1 42 65 27 27', '0123456789', 'professionnel', 'userprofile/1_AaOG0fI.jpg', '2022-12-06', NULL, NULL),
(173, 'Nom', 'Prenom', 'reverealite@hotmail.fr', '+33 6 70 59 92 05', '0123456789', 'professionnel', 'userprofile/1_N5h7p48.jpg', '2022-12-06', NULL, NULL),
(174, 'Nom', 'Prénom', 'info@williswinebar.com', '+33 1 42 61 05 09', '0123456789', 'professionnel', 'userprofile/1_qvtjP5A.jpg', '2022-12-06', NULL, NULL),
(175, 'Nom', 'Prenom', 'grapes@wanadoo.fr', '+33 2 98 61 29 19', '0123456789', 'professionnel', 'userprofile/1_LBOSvmB.jpg', '2022-12-06', NULL, NULL),
(176, 'Nom', 'Prenom', 'contact@carabreizh.bzh', '+33 2 97 88 30 30', '0123456789', 'professionnel', 'userprofile/1_L3yxx6j.jpg', '2022-12-06', NULL, NULL),
(177, 'Nom', 'Prénom', 'le18oberkampf@gmail.com', '+33 1 73 74 54 47', '0123456789', 'professionnel', 'userprofile/1_R6gMklN.jpg', '2022-12-06', NULL, NULL),
(178, 'Nom', 'Prénom ', 'leprecatelan-restaurant@lenotre.fr', '+33144144114', '0123456789', 'professionnel', 'userprofile/Screenshot_20221206-142733.png', '2022-12-06', NULL, NULL),
(179, 'Nom', 'Prenom', 'accueil@etacarentoir.fr', '+33 7 62 94 33 48', '0123456789', 'professionnel', 'userprofile/6.jpg', '2022-12-06', NULL, NULL),
(180, 'Nom', 'Prénom', 'levintagewine94@gmail.com', '01 48 72 70 82', '0123456789', 'professionnel', 'userprofile/1_AVRGY6Z.jpg', '2022-12-06', NULL, NULL),
(181, 'Nom', 'Prénom', 'contact@alamaison95', '0175412448', '0123456789', 'professionnel', 'userprofile/1_ieoA2ey.jpg', '2022-12-06', NULL, NULL),
(182, 'Nom', 'Prenom', 'contactgcg@orange.fr', '+33 6 77 01 11 09', '0123456789', 'professionnel', '1_llztEly.jpg', '2022-12-06', NULL, NULL),
(183, 'Nom', 'Prénom', 'letriomphelounge@gmail.com', '+33767118793', '0123456789', 'professionnel', 'userprofile/2.png', '2022-12-06', NULL, NULL),
(184, 'Nom', 'Prénom', 'solera.paris@gmail.com', '+33 7 77 60 63 93', '0123456789', 'professionnel', 'userprofile/5.jpg', '2022-12-06', NULL, NULL),
(185, 'Nom', 'Prenom', 'petittrain-lebayon@orange.fr', '02 97 24 06 29', '0123456789', 'professionnel', 'userprofile/0.jpg', '2022-12-06', NULL, NULL),
(186, 'Nom', 'Prénom', 'reservation@terrass-hotel.com', '+33 7 77 60 63 93', '0123456789', 'professionnel', 'userprofile/3.jpeg', '2022-12-06', NULL, NULL),
(187, 'Nom', 'Prénom', 'contact@skybarparis.com', '+33144364436', '0123456789', 'professionnel', 'userprofile/1_pkbx42w.jpg', '2022-12-06', NULL, NULL),
(188, 'Nom', 'Prenom', 'avelchar@laposte.net', '+33 6 81 24 52 33', '0123456789', 'professionnel', '1_VT69Dmn.jpg', '2022-12-07', NULL, NULL),
(189, 'SONOMOU', 'Sekou Abraham', 'sonomousekou@gmail.com', '+22870026994', 'r', 'professionnel', 'téléchargement.png', '2022-12-07', NULL, NULL),
(190, 'Nom', 'Prénom', 'contact@le12lounge.paris', '+33 1 83 92 73 52', '0123456789', 'professionnel', '1_aGGiBpV.jpg', '2022-12-07', NULL, NULL),
(191, 'Nom', 'Prenom', 'contact@bateauxrouges.com', '+33 7 69 40 38 40', '0123456789', 'professionnel', '0.jpg', '2022-12-07', NULL, NULL),
(192, 'Nom', 'Prenom', 'contact@gyromalo.fr', '+33 7 71 12 09 00', '0123456789', 'professionnel', '0_G9xzITG.jpg', '2022-12-07', NULL, NULL),
(193, 'Nom', 'Prénom', 'est@leperchoir.fr', '06 32 57 78 38', '0123456789', 'professionnel', '1_tFe79yE.jpg', '2022-12-07', NULL, NULL),
(194, 'Nom', 'Prenom', 'echappeemalouine@orange.fr', '+33 6 85 49 34 03', '0123456789', 'professionnel', '0_L3W9WUr.jpg', '2022-12-07', NULL, NULL),
(195, 'Nom', 'Prénom', 'reservation@raphael-hotel.com', '+33 1 53 64 32 00', '0123456789', 'professionnel', '1_G0sQJxh.webp', '2022-12-07', NULL, NULL),
(196, 'Nom', 'Prenom', 'contact@thewalnutgrove.fr', '+33 6 95 52 72 36', '0123456789', 'professionnel', '0_SNDOY9m.jpg', '2022-12-07', NULL, NULL),
(197, 'Nom', 'Prenom', 'holidays@chateau-beaumont.co.uk', '06 48 93 33 07', '0123456789', 'professionnel', '0_FkcN85r.jpg', '2022-12-07', NULL, NULL),
(198, 'Nom', 'Prénom', 'pakito.reservation@gmail.com', '+33147707893', '0123456789', 'professionnel', '2_KzmyYRo.webp', '2022-12-07', NULL, NULL),
(199, 'Nom', 'Prénom', 'laciboulette@outlook.com', '+ 33 1 45 32 76 41', '0123456789', 'professionnel', '3_96G9oha.jpg', '2022-12-07', NULL, NULL),
(200, 'Nom', 'Prenom', 'libertycycle72@gmail.com', '+33 2 43 75 10 42', '0123456789', 'professionnel', '7_Jm3mEqQ.jpg', '2022-12-07', NULL, NULL),
(201, 'Nom', 'Prénom', 'leptitbarcelone@orange.fr', '+33140229639', '0123456789', 'professionnel', '5_UAr54HW.png', '2022-12-07', NULL, NULL),
(202, 'Nom', 'Prenom', 'contact@parc-etang.com', '+33 2 41 54 80 65', '0123456789', 'professionnel', '0_UUVZmUX.jpg', '2022-12-07', NULL, NULL),
(203, 'Nom', 'Prenom', 'escapades-du-meugon@orange.fr', ' 06 95 40 00 41', '0123456789', 'professionnel', '0.webp', '2022-12-07', NULL, NULL),
(204, 'Nom', 'Prénom', 'contact@dernierbar.com', '+33 1 53 00 98 95', '0123456789', 'professionnel', '2_il7AYbQ.jpg', '2022-12-07', NULL, NULL),
(205, 'pop', 'pep', 'jammelsandani@protonmail.ch', '123548', '123456789', 'professionnel', 'Capture_décran_20221205_173241_YJOHolW.png', '2022-12-07', NULL, NULL),
(206, 'Nom', 'Prenom', 'bonjour@urbaweazz.fr', '+33 6 33 39 25 61', '0123456789', 'professionnel', '0_1slqtAr.jpg', '2022-12-07', NULL, NULL),
(207, 'Nom', 'Prénom', 'contact@gossima.fr', '+33 1 48 07 43 35', '0123456789', 'professionnel', '3_wFmGk4z.jpg', '2022-12-07', NULL, NULL),
(208, 'Nom', 'Prenom', 'contact@labatelleriedelaloire.fr', '+33 6 71 55 28 67', '0123456789', 'professionnel', '0_rfu24B5.jpg', '2022-12-07', NULL, NULL),
(209, 'Nom', 'Prénom', 'contact@bam-karaokebox.com', '+33184254829', '0123456789', 'professionnel', '1_z2zT9pD.png', '2022-12-07', NULL, NULL),
(210, 'Nom', 'Prenom', 'letourneux.jerome@orange.fr', '02.41.78.71.03', '0123456789', 'professionnel', '0_0cRy3nY.webp', '2022-12-07', NULL, NULL),
(211, 'Nom', 'Prenom', 'contact@labyrinthe-en-delire.com', '+33 6 14 12 74 33', '0123456789', 'professionnel', '0_kS8AkqA.jpg', '2022-12-08', NULL, NULL),
(212, 'Nom', 'Prénom', 'contact@bartkaraokebox.com', '+33 7 80 91 14 18', '0123456789', 'professionnel', '1_chbCulB.png', '2022-12-08', NULL, NULL),
(213, 'Nom', 'Prenom', 'multivoile.no@gmail.com', '+33 6 22 52 34 49', '0123456789', 'professionnel', '0_cNp2csc.jpg', '2022-12-08', NULL, NULL),
(214, 'Nom', 'Prénom', 'contact@vik-karaoke.com', '+33 1 42 01 84 85', '0123456789', 'professionnel', '5_QjGxOyH.jpg', '2022-12-08', NULL, NULL),
(215, 'Nom', 'Prenom', 'contact@flydust.fr', '+33 7 62 90 17 58', '0123456789', 'professionnel', '0_dzqGRIf.jpg', '2022-12-08', NULL, NULL),
(216, 'Nom', 'Prénom', 'karaokelanoche@gmail.com', '+33 1 42 81 31 02', '0123456789', 'professionnel', '1_NNxrc5d.jpg', '2022-12-08', NULL, NULL),
(217, 'Nom', 'Prenom', 'SceneArtpaillange@gmail.com', '06 89 28 06 65', '0123456789', 'professionnel', '4.webp', '2022-12-08', NULL, NULL),
(218, 'Nom', 'Prénom', 'cafedenewyork@gmail.com', '+33 6 03 60 02 29', '0123456789', 'professionnel', '1_yHK8w8A.jpg', '2022-12-08', NULL, NULL),
(219, 'Nom', 'Prenom', 'contact.routedusel@gmail.com', '+33 2 51 93 03 40', '0123456789', 'professionnel', '0_ko5o2UL.jpg', '2022-12-08', NULL, NULL),
(220, 'Nom', 'Prénom', 'caveaudesoubliettes.direction@gmail.com', '+33 6 17 54 93 71', '0123456789', 'professionnel', '1_GaKKu1j.png', '2022-12-08', NULL, NULL),
(221, 'Nom', 'Prenom', 'legrandefi@gmail.com', '+33 2 51 98 79 02', '0123456789', 'professionnel', '0_IYZyLLj.jpg', '2022-12-08', NULL, NULL),
(222, 'Nom', 'Prenom', 'contact@legendiaparc.com', '+33 2 40 39 75 06', '0123456789', 'professionnel', '0_b1Eg96t.jpg', '2022-12-08', NULL, NULL),
(223, 'Nom', 'Prénom', 'com@linternational.fr', '0980537641', '0123456789', 'professionnel', '1_fkD9IyS.jpg', '2022-12-08', NULL, NULL),
(224, 'Nom', 'Prenom', 'tropicarium.bonsai@orange.fr', '+33 7 50 06 79 08', '0123456789', 'professionnel', '0_JJZ8egc.jpg', '2022-12-08', NULL, NULL),
(225, 'Nom', 'Prenom', 'contact@cpie-loireoceane.com', '+33 2 40 45 35 96', '0123456789', 'professionnel', '0_8hM3kg8.jpg', '2022-12-08', NULL, NULL),
(226, 'Nom', 'Prenom', 'contact@maisondespaludiers.fr', '07 69 58 89 29', '0123456789', 'professionnel', '0_mxFRf3Z.webp', '2022-12-08', NULL, NULL),
(227, 'Nom', 'Prénom', 'lesbullesdesavoie@gmail.com', '06 78 56 96 43', '0123456789', 'professionnel', '1_REC3FqR.webp', '2022-12-08', NULL, NULL),
(228, 'Nom', 'Prénom', 'coeurdebull@gmail.com', ' +33 9 84 28 29 91', '0123456789', 'professionnel', '6.png', '2022-12-08', NULL, NULL),
(229, 'Nom', 'Prenom', 'Info@terres-denvol.fr', '+33 6 65 09 49 92', '0123456789', 'professionnel', '0_d1F3pms.jpg', '2022-12-08', NULL, NULL),
(230, 'Nom', 'Prénom', 'contact@maisonsbulles.fr', '+33 6 43 12 96 10', '0123456789', 'professionnel', '1_Kw5C3iP.jpg', '2022-12-08', NULL, NULL),
(231, 'Nom', 'Prenom', 'info@motiv8.fr', '06 50 00 28 28', '0123456789', 'professionnel', '0_PRvb3P7.jpg', '2022-12-08', NULL, NULL),
(232, 'Nom', 'Prénom', 'lesbullespercheesdelartigue@gmail.com', '+33766423213', '0123456789', 'professionnel', '2_YRZp84x.jpg', '2022-12-08', NULL, NULL),
(233, 'Nom', 'Prenom', 'racerally4x4@gmail.com', '07 49 62 16 14', '0123456789', 'professionnel', '2_l1cLw6Q.webp', '2022-12-09', NULL, NULL),
(234, 'Nom', 'Prenom', 'bigair.parachutisme@gmail.com', '+33 7 87 21 49 04', '0123456789', 'professionnel', '0_ITTz6Rp.jpg', '2022-12-09', NULL, NULL),
(235, 'Nom', 'Prenom', 'parc.aventure@fontdouce.com', '+33 6 20 40 02 88', '0123456789', 'professionnel', '0_LbS9nYb.jpg', '2022-12-09', NULL, NULL),
(236, 'Nom', 'Prenom', 'voldoiseau@free.fr', '+33 6 81 41 40 75 ', '0123456789', 'professionnel', '0_2BhY0DT.jpg', '2022-12-09', NULL, NULL),
(237, 'Nom', 'Prenom', 'info@spiruline-fr.com', '+33 6 67 31 47 60', '0123456789', 'professionnel', '0_2rV3giM.jpg', '2022-12-09', NULL, NULL),
(238, 'Nom', 'Prenom', 'discovery-voile@orange.fr', '+33 6 45 56 97 56', '0123456789', 'professionnel', '0_oDeLLeO.jpg', '2022-12-09', NULL, NULL),
(239, 'Nom', 'Prenom', 'emmanuellezaree@lamanivelle.fr', '+33 6 81 70 34 52', '0123456789', 'professionnel', '0_W58bh7e.jpg', '2022-12-09', NULL, NULL),
(240, 'Nom', 'Prénom', 'oceanopolis@oceanopolis.com', '0298344040', '0123456789', 'professionnel', '1_WaL6kwv.jpg', '2022-12-09', NULL, NULL),
(241, 'Nom', 'Prenom', 'information@tourisme.sna27.fr', '+33 2 32 51 39 60', '0123456789', 'professionnel', '0.jpg', '2022-12-09', NULL, NULL),
(242, 'Nom', 'Prénom', 'roulottesdeskorrigans@orange.fr', '+33298814162', '0123456789', 'professionnel', '1_6EIA9dD.jpg', '2022-12-09', NULL, NULL),
(243, 'Nom', 'Prenom', 'contact@chateauduchampdebataille.com', '+33 2 32 34 84 34', '0123456789', 'professionnel', '6_ZKMCLOY.jpg', '2022-12-09', NULL, NULL),
(244, 'Nom', 'Prénom', 'contact@valleedepratmeur.com', '+33 2 97 51 72 02', '0123456789', 'professionnel', '1_JSLWAxJ.jpg', '2022-12-09', NULL, NULL),
(245, 'Nom', 'Prenom', 'contact@fondation-monet.com', '02 32 51 28 21', '0123456789', 'professionnel', '0_9hXKlzK.jpg', '2022-12-09', NULL, NULL),
(246, 'Nom', 'Prénom', 'carnac@monuments-nationaux.fr', '+33 2 97 52 29 81', '0123456789', 'professionnel', '1_Xnk4rWY.jpg', '2022-12-09', NULL, NULL),
(247, 'Nom', 'Prénom', 'contact@limogesciteceramique.fr', '+33 5 55 33 08 50', '0123456789', 'professionnel', '2_rU381WF.jpg', '2022-12-12', NULL, NULL),
(248, 'Nom', 'Prénom', 'contact@laciteduvin.com', '+33 5 56 16 20 20', '0123456789', 'professionnel', '2_AYmJfwX.jpg', '2022-12-13', NULL, NULL),
(249, 'Nom', 'Prenom', 'canopee.forest.adventure@gmail.com', '+590 590 26-9559', '0123456789', 'professionnel', '0.png', '2022-12-13', NULL, NULL),
(250, 'Nom', 'Prénom', 'gaecbordes@orange.fr', '+33 6 19 64 43 16', '0123456789', 'professionnel', '3_CtkqZ2C.png', '2022-12-13', NULL, NULL),
(251, 'Nom', 'Prenom', 'responsable@ti-evasion.com', '+590 690 84-3384', '0123456789', 'professionnel', '0_prvVy9u.jpg', '2022-12-13', NULL, NULL),
(252, 'Nom', 'Prénom', 'lafeebidule@gmail.com', '+33 6 05 20 32 98', '0123456789', 'professionnel', '1_WLWTjLy.jpg', '2022-12-13', NULL, NULL),
(253, 'Nom', 'Prenom', 'uhainacroisieres@gmail.com', '0690 38 58 28', '0123456789', 'professionnel', '0_CJGKXFn.jpg', '2022-12-13', NULL, NULL),
(254, 'Nom', 'Prénom', 'contact@chateau-amboise.com', '+33 2 47 57 00 98', '0123456789', 'professionnel', '2_QqXHDPp.jpg', '2022-12-13', NULL, NULL),
(255, 'Nom', 'Prenom', 'resa@tendacayou.com', '+590 590 28-4272', '0123456789', 'professionnel', '1_g6RpNR2.jpg', '2022-12-13', NULL, NULL),
(256, 'Nom', 'Prénom', 'culdeloup@orange.fr', '06 82 87 94 45', '0123456789', 'professionnel', '1_bMoLkBD.webp', '2022-12-14', NULL, NULL),
(257, 'Nom', 'Prenom', 'contact@globesailor.fr', '+33 1 75 43 48 88', '0123456789', 'professionnel', '0_Z3sRYqs.jpg', '2022-12-15', NULL, NULL),
(258, 'Nom', 'Prenom', 'contact@villarosecaraibes.com', '0590 999 662', '0123456789', 'professionnel', '0_SXKPoGA.jpg', '2022-12-15', NULL, NULL),
(259, 'Nom', 'Prénom', 'hautesroches@relaischateaux.com', '02 47 52 88 88', '0123456789', 'professionnel', '1_UUNJNfQ.jpg', '2022-12-15', NULL, NULL),
(260, 'Nom', 'Prénom', 'tourisme@fragonard.com', '+33 1 47 42 04 56', '0123456789', 'professionnel', '1_ck66edW.jpg', '2022-12-15', NULL, NULL),
(261, 'Nom', 'Prenom', 'info@castelbrando.com', '+33 4 95 30 10 30', '0123456789', 'professionnel', '0_m6mVhkK.jpg', '2022-12-15', NULL, NULL),
(262, 'Nom', 'Prénom', 'contact@ndsenanque.net', '+33 4 90 72 18 25', '0123456789', 'professionnel', '1_tznZJT3.jpg', '2022-12-15', NULL, NULL),
(263, 'Nom', 'Prenom', 'info@hameaux-buttaciolo.com', '0680351686', '0123456789', 'professionnel', '0_wfEUoiu.jpg', '2022-12-15', NULL, NULL),
(264, 'Nom', 'Prenom', 'closdumouflon@orange.fr', ' +33 6 74 32 56 94', '0123456789', 'professionnel', '0_90Vfu4V.jpg', '2022-12-15', NULL, NULL),
(265, 'Nom', 'Prenom', 'casanovakarine@orange.fr', '06 19 81 06 19', '0123456789', 'professionnel', '0_X4Tbilc.jpg', '2022-12-15', NULL, NULL),
(266, 'Nom', 'Prénom', 'culture-espaces@imaginet.fr', '01 53 77 66 00', '0123456789', 'professionnel', '2_Ya3o32w.jpg', '2022-12-15', NULL, NULL),
(267, 'Nom', 'Prénom', 'domainedelagrangee@gmail.com', '+33 2 47 92 03 44', '0123456789', 'professionnel', '2_K1ejNsI.jpg', '2022-12-15', NULL, NULL),
(268, 'Nom', 'Prenom', 'info@hotel-abbaye-calvi.fr', '04 95 65 04 27', '0123456789', 'professionnel', '0_77cJR4B.jpg', '2022-12-15', NULL, NULL),
(269, 'Lefrancq', 'Killian', 'contact.cameki@gmail.com', '0652545490', 'C1mdppbc!', 'professionnel', 'CaméKi_Prod_Logo.png', '2022-12-18', NULL, NULL),
(270, 'Nom', 'Prenom', 'contact@copeyre.com', '+33 5 53 59 53 87', '0123456789', 'professionnel', '0_Z0N4qIY.jpg', '2022-12-19', NULL, NULL),
(271, 'Nom', 'Prenom', 'ossaudeleaucanyoning@gmail.com', '+33 6 60 95 83 13', '0123456789', 'professionnel', '0_cbUlErj.jpg', '2022-12-19', NULL, NULL),
(272, 'Nom', 'Prenom', 'jardinverger64@gmail.com', '+33 6 15 57 93 39', '0123456789', 'professionnel', '0_htjooYP.jpg', '2022-12-19', NULL, NULL),
(273, 'Nom', 'Prenom', 'contact@volenballon.fr', '+33 6 20 25 91 58', '0123456789', 'professionnel', '0_cvtQ8uQ.jpg', '2022-12-19', NULL, NULL),
(274, 'Nom', 'Prénom', 'restaurant@tetedoie.com', '+33 4 78 29 40 10', '0123456789', 'professionnel', '1_NnGTiGw.jpg', '2022-12-19', NULL, NULL),
(275, 'Nom', 'Prenom', 'communication.aacfvi@trainguitres.fr', '+33 2 43 75 10 42', '0123456789', 'professionnel', '1_e9tRjIR.jpg', '2022-12-19', NULL, NULL),
(276, 'Nom', 'Prénom', 'aupotdevin@orange.fr', '+33 6 40 97 03 36', '0123456789', 'professionnel', '2_1gIxH1A.jpg', '2022-12-19', NULL, NULL),
(277, 'Nom', 'Prenom', 'reservations@doeatbetter.com', '+393291790647', '0123456789', 'professionnel', '1_lpzX0vp.jpg', '2022-12-19', NULL, NULL),
(278, 'Nom', 'Prénom', 'contact@doualacitybar.com', '+33 6 20 16 45 39', '0123456789', 'professionnel', '1_KgutZzL.png', '2022-12-19', NULL, NULL),
(279, 'Nom', 'Prenom', 'contact@brantomecroisieres.com', '+33 5 53 04 74 71', '0123456789', 'professionnel', '0_G1yoxm1.jpg', '2022-12-19', NULL, NULL),
(280, 'Nom', 'Prénom', 'reservation@laferialyon.fr', '0633970300', '0123456789', 'professionnel', '1_xFRcVCH.webp', '2022-12-19', NULL, NULL),
(281, 'Nom', 'Prenom', 'lesgitesafaireacheval@orange.fr', '+33 5 45 30 36 79', '0123456789', 'professionnel', '4_aHYSj8a.jpg', '2022-12-19', NULL, NULL),
(282, 'Nom', 'Prénom', 'contact@lamovida.uno', '+33 6 82 83 14 08', '0123456789', 'professionnel', '1_gtZxRpI.jpg', '2022-12-19', NULL, NULL),
(283, 'Nom', 'Prenom', 'nic.ovara1@orange.fr', '+33 6 52 38 65 23', '0123456789', 'professionnel', '1_zUsMHDI.jpg', '2022-12-19', NULL, NULL),
(284, 'Nom', 'Prénom', 'boitea.bulles@yahoo.fr', '+33 4 69 70 87 23', '0123456789', 'professionnel', '1_k7BGLMk.jpg', '2022-12-19', NULL, NULL),
(285, 'Nom', 'Prenom', 'angelinacharron@motiv8.fr', '05 49 64 38 28', '0123456789', 'professionnel', '0_cNCjiyL.jpg', '2022-12-19', NULL, NULL),
(286, 'Nom', 'Prénom', 'mouz@valseuses.com', '+33 9 51 19 97 19', '0123456789', 'professionnel', '2_XuZdmgt.jpg', '2022-12-19', NULL, NULL),
(287, 'Nom', 'Prénom', 'contact@lesirius.com', '04 78 71 78 71', '0123456789', 'professionnel', '1_hooppX1.png', '2022-12-19', NULL, NULL),
(288, 'Nom', 'Prenom', 'lesinuits40@gmail.com', '+33 7 87 21 49 04', '0123456789', 'professionnel', '0_lzLUZBq.jpg', '2022-12-19', NULL, NULL),
(289, 'Nom', 'Prénom', 'progtrokson@yahoo.fr', ' 09 82 43 20 01', '0123456789', 'professionnel', '1_yD4ctXI.jpg', '2022-12-19', NULL, NULL),
(290, 'Nom', 'Prenom', 'dir@atipiclodge.fr', '06 95 56 24 49', '012456789', 'professionnel', '0_jfvOvjJ.jpg', '2022-12-19', NULL, NULL),
(291, 'Nom', 'Prenom', 'contact@chambresdromedetente.fr', '+33 6 60 05 99 21', '0123456789', 'professionnel', '0_bCyzFhp.jpg', '2022-12-19', NULL, NULL),
(292, 'Nom', 'Prenom', 'contact@saintsabastien.com', '+33 5 56 41 38 65', '0123456789', 'professionnel', '0_JylgNAS.jpg', '2022-12-20', NULL, NULL),
(293, 'Nom', 'Prenom', 'rajwal@live.fr', '+33 5 56 44 25 97', '0123456789', 'professionnel', '8_AD2v1RD.jpg', '2022-12-20', NULL, NULL),
(294, 'Nom', 'Prenom', 'contact@briketenia.com', '+33559265134', '0123456789', 'professionnel', '1_hd3eKKj.jpg', '2022-12-20', NULL, NULL),
(295, 'Nom', 'Prenom', 'info@lerestaurant123.fr', '+33546079494', '0123456789', 'professionnel', '0_1le5DAh.jpg', '2022-12-20', NULL, NULL),
(296, 'Nom', 'Prenom', 'orangeries@wanadoo.fr', '+33 (0)7 85 34 19 91', '0123456789', 'professionnel', '0_291AOVq.jpg', '2022-12-20', NULL, NULL),
(297, 'Nom', 'Prenom', 'contact@crocrorico.fr', '+33 5 53 08 80 78', '0123456789', 'professionnel', '5_UhGd4OE.webp', '2022-12-20', NULL, NULL),
(298, 'Nom', 'Prenom', 'contact@restaurantlesvoutes.fr', '05 56 81 35 60', '0123456789', 'professionnel', '0.webp', '2022-12-20', NULL, NULL),
(299, 'Nom', 'Prenom', 'communication@vigiers.com', '+33 5 53 61 50 00', '0123456789', 'professionnel', '0_Zejwzhc.jpg', '2022-12-20', NULL, NULL),
(300, 'Nom', 'Prenom', 'venetotourny@gmail.com', '+33 6 58 92 14 99', '0123456789', 'professionnel', '0_NXFdX3U.jpg', '2022-12-20', NULL, NULL),
(301, 'Nom', 'Prenom', 'le-bistrot-de-tutelle@orange.fr', '+33 5 57 30 17 26', '0123456789', 'professionnel', '0_Ck2cCbN.jpg', '2022-12-20', NULL, NULL),
(302, 'Nom', 'Prenom', 'info@marais-poitevin.com', '+33 5 49 35 90 47', '0123456789', 'professionnel', '0_p2rdR1K.jpg', '2022-12-20', NULL, NULL),
(303, 'Nom', 'Prenom', 'leconfidentielbordeaux@gmail.com', '+33 5 57 87 67 72', '0123456789', 'professionnel', '0_AYGqeXs.jpg', '2022-12-20', NULL, NULL),
(304, 'Nom', 'Prénom', 'grooverieprog@gmail.com', '04 78 98 52 32', '0123456789', 'professionnel', '5_zbXaTik.png', '2022-12-21', NULL, NULL),
(305, 'Nom', 'Prenom', 'latabledesdocks@gmail.com', '+33 5 59 41 28 51', '0123456789', 'professionnel', '0_95945SM.jpg', '2022-12-21', NULL, NULL),
(306, 'Nom', 'Prenom', 'aichabertet@yahoo.fr', '+33 7 77 05 26 7', '0123456789', 'professionnel', '0_mMRFq8y.jpg', '2022-12-21', NULL, NULL),
(307, 'Nom', 'Prenom', 'friendscafe3391@gmail.com', '+33 5 56 23 40 55', '0123456789', 'professionnel', '0_8MSXglX.jpg', '2022-12-21', NULL, NULL),
(308, 'Nom', 'Prénom', 'programmation@toitoilezinc.fr', '+33 4 37 48 90 15', '0123456789', 'professionnel', '1_W4eTBhL.png', '2022-12-21', NULL, NULL),
(309, 'Nom', 'Prenom', 'Bixente@eizmenditraiteur.fr', '+33 5 59 54 73 39', '0123456789', 'professionnel', '0_RCk8BkB.jpg', '2022-12-21', NULL, NULL),
(310, 'Nom', 'Prénom', 'contact@lesarpenteurs-bar.com', '***', '0123456789', 'professionnel', '1_F33acS3.png', '2022-12-21', NULL, NULL),
(311, 'Nom', 'Prenom', 'contact@restaurant-aga.fr', '+33 5 56 27 47 63', '0123456789', 'professionnel', '1_tn9sD6k.jpg', '2022-12-21', NULL, NULL),
(312, 'Nom', 'Prenom', 'stjames@relaischateaux.com', '+33 5 57 97 06 00', '0123456789', 'professionnel', '0_0vtloEr.jpg', '2022-12-21', NULL, NULL),
(313, 'Nom', 'Prénom', 'lyon@livestationdiy.com', '0426018739', '0123456789', 'professionnel', '2_Uv6jBXR.jpg', '2022-12-21', NULL, NULL),
(314, 'Nom', 'Prenom', 'maisonjoanto2@gmail.com', '05 59 20 27 70', '0123456789', 'professionnel', '0.jpeg', '2022-12-21', NULL, NULL),
(315, 'Nom', 'Prenom', 'brentiresto.contact@gmail.com', '+33 5 59 15 70 67', '0123456789', 'professionnel', '6_jJiuhmd.jpg', '2022-12-21', NULL, NULL),
(316, 'Nom', 'Prénom', 'contact@cabanes-croixcouverte.com', '+33954820304', '0123456789', 'professionnel', '1_InJUQSy.jpg', '2022-12-21', NULL, NULL),
(317, 'Nom', 'Prénom', 'contact@domainedeladombes.com', '+33 4 74 30 32 32', '0123456789', 'professionnel', '1_P3fXqn5.png', '2022-12-21', NULL, NULL),
(318, 'Nom', 'Prenom', 'laxaisas@gmail.com', '+33 9 81 97 42 40', '0123456789', 'professionnel', '9_P3mGAmf.jpg', '2022-12-21', NULL, NULL),
(319, 'Nom', 'Prénom', 'contact@lechateaudelaroche.fr', '0477649768', '0123456789', 'professionnel', '3_XvhYUPU.jpg', '2022-12-21', NULL, NULL),
(320, 'Nom', 'Prenom', 'jean@glisseenherbe.fr', '+33 7 61 05 67 26', '0123456789', 'professionnel', '0_4fDH9WS.jpg', '2022-12-21', NULL, NULL),
(321, 'Nom', 'Prénom', 'cabanesdeserrieres@gmail.com', '+33 4 74 40 52 23', '0123456789', 'professionnel', '1_TruPIUZ.jpg', '2022-12-21', NULL, NULL),
(322, 'Nom', 'Prenom', 'contact@rafting-pyrenees.com', '0617551932', '0123456789', 'professionnel', '0_10NUmiZ.jpeg', '2022-12-21', NULL, NULL),
(323, 'Nom', 'Prénom', 'bonjour@leslodgesdelaviarhona.com', '+33 7 62 10 53 45', '0123456789', 'professionnel', '1_1dkfOhP.jpg', '2022-12-21', NULL, NULL),
(324, 'Nom', 'Prenom', 'guidelanguedoc@gmail.com', '+33 6 09 92 61 61', '0123456789', 'professionnel', '0_rS6bL5W.jpg', '2022-12-21', NULL, NULL),
(325, 'Nom', 'Prenom', 'lasterix46@gmail.com', '+33 6 15 84 02 20', '0123456789', 'professionnel', '0_d5xBrqH.jpg', '2022-12-22', NULL, NULL),
(326, 'Nom', 'Prenom', 'sailing@masovia.fr', '+33 6 26 86 74 76', '0123456789', 'professionnel', '0_5jm38yl.jpg', '2022-12-22', NULL, NULL),
(327, 'Nom', 'Prenom', 'Contact@pyrenees-autrement.com', '+33 6 73 47 83 66', '0123456789', 'professionnel', '0_NsdBXDC.jpg', '2022-12-22', NULL, NULL),
(328, 'Nom', 'Prenom', 'contact@xploria.com', '+33 5 61 60 03 69', '0123456789', 'professionnel', '0_P5NKmWG.jpg', '2022-12-22', NULL, NULL);
INSERT INTO `users` (`users_id`, `users_nom`, `users_prenoms`, `users_email`, `users_telephone`, `users_motdepasse`, `users_type`, `users_photo`, `users_joinedAt`, `users_etablissement`, `users_etablissement_logo`) VALUES
(329, 'Nom', 'Prénom', 'hello@cabanes-lahaut.com', '+33 4 79 70 27 17', '0123456789', 'professionnel', '1_GHhCFaO.webp', '2022-12-22', NULL, NULL),
(330, 'Nom', 'Prénom', 'Viski@hotmail.co.uk', '+33 7 80 06 05 31', '0123456789', 'professionnel', '1_xx1phr3.jpg', '2022-12-22', NULL, NULL),
(331, 'Nom', 'Prénom', 'samourai-toulouse@groupebarriere.com', '+33 5 61 33 37 08', '0123456789', 'professionnel', '1_YQMBFZ9.jpg', '2022-12-22', NULL, NULL),
(332, 'Nom', 'Prenom', 'lescalechesdecamargue@gmail.com', '+33 6 86 67 82 80', '0123456789', 'professionnel', '0_OP5PDHT.jpg', '2022-12-22', NULL, NULL),
(333, 'Nom', 'Prénom', 'h0370-KC@accor.com', '+33 5 62 27 79 61', '0123456789', 'professionnel', '1_TDs955t.jpg', '2022-12-22', NULL, NULL),
(334, 'Nom', 'Prenom', 'angegardien.agde@gmail.com', '+33 6 08 40 42 03', '0123456789', 'professionnel', '0_1ObWouZ.jpg', '2022-12-22', NULL, NULL),
(335, 'Nom', 'Prénom', 'contact@letubelounge.com', '01 71 20 54 94', '0123456789', 'professionnel', '1_9RISgbh.webp', '2022-12-22', NULL, NULL),
(336, 'Nom', 'Prenom', 'info@fifye.com', '+33 6 17 69 51 93', '0123456789', 'professionnel', '0_Oe0tIV2.jpg', '2022-12-22', NULL, NULL),
(337, 'Nom', 'Prenom', 'contact@ludoloisirs.com', '+33 6 64 39 62 36', '0123456789', 'professionnel', '0_Did6NMI.jpg', '2022-12-22', NULL, NULL),
(338, 'Nom', 'Prénom', 'lebarlamaisontoulouse@gmail.com', '05 61 62 87 22', '0123456789', 'professionnel', '1_YR3pfnt.jpg', '2022-12-22', NULL, NULL),
(339, 'Nom', 'Prenom', 'bateauxdusoleil@gmail.com', '+33 4 67 94 08 79', '0123456789', 'professionnel', '0_roxTnKQ.jpg', '2022-12-22', NULL, NULL),
(340, 'Nom', 'Prénom', 'fatcattoulouse@gmail.com', '***', '0123456789', 'professionnel', '1_eaVmOLg.png', '2022-12-22', NULL, NULL),
(341, 'Nom', 'Prenom', '66commesurdesroulettes@gmail.com', '+33 6 75 14 79 31', '0123456789', 'professionnel', '0_7f1SL8m.jpg', '2022-12-22', NULL, NULL),
(342, 'Nom ', 'Prénom', 'satch.club.toulouse@gmail.com', '+33 6 27 51 12 22', '0123456789', 'professionnel', '1_Zm3TWxK.png', '2022-12-22', NULL, NULL),
(343, 'Nom', 'Prenom', 'contact@twist-air.com', '+33 6 21 79 26 82', '0123456789', 'professionnel', '0_NtFOVHE.jpg', '2022-12-22', NULL, NULL),
(344, 'Nom', 'Prénom', 'info@newdelhi-palace.fr', '05 62 80 95 29', '0123456789', 'professionnel', '1_xYS1Lkw.jpg', '2022-12-22', NULL, NULL),
(345, 'Nom', 'Prenom', 'valentineguezille14@gmail.com', '06 74 31 34 91', '0123456789', 'professionnel', '0_KqT4Tks.jpg', '2022-12-22', NULL, NULL),
(346, 'Nom', 'Prénom', 'leduplex-toulouse@hotmail.fr', '+33 5 61 57 18 82', '0123456789', 'professionnel', '1_yOZUxx1.jpg', '2022-12-22', NULL, NULL),
(347, 'Nom', 'Prenom', 'airdenature@gmail.com', '+33 6 17 87 79 28', '0123456789', 'professionnel', '0_L21Pjzs.jpg', '2022-12-22', NULL, NULL),
(348, 'Nom', 'Prénom', 'nasdrovia.tolosa@gmail.com', '06 78 85 03 67', '0123456789', 'professionnel', '1_KCKeKKL.jpg', '2022-12-22', NULL, NULL),
(349, 'Nom', 'Prenom', 'canoe-collias.fr@hotmail.fr', '+33 4 66 22 87 20', '0123456789', 'professionnel', '0_gBnT1w4.jpg', '2022-12-22', NULL, NULL),
(350, 'Nom', 'Prénom', 'contact@maisonsarment.com', '+33 5 61 47 99 64', '0123456789', 'professionnel', '2_4zF3gZ0.jpg', '2022-12-22', NULL, NULL),
(351, 'Nom', 'Prenom', 'marcel.philippe@yahoo.fr', '+33 7 68 55 33 61', '0123456789', 'professionnel', '0_Z0nIdxb.jpg', '2022-12-22', NULL, NULL),
(352, 'Nom', 'Prénom', 'auperelouis@wanadoo.fr', '+33 1 43 26 54 14', '0123456789', 'professionnel', '1_H23cqh5.jpg', '2022-12-22', NULL, NULL),
(353, 'Nom', 'Prénom', 'hello@maitre-renard.fr', '05 61 52 79 16', '0123456789', 'professionnel', '2_uL0b1iU.jpg', '2022-12-22', NULL, NULL),
(354, 'Nom', 'Prénom', 'toulouse@lespetitscrus.com', '09 87 73 58 59', '0123456789', 'professionnel', '1_1FejGjS.jpg', '2022-12-22', NULL, NULL),
(355, 'Nom', 'Prénom', 'info@la-belle-etoile.fr', '+33 5 49 73 31 29', '0123456789', 'professionnel', '1_oUMhvmw.jpg', '2022-12-22', NULL, NULL),
(356, 'Nom', 'Prenom', 'contact@pavillondessensations.com', '+33 6 61 40 04 17', '0123456789', 'professionnel', '0_paU1772.jpg', '2022-12-23', NULL, NULL),
(357, 'Nom', 'Prenom', 'd.houllier.vitrail@orange.fr', '05 65 33 13 62', '0123456789', 'professionnel', '0_1fG6an4.jpg', '2022-12-23', NULL, NULL),
(358, 'Nom', 'Prénom', 'tempsvendanges@orange.fr', '+33 5 61 42 94 66', '0123456789', 'professionnel', '1_qFztgKj.jpg', '2022-12-23', NULL, NULL),
(359, 'Nom', 'Prenom', 'contact@kapmer.fr', '+33 4 83 43 26 36', '0123456789', 'professionnel', '0_0hLSrjw.jpg', '2022-12-23', NULL, NULL),
(360, 'Nom', 'Prenom', 'garethdegazost@gmail.com', '+33 7 81 51 04 60', '0123456789', 'professionnel', '0_D5gXdey.jpg', '2022-12-23', NULL, NULL),
(361, 'Nom', 'Prénom', 'chupitostoulouse@gmail.com', '+33 5 61 23 39 07', '0123456789', 'professionnel', '1_muJPgUD.jpg', '2022-12-23', NULL, NULL),
(362, 'Nom', 'Prenom', 'contact@loubourdie.fr', '+33 5 65 31 77 46', '0123456789', 'professionnel', '0_NXx0lQY.jpg', '2022-12-23', NULL, NULL),
(363, 'Nom', 'Prénom', 'cafepop31@gmail.com', '***', '0123456789', 'professionnel', '1_SnlHoeh.jpg', '2022-12-23', NULL, NULL),
(364, 'Nom', 'Prenom', 'contact@pingpong-cowork.com', '+33 6 63 85 85 45', '0123456789', 'professionnel', '8_hUk8ZZH.jpg', '2022-12-23', NULL, NULL),
(365, 'Nom', 'Prenom', 'danielnasrallah@live.fr', '04 67 48 85 61', '0123456789', 'professionnel', '0_zssRQAf.jpg', '2022-12-23', NULL, NULL),
(366, 'Nom', 'Prénom', 'contact@lacouleurdelaculotte.com', '+33 5 34 44 97 01', '0123456789', 'professionnel', '2_crMDyv0.png', '2022-12-23', NULL, NULL),
(367, 'SANDANI', 'Jammel', 'jean@gmail.com', '+22891006590', '123456789', 'professionnel', 'html_certicat_zPAqzrP.pdf', '2023-01-09', NULL, NULL),
(368, 'jam', 'san', 'jam@gmail.com', '12547896', '123456789', 'professionnel', 'lion.jpeg', '2023-01-16', NULL, NULL),
(369, 'Jean', 'Pascal Bispo', 'falcon2.duty96@gmail.com', '065856589896', 'jbb@gmail.com', 'professionnel', 'avant_HyiU25O.PNG', '2023-02-17', NULL, NULL),
(370, 'Jean', 'Castel', 'jeancastel@gmail.com', '0565665656', 'jeancastel@gmail.com', 'professionnel', 'gyvine.jpg', '2023-02-17', NULL, NULL),
(371, 'Jean', 'Castel', 'jeancastel2@gmail.com', '0565665656', 'jeancastel@gmail.com', 'professionnel', 'gyvine_endsO0U.jpg', '2023-02-17', NULL, NULL),
(372, 'luc', 'castel', 'luc@gmail.com', '65665655', 'luc@gmail.com', 'professionnel', 'gyvine_kbHt6To.jpg', '2023-02-17', NULL, NULL),
(373, 'luc  ', 'jean', 'luc2@gmail.com', '55522', 'luc@gmail.com', 'professionnel', 'gyvine_ge9Dexr.jpg', '2023-02-17', NULL, NULL),
(374, 'rakotobe', 'Marc', 'rm@gmail.com', '0343403434', '1234rbj', 'professionnel', 'carte_france_vPl3Fdn.png', '2023-02-17', NULL, NULL),
(375, 'kemba', 'Vary', 'kemba@gmail.com', '0343403434', '1234kemba', 'professionnel', 'carte_france_8tsh5fE.png', '2023-02-17', NULL, NULL),
(376, 'example', 'example', 'example@gmail.com', '0343403434', '1234example', 'professionnel', 'bar_rooftop_EfDaqUQ.png', '2023-02-20', NULL, NULL),
(377, 'Jean', 'Luc', 'jean3luc@gmail.com', '545655', 'jeanluc@gmail.com', 'professionnel', '3_vp1RUHV.jpg', '2023-02-20', NULL, NULL),
(378, 'Igo', 'Guide', 'igo.guide@gmail.com', '0343403434', 'igo1234guide', 'professionnel', 'gateau-mariage-flores-couleur_144627-13807.jpg', '2023-02-21', NULL, NULL),
(379, 'Jean', 'Marc', 'jeanne@gmail.com', '0343403434', '12341234', 'professionnel', 'blank-dark.svg', '2023-03-03', NULL, NULL),
(380, 'qsdf', 'ghjk', 'qsdf@gmail.com', '0343403434', '12341234', 'professionnel', 'blank-dark.svg', '2023-03-03', NULL, NULL),
(381, 'fdsq', 'fd', 'fdsq@gmail.com', '0343403434', '12341234', 'professionnel', 'blank-dark.svg', '2023-03-03', NULL, NULL),
(382, 'azer', 'reza', 'azer@gmail.com', '0343403434', '12341234', 'professionnel', 'blank-dark.svg', '2023-03-03', NULL, NULL),
(383, 'rakotooo', 'benandra', 'rabenandra@gmail.com', '0343403434', '', 'professionnel', 'blank-dark.svg', '2023-03-06', NULL, NULL),
(384, 'hery', 'rakoto', 'rakotooo@gmail.com', '0343103431', '12341234', 'professionnel', 'blank-dark.svg', '2023-03-07', NULL, NULL),
(385, 'Jenny', 'rakoto', 'jenny.hery12345@gmail.com', '0343203432', '12341234', 'professionnel', 'blank-dark.svg', '2023-03-07', NULL, NULL),
(386, 'HEOG', 'Oscar', 'wilfriedgoeh@gmail.com', '+228 98490524', 'heogOscar', 'particulier', 'testimonials-4_7nSiE5y.jpg', '0000-00-00', NULL, NULL),
(387, 'CHILLOH', 'martial', 'cmg@gmail.com', '+22890980254', 'cmgcmgcmg', 'particulier', 'testimonials-4_fjngzrX.jpg', '0000-00-00', NULL, NULL),
(388, 'tata', 'tonton', 'igoguide.jammel@gmail.com', '5268556', '123456789', 'particulier', 'lion_cRpHoRu.jpg', '0000-00-00', NULL, NULL),
(389, 'Zouniis', 'Germain', 'germainzounimbiiat@gmail.com', '+22897379527', 'azerty1234', 'particulier', 'icone_restaurants_originaux.png', '0000-00-00', NULL, NULL),
(390, 'popo', 'po', 'po@gmail.com', '123654', '0123456789', 'particulier', 'grotte_de_lardeche-.jpg', '2022-11-09', NULL, NULL),
(391, 'Claire', 'Lebois', 'igoguide@gmail.com', '0123456789', '123456789', 'particulier', 'Capture_decran_2022-10-15_a_18.37.56.png', '2022-11-19', NULL, NULL),
(392, '#DotPy', 'einswilli', 'adenovijulien@gmail.com', '+22890980254', 'frido', 'particulier', 'blank-dark.svg', '2022-11-23', NULL, NULL),
(393, 'popo', 'pipi', 'sjammel1234@gmail.com', '91006590', '123456789', 'particulier', 'blank-dark.svg', '2022-11-24', NULL, NULL),
(394, 'cc', 'cc', 'sa@gmail.com', '11', 'c', 'particulier', 'blank-dark.svg', '2022-11-25', NULL, NULL),
(395, 'Paris en scene', 'Paris en scene', 'contactpes@vedettesdelaseine.com', '0141419070', '0123456789', 'particulier', 'blank-dark.svg', '2022-12-01', NULL, NULL),
(396, 'lefrancq', 'kevin', 'lefrancq33@gmail.com', '', 'Projet01', 'particulier', 'blank-dark.svg', '2022-12-01', NULL, NULL),
(397, 'Test', 'Sekou Abraham', 'rsonomousekou@gmail.com', '+22870026994', 'r', 'particulier', 'blank-dark.svg', '2022-12-08', NULL, NULL),
(398, 'igoguide', 'jonathan', 'igoguide.jonathan@gmail.com', '99504136', 'Igoguidejokey', 'particulier', 'blank-dark.svg', '2022-12-14', NULL, NULL),
(399, 'Anate', 'Merewe ', 'anatecyrille@gmail.com', '+22892903951', 'momovi222', 'particulier', 'blank-dark.svg', '2022-12-17', NULL, NULL),
(400, 'Lefrancq', 'Killian', 'killianlefrancq2@gmail.com', '0652545490', 'C1mdppbc!', 'particulier', 'blank-dark.svg', '2022-12-18', NULL, NULL),
(401, 'falcon', 'duty', 'falcon.duty96@gmail.com', '+261348368771', 'falconduty', 'particulier', 'blank-dark.svg', '2023-02-04', NULL, NULL),
(402, 'JB', 'Donald', 'jbdonald@gmail.com', '05565556', 'Jbubu', 'particulier', 'blank-dark.svg', '2023-02-17', NULL, NULL),
(403, 'Jean', 'Batiste', 'jeanbatiste@gmail.com', '575544', 'jeanbatiste@gmail.com', 'particulier', 'blank-dark.svg', '2023-02-17', NULL, NULL),
(404, 'Jean', 'Luc', 'jeanluc@gmail.com', '5285225', 'jeanluc@gmail.com', 'particulier', 'blank-dark.svg', '2023-02-17', NULL, NULL),
(405, 'Karim', 'Benzema', 'karim@gmail.com', '54555', 'karim@gmail.com', 'particulier', 'blank-dark.svg', '2023-02-17', NULL, NULL),
(406, 'rakotobe', 'Jean', 'rbj@gmail.com', '+261343403434', '1234rjb', 'particulier', 'blank-dark.svg', '2023-02-17', NULL, NULL),
(407, 'inscri', 'ption', 'inscription@gmail.com', '0343403434', 'inscription1234', 'particulier', 'blank-dark.svg', '2023-02-20', NULL, NULL),
(408, 'Jean', 'Castel', 'casteljean@gmail.com', '655255', 'casteljean@gmail.com', 'particulier', 'blank-dark.svg', '2023-02-20', NULL, NULL),
(409, 'Rakoto', 'jean', 'rakotojean@gmail.com', '565555', 'azertyuiop', 'particulier', 'blank-dark.svg', '2023-02-28', NULL, NULL),
(410, 'Rakotobe', 'Jean', 'rakjean@gmail.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-02-28', NULL, NULL),
(411, 'Ben', 'Ten', 'benten@gmail.com', '032 54 464 46', 'arielle9!!', 'particulier', 'blank-dark.svg', '2023-03-03', NULL, NULL),
(412, 'aaaa', 'zzzz', 'aaaa@gmail.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-03-03', NULL, NULL),
(413, 'rakkootoo', 'be', 'rakbe@gmail.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-03-06', NULL, NULL),
(414, 'qsdfqsdf', 'zerazearzer', 'rakoto@rakot.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-03-06', NULL, NULL),
(415, 'Siraj', 'Raval', 'siraj@gmail.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-03-06', NULL, NULL),
(416, 'sqdfqsdf', 'qsdfqsdf', 'rakqsdfjean@gmail.com', '0343403434', 'dfsdf', 'particulier', 'blank-dark.svg', '2023-03-06', NULL, NULL),
(417, 'rebecca', 'Andria', 're.becca@gmail.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-03-06', NULL, NULL),
(418, 'Jenny', 'Hery', 'jenny.hery@gmail.com', '0343403434', '12341234', 'particulier', 'blank-dark.svg', '2023-03-07', NULL, NULL),
(419, 'Rakotobe', 'Jean', 'rabe@gmail.com', '0343403434', 'c129b324aee662b04eccf68babba85851346dff9', 'professionnel', 'pro/uploads/voiture-livraison-gratuite-vector-illustration-icone-design-plat-prestation-service_153097-2149.webp', '2023-03-03', NULL, NULL),
(420, 'heryhery', 'jenny', 'hery@gmail.com', '0343403434', 'c129b324aee662b04eccf68babba85851346dff9', 'professionnel', 'pro/uploads/en epi.jfif', '2023-03-03', NULL, NULL),
(421, 'Rakotolita', 'Jean De Dieu', 'rakotolita@gmail.com', '0323203232', 'c129b324aee662b04eccf68babba85851346dff9', 'professionnel', 'pro/uploads/Capture4.PNG', '2023-03-03', 'qsdfqsdfqsdf', 'pro/uploads/Capture3.PNG'),
(422, 'jenny', 'jenny', 'jenny@gmail.com', '0343403434', 'c129b324aee662b04eccf68babba85851346dff9', 'professionnel', NULL, '2023-03-03', 'Le Grand Jenny', 'pro/uploads/images.jpg');

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
-- Index pour la table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`emails_id`);

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
-- Index pour la table `forfait`
--
ALTER TABLE `forfait`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `abonnements_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT pour la table `emails`
--
ALTER TABLE `emails`
  MODIFY `emails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `etablissements`
--
ALTER TABLE `etablissements`
  MODIFY `etablissements_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

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
-- AUTO_INCREMENT pour la table `forfait`
--
ALTER TABLE `forfait`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `sous_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `superuser`
--
ALTER TABLE `superuser`
  MODIFY `superuser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
