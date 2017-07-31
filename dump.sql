-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2017 at 07:43 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dump`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `actions_category_id` int(250) NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `actions_img_name` varchar(250) COLLATE utf8_bin NOT NULL,
  `actions_img_description` varchar(250) COLLATE utf8_bin NOT NULL,
  `accroche` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `title`, `actions_category_id`, `content`, `actions_img_name`, `actions_img_description`, `accroche`) VALUES
(1, 'CV vidéo', 3, 'La première action engagée par Face territoire bourbonnais suit cette logique : la réalisation de CV vidéo « pour améliorer les chances de taper dans l\'œil d\'un recruteur, alors que ceux-ci reçoivent aujourd\'hui un grand nombre de CV papier et de lettres de motivation, parfois stéréotypées », explique Eric Getenay, directeur opérationnel (en bénévolat de compétence) du club.', '', '', '0'),
(2, 'action deux', 5, 'de', '', '', '0'),
(3, 'action deux', 5, 'de5k', '', '', '0'),
(6, 'CV vidéo', 3, 'La première action engagée par Face territoire bourbonnais suit cette logique : la réalisation de CV vidéo « pour améliorer les chances de taper dans l\'œil d\'un recruteur, alors que ceux-ci reçoivent aujourd\'hui un grand nombre de CV papier et de lettres de motivation, parfois stéréotypées », explique Eric Getenay, directeur opérationnel (en bénévolat de compétence) du club.', '', '', '0'),
(7, 'civigaz', 5, 'on civigaz', 'AE.png', 'Logo ', 'ça gaz!');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `contenu` longtext,
  `date` datetime DEFAULT NULL,
  `articles_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `articles_category_id`) VALUES
(2, 'ce site n\'a aucun contenu', 'videvide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide  ', NULL, 2),
(3, 'Le contenu, un aspect essentiel du site internet?', 'On pense souvent à tord que le contenu d\'un site est primordial. C\'est faux! La majorité des gens sont très cons privilégiez donc des images choc à un contenu argumenté.', NULL, 2),
(4, 'Formation de merde.', 'Je prie face de bien vouloir arrêter de nous casser les couilles avec un putain de site sans contenu!', NULL, NULL),
(6, 'Chat errant', 'aider les chats errants! faites un don  face', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `contentType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `titre`, `contentType`) VALUES
(1, 'aucun contenu correspondant', 'void'),
(2, 'Catégorie 2', 'posts'),
(3, 'Aide au retour à l\'emploi', 'actions'),
(4, 'Catégorie 2', 'posts'),
(5, 'Energie', 'actions');

-- --------------------------------------------------------

--
-- Table structure for table `img_paths`
--

CREATE TABLE `img_paths` (
  `img_path_id` int(11) NOT NULL,
  `img_path` varchar(250) NOT NULL,
  `img_page` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `img_paths`
--

INSERT INTO `img_paths` (`img_path_id`, `img_path`, `img_page`) VALUES
(1, '../public/img/actions/', 'actions');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_paths`
--
ALTER TABLE `img_paths`
  ADD PRIMARY KEY (`img_path_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `img_paths`
--
ALTER TABLE `img_paths`
  MODIFY `img_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
