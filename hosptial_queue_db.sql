-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2026 at 03:12 PM
-- Server version: 11.4.12-MariaDB-cll-lve-log
-- PHP Version: 8.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altevtcj_informationschema`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `unit` varchar(20) DEFAULT 'pcs',
  `price` decimal(10,2) DEFAULT 0.00,
  `expiry_date` date DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `batch_no`, `quantity`, `unit`, `price`, `expiry_date`, `manufacturer`, `created_at`) VALUES
(2, 'Panadal', '1314253', 0, 'pcs', 20000.00, NULL, NULL, '2025-11-19 12:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_given`
--

CREATE TABLE `medicine_given` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `given_at` datetime DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_given`
--

INSERT INTO `medicine_given` (`id`, `visit_id`, `medicine_id`, `qty`, `staff_id`, `given_at`, `notes`) VALUES
(1, 15, 2, 1, 1, '2026-03-30 11:17:23', '11'),
(2, 18, 2, 25, 9, '2026-03-30 17:48:26', '1*3'),
(3, 18, 2, 23, 9, '2026-03-30 17:49:07', '1*3'),
(4, 54, 2, 1, 16, '2026-04-13 08:53:43', '2*3');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emergency_contact` varchar(50) DEFAULT NULL,
  `preferred_language` varchar(20) DEFAULT 'en',
  `deleted_at` datetime DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `gender`, `dob`, `phone`, `email`, `emergency_contact`, `preferred_language`, `deleted_at`, `blood_group`, `address`, `created_at`) VALUES
