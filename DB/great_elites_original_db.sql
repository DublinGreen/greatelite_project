-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 29, 2020 at 04:28 PM
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
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank` char(255) NOT NULL,
  `account_name` char(255) NOT NULL,
  `account_number` char(255) NOT NULL,
  `status` enum('ACTIVE','NOT ACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `bank`, `account_name`, `account_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Zenith Bank', 'Global green world resources', '1012494483', 'ACTIVE', '2020-08-29 12:52:17', '2020-08-29 12:52:17'),
(2, 2, 'Zenith Bank', 'J\'S Ubah logistics services', '1014036793', 'ACTIVE', '2020-08-29 12:59:44', '2020-08-29 12:59:44'),
(3, 3, 'Zenith Bank', 'A-z building & tools ventures', '1014036793', 'ACTIVE', '2020-08-29 13:13:40', '2020-08-29 13:13:40'),
(4, 4, 'Zenith Bank', 'otseya global resources', '1014645564', 'ACTIVE', '2020-08-29 13:20:53', '2020-08-29 13:20:53'),
(5, 5, 'Access Bank', 'emmanuel udeh', '1046898846', 'ACTIVE', '2020-08-29 13:25:04', '2020-08-29 13:25:04'),
(6, 6, 'Polaris Bank', 'donald okwucheukwu ezelibe', '3048535700', 'ACTIVE', '2020-08-29 13:31:34', '2020-08-29 13:31:34'),
(7, 7, 'Heritage Bank', 'enyi intergrated services', '5100293935', 'ACTIVE', '2020-08-29 13:35:05', '2020-08-29 13:35:05'),
(8, 8, 'First Bank', 'igbonecherem ekene', '3035700668', 'ACTIVE', '2020-08-29 13:38:39', '2020-08-29 13:38:39'),
(9, 9, 'Polaris Bank', 'okafor sandra', '3048047153', 'ACTIVE', '2020-08-29 13:43:00', '2020-08-29 13:43:00'),
(10, 10, 'Access', 'opuniche eke', '0105742969', 'ACTIVE', '2020-08-29 13:46:03', '2020-08-29 13:46:03'),
(11, 11, 'Access Bank', 'nkemjika joy', '0024626178', 'ACTIVE', '2020-08-29 13:49:59', '2020-08-29 13:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE `confirmations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ledger_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('CONFIRMED','NOT CONFIRMED') NOT NULL DEFAULT 'NOT CONFIRMED',
  `proof` char(255) DEFAULT NULL,
  `time_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` char(255) NOT NULL,
  `answer` text NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `created_time`, `updated_at`) VALUES
