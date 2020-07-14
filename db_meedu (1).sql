-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 05:44 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_meedu`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `publish_date` date NOT NULL,
  `unpublish_date` date NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(50) NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `title`, `content`, `image`, `publish_date`, `unpublish_date`, `status`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'aaaa', '<p>test</p>', 'img_news_1591332956.jpg', '2020-06-11', '2020-06-18', 'A', '1', '2020-06-05 06:55:56', '1', '2020-06-07 07:32:47'),
(2, 'berita terkini', 'hari ini, jumat tgl 12 Juni 2020', '0', '2020-06-12', '2020-06-13', 'A', '1', '0000-00-00 00:00:00', '', '2020-06-12 06:14:19'),
(3, 'coba lagi', '0', '0', '0000-00-00', '0000-00-00', 'A', '0', '2020-06-12 08:38:46', '', '2020-06-12 06:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `category_promo`
--

CREATE TABLE `category_promo` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `status` enum('A','D') NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(50) NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_promo`
--

INSERT INTO `category_promo` (`id`, `name`, `code`, `status`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Perlengkapan Sekolah', 'P0001', 'A', 'citra', '2020-06-08 00:00:00', '', '2020-06-08 05:54:59'),
(2, 'Pendaftaran Murid Baru', 'P0002', 'A', 'citra', '2020-06-08 00:00:00', '', '2020-06-08 05:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('01eb8466d8a10ad4a2b91496149d731b', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 1592540778, ''),
('0745d0f00415f5c09aad3156f6153b69', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575509653, ''),
('15f5a9062ffbc675a8e87fcabc51bc8f', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 1592806814, ''),
('37dddb66f4f0f3604c06bd31bb1ffa33', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 1591850240, ''),
('40ad5c0adc961c016ac75bebd9496d8d', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571203454, ''),
('40e4a605af963dadc315c7c7d85a6257', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 1589352039, ''),
('548c08bd84f86456384d9dfcc219e6a4', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 1582467322, 'a:13:{s:9:\"user_data\";s:0:\"\";i:0;s:1:\"2\";i:1;s:7:\"admin 2\";i:2;s:1:\"1\";i:3;s:1:\"0\";s:8:\"username\";s:14:\"admin2@tki.com\";s:4:\"name\";s:7:\"admin 2\";s:2:\"id\";s:1:\"2\";s:13:\"user_group_id\";s:1:\"1\";s:6:\"pvg_id\";s:1:\"0\";s:7:\"tanggal\";s:10:\"2020-02-23\";s:5:\"waktu\";s:8:\"20:16:08\";s:11:\"last_access\";i:1582467546;}'),
('5d74c7db44bcb2069fce6efba73c7e1b', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1578455897, ''),
('68b98d07b7cc2329148771e3915d3fdc', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579078529, ''),
('71a5919f86f1c5b18b7f8b2ecbe55da0', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571631831, ''),
('7d9f6c93459783a2ae03a5f65ee9da58', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 1590672959, 'a:13:{s:9:\"user_data\";s:0:\"\";i:0;s:1:\"1\";i:1;s:14:\"Citra Aljunila\";i:2;s:1:\"1\";i:3;s:1:\"0\";s:8:\"username\";s:14:\"admin1@tki.com\";s:4:\"name\";s:14:\"Citra Aljunila\";s:2:\"id\";s:1:\"1\";s:13:\"user_group_id\";s:1:\"1\";s:6:\"pvg_id\";s:1:\"0\";s:7:\"tanggal\";s:10:\"2020-05-28\";s:5:\"waktu\";s:8:\"19:50:07\";s:11:\"last_access\";i:1590673245;}'),
('7e248769fb3981759448b8a81d92454c', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 1592888414, ''),
('883dae0f509a0fa4836460aefc725bf0', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568177469, ''),
('8bab0f8ca731f74b39736746d1034a59', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 1589781772, ''),
('9391146ced9ce5cb8da5c05a32318bc8', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570417081, ''),
('a90b883bae7ca19cc3e46845ffbdd0c0', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571823847, ''),
('a960a65caae2b5471d2ab284fc55d754', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 1591761460, ''),
('b0efb543f28b6ec57c3484b1f0d0a28d', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 1582612077, ''),
('b155a7fb6fac84e8fe5022d9d5115fa1', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 1592188325, ''),
('cce417ae64565e331688ba31ea47ed72', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 1589948541, ''),
('d17be80da4c0570b65dff6c6edb9e992', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568074369, ''),
('e6e77ad3c30ef22397678d498d5777a2', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 1592894835, ''),
('fd465cd14f24d9305eefea5bc9f36536', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570083604, 'a:13:{s:9:\"user_data\";s:0:\"\";i:0;s:1:\"1\";i:1;s:6:\"admin1\";i:2;s:1:\"1\";i:3;s:1:\"0\";s:8:\"username\";s:16:\"admin1@event.com\";s:4:\"name\";s:6:\"admin1\";s:2:\"id\";s:1:\"1\";s:13:\"user_group_id\";s:1:\"1\";s:6:\"pvg_id\";s:1:\"0\";s:7:\"tanggal\";s:10:\"2019-10-03\";s:5:\"waktu\";s:8:\"13:06:27\";s:11:\"last_access\";i:1570083861;}');

-- --------------------------------------------------------

--
-- Table structure for table `endusers`
--

CREATE TABLE `endusers` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(16) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `user_group_id` varchar(4) NOT NULL,
  `priviledge_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `institution_id` varchar(255) NOT NULL DEFAULT '',
  `created_by` text NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` text NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `photo_url` text,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endusers`
--

INSERT INTO `endusers` (`id`, `unique_id`, `fullname`, `username`, `password`, `user_group_id`, `priviledge_id`, `email`, `phone`, `institution_id`, `created_by`, `created_date`, `changed_by`, `status`, `photo_url`, `changed_date`) VALUES
(1, '', 'Citra Aljunila', 'admin1@meedu.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', 1, '', '0823425443', '', 'citra', '2019-09-08 00:00:00', 'admin1@tki.com', 'A', NULL, '2020-05-28 13:14:14'),
(2, '', 'admin 2', 'admin2@tki.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', 1, 'admin2@tki.com', '', '', 'admin1@tki.com', '2019-10-23 06:11:15', '', 'D', NULL, '2020-05-28 13:10:33'),
(3, '', 'Aljunila', 'aljunila@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2', 1, '', '084543436422', '', 'admin1@tki.com', '2020-05-28 15:09:34', '', 'A', NULL, '2020-05-28 13:09:34'),
(4, '', 'admin SAB', 'adminsab@sab.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2', 2, '', '654654665', '1', 'admin1@tki.com', '2020-05-28 15:37:05', '', 'A', NULL, '2020-05-28 13:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `log_history`
--

CREATE TABLE `log_history` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `log_type` text NOT NULL,
  `activity` text NOT NULL,
  `requested_url` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(8) NOT NULL,
  `parent_id` varchar(8) NOT NULL,
  `order` int(3) NOT NULL,
  `title` text NOT NULL,
  `action_url` text NOT NULL,
  `icon` text NOT NULL,
  `nav_type` varchar(100) DEFAULT NULL,
  `created_by` text NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` text NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `parent_id`, `order`, `title`, `action_url`, `icon`, `nav_type`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, '0', 1, 'Dashboard', 'dashboard/dashboard_crud/0-0', 'fa-chalkboard', '2', 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:04:45'),
(2, '0', 2, 'Management Sekolah', 'school/school_crud/0-0', 'fas fa-user-friends', '2', 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:07:43'),
(3, '9', 1, 'Superadmin', 'endusers/endusers_crud/0-0', 'fas fa-user', '2', 'citra', '2019-10-18 00:00:00', '', '2019-10-18 06:51:08'),
(4, '9', 2, 'Admin Sekolah', 'adminsekolah/adminsekolah_crud/0-0', 'fa fa-tags', '2', 'citra', '2019-10-21 00:00:00', '', '2019-10-21 04:31:33'),
(5, '0', 2, 'Jurnal Umum', 'transaction/transaction_crud/0-0', 'fa-copy', '4', 'citra', '2019-10-22 00:00:00', '', '2019-10-22 00:51:23'),
(6, '0', 4, 'Hak Akses', 'priviledge/priviledge_crud/0-0', 'fa-user-plus', '5', 'citra', '2019-10-23 00:00:00', '', '2019-10-23 01:56:15'),
(7, '0', 2, 'Sponsor', 'sponsor/sponsor_crud/0-0', 'fas fa-user-friends', '5', 'citra', '2019-10-23 00:00:00', '', '2019-10-23 07:33:12'),
(8, '0', 3, 'Agen', 'agent/agent_crud/0-0', 'fas fa-user-friends', '5', 'citra', '2019-10-23 00:00:00', '', '2019-10-23 07:53:38'),
(9, '0', 1, 'Management User', '', 'fa-plus-square', '2', 'citra', '2019-10-28 00:00:00', '', '2019-10-28 06:26:06'),
(10, '0', 2, 'Management Berita', 'news/news_crud/0-0', 'fa-stethoscope', '2', 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:36:25'),
(11, '0', 3, 'Management Promo', 'promo/promo_crud/0-0', 'fa-image', '2', 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:36:25'),
(19, '0', 3, 'Pembayaran', '', 'fa-credit-card', '4', 'citra', '2019-10-29 00:00:00', '', '2019-10-29 13:47:02'),
(20, '0', 4, 'Penagihan', '', 'fa-credit-card', '4', 'citra', '2019-10-29 00:00:00', '', '2019-10-29 13:47:50'),
(21, '19', 1, 'Pengajuan Pembayaran', 'pay/pay_crud/0-0', 'fa-list', '4', 'citra', '2019-11-01 00:00:00', '', '2019-11-01 00:33:05'),
(22, '19', 2, 'Persetujuan Pembayaran', 'pay/app_crud/0-0', 'fa-check', '4', 'citra', '2019-11-01 00:00:00', '', '2019-11-01 00:33:05'),
(23, '20', 1, 'Pembuatan Invoice', 'bill/bill_crud/0-0', 'fa-paste', '4', 'citra', '2019-11-01 00:00:00', '', '2019-11-01 01:14:54'),
(24, '20', 2, 'Konfirmasi Invoice', 'bill/app_crud/0-0', 'fa-chevron-circle-down', '4', 'citra', '2019-11-01 00:00:00', '', '2019-11-01 01:14:54'),
(27, '0', 4, 'Logo & Tanda Tangan', 'ttd/ttd_crud/0-0', 'fa fa-image', '5', 'citra', '0000-00-00 00:00:00', '', '2020-01-03 06:51:11'),
(28, '0', 1, 'Master Negara', 'master/country_crud/0-0', 'fa-flag-o', '6', 'citra', '0000-00-00 00:00:00', '', '2020-02-26 07:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_groups`
--

CREATE TABLE `menu_groups` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(100) NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_id` int(11) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_groups`
--

INSERT INTO `menu_groups` (`id`, `name`, `description`, `created_by`, `created_date`, `changed_by`, `changed_date`, `order_id`, `status`) VALUES
(1, 'Navigasi Referensi', NULL, 'wildan', '2018-05-31 00:00:00', 'wildan', '2019-05-15 06:41:03', 1, 'D'),
(2, 'Navigasi Utama', NULL, 'wildan', '2018-05-31 00:00:00', 'wildan', '2019-10-28 06:57:52', 1, 'A'),
(3, 'Navigasi Keuangan', NULL, 'wildan', '2018-05-31 00:00:00', 'wildan', '2019-10-21 04:33:47', 3, 'D'),
(4, 'Navigasi Keuangan', NULL, 'wildan', '2018-05-31 00:00:00', 'wildan', '2020-05-29 06:07:24', 2, 'D'),
(5, 'Navigasi Pengaturan', NULL, 'wildan', '2018-05-31 00:00:00', 'wildan', '2020-06-09 04:32:59', 3, 'D'),
(6, 'Navigasi Master', NULL, 'citra', '2019-02-10 00:00:00', '', '2020-02-26 07:02:38', 4, 'A'),
(7, 'Navigasi Design', NULL, 'citra', '2019-02-10 00:00:00', '', '2019-05-15 04:29:38', 4, 'D'),
(8, 'Menu Merek', NULL, 'citra', '2019-02-13 00:00:00', '', '2019-05-15 04:29:53', 5, 'D'),
(9, 'Menu Laporan', NULL, 'citra', '2019-02-13 00:00:00', '', '2019-05-15 06:56:47', 6, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `priviledges`
--

CREATE TABLE `priviledges` (
  `priviledge_id` int(4) NOT NULL,
  `menu_id` varchar(3) NOT NULL,
  `user_group_id` varchar(20) NOT NULL,
  `pvg_id` int(11) NOT NULL,
  `created_by` text NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` text NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priviledges`
--

INSERT INTO `priviledges` (`priviledge_id`, `menu_id`, `user_group_id`, `pvg_id`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, '1', '1', 0, 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:08:49'),
(2, '2', '1', 0, 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:09:13'),
(3, '3', '1', 0, 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:09:13'),
(4, '4', '1', 0, 'citra', '2019-09-09 00:00:00', '', '2019-09-09 13:17:18'),
(15, '10', '1', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:37:57'),
(16, '11', '1', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(23, '9', '1', 0, 'citra', '2019-10-28 00:00:00', '', '2019-10-28 06:26:52'),
(28, '22', '1', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 00:34:20'),
(29, '23', '1', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 01:15:58'),
(30, '24', '1', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 01:15:58'),
(31, '25', '1', 0, 'citra', '2019-12-02 00:00:00', '', '2019-12-02 03:49:04'),
(32, '26', '1', 0, 'citra', '2019-12-02 00:00:00', '', '2019-12-02 08:43:21'),
(33, '1', '2', 0, 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:08:49'),
(34, '2', '2', 0, 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:09:13'),
(35, '3', '2', 0, 'citra', '2019-09-08 00:00:00', '', '2019-09-08 13:09:13'),
(36, '4', '2', 0, 'citra', '2019-09-09 00:00:00', '', '2019-09-09 13:17:18'),
(37, '5', '2', 0, 'citra', '2019-10-22 00:00:00', '', '2019-10-22 00:52:12'),
(38, '6', '2', 0, 'citra', '2019-10-23 00:00:00', '', '2019-10-23 01:56:53'),
(39, '1', '2', 1, 'admin1@tki.com', '2019-10-23 05:29:28', '', '2019-10-23 03:29:28'),
(40, '2', '2', 1, 'admin1@tki.com', '2019-10-23 05:29:28', '', '2019-10-23 03:29:28'),
(41, '3', '2', 1, 'admin1@tki.com', '2019-10-23 05:29:28', '', '2019-10-23 03:29:28'),
(42, '6', '2', 1, 'admin1@tki.com', '2019-10-23 05:29:29', '', '2019-10-23 03:29:29'),
(43, '4', '2', 2, 'admin1@tki.com', '2019-10-23 05:29:51', '', '2019-10-23 03:29:51'),
(44, '5', '2', 2, 'admin1@tki.com', '2019-10-23 05:29:51', '', '2019-10-23 03:29:51'),
(45, '7', '2', 0, 'citra', '2019-10-23 00:00:00', '', '2019-10-23 07:33:37'),
(46, '8', '2', 0, 'citra', '2019-10-23 00:00:00', '', '2019-10-23 07:54:28'),
(47, '10', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:37:57'),
(48, '11', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(49, '12', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(50, '13', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(51, '14', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(52, '15', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(53, '16', '2', 0, 'citra', '2019-10-24 00:00:00', '', '2019-10-24 07:38:41'),
(54, '17', '2', 0, 'citra', '2019-10-25 00:00:00', '', '2019-10-25 12:20:03'),
(55, '9', '2', 0, 'citra', '2019-10-28 00:00:00', '', '2019-10-28 06:26:52'),
(56, '18', '2', 0, 'citra', '2019-10-29 00:00:00', '', '2019-10-29 12:44:09'),
(57, '19', '2', 0, 'citra', '2019-10-29 00:00:00', '', '2019-10-29 13:48:52'),
(58, '20', '2', 0, 'citra', '2019-10-29 00:00:00', '', '2019-10-29 13:48:52'),
(59, '21', '2', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 00:34:20'),
(60, '22', '2', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 00:34:20'),
(61, '23', '2', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 01:15:58'),
(62, '24', '2', 0, 'citra', '2019-11-01 00:00:00', '', '2019-11-01 01:15:58'),
(63, '25', '2', 0, 'citra', '2019-12-02 00:00:00', '', '2019-12-02 03:49:04'),
(64, '26', '2', 0, 'citra', '2019-12-02 00:00:00', '', '2019-12-02 08:43:21'),
(65, '27', '1', 0, 'citra', '2020-01-03 00:00:00', '', '2020-01-03 06:51:55'),
(66, '27', '2', 0, 'citra', '2020-01-03 00:00:00', '', '2020-01-03 06:52:57'),
(67, '28', '2', 0, 'citra', '2020-02-26 00:00:00', '', '2020-02-26 07:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `priviledge_list`
--

CREATE TABLE `priviledge_list` (
  `id` int(11) NOT NULL,
  `priviledge_name` varchar(40) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `changedBy` varchar(30) NOT NULL,
  `changedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priviledge_list`
--

INSERT INTO `priviledge_list` (`id`, `priviledge_name`, `status`, `createdBy`, `createdDate`, `changedBy`, `changedDate`) VALUES
(0, 'Superadmin', 'A', 'citra', '2019-01-07 00:00:00', 'superadmin', '2019-10-23 03:28:33'),
(1, 'Admin Reguler', 'A', 'aljunila@gmail.com', '2019-02-27 04:10:03', 'admin1@tki.com', '2019-10-23 03:29:28'),
(2, 'Admin Keuangan', 'A', 'aljunila@gmail.com', '2019-02-27 04:26:57', 'admin1@tki.com', '2019-10-23 03:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `publish_date` date NOT NULL,
  `unpublish_date` date NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(50) NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `title`, `content`, `image`, `category_id`, `discount`, `publish_date`, `unpublish_date`, `status`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Promo Get 25% Off Formulir Pendaftaran', '<p>Dapatkan potongan 25% untuk pembelian formulir pendaftaran Gelombang 1, mulai tgl 1 Juni - 30 Juni 2020.</p>', 'img_news_1591673266.jpg', 2, '25%', '2020-05-06', '2020-06-30', 'A', '1', '2020-06-09 05:27:46', '1', '2020-06-09 03:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `accreditation` text NOT NULL,
  `curriculum` varchar(100) NOT NULL,
  `implementation` text NOT NULL,
  `internet` enum('Y','N') DEFAULT NULL,
  `classroom` int(11) NOT NULL,
  `laboratorium` int(11) NOT NULL,
  `library` int(11) NOT NULL,
  `surface_area` int(11) NOT NULL,
  `f_students` int(11) NOT NULL,
  `m_students` int(11) NOT NULL,
  `teachers` int(11) NOT NULL,
  `school_mng` enum('Y','N') NOT NULL DEFAULT 'Y',
  `website` varchar(100) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `changed_by` varchar(50) NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `name`, `address`, `telp`, `email`, `accreditation`, `curriculum`, `implementation`, `internet`, `classroom`, `laboratorium`, `library`, `surface_area`, `f_students`, `m_students`, `teachers`, `school_mng`, `website`, `status`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Sekolah Alam Bintaro', 'JL. PONDOK PUCUNG RAYA RT.01/01 NO 88, PONDOK PUCUNG, Kec. Pondok Aren, Kota Tangerang Selatan Prov. Banten', '021-7452888', 'adm_sekolahalambintaro@yahoo.com', 'A', 'K-13', 'Sehari Penuh/5h', 'Y', 18, 1, 0, 130008, 145, 253, 200, 'Y', 'www.sekolahalambintaro.com', 'A', '', '2020-05-19 00:00:00', 'admin1@tki.com', '2020-05-20 04:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `setting_type` text NOT NULL,
  `setting_content` text NOT NULL,
  `change_by` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `setting_type`, `setting_content`, `change_by`, `change_date`) VALUES
(1, 'logging_level', '3', 'acid', '2012-07-21 13:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(15) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_date` date NOT NULL,
  `changed_by` varchar(30) NOT NULL,
  `changed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `code`, `created_by`, `created_date`, `changed_by`, `changed_date`) VALUES
(1, 'Interview', 'ITV', 'citra', '2019-10-11', '', '2019-10-11 06:44:01'),
(2, 'Medical', 'MDC', 'citra', '2019-10-11', '', '2019-10-11 06:44:01'),
(3, 'Pasporan', 'PSP', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(4, 'Panggilan Sidik Jari', 'PSJ', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(5, 'Sidik Jari', 'SJ', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(6, 'Ready Terbang', 'RTB', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(7, 'Panggilan Terbang', 'PTB', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(8, 'Terbang', 'TB', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(9, 'Cancel', 'CC', 'citra', '2019-10-11', '', '2019-10-11 06:46:50'),
(10, 'Turun Visa', 'TVS', 'citra', '2019-10-25', '', '2019-10-25 12:24:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_promo`
--
ALTER TABLE `category_promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `endusers`
--
ALTER TABLE `endusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_history`
--
ALTER TABLE `log_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_groups`
--
ALTER TABLE `menu_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `priviledges`
--
ALTER TABLE `priviledges`
  ADD PRIMARY KEY (`priviledge_id`);

--
-- Indexes for table `priviledge_list`
--
ALTER TABLE `priviledge_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_promo`
--
ALTER TABLE `category_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `endusers`
--
ALTER TABLE `endusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log_history`
--
ALTER TABLE `log_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_groups`
--
ALTER TABLE `menu_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `priviledges`
--
ALTER TABLE `priviledges`
  MODIFY `priviledge_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `priviledge_list`
--
ALTER TABLE `priviledge_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
