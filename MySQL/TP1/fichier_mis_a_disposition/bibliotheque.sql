-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 06 Mai 2019 à 22:51
-- Version du serveur :  5.7.26-0ubuntu0.18.04.1
-- Version de PHP :  7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `nopers` int(11) NOT NULL,
  `noliv` int(11) NOT NULL,
  `sortie` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `retour` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `emprunt`
--

INSERT INTO `emprunt` (`nopers`, `noliv`, `sortie`, `retour`) VALUES
(8, 1, '2019-04-01 20:00:00', NULL),
(1, 3, '2019-03-02 20:00:00', '2019-03-30'),
(3, 3, '2019-03-29 20:00:00', '2019-04-15'),
(3, 4, '2019-03-29 20:00:00', NULL),
(8, 7, '2019-03-30 20:00:00', '2019-04-18'),
(7, 9, '2019-03-04 20:00:00', '2019-03-21'),
(2, 11, '2019-03-17 20:00:00', NULL),
(4, 14, '2019-01-31 20:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `noliv` int(11) NOT NULL,
  `titre` char(80) NOT NULL,
  `auteur` char(80) NOT NULL,
  `genre` char(40) DEFAULT 'Roman',
  `prix` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`noliv`, `titre`, `auteur`, `genre`, `prix`) VALUES
(1, 'Les Chouans', 'Balzac', 'roman', '10.00'),
(2, 'Germinal', 'Zola', 'roman', '9.00'),
(3, 'L\'assomoir', 'Zola', 'roman', '12.00'),
(4, 'La bête humaine', 'Zola', 'roman', '8.00'),
(5, 'Les misérables', 'Hugo', 'roman', '14.00'),
(6, 'La peste', 'Camus', 'roman', '15.00'),
(7, 'Les lettres persannes', 'Maupassant', 'roman', '18.00'),
(8, 'Bel ami', 'Maupassant', 'roman', '8.00'),
(9, 'Les lettres de mon moulin', 'Daudet', 'roman', '11.00'),
(10, 'Cesar', 'Pagnol', 'roman', '6.00'),
(11, 'Marius', 'Pagnol', 'roman', '7.00'),
(12, 'Fanny', 'Pagnol', 'roman', '8.00'),
(13, 'Les fleurs du mal', 'Beaudelaire', 'poesie', '18.00'),
(14, 'Paroles', 'Prevert', 'poesie', '16.00'),
(15, 'Les raisons de la colère', 'Steinbeck', 'roman', '19.00'),
(16, 'Poèmes barbares', 'Leconte de Lisle', 'poesie', '13.00');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `nopers` int(11) NOT NULL,
  `nom` char(40) NOT NULL,
  `prenom` char(40) NOT NULL,
  `ville` char(40) DEFAULT 'Saint-Denis'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`nopers`, `nom`, `prenom`, `ville`) VALUES
(1, 'Payet', 'Jean', 'Saint Denis'),
(2, 'Gence', 'Yves', 'Trois Bassins'),
(3, 'Hoareau', 'Lucette', 'Saint Denis'),
(4, 'Dijoux', 'Paul', 'Saint Denis'),
(5, 'Legros', 'Lucien', 'Saint Paul'),
(6, 'Grondin', 'Paul', 'Saint Pierre'),
(7, 'Robert', 'Alain', 'Tampon'),
(8, 'Boyer', 'Martine', 'Saint Denis'),
(9, 'Leveneur', 'François', 'La Possession'),
(10, 'Zitte', 'Edith', 'Trois Bassins');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`noliv`,`nopers`,`sortie`),
  ADD KEY `nopers` (`nopers`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`noliv`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`nopers`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `noliv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`noliv`) REFERENCES `livre` (`noliv`),
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`nopers`) REFERENCES `personne` (`nopers`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
