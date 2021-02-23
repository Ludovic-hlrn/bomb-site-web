-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 13 déc. 2020 à 11:57
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
-- Base de données : `Meteo974`
--

-- --------------------------------------------------------

--
-- Structure de la table `mesure`
--

CREATE TABLE `mesure` (
  `mesure_id` int NOT NULL,
  `temperature` float DEFAULT NULL,
  `vent` float DEFAULT NULL,
  `pluviometrie` float DEFAULT NULL,
  `station_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mesure`
--

INSERT INTO `mesure` (`mesure_id`, `temperature`, `vent`, `pluviometrie`, `station_id`) VALUES
(1, 26.2, 11.4, 1.8, 1),
(2, 27.2, 19, 0, 4),
(3, 28.1, 30, 0.2, 2),
(4, 25.4, 22, 0.6, 7),
(5, 28.2, 24, 0, 6),
(6, 15.7, 14, 0.4, 9),
(7, 27.8, 18, 0, 3),
(8, 26.2, 26, 1.8, 5),
(9, 14.4, 20, 2.4, 8),
(10, 28, 11, 0, 4),
(11, 24.6, 45, 1.4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `id` int NOT NULL,
  `commune` varchar(40) DEFAULT NULL,
  `emplacement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `station`
--

INSERT INTO `station` (`id`, `commune`, `emplacement`) VALUES
(1, 'Saint Benoit', 'Bourbier les Bas'),
(2, 'Saint Denis', 'Chaudron'),
(3, 'Le Port', 'Port Ouest'),
(4, 'Trois Bassins', 'Pointe des Trois Bassins'),
(5, 'Sainte Rose', 'Gros Piton'),
(6, 'Saint Pierre', 'Ligne Paradis'),
(7, 'Saint Philippe', 'Le Baril'),
(8, 'Tampon', 'Volcan Pas de Bellecombe'),
(9, 'Saint Paul', 'Petite France');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD PRIMARY KEY (`mesure_id`),
  ADD KEY `station_id` (`station_id`);

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mesure`
--
ALTER TABLE `mesure`
  MODIFY `mesure_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `station`
--
ALTER TABLE `station`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD CONSTRAINT `mesure_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
