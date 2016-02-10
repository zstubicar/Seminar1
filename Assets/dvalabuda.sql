-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2016 at 10:55 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvalabuda`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(2) NOT NULL,
  `name` varchar(50) COLLATE cp1250_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`) VALUES
(1, 'Jela'),
(2, 'Pica');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockID` int(2) NOT NULL,
  `name` varchar(100) COLLATE cp1250_croatian_ci NOT NULL,
  `categoryID` int(1) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `thumbnail` varchar(100) COLLATE cp1250_croatian_ci NOT NULL,
  `bigphoto` varchar(100) COLLATE cp1250_croatian_ci NOT NULL,
  `description` varchar(1000) COLLATE cp1250_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stockID`, `name`, `categoryID`, `price`, `thumbnail`, `bigphoto`, `description`) VALUES
(1, 'ZAKUSKA "VINODOL"', 1, '82.00', 'predjelo1-tb.jpg', 'predjelo1.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(2, 'SLAVONSKI KULEN', 1, '66.00', 'predjelo2-tb.jpg', 'predjelo2.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(3, 'SALATA OD HOBOTNICE', 1, '56.00', 'predjelo3-tb.jpg', 'predjelo3.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(4, 'KREM JUHA OD BROKULE', 1, '30.00', 'predjelo4-tb.jpg', 'predjelo4.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(5, 'TELETINA ISPOD PEKE S KRUMPIROM', 1, '88.00', 'jelo1-tb.jpg', 'jelo1.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(6, 'TELECI MEDALJONI SA SAMPINJONIMA', 1, '88.00', 'jelo2-tb.jpg', 'jelo2.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(7, 'FILE MIGNON U UMAKU OD GORGONZOLE', 1, '88.00', 'jelo3-tb.jpg', 'jelo3.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(8, 'TORTA "JELACIC"', 1, '22.00', 'desert1-tb.jpg', 'desert1.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(9, 'PURECI ODREZAK', 1, '62.00', 'jelo4-tb.jpg', 'jelo4.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(10, 'SAVIJACA', 1, '22.00', 'desert2-tb.jpg', 'desert2.jpg', 'Ovdje dolazi opis jela iz restorana. Trenutno je u izredi dok se kuhari ne odluce sta ce spremati stoga ga jos nismo u mogucnowsti obajviti. Zahvaljujem vam na razumijevanju.'),
(11, 'MOET&CHANDON BRUT IMPERIAL (Francuska)', 2, '170.00', 'pice1-tb.jpg', 'pice1.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(12, 'BARON PHILIPPE DE ROTHSCHILD CHAMPAGNE (Francuska)', 2, '300.00', 'pice2-tb.jpg', 'pice2.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(13, 'KUTJEVO GRASEVINA (Slavonija)', 2, '155.00', 'pice3-tb.jpg', 'pice3.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(14, 'BOLFAN RAJNSKI RIZLING (Zagorje-Medjimurje)', 2, '155.00', 'pice4-tb.jpg', 'pice4.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(15, 'ROTHSCHILD MOUTON CADET SAUVIGNON BLANC (Francuska)', 2, '155.00', 'pice5-tb.jpg', 'pice5.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(16, 'BENVENUTI MALVAZIJA (Istra) ', 2, '165.00', 'pice1-tb.jpg', 'pice1.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(17, 'CORONICA MALVAZIJA (Istra)', 2, '165.00', 'pice2-tb.jpg', 'pice2.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(18, 'CLAI MALVAZIJA Sv. JAKOV (Istra)', 2, '155.00', 'pice3-tb.jpg', 'pice3.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(19, 'ZLATNA VRBNICKA ZLAHTINA (Hrvatsko primorje)', 2, '145.00', 'pice4-tb.jpg', 'pice4.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.'),
(20, 'ROTHSCHILD MOUTON CADET BLANC – Sauvignon Blanc, Semillon, Muscadelle (Francuska) ', 2, '155.00', 'pice5-tb.jpg', 'pice5.jpg', 'Ovdje dolazi opis pića iz restorana. Trenutno je u izredi dok se someljeri ne odluce sta ce nuditi uz naša jela stoga ga jos nismo u mogucnosti obajviti. Zahvaljujem vam na razumijevanju.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stockID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
