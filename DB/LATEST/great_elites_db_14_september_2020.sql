-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2020 at 11:02 PM
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
(3, 3, 'Zenith bank plc', 'A-z building & tools & ventures', '1014070366', 'ACTIVE', '2020-08-29 20:13:40', '2020-09-10 05:51:49'),
(4, 4, 'Zenith Bank', 'otseya global resources', '1014645564', 'ACTIVE', '2020-08-29 20:20:53', '2020-08-29 20:20:53'),
(5, 5, 'Union Bank plc', 'Emmanuel Udeh U', '0117576637', 'ACTIVE', '2020-08-29 20:25:04', '2020-09-10 05:48:11'),
(6, 6, 'Polaris Bank', 'donald okwucheukwu ezelibe', '3048535700', 'ACTIVE', '2020-08-29 20:31:34', '2020-08-29 20:31:34'),
(7, 7, 'Heritage Bank', 'enyi intergrated services', '5100293935', 'ACTIVE', '2020-08-29 20:35:05', '2020-08-29 20:35:05'),
(8, 8, 'First Bank', 'igbonecherem ekene', '3035700668', 'ACTIVE', '2020-08-29 20:38:39', '2020-08-29 20:38:39'),
(9, 9, 'Polaris Bank', 'Okafor Sandra Ugonwa', '3048047153', 'ACTIVE', '2020-08-29 20:43:00', '2020-09-08 22:05:43'),
(10, 10, 'Access', 'opuniche eke', '0105742969', 'ACTIVE', '2020-08-29 20:46:03', '2020-08-29 20:46:03'),
(11, 11, 'FCMB', 'IKWUETOGHI CHINEMELUM', '3993587014', 'ACTIVE', '2020-08-29 20:49:59', '2020-09-08 04:11:26'),
(12, 12, 'Stanbic IBTC Bank', 'idisimagha dublin-green', '0011606104', 'ACTIVE', '2020-09-07 22:44:10', '2020-09-07 22:44:10'),
(13, 13, 'UBA', 'Nkemjika Ukamaka Joy', '2130623575', 'ACTIVE', '2020-09-07 23:59:02', '2020-09-13 05:51:11'),
(14, 14, 'First Bank', 'Igbonecherem Ekene Valentine', '3035700668', 'ACTIVE', '2020-09-08 00:31:56', '2020-09-08 03:43:19'),
(15, 15, 'First bank', 'Obayendo Vivian ujunwa', '3051496268', 'ACTIVE', '2020-09-08 02:43:50', '2020-09-08 02:43:50'),
(16, 16, 'FCMB', 'Donald Okwuchukwu Ezelibe', '6008384020', 'ACTIVE', '2020-09-08 05:13:16', '2020-09-08 05:13:16'),
(17, 21, 'First Bank ltd', 'Umennadi Charity Ukwuoma', '2006687669', 'ACTIVE', '2020-09-08 05:46:12', '2020-09-08 05:46:12'),
(18, 22, 'FCMB', 'Ezinwa gift', '3444264017', 'ACTIVE', '2020-09-08 05:53:37', '2020-09-08 05:58:22'),
(19, 25, 'Zenith bank', 'Ezemuo Amarachukwu Onyemaechi', '2283663837', 'ACTIVE', '2020-09-08 09:42:50', '2020-09-08 09:42:50'),
(20, 26, 'Blessing lmoniaro', 'Union bank', '0036453396', 'ACTIVE', '2020-09-08 14:03:56', '2020-09-08 17:57:53'),
(21, 27, 'Eco bank', 'Nworah precious ogochukwu', '2621252797', 'ACTIVE', '2020-09-08 14:26:34', '2020-09-09 01:16:31'),
(22, 29, 'Fidelity', 'Okoli maria Obioma', '4021393261', 'ACTIVE', '2020-09-08 15:08:07', '2020-09-08 15:08:07'),
(23, 31, 'Guarranty Trust Bank', 'Nwankwo Lovina Nneka', '0157324243', 'ACTIVE', '2020-09-08 15:58:29', '2020-09-08 15:58:29'),
(24, 34, 'Union Bank', 'Eneanya Nkiruka Amaka', '0098514710', 'ACTIVE', '2020-09-08 16:05:55', '2020-09-08 16:05:55'),
(25, 36, 'Guaranty trust bank', 'Nwamaka Chukwuma Iyvonne', '0008208937', 'ACTIVE', '2020-09-08 16:32:04', '2020-09-08 16:32:04'),
(26, 37, 'Access/diamond', 'Chibunna Kelvin Nwankwo', '0079216738', 'ACTIVE', '2020-09-08 16:47:05', '2020-09-08 16:47:05'),
(27, 38, 'Access Diamond', 'Onuegbu Nkiruka Ogechukwu', '0049639497', 'ACTIVE', '2020-09-08 16:52:13', '2020-09-08 16:52:13'),
(28, 39, 'FCMB', 'Udeh Nelson', '6352358012', 'ACTIVE', '2020-09-08 16:58:50', '2020-09-08 16:58:50'),
(29, 41, 'GTB', 'Ezeonwumelu Eucharia Nkeiruka', '0121702842', 'ACTIVE', '2020-09-08 17:07:51', '2020-09-08 17:07:51'),
(30, 40, 'Diamond Access bank', 'Anusionwu Miriam chizitere', '0057699784', 'ACTIVE', '2020-09-08 17:13:32', '2020-09-08 19:28:52'),
(31, 46, 'Access bank', 'Ukeje chibuzo Doris', '0025959632', 'ACTIVE', '2020-09-08 17:39:04', '2020-09-08 17:39:04'),
(32, 47, 'Access bank', 'Kanu Blessing Ukamaka', '0822076845', 'ACTIVE', '2020-09-08 17:49:24', '2020-09-08 17:49:24'),
(33, 49, 'Access  Bank', 'Adaeze Gloria Ekeh', '0725324939', 'ACTIVE', '2020-09-08 17:54:44', '2020-09-08 17:54:44'),
(34, 20, 'UBA', '2057642565', 'Akinlosotu Ayodele', 'ACTIVE', '2020-09-08 18:11:30', '2020-09-08 18:11:30'),
(35, 51, 'Diamond Bank', 'Ogechi Bibian Okoli', '0099169319', 'ACTIVE', '2020-09-08 18:13:51', '2020-09-08 18:13:51'),
(36, 52, 'Zenith Bank', 'Osi Chinenyenwa Ugonna', '2083479810', 'ACTIVE', '2020-09-08 18:16:46', '2020-09-08 18:16:46'),
(37, 44, 'Keystone', 'Ezeonwumelu Chinelo Felista', '6025916342', 'ACTIVE', '2020-09-08 18:29:28', '2020-09-08 18:29:28'),
(38, 59, 'Diamond/Access', 'Otubelu Chika Mavis', '0008415748', 'ACTIVE', '2020-09-08 18:47:02', '2020-09-08 18:47:02'),
(39, 57, 'UBA', 'OSAGIEDE PATRICIA', '2051456854', 'ACTIVE', '2020-09-08 18:47:58', '2020-09-08 18:47:58'),
(40, 58, 'First bank', 'Omo-odudu Yvonne Ifeakam', '2032899566', 'ACTIVE', '2020-09-08 18:47:58', '2020-09-08 18:47:58'),
(41, 42, 'Guaranty trust bank', 'Nwamaka Chukwuma Iyvonne', '0008208937', 'ACTIVE', '2020-09-08 18:51:00', '2020-09-08 18:51:00'),
(42, 43, 'Gtb', 'Ogu gold ihuoma', '0131824723', 'ACTIVE', '2020-09-08 19:01:55', '2020-09-08 19:01:55'),
(43, 50, 'Access bank', 'Emmanuel udoh', '0732788281', 'ACTIVE', '2020-09-08 19:07:58', '2020-09-08 19:07:58'),
(44, 64, 'Zenith Bank', 'SILVIA OGU NNEOMA', '2366508222', 'ACTIVE', '2020-09-08 19:15:11', '2020-09-08 19:15:11'),
(45, 63, 'Zenith bank', 'Efenarhua Joy', '2253865087', 'ACTIVE', '2020-09-08 19:15:38', '2020-09-08 19:15:38'),
(46, 67, 'Eco bank', 'Anusionwu Miriam Chizitere', '4341153556', 'ACTIVE', '2020-09-08 19:36:15', '2020-09-08 19:36:15'),
(47, 65, 'Polaris Bank', 'Iroha Akudo Lilian', '1018758892', 'ACTIVE', '2020-09-08 19:55:37', '2020-09-08 19:55:37'),
(48, 62, 'First bank', 'Dike Paschal Ugochukwu', '3096322735', 'ACTIVE', '2020-09-08 20:05:00', '2020-09-08 20:05:00'),
(49, 69, 'Fidelity Bank', 'Udeh Attah N.', '6018437019', 'ACTIVE', '2020-09-08 20:14:15', '2020-09-08 20:14:15'),
(50, 45, 'First bank', 'Christopher sandramary', '3099108350', 'ACTIVE', '2020-09-08 20:25:37', '2020-09-08 20:25:37'),
(51, 73, 'First bank', 'Iheyiribe Raymond ndubuisi', '3068677218', 'ACTIVE', '2020-09-08 20:34:54', '2020-09-08 20:34:54'),
(52, 76, 'Fidelity Bank', 'Anusionwu Samuel uchenna', '6017657025', 'ACTIVE', '2020-09-08 21:04:33', '2020-09-08 21:04:33'),
(53, 55, 'First city monument bank', 'Ifeanyi chibuzor faith', '3892958012', 'ACTIVE', '2020-09-08 21:13:44', '2020-09-08 21:13:44'),
(54, 77, 'Access Diamond bank', 'Etumnu Michael orji', '0085222389', 'ACTIVE', '2020-09-08 21:24:29', '2020-09-08 21:24:29'),
(55, 79, 'Access bank', 'Odo Emmanuel Ejiofor', '1402404821', 'ACTIVE', '2020-09-08 21:24:40', '2020-09-08 21:24:40'),
(56, 72, 'Zenith bank', 'Ezemou Amarachukwu onyemaechi', '2283663837', 'ACTIVE', '2020-09-08 21:31:38', '2020-09-08 21:31:38'),
(57, 86, 'First Bank', 'OBIAKO UJUNWA Edith', '3048690635', 'ACTIVE', '2020-09-08 23:13:18', '2020-09-08 23:13:18'),
(58, 66, 'Zenith Bank', 'Raphael Eze Osi', '2100058600', 'ACTIVE', '2020-09-08 23:30:32', '2020-09-08 23:30:32'),
(59, 68, 'First Bank', 'Osi Raphael Eze', '3123290479', 'ACTIVE', '2020-09-09 00:02:24', '2020-09-09 00:02:24'),
(60, 85, 'Gtb', 'Efenarhua joy', '0125143452', 'ACTIVE', '2020-09-09 00:12:09', '2020-09-11 05:46:58'),
(61, 87, 'Access', 'Akalonu Jane chieyenwa', '0042676070', 'ACTIVE', '2020-09-09 00:18:23', '2020-09-09 00:28:11'),
(62, 90, 'Access (diamond) bank', 'Ebi Sunday', '0097519439', 'ACTIVE', '2020-09-09 00:30:40', '2020-09-09 00:32:11'),
(63, 92, 'First bank', 'Chukwudum Nneka Maryann', '3147339231', 'ACTIVE', '2020-09-09 00:46:51', '2020-09-09 00:46:51'),
(64, 94, 'Nkechi Pauline Onyeanusi', 'First bank', '3038018960', 'ACTIVE', '2020-09-09 02:04:21', '2020-09-09 02:04:21'),
(65, 91, 'First Bank', 'Egelamba Ogochukwu Precious', '3111493066', 'ACTIVE', '2020-09-09 02:10:45', '2020-09-09 02:10:45'),
(66, 75, 'UBA BANK', 'okpalanadu Amarachi Rita', '2139385795', 'ACTIVE', '2020-09-09 02:13:03', '2020-09-09 02:13:03'),
(67, 95, 'UBA', 'Ndatsu Saifullahi', '2062813026', 'ACTIVE', '2020-09-09 02:33:58', '2020-09-09 02:33:58'),
(68, 93, 'Zenith bank', 'Ezeani Uzoma Stella', '2007540945', 'ACTIVE', '2020-09-09 03:22:55', '2020-09-10 23:37:27'),
(69, 100, 'Zenith bank', 'Ogbu oluchukwu Jennifer', '2080319948', 'ACTIVE', '2020-09-09 04:09:59', '2020-09-09 04:09:59'),
(70, 32, 'Access bank', 'Nkemjika Ukamaka Joy', '0024626178', 'ACTIVE', '2020-09-09 05:03:14', '2020-09-11 04:34:35'),
(71, 82, 'GTB', 'Adu Olaitan', '0170036738', 'ACTIVE', '2020-09-09 05:08:20', '2020-09-09 05:08:20'),
(72, 106, 'Diamond Bank', 'Feyisola Mosunmola Cecilia', '0052151058', 'ACTIVE', '2020-09-09 05:19:49', '2020-09-09 05:19:49'),
(73, 108, 'Access diamond Bank', 'Etumnu Michael orji', '0060960189', 'ACTIVE', '2020-09-09 13:10:58', '2020-09-09 13:10:58'),
(74, 111, 'Diamond Access', 'Onyinye Anyiam', '0101327678', 'ACTIVE', '2020-09-09 15:03:30', '2020-09-09 15:03:30'),
(75, 110, 'stanbic ibtc', 'jacinta chinenye onyenwe', '9304042535', 'ACTIVE', '2020-09-09 17:28:17', '2020-09-09 17:32:52'),
(76, 113, 'Diamond', 'Ikegwuonu chiamaka stellamaris', '0084086537', 'ACTIVE', '2020-09-09 17:41:19', '2020-09-09 17:41:19'),
(77, 116, 'UBA', 'GIft Nwaobilor', '2029655580', 'ACTIVE', '2020-09-09 18:37:59', '2020-09-09 18:37:59'),
(78, 124, 'Access bank', 'Ekpe Sunday Arong', '0719349094', 'ACTIVE', '2020-09-09 19:32:10', '2020-09-09 19:32:10'),
(79, 125, 'Onwuzuruike Emmanuel', 'Diamond Bank', '0070207979', 'ACTIVE', '2020-09-09 19:33:25', '2020-09-09 19:33:25'),
(80, 126, 'access bank', 'Okafor Sandra ugonwa', '0065940599', 'ACTIVE', '2020-09-09 20:28:08', '2020-09-10 02:07:11'),
(81, 127, 'Uba', 'Kloss adele', '2152164999', 'ACTIVE', '2020-09-09 20:49:50', '2020-09-09 20:54:42'),
(82, 129, 'First Bank', 'Otubelu Amaka Stephanie', '3099304042', 'ACTIVE', '2020-09-09 22:08:47', '2020-09-09 22:18:25'),
(83, 131, 'GTB', 'Ndichie Adaobi', '0230820233', 'ACTIVE', '2020-09-09 22:26:41', '2020-09-09 22:26:41'),
(84, 134, 'Zenith Bank', 'Mgbeahuru ogechi', '2087533842', 'ACTIVE', '2020-09-09 22:56:11', '2020-09-09 22:56:11'),
(85, 132, 'Eco bank', 'Otubelu Chinwe', '1431022718', 'ACTIVE', '2020-09-09 23:14:54', '2020-09-09 23:14:54'),
(86, 137, 'GTB', 'Gloria   Chinwe Moses', '0006599066', 'ACTIVE', '2020-09-09 23:38:52', '2020-09-09 23:38:52'),
(87, 139, 'Polaris Bank', 'Okonkwo Esther Chinelo', '1120114294', 'ACTIVE', '2020-09-09 23:56:51', '2020-09-09 23:56:51'),
(88, 138, 'UBA', 'Egwuekwe Nzube Oluchi', '2019915704', 'ACTIVE', '2020-09-10 00:01:04', '2020-09-10 00:01:04'),
(89, 88, 'Fidelity bank', 'Donald Ezelibe O', '6052486222', 'ACTIVE', '2020-09-10 00:31:22', '2020-09-10 00:31:22'),
(90, 141, 'Ecobank', 'Ogbu Joy Ogechi', '3761051709', 'ACTIVE', '2020-09-10 02:24:33', '2020-09-10 02:24:33'),
(91, 143, 'Access bank', 'Joseph Nwankwo chinaka', '0031165462', 'ACTIVE', '2020-09-10 03:13:54', '2020-09-10 03:13:54'),
(92, 28, 'United Bank of Africa', 'Maxwell k o imoniaro', '2070783049', 'ACTIVE', '2020-09-10 03:15:31', '2020-09-10 03:15:31'),
(93, 133, 'Access bank', 'Adaego Vivian Nkemjika', '0066347528', 'ACTIVE', '2020-09-10 05:17:21', '2020-09-10 05:17:21'),
(94, 146, 'Zenith bank', 'Chinwe mbah', '2366879533', 'ACTIVE', '2020-09-10 13:24:24', '2020-09-10 13:24:24'),
(95, 144, 'GT bank account', 'Obiduba Nkiruka', '0014009535', 'ACTIVE', '2020-09-10 18:05:27', '2020-09-10 18:05:27'),
(96, 147, 'Eco bank', 'UWAEGBU Peace', '1343006325', 'ACTIVE', '2020-09-10 18:39:19', '2020-09-10 18:39:19'),
(97, 89, 'Gtb', 'Uju Emelda Igwilo', '0239077308', 'ACTIVE', '2020-09-10 20:56:29', '2020-09-10 20:56:29'),
(98, 154, 'UBA Bank', 'Ifeoma Joy Olisaekee', '2017487447', 'ACTIVE', '2020-09-10 21:04:51', '2020-09-10 21:04:51'),
(99, 155, 'FCMB', 'SIMON F Martin', '2080253014', 'ACTIVE', '2020-09-10 22:40:01', '2020-09-10 22:40:01'),
(100, 157, 'Access bank', 'Ezenwamma Nneka L', '0029410240', 'ACTIVE', '2020-09-10 22:48:13', '2020-09-10 22:48:13'),
(101, 156, 'GT bank', 'Mike Chinyere', '0014894661', 'ACTIVE', '2020-09-10 23:08:33', '2020-09-10 23:08:33'),
(102, 161, 'Access bank', 'Nkemjika Ukamaka Joy', '0024626178', 'ACTIVE', '2020-09-11 03:24:07', '2020-09-11 03:24:07'),
(103, 163, 'Union', 'Akalonu ruby', '0109135699', 'ACTIVE', '2020-09-11 05:20:22', '2020-09-11 05:20:22'),
(104, 153, 'Union Bank', 'Osi Chinenyenwa Ugonna', '0112218790', 'ACTIVE', '2020-09-11 13:26:22', '2020-09-11 13:26:22'),
(105, 166, 'Access bank', 'Gabriel Josephine Adaobi', '0060114457', 'ACTIVE', '2020-09-11 17:09:59', '2020-09-11 17:09:59'),
(106, 167, 'First Bank', 'Uju Emelda Igwilo', '3057197323', 'ACTIVE', '2020-09-11 19:05:48', '2020-09-11 19:05:48'),
(107, 136, 'OSI CHINENYENWA UGONNA', 'Zenith Bank', '1003654852', 'ACTIVE', '2020-09-11 20:39:22', '2020-09-11 20:39:22'),
(108, 168, 'Zenith bank plc', 'A-z building and tools ventures', '1014070366', 'ACTIVE', '2020-09-11 20:56:08', '2020-09-11 20:56:08'),
(109, 160, 'First City Monument Bank(FCMB)', 'Chibunna Nwankwo', '1957037010', 'ACTIVE', '2020-09-11 21:14:40', '2020-09-11 21:14:40'),
(110, 158, 'Access Bank PLC', 'Peace chidinma Achazie', '1405159074', 'ACTIVE', '2020-09-11 21:23:07', '2020-09-11 21:23:07'),
(111, 169, 'Access bank', 'Udojike Gloria Chigorum', '0039405392', 'ACTIVE', '2020-09-11 21:25:57', '2020-09-11 21:25:57'),
(112, 170, 'Zenith bank', 'Efenarhua Joy', '2253865087', 'ACTIVE', '2020-09-11 21:35:29', '2020-09-11 21:35:29'),
(113, 171, 'First Bank Ltd', 'Chukwueloka Ifesinachj Theresa', '3143490345', 'ACTIVE', '2020-09-11 22:08:17', '2020-09-11 22:08:17'),
(114, 174, 'UBA', 'Uzor Bridget', '2023827154', 'ACTIVE', '2020-09-11 22:36:43', '2020-09-11 22:36:43'),
(115, 175, 'Union bank', 'Joseph udeh unazi', '0108843445', 'ACTIVE', '2020-09-11 23:48:20', '2020-09-11 23:48:20'),
(116, 176, 'Gtbank', 'Nurudeen usman', '0138319471', 'ACTIVE', '2020-09-12 00:54:50', '2020-09-12 00:54:50'),
(117, 177, 'Zenith bank', 'Ogbu Jennifer oluchukwu', '2080319948', 'ACTIVE', '2020-09-12 03:44:28', '2020-09-12 03:44:28'),
(118, 178, 'Esogwa chidinma', 'Guarantee Trust Bank GTBank', '0450336543', 'ACTIVE', '2020-09-12 12:09:18', '2020-09-12 12:12:25'),
(119, 71, 'Diamond access bank', 'Amaefuna Chimezie Clementina', '0057286155', 'ACTIVE', '2020-09-12 15:05:11', '2020-09-12 15:05:11'),
(120, 180, 'Fidelity Bank', '6239712263', 'Nkiru Helen John', 'ACTIVE', '2020-09-12 15:54:20', '2020-09-12 15:54:20'),
(121, 181, 'Diamond', 'Mbaebie mmachukwu u', '0007649595', 'ACTIVE', '2020-09-12 17:08:10', '2020-09-12 18:43:10'),
(122, 183, 'Access Bank', 'Faith Duru', '0731901766', 'ACTIVE', '2020-09-12 17:38:29', '2020-09-12 17:38:29'),
(123, 184, 'Diamond', 'Onwuzuruike Emmanuel', '0070207979', 'ACTIVE', '2020-09-12 18:02:52', '2020-09-12 18:02:52'),
(124, 185, 'UBA', 'Achazie onyinyechi precious', '2051672155', 'ACTIVE', '2020-09-12 18:47:33', '2020-09-12 18:47:33'),
(125, 186, 'First bank', 'Okeke Amarachi Martha', '3046872709', 'ACTIVE', '2020-09-12 21:50:57', '2020-09-12 21:50:57'),
(126, 145, 'First Bank', 'Onuigbo Nwanneka Ijeoma', '3053540017', 'ACTIVE', '2020-09-12 22:33:23', '2020-09-12 22:33:23'),
(127, 188, 'UBA', 'ugochi silverline uzosike', '2146694783', 'ACTIVE', '2020-09-12 23:13:10', '2020-09-12 23:13:10'),
(128, 190, 'G T Bank', 'Izuchukwu Josephine', '0139350703', 'ACTIVE', '2020-09-13 01:33:24', '2020-09-13 01:33:24'),
(129, 191, 'First bank', 'Onwuzuruike chimamanda', '3148916712', 'ACTIVE', '2020-09-13 16:47:18', '2020-09-13 16:47:18'),
(130, 193, 'Zenith', 'Aigbedion Chinenye Catherina', '2086234874', 'ACTIVE', '2020-09-13 21:44:41', '2020-09-13 21:44:41');

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
(15, 20, 'NOT PAID', 0, NULL, '2020-09-08 18:13:52', '2020-09-08 18:13:52'),
(16, 52, 'NOT PAID', 0, NULL, '2020-09-08 18:27:29', '2020-09-08 18:27:29'),
(17, 22, 'NOT PAID', 0, NULL, '2020-09-08 18:28:19', '2020-09-08 18:28:19'),
(18, 51, 'NOT PAID', 0, NULL, '2020-09-08 18:30:08', '2020-09-08 18:30:08'),
(19, 15, 'NOT PAID', 0, NULL, '2020-09-08 18:32:27', '2020-09-08 18:32:27'),
(20, 46, 'NOT PAID', 0, NULL, '2020-09-08 18:42:31', '2020-09-08 18:42:31'),
(21, 26, 'NOT PAID', 0, NULL, '2020-09-08 18:51:05', '2020-09-08 18:51:05'),
(22, 42, 'NOT PAID', 0, NULL, '2020-09-08 18:51:47', '2020-09-08 18:51:47'),
(23, 57, 'NOT PAID', 0, NULL, '2020-09-08 18:56:09', '2020-09-08 18:56:09'),
(24, 14, 'NOT PAID', 0, NULL, '2020-09-08 18:58:32', '2020-09-08 18:58:32'),
(25, 58, 'NOT PAID', 0, NULL, '2020-09-08 19:05:03', '2020-09-08 19:05:03'),
(26, 63, 'PAID', 1000, NULL, '2020-09-08 19:59:42', '2020-09-08 19:27:30'),
(27, 62, 'NOT PAID', 0, NULL, '2020-09-08 20:06:33', '2020-09-08 20:06:33'),
(28, 45, 'NOT PAID', 0, NULL, '2020-09-08 20:38:46', '2020-09-08 20:38:46'),
(29, 71, 'NOT PAID', 0, NULL, '2020-09-08 20:49:43', '2020-09-08 20:49:43'),
(30, 55, 'NOT PAID', 0, NULL, '2020-09-08 21:17:43', '2020-09-08 21:17:43'),
(31, 77, 'PAID', 1000, NULL, '2020-09-08 21:30:34', '2020-09-08 21:29:53'),
(32, 65, 'NOT PAID', 0, NULL, '2020-09-08 21:42:20', '2020-09-08 21:42:20'),
(33, 72, 'NOT PAID', 0, NULL, '2020-09-08 21:43:21', '2020-09-08 21:43:21'),
(34, 79, 'NOT PAID', 0, NULL, '2020-09-08 21:53:39', '2020-09-08 21:53:39'),
(35, 86, 'PAID', 1000, NULL, '2020-09-08 23:39:09', '2020-09-08 23:33:18'),
(36, 47, 'NOT PAID', 0, NULL, '2020-09-08 23:44:56', '2020-09-08 23:44:56'),
(37, 66, 'NOT PAID', 0, NULL, '2020-09-08 23:45:04', '2020-09-08 23:45:04'),
(38, 21, 'NOT PAID', 0, NULL, '2020-09-08 23:48:03', '2020-09-08 23:48:03'),
(39, 68, 'NOT PAID', 0, NULL, '2020-09-08 23:48:27', '2020-09-08 23:48:27'),
(40, 59, 'NOT PAID', 0, NULL, '2020-09-09 00:06:45', '2020-09-09 00:06:45'),
(41, 88, 'PAID', 1000, NULL, '2020-09-09 00:13:44', '2020-09-09 00:09:37'),
(42, 85, 'NOT PAID', 0, NULL, '2020-09-09 00:17:11', '2020-09-09 00:17:11'),
(43, 90, 'NOT PAID', 0, NULL, '2020-09-09 00:38:39', '2020-09-09 00:38:39'),
(44, 94, 'PAID', 1000, NULL, '2020-09-09 02:06:30', '2020-09-09 02:01:11'),
(45, 95, 'PAID', 1000, NULL, '2020-09-09 03:19:27', '2020-09-09 02:39:58'),
(46, 40, 'NOT PAID', 0, NULL, '2020-09-09 03:00:31', '2020-09-09 03:00:31'),
(47, 31, 'NOT PAID', 0, NULL, '2020-09-09 03:22:33', '2020-09-09 03:22:33'),
(48, 87, 'NOT PAID', 0, NULL, '2020-09-09 03:33:22', '2020-09-09 03:33:22'),
(49, 93, 'NOT PAID', 0, NULL, '2020-09-09 03:59:21', '2020-09-09 03:59:21'),
(50, 100, 'NOT PAID', 0, NULL, '2020-09-09 04:19:17', '2020-09-09 04:19:17'),
(51, 32, 'NOT PAID', 0, NULL, '2020-09-09 05:04:05', '2020-09-09 05:04:05'),
(52, 108, 'PAID', 1000, NULL, '2020-09-09 13:16:49', '2020-09-09 13:04:38'),
(53, 43, 'NOT PAID', 0, NULL, '2020-09-09 14:32:26', '2020-09-09 14:32:26'),
(54, 111, 'NOT PAID', 0, NULL, '2020-09-09 15:06:28', '2020-09-09 15:06:28'),
(55, 64, 'NOT PAID', 0, NULL, '2020-09-09 16:28:10', '2020-09-09 16:28:10'),
(56, 38, 'NOT PAID', 0, NULL, '2020-09-09 16:55:03', '2020-09-09 16:55:03'),
(57, 37, 'NOT PAID', 0, NULL, '2020-09-09 17:50:44', '2020-09-09 17:50:44'),
(58, 50, 'NOT PAID', 0, NULL, '2020-09-09 18:41:35', '2020-09-09 18:41:35'),
(59, 67, 'NOT PAID', 0, NULL, '2020-09-09 18:44:52', '2020-09-09 18:44:52'),
(60, 116, 'NOT PAID', 1000, NULL, '2020-09-09 18:55:39', '2020-09-09 18:55:39'),
(61, 13, 'NOT PAID', 0, NULL, '2020-09-09 21:20:19', '2020-09-09 21:20:19'),
(62, 131, 'PAID', 1000, NULL, '2020-09-09 23:09:23', '2020-09-09 22:32:12'),
(63, 134, 'NOT PAID', 1000, NULL, '2020-09-09 23:13:31', '2020-09-09 23:13:31'),
(64, 125, 'NOT PAID', 0, NULL, '2020-09-09 23:27:40', '2020-09-09 23:27:40'),
(65, 137, 'PAID', 1000, NULL, '2020-09-09 23:44:14', '2020-09-09 23:42:22'),
(66, 139, 'PAID', 1000, NULL, '2020-09-10 00:16:21', '2020-09-09 23:59:50'),
(67, 138, 'PAID', 1000, NULL, '2020-09-10 00:16:12', '2020-09-09 23:59:57'),
(68, 126, 'NOT PAID', 0, NULL, '2020-09-10 02:14:09', '2020-09-10 02:14:09'),
(69, 141, 'PAID', 1000, NULL, '2020-09-10 02:49:47', '2020-09-10 02:28:16'),
(70, 143, 'NOT PAID', 0, NULL, '2020-09-10 04:45:06', '2020-09-10 04:45:06'),
(71, 133, 'NOT PAID', 0, NULL, '2020-09-10 05:44:21', '2020-09-10 05:44:21'),
(72, 76, 'NOT PAID', 0, NULL, '2020-09-10 12:19:57', '2020-09-10 12:19:57'),
(73, 146, 'NOT PAID', 0, NULL, '2020-09-10 13:26:00', '2020-09-10 13:26:00'),
(74, 154, 'NOT PAID', 1000, NULL, '2020-09-10 21:19:38', '2020-09-10 21:19:38'),
(75, 157, 'PAID', 1000, NULL, '2020-09-10 23:22:59', '2020-09-10 22:49:13'),
(76, 75, 'NOT PAID', 0, NULL, '2020-09-11 00:24:15', '2020-09-11 00:24:15'),
(77, 161, 'PAID', 1000, NULL, '2020-09-11 03:27:04', '2020-09-11 03:25:21'),
(78, 41, 'NOT PAID', 0, NULL, '2020-09-11 12:37:14', '2020-09-11 12:37:14'),
(79, 153, 'NOT PAID', 0, NULL, '2020-09-11 13:48:39', '2020-09-11 13:48:39'),
(80, 166, 'NOT PAID', 0, NULL, '2020-09-11 20:38:14', '2020-09-11 20:38:14'),
(81, 156, 'NOT PAID', 0, NULL, '2020-09-11 20:48:35', '2020-09-11 20:48:35'),
(82, 168, 'NOT PAID', 0, NULL, '2020-09-11 21:02:55', '2020-09-11 21:02:55'),
(83, 158, 'NOT PAID', 0, NULL, '2020-09-11 21:29:15', '2020-09-11 21:29:15'),
(84, 170, 'PAID', 1000, NULL, '2020-09-11 22:17:02', '2020-09-11 21:36:00'),
(85, 28, 'NOT PAID', 0, NULL, '2020-09-11 22:31:13', '2020-09-11 22:31:13'),
(86, 174, 'PAID', 1000, NULL, '2020-09-11 22:43:38', '2020-09-11 22:41:49'),
(87, 155, 'NOT PAID', 0, NULL, '2020-09-11 23:42:20', '2020-09-11 23:42:20'),
(88, 169, 'NOT PAID', 0, NULL, '2020-09-12 00:15:27', '2020-09-12 00:15:27'),
(89, 167, 'NOT PAID', 0, NULL, '2020-09-12 00:20:48', '2020-09-12 00:20:48'),
(90, 176, 'PAID', 1000, NULL, '2020-09-13 05:55:00', '2020-09-12 00:59:05'),
(91, 177, 'PAID', 1000, NULL, '2020-09-12 22:49:41', '2020-09-12 03:47:05'),
(92, 163, 'NOT PAID', 0, NULL, '2020-09-12 04:32:57', '2020-09-12 04:32:57'),
(93, 136, 'NOT PAID', 0, NULL, '2020-09-12 12:45:03', '2020-09-12 12:45:03'),
(94, 178, 'NOT PAID', 0, NULL, '2020-09-12 15:16:30', '2020-09-12 15:16:30'),
(95, 39, 'NOT PAID', 0, NULL, '2020-09-12 16:44:52', '2020-09-12 16:44:52'),
(96, 182, 'PAID', 1000, NULL, '2020-09-13 05:54:49', '2020-09-12 16:45:32'),
(97, 106, 'NOT PAID', 0, NULL, '2020-09-12 17:05:07', '2020-09-12 17:05:07'),
(98, 180, 'NOT PAID', 0, NULL, '2020-09-12 17:24:50', '2020-09-12 17:24:50'),
(99, 184, 'PAID', 1000, NULL, '2020-09-12 18:32:02', '2020-09-12 18:18:33'),
(100, 181, 'PAID', 1000, NULL, '2020-09-13 05:55:10', '2020-09-12 18:33:03'),
(101, 185, 'NOT PAID', 0, NULL, '2020-09-12 19:02:09', '2020-09-12 19:02:09'),
(102, 186, 'PAID', 1000, NULL, '2020-09-12 21:11:53', '2020-09-12 21:10:27'),
(103, 188, 'NOT PAID', 0, NULL, '2020-09-12 23:57:10', '2020-09-12 23:57:10'),
(104, 191, 'PAID', 1000, NULL, '2020-09-13 20:42:04', '2020-09-13 16:56:23'),
(105, 7, 'NOT PAID', 0, NULL, '2020-09-14 02:00:41', '2020-09-14 02:00:41'),
(106, 193, 'NOT PAID', 0, NULL, '2020-09-14 03:13:11', '2020-09-14 03:13:11'),
(107, 183, 'NOT PAID', 0, NULL, '2020-09-14 04:36:02', '2020-09-14 04:36:02');

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
  `sent_recommit_sms` enum('YES','NO') DEFAULT 'NO',
  `when_due` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pledges`
--

INSERT INTO `pledges` (`id`, `user_id`, `amount`, `amount_paid`, `amount_paid_confirmed`, `amount_received_and_confirmed`, `interest`, `bonus_to_collect`, `referrer_bonus`, `referrer_id`, `paid_bonus`, `status`, `process`, `can_withdraw`, `sent_recommit_sms`, `when_due`, `created_at`, `updated_at`) VALUES
(2, 8, 100000, 100000, 0, 260000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-07 23:23:31', '2020-09-07 22:55:34', '2020-09-13 23:27:21'),
(3, 9, 100000, 100000, 0, 400000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-07 22:55:34', '2020-09-07 22:59:00', '2020-09-10 19:56:08'),
(4, 10, 100000, 100000, 0, 145000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-07 22:55:34', '2020-09-07 23:00:59', '2020-09-13 21:18:01'),
(5, 11, 100000, 100000, 0, 150000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-07 22:55:34', '2020-09-07 23:02:34', '2020-09-11 22:21:22'),
(6, 16, 100000, 100000, 100000, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:02:01', '2020-09-08 06:13:19', '2020-09-13 20:57:02'),
(7, 1, 100000, 100000, 0, 155000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-07 22:55:34', '2020-09-08 14:05:48', '2020-09-13 20:57:02'),
(8, 4, 100000, 100000, 0, 145000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-07 22:55:34', '2020-09-08 14:22:28', '2020-09-11 02:14:53'),
(9, 3, 100000, 100000, 0, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-07 22:55:34', '2020-09-08 14:29:01', '2020-09-09 00:18:02'),
(10, 2, 100000, 100000, 0, 165000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-07 22:55:34', '2020-09-08 14:31:49', '2020-09-13 21:13:02'),
(11, 5, 100000, 100000, 0, 140000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-07 22:55:34', '2020-09-08 14:55:11', '2020-09-13 14:32:53'),
(12, 36, 5000, 5000, 10000, 0, 3000, 0, 250, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:02:01', '2020-09-08 16:33:12', '2020-09-13 21:19:44'),
(13, 29, 50000, 50000, 100000, 0, 30000, 0, 2500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:02:01', '2020-09-08 18:01:44', '2020-09-13 21:50:38'),
(14, 34, 20000, 20000, 0, 0, 12000, 0, 1000, 1, 'NO', 'PAYING', 'INCOMPLETE', 'NO', 'NO', '2020-09-13 20:02:01', '2020-09-08 18:07:41', '2020-09-08 20:02:02'),
(15, 20, 5000, 5000, 5000, 0, 3000, 0, 250, 14, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:15:01', '2020-09-08 18:13:52', '2020-09-13 20:57:03'),
(16, 52, 100000, 100000, 200000, 0, 60000, 0, 5000, 14, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:15:01', '2020-09-08 18:27:29', '2020-09-13 21:48:48'),
(17, 22, 5000, 5000, 5000, 5000, 3000, 0, 250, 15, 'NO', 'PAID', 'COMPLETE', 'YES', 'YES', '2020-09-13 20:15:01', '2020-09-08 18:28:19', '2020-09-14 03:17:04'),
(18, 51, 50000, 50000, 0, 0, 30000, 0, 2500, 13, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-13 20:15:01', '2020-09-08 18:30:08', '2020-09-08 20:15:02'),
(19, 15, 5000, 5000, 5000, 0, 3000, 0, 250, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:30:01', '2020-09-08 18:32:27', '2020-09-11 13:17:30'),
(20, 46, 5000, 5000, 10000, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:20:02', '2020-09-08 18:42:31', '2020-09-13 21:49:44'),
(21, 26, 10000, 10000, 10000, 0, 6000, 0, 500, 21, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:20:02', '2020-09-08 18:51:05', '2020-09-13 20:57:03'),
(22, 42, 5000, 5000, 10000, 0, 3000, 0, 250, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:20:02', '2020-09-08 18:51:47', '2020-09-13 21:16:14'),
(23, 57, 30000, 30000, 30000, 0, 18000, 0, 1500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:20:02', '2020-09-08 18:56:09', '2020-09-13 20:57:03'),
(24, 14, 50000, 50000, 100000, 40000, 30000, 0, 2500, 13, 'NO', 'PAID', 'INCOMPLETE', 'YES', 'YES', '2020-09-13 20:20:02', '2020-09-08 18:58:32', '2020-09-14 06:20:01'),
(25, 58, 50000, 50000, 100000, 0, 30000, 0, 2500, 29, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:20:02', '2020-09-08 19:05:03', '2020-09-13 21:51:03'),
(26, 63, 50000, 50000, 60000, 0, 30000, 0, 2500, 38, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 20:20:02', '2020-09-08 19:27:30', '2020-09-14 03:33:57'),
(27, 62, 5000, 5000, 5000, 0, 3000, 0, 250, 14, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 21:01:02', '2020-09-08 20:06:33', '2020-09-13 20:57:04'),
(28, 45, 50000, 50000, 100000, 0, 30000, 0, 2500, 29, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 21:01:02', '2020-09-08 20:38:46', '2020-09-13 23:18:39'),
(29, 71, 20000, 20000, 60000, 0, 12000, 0, 1000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:27:02', '2020-09-08 20:49:43', '2020-09-13 19:23:10'),
(30, 55, 5000, 5000, 10000, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 21:18:01', '2020-09-08 21:17:43', '2020-09-14 00:36:39'),
(31, 77, 100000, 100000, 200000, 0, 60000, 0, 5000, 29, 'NO', 'PAID', 'INCOMPLETE', 'YES', 'YES', '2020-09-13 21:31:01', '2020-09-08 21:29:53', '2020-09-14 00:33:25'),
(32, 65, 100000, 100000, 100000, 0, 60000, 0, 5000, 58, 'NO', 'PAID', 'INCOMPLETE', 'YES', 'YES', '2020-09-13 21:43:01', '2020-09-08 21:42:20', '2020-09-13 23:27:21'),
(33, 72, 5000, 5000, 10000, 0, 3000, 0, 250, 62, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 21:44:01', '2020-09-08 21:43:21', '2020-09-14 03:17:04'),
(34, 79, 5000, 5000, 0, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-13 21:54:01', '2020-09-08 21:53:39', '2020-09-08 21:54:01'),
(35, 86, 10000, 10000, 10000, 0, 6000, 0, 500, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 23:40:01', '2020-09-08 23:33:18', '2020-09-13 22:40:02'),
(36, 47, 10000, 10000, 20000, 0, 6000, 0, 500, 29, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 23:45:01', '2020-09-08 23:44:56', '2020-09-14 03:09:35'),
(37, 66, 100000, 100000, 100000, 0, 60000, 0, 5000, 52, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 23:46:01', '2020-09-08 23:45:04', '2020-09-13 22:46:02'),
(38, 21, 10000, 10000, 30000, 0, 6000, 0, 500, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-13 23:49:01', '2020-09-08 23:48:03', '2020-09-14 06:20:01'),
(39, 68, 100000, 100000, 100000, 0, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:40:02', '2020-09-08 23:48:27', '2020-09-10 02:39:36'),
(40, 59, 5000, 5000, 15000, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-14 00:07:01', '2020-09-09 00:06:45', '2020-09-14 01:55:58'),
(41, 88, 100000, 100000, 0, 0, 60000, 0, 5000, 38, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-17 21:27:02', '2020-09-09 00:09:37', '2020-09-12 21:27:02'),
(42, 85, 50000, 50000, 50000, 0, 30000, 0, 2500, 63, 'NO', 'PAID', 'COMPLETE', 'NO', 'YES', '2020-09-14 00:18:02', '2020-09-09 00:17:11', '2020-09-13 23:27:46'),
(43, 90, 10000, 10000, 10000, 0, 6000, 0, 500, 42, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:40:02', '2020-09-09 00:38:39', '2020-09-10 03:25:39'),
(44, 94, 30000, 30000, 30000, 0, 18000, 0, 1500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:40:02', '2020-09-09 02:01:11', '2020-09-10 03:34:28'),
(45, 95, 5000, 5000, 5000, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:40:02', '2020-09-09 02:39:58', '2020-09-11 12:54:05'),
(46, 40, 20000, 20000, 20000, 0, 12000, 0, 1000, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 03:00:31', '2020-09-10 01:11:50'),
(47, 31, 5000, 5000, 5000, 0, 3000, 0, 250, 21, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 03:22:33', '2020-09-10 01:13:14'),
(48, 87, 10000, 10000, 10000, 0, 6000, 0, 500, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 03:33:22', '2020-09-10 22:40:05'),
(49, 93, 10000, 10000, 10000, 0, 6000, 0, 500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 03:59:21', '2020-09-10 21:10:45'),
(50, 100, 10000, 10000, 0, 0, 6000, 0, 500, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 04:19:17', '2020-09-09 22:43:02'),
(51, 32, 20000, 20000, 20000, 0, 12000, 0, 1000, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 05:04:05', '2020-09-11 22:21:22'),
(52, 108, 100000, 100000, 100000, 0, 60000, 0, 5000, 77, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-14 22:43:01', '2020-09-09 13:04:38', '2020-09-11 01:41:34'),
(53, 43, 5000, 5000, 0, 0, 3000, 0, 250, 37, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 14:32:26', '2020-09-10 03:09:01'),
(54, 111, 10000, 10000, 10000, 0, 6000, 0, 500, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 15:06:28', '2020-09-10 05:12:29'),
(55, 64, 5000, 5000, 0, 0, 3000, 0, 250, 43, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 16:28:10', '2020-09-10 03:09:01'),
(56, 38, 10000, 10000, 10000, 0, 6000, 0, 500, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 16:55:03', '2020-09-10 04:32:33'),
(57, 37, 5000, 5000, 5000, 0, 3000, 0, 250, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 17:50:44', '2020-09-11 02:14:53'),
(58, 50, 50000, 50000, 50000, 0, 30000, 0, 2500, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 18:41:35', '2020-09-10 04:09:31'),
(59, 67, 50000, 50000, 50000, 0, 30000, 0, 2500, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 18:44:52', '2020-09-10 04:10:01'),
(60, 116, 5000, 5000, 0, 0, 3000, 0, 250, 64, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 18:55:39', '2020-09-10 03:09:02'),
(61, 13, 50000, 50000, 50000, 0, 30000, 0, 2500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:09:01', '2020-09-09 21:20:19', '2020-09-10 20:59:30'),
(62, 131, 50000, 50000, 50000, 0, 30000, 0, 2500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:14:01', '2020-09-09 22:32:12', '2020-09-12 00:36:08'),
(63, 134, 10000, 10000, 0, 0, 6000, 0, 500, 13, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-15 03:14:01', '2020-09-09 23:13:31', '2020-09-10 03:14:01'),
(64, 125, 50000, 50000, 50000, 0, 30000, 0, 2500, 16, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:14:01', '2020-09-09 23:27:40', '2020-09-10 18:18:10'),
(65, 137, 10000, 10000, 10000, 0, 6000, 0, 500, 131, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:14:01', '2020-09-09 23:42:22', '2020-09-10 04:53:28'),
(66, 139, 20000, 20000, 20000, 0, 12000, 0, 1000, 38, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:14:01', '2020-09-09 23:59:50', '2020-09-10 18:31:51'),
(67, 138, 10000, 10000, 10000, 0, 6000, 0, 500, 131, 'NO', 'PAYING', 'COMPLETE', 'NO', 'NO', '2020-09-15 03:14:01', '2020-09-09 23:59:57', '2020-09-13 14:32:53'),
(68, 126, 100000, 100000, 100000, 0, 60000, 0, 5000, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 02:14:09', '2020-09-11 03:39:00'),
(69, 141, 5000, 5000, 5000, 0, 3000, 0, 250, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 02:28:16', '2020-09-11 02:30:05'),
(70, 143, 5000, 5000, 5000, 0, 3000, 0, 250, 134, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 04:45:06', '2020-09-10 22:30:01'),
(71, 133, 5000, 5000, 5000, 0, 3000, 0, 250, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 05:44:21', '2020-09-10 23:22:11'),
(72, 76, 5000, 5000, 5000, 0, 3000, 0, 250, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 12:19:57', '2020-09-10 23:23:38'),
(73, 146, 5000, 5000, 5000, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 13:26:00', '2020-09-11 02:30:30'),
(74, 8, 100000, 100000, 0, 255000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-10 06:23:31', '2020-09-08 05:55:34', '2020-09-11 13:17:30'),
(75, 154, 10000, 10000, 10000, 0, 6000, 0, 500, 139, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 21:27:01', '2020-09-10 21:19:38', '2020-09-11 00:25:21'),
(76, 6, 100000, 100000, 0, 280000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-10 06:23:31', '2020-09-08 05:55:34', '2020-09-13 21:20:25'),
(77, 7, 100000, 100000, 0, 585000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-10 06:23:31', '2020-09-08 05:55:34', '2020-09-14 03:33:57'),
(78, 157, 10000, 10000, 10000, 0, 6000, 0, 500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-15 23:23:01', '2020-09-10 22:49:13', '2020-09-11 02:47:01'),
(79, 75, 20000, 20000, 20000, 0, 12000, 0, 1000, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 00:25:01', '2020-09-11 00:24:15', '2020-09-11 01:13:25'),
(80, 161, 100000, 100000, 0, 210000, 60000, 0, 5000, 38, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-11 03:25:21', '2020-09-11 23:48:36'),
(81, 41, 5000, 5000, 0, 0, 3000, 0, 250, 38, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-16 12:38:01', '2020-09-11 12:37:14', '2020-09-11 12:38:01'),
(82, 153, 100000, 100000, 100000, 0, 60000, 0, 5000, 52, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 13:49:01', '2020-09-11 13:48:39', '2020-09-11 15:24:41'),
(83, 166, 50000, 50000, 50000, 0, 30000, 0, 2500, 16, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 20:39:02', '2020-09-11 20:38:14', '2020-09-11 23:48:36'),
(84, 156, 10000, 10000, 10000, 0, 6000, 0, 500, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 20:49:01', '2020-09-11 20:48:35', '2020-09-11 23:29:29'),
(85, 168, 100000, 100000, 0, 265000, 60000, 0, 5000, 1, 'NO', 'PAID', 'COMPLETE', 'YES', 'NO', '2020-09-10 21:23:19', '2020-09-11 21:02:55', '2020-09-13 19:23:10'),
(86, 158, 20000, 20000, 20000, 0, 12000, 0, 1000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 21:30:01', '2020-09-11 21:29:15', '2020-09-12 14:32:44'),
(87, 170, 5000, 5000, 5000, 0, 3000, 0, 250, 63, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 22:18:01', '2020-09-11 21:36:00', '2020-09-12 14:33:00'),
(88, 28, 10000, 10000, 10000, 0, 6000, 0, 500, 26, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 22:32:02', '2020-09-11 22:31:13', '2020-09-12 02:41:03'),
(89, 174, 30000, 30000, 30000, 0, 18000, 0, 1500, 14, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 22:44:02', '2020-09-11 22:41:49', '2020-09-12 01:44:39'),
(90, 155, 5000, 5000, 5000, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-16 23:43:01', '2020-09-11 23:42:20', '2020-09-12 01:22:04'),
(91, 169, 5000, 5000, 5000, 0, 3000, 0, 250, 38, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 00:16:01', '2020-09-12 00:15:27', '2020-09-12 14:46:53'),
(92, 167, 20000, 20000, 20000, 0, 12000, 0, 1000, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 00:21:01', '2020-09-12 00:20:48', '2020-09-12 02:59:05'),
(93, 176, 5000, 5000, 0, 0, 3000, 0, 250, 40, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 05:55:01', '2020-09-12 00:59:05', '2020-09-13 05:55:01'),
(94, 177, 10000, 10000, 10000, 0, 6000, 0, 500, 22, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 22:50:02', '2020-09-12 03:47:05', '2020-09-13 01:57:12'),
(95, 163, 5000, 0, 0, 0, 3000, 0, 250, 87, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-12 04:32:57', '2020-09-12 04:32:57'),
(96, 136, 100000, 100000, 100000, 0, 60000, 0, 5000, 52, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 12:46:01', '2020-09-12 12:45:03', '2020-09-12 21:01:05'),
(97, 178, 5000, 5000, 5000, 0, 2500, 0, 250, 40, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:27:02', '2020-09-12 15:16:30', '2020-09-12 21:58:03'),
(98, 39, 5000, 5000, 5000, 0, 2500, 0, 250, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:27:02', '2020-09-12 16:44:52', '2020-09-12 22:03:44'),
(99, 182, 5000, 0, 0, 0, 2500, 0, 250, 143, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-12 16:45:32', '2020-09-12 16:45:32'),
(100, 106, 5000, 5000, 0, 0, 2500, 0, 250, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-17 21:27:02', '2020-09-12 17:05:07', '2020-09-12 21:27:02'),
(101, 180, 5000, 5000, 5000, 0, 2500, 0, 250, 139, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:27:02', '2020-09-12 17:24:50', '2020-09-13 03:37:29'),
(102, 184, 50000, 50000, 50000, 0, 25000, 0, 2500, 125, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:31:01', '2020-09-12 18:18:33', '2020-09-13 00:18:58'),
(103, 181, 40000, 40000, 0, 0, 20000, 0, 2000, 21, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 05:56:01', '2020-09-12 18:33:03', '2020-09-13 05:56:01'),
(104, 185, 20000, 20000, 20000, 0, 10000, 0, 1000, 1, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:31:01', '2020-09-12 19:02:09', '2020-09-13 03:23:51'),
(105, 186, 20000, 20000, 20000, 0, 10000, 0, 1000, 13, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 21:53:01', '2020-09-12 21:10:27', '2020-09-12 22:25:26'),
(106, 188, 5000, 5000, 10000, 0, 2500, 0, 250, 186, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-17 23:58:01', '2020-09-12 23:57:10', '2020-09-13 02:24:11'),
(107, 191, 50000, 50000, 50000, 0, 25000, 0, 2500, 166, 'NO', 'PAID', 'COMPLETE', 'NO', 'NO', '2020-09-18 20:57:05', '2020-09-13 16:56:23', '2020-09-13 21:20:25'),
(108, 42, 5000, 5000, 0, 0, 2500, 0, 100, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 20:57:05', '2020-09-13 20:36:02', '2020-09-13 20:57:05'),
(109, 36, 5000, 5000, 0, 0, 2500, 0, 100, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 20:57:05', '2020-09-13 20:37:52', '2020-09-13 20:57:05'),
(110, 1, 100000, 100000, 0, 0, 50000, 0, 2000, 1, 'NO', 'PAID', 'INCOMPLETE', 'YES', 'NO', '2020-09-18 20:57:05', '2020-09-13 20:44:17', '2020-09-13 20:57:05'),
(112, 52, 100000, 100000, 0, 0, 50000, 0, 2000, 14, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:01:01', '2020-09-13 21:00:59', '2020-09-13 21:01:01'),
(113, 46, 5000, 5000, 0, 0, 2500, 0, 100, 40, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:02:01', '2020-09-13 21:01:47', '2020-09-13 21:02:01'),
(114, 14, 50000, 50000, 0, 0, 25000, 0, 1000, 13, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:03:01', '2020-09-13 21:02:04', '2020-09-13 21:03:01'),
(115, 29, 50000, 50000, 0, 0, 25000, 0, 1000, 16, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:13:02', '2020-09-13 21:12:56', '2020-09-13 21:13:02'),
(116, 58, 50000, 50000, 0, 0, 25000, 0, 1000, 29, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:15:01', '2020-09-13 21:14:18', '2020-09-13 21:15:01'),
(117, 2, 100000, 0, 0, 0, 50000, 0, 2000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-13 21:14:56', '2020-09-13 21:15:02'),
(118, 22, 5000, 5000, 0, 0, 2500, 0, 100, 15, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:16:01', '2020-09-13 21:15:43', '2020-09-13 21:16:01'),
(119, 55, 5000, 5000, 0, 0, 2500, 0, 100, 40, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 21:20:01', '2020-09-13 21:19:39', '2020-09-13 21:20:01'),
(120, 77, 100000, 100000, 0, 0, 50000, 0, 2000, 29, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 22:58:01', '2020-09-13 21:41:21', '2020-09-13 22:58:01'),
(121, 45, 50000, 50000, 0, 0, 25000, 0, 1000, 29, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 22:58:01', '2020-09-13 21:48:27', '2020-09-13 22:58:01'),
(122, 63, 50000, 10000, 0, 0, 25000, 0, 1000, 38, 'NO', 'PAYING', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 22:58:01', '2020-09-13 21:50:17', '2020-09-13 22:58:01'),
(124, 65, 100000, 100000, 100000, 0, 50000, 0, 2000, 58, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 23:06:02', '2020-09-13 21:53:17', '2020-09-13 23:06:02'),
(125, 10, 100000, 60000, 0, 0, 50000, 0, 2000, 1, 'NO', 'PAYING', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 23:06:02', '2020-09-13 22:18:54', '2020-09-13 23:06:02'),
(126, 57, 30000, 30000, 0, 0, 15000, 0, 600, 1, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-18 23:07:02', '2020-09-13 22:39:57', '2020-09-13 23:07:02'),
(127, 16, 100000, 0, 0, 0, 50000, 0, 2000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-13 23:15:50', '2020-09-13 23:15:50'),
(128, 72, 5000, 5000, 0, 0, 2500, 0, 100, 62, 'NO', 'PAYING', 'INCOMPLETE', 'NO', 'NO', '2020-09-19 00:40:11', '2020-09-13 23:35:01', '2020-09-14 00:40:11'),
(129, 47, 10000, 10000, 0, 0, 5000, 0, 200, 29, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-19 01:02:40', '2020-09-13 23:52:34', '2020-09-14 01:02:40'),
(130, 59, 10000, 10000, 0, 0, 5000, 0, 200, 40, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-19 01:02:40', '2020-09-14 00:10:10', '2020-09-14 01:02:40'),
(131, 21, 10000, 10000, 0, 0, 5000, 0, 200, 13, 'NO', 'PAID', 'INCOMPLETE', 'NO', 'NO', '2020-09-19 01:02:40', '2020-09-14 00:10:28', '2020-09-14 01:02:40'),
(132, 2, 100000, 0, 0, 0, 50000, 0, 2000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-14 01:20:10', '2020-09-14 01:20:10'),
(133, 47, 10000, 0, 0, 0, 5000, 0, 200, 29, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-14 01:45:18', '2020-09-14 01:45:18'),
(134, 7, 100000, 0, 0, 0, 50000, 0, 2000, 1, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-14 02:00:41', '2020-09-14 02:00:41'),
(135, 62, 5000, 0, 0, 0, 2500, 0, 100, 14, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-14 02:25:52', '2020-09-14 02:25:52'),
(136, 193, 20000, 0, 0, 0, 10000, 0, 1000, 125, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-14 03:13:11', '2020-09-14 03:13:11'),
(137, 183, 5000, 0, 0, 0, 2500, 0, 250, 139, 'NO', 'NOT PAYED', 'INCOMPLETE', 'NO', 'NO', NULL, '2020-09-14 04:36:02', '2020-09-14 04:36:02');

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
  `status` enum('CONFIRMED','NOT CONFIRMED','REMERGED') NOT NULL DEFAULT 'NOT CONFIRMED',
  `proof` char(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pledge_tracker`
