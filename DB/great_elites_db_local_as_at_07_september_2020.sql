-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2020 at 05:18 PM
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
(39, 47, 'Access  Bank', 'Adaeze Gloria Ekeh', '0725324939', 'ACTIVE', '2020-08-30 13:40:03', '2020-08-30 13:40:03'),
(40, 65, 'Stanbic IBTC', 'Idisimagha Dublin-Green', '0011606104', 'ACTIVE', '2020-09-04 23:37:45', '2020-09-04 23:37:45'),
(41, 66, 'Access diamond', 'Nkemjika Ukamaka Joy', '0073351471', 'ACTIVE', '2020-09-05 00:25:03', '2020-09-05 00:25:03'),
(42, 67, 'UBA', 'Nkemjika Ekene Valentine', '2136709798', 'ACTIVE', '2020-09-05 02:28:29', '2020-09-05 02:28:29'),
(43, 68, 'Guarantee trust bank plc', 'Emmanuel Udeh Ubah', '0512317277', 'ACTIVE', '2020-09-05 16:18:34', '2020-09-05 16:18:34');

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
(22, 47, 'NOT PAID', 0, NULL, '2020-08-30 13:42:15', '2020-08-30 13:42:15'),
(23, 65, 'PAID', 1000, NULL, '2020-09-04 23:43:09', '2020-09-04 23:36:22'),
(24, 66, 'NOT PAID', 1000, NULL, '2020-09-05 00:28:33', '2020-09-05 00:28:33'),
(25, 67, 'PAID', 1000, NULL, '2020-09-06 04:49:22', '2020-09-05 02:39:51'),
(26, 68, 'PAID', 1000, NULL, '2020-09-06 04:49:22', '2020-09-05 16:29:31');

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
  `amount_received_and_confirmed` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `interest` bigint(20) UNSIGNED NOT NULL,
  `bonus_to_collect` bigint(20) NOT NULL DEFAULT 0,
  `referrer_bonus` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `referrer_id` bigint(20) UNSIGNED NOT NULL,
  `paid_bonus` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `status` enum('PAID','PAYING','NOT PAYED') NOT NULL DEFAULT 'NOT PAYED',
  `process` enum('COMPLETE','INCOMPLETE') NOT NULL DEFAULT 'INCOMPLETE',
  `can_withdraw` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `when_due` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pledges`
--

INSERT INTO `pledges` (`id`, `user_id`, `amount`, `amount_paid`, `amount_paid_confirmed`, `amount_received_and_confirmed`, `interest`, `bonus_to_collect`, `referrer_bonus`, `referrer_id`, `paid_bonus`, `status`, `process`, `can_withdraw`, `when_due`, `created_at`, `updated_at`) VALUES
(1, 1, 200000, 0, 0, 0, 100000, 55000, 55000, 65, 'NO', 'PAID', 'COMPLETE', 'YES', '2020-08-05 01:00:00', '2020-08-29 23:00:00', '2020-09-05 00:57:02'),
(37, 66, 200000, 100000, 0, 0, 120000, 10000, 10000, 65, 'NO', 'PAYING', 'INCOMPLETE', 'NO', '2020-09-10 00:57:01', '2020-09-05 00:53:08', '2020-09-05 00:57:02'),
(38, 67, 100000, 200000, 200000, 0, 120000, 0, 10000, 66, 'NO', 'PAID', 'COMPLETE', 'NO', '2020-09-06 04:50:01', '2020-09-05 02:39:51', '2020-09-06 12:20:39'),
(39, 68, 20000, 20000, 20000, 0, 12000, 0, 1000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', '2020-09-11 04:50:01', '2020-09-05 16:29:31', '2020-09-06 12:21:26'),
(41, 65, 100000, 0, 0, 0, 60000, 0, 5000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-07 11:15:33', '2020-09-07 11:15:33'),
(49, 67, 100000, 0, 0, 0, 60000, 0, 2000, 66, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', NULL, '2020-09-07 12:43:01', '2020-09-07 12:43:01');

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
(6, 1, 200000, 65, 1, 'CONFIRMED', 'uploads/proof/8237e3adcf833028431b594257d6ca4d1599242299.pdf', '2020-09-05 00:58:19', '2020-09-05 00:57:01'),
(7, 1, 100000, 66, 1, 'CONFIRMED', 'uploads/proof/e2354df19d62cce47575e2155cce297e1599350091.jpg', '2020-09-06 06:54:51', '2020-09-05 00:57:02'),
(8, 36, 200000, 67, 65, 'NOT CONFIRMED', 'uploads/proof/ec60395c762a75f36c6ef9123b6c0c691599344621.jpg', '2020-09-06 12:20:39', '2020-09-06 04:50:01'),
(9, 36, 20000, 68, 65, 'CONFIRMED', 'uploads/proof/85712e4e97028d65aa5184bcb9a3abda1599355371.jpeg', '2020-09-06 12:21:26', '2020-09-06 04:50:02');

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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `status`, `user_id`, `first_name`, `pledge_id`, `message`, `updated_at`, `created_at`) VALUES
(2, 'REJECT', 65, 'idisimagha', 36, 'jiojiouj', '2020-09-07 14:09:32', '2020-09-07 14:09:32'),
(3, 'REJECT', 65, 'idisimagha', 36, 'jiojiouj', '2020-09-07 14:10:49', '2020-09-07 14:10:49'),
(4, 'REJECT', 65, 'idisimagha', 36, 'jiojiouj', '2020-09-07 14:11:17', '2020-09-07 14:11:17'),
(5, 'REJECT', 65, 'idisimagha', 36, 'jiojiouj', '2020-09-07 14:11:29', '2020-09-07 14:11:29');

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
  `profile_picture` char(255) DEFAULT NULL,
  `send_missed_merged_sms` enum('YES','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_type`, `first_name`, `middle_name`, `last_name`, `email`, `confirmed_email`, `registration_fee`, `confirmed_by`, `password`, `mobile`, `confirm_mobile`, `status`, `created_at`, `updated_at`, `sex`, `email_confirmation_key`, `agreed_to_terms`, `user_ref`, `referrer`, `mobile_verification_code`, `profile_picture`, `send_missed_merged_sms`) VALUES