(1, 'What is Great Elites investment', 'Great Elites investment is a platform that offers opportunity to make passive income from comfort of your home by using your mobile phone or system via peer to peer \r\ndonation', '2020-08-29 03:04:14', '2020-08-29 03:04:14'),
(2, 'How do l register', 'Visit the site www.greatelites.com', '2020-08-29 03:04:33', '2020-08-29 03:04:33'),
(3, 'What is the return interest on my investment.', '50% RIO (Interest)', '2020-08-29 12:19:33', '2020-08-29 12:19:33'),
(4, 'How many days does it take my me to withdraw', 'Your investment matured every 5 days of your deposit upon a successful pledging and merging for making payment only to an account provided to you by great elites investments platform.', '2020-08-29 12:19:33', '2020-08-29 12:19:33'),
(5, 'What is the minimum and maximum investment package', 'Minimum of #5000, and maximum of #200,000. (Though might change with time)', '2020-08-29 12:20:18', '2020-08-29 12:20:18'),
(6, 'How can l make payments', 'You can only make payments to the account details provided  on your dashboard', '2020-08-29 12:20:18', '2020-08-29 12:20:18'),
(7, 'What is the percentage of my referral bonus', 'Your referral bonus is 5% of the first investment of ur downline and 2% continues investment of your downline.', '2020-08-29 12:21:07', '2020-08-29 12:21:07'),
(8, 'How many downline makes me a Guider', '20 active downliner makes you a guider.', '2020-08-29 12:21:07', '2020-08-29 12:21:07'),
(9, 'What are the benefits of being a Guider', 'A Guider receive 1% of the investment of all the downlines', '2020-08-29 12:21:42', '2020-08-29 12:21:42'),
(10, 'Is there any  recommitment policy in Great Elites investment platform', 'Yes there is 100% recommitment policy before any withdrawal.', '2020-08-29 12:21:42', '2020-08-29 12:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID',
  `amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `to_pay_to` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fee_accounts`
--

CREATE TABLE `fee_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` char(255) NOT NULL,
  `last_name` char(255) NOT NULL,
  `bank` char(255) NOT NULL,
  `account_number` char(255) NOT NULL,
  `account_name` char(255) NOT NULL,
  `telephone` char(15) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_accounts`
--

INSERT INTO `fee_accounts` (`id`, `first_name`, `last_name`, `bank`, `account_number`, `account_name`, `telephone`, `updated_at`, `created_at`) VALUES
(1, 'Global', 'Green world', 'Stanbic IBTC', '1012494483', 'Global green world resources', '09052176982', '2020-08-28 22:49:40', '2020-08-28 22:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('PAID','UNPAID','REMERGED','TO PAY','MERGED') NOT NULL DEFAULT 'TO PAY',
  `interest` bigint(20) UNSIGNED DEFAULT NULL,
  `user_matched` bigint(20) DEFAULT 0,
  `user_matched_to_pay` bigint(20) DEFAULT NULL,
  `user_matched_to_pay_due_date` timestamp NULL DEFAULT NULL,
  `user_matched_to_pay_proof` char(255) DEFAULT NULL,
  `user_matched_to_pay_status` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID',
  `user_matched_alt` bigint(20) UNSIGNED DEFAULT 0,
  `user_matched_alt_to_pay` bigint(20) DEFAULT NULL,
  `user_matched_alt_to_pay_due_date` timestamp NULL DEFAULT NULL,
  `user_matched_alt_to_pay_proof` char(255) DEFAULT NULL,
  `user_matched_alt_to_pay_status` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID',
  `debit` bigint(20) UNSIGNED DEFAULT NULL,
  `to_balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `has_paid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `registration_fee` bigint(20) UNSIGNED DEFAULT NULL,
  `referrer_bonus` bigint(20) UNSIGNED DEFAULT NULL,
  `referrer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `due_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `action_due_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `credit` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`id`, `user_id`, `status`, `interest`, `user_matched`, `user_matched_to_pay`, `user_matched_to_pay_due_date`, `user_matched_to_pay_proof`, `user_matched_to_pay_status`, `user_matched_alt`, `user_matched_alt_to_pay`, `user_matched_alt_to_pay_due_date`, `user_matched_alt_to_pay_proof`, `user_matched_alt_to_pay_status`, `debit`, `to_balance`, `has_paid`, `registration_fee`, `referrer_bonus`, `referrer_id`, `due_date`, `action_due_date`, `credit`, `created_at`, `updated_at`) VALUES
