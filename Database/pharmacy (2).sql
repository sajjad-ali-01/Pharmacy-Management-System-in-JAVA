-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 02:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billID` varchar(200) NOT NULL,
  `billDate` date DEFAULT NULL,
  `totalPaid` decimal(50,0) DEFAULT NULL,
  `generatedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billID`, `billDate`, `totalPaid`, `generatedBy`) VALUES
('202401091310429090875', '2024-01-09', 816, 'Sajjad'),
('202401091313046915934', '2024-01-09', 612, 'Sajjad'),
('202401091347044330010', '2024-01-09', 560, 'Sajjad'),
('202401091419579020081', '2024-01-09', 280, 'Sajjad'),
('202401091423243500030', '2024-01-09', 112, 'Sajjad'),
('202401091428566170062', '2024-01-09', 112, 'Sajjad'),
('202401091434580020013', '2024-01-09', 112, 'Sajjad'),
('202401091503393770053', '2024-01-09', 56, 'Sajjad'),
('202401091515113380055', '2024-01-09', 112, 'Sajjad'),
('202401091623287640021', '2024-01-09', 112, 'Sajjad'),
('202401100852180620069', '2024-01-10', 112, 'Sajjad'),
('202401100911385480018', '2024-01-10', 56, NULL),
('202401100932308420082', '2024-01-10', 56, NULL),
('202401100939233130088', '2024-01-10', 56, NULL),
('202401100949265960053', '2024-01-10', 56, NULL),
('202401100954229300071', '2024-01-10', 56, NULL),
('202401100956055330014', '2024-01-10', 56, NULL),
('202401100957481000033', '2024-01-10', 56, NULL),
('202401100959472240041', '2024-01-10', 56, NULL),
('202401101006393590030', '2024-01-10', 460, 'Sajjad'),
('202401101008534080005', '2024-01-10', 146, NULL),
('202401101010588920010', '2024-01-10', 101, NULL),
('202401101016020100011', '2024-01-10', 45, NULL),
('202401101018130830085', '2024-01-10', 45, NULL),
('202401101021122700004', '2024-01-10', 45, NULL),
('202401101748235310055', '2024-01-10', 45, NULL),
('202401101754249960009', '2024-01-10', 200, NULL),
('202401101807481870085', '2024-01-10', 175, NULL),
('202401101809394800086', '2024-01-10', 110, NULL),
('202401102138548010070', '2024-01-10', 110, 'Ali'),
('202401150543468850053', '2024-01-15', 1100, 'Ali'),
('202401150804442410091', '2024-01-15', 135, 'Ali'),
('202401151106428050647', '2024-01-15', 0, 'Ali');

-- --------------------------------------------------------

--
-- Table structure for table `expire`
--

CREATE TABLE `expire` (
  `MedicineID` varchar(50) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expire`
--

INSERT INTO `expire` (`MedicineID`, `Name`, `ExpiryDate`) VALUES
('2', 'Medicine B', '2024-05-20'),
('3', 'Medicine C', '2024-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(30) NOT NULL,
  `MedicineID` varchar(100) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `CompanyName` varchar(50) NOT NULL,
  `MFGDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `MG` varchar(50) NOT NULL,
  `Quantity` int(40) NOT NULL,
  `PricePerUnit` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `MedicineID`, `Name`, `CompanyName`, `MFGDate`, `ExpiryDate`, `MG`, `Quantity`, `PricePerUnit`) VALUES
(13, '1243', 'panadol', 'sdfs', '2024-01-04', '2024-01-13', '5', 58, 45),
(14, '123', 'etipro', 'sajjad', '2024-01-03', '2024-01-26', '20', 1, 20),
(15, '456', 'etipro 40mg', 'sdf', '2024-01-05', '2024-01-20', '1', 46, 45);

-- --------------------------------------------------------

--
-- Table structure for table `out_of_stock`
--

CREATE TABLE `out_of_stock` (
  `OutOfStockID` int(11) NOT NULL,
  `MedicineID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ExpiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `out_of_stock`
--

INSERT INTO `out_of_stock` (`OutOfStockID`, `MedicineID`, `Name`, `ExpiryDate`) VALUES
(3, 'S4-CDA-MSDF-G5M', 'dasdf', '2024-01-06'),
(5, 'S3-CPA-MSDF-G5M', 'pana', '2024-01-13'),
(6, '123', 'etipro', '2024-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `return_bill`
--

CREATE TABLE `return_bill` (
  `returnBillID` varchar(50) NOT NULL,
  `returnDate` date DEFAULT NULL,
  `totalReturned` int(30) DEFAULT NULL,
  `generatedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_bill`
--

INSERT INTO `return_bill` (`returnBillID`, `returnDate`, `totalReturned`, `generatedBy`) VALUES
('202401150808535520182', '2024-01-15', 90, 'Ali'),
('202401150809412500017', '2024-01-15', 180, 'Ali'),
('202401151108528820143', '2024-01-15', 135, 'Ali'),
('202401151114252900215', '2024-01-15', 20, 'Ali'),
('202401151131053770553', '2024-01-15', 135, 'Ali'),
('202401151141401900829', '2024-01-15', 180, 'Ali');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `Joiningdate` date NOT NULL,
  `mobile_number` varchar(30) NOT NULL,
  `IdCardNo` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `Salary` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_role`, `name`, `Joiningdate`, `mobile_number`, `IdCardNo`, `username`, `password`, `Salary`) VALUES
(1, 'Admin', 'Sajjad', '2024-01-03', '12344321123', '23423432342342', 'Sajjad', '123', 3455),
(2, 'Pharmacist', 'Sajjad', '2024-01-04', '12345678654', '34234325234234', 'Ali', '1234', 345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billID`);

--
-- Indexes for table `expire`
--
ALTER TABLE `expire`
  ADD PRIMARY KEY (`MedicineID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `out_of_stock`
--
ALTER TABLE `out_of_stock`
  ADD PRIMARY KEY (`OutOfStockID`);

--
-- Indexes for table `return_bill`
--
ALTER TABLE `return_bill`
  ADD PRIMARY KEY (`returnBillID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `out_of_stock`
--
ALTER TABLE `out_of_stock`
  MODIFY `OutOfStockID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
