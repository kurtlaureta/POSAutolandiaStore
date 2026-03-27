-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2026 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `point_of_sale_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`) VALUES
(1, 'Junkfoods', '2026-03-24 04:24:57'),
(2, 'Canned Products', '2026-03-24 04:24:57'),
(3, 'Beverages', '2026-03-24 04:24:57'),
(4, 'Biscuits', '2026-03-24 04:24:57'),
(5, 'Instant Noodles', '2026-03-24 04:24:57'),
(6, 'Other Goods', '2026-03-24 04:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `daily_sales`
--

CREATE TABLE `daily_sales` (
  `id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `total_transactions` int(11) NOT NULL DEFAULT 0,
  `total_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_sales`
--

INSERT INTO `daily_sales` (`id`, `sale_date`, `total_transactions`, `total_items_sold`, `total_sales`, `created_at`, `updated_at`) VALUES
(1, '2026-03-01', 2, 5, 100.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(2, '2026-03-02', 2, 5, 111.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(3, '2026-03-03', 2, 7, 118.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(4, '2026-03-04', 2, 4, 129.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(5, '2026-03-05', 2, 4, 88.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(6, '2026-03-06', 2, 5, 100.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(7, '2026-03-07', 2, 5, 93.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(8, '2026-03-08', 2, 8, 123.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(9, '2026-03-09', 2, 4, 92.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17'),
(10, '2026-03-10', 2, 8, 150.00, '2026-03-27 08:00:17', '2026-03-27 08:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_image`, `category_id`, `price`, `stock_qty`, `created_at`, `updated_at`) VALUES
(21, 'Coca-Cola 295ml', 'default.png', 1, 20.00, 50, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(22, 'Pepsi 295ml', 'default.png', 1, 20.00, 44, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(23, 'Sprite 295ml', 'default.png', 1, 20.00, 37, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(24, 'Royal 295ml', 'default.png', 1, 20.00, 34, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(25, 'Mountain Dew 295ml', 'default.png', 1, 20.00, 29, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(26, 'Wilkins Water 500ml', 'default.png', 1, 18.00, 59, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(27, 'C2 Apple 355ml', 'default.png', 1, 18.00, 25, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(28, 'C2 Lemon 355ml', 'default.png', 1, 18.00, 24, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(29, 'Piattos Cheese', 'default.png', 2, 22.00, 39, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(30, 'Nova Country Cheddar', 'default.png', 2, 20.00, 33, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(31, 'V-Cut BBQ', 'default.png', 2, 20.00, 28, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(32, 'Boy Bawang Garlic', 'default.png', 2, 18.00, 24, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(33, 'Skyflakes Crackers', 'default.png', 2, 15.00, 49, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(34, 'Hansel Mocha', 'default.png', 2, 10.00, 58, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(35, 'Oreo Vanilla', 'default.png', 2, 12.00, 54, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(36, 'Chippy BBQ', 'default.png', 2, 10.00, 44, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(37, 'Argentina Corned Beef', 'default.png', 3, 35.00, 29, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(38, '555 Sardines Tomato', 'default.png', 3, 28.00, 49, '2026-03-27 07:51:37', '2026-03-27 08:00:29'),
(39, 'Mega Sardines', 'default.png', 3, 27.00, 45, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(40, 'Century Tuna Flakes in Oil', 'default.png', 3, 38.00, 35, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(41, 'Ligo Sardines Green', 'default.png', 3, 26.00, 40, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(42, 'CDO Meat Loaf', 'default.png', 3, 30.00, 20, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(43, 'Lucky Me Pancit Canton Chili', 'default.png', 4, 16.00, 60, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(44, 'Lucky Me Pancit Canton Kalamansi', 'default.png', 4, 16.00, 60, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(45, 'Lucky Me Beef Noodles', 'default.png', 4, 15.00, 50, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(46, 'Payless Xtra Big Beef', 'default.png', 4, 20.00, 35, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(47, 'Nissin Ramen Seafood', 'default.png', 4, 18.00, 30, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(48, 'Colgate Toothpaste 100ml', 'default.png', 5, 85.00, 20, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(49, 'Closeup Toothpaste 100ml', 'default.png', 5, 82.00, 18, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(50, 'Palmolive Shampoo Sachet', 'default.png', 5, 7.00, 100, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(51, 'Cream Silk Sachet', 'default.png', 5, 8.00, 90, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(52, 'Safeguard White 135g', 'default.png', 5, 42.00, 35, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(53, 'Dove Soap 90g', 'default.png', 5, 55.00, 20, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(54, 'Surf Powder 65g', 'default.png', 6, 12.00, 80, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(55, 'Tide Powder 66g', 'default.png', 6, 13.00, 75, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(56, 'Joy Dishwashing Liquid 80ml', 'default.png', 6, 25.00, 30, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(57, 'Zonrox Bleach 250ml', 'default.png', 6, 22.00, 25, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(58, 'Baygon Multi-Insect Killer', 'default.png', 6, 145.00, 10, '2026-03-27 07:51:37', '2026-03-27 07:51:37'),
(59, 'Champion Fabric Conditioner Sachet', 'default.png', 6, 7.00, 90, '2026-03-27 07:51:37', '2026-03-27 07:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_barcodes`
--

CREATE TABLE `product_barcodes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `is_sold` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cash_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `change_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `receipt_no`, `total_amount`, `cash_amount`, `change_amount`, `created_at`) VALUES
(1, 'RCPT-20260301-0001', 60.00, 100.00, 40.00, '2026-03-01 00:15:00'),
(2, 'RCPT-20260301-0002', 40.00, 50.00, 10.00, '2026-03-01 01:30:00'),
(3, 'RCPT-20260302-0003', 76.00, 100.00, 24.00, '2026-03-02 02:10:00'),
(4, 'RCPT-20260302-0004', 35.00, 50.00, 15.00, '2026-03-02 03:20:00'),
(5, 'RCPT-20260303-0005', 64.00, 100.00, 36.00, '2026-03-03 04:00:00'),
(6, 'RCPT-20260303-0006', 54.00, 100.00, 46.00, '2026-03-03 05:10:00'),
(7, 'RCPT-20260304-0007', 44.00, 50.00, 6.00, '2026-03-04 00:40:00'),
(8, 'RCPT-20260304-0008', 85.00, 100.00, 15.00, '2026-03-04 01:50:00'),
(9, 'RCPT-20260305-0009', 30.00, 50.00, 20.00, '2026-03-05 02:35:00'),
(10, 'RCPT-20260305-0010', 58.00, 100.00, 42.00, '2026-03-05 03:45:00'),
(11, 'RCPT-20260306-0011', 40.00, 50.00, 10.00, '2026-03-06 04:30:00'),
(12, 'RCPT-20260306-0012', 60.00, 100.00, 40.00, '2026-03-06 06:00:00'),
(13, 'RCPT-20260307-0013', 57.00, 100.00, 43.00, '2026-03-07 07:20:00'),
(14, 'RCPT-20260307-0014', 36.00, 50.00, 14.00, '2026-03-07 08:10:00'),
(15, 'RCPT-20260308-0015', 75.00, 100.00, 25.00, '2026-03-08 00:25:00'),
(16, 'RCPT-20260308-0016', 48.00, 50.00, 2.00, '2026-03-08 01:55:00'),
(17, 'RCPT-20260309-0017', 42.00, 50.00, 8.00, '2026-03-09 02:15:00'),
(18, 'RCPT-20260309-0018', 50.00, 100.00, 50.00, '2026-03-09 05:40:00'),
(19, 'RCPT-20260310-0019', 66.00, 100.00, 34.00, '2026-03-10 03:00:00'),
(20, 'RCPT-20260310-0020', 84.00, 100.00, 16.00, '2026-03-10 07:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `product_name` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 1,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `transaction_id`, `product_id`, `barcode`, `product_name`, `price`, `qty`, `subtotal`, `created_at`) VALUES
(1, 1, 1, '4800010010001', 'Coca-Cola 295ml', 20.00, 2, 40.00, '2026-03-01 00:15:00'),
(2, 1, 13, '4800010010061', 'Skyflakes Crackers', 20.00, 1, 20.00, '2026-03-01 00:15:00'),
(3, 2, 2, '4800010010006', 'Pepsi 295ml', 20.00, 2, 40.00, '2026-03-01 01:30:00'),
(4, 3, 17, '4800010010081', 'Argentina Corned Beef', 35.00, 1, 35.00, '2026-03-02 02:10:00'),
(5, 3, 18, '4800010010086', '555 Sardines Tomato', 28.00, 1, 28.00, '2026-03-02 02:10:00'),
(6, 3, 36, '4800010010176', 'Tide Powder 66g', 13.00, 1, 13.00, '2026-03-02 02:10:00'),
(7, 4, 22, '4800010010106', 'CDO Meat Loaf', 30.00, 1, 30.00, '2026-03-02 03:20:00'),
(8, 4, 14, '4800010010066', 'Hansel Mocha', 5.00, 1, 5.00, '2026-03-02 03:20:00'),
(9, 5, 9, '4800010010041', 'Piattos Cheese', 22.00, 2, 44.00, '2026-03-03 04:00:00'),
(10, 5, 16, '4800010010076', 'Chippy BBQ', 10.00, 2, 20.00, '2026-03-03 04:00:00'),
(11, 6, 3, '4800010010011', 'Sprite 295ml', 20.00, 1, 20.00, '2026-03-03 05:10:00'),
(12, 6, 4, '4800010010016', 'Royal 295ml', 20.00, 1, 20.00, '2026-03-03 05:10:00'),
(13, 6, 15, '4800010010071', 'Oreo Vanilla', 14.00, 1, 14.00, '2026-03-03 05:10:00'),
(14, 7, 5, '4800010010021', 'Mountain Dew 295ml', 18.00, 1, 18.00, '2026-03-04 00:40:00'),
(15, 7, 6, '4800010010026', 'Wilkins Water 500ml', 13.00, 2, 26.00, '2026-03-04 00:40:00'),
(16, 8, 28, '4800010010136', 'Colgate Toothpaste 100ml', 85.00, 1, 85.00, '2026-03-04 01:50:00'),
(17, 9, 13, '4800010010062', 'Skyflakes Crackers', 15.00, 2, 30.00, '2026-03-05 02:35:00'),
(18, 10, 19, '4800010010091', 'Mega Sardines', 27.00, 1, 27.00, '2026-03-05 03:45:00'),
(19, 10, 20, '4800010010096', 'Century Tuna Flakes in Oil', 31.00, 1, 31.00, '2026-03-05 03:45:00'),
(20, 11, 1, '4800010010002', 'Coca-Cola 295ml', 20.00, 2, 40.00, '2026-03-06 04:30:00'),
(21, 12, 2, '4800010010007', 'Pepsi 295ml', 20.00, 3, 60.00, '2026-03-06 06:00:00'),
(22, 13, 17, '4800010010082', 'Argentina Corned Beef', 35.00, 1, 35.00, '2026-03-07 07:20:00'),
(23, 13, 6, '4800010010027', 'Wilkins Water 500ml', 22.00, 1, 22.00, '2026-03-07 07:20:00'),
(24, 14, 14, '4800010010067', 'Hansel Mocha', 10.00, 1, 10.00, '2026-03-07 08:10:00'),
(25, 14, 16, '4800010010077', 'Chippy BBQ', 10.00, 1, 10.00, '2026-03-07 08:10:00'),
(26, 14, 13, '4800010010063', 'Skyflakes Crackers', 16.00, 1, 16.00, '2026-03-07 08:10:00'),
(27, 15, 34, '4800010010166', 'Surf Powder 65g', 12.00, 2, 24.00, '2026-03-08 00:25:00'),
(28, 15, 35, '4800010010171', 'Tide Powder 66g', 13.00, 1, 13.00, '2026-03-08 00:25:00'),
(29, 15, 37, '4800010010181', 'Joy Dishwashing Liquid 80ml', 25.00, 1, 25.00, '2026-03-08 00:25:00'),
(30, 15, 38, '4800010010186', 'Zonrox Bleach 250ml', 13.00, 1, 13.00, '2026-03-08 00:25:00'),
(31, 16, 23, '4800010010111', 'Lucky Me Pancit Canton Chili', 16.00, 3, 48.00, '2026-03-08 01:55:00'),
(32, 17, 24, '4800010010116', 'Lucky Me Pancit Canton Kalamansi', 16.00, 1, 16.00, '2026-03-09 02:15:00'),
(33, 17, 25, '4800010010121', 'Lucky Me Beef Noodles', 15.00, 1, 15.00, '2026-03-09 02:15:00'),
(34, 17, 26, '4800010010126', 'Payless Xtra Big Beef', 11.00, 1, 11.00, '2026-03-09 02:15:00'),
(35, 18, 29, '4800010010141', 'Closeup Toothpaste 100ml', 50.00, 1, 50.00, '2026-03-09 05:40:00'),
(36, 19, 30, '4800010010146', 'Palmolive Shampoo Sachet', 7.00, 2, 14.00, '2026-03-10 03:00:00'),
(37, 19, 31, '4800010010151', 'Cream Silk Sachet', 8.00, 2, 16.00, '2026-03-10 03:00:00'),
(38, 19, 32, '4800010010156', 'Safeguard White 135g', 36.00, 1, 36.00, '2026-03-10 03:00:00'),
(39, 20, 33, '4800010010161', 'Dove Soap 90g', 55.00, 1, 55.00, '2026-03-10 07:30:00'),
(40, 20, 6, '4800010010028', 'Wilkins Water 500ml', 13.00, 1, 13.00, '2026-03-10 07:30:00'),
(41, 20, 14, '4800010010068', 'Hansel Mocha', 16.00, 1, 16.00, '2026-03-10 07:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `status` enum('online','offline') NOT NULL DEFAULT 'offline',
  `last_activity` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `role`, `status`, `last_activity`, `created_at`) VALUES
(5, 'System Administrator', 'admin', '$2y$10$uex4.Y4gIVWGUlDyXYXfPO9Bd2pHN9ZJmaZja2tL3Tsfb72X2tVIm', 'admin', 'offline', '2026-03-27 17:25:53', '2026-03-25 15:08:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `daily_sales`
--
ALTER TABLE `daily_sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_date` (`sale_date`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `receipt_no` (`receipt_no`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `daily_sales`
--
ALTER TABLE `daily_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  ADD CONSTRAINT `product_barcodes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
