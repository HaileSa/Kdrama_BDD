-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 jan. 2024 à 10:17
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kdrama_bdd`
--

CREATE DATABASE IF NOT EXISTS kdrama_bdd;

USE kdrama_bdd;

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nom`, `prenom`) VALUES
(1, 'Cha', 'Eun Woo'),
(2, 'Hwang', 'In Yeop'),
(3, 'Lee', 'Dong Min'),
(4, 'Yoon', 'Joo-hee'),
(5, 'Lee', 'Tae-ri'),
(6, 'Kang', 'Min-ah'),
(8, 'Kim', 'So-hyun'),
(9, 'Song', 'Kang'),
(10, 'Jung', 'Ga-ram'),
(11, 'Go', 'Min-si'),
(12, 'Lee', 'Jae-eun'),
(13, 'Shin', 'Seung-ho'),
(14, 'Park', 'Bo-Young'),
(15, 'Park', 'Hyung-sik'),
(16, 'Ji', 'Soo'),
(17, 'An', 'Woo-yeon'),
(18, 'Im', 'Won-hee'),
(19, 'Ahn', 'Woo-yeon'),
(20, 'Im', 'Soo-hyang'),
(21, 'Park', 'Yoo-na'),
(22, 'Jo', 'Woo-ri'),
(23, 'Kwak', 'Dong-yeon'),
(24, 'Park', 'Joo-mi'),
(25, 'Park', 'Seo-joon'),
(26, 'Kim', 'Da-mi'),
(27, 'Lyon', 'Chris'),
(28, 'Ryu', 'Kyung-soo'),
(29, 'Kwon', 'Nara'),
(30, 'Park', 'Joo-mi'),
(31, 'Lee', 'Joo-young'),
(32, 'Kim', 'Young-dae'),
(33, 'Park', 'Ji-yeon'),
(34, 'Yoo', 'Joon-hong'),
(35, 'Choi', 'Min-ho'),
(36, 'Yoon', 'So-hee'),
(37, 'Jung', 'Chan-bi'),
(38, 'Han', 'Soo-hee'),
(39, 'Ahn', 'Bo-hyun'),
(40, 'Park', 'Hee-soon'),
(41, 'Jeon', 'Hye-jin'),
(42, 'Lee', 'Hak-joo'),
(43, 'Kim', 'Sang-Hoo'),
(44, 'Kim', 'Yu-jeong'),
(45, 'Heo', 'Jeong-do'),
(46, 'Jo', 'Hye-joo'),
(47, 'Lee', 'Sang-yi'),
(48, 'Kim', 'Hae-suk');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `libelle`) VALUES
(1, 'Romance'),
(2, 'Comédie'),
(3, 'Tranche de vie'),
(4, 'Drame'),
(5, 'Fantasy'),
(6, 'Action'),
(7, 'Policier'),
(8, 'Suspense');

-- --------------------------------------------------------

--
-- Structure de la table `kdrama`
--

CREATE TABLE `kdrama` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `nb_episodes` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_Studio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `kdrama`
--

INSERT INTO `kdrama` (`id`, `titre`, `annee`, `nb_episodes`, `description`, `id_Studio`) VALUES
(1, 'True Beauty', 2020, 16, 'Histoire d\'une lycéenne qui cache son apparence derrière un maquillage expert. Sa vie change lorsqu\'elle rencontre deux garçons qui découvrent son secret.', 1),
(2, 'My Demon', 2023, 16, 'Do Do Hee est une héritière d\'un chaebol et l\'ennemie d\'un bon nombre de personnes, dont Jung Koo Won. Ce dernier est un être supérieur aux humains, mais lorsqu\'il perd ses pouvoirs, il doit travailler avec Do Do Hee afin de les récupérer.', 2),
(3, 'Love Alarm', 2019, 14, 'Une application mobile alerte les utilisateurs lorsque quelqu\'un ayant des sentiments amoureux pour eux se trouve à proximité.', 3),
(4, 'Strong Girl Bong Soon', 2017, 16, 'Une jeune femme dotée de super-pouvoirs devient la garde du corps d\'un PDG excentrique et développe des sentiments pour lui.', 4),
(5, 'My ID is Gangnam Beauty', 2018, 16, 'Une étudiante subit une chirurgie plastique pour devenir socialement acceptée, mais découvre que la beauté extérieure ne résout pas tous les problèmes.', 5),
(6, 'Itaewon Class', 2020, 16, 'Basé sur un webtoon, suit un jeune homme qui ouvre un restaurant à Itaewon pour atteindre ses objectifs et défier les normes sociales.', 6),
(7, 'La Traque dans le Sang (Vagabond)', 2019, 16, 'Un cascadeur découvre un complot politique après le crash d\'un avion de ligne et cherche à découvrir la vérité.', 7),
(8, 'My Name', 2021, 8, 'Une femme s\'infiltre dans une organisation criminelle pour venger la mort de son père, un ancien agent secret.', 7);

