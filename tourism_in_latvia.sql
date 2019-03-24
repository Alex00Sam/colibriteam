-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 03:37 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

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
  `name` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `description`, `image`, `is_favourite`, `cities_id`) VALUES
(1, 'Latvijas Nacionālā bibliotēka', 'Latvijas Nacionālā bibliotēka (LNB) ir vispārpieejama universāla zinātniskā bibliotēka, kas dibināta 1919. gada 29. augustā. LNB ir Kultūras ministrijas pārraudzībā esoša nacionālas nozīmes valsts kultūras iestāde. Tās pirmais vadītājs bija ievērojamais bibliotekārs un latviešu zinātniskās bibliogrāfijas pamatlicējs Jānis Misiņš. Pašreizējais bibliotēkas direktors ir Andris Vilks.', 'https://www.lnb.lv/sites/default/files/field/image/img_0173_foto-anete-krumina.jpg', 1, 1),
(2, 'Vecrīga', 'Vecrīga, (apkaimes nosaukums Vecpilsēta) arī Iekšrīga, ir Rīgas pilsētas vissenākā daļa, kā arī apkaime, kuras robežas veido šādu ielu ass līnijas: K. Valdemāra iela, Z. A. Meierovica bulvāris, Aspazijas bulvāris, 13. Janvāra iela un 11. novembra krastmala. Kopš 1967. gada Vecrīga ir valsts aizsargājamā zona, kopš 1983. gada pilsētbūvniecības piemineklis, 1997. gadā Rīgas vēsturisko centru un tostarp Vecrīgu UNESCO iekļāva Pasaules mantojuma sarakstā, bet 2007. gadā, pateicoties Vecrīgas panorāmai un siluetam, Rīga ieguva Eiropas mantojuma zīmi.', 'https://upload.wikimedia.org/wikipedia/lv/a/a5/Riga_Vecpilseta.jpg', 0, 1),
(3, 'Daugavpils novadpētniecības un mākslas muzejs', 'Daugavpils Novadpētniecības un mākslas muzejs ir viens no vecākajiem un lielākajiem muzejiem Latgalē. Tas dibināts 1938.gadā. Atrodas vienā no skaistākajām pilsētas ēkām – 1883.gadā jūgendstilā celtajā ēkā, kura ir kultūrvēsturisks arhitektūras piemineklis.', 'https://media-cdn.tripadvisor.com/media/photo-o/09/bb/f7/9e/caption.jpg', 0, 2),
(4, 'Tramvaju satiksme Daugavpilī', 'Tramvaju satiksme Daugavpilī ir viens no sabiedriskā transporta veidiem Daugavpils pilsētā, Latvijā. To ar tramvajiem nodrošina AS \"Daugavpils satiksme\", bet līdz 2013. gada 31. decembrim to nodrošināja AS \"Tramvaju uzņēmums\" (zināms arī kā \"Daugavpils Tramvaju uzņēmums\").[1] Tramvaju satiksme tiek nodrošināta pa 3 maršrutiem, kuru kopgarums ir 27 km. AS \"Daugavpils satiksme\" rīcībā ir 39 tramvaju pasažieru vagoni + 5 dienesta vagoni, regulārā ekspluatācijā atrodas 38 pasažieru vagoni. Daugavpilī ir 2 tramvaju depo, viens - Jātnieku ielā (reizē tas ir arī g/p \"Butļerova iela\" 1. un 2. maršrutam), kur mūsdienās bāzēta lielākā daļa vagonu, bet otrs - 18. novembra ielā. Braukšanas maksa Daugavpils tramvajā ir 0,43 EUR darbdienās un sestdienās un 0,21 EUR svētdienās un svētku dienās. Tramvaja sliežu platums ir 1524 mm.', 'https://upload.wikimedia.org/wikipedia/lv/b/bd/Daugavpils_tramvajs.jpg', 0, 2),
(5, 'Atpūtas parks Silene', 'Šī vieta ir populāra Daugavpils viesiem, jo ​​šeit daba apvienojas ar modernu dizainu un pat tehnoloģiju. Lai nāktu kopā ar visu ģimeni, jāiet ienirt miera atmosfērā, būt tuvu rezervuāram, staigāt mežā.', 'https://ru.fenikssfun.com/cache/images/837085915/park-otdyha-silene_513392143.jpg', 0, 2),
(6, 'Jelgavas pils', 'Jelgavas pils ir lielākais arhitektūras piemineklis Baltijas valstīs, tas ir viens no nozīmīgākajiem agrīnā perioda darbiem, ko izcīnījis Itālijas Krievijas tiesas arhitekts Frančesko Bartolomeo Rastrelli, kā arī viens no retajiem arhitektūras pieminekļiem Jelgavā, kas saglabājušies līdz mūsdienām.', 'https://visit.jelgava.lv/media/k2/galleries/83/jelgavas_pils11.jpg', 0, 3),
(7, 'Jelgavas Ledus halle', 'Ar sporta kompleksa „Zemgale” svinīgo atklāšanu, 2001. gada 31. augustā, iesākās jauns posms Jelgavas sporta dzīvē.\r\nLedushalle jelgavniekiem piedāvā dažādas jaunas iespējas, ko līdz halles tapšanas brīdim liedza siltās ziemas un šāda kompleksa neesamība.\r\nŠobrīd, kad pilnā sparā tiek aizvadīta nu jau četrpadsmitā sezona, Jelgavā acīmredzami ir atdzimis tāds sporta veids kā hokejs, kura noriets savu kulmināciju sasniedza pagājušā gadsimta deviņdesmito gadu sākumā.\r\nLedus hallē Jelgavā savus ikdienas treniņus aizvada Jelgavas virslīgas Hokeja Klubs „Zemgale/LLU”, Jelgavas Ledus sporta skolas hokejisti, kuru kopskaits tuvojas četriem simtiem, kupli apmeklētās dažādu vecumu daiļslidošanas grupas, kā arī šorttrekisti.', 'http://www.zz.lv/uploads/thumbnails/680x455/articles/2017/09/231117__59ad0d7ca0f01.jpg.jpg', 0, 3),
(8, 'Latvijas dzelzceļa vēstures muzeja Jelgavas izstāde', 'Latvijas Dzelzceļa vēstures muzeja ekspozīcija, kas aprīkota 1904. gadā uzceltajā dzelzceļa darbinieku dzīvojamā ēkā, ļauj ne tikai uzzināt par vienu no vecākajiem un nozīmīgākajiem dzelzceļa mezgliem Latvijā, bet arī izjust, cik daudz dzelzceļa attīstība ietekmē cilvēka dzīvi un iepazīstieties ar vairākām lietām, bez kurām darbs pie dzelzceļa ir neiespējams.', 'https://visit.jelgava.lv/media/k2/galleries/132/dz_c__muzejs01.jpg', 0, 3),
(9, 'Meža parks', 'Jēkabpils Mežaparks ir stādīts 1966.gadā, lai pasargātu pilsētu no dolomītu karjera izstrādes putekļiem. Kad 1987.gadā izmantotie karjeri 158 ha platībā tika appludināti, pilsētas tuvumā izveidojās atpūtas vieta. Šodien Mežaparks ikdienā kalpo par lielisku vietu fiziskām aktivitātēm un veselīga dzīvesveida stiprināšanai.', 'https://www.jekabpils.lv/sites/default/files/styles/resize_1600/public/tic-objekts/475-meza-parks/mezaparks-1-1.jpg?itok=t-yZSHUd', 0, 4),
(10, 'Krustpils pils', 'Iebraucot Jēkabpilī, noteikti nepabrauksiet garām Krustpils pilij, kas kopš 13. gadsimta uzticīgi pārrauga Daugavas krastus.\r\n\r\nKrustpils pils ir viena no senākajām Latvijas pilīm. 1237. gadā Krustpils pili licis uzbūvēt Rīgas arhibīskaps Nikolajs de Magdeburgs kā nocietinājumu ceļā no Rīgas uz Daugavpili.', 'https://media-cdn.tripadvisor.com/media/photo-i/13/ed/d0/be/jekabpils-history-museum.jpg', 0, 4),
(11, 'Celpils ordeņa pils', 'Pirmās Selpils pils piemiņas vietas pieder 13. gadsimta sākumā. Vācieši un lietuvieši, kas uzbruka koka pils, piespieda ciemus atstāt apdzīvotās vietas. Vecā ēka tika iznīcināta, tās vietā uzcelta jauna akmens pils. Lai gan šie vēsturiskie dati ir pretrunā hronikām, kas nosaka, ka vecā pils nebija iznīcināta, bet rīkojums to aktīvi izmantoja.Pēc V.Hermanas hronikām, 1373. gadā notika akmens pils būvniecība. Arhitektūras struktūra, kas uzcelta trīs posmos, sastāvēja no divām daļām.', 'http://discoveric.ru/tmp/upload/record/3354/w_3354-1.jpg', 0, 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
