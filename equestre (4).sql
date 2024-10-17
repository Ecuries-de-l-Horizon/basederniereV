-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 17 oct. 2024 à 14:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `equestre`
--

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `idcoursbase` int(11) NOT NULL,
  `idcoursasso` int(11) NOT NULL,
  `datecours` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cavalerie`
--

CREATE TABLE `cavalerie` (
  `idcavalerie` int(11) NOT NULL,
  `numsire` int(5) NOT NULL,
  `nomcheval` varchar(30) NOT NULL,
  `datenacheval` date NOT NULL,
  `garot` float(10,2) NOT NULL,
  `idrace` int(5) NOT NULL,
  `idrobe` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cavalerie`
--

INSERT INTO `cavalerie` (`idcavalerie`, `numsire`, `nomcheval`, `datenacheval`, `garot`, `idrace`, `idrobe`) VALUES
(1, 8304, 'Rio', '2020-10-03', 1.57, 4, 14),
(2, 1046, 'Astro', '2018-06-30', 1.60, 1, 8),
(3, 382, 'Soleil', '2019-02-08', 1.61, 13, 12),
(4, 4739, 'Spirit', '2022-12-15', 1.55, 3, 15),
(5, 7397, 'Émeraude', '2022-05-02', 1.73, 4, 16),
(6, 1936, 'Isis', '2020-08-21', 1.69, 9, 7),
(7, 5383, 'Apollo', '2019-07-23', 1.63, 11, 10),
(8, 9267, 'Bella', '2022-09-06', 1.59, 12, 20),
(9, 7402, 'Daisy', '2022-07-20', 1.60, 11, 14),
(10, 6820, 'Thunder', '2019-05-31', 1.73, 7, 7),
(11, 376, 'Brume', '2024-01-08', 1.59, 2, 8),
(12, 7283, 'Étoile', '2023-02-27', 1.65, 8, 14),
(13, 374, 'Champion', '2022-04-08', 1.63, 6, 16),
(14, 6489, 'Athena', '2018-03-19', 1.54, 7, 20);

-- --------------------------------------------------------

--
-- Structure de la table `cavalier`
--

CREATE TABLE `cavalier` (
  `idcavalier` int(11) NOT NULL,
  `nomcav` varchar(15) NOT NULL,
  `prenomcav` varchar(10) NOT NULL,
  `numlicence` int(10) NOT NULL,
  `photo` int(11) DEFAULT NULL,
  `datena` date NOT NULL,
  `assurance` varchar(30) DEFAULT NULL,
  `nomres` varchar(15) DEFAULT NULL,
  `prenomres` varchar(10) DEFAULT NULL,
  `rueres` varchar(30) DEFAULT NULL,
  `cpres` varchar(30) DEFAULT NULL,
  `telres` int(12) DEFAULT NULL,
  `mailres` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `idgalop` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cavalier`
--

INSERT INTO `cavalier` (`idcavalier`, `nomcav`, `prenomcav`, `numlicence`, `photo`, `datena`, `assurance`, `nomres`, `prenomres`, `rueres`, `cpres`, `telres`, `mailres`, `password`, `idgalop`) VALUES
(1, 'Murit', 'Tom', 4, NULL, '2001-04-17', 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(2, 'Jacquemart', 'Paul', 1, NULL, '2004-10-03', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(3, 'Imbach', 'Lola', 5, NULL, '2008-08-13', NULL, 'Imbach', 'Victor', 'Rouvet', 'Brignac la plaine', 678396120, 'Imbachvic30@gmail.com', 'root', 2);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `idcours` int(11) NOT NULL,
  `libcours` varchar(30) NOT NULL,
  `hd` time NOT NULL,
  `hf` time NOT NULL,
  `jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`idcours`, `libcours`, `hd`, `hf`, `jour`) VALUES
