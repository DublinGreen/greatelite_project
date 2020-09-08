-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2020 at 04:18 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `bank`, `account_name`, `account_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Zenith Bank', 'Global green world resources', '1012494483', 'ACTIVE', '2020-08-29 19:52:17', '2020-08-29 19:52:17'),
(2, 2, 'Zenith Bank', 'J\'S Ubah logistics services', '1014036793', 'ACTIVE', '2020-08-29 19:59:44', '2020-08-29 19:59:44'),
(3, 3, 'Zenith Bank', 'A-z building & tools ventures', '1014036793', 'ACTIVE', '2020-08-29 20:13:40', '2020-08-29 20:13:40'),
(4, 4, 'Zenith Bank', 'otseya global resources', '1014645564', 'ACTIVE', '2020-08-29 20:20:53', '2020-08-29 20:20:53'),
(5, 5, 'Access Bank', 'emmanuel udeh', '1046898846', 'ACTIVE', '2020-08-29 20:25:04', '2020-08-29 20:25:04'),
(6, 6, 'Polaris Bank', 'donald okwucheukwu ezelibe', '3048535700', 'ACTIVE', '2020-08-29 20:31:34', '2020-08-29 20:31:34'),
(7, 7, 'Heritage Bank', 'enyi intergrated services', '5100293935', 'ACTIVE', '2020-08-29 20:35:05', '2020-08-29 20:35:05'),
(8, 8, 'First Bank', 'igbonecherem ekene', '3035700668', 'ACTIVE', '2020-08-29 20:38:39', '2020-08-29 20:38:39'),
(9, 9, 'Polaris Bank', 'okafor sandra', '3048047153', 'ACTIVE', '2020-08-29 20:43:00', '2020-08-29 20:43:00'),
(10, 10, 'Access', 'opuniche eke', '0105742969', 'ACTIVE', '2020-08-29 20:46:03', '2020-08-29 20:46:03'),
(11, 11, 'FCMB', 'IKWUETOGHI CHINEMELUM', '3993587014', 'ACTIVE', '2020-08-29 20:49:59', '2020-09-08 04:11:26'),
(12, 12, 'Stanbic IBTC Bank', 'idisimagha dublin-green', '0011606104', 'ACTIVE', '2020-09-07 22:44:10', '2020-09-07 22:44:10'),
(13, 13, 'Access Diamond bank', 'Nkemjika Ukamaka Joy', '0073351471', 'ACTIVE', '2020-09-07 23:59:02', '2020-09-08 00:00:04'),
(14, 14, 'First Bank', 'Igbonecherem Ekene Valentine', '3035700668', 'ACTIVE', '2020-09-08 00:31:56', '2020-09-08 03:43:19'),
(15, 15, 'First bank', 'Obayendo Vivian ujunwa', '3051496268', 'ACTIVE', '2020-09-08 02:43:50', '2020-09-08 02:43:50'),
(16, 16, 'FCMB', 'Donald Okwuchukwu Ezelibe', '6008384020', 'ACTIVE', '2020-09-08 05:13:16', '2020-09-08 05:13:16'),
(17, 21, 'First Bank ltd', 'Umennadi Charity Ukwuoma', '2006687669', 'ACTIVE', '2020-09-08 05:46:12', '2020-09-08 05:46:12'),
(18, 22, 'FCMB', 'Ezinwa gift', '3444264017', 'ACTIVE', '2020-09-08 05:53:37', '2020-09-08 05:58:22'),
(19, 25, 'Zenith bank', 'Ezemuo Amarachukwu Onyemaechi', '2283663837', 'ACTIVE', '2020-09-08 09:42:50', '2020-09-08 09:42:50'),
(20, 26, 'Blessing lmoniaro', 'Union bank', '0036453396', 'ACTIVE', '2020-09-08 14:03:56', '2020-09-08 17:57:53'),
(21, 27, 'Eco bank', 'Precious ogochukwu Nworah', '2621252797', 'ACTIVE', '2020-09-08 14:26:34', '2020-09-08 14:26:34'),
(22, 29, 'Fidelity', 'Okoli maria Obioma', '4021393261', 'ACTIVE', '2020-09-08 15:08:07', '2020-09-08 15:08:07'),
(23, 31, 'Guarranty Trust Bank', 'Nwankwo Lovina Nneka', '0157324243', 'ACTIVE', '2020-09-08 15:58:29', '2020-09-08 15:58:29'),
(24, 34, 'Union Bank', 'Eneanya Nkiruka Amaka', '0098514710', 'ACTIVE', '2020-09-08 16:05:55', '2020-09-08 16:05:55'),
(25, 36, 'Guaranty trust bank', 'Nwamaka Chukwuma Iyvonne', '0008208937', 'ACTIVE', '2020-09-08 16:32:04', '2020-09-08 16:32:04'),
(26, 37, 'Access/diamond', 'Chibunna Kelvin Nwankwo', '0079216738', 'ACTIVE', '2020-09-08 16:47:05', '2020-09-08 16:47:05'),
(27, 38, 'Access Diamond', 'Onuegbu Nkiruka Ogechukwu', '0049639497', 'ACTIVE', '2020-09-08 16:52:13', '2020-09-08 16:52:13'),
(28, 39, 'FCMB', 'Udeh Nelson', '6352358012', 'ACTIVE', '2020-09-08 16:58:50', '2020-09-08 16:58:50'),
(29, 41, 'GTB', 'Ezeonwumelu Eucharia Nkeiruka', '0121702842', 'ACTIVE', '2020-09-08 17:07:51', '2020-09-08 17:07:51'),
(30, 40, 'Eco bank', 'Anusionwu Miriam chizitere', '4341153556', 'ACTIVE', '2020-09-08 17:13:32', '2020-09-08 17:13:32'),
(31, 46, 'Access bank', 'Ukeje chibuzo Doris', '0025959632', 'ACTIVE', '2020-09-08 17:39:04', '2020-09-08 17:39:04'),
(32, 47, 'Access bank', 'Kanu Blessing Ukamaka', '0822076845', 'ACTIVE', '2020-09-08 17:49:24', '2020-09-08 17:49:24'),
(33, 49, 'Access  Bank', 'Adaeze Gloria Ekeh', '0725324939', 'ACTIVE', '2020-09-08 17:54:44', '2020-09-08 17:54:44'),
(34, 20, 'UBA', '2057642565', 'Akinlosotu Ayodele', 'ACTIVE', '2020-09-08 18:11:30', '2020-09-08 18:11:30'),
(35, 51, 'Diamond Bank', 'Ogechi Bibian Okoli', '0099169319', 'ACTIVE', '2020-09-08 18:13:51', '2020-09-08 18:13:51'),
(36, 52, 'Zenith Bank', 'Osi Chinenyenwa Ugonna', '2083479810', 'ACTIVE', '2020-09-08 18:16:46', '2020-09-08 18:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE `confirmations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ledger_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('CONFIRMED','NOT CONFIRMED') NOT NULL DEFAULT 'NOT CONFIRMED',
  `proof` char(255) DEFAULT NULL,
  `time_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` char(255) NOT NULL,
  `answer` text NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `amount` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `to_pay_to` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `user_id`, `status`, `amount`, `to_pay_to`, `updated_at`, `created_at`) VALUES
