-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3308
-- Время создания: Дек 25 2024 г., 22:28
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `culturalExchange`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `token` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `token`) VALUES
(18, 'vasya', 'vas11111ya1234', 'ddb30680a691d157187ee1cf9e896d03', '4e80b29d32980477eedeb6d4f1714c09'),
(20, 'tanya', 'tanyaya1234', 'ddb30680a691d157187ee1cf9e896d03', '257e8c3cb0ee2ca32a5a731bb0a04af8'),
(21, '111vasya', 'vas221ya1234', 'ddb30680a691d157187ee1cf9e896d03', 'cc5c145795d27e0de07d40bd998e2cdc'),
(22, 'faf', 'email1', '202cb962ac59075b964b07152d234b70', '2697003baa86d1766b4952567e190125'),
(23, 'vasya', 'vasya1234', 'ddb30680a691d157187ee1cf9e896d03', '9976af7e0e010c6810573c2e56da0787'),
(24, 'roman228', 'roma@yandex.ru', '202cb962ac59075b964b07152d234b70', '908a162ba95a5913fbf77f5ffb8904a3'),
(49, 'dexter2244dd', 'vladvanniddfdffkovfg@gmail.com', 'cff2d299504ef64098a2361666196108', '7c49eee29e3e648fb719604cdbee968e'),
(51, 'dexterrr', 'joker228@bk.ru', 'cff2d299504ef64098a2361666196108', 'd470a9c5d6ebc6166ffa60d554295656'),
(52, 'dsfsdfsd', 'sdfsdfsd', 'd58e3582afa99040e27b92b13c8f2280', '359b362aab561df85211821fe1fdd74b'),
(53, 'kitten228', 'vlad.bannikov.2018@bk.ru', 'cff2d299504ef64098a2361666196108', 'a45fe94f6a1c449241a85a5da8e6bcbf'),
(54, '1234567', 'move742@mail.ru', 'cff2d299504ef64098a2361666196108', 'f6e963646b1fe30a3f2f443bc1e5d772'),
(55, 'dsa', 'daddd', 'a8f5f167f44f4964e6c998dee827110c', '89b95ef9ae7dd487ce3e2ba3c1eb340d'),
(56, 'dsa2222', 'daddd23', 'a8f5f167f44f4964e6c998dee827110c', 'e1d59d2c4bf6ad1fe8ec13a3784818d6'),
(57, 'littleKitty2003', 'littleKitty2003@mail.ru', 'cff2d299504ef64098a2361666196108', '4d4748e14ed7add59ce9714b245187eb'),
(58, 'Humour224', 'vladvannikov@gmail.com', 'cff2d299504ef64098a2361666196108', 'f6488a4faf98232d5fb830b19abc37b7'),
(59, '', 'undefined', 'd41d8cd98f00b204e9800998ecf8427e', '0edabdb6f3764c8b55f5d0d7bc48392e'),
(60, 'vasya999', 'vlad.kannikov.333@bk.ru', 'cff2d299504ef64098a2361666196108', '2e8fcc1afcb5eec22bb29ba9056e4519'),
(61, 'littleKitty', 'littleKitty@mail.ru', 'cff2d299504ef64098a2361666196108', 'ff674db2886a2410eae407fded74fe96'),
(62, 'vlad', 'vlad.bannikov@bk.ru', 'cff2d299504ef64098a2361666196108', '36db19f813ec18d9ca0a6ab5e1323a87'),
(63, 'vladikssss', 'vladbannikov@bk.ru', 'cff2d299504ef64098a2361666196108', 'd618666c3754c8f43957e653eb69a4fe'),
(64, 'missKitten43', 'missKitten43@gmail.com', 'cff2d299504ef64098a2361666196108', 'c68f41794c8a9a271f349c15fa7e2006'),
(65, 'hyper2222224444', 'dfdf@gmail.com', 'f4ed4c3d7decf61fc0c73393612b0e79', '20c86b09419dd345515fce0633795c0c'),
(66, 'vlad.bannikov.2018@joke.ru', '552478Hyper.', '2898d988ff80caff235fec377e4e62c6', '3ea3904d6b7c195e8e87e736856246a9'),
(67, 'hren224', 'hrenchik224@gmail.com', '3147da8ab4a0437c15ef51a5cc7f2dc4', '7be25e9df69712a2890bcce712a32921'),
(68, 'hren224', 'hrenchik224@gmaidl.com', '3147da8ab4a0437c15ef51a5cc7f2dc4', 'e9d1672de6d9dc75810485220030ffb0'),
(69, 'tigra224@gmail.com', '552478Tigra.', 'f4c34d3daab2e3abaa0449ad7336e624', 'e382bed6e55f904b4721627312ac75a3'),
(70, 'tira224@gmail.com', '552478Joker..', '21a8c933a413223045b69495bbda9d8a', '2277a6fc5c93d0c2d42bc2d07deac561'),
(71, 'phantomAssasin@gmail.com', '552478Phantom.', '7ea174a4eb31ac16142fea7e25dd0980', 'e9e07d53992535076a780408d402132d'),
(72, 'glitteR22', 'glitter22@gmail.com', 'a22d8ba02521180ff8977a3d6741dba4', '6dc474ba3e3e5d9552c4d359b6b95173'),
(73, 'murkaA224', 'murka224@gmail.com', 'f5406886cc8f10e1e741ad0495d9a8a9', 'ff3c2ce384deb92199e38d1c479621bf'),
(74, 'murkaD224', 'murkaA224@gmail.com', '193fabfe0e090fa39688b3895575e19f', 'd41ce19dde5a1ec1634f0364ef2e2ad3'),
(75, 'vovkovV22', 'vovkov222@gmail.com', '3adaceccdbdc9076b6dad5335b4f8e79', 'ad927f585207e27c9355131c2b9e2180');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