(2, 2, 'UNPAID', 15000, 0, NULL, NULL, NULL, 'NOT PAID', 0, NULL, NULL, NULL, 'NOT PAID', NULL, 0, 0, 1000, 1000, 1, '2020-08-26 23:00:00', '2020-08-28 11:59:21', 30000, '2020-08-28 11:33:30', '2020-08-28 19:44:04'),
(7, 8, 'TO PAY', 15000, 0, NULL, NULL, NULL, 'NOT PAID', 0, NULL, NULL, NULL, 'NOT PAID', 30000, 0, 0, 1000, 1000, 2, '2020-09-02 15:32:22', '2020-08-29 15:32:22', NULL, '2020-08-28 15:32:22', '2020-08-28 15:32:22'),
(9, 17, 'TO PAY', 15000, 0, NULL, NULL, NULL, 'NOT PAID', 0, NULL, NULL, NULL, 'NOT PAID', 30000, 0, 0, 1000, 2000, 16, '2020-09-02 16:05:12', '2020-08-29 16:05:12', NULL, '2020-08-28 16:05:12', '2020-08-28 16:05:12'),
(10, 18, 'TO PAY', 25000, 0, NULL, NULL, NULL, 'NOT PAID', 0, NULL, NULL, NULL, 'NOT PAID', 50000, 0, 0, 1000, 1000, 1, '2020-09-02 20:23:41', '2020-08-29 20:23:41', NULL, '2020-08-28 20:23:41', '2020-08-28 20:23:41'),
(11, 1, 'UNPAID', 10000, 0, NULL, NULL, NULL, 'NOT PAID', 0, NULL, NULL, NULL, 'NOT PAID', NULL, 0, 0, 1000, 400, 1, '2020-09-02 20:26:36', '2020-08-29 20:26:36', 30000, '2020-08-28 20:26:36', '2020-08-28 20:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `pledges`
--

CREATE TABLE `pledges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `amount_paid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `interest` bigint(20) UNSIGNED NOT NULL,
  `referrer_bonus` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `referrer_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('PAID','PAYING','NOT PAYED') NOT NULL DEFAULT 'NOT PAYED',
  `when_due` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pledges`
--

INSERT INTO `pledges` (`id`, `user_id`, `amount`, `amount_paid`, `interest`, `referrer_bonus`, `referrer_id`, `status`, `when_due`, `created_at`, `updated_at`) VALUES
(1, 2, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(2, 3, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(3, 4, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(4, 5, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(5, 6, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(6, 7, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(7, 8, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(8, 9, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(9, 10, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(10, 11, 200000, 0, 100000, 0, 1, 'NOT PAYED', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pledge_options`
--

CREATE TABLE `pledge_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `time_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pledge_options`
--

INSERT INTO `pledge_options` (`id`, `amount`, `time_added`, `time_updated`) VALUES
(2, 10000, '2020-08-27 20:57:10', '2020-08-27 20:57:10'),
(4, 20000, '2020-08-27 20:57:20', '2020-08-27 20:57:20'),
(6, 30000, '2020-08-27 20:57:29', '2020-08-27 20:57:29'),
(8, 40000, '2020-08-27 20:57:36', '2020-08-27 20:57:36'),
(10, 50000, '2020-08-27 20:57:44', '2020-08-27 20:57:44'),
(12, 60000, '2020-08-27 20:57:51', '2020-08-27 20:57:51'),
(14, 70000, '2020-08-27 20:58:00', '2020-08-27 20:58:00'),
(16, 80000, '2020-08-27 20:58:09', '2020-08-27 20:58:09'),
(18, 90000, '2020-08-27 20:58:17', '2020-08-27 20:58:17'),
(20, 100000, '2020-08-27 20:58:35', '2020-08-27 20:58:35'),
(21, 110000, '2020-08-27 20:58:51', '2020-08-27 20:58:51'),
(22, 120000, '2020-08-27 20:58:51', '2020-08-27 20:58:51'),
(23, 130000, '2020-08-27 20:59:06', '2020-08-27 20:59:06'),
(24, 140000, '2020-08-27 20:59:06', '2020-08-27 20:59:06'),
(25, 150000, '2020-08-27 20:59:18', '2020-08-27 20:59:18'),
(26, 160000, '2020-08-27 20:59:18', '2020-08-27 20:59:18'),
(27, 170000, '2020-08-27 21:00:27', '2020-08-27 21:00:27'),
(28, 180000, '2020-08-27 21:00:27', '2020-08-27 21:00:27'),
(29, 190000, '2020-08-27 21:00:40', '2020-08-27 21:00:40'),
(30, 200000, '2020-08-27 21:00:40', '2020-08-27 21:00:40'),
(31, 5000, '2020-08-29 09:46:54', '2020-08-29 09:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `pledge_tracker`
--

CREATE TABLE `pledge_tracker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pledge_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `user_sending` bigint(20) UNSIGNED NOT NULL,
  `user_receiving` bigint(20) UNSIGNED NOT NULL,
  `status` enum('CONFIRMED','NOT CONFIRMED') NOT NULL DEFAULT 'NOT CONFIRMED',
  `proof` char(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` char(150) NOT NULL,
  `confirmed_email` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `password` char(255) NOT NULL,
  `mobile` char(20) DEFAULT NULL,
  `confirm_mobile` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `status` enum('ACTIVE','NOT ACTIVE','DISPUTE') NOT NULL DEFAULT 'NOT ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` char(255) NOT NULL,
  `middle_name` char(255) DEFAULT NULL,
  `last_name` char(255) NOT NULL,
  `sex` enum('MALE','FEMALE') NOT NULL DEFAULT 'MALE',
  `email_confirmation_key` char(150) NOT NULL,
  `agreed_to_terms` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `user_ref` char(150) NOT NULL,
  `referrer` bigint(20) UNSIGNED NOT NULL,
  `mobile_verification_code` char(10) DEFAULT NULL,
  `profile_picture` char(255) DEFAULT NULL,
  `registration_fee` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `confirmed_email`, `password`, `mobile`, `confirm_mobile`, `status`, `created_at`, `updated_at`, `first_name`, `middle_name`, `last_name`, `sex`, `email_confirmation_key`, `agreed_to_terms`, `user_ref`, `referrer`, `mobile_verification_code`, `profile_picture`, `registration_fee`) VALUES
(1, 'greatelites01@gmail.com', 'YES', '$2y$10$umLPAp6uFzG0bI88KIe1QOc99QoSQJlNAyIfEgko3IJQrFGfv5Z3.', '07017763998', 'YES', 'ACTIVE', '2020-08-29 11:47:57', '2020-08-29 11:47:57', 'greatelite', NULL, 'investment', 'MALE', 'a1af6545ffcc9cc37f3e1126528fd243', 'YES', 'dbf46fe765953d4f168ec31f5caf27dd', 1, '209387', NULL, 'PAID'),
(2, 'js.ubah@yahoo.com', 'YES', '$2y$10$B.pnpwH4J3o7ujDBO1OPr.5urIdX57/582I2rTNk2mkhNqKHs.c6u', '08125536955', 'YES', 'ACTIVE', '2020-08-29 11:56:22', '2020-08-29 11:56:22', 'John', NULL, 'kelly', 'MALE', '125b1325b3d4c6cb54245338048816de', 'YES', '17b33e9e0823c14e8269f5d844b22182', 1, '209387', NULL, 'PAID'),
(3, 'azbuilding@greatelites.com', 'YES', '$2y$10$RZCwTWH/pO8ojmBvcgt4.OR3RPPX6kI42cUsE/YWjaVNX0/OzNFkq', '07011588919', 'YES', 'ACTIVE', '2020-08-29 12:11:58', '2020-08-29 12:11:58', 'A to Z building', NULL, 'Venture', 'MALE', 'ed7fab16ea637259a0b3d9726d641653', 'YES', '578be5253a82afaf8e7bf7fe863b759a', 1, '209387', NULL, 'PAID'),
(4, 'otseya@greatelites.com', 'YES', '$2y$10$LBw49GmRwOyUfQP2kAWtsuuauAWSty7RavQVIuC9e9zUfMpRk94ge', '07013012427', 'YES', 'ACTIVE', '2020-08-29 12:16:49', '2020-08-29 12:16:49', 'otseya', NULL, 'global', 'MALE', 'd387801d48107e87d86ace17dc09e09e', 'YES', '78bffa362d4ddb0f3c5c763f7bb75b43', 1, '209387', NULL, 'PAID'),
(5, 'e.udee83@yahoo.com', 'YES', '$2y$10$z9YgOD1rSUQIIOyNgEdAcO.DW1ffvcCTOE5bLFUmNGm2VUKuUqT7O', '08088013618', 'YES', 'ACTIVE', '2020-08-29 12:21:58', '2020-08-29 12:21:58', 'emmanuel', NULL, 'udee', 'MALE', '3d90617dda113b0812243e0295d26575', 'YES', '33e727eec8ecd0882b8ed50e55e1c569', 1, '209387', NULL, 'PAID'),
(6, 'donzelventures001@greatelites.com', 'YES', '$2y$10$kfU/FoVWjjf72qfR5oYjR.IaK5vUL0.252iQ..6F.o8f9xatPc2nC', '08028307415', 'YES', 'ACTIVE', '2020-08-29 12:29:39', '2020-08-29 12:29:39', 'ezelibe', NULL, 'donald', 'MALE', '1eec1be2467fe2d21c9673555e35aa3d', 'YES', '9a4a3927d57fb27c9b5c5ed87c47bf9a', 1, '209387', NULL, 'PAID'),
(7, 'enyiintergrated001@greatelites.com', 'YES', '$2y$10$uoVC8VHk1yRY8Y435ffGWuYkKGaiv2fowPQyXynJ2o5ViXywKX9MC', '08082602211', 'YES', 'ACTIVE', '2020-08-29 12:34:06', '2020-08-29 12:34:06', 'enyi', NULL, 'intergrated', 'MALE', '2ece4fca8126e01f4a2285ff0046eeab', 'YES', '20f883ff6404dd6e072a98a9d604e9ab', 1, '209387', NULL, 'PAID'),
(8, 'differentekene@gmail.com', 'YES', '$2y$10$MiYVyKGlh0aMrRW4mGT.xO.55x9twshdpiC222RCcMfo.OTpNZU2a', '08125607281', 'YES', 'ACTIVE', '2020-08-29 12:37:30', '2020-08-29 12:37:30', 'igbonecherem', NULL, 'ekene', 'MALE', 'debf1c2aee04342bed2ca8315b3d8f1d', 'YES', 'd5d359761c4803af4fa93addf671f13a', 1, '209387', NULL, 'PAID'),
(9, 'okaforsandra@greatelites.com', 'YES', '$2y$10$Dnx3pphCRL1WP4cFoDBa9O2KHP3/yOcr/4mJA7EF56CBa/FnRQKWe', '08121490059', 'YES', 'ACTIVE', '2020-08-29 12:42:01', '2020-08-29 12:42:01', 'okafor', NULL, 'sandra', 'MALE', '61e5e2276430d50bb5e1a020474318b4', 'YES', '45b14dde46544718366070ced3769e8c', 1, '209387', NULL, 'PAID'),
(10, 'opunicheeke@greatelites.com', 'YES', '$2y$10$9lb.kFI5ZBkEtJOBVGfiAevOLcQW/jkXS7cRHy96hAxTLFZpfozry', '08126442775', 'YES', 'ACTIVE', '2020-08-29 12:44:40', '2020-08-29 12:44:40', 'opuniche', NULL, 'eke', 'MALE', 'd5bbd46206efcf24d3b223105f42474c', 'YES', 'f64cfc4f64349233592f36408db465d3', 1, '209387', NULL, 'PAID'),
(11, 'joynkemjika@greatelites.com', 'YES', '$2y$10$jRzo95cT655KKRkbEJEYFeXfenAm7/x5sK41z9nXCrf/CBMF6ugPG', '08083089970', 'YES', 'ACTIVE', '2020-08-29 12:48:47', '2020-08-29 12:48:47', 'joy', NULL, 'nkemjika', 'MALE', '57907b9677b13a3906c0f1856dff5508', 'YES', '04b5a89141d916ede7636a3a34a26199', 1, '209387', NULL, 'PAID');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `confirmations`
--
ALTER TABLE `confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_accounts`
--
ALTER TABLE `fee_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pledges`
--
ALTER TABLE `pledges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pledge_options`
--
ALTER TABLE `pledge_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pledge_tracker`
--
ALTER TABLE `pledge_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_confirmation_key` (`email_confirmation_key`),
  ADD UNIQUE KEY `user_ref` (`user_ref`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `confirmations`
--
ALTER TABLE `confirmations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_accounts`
--
ALTER TABLE `fee_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pledges`
--
ALTER TABLE `pledges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pledge_options`
--
ALTER TABLE `pledge_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pledge_tracker`
--
ALTER TABLE `pledge_tracker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
