-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2017 at 11:31 
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
  `accroche` text COLLATE utf8_bin NOT NULL,
  `actions_img_alt` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `title`, `actions_category_id`, `content`, `actions_img_name`, `actions_img_description`, `accroche`, `actions_img_alt`) VALUES
(16, 'actiin', 3, 'fzeferf', 'typo.png', '', 'dzefz', '');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `contenu` longtext,
  `date` datetime DEFAULT NULL,
  `articles_category_id` int(11) DEFAULT NULL,
  `accroche` text NOT NULL,
  `articles_img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `articles_category_id`, `accroche`, `articles_img_name`) VALUES
(9, 'Test actualité', 'Texte actualité 1', NULL, 4, 'actualité 1', '');

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newsdate` date NOT NULL,
  `title` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `fromwhere` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newsdate`, `title`, `link`, `fromwhere`) VALUES
(1, '2017-05-11', 'Les stagiaires de Face ont planché hier douze heures sur un projet de solution numérique', 'http://www.lamontagne.fr/moulins/economie/innovation/2017/05/11/les-stagiaires-de-face-ont-planche-hier-douze-heures-sur-un-projet-de-solution-numerique_12397449.html', 'La Montagne'),
(2, '2017-01-23', 'Le club d’entrepreneurs Face territoire bourbonnais a présenté son programme d’actions 2017', 'http://www.lamontagne.fr/moulins/economie/emploi/2017/01/23/le-club-dentrepreneurs-face-territoire-bourbonnais-a-presente-son-programme-dactions-2017_12253076.html', 'La Montagne'),
(3, '2016-09-17', 'Le club d’entrepreneurs FACE veut développer l\'emploi dans le numérique', 'http://www.lamontagne.fr/moulins/economie/2016/09/17/le-club-dentrepreneurs-face-veut-developper-l-emploi-dans-le-numerique_12075130.html', 'La Montagne'),
(4, '2015-06-20', 'Le club Face Territoire bourbonnais a été lancé hier dans les locaux du CNCS', 'http://www.lamontagne.fr/moulins/social/2015/06/20/le-club-face-territoire-bourbonnais-a-ete-lance-hier-dans-les-locaux-du-cncs_11488852.html', 'La Montagne'),
(5, '2015-06-15', 'Lancement à Moulins de la Fondation Agir Contre l’Exclusion', 'http://www.lamontagne.fr/moulins/economie/social/2015/06/18/lancement-a-moulins-de-la-fondation-agir-contre-lexclusion_11485932.html', 'La Montagne'),
(6, '2017-08-23', 'Face lance sa formation boucherie.', '', 'AudeNews'),
(7, '2017-08-02', 'Plein de vélos au gadou, dommage que les cons les lançent', '', 'Gadou03');

-- --------------------------------------------------------

--
-- Table structure for table `presentations`
--

CREATE TABLE `presentations` (
  `presentations_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_paths`
--
ALTER TABLE `img_paths`
  ADD PRIMARY KEY (`img_path_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presentations`
--
ALTER TABLE `presentations`
  ADD PRIMARY KEY (`presentations_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `img_paths`
--
ALTER TABLE `img_paths`
  MODIFY `img_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `presentations`
--
ALTER TABLE `presentations`
  MODIFY `presentations_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