(1, 12, 'PAID', 1000, NULL, '2020-09-07 22:45:58', '2020-09-07 22:41:42'),
(2, 8, 'NOT PAID', 0, NULL, '2020-09-07 22:55:34', '2020-09-07 22:55:34'),
(3, 9, 'NOT PAID', 0, NULL, '2020-09-07 22:59:00', '2020-09-07 22:59:00'),
(4, 10, 'NOT PAID', 0, NULL, '2020-09-07 23:00:59', '2020-09-07 23:00:59'),
(5, 11, 'NOT PAID', 0, NULL, '2020-09-07 23:02:34', '2020-09-07 23:02:34'),
(6, 16, 'NOT PAID', 0, NULL, '2020-09-08 06:13:19', '2020-09-08 06:13:19'),
(7, 1, 'NOT PAID', 0, NULL, '2020-09-08 14:05:48', '2020-09-08 14:05:48'),
(8, 4, 'NOT PAID', 0, NULL, '2020-09-08 14:22:28', '2020-09-08 14:22:28'),
(9, 3, 'NOT PAID', 0, NULL, '2020-09-08 14:29:01', '2020-09-08 14:29:01'),
(10, 2, 'NOT PAID', 0, NULL, '2020-09-08 14:31:49', '2020-09-08 14:31:49'),
(11, 5, 'NOT PAID', 0, NULL, '2020-09-08 14:55:11', '2020-09-08 14:55:11'),
(12, 36, 'PAID', 1000, NULL, '2020-09-08 16:39:45', '2020-09-08 16:33:12'),
(13, 29, 'NOT PAID', 0, NULL, '2020-09-08 18:01:44', '2020-09-08 18:01:44'),
(14, 34, 'NOT PAID', 0, NULL, '2020-09-08 18:07:41', '2020-09-08 18:07:41'),
(15, 20, 'NOT PAID', 0, NULL, '2020-09-08 18:13:52', '2020-09-08 18:13:52');

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
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_accounts`
--

INSERT INTO `fee_accounts` (`id`, `first_name`, `last_name`, `bank`, `account_number`, `account_name`, `telephone`, `updated_at`, `created_at`) VALUES
(1, 'Global', 'Green world', 'Zenith', '1012494483', 'Global green world resources', '09052176982', '2020-08-28 22:49:40', '2020-08-28 22:49:40'),
(2, 'Nkemjika', 'Ukamaka', 'Access Bank', '0024626178', 'Nkemjika Ukamaka', '08125607281', '2020-08-30 10:58:10', '2020-08-30 10:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('PAID','UNPAID','REMERGED','TO PAY','MERGED') NOT NULL DEFAULT 'TO PAY',
  `interest` bigint(20) UNSIGNED DEFAULT NULL,
  `user_matched` bigint(20) DEFAULT '0',
  `user_matched_to_pay` bigint(20) DEFAULT NULL,
  `user_matched_to_pay_due_date` timestamp NULL DEFAULT NULL,
  `user_matched_to_pay_proof` char(255) DEFAULT NULL,
  `user_matched_to_pay_status` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID',
  `user_matched_alt` bigint(20) UNSIGNED DEFAULT '0',
  `user_matched_alt_to_pay` bigint(20) DEFAULT NULL,
  `user_matched_alt_to_pay_due_date` timestamp NULL DEFAULT NULL,
  `user_matched_alt_to_pay_proof` char(255) DEFAULT NULL,
  `user_matched_alt_to_pay_status` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID',
  `debit` bigint(20) UNSIGNED DEFAULT NULL,
  `to_balance` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `has_paid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `registration_fee` bigint(20) UNSIGNED DEFAULT NULL,
  `referrer_bonus` bigint(20) UNSIGNED DEFAULT NULL,
  `referrer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `due_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action_due_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pledges`
--

CREATE TABLE `pledges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `amount_paid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `amount_paid_confirmed` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `amount_received_and_confirmed` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `interest` bigint(20) UNSIGNED NOT NULL,
  `bonus_to_collect` bigint(20) NOT NULL DEFAULT '0',
  `referrer_bonus` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `referrer_id` bigint(20) UNSIGNED NOT NULL,
  `paid_bonus` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `status` enum('PAID','PAYING','NOT PAYED') NOT NULL DEFAULT 'NOT PAYED',
  `process` enum('COMPLETE','INCOMPLETE') NOT NULL DEFAULT 'INCOMPLETE',
  `can_withdraw` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `when_due` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pledges`
