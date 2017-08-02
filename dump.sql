-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2017 at 05:31 
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
(1, 'CV vidéo', 3, 'La première action engagée par Face territoire bourbonnais suit cette logique : la réalisation de CV vidéo « pour améliorer les chances de taper dans l\'œil d\'un recruteur, alors que ceux-ci reçoivent aujourd\'hui un grand nombre de CV papier et de lettres de motivation, parfois stéréotypées », explique Eric Getenay, directeur opérationnel (en bénévolat de compétence) du club.', 'petitvelorouge.png', '', 'Face s\'engage dans la lutte pour l\'accès à l\'emploi avec le financement du tournage et montage de cv vidéos!'),
(7, 'civigaz', 5, 'Ce programme ambitieux débute en janvier 2016 dans trois zones pilotes -  Métropole Européenne de Lille, Saint-Etienne et Paris, et sera ensuite étendu au niveau national sur une vingtaine de sites à partir de septembre 2016. En trois ans, CIVIGAZ prévoit d’accueillir 660 jeunes volontaires âgés de 18 à 25 ans. Leur mission, d’une durée de 7 mois, consiste à sensibiliser les ménages modestes sur les différentes façons d’économiser l’énergie, la prévention des fuites de gaz et la qualité de l’air intérieur. CIVIGAZ a l’ambition de sensibiliser 100 000 foyers en situation de précarité énergétique en travaillant avec les collectivités et les bailleurs.\r\n\r\n« L’engagement de GRDF dans le programme CIVIGAZ des services civiques de la transition énergétique s’inscrit pleinement dans nos missions de service public ; dans les 3 années qui viennent, plus de 600 jeunes volontaires vont nous accompagner dans la sensibilisation de nos clients en situation de précarité énergétique, à la fois sur les gestes simples qui permettent de mieux comprendre et maîtriser sa consommation d’énergie et sur les recommandations en matière de sécurité. » Edouard Sauvage, Directeur Général de GRDF.\r\n\r\n« Les jeunes volontaires CIVIGAZ sont le premier maillon de la chaîne de détection de la précarité énergétique. Leur rôle est indispensable pour identifier ses causes (mauvaises conditions d’habitat, faibles revenus, hausse du prix de l’énergie…) et mettre les locataires et les propriétaires des logements en relation avec les interlocuteurs adaptés à leurs problématiques. Cette démarche contribue à rendre les jeunes volontaires acteurs de la transition énergétique, tout en leur permettant de bénéficier d’une formation, d’un suivi personnalisé et d’un accompagnement vers l’emploi pendant et après leur mission de Service Civique avec le concours de GRDF et en lien avec Unis-Cité. Ce partenariat est exemplaire et doit préfigurer d’autres coopérations avec des entreprises afin que le Service Civique se développe fortement dans le cadre des conditions fixées par l’Agence du Service Civique. » Vincent Baholet, Délégué général de FACE.\r\n\r\nCIVIGAZ en quelques chiffres :\r\n\r\n    660 volontaires de 18 à 25 ans\r\n\r\n    100 000 logements visités en 3 ans\r\n\r\n    3 villes pilotes : Lille, Saint-Etienne, Paris\r\n\r\n    Lancement national en septembre 2016\r\n\r\nlogo GRDF\r\nService Presse grdf-nat-presse@grdf.fr 01 71 19 18 11\r\nRetour\r\nTéléchargerle communiqué de presse\r\n\r\n    Communiqués de presse\r\n    Dossiers GRDF\r\n    Publications\r\n    Les actualités\r\n    Modules\r\n    Applications\r\n    Vidéos\r\n    Infographies\r\n\r\nSuivez-nous\r\n\r\n    Nous suivre sur Facebook (nouvelle fenêtre) Nous suivre sur Twitter (nouvelle fenêtre) Nous suivre sur Youtube (nouvelle fenêtre) Suivre le blog GRDF (nouvelle fenêtre) Nous suivre sur Linkedin (nouvelle fenêtre) \r\n\r\n', 'AE.png', 'Logo ', 'Faciliter l\'accès aux gaz aux plus démunis leur c\'est notre mission. Avec civigaz, ça gaz!'),
(8, 'Formation boucherie', 3, 'Face lance sa formation boucherie!', 'Screenshot from 2017-04-13 21-11-54.png', '', 'Un bon boucher est payé plus de 5000 euros par mois, malheureusement ces derniers sont rares.'),
(9, 'Café d\'en face', 3, 'Tous les mois à l\'intermittant ', 'Article presse du 17-09-2016.jpg', '', 'Petit cercle de jeunes et de moins jeunes auquel nous aurions dû être invités.'),
(12, 'CV vidéo', 3, 'La première action engagée par Face territoire bourbonnais suit cette logique : la réalisation de CV vidéo « pour améliorer les chances de taper dans l\'œil d\'un recruteur, alors que ceux-ci reçoivent aujourd\'hui un grand nombre de CV papier et de lettres de motivation, parfois stéréotypées », explique Eric Getenay, directeur opérationnel (en bénévolat de compétence) du club.', 'montivelobleuu.jpg', '', 'Face s\'engage dans la lutte pour l\'accès à l\'emploi avec le financement du tournage et montage de cv vidéos!'),
(13, 'Oh Tsuki', 5, 'le petit tsuki', '', '', 'Mon tsuki '),
(14, 'Il y avait un vieux peugot, un peu pourri', 5, '', '', '', 'Le vélo peugeot contrairement à son homologue à quatres roues n\'est pas une grosse merde, loin de là.');

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
  `accroche` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `articles_category_id`, `accroche`) VALUES
(2, 'ce site n\'a aucun contenu pour le moment', 'videvide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide vide  ', NULL, 2, ''),
(3, 'Le contenu, un aspect essentiel du site internet?', 'On pense souvent à tort que le contenu d\'un site est primordial. C\'est faux! La majorité des gens sont très cons privilégiez donc des images choc à un contenu argumenté.', NULL, 2, ''),
(6, 'Chat errant', 'aider les chats errants! faites un don  face', NULL, 2, ''),
(8, 'test accroche', 'djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn djfnhfzeçjn ', NULL, 5, 'je suis une accroche bidon qui a honte d\'elle même. Vite du vrai contenu par pitié que je puisse disparaître.');

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
