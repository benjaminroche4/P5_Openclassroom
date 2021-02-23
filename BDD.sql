-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 23, 2021 at 10:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blogpost`
--

CREATE TABLE `blogpost` (
                            `id` int(11) NOT NULL,
                            `author_id` int(11) NOT NULL,
                            `title` varchar(255) NOT NULL,
                            `content` text NOT NULL,
                            `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogpost`
--

INSERT INTO `blogpost` (`id`, `author_id`, `title`, `content`, `date`) VALUES
(9, 28, 'Apprendre les bases de la photo ', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br />\r\n<br />\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br />\r\n<br />\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-02-18 13:09:15'),
(10, 28, 'Comment faire de la photo de nuit ? ', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-02-18 13:19:03'),
(11, 28, 'où acheter du materiel photo de qualité ? ', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-02-18 13:19:59'),
(12, 28, 'Les différents types de zoom !', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-02-18 13:20:28'),
(13, 28, 'Comment utiliser et choisir un filtre polarisant ?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\r\n\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', '2021-02-18 13:21:06'),
(14, 28, 'Ceci est un test ', 'tes tt test test test', '2021-02-23 11:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
                           `id` int(11) NOT NULL,
                           `author_id` int(11) NOT NULL,
                           `comment` text NOT NULL,
                           `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                           `blog_id` int(11) NOT NULL,
                           `accept` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `author_id`, `comment`, `date`, `blog_id`, `accept`) VALUES
