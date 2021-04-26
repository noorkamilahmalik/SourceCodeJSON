-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 05:16 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `bandung`
--

CREATE TABLE `bandung` (
  `id` int(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `harga` int(10) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bandung`
--

INSERT INTO `bandung` (`id`, `nama`, `jenis`, `harga`, `alamat`) VALUES
(1, 'kawah putih', 'wisata alam', 50000, 'rancabali'),
(3, 'wayang windu', 'wisata alam', 10000, 'pangalengan'),
(4, 'ranca upas', 'wisata alam', 35000, 'ciwidey'),
(5, 'situ patenggang', 'wisata alam', 20000, 'ciwidey'),
(6, 'glamping', 'wisata alam', 20000, 'ciwidey'),
(7, 'orchid forest', 'wisata alam', 45000, 'cikole'),
(8, 'masjid raya', 'wisata religi', 10000, 'kota bandung'),
(9, 'observatorium bosscha', 'wisata edukasi', 20000, 'lembang');

-- --------------------------------------------------------

--
-- Table structure for table `jogja`
--

CREATE TABLE `jogja` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `harga` int(10) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jogja`
--

INSERT INTO `jogja` (`id`, `nama`, `jenis`, `harga`, `alamat`) VALUES
(1, 'pantai parangtritis', 'wisata alam', 25000, 'parangtritis'),
(2, 'malioboro', 'wisata kuliner', 10000, 'kota jogja'),
(3, 'candi prambanan', 'wisata budaya', 50000, 'sleman'),
(4, 'candi borobudur', 'wisata budaya', 50000, 'magelang'),
(5, 'gumuk pasir', 'wisata alam', 10000, 'parangtritis'),
(6, 'heha sky view', 'wisata kuliner', 35000, 'gunung kidul'),
(7, 'taman pintar', 'wisata edukasi', 50000, 'kota jogja'),
(8, 'pantai parangtritis', 'wisata alam', 25000, 'parangtritis'),
(9, 'malioboro', 'wisata kuliner', 10000, 'kota jogja'),
(10, 'candi prambanan', 'wisata budaya', 50000, 'sleman'),
(11, 'candi borobudur', 'wisata budaya', 50000, 'magelang'),
(12, 'gumuk pasir', 'wisata alam', 10000, 'parangtritis'),
(13, 'heha sky view', 'wisata kuliner', 35000, 'gunung kidul'),
(14, 'taman pintar', 'wisata edukasi', 50000, 'kota jogja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bandung`
--
ALTER TABLE `bandung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jogja`
--
ALTER TABLE `jogja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bandung`
--
ALTER TABLE `bandung`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jogja`
--
ALTER TABLE `jogja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
