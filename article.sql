-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2022 at 02:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `article`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL COMMENT 'publish | draft | thrash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category`, `created_date`, `updated_date`, `status`) VALUES
(2, 'Apa itu pemrograman?', 'Dilansir dari laman Wikipedia, pemrograman atau programming adalah proses menulis, menguji dan memperbaiki (debug), dan memelihara kode yang membangun suatu program komputer. Kode ini ditulis dalam berbagai bahasa pemrograman atau sering disebut juga bahasa komputer. Tujuan dari pemrograman adalah untuk memuat suatu program yang dapat melakukan suatu perhitungan atau ‘pekerjaan’ sesuai dengan keinginan pemrogram. Untuk melakukan pemrograman, diperlukan keterampilan dalam algoritma, logika, bahasa pemrograman, dan pada banyak kasus, pengetahuan-pengetahuan lain seperti matematika.', 'Pengetahuan', '2022-06-17 07:50:38', '2022-06-17 09:57:02', 'publish'),
(3, 'jnesnsejnsjgsemgnkjsngkjsgjw', 'dkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfgh', 's kj j', '2022-06-17 07:53:37', '2022-06-17 11:58:11', 'draft'),
(4, 'Apa itu pemrograman?', 'Dilansir dari laman Wikipedia, pemrograman atau programming adalah proses menulis, menguji dan memperbaiki (debug), dan memelihara kode yang membangun suatu program komputer. Kode ini ditulis dalam berbagai bahasa pemrograman atau sering disebut juga bahasa komputer. Tujuan dari pemrograman adalah untuk memuat suatu program yang dapat melakukan suatu perhitungan atau ‘pekerjaan’ sesuai dengan keinginan pemrogram. Untuk melakukan pemrograman, diperlukan keterampilan dalam algoritma, logika, bahasa pemrograman, dan pada banyak kasus, pengetahuan-pengetahuan lain seperti matematika.', 'Pengetahuan', '2022-06-17 07:50:38', '2022-06-17 11:58:22', 'thrash'),
(5, 'jnesnsejnsjgsemgnkjsngkjsgjw', 'dkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfgh', 's kj j', '2022-06-17 07:53:37', '2022-06-17 09:37:04', 'publish'),
(6, 'Apa itu pemrograman?', 'Dilansir dari laman Wikipedia, pemrograman atau programming adalah proses menulis, menguji dan memperbaiki (debug), dan memelihara kode yang membangun suatu program komputer. Kode ini ditulis dalam berbagai bahasa pemrograman atau sering disebut juga bahasa komputer. Tujuan dari pemrograman adalah untuk memuat suatu program yang dapat melakukan suatu perhitungan atau ‘pekerjaan’ sesuai dengan keinginan pemrogram. Untuk melakukan pemrograman, diperlukan keterampilan dalam algoritma, logika, bahasa pemrograman, dan pada banyak kasus, pengetahuan-pengetahuan lain seperti matematika.', 'Pengetahuan', '2022-06-17 07:50:38', '2022-06-17 09:57:02', 'publish'),
(7, 'jnesnsejnsjgsemgnkjsngkjsgjw', 'dkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfghdkdfnjsgsbgdjgnsdjhgjhsdfgh', 's kj j', '2022-06-17 07:53:37', '2022-06-17 09:37:04', 'publish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