-- --------------------------------------------------------

--
-- Structure de la table `kdrama_genre`
--

CREATE TABLE `kdrama_genre` (
  `id_KDrama` int(11) NOT NULL,
  `id_Genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `kdrama_genre`
--

INSERT INTO `kdrama_genre` (`id_KDrama`, `id_Genre`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 1),
(2, 2),
(2, 5),
(3, 1),
(3, 4),
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 3),
(6, 4),
(7, 4),
(7, 6),
(8, 4),
(8, 6);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `genre` enum('Féminin','Masculin','Non précisé') NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `id_Acteur` int(11) DEFAULT NULL,
  `id_Kdrama` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `prenom`, `genre`, `role`, `id_Acteur`, `id_Kdrama`) VALUES
(1, 'Lee', 'Suho', 'Masculin', 'Principal', 1, 1),
(2, 'Lim', 'Jugyeong', 'Féminin', 'Principal', 2, 1),
(3, 'Han', 'Seojun', 'Masculin', 'Principal', 3, 1),
(4, 'Kang', 'Soojin', 'Féminin', 'Secondaire', 34, 1),
(5, 'Lim', 'Jisoo', 'Masculin', 'Secondaire', 5, 1),
(6, 'Choi', 'Sua', 'Féminin', 'Secondaire', 6, 1),
(7, 'Kim', 'Jojo', 'Féminin', 'Principal', 43, 2),
(8, 'Hwang', 'Sunoh', 'Masculin', 'Principal', 48, 2),
(9, 'Lee', 'Hye-yeong', 'Masculin', 'Principal', 8, 2),
(10, 'Kim', 'Jojo', 'Féminin', 'Principal', 9, 2),
(11, 'Hwang', 'Sunoh', 'Masculin', 'Principal', 10, 2),
(12, 'Lee', 'Hye-yeong', 'Masculin', 'Principal', 11, 2),
(13, 'Choi', 'Yuk-jo', 'Féminin', 'Secondaire', 12, 3),
(14, 'Park', 'Gul-mi', 'Féminin', 'Secondaire', 13, 3),
(15, 'Go', 'Dae-gi', 'Masculin', 'Secondaire', 14, 3),
(16, 'Do', 'Bong Soon', 'Féminin', 'Principal', 15, 3),
(17, 'Ahn', 'Min Hyuk', 'Masculin', 'Principal', 16, 3),
(18, 'Gook', 'Doo', 'Masculin', 'Principal', 17, 3),
(19, 'Ahn', 'Kyung Hwan', 'Masculin', 'Secondaire', 18, 4),
(20, 'Baek', 'Tak', 'Masculin', 'Secondaire', 19, 4),
(21, 'Hwang', 'Jin Yoo', 'Masculin', 'Secondaire', 33, 4),
(22, 'Kang', 'Mi Rae', 'Féminin', 'Principal', 35, 4),
(23, 'Do', 'Kyung Suk', 'Masculin', 'Principal', 37, 4),
(24, 'Ye', 'Eun', 'Féminin', 'Principal', 39, 4),
(25, 'Hyun', 'Soo Ah', 'Féminin', 'Secondaire', 36, 5),
(26, 'Yeon', 'Woo Young', 'Masculin', 'Secondaire', 38, 5),
(27, 'Na', 'Hae Ri', 'Féminin', 'Secondaire', 40, 5),
(28, 'Park', 'Saeroyi', 'Masculin', 'Principal', 41, 5),
(29, 'Jo', 'Yiseo', 'Féminin', 'Principal', 42, 5),
(30, 'Cho', 'Joonyoung', 'Masculin', 'Principal', 43, 5),
(31, 'Ma', 'Hyrung', 'Masculin', 'Secondaire', 45, 6),
(32, 'Oh', 'Sooah', 'Féminin', 'Secondaire', 44, 6),
(33, 'Kim', 'Tooni', 'Féminin', 'Secondaire', 46, 6),
(34, 'Kim', 'Seojin', 'Masculin', 'Principal', 48, 6),
(35, 'Lee', 'Hana', 'Féminin', 'Principal', 2, 6),
(36, 'Jung', 'Hoon', 'Masculin', 'Principal', 5, 6),
(37, 'Choi', 'Minho', 'Masculin', 'Secondaire', 46, 7),
(38, 'Park', 'Soojin', 'Féminin', 'Secondaire', 12, 7),
(39, 'Yoon', 'Jisoo', 'Masculin', 'Secondaire', 35, 7),
(40, 'Yoon', 'Jiwoo', 'Masculin', 'Principal', 44, 7),
(41, 'Jang', 'Bae', 'Masculin', 'Principal', 45, 7),
(42, 'Cha', 'Gihoon', 'Masculin', 'Principal', 46, 7),
(43, 'Park', 'Chaewon', 'Féminin', 'Secondaire', 47, 8),
(44, 'Kim', 'Soojin', 'Féminin', 'Secondaire', 48, 8),
(45, 'Lee', 'Jisoo', 'Masculin', 'Secondaire', 42, 8),
(46, 'Do', 'Do Hee', 'Féminin', 'Principal', 44, 8),
(47, 'Jeong', 'Gu Won', 'Masculin', 'Principal', 37, 8),
(48, 'Park', 'Bok Gyu', 'Masculin', 'Secondaire', 39, 8),
(49, 'Ju', 'Cheon Suk', 'Féminin', 'Secondaire', 46, NULL),
(50, 'Jin', 'Ga Yeong', 'Féminin', 'Secondaire', 48, NULL),
(51, 'Ju', 'Seok Hun', 'Masculin', 'Secondaire', 22, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `note` int(11) NOT NULL CHECK (`note` >= 1 and `note` <= 5),
  `date` date NOT NULL,
  `id_Utilisateur` int(11) DEFAULT NULL,
  `id_Kdrama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`id`, `note`, `date`, `id_Utilisateur`, `id_Kdrama`) VALUES
