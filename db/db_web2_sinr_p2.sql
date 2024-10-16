-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 11:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_web2_sinr_p2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftar`
--

CREATE TABLE `tb_pendaftar` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `tipe_gadget` tinyint(1) NOT NULL COMMENT '1=hp 2=tablet 3=laptop',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pendaftar`
--

INSERT INTO `tb_pendaftar` (`id`, `nama`, `ip_address`, `tipe_gadget`, `date_created`) VALUES
(1, 'pengunjung-001', '10.100.5.78', 1, '2024-09-25 11:26:06'),
(2, 'pengunjung-002', '10.100.5.78', 1, '2024-09-25 11:26:48'),
(3, 'pengunjung-003', '10.100.5.78', 1, '2024-09-25 11:26:48'),
(4, 'pengunjung-004', '10.100.5.78', 2, '2024-09-25 11:26:48'),
(5, 'pengunjung-005', '10.100.5.78', 1, '2024-09-25 11:26:48'),
(6, 'pengunjung-006', '10.100.5.78', 1, '2024-09-25 11:26:48'),
(7, 'pengunjung-007', '10.100.5.78', 3, '2024-09-25 11:26:48'),
(8, 'pengunjung-008', '10.100.5.78', 1, '2024-09-25 11:26:48'),
(9, 'pengunjung-009', '10.100.5.78', 3, '2024-09-25 11:26:48'),
(10, 'pengunjung-010', '10.100.5.78', 1, '2024-09-25 11:26:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
