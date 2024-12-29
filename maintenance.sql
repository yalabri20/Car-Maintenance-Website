-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2024 at 06:35 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maintenance`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(30) NOT NULL,
  `customer_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `car_plate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `car_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `phone`, `car_plate`, `car_name`) VALUES
('4413', 'omer', '0552906001', '5487-mnb', 'MAZDA'),
('4423', 'talal', '0552946086', '1222-hqw', 'NISSAN'),
('4431', 'yousef', '0552946040', '1234-hfv', 'TOYOTA');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `employee_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `phone`, `email`, `username`, `password`, `employee_type`, `pic`) VALUES
(1432, 'Yousef', '0552745151', 'you1@gmail.com', 'you', '123321', 'manager', 'image2.jpg'),
(2232, 'Salem', '0552745160', 'you123@gmail.com', 'Salem', '1233211', 'employee', 'image4.jpg'),
(120120, 'nasser', '151515', 'nasser@gmail.com', 'naser', 'phone', 'employee', 'mage1.jpg'),
(999555, 'shouq', '0553125454', 'shouq@gmail.com', 'shouq', 'shouq1111', 'manager', 'image8.jpeg'),
(1128999, 'Khaled', '0552948080', 'Kh@gmail.com', 'Khaled123', '123455tgv', 'employee', 'image3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_order`
--

CREATE TABLE `maintenance_order` (
  `car_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `car_plate` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maintenance_order`
--

INSERT INTO `maintenance_order` (`car_id`, `customer_name`, `phone`, `issue`, `car_plate`, `cost`, `time`) VALUES
(0, NULL, '0552324655', 'bbreaks', '5656', '5', '2024-10-12'),
(10, 'Talal', '0554447878', 'wipers, air_filter, ac', 'yyy-11', '20', '2024-05-12'),
(11, 'yousef', '0552946040', 'wipers, air_filter', 'uyu-1221', '12', '2024-12-12'),
(20, 'Omar', '0554446000', 'air_filter, fuel_filter', 'a-10', '20', '2024-12-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `car_plate` (`car_plate`) USING BTREE;

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `maintenance_order`
--
ALTER TABLE `maintenance_order`
  ADD PRIMARY KEY (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
