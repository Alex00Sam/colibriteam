-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2019 at 09:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism in latvia`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'R?ga'),
(2, 'Daugavpils'),
(3, 'Jelgava'),
(4, 'J?kabpils'),
(5, 'J?rmala'),
(6, 'Liep?ja'),
(7, 'R?zekne'),
(8, 'Valmiera'),
(9, 'Ventspils'),
(10, 'Aizkraukle'),
(11, 'Jaunjelgava'),
(12, 'P?avi?i'),
(13, 'Koknese'),
(14, 'Nereta'),
(15, 'Skr?veri'),
(16, 'Al?ksne'),
(17, 'Ape'),
(18, 'Balvi'),
(19, 'Vi?aka'),
(20, 'Baltinava'),
(21, 'Rug?ji'),
(22, 'Bauska'),
(23, 'Iecava'),
(24, 'Rund?le'),
(25, 'Vecumnieki'),
(26, 'C?si'),
(27, 'L?gatne'),
(28, 'Amata'),
(29, 'Jaunpiebalga'),
(30, 'Prieku?i'),
(31, 'P?rgauja'),
(32, 'Rauna'),
(33, 'Vecpiebalga'),
(34, 'Daugavpil'),
(35, 'Il?kste'),
(36, 'Dobele'),
(37, 'Auce'),
(38, 'T?rvete'),
(39, 'Gulbene'),
(40, 'Jelgava'),
(41, 'Ozolnieki'),
(42, 'J?kabpil'),
(43, 'Akn?ste'),
(44, 'Vies?te'),
(45, 'Krustpil'),
(46, 'Sala'),
(47, 'Kr?slava'),
(48, 'Dagda'),
(49, 'Aglona'),
(50, 'Kuld?ga'),
(51, 'Skrunda'),
(52, 'Alsunga'),
(53, 'Aizpute'),
(54, 'Durbe'),
(55, 'Grobi?a'),
(56, 'P?vilosta'),
(57, 'Priekule'),
(58, 'N?ca'),
(59, 'Rucava'),
(60, 'Vai?ode'),
(61, 'Limbaži'),
(62, 'Aloja'),
(63, 'Salacgr?va'),
(64, 'Ludza'),
(65, 'K?rsava'),
(66, 'Zilupe'),
(67, 'Cibla'),
(68, 'Madona'),
(69, 'Cesvaine'),
(70, 'Lub?na'),
(71, 'Varak??ni'),
(72, '?rg?i'),
(73, 'Ogre'),
(74, 'Ikš?ile'),
(75, '?egums'),
(76, 'Lielv?rde'),
(77, 'Prei?i'),
(78, 'L?v?ni'),
(79, 'Riebi?i'),
(80, 'V?rkava'),
(81, 'R?zekne'),
(82, 'Vi??ni'),
(83, 'Baldone'),
(84, '?ekava'),
(85, 'Olaine'),
(86, 'Salaspil'),
(87, 'Saulkrasti'),
(88, 'Sigulda'),
(89, 'In?ukalns'),
(90, '?daži'),
(91, 'Bab?te'),
(92, 'Carnikava'),
(93, 'Garkalne'),
(94, 'Krimulda'),
(95, 'M?lpil'),
(96, 'M?rupe'),
(97, 'Ropaži'),
(98, 'S?ja'),
(99, 'Stopi?i'),
(100, 'Saldu'),
(101, 'Broc?ni'),
(102, 'Talsi'),
(103, 'Dundaga'),
(104, 'M?rsrags'),
(105, 'Roja'),
(106, 'Tukums'),
(107, 'Kandava'),
(108, 'Engure'),
(109, 'Jaunpil'),
(110, 'Valka'),
(111, 'Smiltene'),
(112, 'Stren?i'),
(113, 'Koc?ni'),
(114, 'Mazsalaca'),
(115, 'R?jiena'),
(116, 'Bever?na'),
(117, 'Burtnieki'),
(118, 'Naukš?ni'),
(119, 'Ventspil');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `is_favourite` tinyint(1) NOT NULL,
  `cities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `description`, `image`, `is_favourite`, `cities_id`) VALUES
(1, 'Latvijas Nacionālā bibliotēka', 'Latvijas Nacionālā bibliotēka (LNB) ir vispārpieejama universāla zinātniskā bibliotēka, kas dibināta 1919. gada 29. augustā. LNB ir Kultūras ministrijas pārraudzībā esoša nacionālas nozīmes valsts kultūras iestāde. Tās pirmais vadītājs bija ievērojamais bibliotekārs un latviešu zinātniskās bibliogrāfijas pamatlicējs Jānis Misiņš. Pašreizējais bibliotēkas direktors ir Andris Vilks.', 'https://www.lnb.lv/sites/default/files/field/image/img_0173_foto-anete-krumina.jpg', 0, 1),
(2, 'Vecrīga', 'Vecrīga, (apkaimes nosaukums Vecpilsēta) arī Iekšrīga, ir Rīgas pilsētas vissenākā daļa, kā arī apkaime, kuras robežas veido šādu ielu ass līnijas: K. Valdemāra iela, Z. A. Meierovica bulvāris, Aspazijas bulvāris, 13. Janvāra iela un 11. novembra krastmala. Kopš 1967. gada Vecrīga ir valsts aizsargājamā zona, kopš 1983. gada pilsētbūvniecības piemineklis, 1997. gadā Rīgas vēsturisko centru un tostarp Vecrīgu UNESCO iekļāva Pasaules mantojuma sarakstā, bet 2007. gadā, pateicoties Vecrīgas panorāmai un siluetam, Rīga ieguva Eiropas mantojuma zīmi.', 'https://upload.wikimedia.org/wikipedia/lv/a/a5/Riga_Vecpilseta.jpg', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_id` (`cities_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_ibfk_1` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