--

INSERT INTO `pledge_tracker` (`id`, `pledge_id`, `amount`, `user_sending`, `user_receiving`, `status`, `proof`, `updated_at`, `created_at`) VALUES
(1, 7, 100000, 16, 1, 'CONFIRMED', 'uploads/proof/9934c87ae333ec882e61d979202969911599673202.jpg', '2020-09-10 02:34:37', '2020-09-08 20:02:01'),
(2, 7, 5000, 36, 1, 'CONFIRMED', 'uploads/proof/652e836c3407be37459398644f9626dc1599582471.jpg', '2020-09-08 23:32:41', '2020-09-08 20:02:01'),
(3, 7, 50000, 29, 1, 'CONFIRMED', 'uploads/proof/0bf7b17baf1eff32ff1bd634d5106b031599581599.jpg', '2020-09-08 23:16:56', '2020-09-08 20:02:01'),
(4, 7, 5000, 34, 1, 'REMERGED', NULL, '2020-09-08 20:02:02', '2020-09-08 20:02:02'),
(5, 10, 5000, 20, 2, 'CONFIRMED', 'uploads/proof/5d40bf27276bea844f8d434611ef06581599592040.png', '2020-09-09 02:38:04', '2020-09-08 20:15:01'),
(6, 10, 100000, 52, 2, 'CONFIRMED', 'uploads/proof/6ce0fd9ab9c8c5b5afa00c46ca713d521599571481.png', '2020-09-08 20:43:24', '2020-09-08 20:15:02'),
(7, 10, 5000, 22, 2, 'CONFIRMED', 'uploads/proof/4c9c8520d7de55c324ba9397d8871d971599574567.png', '2020-09-08 21:23:13', '2020-09-08 20:15:02'),
(8, 10, 50000, 51, 2, 'REMERGED', NULL, '2020-09-08 20:15:02', '2020-09-08 20:15:02'),
(10, 2, 5000, 46, 8, 'CONFIRMED', 'uploads/proof/e19655330847238ad08e96b5c7a8e9a61599578216.png', '2020-09-08 22:51:04', '2020-09-08 20:20:02'),
(11, 2, 10000, 26, 8, 'CONFIRMED', 'uploads/proof/f9ad832f468fbceef7e0a2781aa8c1171599658422.jpg', '2020-09-09 20:33:42', '2020-09-08 20:20:02'),
(12, 2, 5000, 42, 8, 'CONFIRMED', 'uploads/proof/51f9c589a83bdaefd5e4bfae4b9407a31599579277.jpg', '2020-09-08 22:51:25', '2020-09-08 20:20:02'),
(13, 2, 30000, 57, 8, 'CONFIRMED', 'uploads/proof/a4a14cfedc548726fb64ef5e976f2a6c1599598753.png', '2020-09-09 04:12:30', '2020-09-08 20:20:02'),
(14, 2, 50000, 14, 8, 'CONFIRMED', 'uploads/proof/538fba30f280ae31ea58754b471981741599601619.jpg', '2020-09-09 05:06:06', '2020-09-08 20:20:02'),
(15, 2, 50000, 58, 8, 'CONFIRMED', 'uploads/proof/ecc136fa4358d86fb2001e50fe960be61599578852.png', '2020-09-08 22:46:51', '2020-09-08 20:20:03'),
(16, 2, 10000, 63, 8, 'CONFIRMED', 'uploads/proof/ec91c7f6b358679c8976d0dc3bc4daf21599602812.png', '2020-09-09 05:06:52', '2020-09-08 20:20:03'),
(17, 3, 5000, 62, 9, 'CONFIRMED', 'uploads/proof/8cba591bf4e1915b17d97137481da7d41599576096.jpg', '2020-09-08 23:25:56', '2020-09-08 21:01:02'),
(18, 3, 50000, 45, 9, 'CONFIRMED', 'uploads/proof/424863612b5dc7813d186aea62b50e2f1599589186.png', '2020-09-09 02:11:50', '2020-09-08 21:01:02'),
(19, 3, 5000, 55, 9, 'CONFIRMED', 'uploads/proof/af3b065f4419e162ecf6988f440053051599676988.jpg', '2020-09-10 19:56:08', '2020-09-08 21:18:01'),
(20, 3, 100000, 77, 9, 'CONFIRMED', 'uploads/proof/b848dcc52ed87f983e5968821ffb41dd1599592030.jpg', '2020-09-09 02:17:10', '2020-09-08 21:31:01'),
(21, 3, 100000, 65, 9, 'CONFIRMED', 'uploads/proof/7af54e5793a0a736ef0cb30aed68d56c1599580740.jpg', '2020-09-08 23:24:40', '2020-09-08 21:43:01'),
(22, 3, 5000, 72, 9, 'CONFIRMED', 'uploads/proof/f80f8e027e5ee8b58e03ef2c3b31aad41599578553.jpg', '2020-09-08 23:34:40', '2020-09-08 21:44:01'),
(23, 3, 5000, 79, 9, 'REMERGED', NULL, '2020-09-08 21:54:01', '2020-09-08 21:54:01'),
(24, 3, 10000, 86, 9, 'CONFIRMED', 'uploads/proof/54c5cd82fbd7283dd679c1c317e487031599742517.png', '2020-09-10 19:55:17', '2020-09-08 23:40:01'),
(25, 3, 10000, 47, 9, 'CONFIRMED', 'uploads/proof/0967bac37c085ab6e1ebf8498e3c83fb1599586252.png', '2020-09-09 02:21:21', '2020-09-08 23:45:01'),
(26, 3, 100000, 66, 9, 'CONFIRMED', 'uploads/proof/c95744b17ab584ade5d94b53be1ecc6e1599586762.png', '2020-09-09 02:18:40', '2020-09-08 23:46:01'),
(27, 3, 10000, 21, 9, 'CONFIRMED', 'uploads/proof/ba7a5201f5d1b6966aeadc2cd93b946f1599654451.png', '2020-09-09 19:39:58', '2020-09-08 23:49:01'),
(28, 3, 5000, 59, 9, 'CONFIRMED', 'uploads/proof/cba8ff664e14180efb237d58a1cc3b501599585568.png', '2020-09-09 02:23:04', '2020-09-09 00:07:01'),
(29, 4, 100000, 68, 10, 'CONFIRMED', 'uploads/proof/17101af2ab29a27500014ac8ad8c49371599679377.jpg', '2020-09-10 02:39:36', '2020-09-09 22:40:02'),
(30, 4, 10000, 90, 10, 'CONFIRMED', 'uploads/proof/4332cc8a93f1216631690ec6ae9411131599675415.JPG', '2020-09-10 03:25:39', '2020-09-09 22:40:03'),
(31, 4, 30000, 94, 10, 'CONFIRMED', 'uploads/proof/175e19771925eef7cac446ff55583bd51599683245.jpg', '2020-09-10 03:34:28', '2020-09-09 22:40:04'),
(32, 4, 5000, 95, 10, 'CONFIRMED', 'uploads/proof/db9992b3a2148918edb6ae24dd7b8c1c1599810565.jpeg', '2020-09-11 14:49:25', '2020-09-09 22:40:04'),
(33, 5, 20000, 40, 11, 'CONFIRMED', 'uploads/proof/98407313ce051d84484fac5828be666e1599666573.jpg', '2020-09-10 01:11:50', '2020-09-09 22:43:01'),
(34, 5, 5000, 31, 11, 'CONFIRMED', 'uploads/proof/c3abee099cf972e69174e5e9d871c36f1599671978.png', '2020-09-10 01:13:14', '2020-09-09 22:43:01'),
(35, 5, 10000, 87, 11, 'CONFIRMED', 'uploads/proof/34cac00137bc887f874f014e1a10e3871599747689.png', '2020-09-10 22:40:05', '2020-09-09 22:43:01'),
(36, 5, 10000, 93, 11, 'CONFIRMED', 'uploads/proof/0825e9f099be8724946a053983f1fcdf1599747901.png', '2020-09-10 21:25:01', '2020-09-09 22:43:02'),
(37, 5, 10000, 100, 11, 'REMERGED', NULL, '2020-09-09 22:43:02', '2020-09-09 22:43:02'),
(38, 5, 20000, 32, 11, 'CONFIRMED', 'uploads/proof/e0bc2ce169e5f80644d84a8566d041eb1599690357.jpg', '2020-09-11 22:21:22', '2020-09-09 22:43:02'),
(39, 5, 85000, 108, 11, 'CONFIRMED', 'uploads/proof/03831c4ad22b6a26ef888c5a46e67d901599675222.jpg', '2020-09-10 04:13:04', '2020-09-09 22:43:02'),
(40, 8, 5000, 43, 4, 'REMERGED', NULL, '2020-09-10 03:09:01', '2020-09-10 03:09:01'),
(41, 8, 10000, 111, 4, 'CONFIRMED', 'uploads/proof/f7b16a7a79c9133bc1f4f64c9aebc4bc1599688682.jpg', '2020-09-10 05:12:29', '2020-09-10 03:09:01'),
(42, 8, 5000, 64, 4, 'REMERGED', NULL, '2020-09-10 03:09:01', '2020-09-10 03:09:01'),
(43, 8, 10000, 38, 4, 'CONFIRMED', 'uploads/proof/b5a45b15b59c9c718560d0f5e6607eb01599686315.jpg', '2020-09-10 04:32:33', '2020-09-10 03:09:01'),
(44, 8, 5000, 37, 4, 'CONFIRMED', 'uploads/proof/d98b3f3a909ba23da638f9cc7b3b19c61599763414.png', '2020-09-11 02:14:53', '2020-09-10 03:09:01'),
(45, 8, 50000, 50, 4, 'CONFIRMED', 'uploads/proof/26ef2a1ac4ba1a7a42ae4ea3d04553ff1599685255.jpg', '2020-09-10 04:09:31', '2020-09-10 03:09:02'),
(46, 8, 50000, 67, 4, 'CONFIRMED', 'uploads/proof/63a9280d843d331097b51143149ef5ca1599684779.jpg', '2020-09-10 04:10:01', '2020-09-10 03:09:02'),
(47, 8, 5000, 116, 4, 'REMERGED', NULL, '2020-09-10 03:09:02', '2020-09-10 03:09:02'),
(48, 8, 20000, 13, 4, 'CONFIRMED', 'uploads/proof/f7b16a7a79c9133bc1f4f64c9aebc4bc1599688613.jpg', '2020-09-10 05:12:54', '2020-09-10 03:09:02'),
(49, 11, 50000, 131, 5, 'CONFIRMED', 'uploads/proof/b1f100802d8eed7820d95a8132c73db31599843735.jpg', '2020-09-12 00:36:08', '2020-09-10 03:14:01'),
(50, 11, 10000, 134, 5, 'REMERGED', NULL, '2020-09-10 03:14:01', '2020-09-10 03:14:01'),
(51, 11, 50000, 125, 5, 'CONFIRMED', 'uploads/proof/1c7407668ee9174604bdf2702c751abc1599736599.jpg', '2020-09-10 18:18:10', '2020-09-10 03:14:01'),
(52, 11, 10000, 137, 5, 'CONFIRMED', 'uploads/proof/4c2ba4b6bc430f1af5b25444798341851599688131.png', '2020-09-10 04:53:28', '2020-09-10 03:14:01'),
(53, 11, 20000, 139, 5, 'CONFIRMED', 'uploads/proof/97bd77149f70bd666599c5dac2501f321599737136.png', '2020-09-10 18:31:51', '2020-09-10 03:14:01'),
(54, 11, 10000, 138, 5, 'CONFIRMED', 'uploads/proof/ca27fe39225a311ebc132a575583fbba1599941245.jpg', '2020-09-13 14:32:53', '2020-09-10 03:14:02'),
(55, 74, 15000, 108, 8, 'CONFIRMED', 'uploads/proof/582bdfa7a76df2921acd50b2bffef7981599762980.jpg', '2020-09-11 01:41:34', '2020-09-10 13:41:29'),
(56, 74, 40000, 63, 8, 'CONFIRMED', 'uploads/proof/c5e9ac83fefec93b1307734fdd51b7df1599767096.png', '2020-09-11 02:46:45', '2020-09-10 13:41:29'),
(57, 74, 15000, 34, 8, 'REMERGED', NULL, '2020-09-10 13:51:20', '2020-09-10 13:51:20'),
(58, 74, 30000, 13, 8, 'CONFIRMED', 'uploads/proof/b5a45b15b59c9c718560d0f5e6607eb01599746307.jpg', '2020-09-10 20:59:30', '2020-09-10 13:51:20'),
(59, 74, 100000, 126, 8, 'CONFIRMED', 'uploads/proof/4eb5259eb7724c4a03179a60b83624e91599770120.jpg', '2020-09-11 03:39:00', '2020-09-10 21:27:01'),
(60, 74, 5000, 141, 8, 'CONFIRMED', 'uploads/proof/da7507469419504fd8d27815f46510d91599757317.jpg', '2020-09-11 02:30:05', '2020-09-10 21:27:01'),
(61, 74, 5000, 143, 8, 'CONFIRMED', 'uploads/proof/7ad7d1e1b5a7163dd6bd6921b330078c1599751516.png', '2020-09-10 22:30:01', '2020-09-10 21:27:01'),
(62, 74, 5000, 133, 8, 'CONFIRMED', 'uploads/proof/7123fdd43c09cf825be605a85717a9ac1599754721.jpg', '2020-09-10 23:22:11', '2020-09-10 21:27:01'),
(63, 74, 5000, 76, 8, 'CONFIRMED', 'uploads/proof/a5db2e5244478f0e13385190025054711599754197.jpg', '2020-09-10 23:23:38', '2020-09-10 21:27:02'),
(64, 74, 5000, 146, 8, 'CONFIRMED', 'uploads/proof/451634251dd0b163b054fd7e585a915a1599755711.jpg', '2020-09-11 02:30:30', '2020-09-10 21:27:02'),
(65, 74, 10000, 154, 8, 'CONFIRMED', 'uploads/proof/e71acba7b1e653e45ee0940d41a937841599758472.png', '2020-09-11 00:25:21', '2020-09-10 21:27:02'),
(66, 74, 5000, 15, 8, 'CONFIRMED', 'uploads/proof/8138b7ca425aabe8ad3c5f490821e9eb1599800407.png', '2020-09-11 13:17:30', '2020-09-10 21:30:01'),
(67, 74, 10000, 157, 8, 'CONFIRMED', 'uploads/proof/b3fc5e1c8c5e3d170f5eee0a253c37151599766387.jpg', '2020-09-11 02:47:01', '2020-09-10 23:23:01'),
(68, 74, 20000, 75, 8, 'CONFIRMED', 'uploads/proof/2e72e514a43076dd31e1132096eb66441599759685.jpg', '2020-09-11 01:13:25', '2020-09-11 00:25:01'),
(69, 80, 5000, 41, 161, 'NOT CONFIRMED', NULL, '2020-09-11 12:38:01', '2020-09-11 12:38:01'),
(70, 80, 100000, 153, 161, 'CONFIRMED', 'uploads/proof/a57c49ee22c167f9cb4c4e7de27b71191599811808.png', '2020-09-11 15:24:41', '2020-09-11 13:49:01'),
(71, 80, 50000, 85, 161, 'CONFIRMED', 'uploads/proof/355a4a02c32d66c23482dac42d6731661599832752.jpg', '2020-09-11 21:19:27', '2020-09-11 07:36:52'),
(72, 80, 50000, 166, 161, 'CONFIRMED', 'uploads/proof/f6bd0d551fd61f1d48129934620d8b841599841943.png', '2020-09-11 23:48:36', '2020-09-11 20:39:02'),
(73, 80, 10000, 156, 161, 'CONFIRMED', 'uploads/proof/550491aeb0bd3cd7f1b23195447cc7971599841632.jpg', '2020-09-11 23:29:29', '2020-09-11 20:49:02'),
(74, 85, 20000, 158, 168, 'CONFIRMED', 'uploads/proof/28a5f4e70eeb3e6b9765e58bb23607cb1599895523.png', '2020-09-12 14:32:44', '2020-09-11 21:30:02'),
(75, 85, 5000, 170, 168, 'CONFIRMED', 'uploads/proof/276f119dfad007a8544ea3ab02cd962a1599856170.jpg', '2020-09-12 14:33:00', '2020-09-11 22:18:01'),
(76, 85, 10000, 28, 168, 'CONFIRMED', 'uploads/proof/d401ff75ca2ffe97c8e289a42ba7d4c51599851817.jpg', '2020-09-12 02:41:03', '2020-09-11 22:32:02'),
(77, 85, 30000, 174, 168, 'CONFIRMED', 'uploads/proof/3150d88d8755fe99770f18653882d96b1599849762.png', '2020-09-12 01:44:39', '2020-09-11 22:44:02'),
(78, 85, 5000, 155, 168, 'CONFIRMED', 'uploads/proof/ba505e1b858116660efdb964f0ef00d81599848390.jpg', '2020-09-12 01:22:04', '2020-09-11 23:43:01'),
(79, 85, 5000, 169, 168, 'CONFIRMED', 'uploads/proof/53082cbdfaa8b6706ec65af0dab53cea1599896649.png', '2020-09-12 14:46:53', '2020-09-12 00:16:01'),
(80, 85, 20000, 167, 168, 'CONFIRMED', 'uploads/proof/f064286c726749956c2c0c297803f8fe1599853867.png', '2020-09-12 02:59:05', '2020-09-12 00:21:01'),
(81, 85, 100000, 136, 168, 'CONFIRMED', 'uploads/proof/78c4493885120cc8db9f35fc5eb509e31599918953.jpg', '2020-09-12 21:01:05', '2020-09-12 12:46:01'),
(84, 10, 50000, 184, 2, 'CONFIRMED', 'uploads/proof/bb0842a5d891ea8a6418206988f0d9491599930212.jpg', '2020-09-13 00:18:58', '2020-09-12 14:06:39'),
(88, 85, 20000, 71, 168, 'CONFIRMED', 'uploads/proof/922c92bdc3ec5b259f3001ce981334141599999318.jpg', '2020-09-13 19:22:16', '2020-09-12 21:27:02'),
(89, 85, 100000, 88, 168, 'NOT CONFIRMED', NULL, '2020-09-12 21:27:02', '2020-09-12 21:27:02'),
(90, 85, 5000, 178, 168, 'CONFIRMED', 'uploads/proof/6da0d6d478720d759b81ea8422580b151599922378.png', '2020-09-12 21:58:03', '2020-09-12 21:27:02'),
(91, 85, 5000, 39, 168, 'CONFIRMED', 'uploads/proof/a82d7a83c44c44b2ff04d5424aff01dd1599922769.png', '2020-09-12 22:03:44', '2020-09-12 21:27:02'),
(92, 85, 5000, 106, 168, 'NOT CONFIRMED', 'uploads/proof/4a58bdeaeb0f77b5aeb4402e301639111600001811.png', '2020-09-13 19:56:51', '2020-09-12 21:27:02'),
(95, 76, 20000, 185, 6, 'CONFIRMED', 'uploads/proof/7b75312b027776f17de4058aad8987d01599941053.png', '2020-09-13 03:23:51', '2020-09-12 21:31:01'),
(96, 10, 5000, 180, 2, 'CONFIRMED', 'uploads/proof/1d681a4e81567da59f65e4861d7da3bc1599942352.png', '2020-09-13 03:37:29', '2020-09-12 14:37:11'),
(97, 76, 20000, 186, 6, 'CONFIRMED', 'uploads/proof/1939e9b31f0ddb50d88546e71daf11b61599924175.png', '2020-09-12 22:25:26', '2020-09-12 21:53:02'),
(98, 76, 10000, 177, 6, 'CONFIRMED', 'uploads/proof/476638871fc91570787039d4655463f91599937469.jpg', '2020-09-13 02:04:29', '2020-09-12 22:50:02'),
(99, 76, 5000, 188, 6, 'CONFIRMED', 'uploads/proof/e60adf5bbcbf2c73fe5334ef88255cc41599938423.png', '2020-09-13 02:22:59', '2020-09-12 23:58:01'),
(100, 76, 5000, 176, 6, 'NOT CONFIRMED', NULL, '2020-09-13 05:55:01', '2020-09-13 05:55:01'),
(101, 76, 40000, 181, 6, 'NOT CONFIRMED', NULL, '2020-09-13 05:56:01', '2020-09-13 05:56:01'),
(103, 76, 50000, 191, 6, 'CONFIRMED', 'uploads/proof/534b87d8d21307a2b0f06112fa5130931600006564.png', '2020-09-13 21:20:25', '2020-09-13 20:57:05'),
(104, 76, 5000, 42, 6, 'CONFIRMED', 'uploads/proof/2fd9205d38f8a4ab928c0b2b8f9d0b991600005731.jpg', '2020-09-13 21:16:14', '2020-09-13 20:57:05'),
(105, 76, 5000, 36, 6, 'CONFIRMED', 'uploads/proof/2fd9205d38f8a4ab928c0b2b8f9d0b991600006296.jpg', '2020-09-13 21:19:44', '2020-09-13 20:57:05'),
(106, 76, 100000, 1, 6, 'NOT CONFIRMED', NULL, '2020-09-13 20:57:05', '2020-09-13 20:57:05'),
(107, 77, 100000, 52, 7, 'CONFIRMED', 'uploads/proof/5ca4eb4abd6f1f0d072018a36e53654e1600006955.png', '2020-09-13 21:48:48', '2020-09-13 21:01:01'),
(108, 77, 5000, 46, 7, 'CONFIRMED', 'uploads/proof/fa8eb3d4329d22015dceeae7fa53df0e1600006620.jpg', '2020-09-13 21:49:44', '2020-09-13 21:02:01'),
(109, 77, 50000, 14, 7, 'CONFIRMED', 'uploads/proof/2ba872f76d0e558acf726d035c97be441600008461.jpg', '2020-09-13 21:51:44', '2020-09-13 21:03:01'),
(110, 77, 50000, 29, 7, 'CONFIRMED', 'uploads/proof/42976e8ddadf8bd0f5568f4575b2e7941600007007.jpg', '2020-09-13 21:50:38', '2020-09-13 21:13:02'),
(111, 77, 50000, 58, 7, 'CONFIRMED', 'uploads/proof/a59d51e428c40dc58741f39ddbd684bc1600008238.png', '2020-09-13 21:51:03', '2020-09-13 21:15:01'),
(112, 77, 100000, 2, 7, 'NOT CONFIRMED', NULL, '2020-09-13 21:15:02', '2020-09-13 21:15:02'),
(113, 77, 5000, 22, 7, 'CONFIRMED', 'uploads/proof/613c805c57a96fadc5495c60926984cd1600007088.png', '2020-09-13 21:51:34', '2020-09-13 21:16:01'),
(114, 77, 5000, 55, 7, 'CONFIRMED', 'uploads/proof/74d41fbcfc32bec5fef71b5f667083e91600009339.jpg', '2020-09-14 00:36:39', '2020-09-13 21:20:01'),
(115, 77, 100000, 77, 7, 'CONFIRMED', 'uploads/proof/9b2ebfa6b6ac1fe32db335afe951bca31600017924.jpg', '2020-09-14 00:33:25', '2020-09-13 22:58:01'),
(116, 77, 50000, 45, 7, 'CONFIRMED', 'uploads/proof/610ca4b5dc0f38a045c09e3ff36b48401600013486.png', '2020-09-13 23:18:39', '2020-09-13 22:58:01'),
(117, 77, 10000, 63, 7, 'CONFIRMED', 'uploads/proof/a2254635bf32e538c667a8be386af5d61600027642.png', '2020-09-14 03:33:57', '2020-09-13 22:58:01'),
(118, 2, 100000, 65, 8, 'CONFIRMED', 'uploads/proof/fec2d85171ce6e74e342ad1fc14943b31600014410.png', '2020-09-13 23:27:21', '2020-09-13 23:06:02'),
(119, 2, 60000, 10, 8, 'NOT CONFIRMED', NULL, '2020-09-13 23:06:02', '2020-09-13 23:06:02'),
(120, 24, 30000, 57, 14, 'NOT CONFIRMED', NULL, '2020-09-13 23:07:02', '2020-09-13 23:07:02'),
(121, 17, 5000, 72, 22, 'CONFIRMED', 'uploads/proof/2704c3fbf109782d1fd8d8938993e67f1600026572.jpg', '2020-09-14 03:17:04', '2020-09-14 00:40:11'),
(122, 24, 10000, 47, 14, 'CONFIRMED', 'uploads/proof/906bdf2abbbb71ac8aa479000354f7c01600027421.png', '2020-09-14 03:09:35', '2020-09-14 01:02:40'),
(123, 24, 10000, 59, 14, 'CONFIRMED', 'uploads/proof/9ee196886f31f0065d18c645717e05c71600023396.png', '2020-09-14 01:56:36', '2020-09-14 01:02:40'),
(124, 24, 10000, 21, 14, 'CONFIRMED', 'uploads/proof/616a95753e8ed0b0c09d385bc9bd94b11600038302.png', '2020-09-14 06:16:48', '2020-09-14 01:02:40');

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

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `status`, `user_id`, `first_name`, `pledge_id`, `message`, `updated_at`, `created_at`) VALUES
(1, 'REJECT', 8, 'igbonecherem', 2, 'I can\'t believe it until I tried and invest now am receiving my money plus the return on the investment', '2020-09-09 19:20:59', '2020-09-09 19:20:59'),
(2, 'REJECT', 161, 'Nkemjika', 80, 'Wow. Very fast payout. Up GreatElites!!!', '2020-09-11 21:14:41', '2020-09-11 21:14:41');

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
(6, 'ADMIN', 'ezelibe', NULL, 'donald', 'donzelventures001@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$kfU/FoVWjjf72qfR5oYjR.IaK5vUL0.252iQ..6F.o8f9xatPc2nC', '08036003595', 'YES', 'ACTIVE', '2020-08-29 19:29:39', '2020-08-29 19:29:39', 'MALE', '1eec1be2467fe2d21c9673555e35aa3d', 'YES', '9a4a3927d57fb27c9b5c5ed87c47bf9a', 1, '209387', NULL, 'NO'),
(7, 'ADMIN', 'enyi', NULL, 'intergrated', 'enyiintergrated001@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$uoVC8VHk1yRY8Y435ffGWuYkKGaiv2fowPQyXynJ2o5ViXywKX9MC', '08036003595', 'YES', 'ACTIVE', '2020-08-29 19:34:06', '2020-08-29 19:34:06', 'MALE', '2ece4fca8126e01f4a2285ff0046eeab', 'YES', '20f883ff6404dd6e072a98a9d604e9ab', 1, '209387', NULL, 'NO'),
(8, 'ADMIN', 'igbonecherem', NULL, 'ekene', 'differentekene@gmail.com', 'YES', 'PAID', NULL, '$2y$10$MiYVyKGlh0aMrRW4mGT.xO.55x9twshdpiC222RCcMfo.OTpNZU2a', '08126442775', 'YES', 'ACTIVE', '2020-08-29 19:37:30', '2020-09-08 17:56:09', 'MALE', 'debf1c2aee04342bed2ca8315b3d8f1d', 'YES', 'd5d359761c4803af4fa93addf671f13a', 1, '784888', NULL, 'NO'),
(9, 'ADMIN', 'okafor', NULL, 'sandra', 'okaforsandra@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$Dnx3pphCRL1WP4cFoDBa9O2KHP3/yOcr/4mJA7EF56CBa/FnRQKWe', '08083089970', 'YES', 'ACTIVE', '2020-08-29 19:42:01', '2020-09-08 22:42:56', 'MALE', '61e5e2276430d50bb5e1a020474318b4', 'YES', '45b14dde46544718366070ced3769e8c', 1, '272424', NULL, 'NO'),
(10, 'ADMIN', 'opuniche', NULL, 'eke', 'opunicheeke@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$9lb.kFI5ZBkEtJOBVGfiAevOLcQW/jkXS7cRHy96hAxTLFZpfozry', '08083089970', 'YES', 'ACTIVE', '2020-08-29 19:44:40', '2020-09-08 18:00:40', 'MALE', 'd5bbd46206efcf24d3b223105f42474c', 'YES', 'f64cfc4f64349233592f36408db465d3', 1, '326449', NULL, 'NO'),
(11, 'ADMIN', 'Ikwuetoghi', 'Chinemelum', 'Chinemelum', 'joynkemjika@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$jRzo95cT655KKRkbEJEYFeXfenAm7/x5sK41z9nXCrf/CBMF6ugPG', '08087905087', 'YES', 'ACTIVE', '2020-08-29 19:48:47', '2020-09-08 04:10:25', 'MALE', '57907b9677b13a3906c0f1856dff5508', 'YES', '04b5a89141d916ede7636a3a34a26199', 1, '668727', NULL, 'NO'),
(12, 'ADMIN', 'idisimagha', 'bernard', 'dublin-green', 'greendublin007@gmail.com', 'YES', 'PAID', 12, '$2y$10$DP8Qpn/m03iNZynfkxnSPuLLsRuZpXL06HzeVogG7JAYf/JHiaqjC', '07032090809', 'YES', 'ACTIVE', '2020-09-07 22:29:48', '2020-09-07 22:45:58', 'MALE', '27340a3bd25860f06470111010eeafb8', 'YES', '627d4fe4df62d93289fbabded0703756', 1, '984956', NULL, 'NO'),
(13, 'ADMIN', 'Nkemjika', 'Ukamaka', 'Joy', 'joyc76677@gmail.com', 'YES', 'PAID', 13, '$2y$10$YBXr5A7y6f9oKaI0KASKnei/GLuZ0rK0HOsyUDs801coE9X3L3Uqm', '09093726744', 'YES', 'ACTIVE', '2020-09-07 23:51:33', '2020-09-08 18:28:44', 'MALE', '8aa5aff09932710259ed840e3f74daee', 'YES', 'e25fc467b5f3ef98908b9703c3f2bd09', 1, '136621', NULL, 'NO'),
(14, 'REGULAR', 'Igbonecherem', 'Valentine', 'Ekene', 'evalentine458@gmail.com', 'YES', 'PAID', 14, '$2y$10$QD/nYTgA05AD6wmU46d3T.X9pk/5uFlap9AZ5bB8J6BQ7J2tIT80K', '08033354743', 'YES', 'ACTIVE', '2020-09-08 00:16:08', '2020-09-08 03:42:07', 'MALE', 'd074846507c1004c9781c5801f8b2299', 'YES', 'bb9ea3457abde739a718670d1ae70836', 13, '372569', NULL, 'NO'),
(15, 'REGULAR', 'Vivian', 'Obayendo', 'Uju', 'vivianobidoo6@gmail.com', 'YES', 'PAID', 15, '$2y$10$bY.66ddX520GRRHCPMHkBOhZiblqFlDczHf96PSm030OoHAXWJTsu', '08134714901', 'YES', 'ACTIVE', '2020-09-08 02:09:15', '2020-09-08 04:52:09', 'FEMALE', '3503683283ba0573256dec460ff4aa75', 'YES', '0554f159bde461d365abc729b4b7b102', 13, '429609', NULL, 'NO'),
(16, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'donaldezelibe001@gmail.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '08036003595', 'YES', 'ACTIVE', '2020-08-30 05:38:52', '2020-09-08 05:10:10', 'MALE', 'ae02037ba02d17b9aa8c35ae0a2badff', 'YES', '4bd4aa0c7db4b22a9dd4eec89ad99153', 1, '374937', NULL, 'NO'),
(18, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'fadon001@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eL...', '08036003595', 'YES', 'ACTIVE', '2020-08-30 05:38:52', '2020-08-30 06:03:52', 'MALE', 'ae02037ba02d17b9aa8c35ae0a2badab', 'YES', '4bd4aa0c7db4b22a9dd4eec89ad99149', 16, '374937', NULL, 'NO'),
(19, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'fadon002@greatelites.com', 'YES', 'PAID', NULL, '$2y$10$dPO4CrP3mB8loNYlejkdcONmPOXK/luQfQCSPJ2t9eLR.OluHsf6q', '08036003595', 'YES', 'ACTIVE', '2020-08-30 05:38:52', '2020-08-30 06:03:52', 'MALE', 'ba02037ba02d17b9aa8c35ae0a2badab', 'YES', '0cd4aa0c7db4b22a9dd4eec89ad99149', 16, '374937', NULL, 'NO'),
(20, 'REGULAR', 'Ayo', NULL, 'Akinlosotu', 'ayoakin17@yahoo.com', 'YES', 'PAID', 20, '$2y$10$eJdrpVUHY7ARdZKvHXd42uLbF6me0qzucmdJrE0tLMthchTiBlOSa', '09073683277', 'YES', 'ACTIVE', '2020-09-08 05:36:18', '2020-09-08 18:12:19', 'MALE', 'e1e0430aaef02bca974377bea18339b1', 'YES', '0ddc2242e0e04105d01f59ccf9826293', 14, '801377', NULL, 'NO'),
(21, 'REGULAR', 'Charity', 'Ukwuoma', 'Umennadi', 'charityumennadi78@gmail.com', 'YES', 'PAID', 21, '$2y$10$GUSgB4v1WIQVO11ASDb5EeeJporpb12/FhrmtKTq8ktwMC4Xgh7g.', '08038358843', 'YES', 'ACTIVE', '2020-09-08 05:38:34', '2020-09-08 15:24:02', 'FEMALE', 'a1005867fe5cc055f7205c8839ad1820', 'YES', '9b92da91a41750d8084fe9a34e5c1440', 13, '993621', NULL, 'NO'),
(22, 'REGULAR', 'Ezinwa', NULL, 'gift', 'babysomma7@gmail.com', 'YES', 'PAID', 22, '$2y$10$hRMdiskez4HeT7/owRmsKuBP7fONf.IF/5HzyHW/2BzOL1IXW5uWO', '08165134324', 'YES', 'ACTIVE', '2020-09-08 05:46:31', '2020-09-08 15:24:11', 'FEMALE', 'ae095de77fac83eaa882c65cefd8cbc6', 'YES', 'f5bfe8d74995e458d43f38d6334b3db5', 15, '748398', NULL, 'NO'),
(23, 'REGULAR', 'Nkechi', NULL, 'gift', 'zbaby2153@gmail.com', 'YES', 'PAID', 23, '$2y$10$tttOb/Ut6OXdxJL4EXem7.SzoOZA7a3/TWnJ6tTTKcI7yYwhvZM3S', NULL, 'NO', 'ACTIVE', '2020-09-08 06:34:17', '2020-09-08 15:24:20', 'MALE', '8f99816e020eeb3d0a3e5eacb52e495a', 'NO', '599ce30595bebd7ce60c9fdd2f67f7f0', 22, NULL, NULL, 'NO'),
(24, 'REGULAR', 'Laurie', NULL, 'Heathcote', 'knoxhomeseller@yahoo.com', 'NO', 'PAID', 24, '$2y$10$Oqq35YuZKcWqNw2aH5qgl.d77GMYFPVREv6jAPIKAv1u2DoEiylqm', NULL, 'NO', 'ACTIVE', '2020-09-08 08:38:54', '2020-09-08 15:25:33', 'MALE', 'd8fbf704980e5a8469a6f0ed13b7310a', 'NO', 'd32b8dc5fa2b018c4db5d2f6be5bb000', 1, NULL, NULL, 'NO'),
(25, 'REGULAR', 'Amarachukwu', 'Onyemaechi', 'Ezemuo', 'ezemuoamara17@gmail.com', 'YES', 'PAID', 25, '$2y$10$pbmGsXrstqipaRhscdPBnOhACKFZLwrWw35C2lp2GkfrWmQIdvzTi', '08138072502', 'YES', 'ACTIVE', '2020-09-08 09:33:59', '2020-09-08 15:25:40', 'FEMALE', '9887eea47749613daddda85915a677a4', 'YES', '2447a5e4acbad8382b69d64a07c40cf1', 1, '935041', NULL, 'NO'),
(26, 'REGULAR', 'Blessing', 'Efemena', 'Imoniaro', 'imoniarobless073@gmail.com', 'YES', 'PAID', 26, '$2y$10$u8yytmokTptIMI//KdH0l.aXPAWFGtNzDaDdRyoEYBdttkNUwS.4C', '07086766467', 'YES', 'ACTIVE', '2020-09-08 13:45:28', '2020-09-08 18:00:31', 'FEMALE', 'c20e057aa5437374b0cf673439acb703', 'YES', '7444bc34a23ec30038e018b4c77340df', 21, '480331', NULL, 'NO'),
(27, 'REGULAR', 'Precious', 'Ogochukwu', 'Nworah', 'preciousogochukwu585@gmail.com', 'YES', 'PAID', 27, '$2y$10$Ve8apNe5cUwOahMifvMbR.HCPyko1HpHSyHOsFKZeaCl/is7yh2X6', '07030619435', 'YES', 'ACTIVE', '2020-09-08 14:08:51', '2020-09-09 01:14:10', 'FEMALE', '1a547f88ede23689527dd244954aeb0b', 'YES', '9ce68cc4009340a2a6d35019a28aee86', 1, '424056', NULL, 'NO'),
(28, 'REGULAR', 'Maxwell', NULL, 'Imoniaro', 'imolymax@gmail.com', 'YES', 'PAID', 28, '$2y$10$T6xQ8zY17Rd6.h4UMd4rFOSafZ8LuZUBBXmuqf5Cgz0gIiyMRkC2q', '08173382700', 'YES', 'ACTIVE', '2020-09-08 14:16:22', '2020-09-10 03:13:54', 'MALE', '06318a4b323a87f3809c0d5641eb46a5', 'YES', '6a24964039cd567bc7ce4ecdfae279d7', 26, '478884', NULL, 'NO'),
(29, 'REGULAR', 'Okoli', 'Obioma', 'Maria', 'oobioma93@gmail.com', 'YES', 'PAID', 29, '$2y$10$mMit1fD2RraosRBtnsqoDO1s3FdBblVE1UDF3k5nEYyCEyGPctCh6', '08034393506', 'YES', 'ACTIVE', '2020-09-08 14:50:30', '2020-09-08 15:24:38', 'FEMALE', '815874aab305f3b33768ed1abaad8912', 'YES', '69cc3a38713ff345afe5e8663d1de13f', 16, '796889', NULL, 'NO'),
(30, 'REGULAR', 'Kaylee', NULL, 'Durgan', '8134842710@vtext.com', 'NO', 'PAID', 30, '$2y$10$jXOKqtcndWYuhNWXFABrhOXCwofERFgYw0Jh2aPvyyxiPI5aN0M.a', NULL, 'NO', 'ACTIVE', '2020-09-08 15:11:29', '2020-09-08 15:24:29', 'MALE', '2bb445eb42f69b06cf56ab41555f4efc', 'NO', 'b0cfe6683f75d0a09c6d2f8862f8d9ff', 1, NULL, NULL, 'NO'),
(31, 'REGULAR', 'Nwankwo', 'Nneka', 'Lovina', 'lovinanwankwo@gmail.com', 'YES', 'PAID', 31, '$2y$10$XTj8.Ws1Ap6FBIqW3ZDyieKEV0LLHQ0KtUj4RL2DYyypCOBTA4Gp.', '07082404153', 'YES', 'ACTIVE', '2020-09-08 15:31:09', '2020-09-08 16:05:39', 'FEMALE', 'dffd6c2c9bcf63ce2843ac7405e0be4c', 'YES', '090212e018674bcc511504b93e3512ca', 21, '334314', NULL, 'NO'),
(32, 'REGULAR', 'Nkemjika', NULL, 'Ikechukwu', 'johnobum00@gmail.com', 'YES', 'PAID', 32, '$2y$10$8VY5bqknP0zgwDUAYEa5XubSiPR4g7Jh4pTs026T9rHUAaoSasdme', '09093726744', 'YES', 'ACTIVE', '2020-09-08 15:38:01', '2020-09-08 16:05:59', 'MALE', 'dcdddcdb5ba1b6d72ec65b0367a03fbd', 'YES', '8b0b22b10e0b8ff3f255ab0525b0c561', 13, '815927', NULL, 'NO'),
(33, 'REGULAR', 'Emmanuel', NULL, 'Udeh', 'gree.nice@yahoo.com', 'YES', 'PAID', 33, '$2y$10$Slbu1YWRQQ9iOn9O.3A26.7hRtiuHcLy1nRObJHFcTJbwD5QPsizi', NULL, 'NO', 'ACTIVE', '2020-09-08 15:44:37', '2020-09-08 18:04:25', 'MALE', '5759e0af5d8256bfc1f46d1f61bfe77f', 'NO', 'b4964ab741cdd883c3d65f9414660d8b', 1, NULL, NULL, 'NO'),
(34, 'REGULAR', 'Eneanya', 'Nkiruka', 'Amaka', 'amasophy16@gmail.com', 'YES', 'PAID', 34, '$2y$10$tWfJGM780uEyc/P9JxmJHurLDwX08IWPbvBY8xdohOmVYDfRoiGxG', '08065774437', 'YES', 'DISPUTE', '2020-09-08 15:46:49', '2020-09-08 16:07:23', 'FEMALE', 'dd51719a19b5fb8c5e02387ba7b1ebbb', 'YES', '67c2dd9ce2dddea91d789143fb7e7e7f', 1, '903756', NULL, 'NO'),
(35, 'REGULAR', 'Kelvin Chibunna', NULL, 'Nwankwo', 'nwankwochibunna2017@yahoo.com', 'NO', 'PAID', 35, '$2y$10$P3kKYiFVVOPw2/.4kTWoU.upAbWYEnL2i0hethUdaf6YuQC32rKzm', NULL, 'NO', 'ACTIVE', '2020-09-08 16:22:17', '2020-09-08 16:26:24', 'MALE', '704918feb293e9606febbbfda4d3db9c', 'NO', 'ddad52926da0fb889a9d06b4e9f0baf0', 13, NULL, NULL, 'NO'),
(36, 'REGULAR', 'NWAMAKA', NULL, 'CHHUKWUMA', 'ammychuks2016@gmail.com', 'YES', 'PAID', 36, '$2y$10$sOWaTQCdrKRl/jo/c..t4Oi2mZsKZCQO9OupHqqBmdiGzPi/jIxYS', '08124221078', 'YES', 'ACTIVE', '2020-09-08 16:27:15', '2020-09-08 17:12:47', 'FEMALE', '9029e6ba0ca4f5ae6dc32c165a5cc8ba', 'YES', 'd1c3cd133afc81f95382e168a2ed5ee2', 1, '662669', NULL, 'NO'),
(37, 'REGULAR', 'Chibunna', 'Kelvin', 'Nwankwo', 'nwankwochibinna24@gmail.com', 'YES', 'PAID', 37, '$2y$10$tdO8A8IxlAhDZ6zlJSh3CO66cfUb.hXdNL/0PlooxdSDfvlvbbBFO', '08139159929', 'YES', 'ACTIVE', '2020-09-08 16:31:26', '2020-09-08 16:43:57', 'MALE', '17a2f79a67f248c70da6b102cd2278a7', 'YES', 'ce417a49d410b7592954f7c606081ae7', 13, '882181', NULL, 'NO'),
(38, 'REGULAR', 'Nkiruka', 'Ogechukwu', 'Onuegbu', 'nikiogebest@gmail.com', 'YES', 'PAID', 38, '$2y$10$CLqRa/6mPbiojw2sGjguNe8LJLxqbUaR6AYG7ggI7N1V5.v4xpLYm', '08094654170', 'YES', 'ACTIVE', '2020-09-08 16:36:06', '2020-09-08 19:59:12', 'FEMALE', '7f35e376cef2c6ccba67eb6ccf001ac7', 'YES', 'a8f3c7e4e04bae71137a4ae9824d880e', 13, '197602', NULL, 'NO'),
(39, 'REGULAR', 'Nelson', NULL, 'Udeh', 'nelsongreat22@gmail.com', 'YES', 'PAID', 39, '$2y$10$/4gzvHIN3TQIRNWY5yWKS.EDAcNIVD8LE9gL.Ri6kFjsjrCHtDeLS', '08168688528', 'YES', 'ACTIVE', '2020-09-08 16:49:36', '2020-09-08 17:04:51', 'MALE', '2e5a57389ad1ae0b90da7fa17516c990', 'YES', 'cfaf6f90d70fc00d473b39bec5122280', 1, '216104', NULL, 'NO'),
(40, 'REGULAR', 'Miriam', 'Chizitere', 'Anusionwu', 'chizzymiriam25@gmail.com', 'YES', 'PAID', 40, '$2y$10$dqSfROk/4qofNvWteEtrguXfylbt074dloRSG5ik0ZPSt9XCdon4u', '08060620877', 'YES', 'ACTIVE', '2020-09-08 16:59:54', '2020-09-08 17:14:23', 'FEMALE', '7826a7c0d00875082b8c9ab64400885e', 'YES', '3a69c853759cd3d437a85becadf5cd40', 13, '323391', NULL, 'NO'),
(41, 'REGULAR', 'Eucharia', 'Nkeiruka', 'Ezeonwumelu', 'nkeirukaezeonwumelu1@gmail.com', 'YES', 'PAID', 41, '$2y$10$7Yya9tXpV809I9RaoAGxiO2yD5mPjAND/8BtLhRaw/Ov5PSoD0r4i', '09068992082', 'YES', 'ACTIVE', '2020-09-08 17:03:59', '2020-09-09 11:44:59', 'FEMALE', 'cc6770d18ea77605187b282260bf86e3', 'YES', '0cc72f52b301a34484cee589b74b8753', 38, '441205', NULL, 'NO'),
(42, 'REGULAR', 'NWAMAKA', NULL, 'CHHUKWUMA', 'nwamakachukwuma@yahoo.com', 'YES', 'PAID', 42, '$2y$10$6yOKtW4D8nJDTcYe8Ru5/e7KDHgHzbHVdm1jEh9f8jwzKxF44WJ7.', '08159119629', 'YES', 'ACTIVE', '2020-09-08 17:06:44', '2020-09-08 18:49:39', 'FEMALE', '463ec64a8a4be17ce26d0130fa1fe961', 'YES', 'e5b914ba222ef0003acdc8ba01a2999d', 1, '896063', NULL, 'NO'),
(43, 'REGULAR', 'Ogu', 'Ihuoma', 'GOLD', 'Ogugold3@gmail.com', 'YES', 'PAID', 43, '$2y$10$ILIu7dB56Sz/CwuTtzWzGuc3jgmLcACWhfJLkCa3JCl5BiDP5z5qy', '08136423642', 'YES', 'DISPUTE', '2020-09-08 17:11:50', '2020-09-08 19:00:57', 'FEMALE', '15235c3539cf75c2cb8d003b6cb6c647', 'YES', '1823cb9258bcde412d48a8f32fd15ee4', 37, '105080', NULL, 'NO'),
(44, 'REGULAR', 'Chinelo', NULL, 'Ezeonwumelu', 'uk4suretravel@gmail.com', 'YES', 'PAID', 44, '$2y$10$kzyHFvEe4lK1QnPJVjTb6ekI.yHna2AZ6oRu0Sh9rD3YsuSk4aLJm', '08068357884', 'YES', 'ACTIVE', '2020-09-08 17:13:11', '2020-09-08 18:27:11', 'FEMALE', '239ba2336a7e8b0c2000fc945856f00f', 'YES', '47b1c124a7e0b68ec6896ec7ae8db23f', 41, '968795', NULL, 'NO'),
(45, 'REGULAR', 'Christopher', 'Mary', 'Sandramary', 'sandymary626@Gmail.com', 'YES', 'PAID', 45, '$2y$10$/0RwxhfEiuWZ/qmJAE1ONeIlW8U4AIBgK1SW.jOZolEELVRl7s/1u', '08163422677', 'YES', 'ACTIVE', '2020-09-08 17:16:56', '2020-09-08 20:22:53', 'FEMALE', 'b832435b45bd228c893e0dd390115863', 'YES', 'e9daa48fc18647218959f202dee536da', 29, '366695', NULL, 'NO'),
(46, 'REGULAR', 'Ukeje', 'Chibuzo', 'Doris', 'Dorisjessica71@yahoo.com', 'YES', 'PAID', 46, '$2y$10$gRo9/i99jVm7E4gVxSvWjexA4SeI8Qyx6C/C2Q4K80z5Xq5d47O0a', '08117365280', 'YES', 'ACTIVE', '2020-09-08 17:29:02', '2020-09-08 17:39:02', 'FEMALE', 'c0c81dad80b12c709c37e9457d92f6eb', 'YES', 'cac4d8f58f9c90fa3bf29fe16f590dcd', 40, '473441', NULL, 'NO'),
(47, 'REGULAR', 'KANU', 'BLESSING', 'UKAMAKA', 'blessingk524@gmail.com', 'YES', 'PAID', 47, '$2y$10$yK1jySUtTirbEx4W0c6a.OE1xOajv19J4EuIx1J6wy5Y3kqYiNdX6', '08038155335', 'YES', 'ACTIVE', '2020-09-08 17:30:47', '2020-09-08 17:46:10', 'FEMALE', '4a802252566fa1f02f8f4427a909e905', 'YES', '21c9d887fe857a1e34296bd4bf97ae9d', 29, '898796', NULL, 'NO'),
(48, 'REGULAR', 'Martina', NULL, 'Eze Ogochukwu', 'ogochukwueze103@gmail.com', 'NO', 'PAID', 48, '$2y$10$25/m0NZTIqQ.uy3Ke36UqOwLdK2RAUYobP8XiqJT.XtHM6uyUTVl.', NULL, 'NO', 'ACTIVE', '2020-09-08 17:34:01', '2020-09-08 17:39:34', 'MALE', '918ba5f5ce8ead954fb200a98624d9c3', 'NO', 'd8cb73dbecf1b83c810a5d8b5123fd49', 26, NULL, NULL, 'NO'),
(49, 'REGULAR', 'Adaeze', NULL, 'Ekeh', 'ciniepotia@gmail.com', 'YES', 'PAID', 49, '$2y$10$6d7v2p78znIcd3za.n9eVOT1oALMxLb1VY.Fr.qTtYITrMo/AWBPi', '07039435841', 'YES', 'ACTIVE', '2020-09-08 17:51:44', '2020-09-08 17:58:59', 'FEMALE', '8ff82c6c9832de12ec3ea8bc24c28cbd', 'YES', 'a1e2eceffe02a83b3427688c68b8575d', 1, '501066', NULL, 'NO'),
(50, 'REGULAR', 'Emmanuel', 'Mannykoko', 'Udoh', 'emmanuel4mee@yahoo.com', 'YES', 'PAID', 50, '$2y$10$o3esqnMKhR4zkSzxyQZLO.DLlKtNuZFQA0AFS.B0n1.u/qBcYUiTG', '08085890025', 'YES', 'ACTIVE', '2020-09-08 17:53:29', '2020-09-08 19:06:59', 'MALE', 'faa6cae0fa494ca7cf0bd3df0671ad54', 'YES', 'c4966f32328b6e5f84a8691d421b3570', 40, '700845', NULL, 'NO'),
(51, 'REGULAR', 'Okoli', NULL, 'Ogechi Bibian', 'ogebb4real@gmail.com', 'YES', 'PAID', 51, '$2y$10$xaSg2ZOAS8DhcUQhiSwODe.KDLpw3iBDTB1ZnrazdQNZzXYIOWUsu', '09064564700', 'YES', 'DISPUTE', '2020-09-08 17:54:06', '2020-09-08 18:22:13', 'FEMALE', '8154b8f5d3d926f2fff61cc444b70092', 'YES', '4de70bfdc048fcce09a372e880f84a60', 13, '638676', NULL, 'NO'),
(52, 'REGULAR', 'Chinenyenwa', 'Ugo', 'Osi', 'chinenyeosi8@gmail.com', 'YES', 'PAID', 52, '$2y$10$uoIfKDyF2Li4u74YBoGhwe/xzCuZ4AUgHRaQFxfl44HO8CBzLuONS', '08174111555', 'YES', 'ACTIVE', '2020-09-08 18:07:24', '2020-09-08 18:26:42', 'FEMALE', 'a0aaa6e5277031b60a72ca3ffe688ba1', 'YES', '982acdc11abd1757596634f1f4cc3005', 14, '847234', NULL, 'NO'),
(53, 'REGULAR', 'Simeon', NULL, 'Ogwoja', 'gwojasimeon@gmai.com', 'YES', 'PAID', 53, '$2y$10$5gZFfl57F/69HTplyAJlo.MS5cTlefqKaWcA3kJoX0dwl6.zc8j4m', NULL, 'NO', 'ACTIVE', '2020-09-08 18:07:54', '2020-09-08 18:44:42', 'MALE', 'abab307ad170a2f7ff2b3ce3d2188220', 'NO', '3ca7fad886ca95312c5a2f86b71ecd37', 1, NULL, NULL, 'NO'),
(54, 'REGULAR', 'Simeon', NULL, 'Ogwoja', 'gwojasimeon@gmail.com', 'NO', 'PAID', 54, '$2y$10$5x21oFkDYbE1OrQHIOYw/.1.5kkgVouCSXHueveN5Xk/WRaYN8FpK', NULL, 'NO', 'ACTIVE', '2020-09-08 18:08:52', '2020-09-08 18:27:04', 'MALE', '8ffba155e0662e54b7a65e58a88a31ce', 'NO', '8d52a2ceca88827160e21fd81b2c48e7', 1, NULL, NULL, 'NO'),
(55, 'REGULAR', 'Ifeanyi', 'Chibuzor', 'Faith', 'faithchibuzor40@gmail.com', 'YES', 'PAID', 55, '$2y$10$SBAq.G28jrbgHDKryqZgRey2Yylu8l40Fc/yjcqHHtfqeALRaE91W', '07015486446', 'YES', 'ACTIVE', '2020-09-08 18:10:57', '2020-09-08 21:16:18', 'FEMALE', 'e548bc96153a76dc2198056778c533a9', 'YES', 'd2be81b70b8ebc569da86156a9a29f77', 40, '839033', NULL, 'NO'),
(56, 'REGULAR', 'Sophia', NULL, 'Akukariaibe', 'Chizy.real@yahoo.com', 'NO', 'PAID', 56, '$2y$10$DSpUjy2DwZ6uWbyI6vzkqO2.hAaEwy3HiyB9P4Ltq9iwDPL/sMPX6', NULL, 'NO', 'ACTIVE', '2020-09-08 18:14:12', '2020-09-08 18:27:22', 'MALE', '50a6b27ee3c7903bbe848904f0fce2f6', 'NO', '88c63989eb93d100a76e0a63856b72b8', 1, NULL, NULL, 'NO'),
(57, 'REGULAR', 'PATRICIA', NULL, 'OSAGIEDE', 'patosas2016@gmail.com', 'YES', 'PAID', 57, '$2y$10$PHT5RMmMpAM89kr007qIgurLlDT1xoDPcdZwO9MzLuavj2xUCg3pu', '07057306790', 'YES', 'ACTIVE', '2020-09-08 18:31:15', '2020-09-08 18:55:23', 'FEMALE', 'c74df713453e1cce5823fffedfa50215', 'YES', 'b4ee557ee91515a59c72e0109688b798', 1, '889685', NULL, 'NO'),
(58, 'REGULAR', 'Ifeakam', 'Yvonne', 'Omo-odudu', 'yvonneifeax1@gmail.com', 'YES', 'PAID', 58, '$2y$10$/d4rdBOGtcWg40FCqTMCHukCKQFnxHrhcDg8e/8XRlikiUw4h4Wh2', '07034432282', 'YES', 'ACTIVE', '2020-09-08 18:36:19', '2020-09-08 19:09:20', 'FEMALE', '3ae7c8690a0ad213e135059428c00a24', 'YES', '300ec0541cfd7e76da06b9486223b445', 29, '562767', NULL, 'NO'),
(59, 'REGULAR', 'Chika', 'Mavis', 'Otubelu', 'achysdony2k@gmail.com', 'YES', 'PAID', 59, '$2y$10$EF48hxRHPsf6fU1rgG4lwuJS.UXvQ2Ei8BwtWwy6TwEk7fKjeDfDi', '08032740129', 'YES', 'ACTIVE', '2020-09-08 18:42:35', '2020-09-08 20:03:01', 'FEMALE', 'f11afedc07eb976b4f1f918732e56cf3', 'YES', 'ccefd080c889f229d023ed9255991986', 40, '462671', NULL, 'NO'),
(60, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'fadon004@greatelites.com', 'NO', 'PAID', 60, '$2y$10$lIOPm1FmADzjxAOspUhTG.DCjKgDEdgggIPDaS5WklRqepBzydgzy', NULL, 'NO', 'ACTIVE', '2020-09-08 18:50:12', '2020-09-08 18:55:56', 'MALE', 'f74e553b790e74d24ec1c383b06d5cda', 'NO', 'a5ca7a462df951d499a266ed7c9ca187', 38, NULL, NULL, 'NO'),
(61, 'REGULAR', 'Paul', NULL, 'Bolade', 'spakmultimedia@gmail.com', 'YES', 'PAID', 61, '$2y$10$0AdZ7Fq7DE8ufTN2wgKcFucuU5EzUnWSuDQ0HHnlHZUC5kRnVGfg.', NULL, 'NO', 'ACTIVE', '2020-09-08 18:52:44', '2020-09-08 18:56:07', 'MALE', 'bc0b805ad75c66f52b508edcac9a6cf1', 'NO', '802166121b5c167b550e8640bf773b24', 13, NULL, NULL, 'NO'),
(62, 'REGULAR', 'Dike', NULL, 'Paschal', 'ugomoore3@gmail.com', 'YES', 'PAID', 62, '$2y$10$H2Dk9UX5.NSg61MG3xq7H.kvxliWbkR9m5v04g2PhXxamGt96O5im', '09031597510', 'YES', 'ACTIVE', '2020-09-08 19:02:56', '2020-09-08 20:04:07', 'MALE', '575269bd1d4aa05a0f210431a6aadee5', 'YES', '250339820421964bd5cb72f52613ef25', 14, '504869', NULL, 'NO'),
(63, 'REGULAR', 'Efenarhua', NULL, 'Joy', 'etumudonjoy@gmail.com', 'YES', 'PAID', 63, '$2y$10$So8caFnBt6Owdqa52TJDWeSHCJ7LupJRsnaRuvIQ9/xQe3wRLt1g2', '07080055768', 'YES', 'ACTIVE', '2020-09-08 19:05:50', '2020-09-08 19:59:42', 'FEMALE', 'd52f539fd1b2abda42a8caad53469852', 'YES', '8aaab702473d57e6082794476660a080', 38, '337803', NULL, 'NO'),
(64, 'REGULAR', 'Ogu', 'Nneoma', 'Silvia', 'sylviaogu2020@gmail.com', 'YES', 'PAID', 64, '$2y$10$80p8gB9BxAEt3v6LyBIMgu8TmwkUBFj9p8nFHAI2V.mkr795DVEd.', '08051039495', 'YES', 'DISPUTE', '2020-09-08 19:06:51', '2020-09-08 19:59:54', 'FEMALE', '57ff8c79adc75b140ba26549b928a94c', 'YES', '9f17518c4fcc23a3f423f8d36eddabc7', 43, '578986', NULL, 'NO'),
(65, 'REGULAR', 'Akudo', 'Lilian', 'Iroha', 'akudoiroha1901@gmail.com', 'YES', 'PAID', 65, '$2y$10$zIxAI1FiJygb996ao5eWDuYGr2sgAo1OQ4giUBVI0Rcli3.KR6iwi', '08069029666', 'YES', 'ACTIVE', '2020-09-08 19:19:07', '2020-09-08 20:00:21', 'FEMALE', '574b406644b3de6c0220b6b5835662be', 'YES', '1845ecbb816ea1a178ca63382f1d0359', 58, '587373', NULL, 'NO'),
(66, 'REGULAR', 'Raphael', 'Zee', 'Osi', 'osiraphael2020@gmail.com', 'YES', 'PAID', 66, '$2y$10$Lxtma0s0AS1VcHM8/sWxYed6R4wgvrPM0LIAPLdLyuEQD/sVrbTbi', '07014327622', 'YES', 'ACTIVE', '2020-09-08 19:25:40', '2020-09-08 23:28:54', 'MALE', 'e8f3eec7089d10ef3a8990ddb46719da', 'YES', '877eece842edecb3714d501c74194c39', 52, '520208', NULL, 'NO'),
(67, 'REGULAR', 'David', 'Anusionwu', 'Ebubechukwu', 'ebubechukwudave@gmail.com', 'YES', 'PAID', 67, '$2y$10$VhIN/5xq/E7wfMwXJuBNOOGtVNzI6vvIA.kR4Wrn17jQoj8Ivxt/S', '09061353427', 'YES', 'ACTIVE', '2020-09-08 19:25:54', '2020-09-08 20:00:32', 'MALE', '0dabc388b9ddb071939db47eb948e9a4', 'YES', '2c3094f91587bb31d7f89b951933ba08', 40, '626391', NULL, 'NO'),
(68, 'REGULAR', 'Raphael', 'Eze', 'Osi', 'zeedaabio043@gmail.com', 'YES', 'PAID', 68, '$2y$10$0BI8Ub8MALkEK08Pr5o2qeA9soc1bvKhzWa9LmHVEmjUM1G.RZoGm', '07030796937', 'YES', 'ACTIVE', '2020-09-08 19:53:35', '2020-09-09 11:05:34', 'MALE', 'f9ad3985e1f8e89627c49ab28afb05af', 'YES', 'ac054aee5cd695baa3cd151c0562c96d', 1, '522422', NULL, 'YES'),
(69, 'REGULAR', 'Attah', NULL, 'Udeh', 'udehnelson22@gmail.com', 'YES', 'PAID', 69, '$2y$10$ySZo1pN7zMVb8OSjoEOcCuHM8tGyU3E4pHrcAmTVWKYxyFgPlBP4q', '08159512414', 'YES', 'ACTIVE', '2020-09-08 20:02:26', '2020-09-08 20:15:09', 'MALE', 'e6c99ee0116522d53af604d7bb86fd4c', 'YES', '81fd5b57e6b038341fee4114797daf8e', 39, '977809', NULL, 'NO'),
(70, 'REGULAR', 'Iroroghene Emmanuel', NULL, 'Omo-odudu', 'emmanueliroroghene@gmail.com', 'NO', 'PAID', 70, '$2y$10$GtAqXwf3uFh/64YTQMiC5O1s.NzF6wGRzaQEqYogTVBRDJMuFvtg.', NULL, 'NO', 'ACTIVE', '2020-09-08 20:06:57', '2020-09-08 20:10:20', 'MALE', 'b37b5a00e19c2dc2c233e57e3372a870', 'NO', '5527876d51510858aa1ec442395cca0c', 58, NULL, NULL, 'NO'),
(71, 'REGULAR', 'Amaefuna', NULL, 'Chimezie', 'chimetina67@gmail.com', 'YES', 'PAID', 71, '$2y$10$.egMN2nPhFEJqkYuwNqpQe1e4l.73McipqYO3cQKi3mgoXvH4T4qG', '08030923706', 'YES', 'ACTIVE', '2020-09-08 20:07:14', '2020-09-12 15:03:36', 'FEMALE', 'fcd5e7c8b8b59a371920c8f025b48020', 'YES', '072b51a5b783ac8912d9b91baece656b', 1, '340942', NULL, 'YES'),
(72, 'REGULAR', 'Ezemuo', 'Onyemaechi', 'Amarachukwu', 'ezemuoamarachukwuo@gmail.com', 'YES', 'PAID', 72, '$2y$10$Px7ZfMcNuufHJP9LIQ7HIeVxuazwNnYJItmZts8gkzifhgYvUiGFe', '08138072502', 'YES', 'ACTIVE', '2020-09-08 20:09:56', '2020-09-08 21:30:21', 'FEMALE', '26d39cf04858dc108b2c429650d5e289', 'YES', '355652d6bde0846db7157bd75f467f9d', 62, '900535', NULL, 'NO'),
(73, 'REGULAR', 'Raymond', 'Ndu', 'Iheyiribe', 'iheraymond@gmail.com', 'YES', 'PAID', 73, '$2y$10$CLkYuZnbi0lf8H4FOkWlM.8aCo/e52kFWSW9DttpB7E9hLOAevu8u', '08061646963', 'YES', 'ACTIVE', '2020-09-08 20:25:43', '2020-09-08 20:39:26', 'MALE', 'c7f22fde5929e2896e21adb67365c83c', 'YES', '36521fffc0ed47f1f90a726e0c5c50f4', 40, '659129', NULL, 'NO'),
(74, 'REGULAR', 'JANE', NULL, 'AkALONU', 'janniforever432@gmail.c', 'NO', 'PAID', 74, '$2y$10$P37TcPSRdo0qlJzgYfKSDuM9GowRWrBGlR9Gc0W0pHX3cFKD97opW', NULL, 'NO', 'ACTIVE', '2020-09-08 20:40:19', '2020-09-08 20:54:23', 'MALE', '707cc1ee87d512d34724fb4095101600', 'NO', '1baf213a13eb54dc6d176536ed77c145', 13, NULL, NULL, 'NO'),
(75, 'REGULAR', 'Amara', 'Obi', 'rita', 'amararita33@gmail.com', 'YES', 'PAID', 75, '$2y$10$tni6ijjUpFtdL9Po5cRA8e0cB.pqbHremrI.Cjqma7krRdSmPME/a', '08062262715', 'YES', 'ACTIVE', '2020-09-08 20:45:17', '2020-09-09 04:04:54', 'FEMALE', '8f8bcba73f266c841ca755c71406bc70', 'YES', '43e15c88969c1ce365d896ff10f622ff', 13, '481704', NULL, 'NO'),
(76, 'REGULAR', 'Uchenna', 'Samuel', 'Anusionwu', 'samueluchenna784@gmail.com', 'YES', 'PAID', 76, '$2y$10$cXFqbzHM7M6LdzbvtYjzpevNqNxWAjJCVl0jrLrrUVthD8ce8f4GW', '07033298512', 'YES', 'ACTIVE', '2020-09-08 20:51:34', '2020-09-08 21:02:22', 'MALE', 'e4fe3ba08be28b5fac93b180bfab1b57', 'YES', 'f9d110d5d12a896248259a0fcf2c709d', 1, '444583', NULL, 'NO'),
(77, 'REGULAR', 'Etumnu', 'Orji', 'Michael', 'orjibank@gmail.com', 'YES', 'PAID', 77, '$2y$10$nUGBK6j7jNqRhZNur5NTXePNvBRq/URVqChGiFPdhztNKhqOwmHHm', '07041123123', 'YES', 'ACTIVE', '2020-09-08 21:03:48', '2020-09-08 21:30:34', 'MALE', 'ad3458abffdf30b776184782ebb27c46', 'YES', 'e09c5c820b1d058b3c68facc61531008', 29, '551875', NULL, 'YES'),
(78, 'REGULAR', 'Chiamaka', NULL, 'Iroha', 'yvonneomoodudu@gmail.com', 'YES', 'PAID', 78, '$2y$10$LIZ8twFSVFZP40dcJrxdzenceXeNvMvUB4.zZHpAr9W9DB.0FB8Ia', NULL, 'NO', 'ACTIVE', '2020-09-08 21:03:48', '2020-09-08 21:30:45', 'MALE', '756f8293e8c5c289f7ddbcca0285625d', 'NO', 'febc088b3a60a819ba5b562b2c2076d6', 65, NULL, NULL, 'NO'),
(79, 'REGULAR', 'Odo', 'Ejitex', 'Ernest', 'odoernestejiofor@gmail.com', 'YES', 'PAID', 79, '$2y$10$7Zku6o/p/gBJUIzI324o9.m6cuOTlpHkq8hBp9N47jF5NA0gPQ4vO', '07046866303', 'YES', 'DISPUTE', '2020-09-08 21:19:43', '2020-09-08 21:50:55', 'MALE', '0699e813f6ec55279ebc4c085d2d81c6', 'YES', '965c251ca4e672a57595178fc829f704', 40, '613681', NULL, 'NO'),
(80, 'REGULAR', 'Ezeani', NULL, 'Uzoma', '08036616105@gmail.com', 'NO', 'PAID', 80, '$2y$10$QBH7645MOG4gW0CaNZaFmOPUqf7cN91EfTbeG/BYFUpIAVjD.MmkG', NULL, 'NO', 'ACTIVE', '2020-09-08 21:29:47', '2020-09-08 21:31:04', 'MALE', '4a83ebf748f1e3dfb3a04d7b0e056f10', 'NO', '1e7ca261a10b3ca4fc8cf5a9ffb97fee', 13, NULL, NULL, 'NO'),
(81, 'REGULAR', 'Ezeani', NULL, 'Uzoma', 'uzeani3661@gmal.com', 'NO', 'PAID', 81, '$2y$10$K1blqnSXCk5jC60JjLBr4.xfO8L7TFZVgbJ1gQ0hjcZFgHXczlO8K', NULL, 'NO', 'ACTIVE', '2020-09-08 21:33:43', '2020-09-08 21:55:28', 'MALE', '4fdd87a9680ad7c0d6b7de83d9e0523a', 'NO', 'ceedb47f96d916b2a5411fdd6c107629', 1, NULL, NULL, 'NO'),
(82, 'REGULAR', 'Olaitan', NULL, 'Adu', 'ayoakin17@gmail.com', 'YES', 'PAID', 82, '$2y$10$5Dvkcun06caFAm0skn.spuKtBopJmSG5JqsCBbEwt.Vby3YDagNvy', '08091598017', 'YES', 'ACTIVE', '2020-09-08 21:35:15', '2020-09-09 05:09:46', 'FEMALE', 'de32ca02b343695cbc600b2f1734e8b6', 'YES', '14e3ad8ee37444d694024f50125807cd', 20, '363972', NULL, 'NO'),
(83, 'REGULAR', 'Ezeani', NULL, 'Uzoma', 'uzomaezeanistella105@gmail.com', 'NO', 'PAID', 83, '$2y$10$2VWOG2fSzREEogETZBySMeebGvG9.sTewjokUJdt2nv1YKi26z6LG', NULL, 'NO', 'ACTIVE', '2020-09-08 21:56:11', '2020-09-08 22:59:32', 'MALE', '3c5166d90b9229b4a67bf65f3baf05fd', 'NO', '5405b122be17675207aca663366eae5e', 1, NULL, NULL, 'NO'),
(84, 'REGULAR', 'ogbu Oluchukwu', NULL, 'Jennifer', 'chatwitjen@yahoo.com', 'NO', 'PAID', 84, '$2y$10$oGpyQ8xx7xD7OED9pyQtGeBcwk.wKMuVI/0TYhUw4OSRZGlyyaV1e', NULL, 'NO', 'ACTIVE', '2020-09-08 22:07:06', '2020-09-08 22:59:44', 'MALE', '605b318242009339414fd4f9e098b6a8', 'NO', 'dd5288567679b2247d6225f57810e45e', 22, NULL, NULL, 'NO'),
(85, 'REGULAR', 'Efenarhua', NULL, 'Ese', 'efegift10@gmail.com', 'YES', 'PAID', 85, '$2y$10$aBOGnrRKkKqrIiCcRf9mNefVJ7SU0S/Rnwz20HQmDHndjC/gq06sy', '08170618486', 'YES', 'ACTIVE', '2020-09-08 22:58:19', '2020-09-09 00:13:25', 'FEMALE', '729a8114528e18b22490e74eaecde7ba', 'YES', '60d8a948181c4cc26b182e23af146e98', 63, '576310', NULL, 'NO'),
(86, 'REGULAR', 'Ujunwa', 'Edith', 'Obiako', 'ujunwaobiako@gmail.com', 'YES', 'PAID', 86, '$2y$10$d1v.QA.CENpiW8wzGLhoBOucwbckswjmw0.784mr9DqYY1nbzHS3S', '08068648292', 'YES', 'ACTIVE', '2020-09-08 23:02:15', '2020-09-08 23:39:09', 'FEMALE', '15a5b8887e4d6944336e1cf0df74c110', 'YES', '363d68fb45d121cfca9b5bf77f3617c4', 13, '133310', NULL, 'YES'),
(87, 'REGULAR', 'JANE', 'CHIEYENWA', 'AkALONU', 'janniforever432@gmail.com', 'YES', 'PAID', 87, '$2y$10$x30RFUJ5nAHQfA1jAB8Mx.Aqsxp1CaoxdVtdUSsGp/UO7BH1FF6D.', '08063020486', 'YES', 'ACTIVE', '2020-09-08 23:09:14', '2020-09-09 00:25:36', 'FEMALE', 'bfe05bf2c94b11e1ea5f3a21ffd38021', 'YES', '8568d17d7b1516895ea48a2656e6b160', 13, '944550', NULL, 'NO'),
(88, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'vaneloeke77@gmail.com', 'YES', 'PAID', 88, '$2y$10$CPGYRKTg6ZT7lcJWjTPu6uWxUfuG/pgvk3yCBNpLhJkwS.oElnaUq', '08184187588', 'YES', 'ACTIVE', '2020-09-08 23:53:00', '2020-09-09 00:13:44', 'MALE', '25268327862d3fd0d410d81785fc8446', 'YES', 'a5a5c93a208e76307c21ce4bf2f909bb', 38, '256499', NULL, 'YES'),
(89, 'REGULAR', 'Uju', NULL, 'Oby', 'ujunwa4christ@yahoo.com', 'YES', 'PAID', 89, '$2y$10$8qHbzSWsGTTn.rmtZfAmXei2AXh5vuJR3xLlLWfYukax6yyw65k6u', '08037575397', 'YES', 'ACTIVE', '2020-09-09 00:04:39', '2020-09-10 20:58:58', 'FEMALE', 'd09311615028b8d6508862a4a5c53172', 'YES', 'a4c8b95aef1da0958af2042963d6fe24', 13, '134818', NULL, 'NO'),
(90, 'REGULAR', 'Ebi', NULL, 'Sunday', 'kchappyboy55@gmail.com', 'YES', 'PAID', 90, '$2y$10$znK8Xfig6V3CiARXDmzWtOqzdIk6QJDxVQRfZgihXUpeZaQIN57P.', '08107445047', 'YES', 'ACTIVE', '2020-09-09 00:23:21', '2020-09-09 00:37:50', 'MALE', '92107e1e8425b772e4aa2c72f60decbb', 'YES', '40bc4fafb64547159d232f46bb5d27b4', 42, '155534', NULL, 'NO'),
(91, 'REGULAR', 'Ogochukwu', NULL, 'Precious', 'prettyokolie633@gmail.com', 'YES', 'PAID', 91, '$2y$10$Afu5pKnjtWUuwimbW6w7suH4afKKLcNU3DkyI9UJGIQ7Y.EQ1vYJe', '09025010507', 'YES', 'ACTIVE', '2020-09-09 00:29:44', '2020-09-09 02:11:25', 'FEMALE', '90dd9109ac50ff2141d42c89ef761039', 'YES', '048e3206df8671ee048bcf408184f62e', 40, '359784', NULL, 'NO'),
(92, 'REGULAR', 'Chukwudum', NULL, 'Nneka', 'supremacyneky@gmail.com', 'YES', 'PAID', 92, '$2y$10$6KJACifc0xZ3rIKDONhNFe8JZ/XGkV8Rrd56ENLyWTNwVfw96BJAm', '07030263446', 'NO', 'ACTIVE', '2020-09-09 00:41:07', '2020-09-09 00:59:50', 'MALE', '79b87d90a22227d5c8f7ed626d12194f', 'NO', '61770a32da211db5918504e989facc59', 40, NULL, NULL, 'NO'),
(93, 'REGULAR', 'Ezeani', NULL, 'Uzoma', 'uzeani3661@gmail.com', 'YES', 'PAID', 93, '$2y$10$/CzMSz19Jo7At7fuwRD46.b1vUD4SoO1BELSL5fIgN0fxpT0n6.96', '08036616105', 'YES', 'ACTIVE', '2020-09-09 01:29:58', '2020-09-09 03:28:15', 'FEMALE', 'c353e22b7acc6929f1e0e9cb2e0445d3', 'YES', '3498f3dfac5aea100a544f1b07375c12', 1, '156371', NULL, 'NO'),
(94, 'REGULAR', 'Nkechi', NULL, 'Pauline', 'nkechipauline11@gmail.com', 'YES', 'PAID', 94, '$2y$10$GEKu4QwSzccoQYAfPAcMVuv12rnwoRoIJPfrbMnAk7nWAeMXKkO02', '08034715716', 'YES', 'ACTIVE', '2020-09-09 01:37:37', '2020-09-09 02:06:30', 'FEMALE', '61f235343511e527d471faeada37f297', 'YES', '5df14166c0b5d2bfb42fb33e9601b0f9', 1, '814432', NULL, 'NO'),
(95, 'REGULAR', 'Ndatsu', NULL, 'Saifullahi', 'ndatsuchito@gmail.com', 'YES', 'PAID', 95, '$2y$10$JXmJhKIdE2FIGkVIRuJaIOdkygMifllHkcQgffvTHCQMWUK01oDHW', '08165498917', 'YES', 'ACTIVE', '2020-09-09 02:28:38', '2020-09-09 03:19:27', 'MALE', '68cd5466d312a0c22a0914c5eeee1bd4', 'YES', '4e182eb2cd6e455876d43593bc2ecbf2', 40, '136239', NULL, 'NO'),
(96, 'REGULAR', 'ogbu Oluchukwu', NULL, 'Jennifer', 'jenniferoluchi193@yahoo.com', 'NO', 'PAID', 96, '$2y$10$wE.oazZcJLq19jyaIeSzNefXDm.TJzpTeosYF.TVSKkizwwsF4eXq', NULL, 'NO', 'ACTIVE', '2020-09-09 02:58:44', '2020-09-09 03:19:38', 'MALE', 'a4b0aa944f90779e319f671d29222749', 'NO', 'b812b3553947f443798b132db770d69a', 22, NULL, NULL, 'NO'),
(97, 'REGULAR', 'Jude', NULL, 'Faith Chibuzo', 'Judefaithinlord@gmail.com', 'YES', 'PAID', 97, '$2y$10$Be35zMW3QDdiUI27j0IsbOy1s8abv4Z9688/Sz/qN50bl40xoip5.', NULL, 'NO', 'ACTIVE', '2020-09-09 03:25:08', '2020-09-09 15:06:56', 'MALE', 'd30f1416d902d968990bb8a3aefbeabc', 'NO', '7d0e7f0f20c286d3c70964c22cf24385', 75, NULL, NULL, 'NO'),
(98, 'REGULAR', 'ogbu', NULL, 'Oluchukwu Jennifer', 'babyolly523@gmai.com', 'YES', 'PAID', 98, '$2y$10$ALg9kbeydKbqcuwRJJMaA.l3IsCYZdWPV18c8eCIQJPct.QS5k66m', NULL, 'NO', 'ACTIVE', '2020-09-09 03:30:42', '2020-09-09 04:10:03', 'MALE', '4f173ff9ee325f0054efd08c38d349c0', 'NO', 'df0fdf0484da5382815834f16eb59492', 22, NULL, NULL, 'NO'),
(99, 'REGULAR', 'ogbu', NULL, 'Oluchukwu Jennifer', 'chikaodiri9@gmail.com', 'NO', 'PAID', 99, '$2y$10$K4.9bvKWU8TX5qH6iDbQ8.XY/ZxP8VVm4E4QSFzckXsVPq13R.ccq', NULL, 'NO', 'ACTIVE', '2020-09-09 03:38:48', '2020-09-09 04:09:50', 'MALE', '39a99057fce300825536d41cffe7eeba', 'NO', 'd51bcb8a1fb75ca23953ce9868d21a72', 22, NULL, NULL, 'NO'),
(100, 'REGULAR', 'ogbu Oluchukwu', NULL, 'jennifer', 'jenichinwe@gmail.com', 'YES', 'PAID', 100, '$2y$10$Jw8fxT3ejnHkuDD/hlCfYe8gM46jHpFYXFLXZNbI9e/oMP8/zP6Am', '08188665796', 'YES', 'DISPUTE', '2020-09-09 03:49:26', '2020-09-09 10:13:04', 'FEMALE', 'c33af3182a00982f89a88c510645b86d', 'YES', '39c66d70b80f1330f39cbdf650636921', 1, '658049', NULL, 'NO'),
(101, 'REGULAR', 'Isaac', NULL, 'ruby', 'isaacruby75@gmail.com', 'YES', 'PAID', 101, '$2y$10$J0uTUFSioilMSCrNO5ftG.h.2NhnXCM/zi7vk8c1n7TXWMVmueEz6', NULL, 'NO', 'ACTIVE', '2020-09-09 04:21:27', '2020-09-09 07:31:16', 'MALE', 'e88a07c262fc9fa339cc99f13b3cde40', 'NO', '87270cf31b025194d94e8679d3f89621', 87, NULL, NULL, 'NO'),
(102, 'REGULAR', 'Isaac', NULL, 'ruby', 'isaacruby7@gmail.com', 'NO', 'PAID', 102, '$2y$10$BMmr5zqiGPhF7R64I49e6.DByxFrutZPFDxIh780zZxoNwsY5huLi', NULL, 'NO', 'ACTIVE', '2020-09-09 04:24:34', '2020-09-09 05:07:23', 'MALE', '3793de7bd7b326fd1ddcc2bb5b13ec34', 'NO', '40a2c47cc17e5d56a11ae853b0af62e9', 1, NULL, NULL, 'NO'),
(103, 'REGULAR', 'Isaac', NULL, 'ruby', 'karalsaac35@gamil.com', 'NO', 'PAID', 103, '$2y$10$j4QI8yMjj.zfNO1oZ3As7.joA/dhPR6rJAMQoByM08xzuMrF9sYPq', NULL, 'NO', 'ACTIVE', '2020-09-09 04:39:59', '2020-09-09 05:07:05', 'MALE', 'ba21259ba2d2ce300961dd5c306bf0ee', 'NO', '51f891cf755cdceb3c95064036dbd3fe', 87, NULL, NULL, 'NO'),
(104, 'REGULAR', 'Akalonu', NULL, 'Kara', 'akalonukara35@gamil.com', 'NO', 'PAID', 104, '$2y$10$35PPmY4gS3r3Eckqrxd2xOeWGdp1A7g91S3HeeXtKLiBINgvDuaRC', NULL, 'NO', 'ACTIVE', '2020-09-09 04:53:36', '2020-09-09 05:06:57', 'MALE', '0989fb4fc814c59779784ccbf26b4666', 'NO', '41bff49e11488fb55abfbabe28458340', 87, NULL, NULL, 'NO'),
(105, 'REGULAR', 'Akalonu', NULL, 'Kara', 'akalonuugochi35@gamil.com', 'NO', 'PAID', 105, '$2y$10$Z.jZNKZcwcKYDSn45dj21eVuHouIn3F9hOpoXgrP5kY.jEldJXR4i', NULL, 'NO', 'ACTIVE', '2020-09-09 04:57:52', '2020-09-09 05:07:12', 'MALE', '6c6c1c23248221d22bc1716def885177', 'NO', '6a130056461c165b75f111fb4d7699da', 1, NULL, NULL, 'NO'),
(106, 'REGULAR', 'Mosunmola', NULL, 'Feyisola', 'iyakoseparo@gmail.com', 'YES', 'PAID', 106, '$2y$10$p/LZjKbFIkDkg1FmKJ3I1.b20pSjRper5pFE.O92mtQFlBRWDSKn6', '08052709577', 'YES', 'ACTIVE', '2020-09-09 05:12:58', '2020-09-09 13:16:34', 'FEMALE', '5a9c6a3e7acf0bd4d0c224c420a56559', 'YES', '9144b60059a98f7e77fe1c33aa0d1a2d', 1, '330772', NULL, 'NO'),
(107, 'REGULAR', 'Etumnu', NULL, 'Michael', 'michaelorji44@gmail.com', 'YES', 'PAID', 107, '$2y$10$bBMrUFq3/akohKWaXOWAs.9E9XITeUK2r6KhxKAic0n3/t12whfzG', NULL, 'NO', 'ACTIVE', '2020-09-09 12:37:02', '2020-09-09 13:16:42', 'MALE', 'aae7961d47b07183b11f45127f749bad', 'NO', '00bffe6e2a1a2f2e1a148b4e40704b69', 77, NULL, NULL, 'NO'),
(108, 'REGULAR', 'Etumnu', 'M', 'Orji', 'iwualakenneth70@gmail.com', 'YES', 'PAID', 108, '$2y$10$vED.fZX8cPjJ.NZ.Bs9hh.e04OAYuwGlMu8dckNYXPD0ppuKdaoLG', '08062273713', 'YES', 'ACTIVE', '2020-09-09 12:48:55', '2020-09-09 13:16:49', 'MALE', '5a735b74cd055b12d9cdf1c9b3e50c91', 'YES', '4e91d4e9b8b0433e98c24e96aca7e5be', 77, '658119', NULL, 'NO'),
(109, 'REGULAR', 'Ayomide', NULL, 'Oluyori', 'samuelvictor4ope@gmail.com', 'YES', 'PAID', 109, '$2y$10$TAJlgXTFw5CWAK9eqMt93uqIVxccWXbU2i/gCcXPwTuhrReuJm0RK', NULL, 'NO', 'ACTIVE', '2020-09-09 14:09:22', '2020-09-09 15:04:38', 'MALE', 'd25c0c366e9a645c951ba968352c174c', 'NO', 'b8a0038e76c090d83e6efb07b98ccf5e', 13, NULL, NULL, 'NO'),
(110, 'REGULAR', 'Jacinta', 'Chinenye', 'onyenwe', 'jessyangel4real@yahoo.com', 'YES', 'PAID', 110, '$2y$10$oBpe3PVRGB.DR5xKdW9AqugX5T1i3Ml9EYqG5fdiOzjIlb/EZTvpm', '08035195877', 'YES', 'ACTIVE', '2020-09-09 14:27:35', '2020-09-09 17:30:42', 'FEMALE', 'd413b8b1f5eb2a8dab5766a99d20108d', 'YES', '30aeb6c2c6b828307d4fe28d0575d61c', 41, '410283', NULL, 'NO'),
(111, 'REGULAR', 'Anyian', NULL, 'Onyinye', 'onyianyi016@gmail.com', 'YES', 'PAID', 111, '$2y$10$7K3.bZx0HcpOZ/dgzQBTyuQZha4Ym7BcLN/I.NYcnois2UZMeSPfu', '07037059113', 'YES', 'ACTIVE', '2020-09-09 14:28:17', '2020-09-09 15:04:47', 'FEMALE', '74297f29f28bca1d3bac0d91d2a03d8a', 'YES', 'f97dc57b0cfdc2f3fc7af1319e3e179d', 13, '846929', NULL, 'NO'),
(112, 'REGULAR', 'Lydia', NULL, 'Ojoko', 'lydiaojoko@yahoo.com', 'NO', 'PAID', 112, '$2y$10$RUX9p096u3/Z6QnRdAiUpOVXEebfWzkgHxjamyfJI4E4zzq0IMUem', NULL, 'NO', 'ACTIVE', '2020-09-09 14:28:36', '2020-09-09 15:04:59', 'MALE', '2847eb840aa3c00deab0d607b627753a', 'NO', '4355c91dab86d4701b1afeb93c4b5cdb', 1, NULL, NULL, 'NO'),
(113, 'REGULAR', 'StellaMaris', NULL, 'Ike', 'ikestellamaris@gmail.com', 'YES', 'PAID', 113, '$2y$10$gDC4DgQFFMbXxhCvBwK3BOX7VxDZowZRg01eSUytC3xeQTe7y11nO', '08069758486', 'YES', 'ACTIVE', '2020-09-09 17:33:26', '2020-09-09 19:07:16', 'FEMALE', '3fcc951375f6cbd687a39b0a1e90b115', 'YES', 'ca1f660c7e1edeb8c19ab974d8d15b83', 64, '375345', NULL, 'NO'),
(114, 'REGULAR', 'Isaac', NULL, 'ruby', 'lsaacruby75@gmail.com', 'NO', 'PAID', 114, '$2y$10$imcPGZS6VBK7jvuU1Btt7eeV8NrFmg5iUt4SNteNdfqPQWNdDPrmm', NULL, 'NO', 'ACTIVE', '2020-09-09 17:33:29', '2020-09-09 18:39:35', 'MALE', '996244b186ccbd3fad2adcaca232d330', 'NO', '884632ade0e94f06241efe46d034b6fe', 87, NULL, NULL, 'NO'),
(115, 'REGULAR', 'Ekom', NULL, 'Atutu', 'ekomatutu@gmail.com', 'YES', 'PAID', 115, '$2y$10$WBA4ma7Jl3ZViOwH4T59z.Hlf2rFomA3Up6QQbmqwIXM303UDo7FK', NULL, 'NO', 'ACTIVE', '2020-09-09 17:42:09', '2020-09-09 18:39:44', 'MALE', 'aa76c65f9bee3a7ea7ee6b7ea6424e68', 'NO', '00016e0532efad4dd88bb73739bf508a', 41, NULL, NULL, 'NO'),
(116, 'REGULAR', 'Favor 15', NULL, 'Gift', 'giftnwoke34@gmail.com', 'YES', 'PAID', 116, '$2y$10$BpXETJCsNP3M8t6CAWap5e4arooJNyW1qDIOkWIVooU5Vt..Vxzrq', '08061264633', 'YES', 'DISPUTE', '2020-09-09 17:45:49', '2020-09-09 19:01:47', 'FEMALE', '544887422895947f310021a924c28aec', 'YES', '4e6996b4e0078dff5d518a93f7ea3d83', 64, '574080', NULL, 'NO'),
(117, 'REGULAR', 'Okonkwo Esther', NULL, 'Chinelo', 'chineookonkwo992@gmail.com', 'NO', 'PAID', 117, '$2y$10$L3g8e1dE1RAvqk6ReY9gSeDPEaF2QGQqZD/3HECXKvNfLb26arLDa', NULL, 'NO', 'ACTIVE', '2020-09-09 17:46:54', '2020-09-09 19:35:25', 'MALE', 'f136de514929101afef359827aec5cd4', 'NO', '3ca36e6ab426e66af546107b6a5caeea', 38, NULL, NULL, 'NO'),
(118, 'REGULAR', 'Temitope', NULL, 'Teegold', 'temitopeteegold70@gmail.com', 'NO', 'PAID', 118, '$2y$10$TL6zSTUgzC8N3hNNsh20Ye1lUFN6a.k4vYc.uKySg1LCwaceMkr8i', NULL, 'NO', 'ACTIVE', '2020-09-09 18:06:23', '2020-09-09 19:35:56', 'MALE', '1a3ea5d62963d66b424adb421b99096c', 'NO', '595c44674d3e50632abf804845c3e861', 110, NULL, NULL, 'NO'),
(119, 'REGULAR', 'Deborah', NULL, 'Emezie', 'deboraholuchiobi@yahoo.com', 'YES', 'PAID', 119, '$2y$10$XuB6dQYTUth7hLcWjjyirOdX9EyWhbQXrZL5uXDrRFQYGTTXVsIKK', NULL, 'NO', 'ACTIVE', '2020-09-09 18:08:58', '2020-09-09 21:41:40', 'MALE', '6b06deaf5203d5e95f0297d07c95eee0', 'NO', 'c94dc9fdcc26b395954e31d8db364009', 110, NULL, NULL, 'NO'),
(120, 'REGULAR', 'Chibunna', NULL, 'Nwankwo', 'nwankwochibunna2017@gmail.com', 'NO', 'PAID', 120, '$2y$10$tMhpS71L9K.7JkSt41dy/u3XKw5ixh.ZH7FnwInKhY02lbZJnSZA6', NULL, 'NO', 'ACTIVE', '2020-09-09 18:10:07', '2020-09-09 19:36:16', 'MALE', '46b7388a956801a70d961b71bd8464f0', 'NO', '5ca320a19f060806d29b8a46cb1abfce', 13, NULL, NULL, 'NO'),
(121, 'REGULAR', 'Ann', NULL, 'Mark', 'annmark259@gmail.com', 'NO', 'PAID', 121, '$2y$10$5q/dpt.3v8PjzFfDFYWKX.VcnYXI2SAVzW4eWRYfaFNRX03Q.uj3W', NULL, 'NO', 'ACTIVE', '2020-09-09 18:23:26', '2020-09-09 19:36:26', 'MALE', '85929ba59fbab13355eab1b31b03effb', 'NO', '3524bb9094805a87f8e83806400f1f9d', 64, NULL, NULL, 'NO'),
(122, 'REGULAR', 'Deborah', NULL, 'Gbadegesin', 'dehbeeghel@gmail.com', 'YES', 'PAID', 122, '$2y$10$/A6cbcuUZ111rfEq.sz5ru0UF3AmrkNvtA5fU755l414yN5vFx7XK', NULL, 'NO', 'ACTIVE', '2020-09-09 19:04:10', '2020-09-09 19:36:34', 'MALE', 'e7a33770da668994dc35e46184a2bb95', 'NO', 'ae63c8e035ed2999e5f0ef4ad7531488', 40, NULL, NULL, 'NO'),
(123, 'REGULAR', 'Okonkwo Esther', NULL, 'Okonkwo', 'chiomavivian613@gmail.co', 'NO', 'PAID', 123, '$2y$10$COQC.xAfWV9e5lOB.g/.COEBRkb2Ife6/o/SXwbBNPDanqQGHb2w2', NULL, 'NO', 'ACTIVE', '2020-09-09 19:06:06', '2020-09-09 19:35:35', 'MALE', 'f0ddf52fe59412bb21f6690260a44b54', 'NO', 'b4ca955ccb6343b51778745945697b5d', 38, NULL, NULL, 'NO'),
(124, 'REGULAR', 'Sunday', 'Arong', 'Ekpe', 'sunnypa88@gmail.com', 'YES', 'PAID', 124, '$2y$10$ggjPpRq5rp2ZE8XRO5ZHPeLfrq/PNvw57f58EHOcPmA8Ab2eoTnle', '07061377737', 'YES', 'ACTIVE', '2020-09-09 19:16:24', '2020-09-09 19:36:43', 'MALE', '63868589a689ce681dddafc410543225', 'YES', '7b4195ac495005124d794888f23d877b', 64, '548384', NULL, 'NO'),
(125, 'REGULAR', 'Emmanuel', NULL, 'Onwuzuruike', 'emmalistic4life@yahoo.com', 'YES', 'PAID', 125, '$2y$10$CtXhGb.zOeiKFf1kVPI/eO4aHpp..CwhY2DBWot7icAwtToqre4ua', '08069800576', 'YES', 'ACTIVE', '2020-09-09 19:28:40', '2020-09-09 19:36:01', 'MALE', '94304fa8e52e868a64d37ac3428be7ff', 'YES', '0a023ecda241fba7fba8549aed2a041d', 16, '726411', NULL, 'NO'),
(126, 'REGULAR', 'Sandra', 'Ugonwa', 'Okafor', 'sanstephinterior@gmail.com', 'YES', 'PAID', 126, '$2y$10$q37bNfAPUgA10T4D4DcDau8g2Cpug3xXoZtHcHjTV26PVBpSpfrbe', '07086229486', 'YES', 'ACTIVE', '2020-09-09 20:17:17', '2020-09-10 02:08:23', 'FEMALE', '86db6929831e9167090244ab1a93c8ee', 'YES', 'c9774afcea06465782ddef9505eb3e50', 13, '210687', NULL, 'NO'),
(127, 'REGULAR', 'Kloss', NULL, 'Adele', 'klossadela@gmail.com', 'YES', 'PAID', 127, '$2y$10$PDlvzzDYCF0.tkKLPUUiyuYKHiCI2Tq4t1wZQ1Fd7tzZPBMzsvtey', '07064001933', 'YES', 'ACTIVE', '2020-09-09 20:17:40', '2020-09-09 20:53:31', 'MALE', 'c3ee863bd8174fb098c18d19f70360dc', 'YES', '740055a9f98151f715a8116c36af1e2f', 46, '548637', NULL, 'NO'),
(128, 'REGULAR', 'Esther', NULL, 'Chinelo', 'chinelookonkwo992@gmail.com', 'YES', 'PAID', 128, '$2y$10$fOOZKn9f/TCRg2uc0Bx/.evz73Bk7Z.cNjXwSgLtPl.1vKUl8X4bq', NULL, 'NO', 'ACTIVE', '2020-09-09 21:24:10', '2020-09-09 23:08:54', 'MALE', '8f33985a003f724aaa16be888d4497e9', 'NO', '7962f5fdfe824b5cf121cbdcd698e8b7', 38, NULL, NULL, 'NO'),
(129, 'REGULAR', 'Amaka', 'Stephanie', 'Otubelu', 'amakaotums@gmail.com', 'YES', 'PAID', 129, '$2y$10$0jNnn1qMQkVGx.tyEWwAvevQSTQA5YYH4WMdsS0vxAwvVsmaPVlWC', '09079502196', 'YES', 'ACTIVE', '2020-09-09 21:48:02', '2020-09-09 23:09:02', 'FEMALE', '6f306015f3377bea55611d18bee045a9', 'YES', 'd9c7336e99b8f074ad75ad5ab7d13369', 40, '762103', NULL, 'NO'),
(130, 'REGULAR', 'Martina g', NULL, 'Eze Ogochukwu', 'martinogochukwuez@gmail.com', 'NO', 'PAID', 130, '$2y$10$uiIl8Zj1CzWjxUIEQbudqOdIAoHjli0LvU2eQK/xIHOZn5PdZgjCC', NULL, 'NO', 'ACTIVE', '2020-09-09 22:11:02', '2020-09-09 23:09:13', 'MALE', '163cfffc389632e403ab450185c09e73', 'NO', '70a049e8a1c946d6c64460eb3176577f', 1, NULL, NULL, 'NO'),
(131, 'REGULAR', 'Ndichie', NULL, 'Adaobi', 'adaobindichie2018@gmail.com', 'YES', 'PAID', 131, '$2y$10$EWMj26Ckw9lAnYKA8rEoseIfaIEKQHs0yjh/ibU5q2VAGkYy.LeTu', '08162766763', 'YES', 'ACTIVE', '2020-09-09 22:15:17', '2020-09-09 23:09:23', 'FEMALE', 'ebe7b9079932d123c5d5bc23847d9b5b', 'YES', 'f6408c8363676d6375cf0c09ec20e27f', 1, '713502', NULL, 'NO'),
(132, 'REGULAR', 'Chinwe', 'Faith', 'Otubelu', 'ChinweOtubelu@yahoo.com', 'YES', 'PAID', 132, '$2y$10$KyWIUE4yNf5QGi37IAFNAe7wXfQxDzjzEb32wYx5jolHhJRQDCadG', '08034544296', 'YES', 'ACTIVE', '2020-09-09 22:27:03', '2020-09-09 23:39:25', 'FEMALE', '1bcfa26166ec17093015505a77fb3093', 'YES', '6170a8403476d903c5720639c34c5308', 40, '253885', NULL, 'NO'),
(133, 'REGULAR', 'Nkemjika', NULL, 'Adaego', 'adaegolight@gmail.com', 'YES', 'PAID', 133, '$2y$10$42Hf1OGOl9ZOszw0D7AC2eJ6CKjZG6llcFceaTPma8qBTnNJxUFLq', '08138937971', 'YES', 'ACTIVE', '2020-09-09 22:38:46', '2020-09-10 05:43:29', 'FEMALE', '934102ba0ec947c90c2a7309f4bfd817', 'YES', '15d908fd8a4bd29f957240cfebf2d8b9', 13, '793318', NULL, 'NO'),
(134, 'REGULAR', 'Ogechi', 'Peace', 'Victor', 'ogepeace2019@gmail.com', 'YES', 'PAID', 134, '$2y$10$38WPRzUM8hlV9zIOuH7MzexF.frdNYY8q5bnKOHyYCbzijIyHL6Wa', '08060669621', 'YES', 'DISPUTE', '2020-09-09 22:42:43', '2020-09-09 23:09:45', 'FEMALE', 'f0066e284847b0600cb2cb15dde9c439', 'YES', 'c91c496537dadc90a743ea52c03d21e2', 13, '463100', NULL, 'NO'),
(135, 'REGULAR', 'Nneka', NULL, 'Ezenwamma', 'nnekanneka031@gmail.com', 'NO', 'PAID', 135, '$2y$10$kmwulXcjIJbxbd9C3R/Xhu/cu7t/y.N/R7h4r6Tw7m3wXlTFCH4ju', NULL, 'NO', 'ACTIVE', '2020-09-09 23:11:07', '2020-09-09 23:43:55', 'MALE', '68060a63880b6cd42276b081194f24bb', 'NO', '94d4368e547731e03268ac34018995ba', 38, NULL, NULL, 'NO'),
(136, 'REGULAR', 'Ugonna', 'Queen', 'Osi', 'chinenyenwaosi@yahoo.com', 'YES', 'PAID', 136, '$2y$10$ceFcyKeMF6N53Dr3wdujuOQNcwsxzPou.R4HgFgMSu9/GkCxRXNeu', '08097407219', 'YES', 'ACTIVE', '2020-09-09 23:20:45', '2020-09-12 12:43:23', 'FEMALE', 'e30495895188bc1be57557b157658e20', 'YES', 'fb5f7d685f56a5752249ec22f522bdd4', 52, '707450', NULL, 'NO'),
(137, 'REGULAR', 'Gloria C', NULL, 'Moses', 'mosesprincess11@gmail.com', 'YES', 'PAID', 137, '$2y$10$UYdXFHbmtrNxOGtv22c0auwlwoIc0zqdvpHN0kaQ1Y/tu0Sg3xebm', '08033706565', 'YES', 'ACTIVE', '2020-09-09 23:29:42', '2020-09-09 23:44:14', 'FEMALE', 'ba7f39d74a52e4c732f715753fa05b55', 'YES', 'e4afa78fbc009d804e940061a2e04c89', 131, '284101', NULL, 'NO'),
(138, 'REGULAR', 'Oluchi', NULL, 'Egwuekwe', 'oluchi_ann1@yahoo.com', 'YES', 'PAID', 138, '$2y$10$D.q5aYMl/.0JS0o6qs3m6exQ0J8eHQF1ehvs4PWJRX0IwQ3bMBVEK', '07063041195', 'YES', 'ACTIVE', '2020-09-09 23:47:38', '2020-09-10 00:16:12', 'FEMALE', '5e8b4185863f822c813cf45f94a6dfaa', 'YES', 'adca351ab3bf4b672a948efcfa2f7ee4', 131, '301402', NULL, 'NO'),
(139, 'REGULAR', 'Chinelo Esther', NULL, 'Okonkwo', 'febube959@gmail.com', 'YES', 'PAID', 139, '$2y$10$BlhtJFGrwHP9KYEMuJ2bvu5p35s8CISEhBkKG9RhBLng6tEmg.Rq6', '08062929143', 'YES', 'ACTIVE', '2020-09-09 23:51:26', '2020-09-10 00:16:21', 'FEMALE', '78a7c427cfcf26184d709d0d8ee2cd30', 'YES', '59ec75b23c896929e38ecdc76d153862', 38, '911459', NULL, 'NO'),
(140, 'REGULAR', 'Ezelibe', NULL, 'Donald', 'ezelibechidera@gmail.com', 'YES', 'PAID', 140, '$2y$10$M6YyiiggkAHh1xLgBr0iuOBziBnNPNGZiLQqXEQTG5dcQQmEFLXDC', NULL, 'NO', 'ACTIVE', '2020-09-10 00:45:43', '2020-09-13 10:58:18', 'MALE', '320dabda3929fd681cf099596dd9cba2', 'NO', 'd00f547cb640a2edb903a5623dd8da64', 16, NULL, NULL, 'NO'),
(141, 'REGULAR', 'Ogbu', NULL, 'Joy', 'JoyofGod5252@gmail.com', 'YES', 'PAID', 141, '$2y$10$rF3rUfVAKW1uXh5XIYqafuS0E9CqGtD/MG9Wwn5SviiLLTW/pLCdm', '08149337195', 'YES', 'ACTIVE', '2020-09-10 01:54:21', '2020-09-10 02:49:47', 'FEMALE', '7d70244c780af215d6a447a7b97d7ef1', 'YES', '9052db1d14c52ce803feefa3bf6226bb', 1, '761082', NULL, 'NO'),
(142, 'REGULAR', 'Collins', NULL, 'Emegbue', 'collinsemegbue@gmail.com', 'NO', 'PAID', 142, '$2y$10$tqyJDjV/sa2oM.V8I1AoF.CZz5gQyTk/nzwQFSOEL7vu26PlpsKPm', NULL, 'NO', 'ACTIVE', '2020-09-10 02:47:19', '2020-09-10 02:50:18', 'MALE', '18946177600253e6376eb13a50ab8d99', 'NO', 'b528c662fb9bc6abf024d5e86c79ff99', 1, NULL, NULL, 'NO'),
(143, 'REGULAR', 'Joseph', NULL, 'Nwankwo', 'nwankwo.joseph58@gmail.com', 'YES', 'PAID', 143, '$2y$10$9x2NzHOFV.OBY1iUqsm7MOfnS.NglGwkdhbHvVSD67E58s0F8cmK6', '08060816610', 'YES', 'ACTIVE', '2020-09-10 03:05:08', '2020-09-10 04:42:37', 'MALE', '6bf3f15d844817de2209eb2f04fc7148', 'YES', '13ec21fb14680fc12991e593ef3370e2', 134, '450835', NULL, 'NO'),
(144, 'REGULAR', 'Nkiruka', 'Nkiruka', 'Obiduba', 'obidubankiru@gmail.coml', 'YES', 'PAID', 144, '$2y$10$S1R.HAJg6xm1LR/tFEPSEuYzYUIct0arAQZ1bt.YP/tkjGXSr07uC', '08033206970', 'NO', 'ACTIVE', '2020-09-10 04:25:53', '2020-09-10 23:14:14', 'FEMALE', '95ea4d7342d33a21e87906c0abbdcff4', 'NO', '6c754059bea40480c85e942dab88b68e', 38, '276684', NULL, 'NO'),
(145, 'REGULAR', 'Nwanneka', NULL, 'Onuigbo', 'nnekaonuigbo@gmail.com', 'YES', 'PAID', 145, '$2y$10$uS2T/bhMTN390hnfpE24kOSmvZKZj7zA3zFgCQV1xTc2ItldsDRDO', '08035405352', 'YES', 'ACTIVE', '2020-09-10 04:28:56', '2020-09-12 22:34:06', 'FEMALE', 'dd5f54b006e0803e23002786971352ba', 'YES', '58e730266cc0b11721c6ca7908662c62', 1, '225461', NULL, 'NO'),
(146, 'REGULAR', 'Chinwe', 'Lucia', 'Mbah', 'Chimamandamunachimso@gmail.com', 'YES', 'PAID', 146, '$2y$10$JY3Yjq0hYu3163BT/2AGJu9uPx/y.XLW.imtFhHtXryAQcnbqK.ZC', '07011015009', 'YES', 'ACTIVE', '2020-09-10 12:31:39', '2020-09-10 13:20:58', 'FEMALE', 'f32209ee4d78ea5e1e97482945fdd748', 'YES', '2d2ea62bb945067ee3b5c5a042cfb604', 40, '273908', NULL, 'NO');
INSERT INTO `users` (`id`, `account_type`, `first_name`, `middle_name`, `last_name`, `email`, `confirmed_email`, `registration_fee`, `confirmed_by`, `password`, `mobile`, `confirm_mobile`, `status`, `created_at`, `updated_at`, `sex`, `email_confirmation_key`, `agreed_to_terms`, `user_ref`, `referrer`, `mobile_verification_code`, `profile_picture`, `send_missed_merged_sms`) VALUES
(147, 'REGULAR', 'Flawless', NULL, 'Lady', 'flawzy2019@yahoo.com', 'YES', 'PAID', 147, '$2y$10$7bvJKVMgCd3i3G3CPcJV4.GOEeaON6ex8UPPivwimY4436T6iEnZu', '08163721746', 'YES', 'ACTIVE', '2020-09-10 12:56:23', '2020-09-10 18:38:14', 'MALE', 'd36e45e6c50a34e7f0c5921abec50f57', 'YES', '87ca449b247d94472ccd3b435a6b4fc8', 40, '705108', NULL, 'NO'),
(148, 'REGULAR', 'Adebayo', NULL, 'Elizabeth', 'adebayoadejoke05@gmail.com', 'YES', 'PAID', 148, '$2y$10$.QG9ikYsiR6SqLKv5AM7fuwSCP/qlp8GVwkOIwjwnT/LJy8OuM0Pi', NULL, 'NO', 'ACTIVE', '2020-09-10 13:21:02', '2020-09-10 18:29:54', 'MALE', 'aa7774254c6001034d0f93441a3b5758', 'NO', 'd6225a7880352abd92bd7b07960a84df', 1, NULL, NULL, 'NO'),
(149, 'REGULAR', 'Chukwudi', NULL, 'Nnaemeka', 'elvisnnaemekachukwudi@gmail.com', 'YES', 'PAID', 149, '$2y$10$cf706bW3.9RLlKpW1tz/LuotbcDFg/Ux7s7wXFI5C3NLwiTNUKpLe', NULL, 'NO', 'ACTIVE', '2020-09-10 13:22:16', '2020-09-10 18:30:04', 'MALE', '80fae55c9d02bcd033447db4f08310dd', 'NO', 'f5c54c7d33e68068eb812b3c0b5c5b55', 1, NULL, NULL, 'NO'),
(150, 'REGULAR', 'Eunice', NULL, 'Patrick', 'eunicepatrick726@gmail.com', 'YES', 'PAID', 150, '$2y$10$OzYjrcIsc9Mb2dbOY1TMuOQ51sgXvOOnnb5pY.zJ10v56V10WVohy', NULL, 'NO', 'ACTIVE', '2020-09-10 14:06:31', '2020-09-10 18:30:16', 'MALE', '13ee0e668b7ee8944440a3999bf0e12e', 'NO', 'd31052a219abfa89b3e08eea13c0a50f', 1, NULL, NULL, 'NO'),
(151, 'REGULAR', 'Blessing', NULL, 'Ezeh', 'chinasablessing10@gmail.com', 'YES', 'PAID', 151, '$2y$10$BNK6Sriv/3Jhzhn7Olzj7OPtmT85sEcjLPHDvGKPTHf.crRF5sj8i', NULL, 'NO', 'ACTIVE', '2020-09-10 17:57:15', '2020-09-10 18:30:26', 'MALE', '82e118dd74e27275500a425c6ec10d36', 'NO', 'a7d1f388e51e712395a7e733a0c3afa0', 21, NULL, NULL, 'NO'),
(152, 'REGULAR', 'Amir', NULL, 'Kuhlman', 'neaz_lawyer@yahoo.com', 'YES', 'PAID', 152, '$2y$10$5db0q.pQzRw6ujZV5HP1bOzNYkNALxDh1Zpo8G2KFAEHb4QTPx8DS', NULL, 'NO', 'ACTIVE', '2020-09-10 19:53:55', '2020-09-10 19:56:35', 'MALE', '23caf4e6be9001b82eb2acc01f2723b2', 'NO', '57e4c93de55b710ee0e007f0c0530ca1', 1, NULL, NULL, 'NO'),
(153, 'REGULAR', 'Stella', 'Ada', 'Amajuoyi', 'osiraphael101@gmail.com', 'YES', 'PAID', 153, '$2y$10$dTbLdtM4BuV00PgP3GhRIek9WBl/sMJ48NBrYM7Kgaub0JDE.A7t.', '08039301696', 'YES', 'ACTIVE', '2020-09-10 20:22:23', '2020-09-11 13:40:01', 'FEMALE', 'f89112c6fd3c12c934f0a75a8c09d080', 'YES', '52d82ae113d72560292ed6336743b5a9', 52, '622527', NULL, 'NO'),
(154, 'REGULAR', 'Olisaekee Joy', 'Joy', 'Ifeoma', 'chinonsofrancis756@gmail.com', 'YES', 'PAID', 154, '$2y$10$L4zwFaBXOv.jTT4wTlvkheIxYPGZt2xO7KrdjBTfPsSnqmg8foCei', '07030097807', 'YES', 'ACTIVE', '2020-09-10 20:55:48', '2020-09-10 21:19:24', 'FEMALE', '008dd255dd0ef26128cdbedb591987da', 'YES', '380384fee8e097f42eb4b9318db86aa8', 139, '468155', NULL, 'NO'),
(155, 'REGULAR', 'Martin', 'Friday', 'Simon', 'raahwilly@gmail.com', 'YES', 'PAID', 155, '$2y$10$TfzELdzcJVtcm3zk7yEOnubHgt1CB/e2DTEZv8AE43VIPLuyNX9Zi', '08034670412', 'YES', 'ACTIVE', '2020-09-10 22:02:42', '2020-09-11 16:44:02', 'MALE', '7286776324f7a5c0e6054e0d10b071a8', 'YES', '48a86009edfc4dac0ef10f9afaa2ce87', 40, '142475', NULL, 'NO'),
(156, 'REGULAR', 'Chinyere', 'Clay', 'Mike', 'cmike8767@gmail.com', 'YES', 'PAID', 156, '$2y$10$e4casC22OKEGI/eKJiirQ.AFW5Ui6B2P7o5iK7uZH9UzWwmgKbAWu', '08166080768', 'YES', 'ACTIVE', '2020-09-10 22:31:37', '2020-09-11 18:04:16', 'FEMALE', '718c241a1de1ab0d988f9a85cd210df2', 'YES', '534fb4ee0947099ea5030a8afbb9df09', 1, '442180', NULL, 'NO'),
(157, 'REGULAR', 'Ezenwamma', NULL, 'Nneka', 'olisaekeifeoma@gmail.com', 'YES', 'PAID', 157, '$2y$10$sKZ2tPfn1hDxZmLxGFjZ6eSJ0ik2fNYHN8WhEa/EskZJVD3FawyXK', '07060847720', 'YES', 'ACTIVE', '2020-09-10 22:34:31', '2020-09-10 23:22:59', 'FEMALE', '7d61707cba7fb7350786ad24bc303a19', 'YES', '3fa2d5b1eae0764e6ac4774b54c7edf2', 1, '904589', NULL, 'YES'),
(158, 'REGULAR', 'Achazie', NULL, 'Chidinma', 'peaceachazie3@gmail.com', 'YES', 'PAID', 158, '$2y$10$PuRKBZcDAeygfYYBoXHvyeDI8jhyIUyYq2r98w4O5HksPMPE1qr1u', '09052502512', 'YES', 'ACTIVE', '2020-09-10 22:48:46', '2020-09-11 21:15:59', 'FEMALE', 'f59ded6c4d28d01d7abb1871fc7a7eb5', 'YES', '030f42e7c9426a3f40158a9700a0ab55', 1, '939997', NULL, 'NO'),
(159, 'REGULAR', 'ANUSIOBI', NULL, 'CHiNYERE', 'chinyereanusiobi3@gmail.com', 'YES', 'PAID', 159, '$2y$10$1.wp7FYc/NmltLHetmr57.AVDEbUiIVHIpBjJjkDcaF2EXwo4Q3pG', '08030526880', 'YES', 'ACTIVE', '2020-09-10 23:39:11', '2020-09-11 01:54:00', 'FEMALE', 'aa6e42af637cf5d128dc1842e629fea8', 'YES', '4b87e8fe4261ed2772335c6715b8d38a', 1, '238263', NULL, 'NO'),
(160, 'REGULAR', 'Chibunna', NULL, 'Nwankwo', 'chibunnanwankwo5@gmail.com', 'YES', 'PAID', 160, '$2y$10$TeCDghXXt0uGib0k/hvSJe1j1M8.Y5x34K2sFIdCv8.sgHWGwAwrC', '09021140842', 'YES', 'ACTIVE', '2020-09-11 01:30:02', '2020-09-11 21:10:11', 'MALE', '9e9de589433220b23e11a6a668825df8', 'YES', 'a08efcfcf675880d355019cb3a04c9b7', 37, '365303', NULL, 'NO'),
(161, 'ADMIN', 'Nkemjika', NULL, 'Ukamaka Joy', 'ihpyolisa@gmail.com', 'YES', 'PAID', 161, '$2y$10$/FaNfIJ5Hu4zAc/JKWjhl.zsbBM0sTmO5U2.thZmmtmeuYQdOs0e6', '09093726744', 'YES', 'ACTIVE', '2020-09-11 03:17:45', '2020-09-11 03:27:04', 'FEMALE', 'e8f2b050d53a0f71afc04fbbe9a0ad6e', 'YES', '3294d2e6cd695716848d1aedb7b0c17e', 38, '813075', NULL, 'NO'),
(162, 'REGULAR', 'Iloh', NULL, 'Amaka', 'amakababy373@gmail.com', 'YES', 'PAID', 162, '$2y$10$QntwZxQePc1UlWmAgFEYwuiyUAMBE9ewteWTBGdhnbbTB0awqnkXG', NULL, 'NO', 'ACTIVE', '2020-09-11 03:55:12', '2020-09-11 12:55:00', 'MALE', 'b79a7fa7138fd0bf09062169d962b6dc', 'NO', '19cab3fe41f323ec4191f8dc68e8dbbe', 138, NULL, NULL, 'NO'),
(163, 'REGULAR', 'Ruby  Kara', NULL, 'Akalonu', 'ugokararuby@gmail.com', 'YES', 'PAID', 163, '$2y$10$48eV1E6lr8bUrk.qpW3FTOXNGmoLGqQ7OrUJhGsul/DMHfmIRFDK2', '09034556695', 'NO', 'ACTIVE', '2020-09-11 04:54:46', '2020-09-12 04:33:01', 'MALE', '542d536e8eb623cdb79f43b33bf6f1be', 'NO', 'e7b41c9d05b9e58f3bc1b9a5b8ff83a8', 87, '783342', NULL, 'YES'),
(164, 'REGULAR', 'Thompson', NULL, 'Enuh', 'ezienuh@gmail.com', 'YES', 'PAID', 164, '$2y$10$FIlZLxwpNpbI5VS8OIe3Z.KzxhIomo9rhv2LdP0KJBD9ccYrqLne.', NULL, 'NO', 'ACTIVE', '2020-09-11 06:06:38', '2020-09-11 12:54:43', 'MALE', '25341df1d4dad66bf0428eef97ad6943', 'NO', '9df0f51304f089beffd67e1883bc75d5', 157, NULL, NULL, 'NO'),
(165, 'REGULAR', 'Amarachi', NULL, 'Okeke', 'okekeamara17@gmail.com', 'YES', 'PAID', 165, '$2y$10$yuh1P1eEttOZOjJ1wrgREeNqbF6QE6hCFqF9Hg5ohILJT9EnqSkvO', NULL, 'NO', 'ACTIVE', '2020-09-11 11:54:33', '2020-09-11 12:54:35', 'MALE', 'ce812a5cb886a11a9ed7b7ef44d6783d', 'NO', '143e852d0b46d26574f74b39ffebbbfc', 1, NULL, NULL, 'NO'),
(166, 'REGULAR', 'Gabriel', 'Adaobi', 'Josephine', 'gabrieljosephine82@yahoo.com', 'YES', 'PAID', 166, '$2y$10$BmeFHu8rAM7lmBaNXY8uaeqjPalSRQlTO5/9JuwOpn9KdNl0e6vza', '08130211759', 'YES', 'ACTIVE', '2020-09-11 16:57:45', '2020-09-11 18:14:06', 'FEMALE', 'f0d844bc283a50fc861c5a3f956b93ca', 'YES', '6401a8bb81ff1657d75122f90539aa34', 16, '659467', NULL, 'NO'),
(167, 'REGULAR', 'Uju', NULL, 'Oby', 'ujunwa1968@gmail.com', 'YES', 'PAID', 167, '$2y$10$dRwOMQjBLXhnQQ9h7MQVTuK20G6j.0rUG5n1fQ2TsH2ACLqE8hf4S', '08037575397', 'YES', 'ACTIVE', '2020-09-11 18:59:52', '2020-09-12 03:15:02', 'FEMALE', '25a4565a657a2d1d6bab5dc19fdbe9b5', 'YES', 'aa36dc086a631adfa3a405b141d7e3cb', 13, '894854', NULL, 'NO'),
(168, 'REGULAR', 'Princess', NULL, 'Ann', 'ggreenworldresources@yahoo.com', 'YES', 'PAID', 168, '$2y$10$EnMHmNfD/vKFUXYcmPUJOun44WvZgKR8zPMqk9F6AVackCgvtOSVm', '08091019953', 'YES', 'ACTIVE', '2020-09-11 20:48:18', '2020-09-12 00:24:17', 'MALE', 'f386f095b07889d94881e262e34b07ea', 'YES', '595c9903bf7dffe63bd39a5f2ea43a37', 1, '107639', NULL, 'YES'),
(169, 'REGULAR', 'Gloria', 'Glori', 'Udojike', 'gloriaoge65@gmail.com', 'YES', 'PAID', 169, '$2y$10$tee3plEFzqC9M841TJWhI.UxcLE6GFGJpovbewzClNNmAU.6tBdnq', '08034000816', 'YES', 'ACTIVE', '2020-09-11 21:15:14', '2020-09-11 21:28:52', 'FEMALE', 'e7ddcb9b19a2c5d1fef33baba23c52f6', 'YES', '25e9d504b7f5c0902011e23440e696d8', 38, '284252', NULL, 'NO'),
(170, 'REGULAR', 'Olaide', NULL, 'Joy', 'omolarah70@gmail.com', 'YES', 'PAID', 170, '$2y$10$0TpSxxoQdHcuDz7mz.JK2uAPMrSECjGJ/OBxnNFmhW411QcQmLTKe', '07080055768', 'YES', 'ACTIVE', '2020-09-11 21:28:45', '2020-09-11 22:17:02', 'FEMALE', 'e3d1678c4baf8db0b654ee373d005d86', 'YES', '8cb54a35d463967fe77d4fd834ab69de', 63, '238322', NULL, 'YES'),
(171, 'REGULAR', 'Ifesinachi', 'Theresa', 'Chukwueloka', 'ifesi2020@yahoo.com', 'YES', 'PAID', 171, '$2y$10$WmMbBVpWrcZdvo0SgltQK.g5MdN6LmVEz8/v.xgrhkdegiw7huy9i', '08080458706', 'YES', 'ACTIVE', '2020-09-11 22:01:52', '2020-09-13 05:54:24', 'FEMALE', 'b3bcb7b5ccb145621278db72a50376e6', 'YES', '08ac247ae2fdc4193a3fea12f24ee71d', 21, '676657', NULL, 'NO'),
(172, 'REGULAR', 'Rosalee', NULL, 'Hammes', '15125684548@mms.cricketwireless.net', 'YES', 'PAID', 172, '$2y$10$Nh1SVfCIoBJOj9Rs2EgD2ucZUn9fx9u.tHkIF83pNc.sFhx3vXPaa', NULL, 'NO', 'ACTIVE', '2020-09-11 22:16:40', '2020-09-13 05:55:45', 'MALE', 'c5ef7cd4879c2edaaaa56acffdafd320', 'NO', '7aa20cc82f60b418ab1cdebd3ec33b82', 1, NULL, NULL, 'NO'),
(173, 'REGULAR', 'Justin', NULL, 'Chinedu', 'tonyjusty2@gmail.com', 'YES', 'PAID', 173, '$2y$10$7FCINwdGpCkaBQhM6DelB.RrG0wPJzVcKCJ2SGOAfC5hIslpjVU.S', '2348030979622', 'NO', 'ACTIVE', '2020-09-11 22:23:34', '2020-09-13 05:55:36', 'MALE', '236dbe1d3b1d850a00bc138b717660db', 'NO', '87e489d2962625e37ba6a25065846391', 158, '923504', NULL, 'NO'),
(174, 'REGULAR', 'Uzor', NULL, 'Bridget', 'okpochetachi7@gmail.com', 'YES', 'PAID', 174, '$2y$10$6B27zY1DiXw1OLNIHyHXaebXIALe6rMLjGTJ/jf.uP2jaN01vX8VO', '09093726744', 'YES', 'ACTIVE', '2020-09-11 22:29:32', '2020-09-11 22:43:38', 'FEMALE', '6e90208f46e1d88c73efa44d32ca29f5', 'YES', '290b5db0d790b704f403f5938231b321', 14, '805234', NULL, 'YES'),
(175, 'REGULAR', 'Joseph', NULL, 'Unazi', 'unazijoseph@gmail.com', 'YES', 'PAID', 175, '$2y$10$bDahjka5f9zBjDfmi1zHieNZ4jCJSS9bJ8hJvEZ6/a/AgWmXruQj.', '08072745041', 'YES', 'ACTIVE', '2020-09-11 23:40:02', '2020-09-13 05:55:28', 'MALE', 'f2f711773edb51f08b34161722bfb88b', 'YES', '391a1fae48deae793822ee37351f7006', 158, '888166', NULL, 'NO'),
(176, 'REGULAR', 'Usman', NULL, 'Nurudeen', 'nurudeenusman95@gmail.com', 'YES', 'PAID', 176, '$2y$10$B2FkDlaE4iHu64NVlsNfa.F9GBDqOQsvrOOglwg/a9hnrWrKIkoLa', '08147746861', 'YES', 'ACTIVE', '2020-09-12 00:50:21', '2020-09-13 05:55:00', 'MALE', '68a92737fe235516abf8719858afd9a4', 'YES', '8cf94de9448935f05fd072169a47ee04', 40, '892826', NULL, 'YES'),
(177, 'REGULAR', 'Ogbu', 'Jennifer', 'Oluchukwu', 'ojenniferoluchukwu@gmail.com', 'YES', 'PAID', 177, '$2y$10$k1wj1qV9gMmgDXp8TKJ4C.01KfqX/ha0KzRxFaLfuBFwu72UoUvvu', '07010612384', 'YES', 'ACTIVE', '2020-09-12 03:35:18', '2020-09-12 22:49:41', 'FEMALE', 'e48259abe7b8cba3a10cf29d67a4d987', 'YES', '51bdb0d4ffba9b720c5f461020c18202', 22, '880122', NULL, 'YES'),
(178, 'REGULAR', 'Esogwa', NULL, 'chidinma', 'esodinma91@gmail.com', 'YES', 'PAID', 178, '$2y$10$dCBNqkaCB5BdlGJPz2yAV.1hrTnDkFWCuB7JaoI0vsos4z1ardfaa', '08105013643', 'YES', 'ACTIVE', '2020-09-12 12:04:14', '2020-09-12 14:57:14', 'MALE', 'dc7dd6bda0d74868d8f52f5dbeb5b4b9', 'YES', 'f83aa3aa2641e7b3332c9526c1d270dd', 40, '352417', NULL, 'NO'),
(179, 'REGULAR', 'Chinenye', NULL, 'OGBEBOR', 'jessyogbebor@gmail.com', 'YES', 'PAID', 179, '$2y$10$RpJ7IHHp0gXoSHI7SBT5yuzcBV2FedNsBHtje/QJPygdOWTLQTRii', NULL, 'NO', 'ACTIVE', '2020-09-12 15:24:12', '2020-09-13 05:55:18', 'MALE', '31807bfa84dd4e8f3d4d30f1ca38e26c', 'NO', 'fa1b5a1495b144e1b759a114a32c621e', 110, NULL, NULL, 'NO'),
(180, 'REGULAR', 'John Helen', 'Helen', 'Nkiru', 'ezeanyachibonum@gmail.com', 'YES', 'PAID', 180, '$2y$10$Evzbw7GqcUBsblN3lhuLlO5zvAJXCpvTz0seXxVhFWhoGFWe6971.', '08183413812', 'YES', 'ACTIVE', '2020-09-12 15:43:01', '2020-09-12 17:23:49', 'FEMALE', 'cb6b4d3652bffcaff052e416d3c150e8', 'YES', 'd108400e9531c443d2c314b4291dfae5', 139, '410798', NULL, 'NO'),
(181, 'REGULAR', 'Mmachukwu', 'U', 'Mbaebie', 'mmababy20@yahoo.com', 'YES', 'PAID', 181, '$2y$10$UgD57IEszKl1uNtcSTwpRuO/APKtzsplrvtJjduFrldYAHV5rHsb6', '08038494200', 'YES', 'ACTIVE', '2020-09-12 16:11:56', '2020-09-13 05:55:10', 'FEMALE', 'c5c78958fb896b38e55cb70d4b12ec2c', 'YES', '545690f430da667a2cec18b691fdf618', 21, '238362', NULL, 'YES'),
(182, 'REGULAR', 'Segun', NULL, 'Adeyemi', 'adeyemi.segun85@yahoo.com', 'YES', 'PAID', 182, '$2y$10$K/fFsIzIj1VYqj/MCWeSke56u0/7vxGqqZlvdjPnBqTQfXzdF6g9y', NULL, 'NO', 'ACTIVE', '2020-09-12 16:41:26', '2020-09-13 05:54:49', 'MALE', 'd3a2723917302cbc0bdd2c346bc67946', 'NO', '071253d3a11bee3a6a1416e52de0c5c2', 143, NULL, NULL, 'YES'),
(183, 'REGULAR', 'Duru faith', 'Faith', 'Faith', 'faithchinos@gmail.com', 'YES', 'PAID', 183, '$2y$10$29rcR07dZzuAR1uGum67YuW2RJmeuYCAq.IR.z2ZUmQYUndUf6Jge', '08169658896', 'YES', 'ACTIVE', '2020-09-12 17:32:58', '2020-09-14 04:34:55', 'FEMALE', '1d634bbab010920bd163242a588fa99e', 'YES', '01abf0bfd749a2ceac3bb70d0e67a52d', 139, '759596', NULL, 'NO'),
(184, 'REGULAR', 'Uchenna', NULL, 'Izuchukwu', 'uche.izuchukwu@yahoo.com', 'YES', 'PAID', 184, '$2y$10$uVKuh..zgbW52H3aGlyv4.DpMNGYccjbKzhFxETRgrwufPEohHgMK', '08168548452', 'YES', 'ACTIVE', '2020-09-12 17:55:39', '2020-09-12 18:32:02', 'MALE', 'cbe11bd84cb7dedc9c1c4da82b115559', 'YES', 'bc9401b1bbfb7996966232b7ee453897', 125, '431891', NULL, 'NO'),
(185, 'REGULAR', 'Achazie', 'Onyinyechi', 'Precious', 'precious.achazie@gmail.com', 'YES', 'PAID', 185, '$2y$10$k37xPVNTFkxKtNq9Fk2xXOgX8PGQlKUNVdzL2mN1CGh.qXT.w6ZX.', '07035736393', 'YES', 'ACTIVE', '2020-09-12 18:43:25', '2020-09-12 18:58:57', 'FEMALE', '54721a4a4f6118040b3de446e2c99a26', 'YES', '09ed596e34cd43fd6157997a417faee8', 1, '705710', NULL, 'NO'),
(186, 'REGULAR', 'Okeke', NULL, 'Amara', 'okekeamara89@gmail.com', 'YES', 'PAID', 186, '$2y$10$mAlIYXjH1EOC0yVlm2QuQ.1v9s3AQuaEORTDSyOi.Mo6Z25zlW/xS', '07038521500', 'YES', 'ACTIVE', '2020-09-12 20:59:57', '2020-09-12 21:52:35', 'FEMALE', '2c05b1c3e153994935361db34f3b1c04', 'YES', '6a45230e166012baed6ceab29116ddf6', 13, '813399', NULL, 'YES'),
(187, 'REGULAR', 'Victor', NULL, 'Ekejiuba', 'vkelvin660@gmail.com', 'YES', 'PAID', 187, '$2y$10$s3mwMhUwCrZ5lm6.VP0oMenlsbMUqzpilucJr7.CFFC2Rq5HvdFXa', NULL, 'NO', 'ACTIVE', '2020-09-12 21:56:04', '2020-09-13 05:54:33', 'MALE', '158f39a18abfae96bf814cec491fc061', 'NO', '0ea5a7c199226150503182e8b5e3abf1', 134, NULL, NULL, 'NO'),
(188, 'REGULAR', 'Ugochi', 'silver', 'Uzosike', 'silveruzosike@gmail.com', 'YES', 'PAID', 188, '$2y$10$8R3s0aOn.VyL0B458u43vuM9Kn1nXZQ2GsO7q6IrwqtoKfGh2bsaW', '09035090082', 'YES', 'ACTIVE', '2020-09-12 22:41:18', '2020-09-12 23:53:31', 'FEMALE', '3232b33425eca8cdd380cc682355a898', 'YES', 'a25110acd2478e9c9a9907f137cacb69', 186, '875312', NULL, 'NO'),
(189, 'REGULAR', 'Odilimuo', NULL, 'Ebere', 'ngebere24@gmail.com', 'YES', 'PAID', 189, '$2y$10$bP7V01taQ/gHGZdXTMlMqeoO0pG4dKUYS8XSHcxwrhSkLbyj.mCK6', '08037166371', 'NO', 'ACTIVE', '2020-09-12 23:28:25', '2020-09-12 23:53:41', 'FEMALE', 'b7442adf4ca4de959522cfece7fef86a', 'NO', '21b6b64b15b03b70410ad5e7ecd4e62b', 13, '513411', NULL, 'NO'),
(190, 'REGULAR', 'Favour', 'Izuchukwu', 'Ogochukwu', 'ogochukwufavor2016@gmail.com', 'YES', 'PAID', 190, '$2y$10$rcLM8M6qZ6R/HpQAZ0l44.upboFPxFxOTcJncGdzWiQ7jDXKXGqh.', '08164191566', 'YES', 'ACTIVE', '2020-09-13 01:05:42', '2020-09-13 05:41:36', 'FEMALE', '4c021bd6b02bc184dbfdf1ac722bc1bf', 'YES', 'f7575a261138431e330b9b11baccef07', 16, '849804', NULL, 'NO'),
(191, 'REGULAR', 'Onwuzuruike', 'Gods power', 'Chimamanda', 'chimamandaonwuzuruike@yahoo.com', 'YES', 'PAID', 191, '$2y$10$VMV/PoagcPYJZZX4kGape.d/2SgWvMmlw0H/TpQv2KX4hWmjXf9tG', '08130211759', 'YES', 'ACTIVE', '2020-09-13 16:37:54', '2020-09-13 20:42:04', 'FEMALE', 'e74c954c2ab130a3a4e3e381bb5cfbda', 'YES', 'd24cb52a07a7723bf755a4586cb272ce', 166, '682735', NULL, 'YES'),
(192, 'REGULAR', 'Chukwuemeka', NULL, 'Udoye', 'emyjoeg733@gmail.com', 'YES', 'NOT PAID', NULL, '$2y$10$C6ADG0dFcLvZwZGjEXapSuR4ePcF3BzgC6Na2qu6eQ5YF0S42zd1S', NULL, 'NO', 'ACTIVE', '2020-09-13 19:42:58', '2020-09-13 19:42:58', 'MALE', 'ef304cb61bacae54946b66b49e8cee52', 'NO', '6c206a333890edabc1851acc47f5f4a2', 93, NULL, NULL, 'NO'),
(193, 'REGULAR', 'Aigbedion', 'Catherina', 'Chinenye', 'gifted4real2010@yahoo.com', 'YES', 'PAID', 193, '$2y$10$0L7nhqjdo57ZwwgfIBhpcutWpvPadDWRVoZ8N.tauFSYGfg1QWo5G', '07080845032', 'YES', 'ACTIVE', '2020-09-13 21:36:24', '2020-09-14 02:32:23', 'FEMALE', 'baa6234c8cf66dbfc1840ac261956bec', 'YES', '5a9c241486465926c537a69695215a92', 125, '864299', NULL, 'NO');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `pledge_options`
--
ALTER TABLE `pledge_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pledge_tracker`
--
ALTER TABLE `pledge_tracker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