(1, 'Cours nv 8-9', '08:00:00', '10:00:00', '2025-01-06'),
(2, 'Cours nv 1 à 3', '10:00:00', '12:00:00', '2025-01-06'),
(3, 'Cours nv 4-5', '14:00:00', '16:00:00', '2025-01-06'),
(4, 'Cours nv 6 à 8', '16:00:00', '18:00:00', '2025-01-06'),
(5, 'Cours nv 8-9', '08:00:00', '10:00:00', '2025-01-07'),
(6, 'Cours nv 1 à 3', '10:00:00', '12:00:00', '2025-01-07'),
(7, 'Cours nv 4-5', '14:00:00', '16:00:00', '2025-01-07'),
(8, 'Cours nv 6 à 8', '16:00:00', '18:00:00', '2025-01-07'),
(9, 'Cours nv 8-9', '08:00:00', '10:00:00', '2025-01-08'),
(10, 'Cours nv 1 à 3', '10:00:00', '12:00:00', '2025-01-08'),
(11, 'Cours nv 4-5', '14:00:00', '16:00:00', '2025-01-08'),
(12, 'Cours nv 6 à 8', '16:00:00', '18:00:00', '2025-01-08'),
(13, 'Cours nv 8-9', '08:00:00', '10:00:00', '2025-01-09'),
(14, 'Cours nv 1 à 3', '10:00:00', '12:00:00', '2025-01-09'),
(15, 'Cours nv 4-5', '14:00:00', '16:00:00', '2025-01-09'),
(16, 'Cours nv 6 à 8', '16:00:00', '18:00:00', '2025-01-09'),
(17, 'Cours nv 8-9', '08:00:00', '10:00:00', '2025-01-10'),
(18, 'Cours nv 1 à 3', '10:00:00', '12:00:00', '2025-01-10'),
(19, 'Cours nv 4-5', '14:00:00', '16:00:00', '2025-01-10'),
(20, 'Cours nv 6 à 8', '16:00:00', '18:00:00', '2025-01-10'),
(21, 'Cours nv 8-9', '08:00:00', '10:00:00', '2025-01-11'),
(22, 'Cours nv 1 à 3', '10:00:00', '12:00:00', '2025-01-11'),
(23, 'Cours nv 4-5', '14:00:00', '16:00:00', '2025-01-11'),
(24, 'Cours nv 6 à 8', '16:00:00', '18:00:00', '2025-01-11');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `idevenement` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`idevenement`, `titre`, `commentaire`) VALUES
(1, 'Les quatre sabots', 'Un spectacle de chevaux avec des cascadeurs professionnels de nuit dans le thème du Moyen Age. '),
(2, 'Cavaliers et cavalières célèbres', 'Nous avons la chance d\'accueillir, durant le week-end du vendredi 6 décembre au dimanche 8 décembre, plusieurs célébrités du monde professionnel de l\'équitation.\r\nVoici les célébrités présentes pendant le week-end :\r\n-Pénélope Leprevost\r\n-Roger-Yves Bost\r\n-Laura Graves\r\n-Julien Dassault\r\n-Thibaut Fournier');

-- --------------------------------------------------------

--
-- Structure de la table `galop`
--

