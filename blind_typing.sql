-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 13 2023 г., 19:43
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
-- База данных: `blind typing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `levels`
--

CREATE TABLE `levels` (
  `level` int DEFAULT NULL,
  `sublevel` int DEFAULT NULL,
  `str` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `levels`
--

INSERT INTO `levels` (`level`, `sublevel`, `str`) VALUES
(1, 1, 'fff jjj uuu jjj fff uuu fff jjj uuu'),
(1, 2, 'uj uf fu uj uj uj fu uj fu uf ju uf uj ju ju uf uf fu uf uj uj ju uj'),
(1, 3, 'juju uj fjuju fuf jujuf jufuf fu jujuf fuf ju fjuf ufuj fufuj ufu ufu fujuf uf fuju uf fuju fujuf jufu fju jufu fuju'),
(2, 1, 'ddd eee kkk iii ddd kkk iii eee kkk iii dod iii eee kkk eee dod iii kkk eee'),
(2, 2, 'dik ik di ek kik id kid ke ed dek kee ed ek ek eke ke kek did ek ded\r\nked did kek ed kek'),
(2, 3, 'dujeek duke keekie juke juke defi fukie fude duke juke juke jude jude defi kudue ideu fude fuji kufi kufi feud duke fude jude keekie'),
(3, 2, 'sos wo lo ols lo wow wol olo wos os ols wow ows os ols wo olo lol ols lol ols wol wow os low'),
(3, 3, 'juked joked fjeld slojd kulfi jowl fuji jowed jouk joe kewl fujis kifs folks folks joe jowl joule woful jolie jolie juke folks flew kefs'),
(4, 1, 'ggg ttt hhh yyy ggg yyy hhh ttt yyy ggg ttt hhh yyy ttt yyy ggg hhh'),
(4, 2, 'It try vat hy tyev hy yt tyt hyt ynh ty yht yt yth yth yth yn'),
(4, 3, 'kith jogs sukh hoki skeg jolt heft jhil whey hoks just josh kilt hike whey heft gulf jilt ugly gowk juts heft kyte heft eggy'),
(5, 1, 'aaa ggg ppp aaa pop aaa ppp aaa'),
(5, 2, 'pa gap ga gaga paq agaq agap gaga pap paq agaq pa agaq app apa pap papa gapa agap ap aq appa apa gaga gapp'),
(5, 3, 'pudge quips getup quake fakey squad aquae paged pepos gawky payed gawky quips spike equip spake gawky pogey aquae pupa quake quake gopak pokes gopak'),
(6, 1, 'rrr bbb nnn bbb nnn rrr nnn bbb rer nnn'),
(6, 2, 'ur un un ry urb nun br bub nub bur by un rub rub bun urn ry ry ru\r\nbur by run ur ru nun'),
(6, 3, 'graph brawn broke dhikr brawn band pronk poker brank borek boked pronk bank pronk bank kebar bandh dhikr piker whang twonk graph brank brank baker'),
(3, 1, 'sss www lll ooo sss www ooo lll www sss'),
(7, 1, 'wwv mmm ccc mmm vw mmm vvv ccc mmm cc vvv'),
(7, 2, 'yc muf mu my uv ym muf yc yc mu muf vu my mu vy uc mu muf uv my cy'),
(7, 3, 'vice immy pavid cocks camp cocks cocks moved skive comp gack cumec coky cumec duck cocks kempt dicky kempt dump gamp gucks gymp cumec kemps'),
(8, 1, 'xxx zzz zzz xxx xxxz zzzx xxxz zzzx xxxz zzzx'),
(8, 2, 'xe xe xo ze ez xe zo xo iz oz ez iz ze xo xe oz zo ze zo xe iz ez\r\nex iz ze'),
(8, 3, 'axon zinc zing bize zinc zona razz buzz zine czar oxen putz oxer roux next zing czar zinc eaux oxen exit raze razz nixe tizz'),
(0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam imperdiet felis a eros imperdiet, nec ornare nibh euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur elementum odio at ligula vehicula, vel sagittis metus vestibulum.');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `user_id` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `sublevel` int DEFAULT NULL,
  `cpm` int DEFAULT NULL,
  `wpm` int DEFAULT NULL,
  `accuracy` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`user_id`, `level`, `sublevel`, `cpm`, `wpm`, `accuracy`) VALUES
(21, 1, 3, 21, 32, 77),
(21, 1, 4, 12, 13, 66),
(21, 1, 5, 21, 32, 77),
(19, 3, 1, 2221, 311, 99),
(19, 5, 1, 221, 311, 99),
(19, 5, 2, 221, 311, 91),
(19, 5, 8, 221, 311, 70),
(19, 3, 1, 2221, 10, 100),
(18, 1, 3, 1, 2, 22),
(24, 1, 1, 77, 12, 96),
(24, 5, 1, 77, 12, 99);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `token`) VALUES
(15, 'zadnica2222', 'pipsa222@yandex.ru', '202cb962ac59075b964b07152d234b70', 'e6be1d6a8176388fda7768d6d3d6f275'),
(16, 'zadnica2222', '1pipsa222@yandex.ru', '202cb962ac59075b964b07152d234b70', 'fb66d85bf230799481975e9fc04cc385'),
(18, 'vasya', 'vas11111ya1234', 'ddb30680a691d157187ee1cf9e896d03', '4e80b29d32980477eedeb6d4f1714c09'),
(19, 'tolik', 'tolikya1234', '202cb962ac59075b964b07152d234b70', 'c109c0566ca4495f6228fb0c3371cbd8'),
(20, 'tanya', 'tanyaya1234', 'ddb30680a691d157187ee1cf9e896d03', '257e8c3cb0ee2ca32a5a731bb0a04af8'),
(21, '111vasya', 'vas221ya1234', 'ddb30680a691d157187ee1cf9e896d03', 'cc5c145795d27e0de07d40bd998e2cdc'),
(22, 'faf', 'email1', '202cb962ac59075b964b07152d234b70', '2697003baa86d1766b4952567e190125'),
(23, 'vasya', 'vasya1234', 'ddb30680a691d157187ee1cf9e896d03', '9976af7e0e010c6810573c2e56da0787'),
(24, 'roman228', 'roma@yandex.ru', '202cb962ac59075b964b07152d234b70', '908a162ba95a5913fbf77f5ffb8904a3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
