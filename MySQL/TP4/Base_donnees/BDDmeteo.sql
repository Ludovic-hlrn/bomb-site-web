-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 13 déc. 2020 à 11:56
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `BDDmeteo`
--

-- --------------------------------------------------------

--
-- Structure de la table `grandeur`
--

CREATE TABLE `grandeur` (
  `id` int NOT NULL,
  `lieu` varchar(30) NOT NULL,
  `temperature` float NOT NULL,
  `vent` float NOT NULL,
  `pluviometrie` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `grandeur`
--

INSERT INTO `grandeur` (`id`, `lieu`, `temperature`, `vent`, `pluviometrie`) VALUES
(1, 'Saint Benoit', 25.1, 7, 84),
(2, 'Saint Denis', 28.4, 3, 19.5),
(3, 'Le Port', 28.1, 13, 0),
(4, 'Trois Bassins', 30.2, 2, 0),
(5, 'Sainte Rose', 21.5, 28, 204.4),
(6, 'Saint Pierre', 27.2, 41, 39.2),
(7, 'Saint Philippe', 23.6, 12, 211),
(8, 'Volcan', 15.8, 5, 383),
(9, 'Maido', 15.9, 12, 23.2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `grandeur`
--
ALTER TABLE `grandeur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `grandeur`
--
ALTER TABLE `grandeur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