CREATE TABLE `galop` (
  `idgalop` int(11) NOT NULL,
  `libgalop` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `galop`
--

INSERT INTO `galop` (`idgalop`, `libgalop`) VALUES
(1, 'Niveau 1'),
(2, 'Niveau 2'),
(3, 'Niveau 3'),
(4, 'Niveau 4'),
(5, 'Niveau 5'),
(6, 'Niveau 6'),
(7, 'Niveau 7');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

CREATE TABLE `inscrit` (
  `idcours` int(10) NOT NULL,
  `idcavalier` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `participe`
--

CREATE TABLE `participe` (
  `idcoursbase` int(11) NOT NULL,
  `idcoursasso` int(11) NOT NULL,
  `idcavalier` int(11) NOT NULL,
  `présence` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pension`
--

CREATE TABLE `pension` (
  `idpension` int(11) NOT NULL,
  `libpension` varchar(30) NOT NULL,
  `tarif` int(5) NOT NULL,
  `dd` date NOT NULL,
  `df` date NOT NULL,
  `idcavalerie` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pension`
--

INSERT INTO `pension` (`idpension`, `libpension`, `tarif`, `dd`, `df`, `idcavalerie`) VALUES
(1, 'Pension en box', 350, '2025-01-01', '2024-10-31', 5),
(2, 'Pension en paddock', 450, '2025-01-01', '2024-10-31', 4),
(3, 'Pension semi-complète', 650, '2025-01-01', '2025-01-31', 3),
(4, 'Pension complète', 750, '2025-01-01', '2025-01-31', 1),
(5, 'Pension avec soins spécifiques', 900, '2025-01-01', '2025-01-31', 7),
(6, 'Pension complète', 750, '2025-01-01', '2025-01-31', 6);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `idphoto` int(11) NOT NULL,
  `libphoto` varchar(30) NOT NULL,
  `idcavalerie` int(11) NOT NULL,
  `idevenement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prend`
--

CREATE TABLE `prend` (
  `idcavalier` int(11) NOT NULL,
  `idpension` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prend`
--

INSERT INTO `prend` (`idcavalier`, `idpension`) VALUES
(1, 4),
(3, 3),
(4, 2),
(5, 1),
(6, 6),
(7, 5);

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `idrace` int(11) NOT NULL,
  `librace` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`idrace`, `librace`) VALUES
(1, 'Pur-sang anglais'),
(2, 'Selle français'),
(3, 'Quarter Horse'),
(4, 'Arabe'),
(5, 'Pur-sang arabe'),
(6, 'Barbe'),
(7, 'Trait irlandais'),
(8, 'Trait belge'),
(9, 'Appaloosa'),
(10, 'Hanovrien'),
(11, 'Lipizzan'),
(12, 'Frison'),
(13, 'Andalou');

-- --------------------------------------------------------

--
-- Structure de la table `robe`
--

CREATE TABLE `robe` (
  `idrobe` int(11) NOT NULL,
  `librobe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `robe`
--

INSERT INTO `robe` (`idrobe`, `librobe`) VALUES
(1, 'Alezan'),
(2, 'Bai'),
(3, 'Alezan Brulé'),
(4, 'Bai Brulé'),
(5, 'Gris Clair'),
(6, 'Gris Pommelé'),
(7, 'Noir'),
(8, 'Palomino'),
(9, 'Pie Tobiano Bai'),
(10, 'Pie Tovero Bai'),
(11, 'Alezan Crins Lavés'),
(12, 'Alezan Brulé Crins Lavés'),
(13, 'Bai Cerise'),
(14, 'Cremello'),
(15, 'Gris Souris'),
(16, 'Isabelle'),
(17, 'Pie Noir Tobiano'),
(18, 'Pie Tobiano Alezan'),
(19, 'Rouan'),
(20, 'Spotted Bai');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `nomuser` varchar(20) NOT NULL,
  `prenomuser` varchar(10) NOT NULL,
  `emailuser` varchar(30) NOT NULL,
  `mdp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `nomuser`, `prenomuser`, `emailuser`, `mdp`) VALUES
(1, 'Laurensou', 'Néo', 'neo.35laurens0u@gmail.com', 'root'),
(2, 'Teixeira', 'Noa', 'Noa.teixeira1@gmail.com', 'root');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`idcoursbase`,`idcoursasso`);

--
-- Index pour la table `cavalerie`
--
ALTER TABLE `cavalerie`
  ADD PRIMARY KEY (`idcavalerie`),
  ADD KEY `FK_race` (`idrace`),
  ADD KEY `FK_robe` (`idrobe`);

--
-- Index pour la table `cavalier`
--
ALTER TABLE `cavalier`
  ADD PRIMARY KEY (`idcavalier`),
  ADD KEY `FK_galop` (`idgalop`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`idcours`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`idevenement`);

--
-- Index pour la table `galop`
--
ALTER TABLE `galop`
  ADD PRIMARY KEY (`idgalop`);

--
-- Index pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD PRIMARY KEY (`idcours`,`idcavalier`);

--
-- Index pour la table `participe`
--
ALTER TABLE `participe`
  ADD PRIMARY KEY (`idcoursbase`,`idcoursasso`,`idcavalier`);

--
-- Index pour la table `pension`
--
ALTER TABLE `pension`
  ADD PRIMARY KEY (`idpension`),
  ADD KEY `FK_cavalerie2` (`idcavalerie`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`idphoto`);

--
-- Index pour la table `prend`
--
ALTER TABLE `prend`
  ADD PRIMARY KEY (`idcavalier`,`idpension`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`idrace`);

--
-- Index pour la table `robe`
--
ALTER TABLE `robe`
  ADD PRIMARY KEY (`idrobe`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cavalerie`
--
ALTER TABLE `cavalerie`
  MODIFY `idcavalerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `cavalier`
--
ALTER TABLE `cavalier`
  MODIFY `idcavalier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idcours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `idevenement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `galop`
--
ALTER TABLE `galop`
  MODIFY `idgalop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `pension`
--
ALTER TABLE `pension`
  MODIFY `idpension` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `idphoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `idrace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `robe`
--
ALTER TABLE `robe`
  MODIFY `idrobe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cavalerie`
--
ALTER TABLE `cavalerie`
  ADD CONSTRAINT `FK_race` FOREIGN KEY (`idrace`) REFERENCES `race` (`idrace`),
  ADD CONSTRAINT `FK_robe` FOREIGN KEY (`idrobe`) REFERENCES `robe` (`idrobe`);

--
-- Contraintes pour la table `cavalier`
--
ALTER TABLE `cavalier`
  ADD CONSTRAINT `FK_galop` FOREIGN KEY (`idgalop`) REFERENCES `galop` (`idgalop`);

--
-- Contraintes pour la table `pension`
--
ALTER TABLE `pension`
  ADD CONSTRAINT `FK_cavalerie2` FOREIGN KEY (`idcavalerie`) REFERENCES `cavalerie` (`idcavalerie`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_cavalerie` FOREIGN KEY (`idcavalerie`) REFERENCES `cavalerie` (`idcavalerie`),
  ADD CONSTRAINT `FK_evenement` FOREIGN KEY (`idevenement`) REFERENCES `evenement` (`idevenement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
