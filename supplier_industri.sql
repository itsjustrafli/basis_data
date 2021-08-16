-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 08:35 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supplier_industri`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barangID` int(11) NOT NULL,
  `supplierID` int(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barangID`, `supplierID`, `nama_barang`, `harga_barang`) VALUES
(3001, 2001, 'AC 1 PK', 2000000),
(3002, 2001, 'Laserjet Printer', 3500000),
(3003, 2002, 'PLC Compact', 3000000),
(3004, 2002, 'PLC Modular', 5000000),
(3005, 2003, 'Gigabit Router', 1500000),
(3006, 2003, 'Wi-Fi Range Extender', 750000),
(3007, 2004, 'Windows 10 Enterprise License', 5000000),
(3008, 2004, 'Microsoft Office 2019 License', 2000000),
(3009, 2005, 'GeForce GTX 1050', 2000000),
(3010, 2005, 'Jetson Nano', 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyerID` int(11) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyerID`, `nama_instansi`, `alamat`, `telepon`) VALUES
(1, 'PT ABC', 'Jababeka H01', '083762839971'),
(2, 'PT DEF', 'Jababeka H02', '083762839970'),
(3, 'PT GHI', 'Jababeka H03', '083762839973'),
(4, 'PT JKL', 'Jababeka H04', '083762839974'),
(5, 'PT MNO', 'Jababeka H05', '083762839975'),
(6, 'PT PQR', 'Jababeka H06', '083762839976'),
(7, 'PT STU', 'Jababeka H07', '083762839977'),
(8, 'PT VWX', 'Jababeka H08', '083762839978'),
(9, 'PT XYZ', 'Jababeka H09', '083762839979'),
(10, 'PT BCA', 'Jababeka H10', '083762839980');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `metodeID` int(11) NOT NULL,
  `jenis_metode` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`metodeID`, `jenis_metode`, `keterangan`) VALUES
(1001, 'Tunai', 'Bilyet Giro'),
(1002, 'Non-Tunai', 'Uang Elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `telepon_supplier` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `nama_supplier`, `kota`, `telepon_supplier`) VALUES
(2001, 'Samsung', 'Bekasi', '081635321201'),
(2002, 'Omron', 'Tangerang', '081635321202'),
(2003, 'Cisco', 'Jakarta', '081635321203'),
(2004, 'Microsoft', 'Jakarta', '081635321204'),
(2005, 'Nvidia', 'Jakarta', '081635321205');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `pembelianID` int(11) NOT NULL,
  `buyerID` int(50) NOT NULL,
  `barangID` int(50) NOT NULL,
  `metodeID` int(50) NOT NULL,
  `tgl_pembelian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`pembelianID`, `buyerID`, `barangID`, `metodeID`, `tgl_pembelian`) VALUES
