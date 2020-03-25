-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 07:19 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivnosti`
--

CREATE TABLE `aktivnosti` (
  `idAktivnosti` int(255) NOT NULL,
  `EmailKorisnika` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Operacija` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DatumOperacije` date NOT NULL DEFAULT current_timestamp(),
  `VremeOperacije` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aktivnosti`
--

INSERT INTO `aktivnosti` (`idAktivnosti`, `EmailKorisnika`, `Operacija`, `DatumOperacije`, `VremeOperacije`) VALUES
(49, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(50, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(51, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(53, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(55, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(56, 'zika.ziki@gmail.com', 'Logout user', '2020-03-16', '00:26:34'),
(57, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(58, 'zika.ziki@gmail.com', 'Subscribe user', '2020-03-16', '00:26:34'),
(59, 'zika.ziki@gmail.com', 'Contact user', '2020-03-16', '00:26:34'),
(60, 'zika.ziki@gmail.com', 'Logout user', '2020-03-16', '00:26:34'),
(61, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(62, 'zika.ziki@gmail.com', 'Logout user', '2020-03-16', '00:26:34'),
(63, 'zivke@gmail.com', 'Registration user', '2020-03-16', '00:26:34'),
(64, 'zivke@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(65, 'zivke@gmail.com', 'Logout user', '2020-03-16', '00:26:34'),
(66, 'zivke@gmail.com', 'Subscribe user', '2020-03-16', '00:26:34'),
(67, 'zika.ziki@gmail.com', 'Login user', '2020-03-16', '00:26:34'),
(68, 'zika.ziki@gmail.com', 'Logout user', '2020-03-17', '00:26:53'),
(69, 'zika.ziki@gmail.com', 'Login user', '2020-03-17', '00:30:04'),
(70, 'zivke@gmail.com', 'Subscribe user', '2020-03-17', '02:08:42'),
(71, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '02:10:37'),
(72, 'zika.ziki@gmail.com', 'Login user', '2020-03-17', '19:25:39'),
(73, 'zika.ziki@gmail.com', 'Logout user', '2020-03-17', '19:26:08'),
(74, 'zivke@gmail.com', 'Login user', '2020-03-17', '19:26:14'),
(75, 'zivke@gmail.com', 'Logout user', '2020-03-17', '19:26:23'),
(76, 'zika.ziki@gmail.com', 'Login user', '2020-03-17', '19:26:32'),
(77, 'zika.ziki@gmail.com', 'Logout user', '2020-03-17', '21:09:01'),
(78, 'zika.ziki@gmail.com', 'Login user', '2020-03-17', '21:09:08'),
(79, 'zika.ziki@gmail.com', 'Logout user', '2020-03-17', '21:42:46'),
(80, 'zika.ziki@gmail.com', 'Login user', '2020-03-17', '21:42:55'),
(81, 'zika.ziki@gmail.com', 'Logout user', '2020-03-17', '22:53:34'),
(82, 'zika.ziki@gmail.com', 'Login user', '2020-03-17', '22:53:41'),
(83, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:27:28'),
(84, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:31:18'),
(85, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:32:41'),
(86, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:38:03'),
(87, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:38:40'),
(88, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:40:08'),
(89, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:41:00'),
(90, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:41:29'),
(91, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:42:11'),
(92, 'zika.ziki@gmail.com', 'Contact user', '2020-03-17', '23:42:52'),
(93, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '00:12:53'),
(94, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '00:40:46'),
(95, 'zika.ziki@gmail.com', 'Login user', '2020-03-18', '14:38:21'),
(96, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '14:38:34'),
(97, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '14:41:30'),
(98, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:19:46'),
(99, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:19:59'),
(100, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:25:12'),
(101, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:28:01'),
(102, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:29:32'),
(103, 'zika.ziki@gmail.com', 'Logout user', '2020-03-18', '15:33:34'),
(104, 'jpierce712@comcast.net', 'Contact user', '2020-03-18', '15:40:05'),
(105, 'jpierce712@comcast.net', 'Contact user', '2020-03-18', '15:43:21'),
(106, 'jpierce712@comcast.net', 'Contact user', '2020-03-18', '15:44:22'),
(107, 'jpierce712@comcast.net', 'Contact user', '2020-03-18', '15:46:02'),
(108, 'zika.ziki@gmail.com', 'Login user', '2020-03-18', '15:46:23'),
(109, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:46:31'),
(110, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:48:11'),
(111, 'zika.ziki@gmail.com', 'Contact user', '2020-03-18', '15:49:36'),
(112, 'zika.ziki@gmail.com', 'Login user', '2020-03-18', '19:27:24'),
(113, 'zika.ziki@gmail.com', 'Logout user', '2020-03-18', '19:27:31'),
(114, 'zivke@gmail.com', 'Login user', '2020-03-18', '19:27:53'),
(115, 'zivke@gmail.com', 'Logout user', '2020-03-18', '19:29:58'),
(116, 'zika.ziki@gmail.com', 'Login user', '2020-03-18', '19:30:04'),
(117, 'zika.ziki@gmail.com', 'Logout user', '2020-03-18', '19:37:34'),
(118, 'zika.ziki@gmail.com', 'Login user', '2020-03-18', '19:38:21'),
(119, 'zika.ziki@gmail.com', 'Logout user', '2020-03-18', '19:38:25'),
(120, 'zika.ziki@gmail.com', 'Login user', '2020-03-18', '19:39:07'),
(121, 'zika.ziki@gmail.com', 'Logout user', '2020-03-19', '00:27:29'),
(122, 'nikola.riorovic98@gmail.com', 'Registration user', '2020-03-19', '00:28:12'),
(123, 'nikola.riorovic98@gmail.com', 'Login user', '2020-03-19', '00:28:22'),
(124, 'nikola.riorovic98@gmail.com', 'Contact user', '2020-03-19', '00:31:11'),
(125, 'nikola.riorovic98@gmail.com', 'Logout user', '2020-03-19', '01:09:07'),
(126, 'nikola.riorovic98@gmail.com', 'Login user', '2020-03-19', '01:11:01'),
(127, 'nikola.riorovic98@gmail.com', 'Contact user', '2020-03-19', '01:16:13'),
(128, 'nikola.riorovic98@gmail.com', 'Contact user', '2020-03-19', '01:18:23'),
(129, 'nikola.riorovic98@gmail.com', 'Logout user', '2020-03-19', '01:36:47'),
(130, 'nikola.riorovic98@gmail.com', 'Login user', '2020-03-19', '01:37:00'),
(131, 'nikola.riorovic98@gmail.com', 'Contact user', '2020-03-19', '01:44:22'),
(132, 'nikola.riorovic98@gmail.com', 'Contact user', '2020-03-19', '02:24:29'),
(133, 'nikola.riorovic98@gmail.com', 'Contact user', '2020-03-19', '02:26:21'),
(134, 'nikola.riorovic98@gmail.com', 'Logout user', '2020-03-19', '02:49:45'),
(135, 'zika.ziki@gmail.com', 'Login user', '2020-03-19', '02:49:52'),
(136, 'zika.ziki@gmail.com', 'Logout user', '2020-03-19', '02:52:13'),
(137, 'zika.ziki@gmail.com', 'Login user', '2020-03-19', '02:52:23'),
(138, 'zika.ziki@gmail.com', 'Contact user', '2020-03-19', '02:52:31'),
(139, 'zika.ziki@gmail.com', 'Logout user', '2020-03-19', '02:52:51'),
(140, 'zika.ziki@gmail.com', 'Login user', '2020-03-19', '19:36:34'),
(141, 'zika.ziki@gmail.com', 'Contact user', '2020-03-19', '20:03:23'),
(142, 'zika.ziki@gmail.com', 'Logout user', '2020-03-19', '20:09:23'),
(143, 'nikola.riorovic98@gmail.com', 'Login user', '2020-03-19', '20:09:33'),
(144, 'nikola.riorovic98@gmail.com', 'Logout user', '2020-03-19', '21:17:34'),
(145, 'zika.ziki@gmail.com', 'Login user', '2020-03-19', '21:17:41'),
(146, 'zika.ziki@gmail.com', 'Login user', '2020-03-25', '17:46:12'),
(147, 'zika.ziki@gmail.com', 'Logout user', '2020-03-25', '17:55:39'),
(148, 'zika.ziki@gmail.com', 'Login user', '2020-03-25', '18:45:11'),
(149, 'zika.ziki@gmail.com', 'Logout user', '2020-03-25', '18:50:22'),
(150, 'zika.ziki@gmail.com', 'Login user', '2020-03-25', '18:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `idKategorije` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`idKategorije`, `naziv`) VALUES
(1, 'Pasta'),
(2, 'Meso'),
(3, 'Salata'),
(4, 'Kolac');

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `idPitanja` int(255) NOT NULL,
  `Ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Pitanje` text COLLATE utf8_unicode_ci NOT NULL,
  `Datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `idKorisnika` int(255) NOT NULL,
  `Ime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Prezime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idUloga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`idKorisnika`, `Ime`, `Prezime`, `Email`, `Username`, `Pass`, `idUloga`) VALUES
(1, 'Nikola', 'Riorovic', 'nikolariorovic@hotmail.com', 'nabadamdam98', '90e889d2d06dd9b7b38d2d16fcab098e', 1),
(24, 'Zikica', 'Zikic', 'zika.ziki@gmail.com', 'zika123', '685d80d50ae36db5cedbbecddefbaee8', 1),
(77, 'Petar', 'Petrovic', 'pera@gmail.com', 'pera123', 'bf676ed1364b5857fba69b5623c81b64', 2),
(78, 'Milorad', 'Milosavljevic', 'milan@gmail.com', 'milan123', '49e34051a5bb3df733080908649b9ad1', 2),
(80, 'Zivke', 'Zivkovic', 'zivke@gmail.com', 'zivke123', 'f249bea09a3380a30b65f07b051303a4', 2),
(81, 'Nikola', 'Riorovic', 'nikola.riorovic98@gmail.com', 'nabadamdam123', '702f7e8a597f335fc4f61a12eb6e8db2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigacija`
--

CREATE TABLE `navigacija` (
  `idNav` int(50) NOT NULL,
  `naziv` text COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigacija`
--

INSERT INTO `navigacija` (`idNav`, `naziv`, `href`) VALUES
(2, 'Menu', '/menu'),
(3, 'Services', '/services'),
(4, 'Reservations', '/reservation'),
(5, 'Contact&Registration', '/contact'),
(6, 'Contact', '/contact'),
(7, 'Author', '/author'),
(8, 'Admin', '/admin'),
(9, 'Logout', '/logout');

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

CREATE TABLE `proizvodi` (
  `idProizvoda` int(255) NOT NULL,
  `Naziv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SlikaSrc` text COLLATE utf8_unicode_ci NOT NULL,
  `SlikaAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Opis` text COLLATE utf8_unicode_ci NOT NULL,
  `Cena` decimal(60,2) NOT NULL,
  `idKategorije` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`idProizvoda`, `Naziv`, `SlikaSrc`, `SlikaAlt`, `Opis`, `Cena`, `idKategorije`) VALUES
(9, 'Fresh Beef with Broccoli', 'images/img_1.jpg', 'Snicla', 'Medium rare beef with griled broccoli and \r\nsauce!', '20.80', 2),
(10, 'Cake with Apples and Plum', 'images/img_2.jpg', 'Kolac', 'Cake with organic fruits and extra creamy. Sweeter if needed!\r\n', '18.30', 4),
(11, 'Grilled Chicken Salad', 'images/img_3.jpg', 'Salata', 'Classic Chicken Salad is the perfect combo of seasoned chicken breast.', '21.90', 3),
(15, 'Meatball with Cheese', 'images/img_4.jpg', 'Cufta', 'Far far away, behind the word mountains, far from the countries Vokalia..', '10.20', 2),
(23, 'Farfalle with Tomatoes', 'images/1581369526img_6.jpg', 'Testenina', 'Far far away, behind the word mountains, far from the countries Vokalia.', '5.59', 1),
(24, 'Veal with Potatoes', 'images/1581376042img_5.jpg', 'Teletina', 'Far far away, behind the word mountains, far from the countries Vokalia..', '17.85', 2),
(91, 'Pizza with Cheese and Pineappl', 'images/img_7.jpg\r\n\r\n\r\n\r\n', 'Pizza', 'The most delicious pizza made by the best chefs!', '9.85', 1),
(92, 'Beef Burger', 'images/img_8.jpg\r\n\r\n\r\n', 'Burger', 'Burger made from the finest beef meat and the most delicious taste!', '6.85', 2),
(93, 'Pancakes with Toppings', 'images/1584582689img_9.jpg', 'Pancakes', 'Pancakes with the finest taste in a very short time!', '4.20', 2),
(108, 'Chocolate cake', 'images/img_10.jpg', 'Torata cokoloada', 'Delicious cake with chocolate and melted chocolate topping.', '29.99', 4),
(109, 'Chocolate muffins', 'images/img_11.jpg', 'Mafini', 'Delicious chocolate-filled muffins.', '3.99', 4),
(110, 'Strawberry Chocolate Pudding', 'images/img_12.jpg', 'Puding', 'The pudding I make according to the best recipe.', '2.50', 4),
(111, 'Natural Orange Juice', 'images/img_13.jpg', 'Sok', 'Freshly squeezed orange juice.', '1.99', 4),
(113, 'Cheese Cake', 'images/img_14.jpg', 'Kolac', 'Delicious cake with a refined taste.', '4.99', 4),
(114, 'Sushie', 'images/img_15.jpg', 'Susi', 'One specialty of Chinese cuisine also in our restaurant.', '7.99', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacije`
--

CREATE TABLE `rezervacije` (
  `idRezervacije` int(255) NOT NULL,
  `datum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vreme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brojLjudi` int(255) NOT NULL,
  `idKorisnika` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rezervacije`
--

INSERT INTO `rezervacije` (`idRezervacije`, `datum`, `vreme`, `brojLjudi`, `idKorisnika`) VALUES
(45, '2021-03-24', '09:03:00', 3, 81),
(46, '2020-03-27', '09:05:00', 3, 81),
(47, '2020-05-22', '10:05:00', 1, 24),
(48, '2020-03-20', '11:05:00', 2, 24),
(49, '2020-03-20', '09:04:00', 3, 24),
(50, '2020-03-28', '14:05:00', 3, 24),
(51, '2020-03-28', '15:05:00', 3, 24),
(52, '2020-03-27', '07:05:00', 3, 24),
(53, '2020-03-27', '20:05:00', 3, 24),
(54, '2020-03-27', '21:10:00', 2, 24),
(55, '2020-04-04', '08:05:00', 3, 24),
(56, '2020-04-03', '08:03:00', 3, 24),
(57, '2020-05-01', '09:03:00', 4, 24),
(58, '2020-04-24', '09:03:00', 2, 24),
(59, '2020-03-31', '10:05:00', 3, 24),
(60, '2020-03-29', '16:07:00', 4, 24),
(61, '2020-03-29', '16:08:00', 3, 24),
(62, '2020-03-30', '09:05:00', 1, 24),
(63, '2020-04-16', '08:02:00', 2, 24),
(64, '2020-04-21', '08:02:00', 2, 24),
(65, '2020-04-19', '09:03:00', 2, 24),
(66, '2020-06-17', '09:03:00', 2, 81),
(67, '2020-04-18', '08:02:00', 2, 81),
(68, '2020-03-28', '08:02:00', 4, 81),
(69, '2020-03-27', '13:03:00', 5, 81),
(70, '2020-03-27', '09:03:00', 3, 81),
(71, '2020-04-02', '11:05:00', 5, 81),
(72, '2020-06-18', '10:03:00', 3, 81),
(73, '2020-05-05', '10:04:00', 3, 81),
(74, '2020-06-17', '11:04:00', 4, 81),
(75, '2020-07-16', '09:02:00', 3, 81),
(76, '2020-08-13', '10:04:00', 3, 81),
(77, '2020-09-24', '10:04:00', 3, 81),
(78, '2020-10-07', '10:05:00', 4, 81),
(79, '2020-05-19', '10:04:00', 3, 81),
(80, '2020-08-07', '09:03:00', 3, 81),
(81, '2020-12-16', '09:03:00', 3, 81),
(82, '2020-06-18', '10:04:00', 3, 81),
(83, '2020-05-21', '10:05:00', 4, 81),
(84, '2020-06-18', '09:04:00', 2, 81),
(85, '2020-05-03', '08:02:00', 2, 81),
(86, '2020-05-28', '09:03:00', 3, 81),
(87, '2020-04-15', '09:05:00', 3, 81),
(88, '2020-04-22', '09:05:00', 3, 81),
(89, '2020-08-12', '10:04:00', 4, 81);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `idSub` int(255) NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--

CREATE TABLE `uloga` (
  `idUloga` int(255) NOT NULL,
  `NazivUloga` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`idUloga`, `NazivUloga`) VALUES
(1, 'Administrator'),
(2, 'AutorizovaniKorisnik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivnosti`
--
ALTER TABLE `aktivnosti`
  ADD PRIMARY KEY (`idAktivnosti`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`idKategorije`);

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`idPitanja`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`idKorisnika`),
  ADD UNIQUE KEY `Email` (`Email`,`Username`,`Pass`),
  ADD KEY `idKorisnika` (`idKorisnika`),
  ADD KEY `idUloga` (`idUloga`);

--
-- Indexes for table `navigacija`
--
ALTER TABLE `navigacija`
  ADD PRIMARY KEY (`idNav`);

--
-- Indexes for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD PRIMARY KEY (`idProizvoda`),
  ADD KEY `idKategorije` (`idKategorije`);

--
-- Indexes for table `rezervacije`
--
ALTER TABLE `rezervacije`
  ADD PRIMARY KEY (`idRezervacije`),
  ADD KEY `idKorisnika` (`idKorisnika`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`idSub`),
  ADD KEY `idOdgovor` (`idSub`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`idUloga`),
  ADD KEY `idUloga` (`idUloga`),
  ADD KEY `idUloga_2` (`idUloga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivnosti`
--
ALTER TABLE `aktivnosti`
  MODIFY `idAktivnosti` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `idKategorije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `idPitanja` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `idKorisnika` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `navigacija`
--
ALTER TABLE `navigacija`
  MODIFY `idNav` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `proizvodi`
--
ALTER TABLE `proizvodi`
  MODIFY `idProizvoda` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `rezervacije`
--
ALTER TABLE `rezervacije`
  MODIFY `idRezervacije` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `idSub` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `uloga`
--
ALTER TABLE `uloga`
  MODIFY `idUloga` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD CONSTRAINT `korisnici_ibfk_1` FOREIGN KEY (`idUloga`) REFERENCES `uloga` (`idUloga`);

--
-- Constraints for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD CONSTRAINT `proizvodi_ibfk_1` FOREIGN KEY (`idKategorije`) REFERENCES `kategorija` (`idKategorije`);

--
-- Constraints for table `rezervacije`
--
ALTER TABLE `rezervacije`
  ADD CONSTRAINT `rezervacije_ibfk_1` FOREIGN KEY (`idKorisnika`) REFERENCES `korisnici` (`idKorisnika`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
