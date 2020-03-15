-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Mrz 2020 um 22:47
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr09_patrick_bukenberger_delivery`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `street` varchar(20) NOT NULL,
  `building_no` int(11) NOT NULL,
  `city` varchar(15) NOT NULL,
  `zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `street`, `building_no`, `city`, `zip_code`) VALUES
(1, 'Ryan', 'Casper', 'Jay Street', 365, 'Elmerberg', 72264),
(2, 'Heidi', 'Bogisich', 'Strosin Course', 5988, 'Ortizton', 27038),
(3, 'Fannie', 'Davis', 'Andres Oval', 88629, 'Ruthieshire', 70188),
(4, 'Daniella', 'Schowalter', 'Marquardt Highway', 78526, 'West Haroldches', 13687),
(5, 'Tanya', 'Durgan', 'Medhurst Streets', 62005, 'West Major', 10712),
(6, 'Arnoldo', 'Huel', 'Kara Union', 86, 'Port Bianka', 44405),
(7, 'Emanuel', 'Padberg', 'Wilderman Gardens', 115, 'Mariahchester', 41313),
(8, 'Zoey', 'Kuvalis', 'Okuneva Trail', 90595, 'Dedrickside', 24546),
(9, 'Mireille', 'Ratke', 'Julia Points', 4311, 'Port Ryannfort', 45272),
(10, 'Evans', 'Swaniawski', 'Stroman Avenue', 924, 'Connieview', 14196);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deli_location`
--

CREATE TABLE `deli_location` (
  `loc_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `eployees` int(11) NOT NULL,
  `storage_capacity` int(11) NOT NULL,
  `street` varchar(20) NOT NULL,
  `building_no` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `city` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `deli_location`
--

INSERT INTO `deli_location` (`loc_id`, `package_id`, `eployees`, `storage_capacity`, `street`, `building_no`, `zip`, `city`) VALUES
(1, 488, 20, 175, 'Gaylord Ways', 4310, 13393, 'Schusterbo'),
(2, 547, 20, 742, 'Lemke Land', 893, 8651, 'North Isaa'),
(3, 143, 19, 792, 'Langosh Streets', 38572, 9474, 'Port Dayan'),
(4, 188, 15, 601, 'Aaliyah Club', 16905, 70656, 'East Fatim'),
(5, 533, 20, 263, 'Keara Haven', 5770, 80896, 'Rippinport'),
(6, 696, 16, 30, 'Graham Wells', 30948, 66420, 'Abelardopo'),
(7, 671, 20, 503, 'Welch Mews', 1780, 76891, 'Lake Hipol'),
(8, 389, 17, 135, 'Murphy Circles', 47, 71336, 'Daviston'),
(9, 413, 7, 170, 'Wolff Centers', 59677, 89448, 'Teagantown'),
(10, 950, 7, 916, 'Kautzer Ridges', 31991, 90363, 'Giuseppevi');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `package`
--

INSERT INTO `package` (`package_id`, `customer_id`, `weight`, `cost`) VALUES
(143, 1, 46, 8177),
(188, 2, 33, 4566),
(389, 3, 39, 4137),
(413, 4, 10, 2397),
(488, 5, 40, 7568),
(533, 6, 22, 3539),
(547, 7, 28, 4688),
(671, 8, 23, 9750),
(696, 9, 7, 7844),
(950, 10, 33, 8264);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `receiver`
--

CREATE TABLE `receiver` (
  `receiver_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `package_id` int(11) NOT NULL,
  `street` varchar(20) NOT NULL,
  `building_no` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `city` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `receiver`
--

INSERT INTO `receiver` (`receiver_id`, `first_name`, `last_name`, `date`, `time`, `package_id`, `street`, `building_no`, `zip`, `city`) VALUES
(1, 'Alexander', 'DuBuque', '1991-05-07', '21:06:45', 143, 'Luettgen Lake', 138, 24908, 'West Maryf'),
(2, 'Boyd', 'Hahn', '1976-07-15', '23:14:58', 188, 'Breanne Drive', 103, 90761, 'Rhiannonsi'),
(3, 'Wilburn', 'Aufderhar', '2003-04-28', '05:12:05', 389, 'Otto Lodge', 115, 51240, 'Hilllberg'),
(4, 'Maryse', 'Moore', '2019-07-13', '10:47:25', 413, 'Wolf Pines', 90, 85240, 'North Quin'),
(5, 'Gerard', 'Will', '2014-07-30', '00:40:26', 488, 'Fahey Loaf', 91, 40577, 'Neilville'),
(6, 'Trystan', 'Heidenreich', '1972-04-04', '09:01:02', 533, 'Gleichner Glens', 110, 50158, 'South Rosa'),
(7, 'Cornell', 'Sanford', '1991-03-29', '12:35:42', 547, 'Viviane Freeway', 24, 82534, 'West Devyn'),
(8, 'Arden', 'Hamill', '2009-04-04', '20:24:25', 671, 'Rubie Cliffs', 194, 81703, 'East Ulise'),
(9, 'Easter', 'Rogahn', '1972-01-06', '17:13:37', 696, 'Marc Knoll', 171, 10275, 'East Tamar'),
(10, 'Heath', 'Boehm', '2000-02-04', '21:49:25', 950, 'Billie Spurs', 170, 32716, 'Joaquinfor');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `truck`
--

CREATE TABLE `truck` (
  `truck_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `driver` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `truck`
--

INSERT INTO `truck` (`truck_id`, `package_id`, `driver`) VALUES
(1, 143, 'Waldo Krajcik'),
(2, 188, 'Anderson Durgan '),
(3, 389, 'Victor Stoltenberg'),
(4, 413, 'Darrell Hahn'),
(5, 488, 'Kade Oberbrunner'),
(6, 533, 'Milo Jakubowski'),
(7, 547, 'Jaylin Larson'),
(8, 671, 'Turner Bogisich'),
(9, 696, 'Jillian Daniel'),
(10, 950, 'Randal Simonis');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `deli_location`
--
ALTER TABLE `deli_location`
  ADD PRIMARY KEY (`loc_id`),
  ADD UNIQUE KEY `package_id` (`package_id`);

--
-- Indizes für die Tabelle `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`) USING BTREE;

--
-- Indizes für die Tabelle `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`receiver_id`),
  ADD UNIQUE KEY `package_id` (`package_id`);

--
-- Indizes für die Tabelle `truck`
--
ALTER TABLE `truck`
  ADD PRIMARY KEY (`truck_id`),
  ADD UNIQUE KEY `package_id` (`package_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `deli_location`
--
ALTER TABLE `deli_location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `receiver`
--
ALTER TABLE `receiver`
  MODIFY `receiver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `truck`
--
ALTER TABLE `truck`
  MODIFY `truck_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `package_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `deli_location` (`package_id`);

--
-- Constraints der Tabelle `receiver`
--
ALTER TABLE `receiver`
  ADD CONSTRAINT `receiver_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `truck` (`package_id`);

--
-- Constraints der Tabelle `truck`
--
ALTER TABLE `truck`
  ADD CONSTRAINT `truck_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
