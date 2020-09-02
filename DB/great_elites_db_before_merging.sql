-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2020 at 08:28 PM
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
(11, 11, 'Access Bank', 'nkemjika joy', '0024626178', 'ACTIVE', '2020-08-29 13:49:59', '2020-08-29 13:49:59'),
(12, 12, 'Stanbic IBTC', 'idisimagha dublin-green', '0011606104', 'ACTIVE', '2020-08-29 22:22:26', '2020-08-29 22:22:26'),
(13, 13, 'GTb  bank', 'Emmanuel udeh', '0512317277', 'ACTIVE', '2020-08-29 23:00:05', '2020-08-29 23:00:05'),
(14, 14, 'Access', 'Nkemjika', '0024626178', 'ACTIVE', '2020-08-29 23:11:27', '2020-08-29 23:53:31'),
(15, 25, 'GTB', 'UJU EMELDA IGWILO', '0239077308', 'ACTIVE', '2020-08-30 00:51:31', '2020-08-30 00:51:31'),
(16, 16, 'First bank', 'Nduka chimereogo Gloria', '3038077635', 'ACTIVE', '2020-08-30 01:08:36', '2020-08-30 01:08:36'),
(17, 26, 'Eco bank', 'Anusionwu Miriam chizitere', '4341153556', 'ACTIVE', '2020-08-30 01:47:57', '2020-08-30 01:47:57'),
(18, 36, 'Access bank', 'Ukeje Chibuzo Doris', '0025959632', 'ACTIVE', '2020-08-30 03:03:11', '2020-08-30 03:03:11'),
(19, 33, 'Diamond/Access', 'Otubelu Chika mavis', '0008415748', 'ACTIVE', '2020-08-30 03:16:15', '2020-08-30 03:16:15'),
(20, 37, 'Zenith Bank', 'Osi Chinenyenwa Ugonna', '2083479810', 'ACTIVE', '2020-08-30 03:16:20', '2020-08-30 03:16:20'),
(21, 40, 'First bank', 'Dike paschal Ugochukwu', '3096322735', 'ACTIVE', '2020-08-30 03:19:28', '2020-08-30 03:19:28'),
(22, 42, 'Access bank', 'Akaraiwe bright chidozie', '0011978020', 'ACTIVE', '2020-08-30 03:23:52', '2020-08-30 03:23:52'),
(23, 41, 'Access/Diamond', 'Chibunna Kelvin Nwankwo', '0079216738', 'ACTIVE', '2020-08-30 03:23:57', '2020-08-30 03:23:57'),
(24, 46, 'First bank', 'Pauline Onyeanusi', '3038018960', 'ACTIVE', '2020-08-30 03:42:17', '2020-08-30 03:42:17'),
(25, 31, 'Uba', 'Okafor Eucharia Chinwe', '2138085225', 'ACTIVE', '2020-08-30 03:55:11', '2020-08-30 03:55:11'),
(26, 32, 'First Bank ltd', 'Umennadi Charity Ukwuoma', '2006687669', 'ACTIVE', '2020-08-30 04:08:47', '2020-08-30 04:08:47'),
(27, 21, 'Stanbic IBTC', 'Onuegbu Nkiruka', '0015615580', 'ACTIVE', '2020-08-30 04:08:53', '2020-08-30 04:08:53'),
(28, 53, 'Guaranty trust bank', 'Nwamaka Chukwuma.I.', '0008208937', 'ACTIVE', '2020-08-30 04:31:26', '2020-08-30 04:31:26'),
(29, 50, 'Fidelity', 'Okoli Maria Obioma', '4021393261', 'ACTIVE', '2020-08-30 04:34:43', '2020-08-30 04:34:43'),
(30, 54, 'First Bank', 'Ifeakam Yvonne Omo-odudu', '2032899566', 'ACTIVE', '2020-08-30 04:55:43', '2020-08-30 04:55:43'),
(31, 39, 'First Bank', 'Akinlosotu Ayodele', '3051631384', 'ACTIVE', '2020-08-30 05:12:15', '2020-08-30 05:12:15'),
(32, 18, 'First Bank', 'Onuigbo Nwanneka Ijeoma', '3053540017', 'ACTIVE', '2020-08-30 05:12:48', '2020-08-30 05:12:48'),
(33, 56, 'Access diamond bank', 'Etumnu Michael orji', '0060960189', 'ACTIVE', '2020-08-30 05:20:59', '2020-08-30 05:20:59'),
(34, 55, 'Gtb', 'Adamu Zainab', '0123142657', 'ACTIVE', '2020-08-30 05:22:35', '2020-08-30 05:22:35'),
(35, 27, 'Uba', 'Uzor Bridget', '2023827154', 'ACTIVE', '2020-08-30 05:43:44', '2020-08-30 05:43:44'),
(36, 58, 'Zenith', 'Efenarhua Joy', '2253865087', 'ACTIVE', '2020-08-30 07:52:48', '2020-08-30 07:52:48'),
(37, 20, 'UBA', 'Nkemjika Ekene valentine', '2136709798', 'ACTIVE', '2020-08-30 08:14:42', '2020-08-30 08:14:42'),
(38, 52, 'First bank', 'Chukwudum Nneka Maryann', '3147339231', 'ACTIVE', '2020-08-30 11:17:29', '2020-08-30 11:17:29'),
(39, 47, 'Access  Bank', 'Adaeze Gloria Ekeh', '0725324939', 'ACTIVE', '2020-08-30 13:40:03', '2020-08-30 13:40:03');

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

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `user_id`, `status`, `amount`, `to_pay_to`, `updated_at`, `created_at`) VALUES
(1, 12, 'PAID', 1000, NULL, '2020-08-29 22:21:33', '2020-08-29 22:21:33'),
(2, 13, 'NOT PAID', 0, NULL, '2020-08-29 23:13:05', '2020-08-29 23:13:05'),
(3, 15, 'NOT PAID', 0, NULL, '2020-08-29 23:13:46', '2020-08-29 23:13:46'),
(4, 14, 'NOT PAID', 0, NULL, '2020-08-29 23:13:51', '2020-08-29 23:13:51'),
(5, 25, 'NOT PAID', 1000, NULL, '2020-08-30 00:47:09', '2020-08-30 00:47:09'),
(6, 26, 'PAID', 1000, NULL, '2020-08-30 02:56:48', '2020-08-30 02:56:48'),
(7, 36, 'NOT PAID', 1000, NULL, '2020-08-30 03:10:37', '2020-08-30 03:10:37'),
(8, 33, 'PAID', 1000, NULL, '2020-08-30 03:18:27', '2020-08-30 03:18:27'),
(9, 16, 'PAID', 1000, NULL, '2020-08-30 03:29:34', '2020-08-30 03:29:34'),
(10, 17, 'PAID', 1000, NULL, '2020-08-30 03:43:20', '2020-08-30 03:43:20'),
(11, 40, 'NOT PAID', 0, NULL, '2020-08-30 03:51:35', '2020-08-30 03:51:35'),
(12, 31, 'PAID', 1000, NULL, '2020-08-30 07:54:52', '2020-08-30 04:00:55'),
(13, 53, 'PAID', 1000, NULL, '2020-08-30 04:35:41', '2020-08-30 04:35:41'),
(14, 41, 'PAID', 0, NULL, '2020-08-30 04:45:56', '2020-08-30 04:45:56'),
(15, 18, 'NOT PAID', 0, NULL, '2020-08-30 05:14:07', '2020-08-30 05:14:07'),
(16, 50, 'NOT PAID', 0, NULL, '2020-08-30 05:52:54', '2020-08-30 05:52:54'),
(17, 56, 'PAID', 1000, NULL, '2020-08-30 06:10:13', '2020-08-30 06:10:13'),
(18, 27, 'PAID', 0, NULL, '2020-08-30 06:26:15', '2020-08-30 06:26:15'),
(19, 37, 'NOT PAID', 0, NULL, '2020-08-30 06:30:22', '2020-08-30 06:30:22'),
(20, 58, 'NOT PAID', 1000, NULL, '2020-08-30 08:27:14', '2020-08-30 08:27:14'),
(21, 52, 'PAID', 1000, NULL, '2020-08-30 11:52:47', '2020-08-30 11:52:47'),
(22, 47, 'NOT PAID', 0, NULL, '2020-08-30 13:42:15', '2020-08-30 13:42:15');

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
(1, 'Global', 'Green world', 'Zenith', '1012494483', 'Global green world resources', '09052176982', '2020-08-28 22:49:40', '2020-08-28 22:49:40'),
(2, 'Nkemjika', 'Ukamaka', 'Access Bank', '0024626178', 'Nkemjika Ukamaka', '08125607281', '2020-08-30 10:58:10', '2020-08-30 10:58:10');

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
  `amount_paid_confirmed` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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

