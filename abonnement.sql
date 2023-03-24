-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour igoguide
CREATE DATABASE IF NOT EXISTS `igoguide` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `igoguide`;

-- Listage de la structure de table igoguide. abonnements
CREATE TABLE IF NOT EXISTS `abonnements` (
  `abonnements_id` int unsigned NOT NULL AUTO_INCREMENT,
  `abonnements_duree` varchar(50) NOT NULL,
  `etablissements_id` int NOT NULL,
  `abonnements_datedebut` date DEFAULT NULL,
  `abonnements_datefin` date DEFAULT NULL,
  `users_id` int NOT NULL,
  `abonnements_createdAt` date NOT NULL,
  `abonnements_etat` varchar(10) NOT NULL,
  `abonnements_montant` varchar(100) NOT NULL,
  `abonnements_reference` varchar(100) NOT NULL,
  PRIMARY KEY (`abonnements_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table igoguide.abonnements : 0 rows
DELETE FROM `abonnements`;
/*!40000 ALTER TABLE `abonnements` DISABLE KEYS */;
INSERT INTO `abonnements` (`abonnements_id`, `abonnements_duree`, `etablissements_id`, `abonnements_datedebut`, `abonnements_datefin`, `users_id`, `abonnements_createdAt`, `abonnements_etat`, `abonnements_montant`, `abonnements_reference`) VALUES
	(1, '1', 359, NULL, NULL, 420, '2023-03-24', 'non paye', '50', 'ref641d9f04ccfd8');
/*!40000 ALTER TABLE `abonnements` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