--

INSERT INTO `pledges` (`id`, `user_id`, `amount`, `amount_paid`, `amount_paid_confirmed`, `amount_received_and_confirmed`, `interest`, `bonus_to_collect`, `referrer_bonus`, `referrer_id`, `paid_bonus`, `status`, `process`, `can_withdraw`, `when_due`, `created_at`, `updated_at`) VALUES
(2, 8, 100000, 100000, 0, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', '2020-09-07 23:23:31', '2020-09-07 22:55:34', '2020-09-07 22:55:34'),
(3, 9, 100000, 100000, 0, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', '2020-09-07 22:55:34', '2020-09-07 22:59:00', '2020-09-07 22:59:00'),
(4, 10, 100000, 100000, 0, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', '2020-09-07 22:55:34', '2020-09-07 23:00:59', '2020-09-07 23:00:59'),
(5, 11, 100000, 100000, 0, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', '2020-09-07 22:55:34', '2020-09-07 23:02:34', '2020-09-07 23:02:34'),
(6, 16, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 06:13:19', '2020-09-08 06:13:19'),
(7, 1, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 14:05:48', '2020-09-08 14:05:48'),
(8, 4, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 14:22:28', '2020-09-08 14:22:28'),
(9, 3, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 14:29:01', '2020-09-08 14:29:01'),
(10, 2, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 14:31:49', '2020-09-08 14:31:49'),
(11, 5, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 14:55:11', '2020-09-08 14:55:11'),
(12, 36, 5000, 0, 0, 0, 3000, 0, 250, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 16:33:12', '2020-09-08 16:33:12'),
(13, 29, 50000, 0, 0, 0, 30000, 0, 2500, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 18:01:44', '2020-09-08 18:01:44'),
(14, 34, 20000, 0, 0, 0, 12000, 0, 1000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 18:07:41', '2020-09-08 18:07:41'),
(15, 20, 5000, 0, 0, 0, 3000, 0, 250, 14, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-08 18:13:52', '2020-09-08 18:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `pledge_options`
--

CREATE TABLE `pledge_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `time_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('ACCEPT','REJECT') NOT NULL DEFAULT 'REJECT',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` char(255) NOT NULL,
  `pledge_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_type` enum('REGULAR','ADMIN') NOT NULL DEFAULT 'REGULAR',
  `first_name` char(255) NOT NULL,
  `middle_name` char(255) DEFAULT NULL,
  `last_name` char(255) NOT NULL,
  `email` char(150) NOT NULL,
  `confirmed_email` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `registration_fee` enum('PAID','NOT PAID') NOT NULL DEFAULT 'NOT PAID',
  `confirmed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `password` char(255) NOT NULL,
  `mobile` char(20) DEFAULT NULL,
  `confirm_mobile` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `status` enum('ACTIVE','NOT ACTIVE','DISPUTE') NOT NULL DEFAULT 'NOT ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` enum('MALE','FEMALE') NOT NULL DEFAULT 'MALE',
  `email_confirmation_key` char(150) NOT NULL,
  `agreed_to_terms` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `user_ref` char(150) NOT NULL,
  `referrer` bigint(20) UNSIGNED NOT NULL,
  `mobile_verification_code` char(10) DEFAULT NULL,
  `profile_picture` char(255) DEFAULT NULL,
  `send_missed_merged_sms` enum('YES','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_type`, `first_name`, `middle_name`, `last_name`, `email`, `confirmed_email`, `registration_fee`, `confirmed_by`, `password`, `mobile`, `confirm_mobile`, `status`, `created_at`, `updated_at`, `sex`, `email_confirmation_key`, `agreed_to_terms`, `user_ref`, `referrer`, `mobile_verification_code`, `profile_picture`, `send_missed_merged_sms`) VALUES
(1, 'ADMIN', 'greatelite', NULL, 'investment', 'greatelites01@gmail.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '07017763998', 'YES', 'ACTIVE', '2020-08-29 18:47:57', '2020-08-29 18:47:57', 'MALE', 'a1af6545ffcc9cc37f3e1126528fd243', 'YES', 'dbf46fe765953d4f168ec31f5caf27dd', 1, '209387', NULL, 'NO'),
(2, 'ADMIN', 'John', NULL, 'kelly', 'js.ubah@yahoo.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '08125536955', 'YES', 'ACTIVE', '2020-08-29 18:56:22', '2020-08-29 18:56:22', 'MALE', '125b1325b3d4c6cb54245338048816de', 'YES', '17b33e9e0823c14e8269f5d844b22182', 1, '209387', NULL, 'NO'),
(3, 'ADMIN', 'A to Z building', NULL, 'Venture', 'azbuilding@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '07011588919', 'YES', 'ACTIVE', '2020-08-29 19:11:58', '2020-08-29 19:11:58', 'MALE', 'ed7fab16ea637259a0b3d9726d641653', 'YES', '578be5253a82afaf8e7bf7fe863b759a', 1, '209387', NULL, 'NO'),
(4, 'ADMIN', 'otseya', NULL, 'global', 'otseya@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '07013012427', 'YES', 'ACTIVE', '2020-08-29 19:16:49', '2020-08-29 19:16:49', 'MALE', 'd387801d48107e87d86ace17dc09e09e', 'YES', '78bffa362d4ddb0f3c5c763f7bb75b43', 1, '209387', NULL, 'NO'),
(5, 'ADMIN', 'emmanuel', NULL, 'udeh', 'e.udeh83@yahoo.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '08088013618', 'YES', 'ACTIVE', '2020-08-29 19:21:58', '2020-09-08 18:07:20', 'MALE', '3d90617dda113b0812243e0295d26575', 'YES', '33e727eec8ecd0882b8ed50e55e1c569', 1, '209387', NULL, 'NO'),
(6, 'ADMIN', 'ezelibe', NULL, 'donald', 'donzelventures001@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$kfU/FoVWjjf72qfR5oYjR.IaK5vUL0.252iQ..6F.o8f9xatPc2nC', '08028307415', 'YES', 'ACTIVE', '2020-08-29 19:29:39', '2020-08-29 19:29:39', 'MALE', '1eec1be2467fe2d21c9673555e35aa3d', 'YES', '9a4a3927d57fb27c9b5c5ed87c47bf9a', 1, '209387', NULL, 'NO'),
(7, 'ADMIN', 'enyi', NULL, 'intergrated', 'enyiintergrated001@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$uoVC8VHk1yRY8Y435ffGWuYkKGaiv2fowPQyXynJ2o5ViXywKX9MC', '08082602211', 'YES', 'ACTIVE', '2020-08-29 19:34:06', '2020-08-29 19:34:06', 'MALE', '2ece4fca8126e01f4a2285ff0046eeab', 'YES', '20f883ff6404dd6e072a98a9d604e9ab', 1, '209387', NULL, 'NO'),
(8, 'ADMIN', 'igbonecherem', NULL, 'ekene', 'differentekene@gmail.com', 'YES', 'PAID', NULL, '$2y$10$MiYVyKGlh0aMrRW4mGT.xO.55x9twshdpiC222RCcMfo.OTpNZU2a', '08126442775', 'YES', 'ACTIVE', '2020-08-29 19:37:30', '2020-09-08 17:56:09', 'MALE', 'debf1c2aee04342bed2ca8315b3d8f1d', 'YES', 'd5d359761c4803af4fa93addf671f13a', 1, '784888', NULL, 'NO'),
(9, 'ADMIN', 'okafor', NULL, 'sandra', 'okaforsandra@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$Dnx3pphCRL1WP4cFoDBa9O2KHP3/yOcr/4mJA7EF56CBa/FnRQKWe', '08149577679', 'YES', 'ACTIVE', '2020-08-29 19:42:01', '2020-09-08 04:30:33', 'MALE', '61e5e2276430d50bb5e1a020474318b4', 'YES', '45b14dde46544718366070ced3769e8c', 1, '114790', NULL, 'NO'),
(10, 'ADMIN', 'opuniche', NULL, 'eke', 'opunicheeke@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$9lb.kFI5ZBkEtJOBVGfiAevOLcQW/jkXS7cRHy96hAxTLFZpfozry', '08083089970', 'YES', 'ACTIVE', '2020-08-29 19:44:40', '2020-09-08 18:00:40', 'MALE', 'd5bbd46206efcf24d3b223105f42474c', 'YES', 'f64cfc4f64349233592f36408db465d3', 1, '326449', NULL, 'NO'),
(11, 'ADMIN', 'Ikwuetoghi', 'Chinemelum', 'Chinemelum', 'joynkemjika@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$jRzo95cT655KKRkbEJEYFeXfenAm7/x5sK41z9nXCrf/CBMF6ugPG', '08087905087', 'YES', 'ACTIVE', '2020-08-29 19:48:47', '2020-09-08 04:10:25', 'MALE', '57907b9677b13a3906c0f1856dff5508', 'YES', '04b5a89141d916ede7636a3a34a26199', 1, '668727', NULL, 'NO'),
(12, 'ADMIN', 'idisimagha', 'bernard', 'dublin-green', 'greendublin007@gmail.com', 'YES', 'PAID', 12, '$2y$10$DP8Qpn/m03iNZynfkxnSPuLLsRuZpXL06HzeVogG7JAYf/JHiaqjC', '07032090809', 'YES', 'ACTIVE', '2020-09-07 22:29:48', '2020-09-07 22:45:58', 'MALE', '27340a3bd25860f06470111010eeafb8', 'YES', '627d4fe4df62d93289fbabded0703756', 1, '984956', NULL, 'NO'),
(13, 'ADMIN', 'Nkemjika', NULL, 'Joy', 'joyc76677@gmail.com', 'YES', 'PAID', 13, '$2y$10$YBXr5A7y6f9oKaI0KASKnei/GLuZ0rK0HOsyUDs801coE9X3L3Uqm', '09093726744', 'YES', 'ACTIVE', '2020-09-07 23:51:33', '2020-09-08 00:09:47', 'MALE', '8aa5aff09932710259ed840e3f74daee', 'YES', 'e25fc467b5f3ef98908b9703c3f2bd09', 1, '136621', NULL, 'NO'),
(14, 'REGULAR', 'Igbonecherem', 'Valentine', 'Ekene', 'evalentine458@gmail.com', 'YES', 'PAID', 14, '$2y$10$QD/nYTgA05AD6wmU46d3T.X9pk/5uFlap9AZ5bB8J6BQ7J2tIT80K', '08033354743', 'YES', 'ACTIVE', '2020-09-08 00:16:08', '2020-09-08 03:42:07', 'MALE', 'd074846507c1004c9781c5801f8b2299', 'YES', 'bb9ea3457abde739a718670d1ae70836', 13, '372569', NULL, 'NO'),
(15, 'REGULAR', 'Vivian', 'Obayendo', 'Uju', 'vivianobidoo6@gmail.com', 'YES', 'PAID', 15, '$2y$10$bY.66ddX520GRRHCPMHkBOhZiblqFlDczHf96PSm030OoHAXWJTsu', '08134714901', 'YES', 'ACTIVE', '2020-09-08 02:09:15', '2020-09-08 04:52:09', 'FEMALE', '3503683283ba0573256dec460ff4aa75', 'YES', '0554f159bde461d365abc729b4b7b102', 13, '429609', NULL, 'NO'),
(16, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'donaldezelibe001@gmail.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '08036003595', 'YES', 'ACTIVE', '2020-08-30 05:38:52', '2020-09-08 05:10:10', 'MALE', 'ae02037ba02d17b9aa8c35ae0a2badff', 'YES', '4bd4aa0c7db4b22a9dd4eec89ad99153', 1, '374937', NULL, 'NO'),
(18, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'fadon001@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eL...', '08036003595', 'YES', 'ACTIVE', '2020-08-30 05:38:52', '2020-08-30 06:03:52', 'MALE', 'ae02037ba02d17b9aa8c35ae0a2badab', 'YES', '4bd4aa0c7db4b22a9dd4eec89ad99149', 16, '374937', NULL, 'NO'),
(19, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'fadon002@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '08036003595', 'YES', 'ACTIVE', '2020-08-30 05:38:52', '2020-08-30 06:03:52', 'MALE', 'ba02037ba02d17b9aa8c35ae0a2badab', 'YES', '0cd4aa0c7db4b22a9dd4eec89ad99149', 16, '374937', NULL, 'NO'),
(20, 'REGULAR', 'Ayo', NULL, 'Akinlosotu', 'ayoakin17@yahoo.com', 'YES', 'PAID', 20, '$2y$10$eJdrpVUHY7ARdZKvHXd42uLbF6me0qzucmdJrE0tLMthchTiBlOSa', '09073683277', 'YES', 'ACTIVE', '2020-09-08 05:36:18', '2020-09-08 18:12:19', 'MALE', 'e1e0430aaef02bca974377bea18339b1', 'YES', '0ddc2242e0e04105d01f59ccf9826293', 14, '801377', NULL, 'NO'),
(21, 'REGULAR', 'Charity', 'Ukwuoma', 'Umennadi', 'charityumennadi78@gmail.com', 'YES', 'PAID', 21, '$2y$10$GUSgB4v1WIQVO11ASDb5EeeJporpb12/FhrmtKTq8ktwMC4Xgh7g.', '08038358843', 'YES', 'ACTIVE', '2020-09-08 05:38:34', '2020-09-08 15:24:02', 'FEMALE', 'a1005867fe5cc055f7205c8839ad1820', 'YES', '9b92da91a41750d8084fe9a34e5c1440', 13, '993621', NULL, 'NO'),
(22, 'REGULAR', 'Ezinwa', NULL, 'gift', 'babysomma7@gmail.com', 'YES', 'PAID', 22, '$2y$10$hRMdiskez4HeT7/owRmsKuBP7fONf.IF/5HzyHW/2BzOL1IXW5uWO', '08165134324', 'YES', 'ACTIVE', '2020-09-08 05:46:31', '2020-09-08 15:24:11', 'FEMALE', 'ae095de77fac83eaa882c65cefd8cbc6', 'YES', 'f5bfe8d74995e458d43f38d6334b3db5', 15, '748398', NULL, 'NO'),
(23, 'REGULAR', 'Nkechi', NULL, 'gift', 'zbaby2153@gmail.com', 'YES', 'PAID', 23, '$2y$10$tttOb/Ut6OXdxJL4EXem7.SzoOZA7a3/TWnJ6tTTKcI7yYwhvZM3S', NULL, 'NO', 'ACTIVE', '2020-09-08 06:34:17', '2020-09-08 15:24:20', 'MALE', '8f99816e020eeb3d0a3e5eacb52e495a', 'NO', '599ce30595bebd7ce60c9fdd2f67f7f0', 22, NULL, NULL, 'NO'),
(24, 'REGULAR', 'Laurie', NULL, 'Heathcote', 'knoxhomeseller@yahoo.com', 'NO', 'PAID', 24, '$2y$10$Oqq35YuZKcWqNw2aH5qgl.d77GMYFPVREv6jAPIKAv1u2DoEiylqm', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 08:38:54', '2020-09-08 15:25:33', 'MALE', 'd8fbf704980e5a8469a6f0ed13b7310a', 'NO', 'd32b8dc5fa2b018c4db5d2f6be5bb000', 1, NULL, NULL, 'NO'),
(25, 'REGULAR', 'Amarachukwu', 'Onyemaechi', 'Ezemuo', 'ezemuoamara17@gmail.com', 'YES', 'PAID', 25, '$2y$10$pbmGsXrstqipaRhscdPBnOhACKFZLwrWw35C2lp2GkfrWmQIdvzTi', '08138072502', 'YES', 'ACTIVE', '2020-09-08 09:33:59', '2020-09-08 15:25:40', 'FEMALE', '9887eea47749613daddda85915a677a4', 'YES', '2447a5e4acbad8382b69d64a07c40cf1', 1, '935041', NULL, 'NO'),
(26, 'REGULAR', 'Blessing', 'Efemena', 'Imoniaro', 'imoniarobless073@gmail.com', 'YES', 'PAID', 26, '$2y$10$u8yytmokTptIMI//KdH0l.aXPAWFGtNzDaDdRyoEYBdttkNUwS.4C', '07086766467', 'YES', 'ACTIVE', '2020-09-08 13:45:28', '2020-09-08 18:00:31', 'FEMALE', 'c20e057aa5437374b0cf673439acb703', 'YES', '7444bc34a23ec30038e018b4c77340df', 21, '480331', NULL, 'NO'),
(27, 'REGULAR', 'Precious', NULL, 'Ogochukwu', 'preciousogochukwu585@gmail.com', 'YES', 'PAID', 27, '$2y$10$Ve8apNe5cUwOahMifvMbR.HCPyko1HpHSyHOsFKZeaCl/is7yh2X6', NULL, 'NO', 'ACTIVE', '2020-09-08 14:08:51', '2020-09-08 15:25:01', 'MALE', '1a547f88ede23689527dd244954aeb0b', 'NO', '9ce68cc4009340a2a6d35019a28aee86', 1, NULL, NULL, 'NO'),
(28, 'REGULAR', 'Maxwell', NULL, 'Imoniaro', 'imolymax@gmail.com', 'YES', 'PAID', 28, '$2y$10$T6xQ8zY17Rd6.h4UMd4rFOSafZ8LuZUBBXmuqf5Cgz0gIiyMRkC2q', NULL, 'NO', 'ACTIVE', '2020-09-08 14:16:22', '2020-09-08 15:25:26', 'MALE', '06318a4b323a87f3809c0d5641eb46a5', 'NO', '6a24964039cd567bc7ce4ecdfae279d7', 26, NULL, NULL, 'NO'),
(29, 'REGULAR', 'Okoli', 'Obioma', 'Maria', 'oobioma93@gmail.com', 'YES', 'PAID', 29, '$2y$10$mMit1fD2RraosRBtnsqoDO1s3FdBblVE1UDF3k5nEYyCEyGPctCh6', '08034393506', 'YES', 'ACTIVE', '2020-09-08 14:50:30', '2020-09-08 15:24:38', 'FEMALE', '815874aab305f3b33768ed1abaad8912', 'YES', '69cc3a38713ff345afe5e8663d1de13f', 1, '796889', NULL, 'NO'),
(30, 'REGULAR', 'Kaylee', NULL, 'Durgan', '8134842710@vtext.com', 'NO', 'PAID', 30, '$2y$10$jXOKqtcndWYuhNWXFABrhOXCwofERFgYw0Jh2aPvyyxiPI5aN0M.a', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 15:11:29', '2020-09-08 15:24:29', 'MALE', '2bb445eb42f69b06cf56ab41555f4efc', 'NO', 'b0cfe6683f75d0a09c6d2f8862f8d9ff', 1, NULL, NULL, 'NO'),
(31, 'REGULAR', 'Nwankwo', 'Nneka', 'Lovina', 'lovinanwankwo@gmail.com', 'YES', 'PAID', 31, '$2y$10$XTj8.Ws1Ap6FBIqW3ZDyieKEV0LLHQ0KtUj4RL2DYyypCOBTA4Gp.', '07082404153', 'YES', 'ACTIVE', '2020-09-08 15:31:09', '2020-09-08 16:05:39', 'FEMALE', 'dffd6c2c9bcf63ce2843ac7405e0be4c', 'YES', '090212e018674bcc511504b93e3512ca', 21, '334314', NULL, 'NO'),
(32, 'REGULAR', 'Nkemjika', NULL, 'Ikechukwu', 'johnobum00@gmail.com', 'YES', 'PAID', 32, '$2y$10$8VY5bqknP0zgwDUAYEa5XubSiPR4g7Jh4pTs026T9rHUAaoSasdme', '09093726744', 'YES', 'ACTIVE', '2020-09-08 15:38:01', '2020-09-08 16:05:59', 'MALE', 'dcdddcdb5ba1b6d72ec65b0367a03fbd', 'YES', '8b0b22b10e0b8ff3f255ab0525b0c561', 13, '815927', NULL, 'NO'),
(33, 'REGULAR', 'Emmanuel', NULL, 'Udeh', 'gree.nice@yahoo.com', 'YES', 'PAID', 33, '$2y$10$Slbu1YWRQQ9iOn9O.3A26.7hRtiuHcLy1nRObJHFcTJbwD5QPsizi', NULL, 'NO', 'ACTIVE', '2020-09-08 15:44:37', '2020-09-08 18:04:25', 'MALE', '5759e0af5d8256bfc1f46d1f61bfe77f', 'NO', 'b4964ab741cdd883c3d65f9414660d8b', 1, NULL, NULL, 'NO'),
(34, 'REGULAR', 'Eneanya', 'Nkiruka', 'Amaka', 'amasophy16@gmail.com', 'YES', 'PAID', 34, '$2y$10$tWfJGM780uEyc/P9JxmJHurLDwX08IWPbvBY8xdohOmVYDfRoiGxG', '08065774437', 'YES', 'ACTIVE', '2020-09-08 15:46:49', '2020-09-08 16:07:23', 'FEMALE', 'dd51719a19b5fb8c5e02387ba7b1ebbb', 'YES', '67c2dd9ce2dddea91d789143fb7e7e7f', 1, '903756', NULL, 'NO'),
(35, 'REGULAR', 'Kelvin Chibunna', NULL, 'Nwankwo', 'nwankwochibunna2017@yahoo.com', 'NO', 'PAID', 35, '$2y$10$P3kKYiFVVOPw2/.4kTWoU.upAbWYEnL2i0hethUdaf6YuQC32rKzm', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 16:22:17', '2020-09-08 16:26:24', 'MALE', '704918feb293e9606febbbfda4d3db9c', 'NO', 'ddad52926da0fb889a9d06b4e9f0baf0', 13, NULL, NULL, 'NO'),
(36, 'REGULAR', 'NWAMAKA', NULL, 'CHHUKWUMA', 'ammychuks2016@gmail.com', 'YES', 'PAID', 36, '$2y$10$sOWaTQCdrKRl/jo/c..t4Oi2mZsKZCQO9OupHqqBmdiGzPi/jIxYS', '08124221078', 'YES', 'ACTIVE', '2020-09-08 16:27:15', '2020-09-08 17:12:47', 'FEMALE', '9029e6ba0ca4f5ae6dc32c165a5cc8ba', 'YES', 'd1c3cd133afc81f95382e168a2ed5ee2', 1, '662669', NULL, 'NO'),
(37, 'REGULAR', 'Chibunna', 'Kelvin', 'Nwankwo', 'nwankwochibinna24@gmail.com', 'YES', 'PAID', 37, '$2y$10$tdO8A8IxlAhDZ6zlJSh3CO66cfUb.hXdNL/0PlooxdSDfvlvbbBFO', '08139159929', 'YES', 'ACTIVE', '2020-09-08 16:31:26', '2020-09-08 16:43:57', 'MALE', '17a2f79a67f248c70da6b102cd2278a7', 'YES', 'ce417a49d410b7592954f7c606081ae7', 13, '882181', NULL, 'NO'),
(38, 'REGULAR', 'Nkiruka', 'Ogechukwu', 'Onuegbu', 'nikiogebest@gmail.com', 'YES', 'PAID', 38, '$2y$10$CLqRa/6mPbiojw2sGjguNe8LJLxqbUaR6AYG7ggI7N1V5.v4xpLYm', '08094654170', 'NO', 'ACTIVE', '2020-09-08 16:36:06', '2020-09-08 16:49:20', 'FEMALE', '7f35e376cef2c6ccba67eb6ccf001ac7', 'NO', 'a8f3c7e4e04bae71137a4ae9824d880e', 13, NULL, NULL, 'NO'),
(39, 'REGULAR', 'Nelson', NULL, 'Udeh', 'nelsongreat22@gmail.com', 'YES', 'PAID', 39, '$2y$10$/4gzvHIN3TQIRNWY5yWKS.EDAcNIVD8LE9gL.Ri6kFjsjrCHtDeLS', '08168688528', 'YES', 'ACTIVE', '2020-09-08 16:49:36', '2020-09-08 17:04:51', 'MALE', '2e5a57389ad1ae0b90da7fa17516c990', 'YES', 'cfaf6f90d70fc00d473b39bec5122280', 1, '216104', NULL, 'NO'),
(40, 'REGULAR', 'Miriam', 'Chizitere', 'Anusionwu', 'chizzymiriam25@gmail.com', 'YES', 'PAID', 40, '$2y$10$dqSfROk/4qofNvWteEtrguXfylbt074dloRSG5ik0ZPSt9XCdon4u', '08060620877', 'YES', 'ACTIVE', '2020-09-08 16:59:54', '2020-09-08 17:14:23', 'FEMALE', '7826a7c0d00875082b8c9ab64400885e', 'YES', '3a69c853759cd3d437a85becadf5cd40', 13, '323391', NULL, 'NO'),
(41, 'REGULAR', 'Eucharia', 'Nkeiruka', 'Ezeonwumelu', 'nkeirukaezeonwumelu1@gmail.com', 'YES', 'PAID', 41, '$2y$10$7Yya9tXpV809I9RaoAGxiO2yD5mPjAND/8BtLhRaw/Ov5PSoD0r4i', '09068992082', 'NO', 'ACTIVE', '2020-09-08 17:03:59', '2020-09-08 17:13:55', 'FEMALE', 'cc6770d18ea77605187b282260bf86e3', 'NO', '0cc72f52b301a34484cee589b74b8753', 38, NULL, NULL, 'NO'),
(42, 'REGULAR', 'NWAMAKA', NULL, 'CHHUKWUMA', 'nwamakachukwuma@yahoo.com', 'YES', 'PAID', 42, '$2y$10$6yOKtW4D8nJDTcYe8Ru5/e7KDHgHzbHVdm1jEh9f8jwzKxF44WJ7.', NULL, 'NO', 'ACTIVE', '2020-09-08 17:06:44', '2020-09-08 17:13:40', 'MALE', '463ec64a8a4be17ce26d0130fa1fe961', 'NO', 'e5b914ba222ef0003acdc8ba01a2999d', 1, NULL, NULL, 'NO'),
(43, 'REGULAR', 'Ogu', NULL, 'GOLD', 'Ogugold3@gmail.com', 'YES', 'PAID', 43, '$2y$10$ILIu7dB56Sz/CwuTtzWzGuc3jgmLcACWhfJLkCa3JCl5BiDP5z5qy', NULL, 'NO', 'ACTIVE', '2020-09-08 17:11:50', '2020-09-08 17:16:57', 'MALE', '15235c3539cf75c2cb8d003b6cb6c647', 'NO', '1823cb9258bcde412d48a8f32fd15ee4', 37, NULL, NULL, 'NO'),
(44, 'REGULAR', 'Chinelo', NULL, 'Ezeonwumelu', 'uk4suretravel@gmail.com', 'NO', 'PAID', 44, '$2y$10$kzyHFvEe4lK1QnPJVjTb6ekI.yHna2AZ6oRu0Sh9rD3YsuSk4aLJm', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 17:13:11', '2020-09-08 17:14:35', 'MALE', '239ba2336a7e8b0c2000fc945856f00f', 'NO', '47b1c124a7e0b68ec6896ec7ae8db23f', 41, NULL, NULL, 'NO'),
(45, 'REGULAR', 'Christopher', NULL, 'Sandramary', 'sandymary626@Gmail.com', 'NO', 'PAID', 45, '$2y$10$/0RwxhfEiuWZ/qmJAE1ONeIlW8U4AIBgK1SW.jOZolEELVRl7s/1u', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 17:16:56', '2020-09-08 17:38:52', 'MALE', 'b832435b45bd228c893e0dd390115863', 'NO', 'e9daa48fc18647218959f202dee536da', 29, NULL, NULL, 'NO'),
(46, 'REGULAR', 'Ukeje', 'Chibuzo', 'Doris', 'Dorisjessica71@yahoo.com', 'YES', 'PAID', 46, '$2y$10$gRo9/i99jVm7E4gVxSvWjexA4SeI8Qyx6C/C2Q4K80z5Xq5d47O0a', '08117365280', 'YES', 'ACTIVE', '2020-09-08 17:29:02', '2020-09-08 17:39:02', 'FEMALE', 'c0c81dad80b12c709c37e9457d92f6eb', 'YES', 'cac4d8f58f9c90fa3bf29fe16f590dcd', 40, '473441', NULL, 'NO'),
(47, 'REGULAR', 'KANU', 'BLESSING', 'UKAMAKA', 'blessingk524@gmail.com', 'YES', 'PAID', 47, '$2y$10$yK1jySUtTirbEx4W0c6a.OE1xOajv19J4EuIx1J6wy5Y3kqYiNdX6', '08038155335', 'YES', 'ACTIVE', '2020-09-08 17:30:47', '2020-09-08 17:46:10', 'FEMALE', '4a802252566fa1f02f8f4427a909e905', 'YES', '21c9d887fe857a1e34296bd4bf97ae9d', 29, '898796', NULL, 'NO'),
(48, 'REGULAR', 'Martina', NULL, 'Eze Ogochukwu', 'ogochukwueze103@gmail.com', 'NO', 'PAID', 48, '$2y$10$25/m0NZTIqQ.uy3Ke36UqOwLdK2RAUYobP8XiqJT.XtHM6uyUTVl.', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 17:34:01', '2020-09-08 17:39:34', 'MALE', '918ba5f5ce8ead954fb200a98624d9c3', 'NO', 'd8cb73dbecf1b83c810a5d8b5123fd49', 26, NULL, NULL, 'NO'),
(49, 'REGULAR', 'Adaeze', NULL, 'Ekeh', 'ciniepotia@gmail.com', 'YES', 'PAID', 49, '$2y$10$6d7v2p78znIcd3za.n9eVOT1oALMxLb1VY.Fr.qTtYITrMo/AWBPi', '07039435841', 'YES', 'ACTIVE', '2020-09-08 17:51:44', '2020-09-08 17:58:59', 'FEMALE', '8ff82c6c9832de12ec3ea8bc24c28cbd', 'YES', 'a1e2eceffe02a83b3427688c68b8575d', 1, '501066', NULL, 'NO'),
(50, 'REGULAR', 'Emmanuel', NULL, 'Udoh', 'emmanuel4mee@yahoo.com', 'YES', 'PAID', 50, '$2y$10$o3esqnMKhR4zkSzxyQZLO.DLlKtNuZFQA0AFS.B0n1.u/qBcYUiTG', NULL, 'NO', 'ACTIVE', '2020-09-08 17:53:29', '2020-09-08 18:15:59', 'MALE', 'faa6cae0fa494ca7cf0bd3df0671ad54', 'NO', 'c4966f32328b6e5f84a8691d421b3570', 40, NULL, NULL, 'NO'),
(51, 'REGULAR', 'Okoli', NULL, 'Ogechi Bibian', 'ogebb4real@gmail.com', 'YES', 'PAID', 51, '$2y$10$xaSg2ZOAS8DhcUQhiSwODe.KDLpw3iBDTB1ZnrazdQNZzXYIOWUsu', NULL, 'NO', 'ACTIVE', '2020-09-08 17:54:06', '2020-09-08 17:59:18', 'MALE', '8154b8f5d3d926f2fff61cc444b70092', 'NO', '4de70bfdc048fcce09a372e880f84a60', 13, NULL, NULL, 'NO'),
(52, 'REGULAR', 'Chinenyenwa', 'Ugo', 'Osi', 'chinenyeosi8@gmail.com', 'YES', 'NOT PAID', NULL, '$2y$10$uoIfKDyF2Li4u74YBoGhwe/xzCuZ4AUgHRaQFxfl44HO8CBzLuONS', '08174111555', 'YES', 'ACTIVE', '2020-09-08 18:07:24', '2020-09-08 18:15:03', 'FEMALE', 'a0aaa6e5277031b60a72ca3ffe688ba1', 'YES', '982acdc11abd1757596634f1f4cc3005', 14, '847234', NULL, 'NO'),
(53, 'REGULAR', 'Simeon', NULL, 'Ogwoja', 'gwojasimeon@gmai.com', 'NO', 'NOT PAID', NULL, '$2y$10$5gZFfl57F/69HTplyAJlo.MS5cTlefqKaWcA3kJoX0dwl6.zc8j4m', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 18:07:54', '2020-09-08 18:07:54', 'MALE', 'abab307ad170a2f7ff2b3ce3d2188220', 'NO', '3ca7fad886ca95312c5a2f86b71ecd37', 1, NULL, NULL, 'NO'),
(54, 'REGULAR', 'Simeon', NULL, 'Ogwoja', 'gwojasimeon@gmail.com', 'NO', 'NOT PAID', NULL, '$2y$10$5x21oFkDYbE1OrQHIOYw/.1.5kkgVouCSXHueveN5Xk/WRaYN8FpK', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 18:08:52', '2020-09-08 18:08:52', 'MALE', '8ffba155e0662e54b7a65e58a88a31ce', 'NO', '8d52a2ceca88827160e21fd81b2c48e7', 1, NULL, NULL, 'NO'),
(55, 'REGULAR', 'Ifeanyi', NULL, 'Faith', 'faithchibuzor40@gmail.com', 'YES', 'NOT PAID', NULL, '$2y$10$SBAq.G28jrbgHDKryqZgRey2Yylu8l40Fc/yjcqHHtfqeALRaE91W', NULL, 'NO', 'ACTIVE', '2020-09-08 18:10:57', '2020-09-08 18:12:47', 'MALE', 'e548bc96153a76dc2198056778c533a9', 'NO', 'd2be81b70b8ebc569da86156a9a29f77', 40, NULL, NULL, 'NO'),
(56, 'REGULAR', 'Sophia', NULL, 'Akukariaibe', 'Chizy.real@yahoo.com', 'NO', 'NOT PAID', NULL, '$2y$10$DSpUjy2DwZ6uWbyI6vzkqO2.hAaEwy3HiyB9P4Ltq9iwDPL/sMPX6', NULL, 'NO', 'NOT ACTIVE', '2020-09-08 18:14:12', '2020-09-08 18:14:12', 'MALE', '50a6b27ee3c7903bbe848904f0fce2f6', 'NO', '88c63989eb93d100a76e0a63856b72b8', 1, NULL, NULL, 'NO');

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
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fee_accounts`
--
ALTER TABLE `fee_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pledges`
--
ALTER TABLE `pledges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
