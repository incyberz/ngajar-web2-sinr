-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 11:45 AM
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
-- Database: `db_web2_sia_p2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `tipe_gadget` tinyint(1) NOT NULL COMMENT '1=hp 2=tablet 3=laptop',
  `nama` varchar(30) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`id`, `ip_address`, `tipe_gadget`, `nama`, `date_created`) VALUES
(1, '100.222.67.45', 1, 'pengunjung-001', '2024-09-25 07:01:55'),
(4, '100.222.47.15', 2, 'pengunjung-004', '2024-09-25 07:03:32'),
(5, '100.222.67.35', 1, 'pengunjung-005', '2024-09-25 07:03:32'),
(8, '170.222.17.48', 3, 'pengunjung-008', '2024-09-25 07:03:32'),
(9, '140.222.7.49', 1, 'pengunjung-009', '2024-09-25 07:03:32'),
(10, '20.222.167.45', 1, 'pengunjung-0010', '2024-09-25 07:03:32'),
(11, '23.22.1.1', 1, 'asd', '2024-09-25 09:02:41'),
(13, '23.22.1.1', 1, 'zzz', '2024-10-02 09:02:30'),
(14, '23.22.1.1', 3, 'asd', '2024-10-02 09:02:41'),
(15, '23.22.1.1', 2, 'erter', '2024-10-02 09:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `role` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`role`, `jabatan`) VALUES
('kaprodi', 'Kepala Program Studi'),
('petugas', 'Petugas PMB'),
('pimpinan', 'Rektor, Warek, Dekan, atau Pejabat lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `date_created`, `last_login`, `role`, `image`) VALUES
(1, 'insho', NULL, 'Iin Sholihin', '2024-10-09 07:41:55', NULL, 'petugas', 'iin_sholihin-242410101616101006060202.jpg'),
(2, 'ahmad', NULL, 'Ahmad Firdaus', '2024-10-09 07:42:11', NULL, 'petugas', NULL),
(3, 'fahmi', NULL, 'Fahmi Nugraha', '2024-10-09 07:42:26', NULL, 'kaprodi', 'fahmi.jpg'),
(4, 'encep', NULL, 'Encep Supriatna', '2024-10-09 07:42:38', NULL, 'pimpinan', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`role`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Relasi Role User` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `Relasi Role User` FOREIGN KEY (`role`) REFERENCES `tb_role` (`role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
