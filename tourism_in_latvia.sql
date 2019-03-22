-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 22 2019 г., 19:10
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tourism in latvia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `edges`
--

CREATE TABLE `edges` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `edges`
--

INSERT INTO `edges` (`id`, `name`, `description`, `image`) VALUES
(1, 'Vidzeme', '', ''),
(2, 'Latgale', '', ''),
(3, 'Kurzeme', '', ''),
(4, 'Zemgale', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `places`
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
-- Дамп данных таблицы `places`
--

INSERT INTO `places` (`id`, `name`, `description`, `image`, `is_favourite`, `cities_id`) VALUES
(1, 'Latvijas Nacionālā bibliotēka', 'Latvijas Nacionālā bibliotēka (LNB) ir vispārpieejama universāla zinātniskā bibliotēka,[1] kas dibināta 1919. gada 29. augustā. LNB ir Kultūras ministrijas pārraudzībā esoša nacionālas nozīmes valsts kultūras iestāde. Tās pirmais vadītājs bija ievērojamais bibliotekārs un latviešu zinātniskās bibliogrāfijas pamatlicējs Jānis Misiņš. Pašreizējais bibliotēkas direktors ir Andris Vilks.', 'https://www.lnb.lv/sites/default/files/field/image/img_0173_foto-anete-krumina.jpg', 1, 1),
(2, 'Vecrīga', 'Vecrīga, (apkaimes nosaukums Vecpilsēta) arī Iekšrīga, ir Rīgas pilsētas vissenākā daļa, kā arī apkaime, kuras robežas veido šādu ielu ass līnijas: K. Valdemāra iela, Z. A. Meierovica bulvāris, Aspazijas bulvāris, 13. Janvāra iela un 11. novembra krastmala.[1] Kopš 1967. gada Vecrīga ir valsts aizsargājamā zona, kopš 1983. gada pilsētbūvniecības piemineklis, 1997. gadā Rīgas vēsturisko centru un tostarp Vecrīgu UNESCO iekļāva Pasaules mantojuma sarakstā, bet 2007. gadā, pateicoties Vecrīgas panorāmai un siluetam, Rīga ieguva Eiropas mantojuma zīmi.', 'https://upload.wikimedia.org/wikipedia/lv/a/a5/Riga_Vecpilseta.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `сities`
--

CREATE TABLE `сities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `image` varchar(40) NOT NULL,
  `edges_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `сities`
--

INSERT INTO `сities` (`id`, `name`, `description`, `image`, `edges_id`) VALUES
(1, 'Riga', '', '', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `edges`
--
ALTER TABLE `edges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_id` (`cities_id`);

--
-- Индексы таблицы `сities`
--
ALTER TABLE `сities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edges_id` (`edges_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `edges`
--
ALTER TABLE `edges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `сities`
--
ALTER TABLE `сities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_ibfk_1` FOREIGN KEY (`cities_id`) REFERENCES `сities` (`id`);

--
-- Ограничения внешнего ключа таблицы `сities`
--
ALTER TABLE `сities`
  ADD CONSTRAINT `сities_ibfk_1` FOREIGN KEY (`edges_id`) REFERENCES `edges` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