(23, 33, 'Super article, merci de votre aide !', '2021-02-18 13:23:29', 13, 1),
(24, 33, 'J\'ai acheté moi aussi un nikon, j\'adore cette marque. ', '2021-02-18 13:23:52', 11, 1),
(25, 33, 'Grace à cet article, j\'ai pu m\'améliorer. Encore un grand merci. ', '2021-02-18 13:24:20', 9, 1),
(26, 29, 'J\'ai moi même un filtre polarisant sur mon  appareil. Il m\'est très utile. ', '2021-02-18 13:25:06', 13, 1),
(27, 29, 'Je recommande d\'acheter directement j\'ai un pro.la garantie est mieux que sur internet.', '2021-02-18 13:25:46', 11, 1),
(28, 35, 'Merci de prendre du temps de rédiger de tels articles. Je l\'utilise pour mes photos de paysages.', '2021-02-18 13:26:47', 13, 1),
(29, 35, 'J\'ai un zoom qui permet de voir jusqu\'à très loin moi aussi. J\'adore !!', '2021-02-18 13:27:12', 12, 1),
(30, 28, 'Merci de vos retours. ', '2021-02-18 13:28:48', 12, 1),
(31, 36, 'J\'aodre :)', '2021-02-18 13:45:31', 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(50) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `email`, `date_add`, `role`) VALUES
(28, 'zoe', '$2y$10$Rd2JPWtUtfw8ThMiQ9XtT.8ICex3WTNdMFduiIzLbc3t/SsbYYziC', 'zoe@gmail.com', '2021-02-04 19:43:02', 'ADMIN'),
(29, 'bernard', '$2y$10$6/NE3ZsKNeNkkxUIHjIzoOy112mhGJTJmMdkgMQ51TwrWCpr8Ck3G', 'bernard@gmail.com', '2021-02-04 19:43:18', 'member'),
(30, 'Toto', '$2y$10$z9uSRioF0staGglBMTJCCuIVDLUJClXmlioa2p4xsyiKVgqLEIHFO', 'benjamin.annexe@gmail.com', '2021-02-05 11:02:20', 'member'),
(31, 'rugrunrgnu', '$2y$10$oEOVcGmDFDoBst98wIyFfOc1912HjQtsu6lzC2dcR4hVtoubw9vsm', 'nrggnrgn@gmail.com', '2021-02-12 20:00:01', 'member'),
(32, 'Benji', '$2y$10$GyGDb6qvbBG0Tcu9iqRp.uG0W9KoVL3lNby9DFcOq8ee6IgT6trBW', 'ben@gmail.com', '2021-02-12 20:00:22', 'member'),
(33, 'benjamin', '$2y$10$WRnwFeBpnSlaKrBPf9qHRusXPTLLnIlZMtSLrQCJYHUHTvWYqU71S', 'beji@gmail.com', '2021-02-15 18:36:10', 'member'),
(34, 'ben10', '$2y$10$FxIQ94cB02/WRq/obLqBWeM3TmUUaHhncWqkqPVW/kouwmDvlXy4e', 'buefn@gmail.com', '2021-02-16 13:06:20', 'member'),
(35, 'Elisa', '$2y$10$KCQ9e6JjBey2ec4eN2CRVe71mqW5dmMj.2KXs4SaHlGKAiItcZsYO', 'eloisa@gmail.com', '2021-02-18 13:26:06', 'member'),
(36, 'steven', '$2y$10$uQjquA1ETTfxC5N.giT8s.Rm9CD0IcV1G6BsvdlCcQn58rKVyJJya', 'steven@gmail.com', '2021-02-18 13:45:16', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD CONSTRAINT `blogpost_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blogpost` (`id`);
--
-- Database: `ExpressFood`
--
CREATE DATABASE IF NOT EXISTS `ExpressFood` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ExpressFood`;

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `id_livreur` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `id_livreur`, `id_commande`, `username`, `password`) VALUES
(1, 2, 2, 'Mathieu (Admin)', 'mathmath91'),
(2, 1, 3, 'Mathieu (Admin)', 'mathmath91');

-- --------------------------------------------------------

--
-- Table structure for table `Adresse`
--

CREATE TABLE `Adresse` (
  `id` int(11) NOT NULL,
  `id_utlisateur` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `voie` varchar(40) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Adresse`
--

INSERT INTO `Adresse` (`id`, `id_utlisateur`, `numero`, `rue`, `voie`, `code_postal`, `ville`, `pays`) VALUES
(1, 2, 5, 'Clos des charmilles', '', 74150, 'Rumilly', 'France'),
(2, 3, 12, 'Avenue de l\'Europe', '', 74150, 'Rumilly', 'France'),
(3, 4, 80, 'Boulevard de France', '2', 74150, 'Rumilly', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `Categorie`
--

CREATE TABLE `Categorie` (
                             `id` int(11) NOT NULL,
                             `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Categorie`
--

INSERT INTO `Categorie` (`id`, `nom`) VALUES
(1, 'Plat'),
(2, 'Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
                            `id` int(11) NOT NULL,
                            `id_utlisateur` int(11) NOT NULL,
                            `id_adresse` int(11) NOT NULL,
                            `id_infoCommande` int(11) NOT NULL,
                            `prix_total` decimal(5,2) NOT NULL,
                            `date_heure` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `id_utlisateur`, `id_adresse`, `id_infoCommande`, `prix_total`, `date_heure`) VALUES
(1, 2, 2, 1, '41.20', '2020-12-16 11:18:12'),
(2, 3, 3, 2, '19.80', '2020-12-16 14:14:14'),
(3, 4, 3, 3, '26.70', '2020-12-16 14:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `infoCommande`
--

CREATE TABLE `infoCommande` (
                                `id` int(11) NOT NULL,
                                `id_adresse` int(11) NOT NULL,
                                `quantite_plat_1` int(11) NOT NULL,
                                `quantite_plat_2` int(11) NOT NULL,
                                `quantite_dessert_1` int(11) NOT NULL,
                                `quantite_dessert_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infoCommande`
--

INSERT INTO `infoCommande` (`id`, `id_adresse`, `quantite_plat_1`, `quantite_plat_2`, `quantite_dessert_1`, `quantite_dessert_2`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 1, 0, 1, 0),
(3, 3, 1, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Livreur`
--

CREATE TABLE `Livreur` (
                           `id` int(11) NOT NULL,
                           `username` varchar(40) NOT NULL,
                           `password` varchar(75) NOT NULL,
                           `lattitude` decimal(8,6) NOT NULL,
                           `longitude` decimal(8,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Livreur`
--

INSERT INTO `Livreur` (`id`, `username`, `password`, `lattitude`, `longitude`) VALUES
(1, 'Pierre Le Livreur', 'pierrepierre91', '41.242028', '81.242028'),
(2, 'Armand Le Livreur Rapide', 'armandarmand9012', '51.242028', '21.242028');

-- --------------------------------------------------------

--
-- Table structure for table `Produits`
--

CREATE TABLE `Produits` (
                            `id` int(11) NOT NULL,
                            `id_categorie` int(11) NOT NULL,
                            `titre` varchar(100) NOT NULL,
                            `description` text NOT NULL,
                            `prix` decimal(4,2) NOT NULL,
                            `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                            `info_sup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Produits`
--

INSERT INTO `Produits` (`id`, `id_categorie`, `titre`, `description`, `prix`, `date_creation`, `info_sup`) VALUES
(1, 1, 'Filet mignon à la moutarde', 'Dégustez ce délicieux plat de fin d\'année.', '12.90', '2020-12-15 17:25:55', 'Plat 1'),
(4, 1, 'Lasagnes au boeuf', 'La meilleure recette faite par un chef expérimenté.', '14.50', '2020-12-16 11:23:35', 'Plat 2'),
(5, 2, 'Tiramisu chocolat blanc', 'Vous allez succomber. 120g.', '6.90', '2020-12-16 11:23:35', 'Dessert 1 '),
(6, 2, 'Mousse au chocolat', 'Onctueuse et crémeuse. 170g.', '6.90', '2020-12-16 11:26:45', 'Dessert 2');

-- --------------------------------------------------------

--
-- Table structure for table `stautCommande`
--

CREATE TABLE `stautCommande` (
  `id` int(11) NOT NULL,
  `statut_cmd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stautCommande`
--

INSERT INTO `stautCommande` (`id`, `statut_cmd`) VALUES
(1, 'Livré'),
(2, 'En cours de livraison'),
(3, 'Commande annulée');

-- --------------------------------------------------------

--
-- Table structure for table `stautLivreur`
--

CREATE TABLE `stautLivreur` (
  `id` int(11) NOT NULL,
  `id_livreur` int(11) NOT NULL,
  `statut` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stautLivreur`
--

INSERT INTO `stautLivreur` (`id`, `id_livreur`, `statut`) VALUES
(1, 1, 'Libre'),
(2, 1, 'En cours de livraison');

-- --------------------------------------------------------

--
-- Table structure for table `stockLivreur`
--

CREATE TABLE `stockLivreur` (
  `id` int(11) NOT NULL,
  `id_livreur` int(11) NOT NULL,
  `stock_plat_1` int(11) NOT NULL,
  `stock_plat_2` int(11) NOT NULL,
  `stock_dessert_1` int(11) NOT NULL,
  `stock_dessert_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stockLivreur`
--

INSERT INTO `stockLivreur` (`id`, `id_livreur`, `stock_plat_1`, `stock_plat_2`, `stock_dessert_1`, `stock_dessert_2`) VALUES
(2, 1, 4, 5, 6, 3),
(3, 2, 2, 8, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `utlisateur`
--

CREATE TABLE `utlisateur` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(75) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_creation_compte` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utlisateur`
--

INSERT INTO `utlisateur` (`id`, `username`, `password`, `email`, `phone`, `nom`, `prenom`, `date_creation_compte`) VALUES
(2, 'Benjamin74', 'monsupermotdepasse', 'benjamin@gmail.com', '0689233489', 'Roche', 'Benjamin', '2020-12-15 16:53:27'),
(3, 'Laura_01', 'laulau2212', 'laura.era@gmail.com', '0634273462', 'Era', 'Laura', '2020-12-16 11:01:21'),
(4, 'FrançoisM', 'jaimelesbonspetitsplats', 'françois.commande@gmail.com', '0627389123', 'Depuis', 'François', '2020-12-16 11:04:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livreur` (`id_livreur`),
  ADD KEY `id_commande` (`id_commande`);

--
-- Indexes for table `Adresse`
--
ALTER TABLE `Adresse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utlisateur` (`id_utlisateur`);

--
-- Indexes for table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utlisateur` (`id_utlisateur`),
  ADD KEY `id_adresse` (`id_adresse`),
  ADD KEY `id_infoCommande` (`id_infoCommande`);

--
-- Indexes for table `infoCommande`
--
ALTER TABLE `infoCommande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_adresse` (`id_adresse`);

--
-- Indexes for table `Livreur`
--
ALTER TABLE `Livreur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Produits`
--
ALTER TABLE `Produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Indexes for table `stautCommande`
--
ALTER TABLE `stautCommande`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stautLivreur`
--
ALTER TABLE `stautLivreur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livreur` (`id_livreur`);

--
-- Indexes for table `stockLivreur`
--
ALTER TABLE `stockLivreur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livreur` (`id_livreur`);

--
-- Indexes for table `utlisateur`
--
ALTER TABLE `utlisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Adresse`
--
ALTER TABLE `Adresse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `infoCommande`
--
ALTER TABLE `infoCommande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Livreur`
--
ALTER TABLE `Livreur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Produits`
--
ALTER TABLE `Produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stautCommande`
--
ALTER TABLE `stautCommande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stautLivreur`
--
ALTER TABLE `stautLivreur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stockLivreur`
--
ALTER TABLE `stockLivreur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `utlisateur`
--
ALTER TABLE `utlisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_livreur`) REFERENCES `Livreur` (`id`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`);

--
-- Constraints for table `Adresse`
--
ALTER TABLE `Adresse`
  ADD CONSTRAINT `adresse_ibfk_1` FOREIGN KEY (`id_utlisateur`) REFERENCES `utlisateur` (`id`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_utlisateur`) REFERENCES `utlisateur` (`id`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`id_adresse`) REFERENCES `Adresse` (`id`),
  ADD CONSTRAINT `commande_ibfk_3` FOREIGN KEY (`id_infoCommande`) REFERENCES `infoCommande` (`id`);

--
-- Constraints for table `infoCommande`
--
ALTER TABLE `infoCommande`
  ADD CONSTRAINT `infocommande_ibfk_1` FOREIGN KEY (`id_adresse`) REFERENCES `Adresse` (`id`);

--
-- Constraints for table `Produits`
--
ALTER TABLE `Produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `Categorie` (`id`);

--
-- Constraints for table `stautLivreur`
--
ALTER TABLE `stautLivreur`
  ADD CONSTRAINT `stautlivreur_ibfk_1` FOREIGN KEY (`id_livreur`) REFERENCES `Livreur` (`id`);

--
-- Constraints for table `stockLivreur`
--
ALTER TABLE `stockLivreur`
  ADD CONSTRAINT `stocklivreur_ibfk_1` FOREIGN KEY (`id_livreur`) REFERENCES `Livreur` (`id`);
--
-- Database: `kh_01`
--
CREATE DATABASE IF NOT EXISTS `kh_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kh_01`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `msg` text NOT NULL,
  `date_msg` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `msg`, `date_msg`) VALUES
(20, '12345 test test', '12345 test test', '2020-10-07 10:40:59'),
(21, 'eeeeeeee', 'eeeeeeeeee', '2020-10-07 11:42:59'),
(22, 'efeffefe', 'ffeeefeffefe', '2020-10-08 12:43:28'),
(23, 'fffffeeee', 'ffeeeeeee', '2020-10-08 15:38:43'),
(24, 'Tes test rer', 'rinvpsnpnpnpn', '2020-10-08 16:08:48'),
(25, 'jnjnjjnjnjnjnnjnjnnnj', 'iiji^n^nmlnmlnnn l', '2020-10-08 16:09:24'),
(26, 'dsvkdsvnsn', 'dsnvnqpjnfpfns', '2020-10-08 16:09:34'),
(27, 'fzzefzeffez', 'zfefezzefzezfe', '2020-10-08 16:22:21'),
(28, 'RRRRRRR', 'RRRRRRR', '2020-10-12 19:17:10'),
(29, 'eeeeeee', 'eeeeeeee', '2020-10-13 21:40:14'),
(30, 'hvh hv sv', 'vv jjv. ezivninv', '2020-10-13 22:19:17'),
(31, 'BENEBENBEN', 'BENEBENEBBENEN', '2020-10-28 17:24:31'),
(32, 'BENEBENBEN', 'BENEBENEBBENEN', '2020-10-28 17:25:58'),
(33, 'BENEBENBEN', 'BENEBENEBBENEN', '2020-10-28 17:26:00'),
(34, 'TEST DU JOUR', 'TEST DU JOURRRR', '2020-10-28 17:26:09'),
(35, 'TEST 12 ', 'TEST 12', '2020-10-30 11:26:41'),
(36, 'eeeeee', 'eeeee', '2020-10-30 11:27:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
