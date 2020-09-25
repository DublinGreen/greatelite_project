-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2020 at 09:16 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `great_elites_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('PENDING','RESOLVED') DEFAULT 'PENDING',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pledge_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `explain_what_happened` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `status`, `user_id`, `pledge_id`, `message`, `explain_what_happened`, `updated_at`, `created_at`) VALUES
(1, 'RESOLVED', 29, 13, 'Pledge cannot be tracked', NULL, '2020-09-19 07:42:12', '2020-09-19 07:42:12'),
(2, 'RESOLVED', 42, 200, 'has more than 3 pledges in 2 cycle. Pledge has is not inside pledge tracker', NULL, '2020-09-19 12:38:47', '2020-09-19 12:38:47'),
(3, 'RESOLVED', 46, 210, 'has more than 3 pledges in 2 cycle. Pledge has is not inside pledge tracker', NULL, '2020-09-19 12:42:39', '2020-09-19 12:42:39'),
(4, 'RESOLVED', 57, 197, 'User already in 4 cycle. Pledge does exist in tracker', NULL, '2020-09-19 13:10:11', '2020-09-19 13:10:11'),
(5, 'RESOLVED', 57, 213, 'User already in 4 cycle. Pledge does exist in tracker', NULL, '2020-09-19 13:10:11', '2020-09-19 13:10:11'),
(6, 'RESOLVED', 71, 186, 'Not in pledge tracker', NULL, '2020-09-19 13:30:11', '2020-09-19 13:30:11'),
(7, 'RESOLVED', 86, 180, 'Pledge not in tracker and user is in the 3 cycle.', NULL, '2020-09-19 13:39:40', '2020-09-19 13:39:40'),
(8, 'RESOLVED', 106, 198, 'Pledge not in tracker', NULL, '2020-09-19 14:19:37', '2020-09-19 14:19:37'),
(9, 'RESOLVED', 153, 191, 'What not fully paid pledge', NULL, '2020-09-20 07:24:52', '2020-09-20 07:24:52'),
(10, 'RESOLVED', 158, 86, 'Not recommited', NULL, '2020-09-20 07:41:18', '2020-09-20 07:41:18'),
(11, 'RESOLVED', 161, 0, 'Don have any record on the pledge tracker', 'Is Admin Account', '2020-09-20 07:43:20', '2020-09-20 07:43:20'),
(12, 'RESOLVED', 168, 0, 'Does not have pledge in pledge tracker', 'Is Admin Account', '2020-09-20 07:53:13', '2020-09-20 07:53:13'),
(13, 'RESOLVED', 174, 216, 'User in third cycle and pledge not in pledge tracker', NULL, '2020-09-20 07:56:27', '2020-09-20 07:56:27'),
(14, 'RESOLVED', 177, 193, 'Use has not recommited', NULL, '2020-09-20 07:58:55', '2020-09-20 07:58:55'),
(15, 'RESOLVED', 180, 217, 'User has not recommited', NULL, '2020-09-20 08:00:42', '2020-09-20 08:00:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
