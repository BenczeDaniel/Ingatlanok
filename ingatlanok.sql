-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 07. 22:47
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ingatlanok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ház'),
(2, 'lakás'),
(4, 'nyaraló'),
(5, 'tanya'),
(6, 'ipari ingatlan');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `realestates`
--

CREATE TABLE `realestates` (
  `id` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  `sellerId` bigint(20) NOT NULL,
  `createAt` date NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `area` int(11) DEFAULT NULL,
  `rooms` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `realestates`
--

INSERT INTO `realestates` (`id`, `categoryId`, `sellerId`, `createAt`, `imageUrl`, `area`, `rooms`) VALUES
(1, 1, 56, '2021-11-17', 'house10.png', 165, 5),
(2, 1, 16, '2021-10-13', 'house39.png', 145, 5),
(3, 1, 61, '2022-01-19', 'house50.png', 150, 5),
(5, 4, 40, '2021-12-29', 'house02.png', 135, 5),
(7, 1, 281, '2022-02-20', 'house09.png', 230, 5),
(9, 2, 168, '2022-02-09', 'house18.png', 165, 5),
(11, 1, 123, '2022-02-01', 'house27.png', 65, 2),
(13, 4, 374, '2021-10-11', 'house12.png', 180, 5),
(14, 5, 271, '2022-01-29', 'house39.png', 135, 5),
(15, 1, 373, '2021-10-28', 'house18.png', 60, 2),
(16, 1, 312, '2021-10-05', 'house14.png', 145, 4),
(18, 1, 24, '2022-02-03', 'house01.png', 90, 3),
(19, 1, 46, '2022-02-02', 'house48.png', 140, 5),
(21, 4, 308, '2021-12-12', 'house24.png', 80, 4),
(23, 1, 6, '2021-12-05', 'house25.png', 55, 2),
(24, 1, 82, '2021-12-13', 'house01.png', 165, 5),
(25, 1, 157, '2021-11-17', 'house30.png', 240, 5),
(26, 4, 144, '2021-12-12', 'house15.png', 120, 4),
(28, 1, 282, '2021-09-29', 'house20.png', 110, 5),
(29, 6, 254, '2021-11-24', 'house46.png', 120, 5),
(32, 4, 317, '2021-11-27', 'house08.png', 85, 3),
(33, 1, 111, '2022-01-13', 'house08.png', 210, 5),
(35, 4, 103, '2022-02-25', 'house39.png', 150, 5),
(36, 2, 156, '2021-10-14', 'house15.png', 175, 5),
(37, 4, 178, '2021-11-01', 'house31.png', 180, 5),
(38, 1, 175, '2022-02-04', 'house28.png', 155, 5),
(39, 1, 244, '2021-10-27', 'house44.png', 125, 4),
(40, 1, 22, '2021-10-13', 'house13.png', 80, 3),
(43, 4, 313, '2021-11-14', 'house09.png', 225, 5),
(45, 1, 9, '2022-01-17', 'house27.png', 145, 5),
(46, 1, 96, '2022-02-10', 'house25.png', 185, 5),
(49, 4, 14, '2022-01-04', 'house11.png', 220, 5),
(50, 4, 54, '2022-01-10', 'house21.png', 140, 5),
(52, 1, 373, '2021-11-26', 'house18.png', 225, 5),
(54, 1, 250, '2022-02-17', 'house43.png', 65, 2),
(56, 1, 249, '2022-01-26', 'house12.png', 75, 2),
(57, 1, 372, '2021-10-14', 'house49.png', 65, 3),
(60, 1, 60, '2021-11-12', 'house20.png', 140, 5),
(62, 2, 221, '2021-12-16', 'house07.png', 110, 4),
(64, 4, 231, '2022-02-11', 'house01.png', 110, 5),
(65, 1, 183, '2021-12-23', 'house41.png', 180, 5),
(66, 1, 143, '2021-11-25', 'house31.png', 145, 5),
(67, 1, 92, '2022-02-25', 'house41.png', 145, 5),
(68, 2, 173, '2021-10-07', 'house29.png', 190, 5),
(70, 1, 204, '2021-10-30', 'house23.png', 105, 4),
(71, 2, 23, '2022-01-05', 'house31.png', 60, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `phone`) VALUES
(6, 'Szikla Szilárd', '+36 1 8618-6027'),
(9, 'Rontó Pál', '+36 1 5941-3954'),
(14, 'Nagy Adrienn', '+36 1 9912-8987'),
(16, 'Marok Nyikolaj', '+36 1 8139-4405'),
(22, 'Garabuczi Laura', '+36 1 1672-9525'),
(23, 'Fogd Bea', '+36 1 4725-2442'),
(24, 'Fer Enci', '+36 1 6920-6507'),
(40, 'Róka Gábor', '+36 1 2729-9902'),
(46, 'Némethy Zsófia', '+36 1 3494-2935'),
(54, 'Hegedûs Adrienn', '+36 1 6078-6520'),
(56, 'Fazekas Zoltán', '+36 1 9929-8217'),
(60, 'Dalos Ákos Mihály', '+36 1 9950-1575'),
(61, 'Bur Kolos', '+36 1 3652-1187'),
(82, 'Leskó András', '+36 1 5240-3808'),
(92, 'Gáti Orsolya', '+36 1 3378-6077'),
(96, 'Bekre Pál', '+36 1 5895-6043'),
(103, 'Szolnoki Anna', '+36 1 4163-7869'),
(111, 'Kovács Adrienn', '+36 1 7174-6885'),
(123, 'Ápry Lisa', '+36 1 8413-6094'),
(143, 'Lizák Gerhard', '+36 1 3227-3795'),
(144, 'Lev Elek', '+36 1 2451-9808'),
(156, 'Béres Tamás', '+36 1 1818-4840'),
(157, 'Bán Tamás', '+36 1 9446-6211'),
(168, 'Resz Elek', '+36 1 1399-2527'),
(173, 'Pár Zoltán', '+36 1 3798-6794'),
(175, 'Nyomo Réka', '+36 1 7718-7901'),
(178, 'Mursa Krisztián', '+36 1 4450-7684'),
(183, 'Korpusz Ilma', '+36 1 6751-6005'),
(204, 'Ösztön Ödön', '+36 1 3078-1467'),
(221, 'Vágó Péter Ákos', '+36 1 4643-1788'),
(231, 'Pataki Bálint', '+36 1 9998-4893'),
(244, 'Ér Emma', '+36 1 1414-4563'),
(249, 'Bíró Olívia', '+36 1 9189-6594'),
(250, 'Bernát Csilla', '+36 1 8180-8416'),
(254, 'Trab Antal', '+36 1 8970-1364'),
(271, 'Huczman Gergely', '+36 1 2819-2249'),
(281, 'Dancs Dániel', '+36 1 2541-3669'),
(282, 'Bali Alexandra Mercédesz', '+36 1 1575-7660'),
(308, 'Egyenes Ági', '+36 1 1780-7112'),
(312, 'Bacskai Mihály', '+36 1 4996-5351'),
(313, 'Ádám Ákos Lajos', '+36 1 9163-7120'),
(317, 'Török Szilárd', '+36 1 3603-9947'),
(372, 'Budipa Piroska', '+36 1 4439-9700'),
(373, 'Bõrönd Ödön', '+36 1 2709-2407'),
(374, 'Bac Ilus', '+36 1 1301-2730');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `realestates`
--
ALTER TABLE `realestates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_realestates_categoryId` (`categoryId`),
  ADD KEY `FK_realestates_sellerId` (`sellerId`);

--
-- A tábla indexei `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `realestates`
--
ALTER TABLE `realestates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT a táblához `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `realestates`
--
ALTER TABLE `realestates`
  ADD CONSTRAINT `FK_realestates_categoryId` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_realestates_sellerId` FOREIGN KEY (`sellerId`) REFERENCES `sellers` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