INSERT INTO `pledges` (`id`, `user_id`, `amount`, `amount_paid`, `amount_paid_confirmed`, `interest`, `referrer_bonus`, `referrer_id`, `status`, `when_due`, `created_at`, `updated_at`) VALUES
(1, 2, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(2, 3, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(3, 4, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(4, 5, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(5, 6, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(6, 7, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(7, 8, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(8, 9, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(9, 10, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(10, 11, 200000, 0, 0, 100000, 0, 1, 'PAID', '2020-08-29 23:00:00', '2020-08-29 23:00:00', '2020-08-29 23:00:00'),
(11, 12, 50000, 0, 0, 25000, 1000, 1, 'NOT PAYED', NULL, '2020-08-29 22:21:33', '2020-08-29 22:21:33'),
(12, 13, 5000, 0, 0, 2500, 100, 1, 'NOT PAYED', NULL, '2020-08-29 23:13:05', '2020-08-29 23:13:05'),
(13, 15, 200000, 200000, 0, 100000, 4000, 1, 'PAID', NULL, '2020-08-29 23:13:46', '2020-08-30 17:07:57'),
(14, 14, 10000, 0, 0, 5000, 200, 1, 'NOT PAYED', NULL, '2020-08-29 23:13:51', '2020-08-29 23:13:51'),
(15, 25, 10000, 0, 0, 5000, 200, 19, 'NOT PAYED', NULL, '2020-08-30 00:47:09', '2020-08-30 00:47:09'),
(16, 26, 50000, 0, 0, 25000, 1000, 19, 'NOT PAYED', NULL, '2020-08-30 02:56:48', '2020-08-30 02:56:48'),
(17, 36, 5000, 0, 0, 2500, 100, 1, 'NOT PAYED', NULL, '2020-08-30 03:10:37', '2020-08-30 03:10:37'),
(18, 33, 5000, 0, 0, 2500, 100, 26, 'NOT PAYED', NULL, '2020-08-30 03:18:27', '2020-08-30 03:18:27'),
(19, 16, 10000, 0, 0, 5000, 200, 1, 'NOT PAYED', NULL, '2020-08-30 03:29:34', '2020-08-30 03:29:34'),
(20, 17, 30000, 0, 0, 15000, 600, 1, 'NOT PAYED', NULL, '2020-08-30 03:43:20', '2020-08-30 03:43:20'),
(21, 40, 5000, 0, 0, 2500, 100, 19, 'NOT PAYED', NULL, '2020-08-30 03:51:35', '2020-08-30 03:51:35'),
(22, 31, 5000, 0, 0, 2500, 100, 26, 'NOT PAYED', NULL, '2020-08-30 04:00:55', '2020-08-30 04:00:55'),
(23, 53, 5000, 0, 0, 2500, 100, 50, 'NOT PAYED', NULL, '2020-08-30 04:35:41', '2020-08-30 04:35:41'),
(24, 41, 20000, 0, 0, 10000, 400, 14, 'NOT PAYED', NULL, '2020-08-30 04:45:56', '2020-08-30 04:45:56'),
(25, 18, 5000, 0, 0, 2500, 100, 1, 'NOT PAYED', NULL, '2020-08-30 05:14:07', '2020-08-30 05:14:07'),
(26, 50, 50000, 0, 0, 25000, 1000, 15, 'NOT PAYED', NULL, '2020-08-30 05:52:54', '2020-08-30 05:52:54'),
(27, 56, 200000, 0, 0, 100000, 4000, 50, 'NOT PAYED', NULL, '2020-08-30 06:10:13', '2020-08-30 06:10:13'),
(28, 27, 20000, 0, 0, 10000, 400, 1, 'NOT PAYED', NULL, '2020-08-30 06:26:15', '2020-08-30 06:26:15'),
(29, 37, 200000, 0, 0, 100000, 4000, 34, 'NOT PAYED', NULL, '2020-08-30 06:30:22', '2020-08-30 06:30:22'),
(30, 58, 50000, 0, 0, 25000, 1000, 1, 'NOT PAYED', NULL, '2020-08-30 08:27:14', '2020-08-30 08:27:14'),
(31, 52, 5000, 0, 0, 2500, 100, 31, 'NOT PAYED', NULL, '2020-08-30 11:52:47', '2020-08-30 11:52:47'),
(32, 47, 10000, 0, 0, 5000, 200, 31, 'NOT PAYED', NULL, '2020-08-30 13:42:15', '2020-08-30 13:42:15');

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

--
-- Dumping data for table `pledge_tracker`
--

INSERT INTO `pledge_tracker` (`id`, `pledge_id`, `amount`, `user_sending`, `user_receiving`, `status`, `proof`, `updated_at`, `created_at`) VALUES
(2, 13, 200000, 15, 2, 'NOT CONFIRMED', NULL, '2020-08-30 17:07:57', '2020-08-30 17:07:57');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sex` enum('MALE','FEMALE') NOT NULL DEFAULT 'MALE',
  `email_confirmation_key` char(150) NOT NULL,
  `agreed_to_terms` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `user_ref` char(150) NOT NULL,
  `referrer` bigint(20) UNSIGNED NOT NULL,
  `mobile_verification_code` char(10) DEFAULT NULL,
  `profile_picture` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_type`, `first_name`, `middle_name`, `last_name`, `email`, `confirmed_email`, `registration_fee`, `confirmed_by`, `password`, `mobile`, `confirm_mobile`, `status`, `created_at`, `updated_at`, `sex`, `email_confirmation_key`, `agreed_to_terms`, `user_ref`, `referrer`, `mobile_verification_code`, `profile_picture`) VALUES
(1, 'ADMIN', 'greatelite', NULL, 'investment', 'greatelites01@gmail.com', 'YES', 'PAID', 0, '$2y$10$umLPAp6uFzG0bI88KIe1QOc99QoSQJlNAyIfEgko3IJQrFGfv5Z3.', '07017763998', 'YES', 'ACTIVE', '2020-08-29 11:47:57', '2020-08-29 11:47:57', 'MALE', 'a1af6545ffcc9cc37f3e1126528fd243', 'YES', 'dbf46fe765953d4f168ec31f5caf27dd', 1, '209387', NULL),
(2, 'ADMIN', 'John', NULL, 'kelly', 'js.ubah@yahoo.com', 'YES', 'PAID', 0, '$2y$10$B.pnpwH4J3o7ujDBO1OPr.5urIdX57/582I2rTNk2mkhNqKHs.c6u', '08125536955', 'YES', 'ACTIVE', '2020-08-29 11:56:22', '2020-08-29 11:56:22', 'MALE', '125b1325b3d4c6cb54245338048816de', 'YES', '17b33e9e0823c14e8269f5d844b22182', 1, '209387', NULL),
(3, 'ADMIN', 'A to Z building', NULL, 'Venture', 'azbuilding@greatelites.com', 'YES', 'PAID', 0, '$2y$10$RZCwTWH/pO8ojmBvcgt4.OR3RPPX6kI42cUsE/YWjaVNX0/OzNFkq', '07011588919', 'YES', 'ACTIVE', '2020-08-29 12:11:58', '2020-08-29 12:11:58', 'MALE', 'ed7fab16ea637259a0b3d9726d641653', 'YES', '578be5253a82afaf8e7bf7fe863b759a', 1, '209387', NULL),
(4, 'ADMIN', 'otseya', NULL, 'global', 'otseya@greatelites.com', 'YES', 'PAID', 0, '$2y$10$LBw49GmRwOyUfQP2kAWtsuuauAWSty7RavQVIuC9e9zUfMpRk94ge', '07013012427', 'YES', 'ACTIVE', '2020-08-29 12:16:49', '2020-08-29 12:16:49', 'MALE', 'd387801d48107e87d86ace17dc09e09e', 'YES', '78bffa362d4ddb0f3c5c763f7bb75b43', 1, '209387', NULL),
(5, 'ADMIN', 'emmanuel', NULL, 'udee', 'e.udee83@yahoo.com', 'YES', 'PAID', 0, '$2y$10$z9YgOD1rSUQIIOyNgEdAcO.DW1ffvcCTOE5bLFUmNGm2VUKuUqT7O', '08088013618', 'YES', 'ACTIVE', '2020-08-29 12:21:58', '2020-08-29 12:21:58', 'MALE', '3d90617dda113b0812243e0295d26575', 'YES', '33e727eec8ecd0882b8ed50e55e1c569', 1, '209387', NULL),
(6, 'ADMIN', 'ezelibe', NULL, 'donald', 'donzelventures001@greatelites.com', 'YES', 'PAID', 0, '$2y$10$kfU/FoVWjjf72qfR5oYjR.IaK5vUL0.252iQ..6F.o8f9xatPc2nC', '08028307415', 'YES', 'ACTIVE', '2020-08-29 12:29:39', '2020-08-29 12:29:39', 'MALE', '1eec1be2467fe2d21c9673555e35aa3d', 'YES', '9a4a3927d57fb27c9b5c5ed87c47bf9a', 1, '209387', NULL),
(7, 'ADMIN', 'enyi', NULL, 'intergrated', 'enyiintergrated001@greatelites.com', 'YES', 'PAID', 0, '$2y$10$uoVC8VHk1yRY8Y435ffGWuYkKGaiv2fowPQyXynJ2o5ViXywKX9MC', '08082602211', 'YES', 'ACTIVE', '2020-08-29 12:34:06', '2020-08-29 12:34:06', 'MALE', '2ece4fca8126e01f4a2285ff0046eeab', 'YES', '20f883ff6404dd6e072a98a9d604e9ab', 1, '209387', NULL),
(8, 'ADMIN', 'igbonecherem', NULL, 'ekene', 'differentekene@gmail.com', 'YES', 'PAID', 0, '$2y$10$MiYVyKGlh0aMrRW4mGT.xO.55x9twshdpiC222RCcMfo.OTpNZU2a', '08125607281', 'YES', 'ACTIVE', '2020-08-29 12:37:30', '2020-08-29 12:37:30', 'MALE', 'debf1c2aee04342bed2ca8315b3d8f1d', 'YES', 'd5d359761c4803af4fa93addf671f13a', 1, '209387', NULL),
(9, 'ADMIN', 'okafor', NULL, 'sandra', 'okaforsandra@greatelites.com', 'YES', 'PAID', 0, '$2y$10$Dnx3pphCRL1WP4cFoDBa9O2KHP3/yOcr/4mJA7EF56CBa/FnRQKWe', '08121490059', 'YES', 'ACTIVE', '2020-08-29 12:42:01', '2020-08-29 12:42:01', 'MALE', '61e5e2276430d50bb5e1a020474318b4', 'YES', '45b14dde46544718366070ced3769e8c', 1, '209387', NULL),
(10, 'ADMIN', 'opuniche', NULL, 'eke', 'opunicheeke@greatelites.com', 'YES', 'PAID', 0, '$2y$10$9lb.kFI5ZBkEtJOBVGfiAevOLcQW/jkXS7cRHy96hAxTLFZpfozry', '08126442775', 'YES', 'ACTIVE', '2020-08-29 12:44:40', '2020-08-29 12:44:40', 'MALE', 'd5bbd46206efcf24d3b223105f42474c', 'YES', 'f64cfc4f64349233592f36408db465d3', 1, '209387', NULL),
(11, 'ADMIN', 'joy', NULL, 'nkemjika', 'joynkemjika@greatelites.com', 'YES', 'PAID', 0, '$2y$10$jRzo95cT655KKRkbEJEYFeXfenAm7/x5sK41z9nXCrf/CBMF6ugPG', '08083089970', 'YES', 'ACTIVE', '2020-08-29 12:48:47', '2020-08-29 12:48:47', 'MALE', '57907b9677b13a3906c0f1856dff5508', 'YES', '04b5a89141d916ede7636a3a34a26199', 1, '209387', NULL),
(12, 'ADMIN', 'idisimagha', NULL, 'dublin-green', 'greendublin007@gmail.com', 'YES', 'PAID', 12, '$2y$10$4WLvnNk3M12lh8G4wZ8svu060R/oM04jxlECxkGg7FTHc.pjfObB2', '07032090809', 'YES', 'ACTIVE', '2020-08-29 22:18:09', '2020-08-30 10:15:03', 'MALE', '27340a3bd25860f06470111010eeafb8', 'YES', '627d4fe4df62d93289fbabded0703756', 1, '686999', NULL),
(13, 'ADMIN', 'Emmanuel', NULL, 'Udeh', 'gree.nice@yahoo.com', 'YES', 'PAID', 0, '$2y$10$JiMqOmepudel3wEmn2X/j.cd1rSuOkh6ItBj7hlVrVwnf5UFh45Qu', '07062904052', 'YES', 'ACTIVE', '2020-08-29 22:38:28', '2020-08-29 22:53:22', 'MALE', '5759e0af5d8256bfc1f46d1f61bfe77f', 'YES', 'b4964ab741cdd883c3d65f9414660d8b', 1, '886664', NULL),
(14, 'REGULAR', 'Nkemjika', NULL, 'Joy', 'joyc76677@gmail.com', 'YES', 'PAID', 0, '$2y$10$VmbHl1zhiT0b3HElIn4Kd.pV.Swsukw1M77UFlgnR4tV/xLYcwh.a', '08032512404', 'YES', 'ACTIVE', '2020-08-29 22:38:45', '2020-08-29 23:08:43', 'FEMALE', '8aa5aff09932710259ed840e3f74daee', 'YES', 'e25fc467b5f3ef98908b9703c3f2bd09', 1, '824502', NULL),
(15, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'donaldezelibe001@gmail.com', 'YES', 'PAID', 0, '$2y$10$AMUqmrRkVTocFxiCkH2FiOOQ7B.6OAM.NDtjwEWVdqCXSAQO73kH.', '08036003595', 'YES', 'ACTIVE', '2020-08-29 22:38:52', '2020-08-29 23:03:52', 'MALE', 'ae02037ba02d17b9aa8c35ae0a2badff', 'YES', '4bd4aa0c7db4b22a9dd4eec89ad99153', 1, '374937', NULL),
(16, 'REGULAR', 'Nduka', NULL, 'Chimereogo', 'chimeleogogloria@gmail.com', 'YES', 'PAID', 0, '$2y$10$ape.lTPsC3OMY.4s/NANtOvawYLOuYTa1Qr3TL3pm1dVTq2XSZfze', '09039728113', 'YES', 'ACTIVE', '2020-08-29 23:21:45', '2020-08-30 01:10:06', 'MALE', '8ee21f9ea9d8651fede7f406de3c2427', 'YES', '4c4b8770092cf9c604c97ef22b49311c', 1, '157714', NULL),
(17, 'REGULAR', 'Peace', 'Chidinma', 'Achazie', 'peaceachazie3@gmail.com', 'YES', 'PAID', 0, '$2y$10$LAuVzSoZ2PLqcCLzD3.peuBB.8nJ4JHa7dnERGgFk7nLRT5WkGOxe', '09052502512', 'YES', 'ACTIVE', '2020-08-29 23:29:50', '2020-08-30 00:14:52', 'FEMALE', '5ce4a232cd57e1a36b4cb5438c2fd89f', 'YES', '7502664fe9f68076f0b59ada2e6a5ff4', 1, '117871', NULL),
(18, 'REGULAR', 'Nwanneka', NULL, 'Onuigbo', 'nnekaonuigbo@gmail.com', 'YES', 'PAID', 0, '$2y$10$Yn5MsUGz7Rlq5POGymYJweKSaSqnbCsegOxHE1wPrI9TfVviDgmki', '08035405352', 'YES', 'ACTIVE', '2020-08-29 23:32:24', '2020-08-30 05:11:24', 'FEMALE', 'dd5f54b006e0803e23002786971352ba', 'YES', '58e730266cc0b11721c6ca7908662c62', 1, '353773', NULL),
(19, 'REGULAR', 'Ekene', 'Valentine', 'Nkemjika', 'chylove374@gmail.com', 'YES', 'PAID', 0, '$2y$10$fQcQvpdrSsJ3jXjpOGQUPOINFqKWw2gt3IYjHPtoUwxGdNTuxXfru', '08033354743', 'YES', 'ACTIVE', '2020-08-29 23:40:27', '2020-08-30 07:40:11', 'MALE', '9eb86753debfa0471d6b9333c32fb256', 'YES', '7a1fe47c981951fd74d768954bb78734', 14, '288657', NULL),
(20, 'REGULAR', 'Nkemjika', NULL, 'Ekene', 'evalentine458@gmail.com', 'YES', 'PAID', 0, '$2y$10$/Rg1Pvim0cFveWbNgZigDOntsRYlqlQoBnh6/.LgjCO5VokM/3V9u', '08033354743', 'YES', 'ACTIVE', '2020-08-29 23:58:15', '2020-08-30 08:19:01', 'MALE', 'd074846507c1004c9781c5801f8b2299', 'YES', 'bb9ea3457abde739a718670d1ae70836', 14, '895914', NULL),
(21, 'REGULAR', 'Nkiruka', NULL, 'Onuegbu', 'nikiogebest@gmail.com', 'YES', 'PAID', 0, '$2y$10$AI3BrksBJB.U80ZF5g.4z.zea6pHhGP24wRwBMbK2jWVnY9MZH1XW', NULL, 'NO', 'ACTIVE', '2020-08-29 23:58:36', '2020-08-30 07:51:16', 'MALE', '7f35e376cef2c6ccba67eb6ccf001ac7', 'NO', 'a8f3c7e4e04bae71137a4ae9824d880e', 1, NULL, NULL),
(22, 'REGULAR', 'Dike', NULL, 'Paschal', 'ugomoore3@gmail.com', 'NO', 'PAID', 0, '$2y$10$BolUAiTiYVEw0lGDsm1gLONCMJZYbBGrvYb795vK2Unin/tGRFLRu', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 00:25:23', '2020-08-30 00:25:23', 'MALE', '575269bd1d4aa05a0f210431a6aadee5', 'NO', '250339820421964bd5cb72f52613ef25', 19, NULL, NULL),
(23, 'REGULAR', 'Chariry', NULL, 'Umennadi', 'chariryumennadi78@gmail.com', 'NO', 'PAID', 0, '$2y$10$bLDHZzDm8oXYaPAIVD0Oqe9swmy5Ad1lfXROSZxs4EszL4DGEAF/S', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 00:26:02', '2020-08-30 07:54:23', 'MALE', 'ea4def805753505c67a294f724f605bf', 'NO', '2c31b3370e85a2d86056538e29e0deb2', 19, NULL, NULL),
(24, 'REGULAR', 'Chinenyenwa', NULL, 'Osi', 'chinenyeosi8@gmail.com', 'YES', 'PAID', 0, '$2y$10$/xV7pXdDPGE2Tdzq96Tjaed.KEjb4ZMtTAXTJFREupjIKDIMtVBBa', NULL, 'NO', 'ACTIVE', '2020-08-30 00:27:23', '2020-08-30 01:00:00', 'MALE', 'a0aaa6e5277031b60a72ca3ffe688ba1', 'NO', '982acdc11abd1757596634f1f4cc3005', 12, NULL, NULL),
(25, 'REGULAR', 'Uju', NULL, 'Oby', 'ujunwa1968@gmail.com', 'YES', 'PAID', 0, '$2y$10$bp4jmVDCngzqze40uxTfM.jRDdaFTEIcFQNfGtaohO6uaS0wvONva', '08037575397', 'YES', 'ACTIVE', '2020-08-30 00:29:33', '2020-08-30 01:02:51', 'FEMALE', '25a4565a657a2d1d6bab5dc19fdbe9b5', 'YES', 'aa36dc086a631adfa3a405b141d7e3cb', 19, '971290', NULL),
(26, 'REGULAR', 'Miriam', 'Chizitere', 'Anusionwu', 'chizzymiriam25@gmail.com', 'YES', 'PAID', 0, '$2y$10$SHbkfPiKS4.DWGDlSHd9l.HaMasxtaHgJXqIH/sg7CrzV9E1I/oIC', '08060620877', 'NO', 'ACTIVE', '2020-08-30 00:46:25', '2020-08-30 01:50:12', 'FEMALE', 'e37e4c9c796ea0a8234673c207ce5449', 'NO', 'f2137eac4516ee9d49514f1f17a8c989', 19, NULL, NULL),
(27, 'REGULAR', 'Uzor', NULL, 'Bridget', 'okpochetachi@gmail.com', 'YES', 'PAID', 0, '$2y$10$JThUyvbnXP6zSd3uxD.XSeeH1r2UycNgRwKQvxYDK51YKjrq3xiRm', '08126986262', 'YES', 'ACTIVE', '2020-08-30 00:48:38', '2020-08-30 06:23:54', 'FEMALE', '4e0bfaab34baef2c55861f415ff83810', 'YES', '42f314a30efe99bd890bab0c19054737', 1, '435706', NULL),
(28, 'REGULAR', 'Okoli', NULL, 'Maria', 'oobioma93@gmail.com', 'NO', 'PAID', 0, '$2y$10$rrEG208B6bjfaAAv1JazIe/Zv6lmEwAe1DjNNbsjNpvfA/AzerfpW', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 00:49:19', '2020-08-30 07:54:47', 'MALE', '815874aab305f3b33768ed1abaad8912', 'NO', '69cc3a38713ff345afe5e8663d1de13f', 15, NULL, NULL),
(29, 'REGULAR', 'Okoli', NULL, 'Maria', 'obiomae96@gmail.com', 'NO', 'PAID', 0, '$2y$10$IybsZmNzst7YEHCmjZTN0OYCHLFF7qS0B10bXlseUeeY2rezSlLxy', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 01:12:33', '2020-08-30 01:12:33', 'MALE', '02b9147fd7be3ea61f5f1ebd9127b1e4', 'NO', '0e70cebc138d4aceda1448f5fe8799d3', 1, NULL, NULL),
(30, 'REGULAR', 'Pauline', NULL, 'Onyeanusi', 'nkechipauline11@gmail.com', 'NO', 'PAID', 0, '$2y$10$HepLEetBH956YGteRCV0NuHImiy3FHvZdCX3NOiZr5wP3RBW7REPe', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 01:24:21', '2020-08-30 07:55:18', 'MALE', '4be96563b05736b8bbef4618f4f0f154', 'NO', '318528af3f9de98824e0e8fb5739bca6', 14, NULL, NULL),
(31, 'REGULAR', 'Okafor', NULL, 'Chinwe', 'okaforchinwendu80@gmail.com', 'YES', 'PAID', 0, '$2y$10$XBx4AkNDcW0Cm9jYdJLDuetQxEOws/3Cm87KW4IQbiUCXON2ewOMq', '08065328340', 'YES', 'ACTIVE', '2020-08-30 01:53:02', '2020-08-30 07:54:52', 'FEMALE', '77df27c2494da089292317e79070804f', 'YES', 'dc42173b03285066300b0f8b00c443ae', 26, '631955', NULL),
(32, 'REGULAR', 'Charity', NULL, 'Umeh', 'charityumennadi78@gmail.com', 'YES', 'PAID', 0, '$2y$10$20hO1CNgzpTQUDSu8nieQe34sQJ6/I4wcGLVae8k6YMyN7FW/NZxq', '08038358843', 'YES', 'ACTIVE', '2020-08-30 01:58:23', '2020-08-30 07:57:45', 'FEMALE', 'd16d42415b6419746247542a1747aa90', 'YES', '0ce4e9e30730ec736fbcc3fae956763d', 19, '393620', NULL),
(33, 'REGULAR', 'Chika', 'Mavis', 'Otubelu', 'achysdony2k@gmail.com', 'YES', 'PAID', 0, '$2y$10$NcfFGXv78NMdJB5DcbYfl.F8qJp0Pj9U4i.Qq3r7HvLhOaMKNpRm2', '08032740129', 'YES', 'ACTIVE', '2020-08-30 01:59:00', '2020-08-30 03:15:22', 'FEMALE', 'f11afedc07eb976b4f1f918732e56cf3', 'YES', 'ccefd080c889f229d023ed9255991986', 26, '897384', NULL),
(34, 'REGULAR', 'Osi', NULL, 'Ralph', 'zeedaabio043@gmail.com', 'YES', 'PAID', 0, '$2y$10$uxP2t3eLz4k.fmm60IjZv.iQ9KBvfnb8bidOv0kwEmv3r/pakniz6', '08090784582', 'NO', 'ACTIVE', '2020-08-30 02:05:48', '2020-08-30 02:58:24', 'MALE', 'bdfc77cbf008f27c9cd07f579f34c5a5', 'NO', '96c56fbf3f3a64a61129d4fa70d3e259', 14, '975926', NULL),
(35, 'REGULAR', 'Tina', NULL, 'Nwoko', 'nwokotina@gmail.com', 'NO', 'PAID', 0, '$2y$10$.MJwc96G6Rn8qB/mKL5FQOQdM0VrumvXchK2CZkuHYMkThnxKwoom', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 02:07:27', '2020-08-30 07:58:02', 'MALE', '5599f8ddc92587733391c048e5b99b70', 'NO', 'd50d566dd553cc1c6c18c85df277ee75', 19, NULL, NULL),
(36, 'REGULAR', 'Doris', 'Ukeje', 'Chibuzo', 'Dorisjessica71@yahoo.com', 'YES', 'PAID', 0, '$2y$10$xDkOFmisudLGwZridQuOw.Jtgg0Ot0sxhg3jSxzQLHaOfxCYHSdaO', '08117365280', 'YES', 'ACTIVE', '2020-08-30 02:11:06', '2020-08-30 03:08:16', 'FEMALE', '730ee26ebc1a41f3ff309bf75b5ad428', 'YES', '814584b43825f2d329cacbac9e344a09', 1, '273460', NULL),
(37, 'REGULAR', 'Chinenyenwa', 'Ugo', 'Osi', 'osiraphael2020@gmail.com', 'YES', 'PAID', 0, '$2y$10$m.eD8ta1BgUi3i2f7aJyAOj.5s23NXydBUyp8DsN9kMjJeHBHOc0.', '09091477622', 'YES', 'ACTIVE', '2020-08-30 02:36:20', '2020-08-30 06:15:04', 'FEMALE', '98c51b722348b06d6b69aa4ea70945ea', 'YES', '590a0e1ca3bd6d5ce8b0782c8dbc7174', 34, '208426', NULL),
(38, 'REGULAR', 'Deborah', NULL, 'Gbadegesin', 'dehbeeghel@gmail.com', 'NO', 'PAID', 0, '$2y$10$9Cp4OCDHh1Z.fsz3wyX8sOuNQ9dYhi6154.hQBGbOB241voQQMTPa', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 02:43:03', '2020-08-30 07:59:59', 'MALE', 'e7a33770da668994dc35e46184a2bb95', 'NO', 'ae63c8e035ed2999e5f0ef4ad7531488', 26, NULL, NULL),
(39, 'REGULAR', 'Ayo', NULL, 'Akinlosotu', 'ayoakin17@yahoo.com', 'YES', 'PAID', 0, '$2y$10$8jfQlT4aOVKyA5B13NJla.F3HvlcUFxTsdR2hAHdNvrm5cmHlDNZS', '09073683277', 'YES', 'ACTIVE', '2020-08-30 02:51:34', '2020-08-30 08:02:20', 'MALE', 'e1e0430aaef02bca974377bea18339b1', 'YES', '0ddc2242e0e04105d01f59ccf9826293', 19, '299501', NULL),
(40, 'REGULAR', 'Paschal', NULL, 'Dike', 'ugomoorefab@gmail.com', 'YES', 'PAID', 0, '$2y$10$WS34znhc2haDPx4ixXy7KO.7iVvE43vh33avSiMnQ.3D3PGQbtCPe', '09031597510', 'YES', 'ACTIVE', '2020-08-30 02:57:32', '2020-08-30 03:20:49', 'MALE', '0b6c25919bb0b508c9eb8b4ba0a2b4e6', 'YES', '0fb7a8a506ae9c244d13b2bc3c02a3a7', 19, '359347', NULL),
(41, 'REGULAR', 'Chibunna', 'Kelvin', 'Nwankwo', 'nwankwochibunna2017@yahoo.com', 'YES', 'PAID', 0, '$2y$10$sH6xivo6qQBpxedgiB0MyeuNwhi2wJrNDT/AFWMPj1W.yUWAj9JyS', '08139159929', 'YES', 'ACTIVE', '2020-08-30 02:58:58', '2020-08-30 03:26:26', 'MALE', 'e279a6d6c84761937e3307e749a0262c', 'YES', '5bc152df8872f1dcb835066687ec2551', 14, '486115', NULL),
(42, 'REGULAR', 'Bright', NULL, 'Akaraiwe', 'chidoziebright0@gmail.com', 'YES', 'PAID', 0, '$2y$10$9ENMRLvHk2ekqv/HUPQCcu7SvfUQ8N4fFi3xscDtPB0cyN1e67pHO', '08145647420', 'YES', 'ACTIVE', '2020-08-30 03:09:16', '2020-08-30 08:03:03', 'MALE', 'becfa9daa93aa3b8b5128e2f6772512b', 'YES', '6ced89e75df7faf1c8549808ba258b78', 19, '312778', NULL),
(44, 'REGULAR', 'Chibunna Kelvin', NULL, 'Nwankwo', 'nwankwochibinna24@gmail.com', 'NO', 'NOT PAID', 0, '$2y$10$IGdRBlahvWcFQ1QmO6qFy.dLTqWKgZMND4oP1wKC8yQm4iN8MRu5K', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 03:11:09', '2020-08-30 03:11:09', 'MALE', '17a2f79a67f248c70da6b102cd2278a7', 'NO', 'ce417a49d410b7592954f7c606081ae7', 1, NULL, NULL),
(45, 'REGULAR', 'Okeke', NULL, 'Maria', 'okolilaz40@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$wwaNoxeRooLOLdTM3is1VeWNgfBREYO77C1pdzzb.PMqDocogG1N6', NULL, 'NO', 'ACTIVE', '2020-08-30 03:15:49', '2020-08-30 03:52:54', 'MALE', 'af8307cb4b2fe43dbf86e3c3a327a33a', 'NO', '363ed55c6e0497c060079ef4a115e3d7', 15, NULL, NULL),
(46, 'REGULAR', 'Nkechi', NULL, 'Paulin', 'nwezerosemary3@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$SVBeMyV298gsNZm304FnJeRRjp6jvjfugWMFkzrEeGcaO6rjwdG4C', '08034715716', 'YES', 'ACTIVE', '2020-08-30 03:31:51', '2020-08-30 04:28:05', 'FEMALE', 'b6a66dd93e2f9a166ce849e61b191d20', 'YES', '6239446255df47f8ce37a05308b68f63', 40, '739538', NULL),
(47, 'REGULAR', 'Adaeze', NULL, 'Ekeh', 'ciniepotia@gmail.com', 'YES', 'PAID', 0, '$2y$10$VQSMFf7d.FxDoHYDUu3b8eDHU1eWIuOkMN0oZRQJf0tnRAiqwVSQC', '07039435841', 'YES', 'ACTIVE', '2020-08-30 03:49:59', '2020-08-30 13:41:19', 'MALE', '8ff82c6c9832de12ec3ea8bc24c28cbd', 'YES', 'a1e2eceffe02a83b3427688c68b8575d', 31, '309376', NULL),
(48, 'REGULAR', 'Uzor', NULL, 'Bridget', 'uzorbridget63@gmail.com', 'YES', 'PAID', 0, '$2y$10$wwdMPDQWLUEPoVjWKzZWf.5jDV5xBvGwsrwP9.cEEhTm6B4HQpPrC', NULL, 'NO', 'ACTIVE', '2020-08-30 03:57:30', '2020-08-30 03:59:44', 'MALE', '9c798e79d380d98bc30418d0366fce52', 'NO', '8ad8046e86ca8760201345dded6da2b7', 19, NULL, NULL),
(49, 'REGULAR', 'Usman', NULL, 'Nurudeen', 'nurudeenusman95@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$kNo4Mm7n3TCOcR9nDnZd8Oa5bqtHrI21dfQI5/sOasjycmcP1qP7W', NULL, 'NO', 'ACTIVE', '2020-08-30 03:59:59', '2020-08-30 04:05:58', 'MALE', '68a92737fe235516abf8719858afd9a4', 'NO', '8cf94de9448935f05fd072169a47ee04', 31, NULL, NULL),
(50, 'REGULAR', 'Okoli', NULL, 'Maria', 'johnobum00@gmail.com', 'YES', 'PAID', 0, '$2y$10$19qLQ4//mz3wZpMnnd3qLODgbSxNAQvVI3guTIqa/5hpZ5JXZ/sQm', '08034393506', 'YES', 'ACTIVE', '2020-08-30 04:00:51', '2020-08-30 04:08:01', 'FEMALE', '9383fbebca58dbf9bf7257431ad9a181', 'YES', '64495612c48d9a16b9df45cd422032a1', 15, '331520', NULL),
(51, 'REGULAR', 'Princess', NULL, 'Nnanna', 'preetymarokmary@yahoo.com', 'YES', 'NOT PAID', 0, '$2y$10$3vnjhimR.LCftJASlqWqOumqHS698vJ0QhArWyE7nrPbXzoP3bVuu', NULL, 'NO', 'ACTIVE', '2020-08-30 04:05:06', '2020-08-30 04:32:43', 'MALE', '2d1ceb012579b06df34624ba2c0a9de6', 'NO', '58a93acc9e131ddd936aabe9f12ddca7', 31, NULL, NULL),
(52, 'REGULAR', 'Chukwudum', NULL, 'Nneka', 'supremacyneky@gmail.com', 'YES', 'PAID', 0, '$2y$10$ERn8Jiw5Idz2vhcp385HwutxANpFIfCvcEpXND5N.l3f/hnQH1UfK', '07015716655', 'YES', 'ACTIVE', '2020-08-30 04:05:12', '2020-08-30 11:48:43', 'FEMALE', '79b87d90a22227d5c8f7ed626d12194f', 'YES', '61770a32da211db5918504e989facc59', 31, '909811', NULL),
(53, 'REGULAR', 'NWAMAKA', 'Iyvonne', 'CHHUKWUMA', 'ammychuks2016@gmail.com', 'YES', 'PAID', 0, '$2y$10$2ntNOS1f2nZFOkgX0CP8Jed8Ho/j3ExDlWFcZRE.5ZQo1HedL.R2C', '08033714434', 'YES', 'ACTIVE', '2020-08-30 04:17:30', '2020-08-30 04:33:13', 'FEMALE', '9029e6ba0ca4f5ae6dc32c165a5cc8ba', 'YES', 'd1c3cd133afc81f95382e168a2ed5ee2', 50, '688608', NULL),
(54, 'REGULAR', 'Ifeakam', 'Yvonne', 'Omo-odudu', 'yvonneifeax1@gmail.com', 'YES', 'PAID', 0, '$2y$10$DZnidbvehnuWvJyFunUWvuISrP1o.2A2aO50A4gywmC8dtAQrM8G2', '08085308437', 'NO', 'ACTIVE', '2020-08-30 04:32:47', '2020-08-30 13:43:06', 'FEMALE', '3ae7c8690a0ad213e135059428c00a24', 'NO', '300ec0541cfd7e76da06b9486223b445', 50, '790241', NULL),
(55, 'REGULAR', 'Adamu', NULL, 'Zainab', 'Zainabzadamu@gmail.com', 'YES', 'PAID', 0, '$2y$10$s8FhcLYixCF89w37IoWTBOGuYl/aLToYAocdCm.2owk/4a03yILyW', '08064736090', 'YES', 'ACTIVE', '2020-08-30 04:39:46', '2020-08-30 05:26:42', 'FEMALE', 'f48d6e44488be6af0c044e4b908fd0e6', 'YES', '6f5e2c479bc2cbae6ef25087949f179f', 31, '213074', NULL),
(56, 'REGULAR', 'Etumnu', 'Orji', 'Michael orji', 'orjimichael41@gmail.com', 'YES', 'PAID', 0, '$2y$10$cEMkVSW.OgCmJtwY9.ymo.DilXrp48Ejoc6p3tEGwwSLyaGsRq11S', '07041123123', 'YES', 'ACTIVE', '2020-08-30 05:03:19', '2020-08-30 05:18:52', 'MALE', '06a2dfaebdcb19698b853b32e2ccaddc', 'YES', 'd5ad4c2293d23d0db4bbd781d89533ec', 50, '455626', NULL),
(57, 'REGULAR', 'Euphemia', NULL, 'Anam', 'euphemiaanam2018@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$ahgGcn83ytb6NjpBUA.8ReY6HOHWVx6uXNAHwbNO3VlwOIl2CLsQC', NULL, 'NO', 'ACTIVE', '2020-08-30 05:26:49', '2020-08-30 05:44:57', 'MALE', '71d4e0faad42bd08b58eaa124ad03ab0', 'NO', '648f8c85547b2250ec5782e474a78bdf', 14, NULL, NULL),
(58, 'REGULAR', 'Efenarhua', NULL, 'Joy', 'etumudonjoy@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$llXlsiLXHXrltarKlDNKWe2akuiQ9qEGXMtUPK4RDqLvoTa/ROERm', '07080055768', 'YES', 'ACTIVE', '2020-08-30 06:05:43', '2020-08-30 07:57:15', 'FEMALE', 'd52f539fd1b2abda42a8caad53469852', 'YES', '8aaab702473d57e6082794476660a080', 1, '591895', NULL),
(59, 'REGULAR', 'Etus', NULL, 'Akpors', 'omolarah70@gmail.com', 'NO', 'NOT PAID', 0, '$2y$10$ekhUGtFQpMg2GfCucwke9.YLB9kDWbL0Ou/geKfVUWnWhvIlBorHS', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 06:26:21', '2020-08-30 06:26:21', 'MALE', '2c3a4ca89eeff1c97320474b707878a8', 'NO', '6ac743c962f5572549ecd19f67604bc4', 19, NULL, NULL),
(60, 'REGULAR', 'Vivian', NULL, 'Obayendo', 'vivianobidoo6@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$BVfN3jTm93jlcxuSQ4nhQOXaiy871gF5sM3kgUirr5.ev67DtBla6', NULL, 'NO', 'ACTIVE', '2020-08-30 12:47:51', '2020-08-30 12:49:11', 'MALE', '3503683283ba0573256dec460ff4aa75', 'NO', 'b043e4428e8bf3415e73f19c4b5ac8fe', 19, NULL, NULL),
(61, 'REGULAR', 'Ndatsu', NULL, 'Saifullahi', 'ndatsuchito@gmail.com', 'YES', 'NOT PAID', 0, '$2y$10$xekPSmavObaNt26T/ZcYm.PP9X6OzaVMUkFmh.D0ogksO1HPZcTfy', '08165498917', 'NO', 'ACTIVE', '2020-08-30 13:02:43', '2020-08-30 13:06:15', 'MALE', '68cd5466d312a0c22a0914c5eeee1bd4', 'NO', '4e182eb2cd6e455876d43593bc2ecbf2', 26, NULL, NULL),
(62, 'REGULAR', 'PRECIOUS', NULL, 'NKEMCHOR', 'linkprecious@gmail.com', 'NO', 'NOT PAID', 0, '$2y$10$BPC2oVeGEX02FkUkTXtSIeBMMCv8ro.Tyq9LWxZlmXCZSbpR9ZRP2', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 13:39:16', '2020-08-30 13:39:16', 'MALE', '8caa1d8ed4e9373d13147ff0a26f7d79', 'NO', '1039649e82eae3581470d05b56c371ec', 17, NULL, NULL),
(63, 'REGULAR', 'Arnold', NULL, 'Alabere', 'arnoldalabere@yahoo.com', 'YES', 'NOT PAID', 0, '$2y$10$HgXhI8hjTizPAkgXj44fY.eKVm36dy1MeJHYyxedpCcSVVIm9efyu', NULL, 'NO', 'ACTIVE', '2020-08-30 13:47:15', '2020-08-30 13:48:44', 'MALE', '5fd5326a99faa618a53147a8fc8190a2', 'NO', 'b7b2540d74aec5d2f33c58c351d6f649', 47, NULL, NULL),
(64, 'REGULAR', 'g', NULL, 'f', 'greendublin007@gmfail.com', 'NO', 'NOT PAID', NULL, '$2y$10$DzIuEuz2XCMWNEKLbFtNNu/CVg0QQQjdOKsDeZ8U6m4/QiBNcmNCy', NULL, 'NO', 'NOT ACTIVE', '2020-08-30 16:40:53', '2020-08-30 16:40:53', 'MALE', '0869ac148e3ea3f6a62f9bc6914edb9f', 'NO', '54bb1ca975cb0d5224385e6420f45deb', 1, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fee_accounts`
--
ALTER TABLE `fee_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pledges`
--
ALTER TABLE `pledges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pledge_options`
--
ALTER TABLE `pledge_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pledge_tracker`
--
ALTER TABLE `pledge_tracker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