(1, 'ADMIN', 'greatelite', NULL, 'investment', 'greatelites01@gmail.com', 'YES', 'PAID', 65, '$2y$10$sdo0iL0H2ZlYY1JvWn3v4e4pgVuz00/X/j2FMWi6pXZzmx92qhh2S', '07017763998', 'YES', 'ACTIVE', '2020-08-29 11:47:57', '2020-08-29 11:47:57', 'MALE', 'a1af6545ffcc9cc37f3e1126528fd243', 'YES', 'dbf46fe765953d4f168ec31f5caf27dd', 1, '209387', NULL, 'NO'),
(65, 'ADMIN', 'idisimagha', NULL, 'dublin-green', 'greendublin007@gmail.com', 'YES', 'PAID', 65, '$2y$10$ix5QznyroLrOLqz4gTr2WeGPp4k8ZndSg7Qh19ydG7AXHy4yZRX4G', '07032090809', 'YES', 'ACTIVE', '2020-09-04 23:31:55', '2020-09-07 07:22:24', 'MALE', '27340a3bd25860f06470111010eeafb8', 'YES', '627d4fe4df62d93289fbabded0703756', 1, '339885', NULL, 'NO'),
(66, 'REGULAR', 'Nkemjika', NULL, 'Joy', 'chylove374@gmail.com', 'YES', 'PAID', 65, '$2y$10$sdo0iL0H2ZlYY1JvWn3v4e4pgVuz00/X/j2FMWi6pXZzmx92qhh2S', '08125607281', 'YES', 'ACTIVE', '2020-09-05 00:07:38', '2020-09-05 00:19:09', 'FEMALE', '7b4fd4b8f7cf60a596cad853192ef55b', 'YES', '332013f934fa7351515fd2abd91c6456', 1, '897562', NULL, 'NO'),
(67, 'REGULAR', 'Nkemjika', NULL, 'Valentine', 'evalentine458@gmail.com', 'YES', 'PAID', 67, '$2y$10$sdo0iL0H2ZlYY1JvWn3v4e4pgVuz00/X/j2FMWi6pXZzmx92qhh2S', '08033354743', 'YES', 'ACTIVE', '2020-09-05 02:20:12', '2020-09-06 04:49:22', 'MALE', 'd074846507c1004c9781c5801f8b2299', 'YES', '4ff6421e80c03985529bdfddd7f87ed4', 66, '466803', NULL, 'NO'),
(68, 'REGULAR', 'Emmanuel', NULL, 'Udeh', 'gree.nice@yahoo.com', 'YES', 'PAID', 68, '$2y$10$sdo0iL0H2ZlYY1JvWn3v4e4pgVuz00/X/j2FMWi6pXZzmx92qhh2S', '07062904052', 'YES', 'ACTIVE', '2020-09-05 16:05:28', '2020-09-06 04:49:22', 'MALE', '5759e0af5d8256bfc1f46d1f61bfe77f', 'YES', 'b4964ab741cdd883c3d65f9414660d8b', 1, '164253', NULL, 'NO');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pledge_options`
--
ALTER TABLE `pledge_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pledge_tracker`
--
ALTER TABLE `pledge_tracker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
