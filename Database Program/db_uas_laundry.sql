-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 01:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `number` int(5) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`number`, `id_user`, `username`, `nama`, `telpon`, `alamat`) VALUES
(1, 'CST1', 'admin', 'admin', '00000000000', 'jl aceh no 12'),
(2, 'CST2', 'neo1', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11'),
(4, 'CST4', 'fuhua', 'Fu Hua', '123123123123', '1'),
(5, 'CST5', 'kasir1', 'Rendi Atmaas', '0182309812345', 'Kantor Laundryss'),
(6, 'CST6', 'neo', 'resna', '123123', 'asd'),
(8, 'CST8', 'neo12', 'Neo Jarma', '123123', 'jl aceh no 7');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('fuhua', '123'),
('kasir1', 'kasir1'),
('neo', '1'),
('neo1', 'neo1'),
('neo12', '2');

-- --------------------------------------------------------

--
-- Table structure for table `point_diskon`
--

CREATE TABLE `point_diskon` (
  `id_user` varchar(30) NOT NULL,
  `point` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point_diskon`
--

INSERT INTO `point_diskon` (`id_user`, `point`) VALUES
('CST2', 549),
('CST4', 0),
('CST5', 0),
('CST6', 0),
('CST8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id_jenis_laundry` varchar(20) NOT NULL,
  `jenis_laundry` varchar(30) NOT NULL,
  `harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id_jenis_laundry`, `jenis_laundry`, `harga`) VALUES
('SRV-001', 'Cuci Setrika', 9000),
('SRV-002', 'Cuci Kering', 7000),
('SRV-003', 'Setrika', 6500),
('SRV-004', 'Bed Cover', 11000),
('SRV-005', 'Pickup and Delivery', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `tab_pesanan`
--

CREATE TABLE `tab_pesanan` (
  `no` int(5) NOT NULL,
  `id_pesanan` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `kode_customer` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `services` varchar(100) NOT NULL,
  `berat` int(10) NOT NULL,
  `aktual_berat` int(10) NOT NULL,
  `ongkir` int(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `diskon` int(10) NOT NULL,
  `total_bayar` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_pesanan`
--

INSERT INTO `tab_pesanan` (`no`, `id_pesanan`, `tanggal`, `jam`, `kode_customer`, `nama`, `no_hp`, `alamat`, `services`, `berat`, `aktual_berat`, `ongkir`, `harga`, `diskon`, `total_bayar`, `status`) VALUES
(1, '#ORD-0001', '02/07/2021', '10', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Cuci Setrika', 12, 12, 15000, 9000, 0, 123000, 'false'),
(2, '#ORD-0002', '02/07/2021', '18', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Cuci Kering', 12, 12, 0, 7000, 0, 84000, 'false'),
(3, '#ORD-0003', '03/07/2021', '10', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Setrika', 1, 1, 15000, 6500, 0, 21500, 'false'),
(4, '#ORD-0004', '04/07/2021', '10', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Setrika', 14, 14, 15000, 6500, 0, 106000, 'false'),
(5, '#ORD-0005', '02/07/2021', '18', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Bed Cover', 5, 5, 0, 11000, 0, 55000, 'false'),
(6, '#ORD-0006', '02/07/2021', '12', 'CST2', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11', 'Setrika', 12, 12, 15000, 6500, 15000, 78000, 'true'),
(7, '#ORD-0007', '03/07/2021', '10', 'CST2', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11', 'Setrika', 12, 12, 15000, 6500, 15000, 78000, 'false'),
(8, '#ORD-0008', '02/07/2021', '20', 'CST2', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11', 'Setrika', 12, 12, 0, 6500, 15000, 63000, 'true'),
(9, '#ORD-0009', '01/07/2021', '12', 'CST2', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11', 'Cuci Setrika', 12, 15, 15000, 9000, 15000, 135000, 'true'),
(10, '#ORD-0010', '05/07/2021', '10', 'CST2', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11', 'Cuci Setrika', 22, 22, 15000, 9000, 15000, 198000, 'true'),
(11, '#ORD-0011', '04/07/2021', '14', 'CST2', 'Neo Jarmawijaya', '082126569921', 'jl. surabaya no 11', 'Cuci Setrika', 22, 22, 0, 9000, 15000, 183000, 'true'),
(12, '#ORD-0012', '04/07/2021', '13', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Bed Cover', 12, 4, 0, 11000, 15000, 29000, 'true'),
(13, '#ORD-0013', '04/07/2021', '14', 'CST5', 'Astrologist Mona Megistus', '08213123123', 's', 'Cuci Kering', 11, 11, 0, 7000, 0, 77000, 'false'),
(14, '#ORD-0014', '04/07/2021', '12', 'CST5', 'andre', '123213123', 'jl aceh', 'Setrika', 12, 12, 15000, 6500, 0, 93000, 'false'),
(15, '#ORD-0015', '05/07/2021', '12', 'CST8', 'Neo Jarma', '123123', 'qwe', 'Cuci Setrika', 13, 13, 15000, 9000, 0, 132000, 'false'),
(16, '#ORD-0016', '06/07/2021', '10', 'CST8', 'Neo Jarma', '123123', 'qwe', 'Bed Cover', 4, 4, 15000, 11000, 0, 59000, 'false'),
(17, '#ORD-0017', '05/07/2021', '13', 'CST8', 'Neo Jarma', '123123', 'qwe', 'Bed Cover', 11, 11, 0, 11000, 0, 121000, 'false'),
(18, '#ORD-0018', '05/07/2021', '13', 'CST5', 'siti', '123123', 'qwe', 'Setrika', 12, 12, 0, 6500, 0, 78000, 'true'),
(19, '#ORD-0019', '05/07/2021', '13', 'CST8', 'Neo Jarma', '123123', 'qwe', 'Cuci Setrika', 1, 1, 0, 9000, 15000, 0, 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_jenis_laundry`);

--
-- Indexes for table `tab_pesanan`
--
ALTER TABLE `tab_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
