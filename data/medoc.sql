-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 07 fév. 2024 à 14:22
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wonka`
--

-- --------------------------------------------------------

--
-- Structure de la table `medoc`
--

CREATE TABLE `medoc` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `medoc`
--

INSERT INTO `medoc` (`id`, `nom`, `prix`, `img`, `description`, `genre_id`) VALUES
(1, 'CelluRépare Chocolaté\r\n', 49.99, 'image/adn.jpg', 'Effet : Accélère la régénération cellulaire et favorise la guérison des blessures mineures.\r\n\r\nCe chocolat exquis contient des ingrédients spéciaux qui stimulent la régénération des cellules endommagées, permettant une récupération plus rapide après des blessures ou des maladies.\r\n', 1),
(2, 'ZenBonbon', 45.99, 'image/stresse.jpg', 'Effet : Soulage instantanément le stress et l\'anxiété, procurant une sensation de calme et de relaxation.\r\nCes bonbons fondants libèrent des arômes apaisants et des ingrédients relaxants qui apaisent l\'esprit et détendent le corps en un instant.\r\n', 2),
(3, 'Pilules de Joie Choc-Humeur', 49.99, 'image/joie.jpg', 'Effet : Soulage instantanément le stress et l\'anxiété, procurant une sensation de calme et de relaxation.\r\nCes bonbons fondants libèrent des arômes apaisants et des ingrédients relaxants qui apaisent l\'esprit et détendent le corps en un instant.\r\n', 2),
(4, 'Mâche-Concentre\r\n', 45.99, 'image/chewinggum.jpg', 'Ces chewing-gums délicieux sont infusés d\'extraits de plantes spéciales qui stimulent l\'activité cérébrale, permettant une concentration accrue et une meilleure focalisation.', 2),
(5, 'NuitMiel\r\n', 49.99, 'image/miel.jpg', 'Effet : Induit un sommeil profond et réparateur.\r\nCes pastilles douces au goût de miel sont conçues pour favoriser un sommeil profond et réparateur. Elles apaisent l\'esprit et détendent le corps, permettant un repos de qualité.', 3),
(6, 'Énergie Choco-Boost', 45.99, 'image/tonnerre.jpg', 'Effet : Fournit un regain d\'énergie immédiat et durable.\r\nCette barre de chocolat riche en nutriments fournit un regain d\'énergie instantané grâce à sa formule spéciale à libération rapide. Parfaite pour recharger vos batteries à tout moment de la journée.', 1),
(7, 'Potion Minceur Choc-Métabo', 49.99, 'image/minceur.jpg', 'Effet : Aide à perdre du poids en stimulant le métabolisme.\r\nCette potion sucrée et pétillante stimule le métabolisme et favorise la combustion des graisses, aidant ainsi à perdre du poids de manière saine et naturelle.', 3),
(8, 'Mémo-Drops', 45.99, 'image/memoire.jpg', 'Effet : Améliore la mémoire et la capacité de concentration.\r\nCes pastilles acidulées sont enrichies en nutriments spéciaux qui améliorent la mémoire et la concentration, idéales pour les étudiants et les professionnels soucieux de leurs performances cognitives.', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `medoc`
--
ALTER TABLE `medoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medoc`
--
ALTER TABLE `medoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `medoc`
--
ALTER TABLE `medoc`
  ADD CONSTRAINT `fk_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`idgenre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