(1, 'Emmanuel', 'Morgan', NULL, '2025-11-13', '0705015316', NULL, NULL, 'en', NULL, NULL, 'Seeta\r\nGwaffu road', '2025-11-07 10:47:25'),
(2, 'Angella', 'Shauri', NULL, '2025-11-13', '0705015316', NULL, NULL, 'en', NULL, NULL, 'Seeta\r\nGwaffu road', '2025-11-07 11:11:00'),
(3, 'Douglas', 'Bogere', NULL, '2025-11-19', '0705015316', NULL, NULL, 'en', NULL, NULL, 'Naguru', '2025-11-07 11:15:57'),
(4, 'Emmanuel', 'Morgan', NULL, '2025-11-12', '0705015316', NULL, NULL, 'en', NULL, NULL, 'Seeta\r\nGwaffu road', '2025-11-13 04:20:54'),
(5, 'Yakol', 'Emaa', NULL, '2025-11-19', '+256766263812', NULL, NULL, 'en', NULL, NULL, 'Palisa', '2025-11-19 07:16:33'),
(6, 'Hillary', 'Opolot', NULL, '2025-11-19', '+256766263812', NULL, NULL, 'en', NULL, NULL, 'Kampala', '2025-11-19 09:31:05'),
(7, 'Hillary', 'Okwele', NULL, '2025-11-19', '+256766263812', NULL, NULL, 'en', NULL, NULL, 'Kampala', '2025-11-19 09:32:43'),
(8, 'Valentine', 'Okia', NULL, '2025-11-19', '+256766263812', NULL, NULL, 'en', NULL, NULL, 'Pallisa', '2025-11-19 09:36:30'),
(9, 'Anthony', 'Olupot', NULL, '2025-11-19', '+256766263812', NULL, NULL, 'en', NULL, NULL, 'Kampala', '2025-11-19 09:37:24'),
(10, 'Itadal', 'Agnes', NULL, '2025-11-19', '+256766263812', NULL, NULL, 'en', NULL, NULL, 'Kumi', '2025-11-19 09:38:10'),
(11, 'Rose', 'Esther', NULL, '2025-11-11', '0758077892', NULL, NULL, 'en', NULL, NULL, 'Kampala', '2025-11-19 14:54:15'),
(12, 'Ichibu', 'Faith', NULL, '2025-11-19', '0783722230', NULL, NULL, 'en', NULL, NULL, 'Kampala', '2025-11-19 14:57:35'),
(13, 'Okalebo', 'Smith', NULL, '2025-11-21', '075321456', NULL, NULL, 'en', NULL, NULL, 'PALLISA', '2025-11-21 06:09:50'),
(14, 'Mujoke', 'Williams', NULL, '2025-11-21', '0703798116', NULL, NULL, 'en', NULL, NULL, 'Kibuki', '2025-11-21 06:12:05'),
(15, 'Kolositika', 'Sharon', NULL, '2025-11-21', '0758854490', NULL, NULL, 'en', NULL, NULL, 'Kibuku', '2025-11-21 06:57:11'),
(16, 'Dero', 'Man', NULL, '2025-11-21', '075856654585', NULL, NULL, 'en', NULL, NULL, 'Kampala', '2025-11-21 10:20:50'),
(17, 'Isma', 'Boy', NULL, '2025-12-05', '0875848868', NULL, NULL, 'en', NULL, NULL, 'Ug', '2025-12-05 00:58:49'),
(18, 'Dongo', 'Erisha', NULL, '2025-12-05', '0758854490', NULL, NULL, 'en', NULL, NULL, 'PALLISA', '2025-12-05 03:32:06'),
(19, 'Hajjat', 'Madison', NULL, '2026-03-30', '0703580111', NULL, NULL, 'en', NULL, NULL, 'Washington', '2026-03-30 03:08:06'),
(21, 'Joseph', 'Kabuleta', 'Male', '2026-03-30', '0703580111', 'douglas@gmail.com', '0782498220', 'en', NULL, 'O+', 'Kampala', '2026-03-30 09:41:09'),
(22, 'Emma', 'Debwaz', 'Male', '2026-03-03', '0703580111', 'douglas@gmail.com', '0782498220', 'en', NULL, '', 'Muyenga Hill', '2026-03-30 09:45:45'),
(23, 'Nelson', 'Barrack Bush Clinton', 'Male', '2026-03-03', '0703580111', 'bushwashington@gmail.com', '0782498220', 'en', NULL, 'AB+', 'White House castle', '2026-03-30 09:48:19'),
(25, 'Akol', 'Emmanuel', 'Male', '2026-03-01', '', '', '', 'en', NULL, 'O+', '', '2026-03-30 10:41:27'),
(26, 'Akol', 'Emmanuel', 'Male', '2026-03-01', '', '', '', 'en', NULL, 'O+', '', '2026-03-30 10:41:47'),
(27, 'Antony', 'Olupot', '', '2025-03-02', '0766263812', 'gmasaba17@gmail.com', '', 'en', NULL, 'O+', 'Kampala', '2026-03-30 13:09:09'),
(28, 'Olupot', 'Antony', '', '2025-06-21', '0766254546', 'ariongcharlespatrick27@gmail.com', 'Kamonkoli Rd', 'ateso', NULL, 'A+', 'Kamonkoli Rd, Pallisa, Uganda', '2026-03-30 13:10:52'),
(29, 'Tonny', 'Baalam', 'Male', '2024-02-15', '0766484546', 'gmasaba17@gmail.com', '0764846425', 'ateso', NULL, '', 'Kamonkoli Rd, Pallisa, Uganda', '2026-03-30 13:17:33'),
(30, 'Moses', 'Odongo', '', '2022-12-14', '', '', '', 'ateso', NULL, '', '', '2026-03-30 13:21:43'),
(31, 'Tino', 'Okia', 'Male', '2025-01-23', '0704846455', 'gmasaba17@gmail.com', 'Kamonkoli Rd', 'en', NULL, 'O-', 'Kamonkoli Rd, Pallisa, Uganda', '2026-03-30 13:23:25'),
(32, 'Emmanuel', 'Morgan', '', NULL, '0705015316', 'test@gmail.com', 'Test', 'en', NULL, 'A-', 'Seeta\nGwaffu road', '2026-03-30 15:57:31'),
(33, 'Emmanuel', 'Morgan', 'Male', NULL, '0705015316', 'test@gmail.com', 'test', 'en', NULL, '', 'Seeta\nGwaffu road', '2026-03-30 16:11:42'),
(34, 'Joan', 'Grace', 'Female', '2026-03-31', '0775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, 'O-', 'Uganda', '2026-03-31 10:30:48'),
(35, 'SINYO', 'PHILLEX JULIUS', 'Male', '2026-03-31', '0703798116', 'phillexjulius@gmail.com', '0761511908', 'en', NULL, 'B+', 'Kibuku district', '2026-03-31 12:32:31'),
(36, 'SINYO', 'PHILLEX JULIUS', 'Male', '2026-03-31', '0703798116', 'phillexjulius@gmail.com', '0761511908', 'en', NULL, 'B+', 'Kibuku', '2026-03-31 12:36:58'),
(37, 'SINYO', 'PHILLEX JULIUS', 'Male', '2026-03-31', '0703798116', 'phillexjulius@gmail.com', '0761511908', 'en', NULL, 'B+', 'Kibuku', '2026-03-31 12:37:24'),
(38, 'Olupot', 'Antony', 'Male', '2026-03-31', '0758854490', 'phillexjulius@gmail.com', '0761511908', 'en', NULL, 'A-', 'PALLISA', '2026-03-31 12:44:49'),
(39, 'Rose Eseza', 'Aoja', 'Female', '2026-03-31', '0772589998', 'okalebosmith5@gmail.com', '', 'en', NULL, 'O+', 'Uganda', '2026-03-31 15:32:07'),
(40, 'Asengo', 'Anna', '', '2026-03-31', '0775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, 'O-', 'Uganda', '2026-03-31 15:38:15'),
(41, 'Okalebo', 'Ian Smith', 'Male', '2026-03-11', '+256775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, '', 'Uganda', '2026-03-31 16:04:43'),
(42, 'Okalebo', 'Ian Smith', 'Male', '2026-03-11', '+256775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, '', 'Uganda', '2026-03-31 16:04:50'),
(43, 'Rose Eseza', 'Aoja', 'Female', '2026-03-31', '0775899489', 'okalebosmith5@gmail.com', '', 'swahili', NULL, '', 'Uganda', '2026-03-31 16:14:43'),
(44, 'Asengo', 'Anna', 'Female', '2026-03-31', '0775899489', 'okalebosmith5@gmail.com', '', 'acholi', NULL, 'O-', 'Uganda', '2026-03-31 16:16:09'),
(45, 'Okalebo', 'Ian Smith', '', '2026-03-31', '0775899489', 'okalebosmith5@gmail.com', '', 'lango', NULL, '', 'Uganda', '2026-03-31 16:17:43'),
(46, 'Okalebo', 'Ian Smith', 'Male', '2026-03-31', '0775899489', 'okalebosmith5@gmail.com', '', 'luganda', NULL, '', 'Uganda', '2026-03-31 16:21:53'),
(48, 'SINYO', 'Phillips', 'Male', '2026-04-02', '0703798116', 'phillexjulius@gmail.com', '0761511908', 'en', NULL, 'O+', 'PALLISA', '2026-04-02 08:09:05'),
(49, 'Apio', 'Vanisha', '', '2025-01-16', '', '', 'Kamonkoli Rd', 'ateso', NULL, 'AB+', 'Kamonkoli Rd, Pallisa, Uganda', '2026-04-02 14:56:24'),
(50, 'Gregory', 'Muntu', 'Male', '2026-04-08', '0703580111', 'newnation747@gmail.com', '0782498220', 'en', NULL, 'AB-', 'Hello bro I have a motorcycle license', '2026-04-08 14:32:33'),
(51, 'simon', 'samson', 'Male', '2026-04-09', '4567822222', 'phillexjulius@gmail.com', '2333333333', 'en', NULL, 'AB+', 'phillexjulius@gmail.com', '2026-04-09 05:11:38'),
(52, 'julius', 'opio', 'Male', '2026-04-22', '4567822222', 'phillexjulius@gmail.com', '2333333333', 'en', NULL, 'AB-', 'kampala', '2026-04-13 08:36:12'),
(53, 'opio', 'james', 'Male', '2026-04-13', '0703798116', 'phillexjgfglius@gmail.com', '2333333333', 'en', NULL, 'AB+', 'phillexjulius@gmail.com', '2026-04-13 08:42:55'),
(54, 'DGFBHGD', 'FGG', 'Female', '2026-04-13', '353535353', 'andrewakena73@gmail.com', '244532452', 'en', NULL, 'AB+', 'DEGE', '2026-04-13 09:53:21'),
(55, 'WAGADYA', 'MOSES', 'Male', '2026-04-16', '4567822222', 'phillexjulius@gmail.com', '2333333333', 'en', NULL, 'O+', 'kampala', '2026-04-16 08:17:07'),
(56, 'robert', 'barige', 'Male', '2026-04-17', '0703798116', 'phillexjgfglius@gmail.com', '2333333333', 'en', NULL, 'AB+', 'phillexjulius@gmail.com', '2026-04-17 09:14:40'),
(57, 'kamba', 'cassim', 'Male', '2026-04-16', '4567822222', 'phillexjulius@gmail.com', '2333333333', 'en', NULL, 'AB-', 'phillexjulius@gmail.com', '2026-04-19 05:48:40'),
(58, 'OLUPOT', 'Antonio', 'Male', '2026-06-12', '07664949464', 'itadalag@gmail.com', 'Kamonkoli Rd', 'ateso', NULL, 'AB+', 'Kamonkoli Rd, Pallisa, Uganda', '2026-06-11 19:04:52'),
(59, 'Ian Smith', 'Okalebo', 'Male', '2026-06-12', '0775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, '', 'Uganda', '2026-06-12 07:28:54'),
(60, 'Ian Smith', 'Okalebo', '', '2026-06-12', '0775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, '', 'Uganda', '2026-06-12 07:37:45'),
(61, 'Ian Smith', 'Okalebo', '', '2026-06-12', '0775899489', 'okalebosmith5@gmail.com', '', 'en', NULL, '', 'Uganda', '2026-06-12 07:37:47'),
(62, 'antony', 'opolot', 'Male', NULL, '123456', 'olupotantony@gamil.com', '1234567', 'en', NULL, 'O+', 'pallisA', '2026-06-14 06:46:41'),
(63, 'antony', 'opolot', 'Male', '2026-06-14', '123456', 'olupotantony@gamil.com', '1234567', 'en', NULL, 'AB+', 'PALLISA', '2026-06-14 07:37:02'),
(64, 'PAPAYO', 'YAHAYA', 'Male', '2026-06-14', '123456', 'olupotantony@gamil.com', '1234567', 'en', NULL, 'A+', 'PALLISA', '2026-06-14 07:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `key` varchar(100) NOT NULL,
  `value` longtext DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `updated_at`) VALUES
('app_name', 'Hospital Queue management System', '2026-06-11 19:15:01'),
('date_format', 'Y-m-d', '2026-03-30 08:55:34'),
('default_language', 'en', '2026-03-30 08:55:34'),
('enable_notifications', '0', '2026-03-30 08:55:34'),
('font_family', 'Inter, system-ui, sans-serif', '2026-04-02 04:40:26'),
('max_queue_display', '9', '2026-03-30 08:55:34'),
('primary_color', '#000000', '2026-03-30 08:55:34'),
('queue_timeout_minutes', '9', '2026-03-30 08:55:34'),
('sidebar_bg_color', '#55658b', '2026-03-30 09:04:31'),
('sidebar_bg_type', 'color', '2025-11-07 10:40:24'),
('time_format', 'H:i', '2026-03-30 08:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `position` varchar(100) DEFAULT 'Staff',
  `created_at` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `role`, `email`, `phone`, `position`, `created_at`, `last_login`, `is_active`) VALUES
(1, 'emma@123', '$2y$10$FW7i8UCkQDEj0jWaMEPuauCD.NPNVFUSX8x1DKmyoWPZTBL4lSZ2u', 'Emmanuel Morgan', 'admin', 'emmymorgan1278@gmail.com', NULL, 'Staff', '2025-11-07 10:44:42', '2026-03-31 03:18:40', 1),
(2, 'test', '$2y$10$lgcz2CziTj4SlvGU2IM43uapd/m/Hu2ZNlq.R8CWCkxMgfAbicVhu', 'Emmanuel Morgan', 'staff', 'test@gmail.com', '0705015316', 'Staff', '2025-11-07 10:47:02', '2025-11-07 10:47:10', 1),
(3, 'angellashauri@gmail.com', '$2y$10$ZVj1A6Ms595Ys72kEXySFugeniYbdQXcSUE7T0LStR.wYfyb8HrEK', 'Angella Shauri', 'admin', 'cashier@gmail.com', NULL, 'Staff', '2025-11-13 04:20:25', '2026-03-30 09:14:24', 1),
(4, 'moen', '$2y$10$10GZGtWiliVb8200km5IKu5lFaNZApR1XIkf4AsIw6/SEGnHZCaQi', 'douglas', 'admin', 'douglas@gmail.com', NULL, 'Staff', '2025-11-13 05:13:31', '2025-11-19 07:03:15', 1),
(5, 'Idi', '$2y$10$ZcICT1iO9G6NBERzPnVa7O/4sSjIEIjB1LayikENzvBTtsUOoxQgy', 'Olupot antony', 'admin', 'olupotantony9@gmail.com', NULL, 'Staff', '2025-11-19 07:11:06', '2025-11-19 12:13:02', 1),
(6, 'Ian Smith', '$2y$10$cEmmGEIPw9PZYpHbtLLdCOe83xlUNVsD7AoxLzBwDJNLN2N.8Vf9e', 'Okalebo Ian Smith', 'admin', 'okalebosmith5@gmail.com', NULL, 'Staff', '2025-11-19 07:31:36', '2026-06-12 07:36:32', 1),
(7, 'SINYO', '$2y$10$z8/8FRR8wJ20jTIBW14HgOZIas3eb7L1EUN8CsGVqh8bsnVCGEA4K', 'SINYO JULIUS FILIPO', 'admin', 'phillexjulius@gmail.com', NULL, 'Staff', '2025-11-21 06:07:45', '2026-04-02 08:07:33', 1),
(8, 'Barack10', '$2y$10$mPCkFVGiuePUfTBGcAxUdO/US9JhRXC55qhLI5rquuVuEid.OA/0O', 'Amutuhire Mubarraka', 'admin', 'barackdybala2@gmail.com', NULL, 'Staff', '2025-11-24 02:55:39', '2025-11-24 02:55:59', 1),
(9, 'Hello', '$2y$10$0WxkGhA1wF3BqdoQs4nOcOs6PjzcQyKX.RP9bx7mKm.j2EMavKANa', 'Hello', 'admin', 'douglas@gmail.com', NULL, 'Staff', '2026-03-30 03:00:56', '2026-06-09 17:01:23', 1),
(10, 'emma1@123', '$2y$10$KJ/XT6FZvbLT19dIsqBoGOYBXrL1fjDEMbhdPUvwPWNJwcTwNhJ6.', 'Emmanuel Morgan', 'staff', 'test@gmail.com', '0705015316', 'Staff', '2026-03-30 09:17:10', '2026-03-30 09:17:18', 1),
(11, 'Tonny', '$2y$10$rj1mzXdcSRjCmvU4jlgM..kTGdSMxGC0Xh.IeQAe301NCm9Ho6Ajm', 'Dr Antony', 'admin', 'olupotantony9@gmail.com', NULL, 'Staff', '2026-03-30 10:38:34', '2026-06-13 06:31:33', 1),
(12, 'johndoe', '$2y$10$lrrzk7PcLcEdYEuMV8PBkuiUXvrUR4KkB/iuFwFiZQbMapgENYvhC', 'John Doe', 'admin', 'admin@hospital.com', NULL, 'Staff', '2026-03-30 12:41:28', '2026-03-30 12:41:52', 1),
(13, 'emma2@123', '$2y$10$l.vuY0T9is.j0jDnpdYpW.rSR3A17EM8FzfJRbRuF5RWCMIbqA/pm', 'TEST TEST', 'admin', 'test@gmail.com', NULL, 'Staff', '2026-03-30 16:15:55', '2026-04-02 04:40:34', 1),
(14, 'Test1', '$2y$10$aZMdTk/uYxMhrpNSZo6jSOhsQmV1I8Moed3EDRQzllSptBMgvLFJu', 'TEST TEST', 'staff', 'emmymorgan1278@gmail.com', '0705015316e', 'Staff', '2026-04-02 06:21:09', NULL, 0),
(15, 'julio', '$2y$10$Gx2CT55qK7DIv/pw.4D0eO.5GJX2dPbQx0KeyV4hvnByG2ov3DZOO', 'julio', 'admin', 'phillexjulius@gmail.com', NULL, 'Staff', '2026-04-09 05:02:30', '2026-04-09 05:02:52', 1),
(16, 'amiss', '$2y$10$rnDKbuZdYg1C38ceSoqi6udmYRW94aOz5hBYWdDmW6lAmAzYU.3gC', 'amisalamu', 'admin', 'phillexjulius@gmail.com', NULL, 'Staff', '2026-04-13 08:33:54', '2026-04-19 05:45:38', 1),
(17, 'JULIUS', '$2y$10$Kw/W28eiUaaOfLB.Z4vLTeQZjYlsiX6/1D5sCgQl56VaRK8OZLoFS', 'SINYO', 'admin', 'phillexjulius@gmail.com', NULL, 'Staff', '2026-04-16 08:11:12', NULL, 1),
(18, 'TOM', '$2y$10$bILaJmbPvIOp2FdF..zXa.V.hiu0BPtH1wbulDlnKKbVcQQ/7r3EG', 'SINYO', 'admin', 'phillexjulius@gmail.com', NULL, 'Staff', '2026-04-16 08:13:45', NULL, 1),
(19, 'Emmanuel Morgan', '$2y$10$wMGlZVnshXSEIOaDKS08TejrUddl2KI2OiIU02mEhLUyluGLo0eAq', 'Emmanuel Morgan', 'admin', 'emmymorgan1278@gmail.com', NULL, 'Staff', '2026-04-19 14:04:08', '2026-06-11 06:51:05', 1),
(20, 'Priscilla', '$2y$10$OAabzezAf2kqZvwPYkAQGemWhsT5S1q/jk5JLgBrK3BbGfWJ2wuxa', 'Mutesi', 'admin', 'mpg@gmail.com', NULL, 'Staff', '2026-06-09 16:59:56', NULL, 1),
(21, 'smith', '$2y$10$UCk0jsI6jugSYk4kPuIzZupf8DL1enSd03BDVqBY9eTnXb296/9fC', 'DR TON', 'admin', 'olupotantony@gamil.com', NULL, 'Staff', '2026-06-14 06:45:08', '2026-06-14 07:35:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `record_number` varchar(50) NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('waiting','called','arrived','visited','served','cancelled') DEFAULT 'waiting',
  `assigned_staff_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `last_called_at` datetime DEFAULT NULL,
  `called_count` int(11) DEFAULT 0,
  `acknowledged_at` datetime DEFAULT NULL,
  `arrived_at` datetime DEFAULT NULL,
  `visited_at` datetime DEFAULT NULL,
  `served_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `patient_id`, `record_number`, `reason`, `status`, `assigned_staff_id`, `created_at`, `last_called_at`, `called_count`, `acknowledged_at`, `arrived_at`, `visited_at`, `served_at`, `cancelled_at`) VALUES
(1, 1, 'REC-20251107-0001', 'test', 'cancelled', NULL, '2025-11-07 10:47:25', '2025-11-07 10:47:37', 1, '2025-11-07 11:10:18', NULL, NULL, '2025-11-07 11:11:46', '2025-11-19 07:29:27'),
(2, 2, 'REC-20251107-0002', 'testr', 'cancelled', NULL, '2025-11-07 11:11:00', '2025-11-07 11:11:10', 1, '2025-11-07 11:11:52', NULL, NULL, '2025-11-07 11:16:48', '2025-11-19 07:29:30'),
(3, 3, 'REC-20251107-0003', 'test', 'cancelled', NULL, '2025-11-07 11:15:57', '2025-11-07 11:16:16', 1, '2025-11-07 11:16:37', NULL, NULL, '2025-11-07 11:16:50', '2025-11-19 07:29:31'),
(4, 4, 'REC-20251113-0001', 'bnm,', 'cancelled', NULL, '2025-11-13 04:20:54', '2025-11-13 04:21:05', 1, '2025-11-13 04:39:39', NULL, NULL, '2025-11-13 04:40:25', '2025-11-19 07:29:33'),
(5, 5, 'REC-20251119-0001', 'Headache', 'cancelled', NULL, '2025-11-19 07:16:33', '2025-11-19 07:18:00', 1, NULL, NULL, NULL, NULL, '2025-11-19 09:31:27'),
(6, 6, 'REC-20251119-0002', 'Test', 'cancelled', NULL, '2025-11-19 09:31:05', '2025-11-19 09:31:33', 1, NULL, NULL, NULL, NULL, '2025-11-19 09:33:13'),
(7, 7, 'REC-20251119-0003', 'Test', 'served', NULL, '2025-11-19 09:32:43', '2025-11-19 09:33:25', 1, '2025-11-19 09:35:19', NULL, NULL, '2025-11-19 09:40:22', NULL),
(8, 8, 'REC-20251119-0004', 'Lab test', 'served', NULL, '2025-11-19 09:36:30', '2025-11-19 09:38:37', 1, '2025-11-19 09:39:32', NULL, NULL, '2025-11-19 09:40:24', NULL),
(9, 9, 'REC-20251119-0005', 'Pharmacy', 'served', NULL, '2025-11-19 09:37:24', '2025-11-19 09:39:44', 1, '2025-11-19 09:40:36', NULL, '2026-03-30 11:16:56', '2026-04-13 08:56:11', NULL),
(10, 10, 'REC-20251119-0006', 'Test', 'served', NULL, '2025-11-19 09:38:10', '2025-11-19 09:40:44', 1, '2025-11-19 09:41:03', NULL, '2026-03-30 11:17:03', '2026-04-13 08:56:34', NULL),
(11, 11, 'REC-20251119-0007', 'Official', 'cancelled', NULL, '2025-11-19 14:54:15', '2025-11-19 14:54:38', 1, NULL, NULL, NULL, NULL, '2025-11-19 14:55:40'),
(12, 12, 'REC-20251119-0008', 'Official', 'served', NULL, '2025-11-19 14:57:35', '2025-11-19 14:57:46', 1, '2025-11-19 15:00:06', NULL, NULL, '2025-11-19 15:00:38', NULL),
(13, 13, 'REC-20251121-0001', 'Test', 'visited', NULL, '2025-11-21 06:09:50', '2025-11-21 06:10:13', 1, '2025-11-21 06:13:06', NULL, '2026-03-30 11:18:45', NULL, NULL),
(14, 14, 'REC-20251121-0002', 'Test', 'visited', NULL, '2025-11-21 06:12:05', '2025-11-21 06:58:29', 1, '2026-03-30 03:09:42', NULL, '2026-03-30 11:18:58', NULL, NULL),
(15, 15, 'REC-20251121-0003', 'Test malaria', 'visited', NULL, '2025-11-21 06:57:11', '2025-11-21 06:57:25', 1, '2025-11-21 06:59:25', NULL, '2026-03-30 11:19:03', NULL, NULL),
(16, 16, 'REC-20251121-0004', 'Test', 'visited', NULL, '2025-11-21 10:20:50', '2025-11-21 10:21:12', 1, '2026-03-30 11:18:30', '2026-03-30 11:18:30', '2026-03-30 11:29:50', NULL, NULL),
(17, 17, 'REC-20251205-0001', 'Official', 'visited', NULL, '2025-12-05 00:58:49', '2025-12-05 00:58:57', 1, '2026-03-30 11:18:33', '2026-03-30 11:18:33', '2026-03-30 11:30:02', NULL, NULL),
(18, 18, 'REC-20251205-0002', 'Test', 'visited', NULL, '2025-12-05 03:32:06', '2025-12-05 03:32:21', 1, '2026-03-30 11:18:36', '2026-03-30 11:18:36', '2026-04-02 06:19:08', NULL, NULL),
(19, 19, 'REC-20260330-0001', 'Antineoplastic', 'visited', NULL, '2026-03-30 03:08:06', '2026-03-30 03:10:23', 1, '2026-03-30 11:18:34', '2026-03-30 11:18:34', '2026-03-30 11:19:07', NULL, NULL),
(21, 21, 'PAT-69CA7D753DE0C', 'Checkup entirety', 'visited', 1, '2026-03-30 09:41:09', '2026-03-30 11:19:14', 1, '2026-03-30 11:29:40', '2026-03-30 11:29:40', '2026-04-16 08:20:58', NULL, NULL),
(22, 22, 'PAT-69CA7E89F271B', 'None', 'visited', 1, '2026-03-30 09:45:45', '2026-03-30 11:19:26', 1, '2026-03-30 13:24:46', '2026-03-30 13:24:46', '2026-06-11 19:13:02', NULL, NULL),
(23, 23, 'PAT-69CA7F235366E', 'To see the queen in england wales', 'cancelled', 9, '2026-03-30 09:48:19', '2026-03-30 11:39:05', 1, NULL, NULL, NULL, NULL, '2026-03-31 15:34:01'),
(25, 25, 'PAT-69CA8B9791999', 'Headache \r\nCough', 'visited', 9, '2026-03-30 10:41:27', '2026-03-30 11:39:21', 1, '2026-04-13 08:36:56', '2026-04-13 08:36:56', '2026-06-11 19:13:16', NULL, NULL),
(26, 26, 'PAT-69CA8BABCC937', 'Headache \r\nCough', 'arrived', 9, '2026-03-30 10:41:47', '2026-03-30 11:39:40', 1, '2026-04-13 08:49:36', '2026-04-13 08:49:36', NULL, NULL, NULL),
(27, 27, 'VIS-20260330-61A5B0', 'Lab', 'cancelled', NULL, '2026-03-30 13:09:10', NULL, 0, NULL, NULL, NULL, NULL, '2026-03-30 13:09:50'),
(28, 28, 'VIS-20260330-C79D0C', 'Lab', 'cancelled', NULL, '2026-03-30 13:10:52', NULL, 0, NULL, NULL, NULL, NULL, '2026-03-30 13:12:16'),
(29, 29, 'VIS-20260330-D8FF8C', 'Visit', 'cancelled', NULL, '2026-03-30 13:17:33', NULL, 0, NULL, NULL, NULL, NULL, '2026-03-30 13:18:19'),
(30, 30, 'VIS-20260330-796035', 'Lab', 'arrived', 11, '2026-03-30 13:21:43', '2026-03-30 13:22:10', 1, '2026-04-16 08:20:02', '2026-04-16 08:20:02', NULL, NULL, NULL),
(31, 31, 'VIS-20260330-E3E369', 'Dr', 'called', 11, '2026-03-30 13:23:26', '2026-03-30 13:24:13', 1, NULL, NULL, NULL, NULL, NULL),
(32, 32, 'VIS-20260330-BDF30B', 'bnbn', 'called', 1, '2026-03-30 15:57:31', '2026-03-30 15:57:38', 1, NULL, NULL, NULL, NULL, NULL),
(33, 33, 'VIS-20260330-F6B56C', 'bnb', 'called', 13, '2026-03-30 16:11:43', '2026-03-30 16:19:04', 1, NULL, NULL, NULL, NULL, NULL),
(34, 34, 'VIS-20260331-8DE75A', 'Official', 'called', 6, '2026-03-31 10:30:48', '2026-03-31 10:33:42', 1, NULL, NULL, NULL, NULL, NULL),
(35, 35, 'VIS-20260331-01C47D', 'Malaria', 'called', 7, '2026-03-31 12:32:32', '2026-03-31 12:40:23', 1, NULL, NULL, NULL, NULL, NULL),
(36, 36, 'PAT-69CBF82A4B09D', 'For malaria checkup', 'called', 7, '2026-03-31 12:36:58', '2026-03-31 12:40:58', 1, NULL, NULL, NULL, NULL, NULL),
(37, 37, 'PAT-69CBF84466DBF', 'For malaria checkup', 'called', 7, '2026-03-31 12:37:24', '2026-03-31 12:43:01', 1, NULL, NULL, NULL, NULL, NULL),
(38, 38, 'VIS-20260331-19E801', 'Typhoid', 'called', 7, '2026-03-31 12:44:49', '2026-03-31 12:45:02', 1, NULL, NULL, NULL, NULL, NULL),
(39, 27, 'VIS-20260331-E19C4C', 'typhoid checkup', 'called', 7, '2026-03-31 12:48:46', '2026-03-31 12:49:01', 1, NULL, NULL, NULL, NULL, NULL),
(40, 39, 'PAT-69CC2137A71F2', 'Medicine', 'called', 6, '2026-03-31 15:32:07', '2026-03-31 15:32:53', 1, NULL, NULL, NULL, NULL, NULL),
(41, 40, 'VIS-20260331-7B60BB', 'Med', 'called', 6, '2026-03-31 15:38:15', '2026-03-31 15:39:01', 1, NULL, NULL, NULL, NULL, NULL),
(42, 41, 'PAT-69CC28DB371C4', 'Meds', 'called', 6, '2026-03-31 16:04:43', '2026-03-31 16:06:51', 1, NULL, NULL, NULL, NULL, NULL),
(43, 42, 'PAT-69CC28E234DEA', 'Meds', 'called', 6, '2026-03-31 16:04:50', '2026-03-31 16:08:16', 1, NULL, NULL, NULL, NULL, NULL),
(44, 43, 'VIS-20260331-3E4002', 'Med', 'called', 6, '2026-03-31 16:14:43', '2026-03-31 16:14:53', 1, NULL, NULL, NULL, NULL, NULL),
(45, 44, 'VIS-20260331-9EAF1C', 'Med', 'called', 6, '2026-03-31 16:16:09', '2026-03-31 16:16:22', 1, NULL, NULL, NULL, NULL, NULL),
(46, 45, 'VIS-20260331-7747DC', 'Food', 'called', 6, '2026-03-31 16:17:43', '2026-03-31 16:17:59', 1, NULL, NULL, NULL, NULL, NULL),
(47, 46, 'VIS-20260331-1EC4B7', 'Food', 'called', 6, '2026-03-31 16:21:53', '2026-03-31 16:22:03', 1, NULL, NULL, NULL, NULL, NULL),
(48, 33, 'VIS-20260402-A123C6', 'test', 'called', 13, '2026-04-02 06:18:34', '2026-04-02 06:18:40', 1, NULL, NULL, NULL, NULL, NULL),
(50, 48, 'PAT-69CE5C611AA71', 'Malaria checkup', 'called', 7, '2026-04-02 08:09:05', '2026-04-02 08:09:30', 1, NULL, NULL, NULL, NULL, NULL),
(51, 49, 'VIS-20260402-88BCC5', 'Test', 'cancelled', NULL, '2026-04-02 14:56:24', NULL, 0, NULL, NULL, NULL, NULL, '2026-04-02 14:57:13'),
(52, 50, 'PAT-69D69F4197756', 'That\'s why I traveled to Kampala to get some time off to the treasure', 'arrived', 9, '2026-04-08 14:32:33', '2026-04-08 14:33:34', 1, '2026-06-11 19:12:33', '2026-06-11 19:12:33', NULL, NULL, NULL),
(53, 51, 'VIS-20260409-A8D448', 'medication', 'arrived', 15, '2026-04-09 05:11:38', '2026-04-09 05:14:50', 1, '2026-04-13 08:50:10', '2026-04-13 08:50:10', NULL, NULL, NULL),
(54, 52, 'VIS-20260413-CB7523', 'lab', 'served', 16, '2026-04-13 08:36:12', '2026-04-13 08:36:33', 1, '2026-04-13 08:49:56', '2026-04-13 08:49:56', '2026-04-13 08:53:58', '2026-04-13 08:56:00', NULL),
(55, 53, 'PAT-69DCE4CF660DB', 'orals', 'arrived', 16, '2026-04-13 08:42:55', '2026-04-13 08:45:33', 1, '2026-04-13 08:48:22', '2026-04-13 08:48:22', NULL, NULL, NULL),
(56, 54, 'PAT-69DCF551B5478', 'PANADOL', 'arrived', 16, '2026-04-13 09:53:21', '2026-04-17 04:04:14', 1, '2026-06-11 19:12:31', '2026-06-11 19:12:31', NULL, NULL, NULL),
(57, 55, 'VIS-20260416-45E556', 'MALARIA', 'arrived', 16, '2026-04-16 08:17:08', '2026-04-19 05:52:01', 1, '2026-06-11 19:12:24', '2026-06-11 19:12:24', NULL, NULL, NULL),
(58, 56, 'VIS-20260417-114D4E', 'malaria', 'arrived', 16, '2026-04-17 09:14:41', '2026-04-17 09:15:12', 1, '2026-06-11 19:12:29', '2026-06-11 19:12:29', NULL, NULL, NULL),
(59, 57, 'VIS-20260419-8CFE82', 'official', 'arrived', 16, '2026-04-19 05:48:40', '2026-04-19 05:49:29', 1, '2026-06-11 19:12:26', '2026-06-11 19:12:26', NULL, NULL, NULL),
(60, 58, 'VIS-20260611-4675AE', 'Beaches', 'arrived', 11, '2026-06-11 19:04:52', '2026-06-11 19:10:38', 1, '2026-06-11 19:11:58', '2026-06-11 19:11:58', NULL, NULL, NULL),
(61, 59, 'VIS-20260612-712536', 'Official', 'called', 6, '2026-06-12 07:28:55', '2026-06-12 07:30:52', 1, NULL, NULL, NULL, NULL, NULL),
(62, 61, 'VIS-20260612-C43D19', 'Official', 'called', 21, '2026-06-12 07:37:48', '2026-06-14 06:47:38', 1, NULL, NULL, NULL, NULL, NULL),
(63, 62, 'PAT-6A2E86918D3D1', 'OFFICIAL', 'called', 21, '2026-06-14 06:46:41', '2026-06-14 06:47:19', 1, NULL, NULL, NULL, NULL, NULL),
(64, 63, 'PAT-6A2E925E074D5', 'MEDICATION', 'called', 21, '2026-06-14 07:37:02', '2026-06-14 07:37:15', 1, NULL, NULL, NULL, NULL, NULL),
(65, 64, 'VIS-20260614-DC8864', 'TESING', 'called', 21, '2026-06-14 07:39:09', '2026-06-14 07:39:17', 1, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_batch` (`batch_no`);

--
-- Indexes for table `medicine_given`
--
ALTER TABLE `medicine_given`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `idx_visit` (`visit_id`),
  ADD KEY `idx_given` (`given_at`),
  ADD KEY `idx_medicine` (`medicine_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_deleted` (`deleted_at`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_role` (`role`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`),
  ADD KEY `assigned_staff_id` (`assigned_staff_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_record` (`record_number`),
  ADD KEY `idx_patient` (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_given`
--
ALTER TABLE `medicine_given`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine_given`
--
ALTER TABLE `medicine_given`
  ADD CONSTRAINT `medicine_given_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medicine_given_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  ADD CONSTRAINT `medicine_given_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`assigned_staff_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