(4001, 1, 3001, 1001, '2021-08-16 05:40:16'),
(4002, 9, 3007, 1002, '2021-08-16 05:40:27'),
(4003, 6, 3003, 1001, '2021-08-16 05:40:38'),
(4004, 5, 3005, 1001, '2021-08-16 05:41:01'),
(4005, 5, 3007, 1002, '2021-08-16 05:41:09'),
(4006, 3, 3010, 1001, '2021-08-16 05:41:17'),
(4007, 7, 3002, 1001, '2021-08-16 05:41:28'),
(4008, 8, 3001, 1001, '2021-08-16 05:41:41'),
(4009, 9, 3005, 1002, '2021-08-16 05:41:52'),
(4010, 10, 3004, 1002, '2021-08-16 05:42:02'),
(4011, 1, 3010, 1001, '2021-08-16 05:39:45'),
(4012, 2, 3009, 1002, '2021-08-16 05:39:45'),
(4013, 3, 3008, 1001, '2021-08-16 05:39:45'),
(4014, 4, 3007, 1002, '2021-08-16 05:39:45'),
(4015, 5, 3006, 1001, '2021-08-16 05:39:45'),
(4016, 6, 3005, 1002, '2021-08-16 05:39:45'),
(4017, 7, 3004, 1002, '2021-08-16 05:39:45'),
(4018, 8, 3003, 1001, '2021-08-16 05:39:45'),
(4019, 9, 3002, 1002, '2021-08-16 05:39:45'),
(4020, 10, 3001, 1002, '2021-08-16 05:39:45'),
(4021, 1, 3001, 1001, '2021-08-16 05:43:51'),
(4022, 2, 3009, 1002, '2021-08-16 05:43:51'),
(4023, 3, 3009, 1001, '2021-08-16 05:43:51'),
(4024, 4, 3007, 1002, '2021-08-16 05:43:51'),
(4025, 5, 3006, 1001, '2021-08-16 05:43:51'),
(4026, 6, 3006, 1002, '2021-08-16 05:43:51'),
(4027, 7, 3004, 1002, '2021-08-16 05:43:51'),
(4028, 8, 3008, 1001, '2021-08-16 05:43:51'),
(4029, 9, 3003, 1002, '2021-08-16 05:43:51'),
(4030, 10, 3002, 1002, '2021-08-16 05:43:51'),
(4031, 1, 3010, 1002, '2021-08-16 05:47:52'),
(4032, 2, 3009, 1002, '2021-08-16 05:47:52'),
(4033, 3, 3008, 1001, '2021-08-16 05:47:52'),
(4034, 4, 3007, 1002, '2021-08-16 05:47:52'),
(4035, 5, 3006, 1001, '2021-08-16 05:47:52'),
(4036, 6, 3005, 1002, '2021-08-16 05:47:52'),
(4037, 7, 3004, 1002, '2021-08-16 05:47:52'),
(4038, 8, 3003, 1001, '2021-08-16 05:47:52'),
(4039, 9, 3002, 1002, '2021-08-16 05:47:52'),
(4040, 10, 3001, 1002, '2021-08-16 05:47:52'),
(4041, 1, 3001, 1002, '2021-08-16 05:49:53'),
(4042, 2, 3001, 1002, '2021-08-16 05:49:53'),
(4043, 3, 3002, 1001, '2021-08-16 05:49:53'),
(4044, 4, 3002, 1002, '2021-08-16 05:49:53'),
(4045, 5, 3003, 1001, '2021-08-16 05:49:53'),
(4046, 6, 3003, 1002, '2021-08-16 05:49:53'),
(4047, 7, 3003, 1002, '2021-08-16 05:49:53'),
(4048, 8, 3004, 1001, '2021-08-16 05:49:53'),
(4049, 9, 3004, 1002, '2021-08-16 05:49:53'),
(4050, 10, 3005, 1002, '2021-08-16 05:49:53'),
(4051, 1, 3006, 1002, '2021-08-16 05:51:07'),
(4052, 2, 3006, 1002, '2021-08-16 05:51:07'),
(4053, 3, 3007, 1001, '2021-08-16 05:51:07'),
(4054, 4, 3007, 1002, '2021-08-16 05:51:07'),
(4055, 5, 3008, 1001, '2021-08-16 05:51:07'),
(4056, 6, 3008, 1002, '2021-08-16 05:51:07'),
(4057, 7, 3009, 1002, '2021-08-16 05:51:07'),
(4058, 8, 3009, 1001, '2021-08-16 05:51:07'),
(4059, 9, 3010, 1002, '2021-08-16 05:51:07'),
(4060, 10, 3010, 1002, '2021-08-16 05:51:07'),
(4061, 1, 3002, 1002, '2021-08-16 05:56:32'),
(4062, 2, 3002, 1002, '2021-08-16 05:56:32'),
(4063, 3, 3003, 1001, '2021-08-16 05:56:32'),
(4064, 4, 3003, 1002, '2021-08-16 05:56:32'),
(4065, 5, 3004, 1001, '2021-08-16 05:56:32'),
(4066, 6, 3004, 1002, '2021-08-16 05:56:32'),
(4067, 7, 3006, 1002, '2021-08-16 05:56:32'),
(4068, 8, 3006, 1001, '2021-08-16 05:56:32'),
(4069, 9, 3007, 1002, '2021-08-16 05:56:32'),
(4070, 10, 3007, 1002, '2021-08-16 05:56:32'),
(4071, 1, 3009, 1002, '2021-08-16 05:56:32'),
(4072, 2, 3009, 1002, '2021-08-16 05:56:32'),
(4073, 3, 3001, 1001, '2021-08-16 05:56:32'),
(4074, 4, 3001, 1002, '2021-08-16 05:56:32'),
(4075, 5, 3001, 1001, '2021-08-16 05:56:32'),
(4076, 6, 3008, 1002, '2021-08-16 05:56:32'),
(4077, 7, 3002, 1002, '2021-08-16 05:56:32'),
(4078, 8, 3002, 1001, '2021-08-16 05:56:32'),
(4079, 9, 3006, 1002, '2021-08-16 05:56:32'),
(4080, 10, 3001, 1002, '2021-08-16 05:56:32'),
(4081, 1, 3008, 1002, '2021-08-16 05:56:32'),
(4082, 2, 3009, 1002, '2021-08-16 05:56:32'),
(4083, 3, 3007, 1001, '2021-08-16 05:56:32'),
(4084, 4, 3007, 1002, '2021-08-16 05:56:32'),
(4085, 5, 3010, 1001, '2021-08-16 05:56:32'),
(4086, 6, 3004, 1002, '2021-08-16 05:56:32'),
(4087, 7, 3009, 1002, '2021-08-16 05:56:32'),
(4088, 8, 3006, 1001, '2021-08-16 05:56:32'),
(4089, 9, 3009, 1002, '2021-08-16 05:56:32'),
(4090, 10, 3006, 1002, '2021-08-16 05:56:32'),
(4091, 1, 3003, 1002, '2021-08-16 05:56:32'),
(4092, 2, 3009, 1002, '2021-08-16 05:56:32'),
(4093, 3, 3007, 1001, '2021-08-16 05:56:32'),
(4094, 4, 3003, 1002, '2021-08-16 05:56:32'),
(4095, 5, 3008, 1001, '2021-08-16 05:56:32'),
(4096, 6, 3006, 1002, '2021-08-16 05:56:32'),
(4097, 7, 3007, 1002, '2021-08-16 05:56:32'),
(4098, 8, 3004, 1001, '2021-08-16 05:56:32'),
(4099, 9, 3010, 1002, '2021-08-16 05:56:32'),
(4100, 10, 3001, 1002, '2021-08-16 05:56:32'),
(4101, 3, 3010, 1002, '2021-08-16 05:57:45'),
(4102, 3, 3009, 1002, '2021-08-16 05:57:51'),
(4103, 3, 3005, 1001, '2021-08-16 06:01:31'),
(4104, 4, 3005, 1001, '2021-08-16 06:01:37'),
(4105, 3, 3009, 1002, '2021-08-16 06:01:46'),
(4106, 3, 3005, 1001, '2021-08-16 06:01:47'),
(4107, 4, 3005, 1001, '2021-08-16 06:01:47'),
(4108, 4, 3005, 1001, '2021-08-16 06:01:47'),
(4109, 3, 3009, 1002, '2021-08-16 06:01:48'),
(4110, 3, 3005, 1001, '2021-08-16 06:01:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barangID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyerID`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`metodeID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pembelianID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barangID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3011;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buyerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `metodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pembelianID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