(1, 3, '2022-01-24', 2, 4),
(2, 4, '2023-03-25', 2, 1),
(3, 4, '2022-02-19', 4, 6),
(4, 5, '2023-01-24', 1, 2),
(5, 3, '2024-01-23', 3, 3);

--
-- Déclencheurs `review`
--
DELIMITER $$
CREATE TRIGGER `VerifierNote` BEFORE INSERT ON `review` FOR EACH ROW BEGIN
        IF NEW.note < 0 OR NEW.note > 5 THEN SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT
        = "La note doit être comprise entre 1 et 5";
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `studio`
--

CREATE TABLE `studio` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `studio`
--

INSERT INTO `studio` (`id`, `libelle`) VALUES
(1, 'Bon Factory Worldwide'),
(2, 'Studio S'),
(3, 'Studio Dragon'),
(4, 'JS Pictures'),
(5, 'JTBC Studios'),
(6, 'Showbox'),
(7, 'Netflix Originals');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`) VALUES
(1, 'hailou'),
(2, 'romiokaa'),
(3, 'a.nwar'),
(4, 'Isaiou31');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kdrama`
--
ALTER TABLE `kdrama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Studio` (`id_Studio`);

--
-- Index pour la table `kdrama_genre`
--
ALTER TABLE `kdrama_genre`
  ADD PRIMARY KEY (`id_KDrama`,`id_Genre`),
  ADD KEY `id_Genre` (`id_Genre`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Acteur` (`id_Acteur`),
  ADD KEY `id_Kdrama` (`id_Kdrama`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Utilisateur` (`id_Utilisateur`),
  ADD KEY `review_ibfk_2` (`id_Kdrama`);

--
-- Index pour la table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `kdrama`
--
ALTER TABLE `kdrama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `studio`
--
ALTER TABLE `studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `kdrama`
--
ALTER TABLE `kdrama`
  ADD CONSTRAINT `kdrama_ibfk_2` FOREIGN KEY (`id_Studio`) REFERENCES `studio` (`id`);

--
-- Contraintes pour la table `kdrama_genre`
--
ALTER TABLE `kdrama_genre`
  ADD CONSTRAINT `kdrama_genre_ibfk_1` FOREIGN KEY (`id_KDrama`) REFERENCES `kdrama` (`id`),
  ADD CONSTRAINT `kdrama_genre_ibfk_2` FOREIGN KEY (`id_Genre`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD CONSTRAINT `personnage_ibfk_1` FOREIGN KEY (`id_Acteur`) REFERENCES `acteur` (`id`),
  ADD CONSTRAINT `personnage_ibfk_2` FOREIGN KEY (`id_Kdrama`) REFERENCES `kdrama` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_Utilisateur`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`id_Kdrama`) REFERENCES `kdrama` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
