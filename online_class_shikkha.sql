-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 04:02 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_class_shikkha`
--

-- --------------------------------------------------------

--
-- Table structure for table `allclasses`
--

CREATE TABLE `allclasses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `allclasses`
--

INSERT INTO `allclasses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(9, 'Nursery', NULL, NULL),
(10, 'Junior One', NULL, NULL),
(11, 'One', NULL, NULL),
(12, 'Two', NULL, NULL),
(13, 'Three', NULL, NULL),
(14, 'Four', NULL, NULL),
(15, 'Five', NULL, NULL),
(16, 'Six', NULL, NULL),
(17, 'Seven', NULL, NULL),
(18, 'Eight', NULL, NULL),
(19, 'Nine', NULL, NULL),
(20, 'Ten', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `allsubjects`
--

CREATE TABLE `allsubjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `allsubjects`
--

INSERT INTO `allsubjects` (`id`, `class_id`, `subject`, `created_at`, `updated_at`) VALUES
(1, '9', 'Bangla', NULL, NULL),
(2, '9', 'English', NULL, NULL),
(3, '9', 'Math', NULL, NULL),
(4, '10', 'Bangla', NULL, NULL),
(5, '10', 'English', NULL, NULL),
(6, '10', 'Math', NULL, NULL),
(7, '11', 'Bangla', NULL, NULL),
(8, '11', 'English', NULL, NULL),
(9, '11', 'Math', NULL, NULL),
(10, '12', 'Bangla', NULL, NULL),
(11, '12', 'English', NULL, NULL),
(12, '12', 'Math', NULL, NULL),
(13, '13', 'Bangla', NULL, NULL),
(14, '13', 'English', NULL, NULL),
(15, '13', 'Math', NULL, NULL),
(16, '13', 'Science', NULL, NULL),
(17, '13', 'Religion', NULL, NULL),
(18, '13', 'Bangladesh & Global', NULL, NULL),
(19, '14', 'Bangla', NULL, NULL),
(20, '14', 'English', NULL, NULL),
(21, '14', 'Math', NULL, NULL),
(22, '14', 'Science', NULL, NULL),
(23, '14', 'Religion', NULL, NULL),
(24, '14', 'Bangladesh & Global', NULL, NULL),
(25, '15', 'Bangla', NULL, NULL),
(26, '15', 'English', NULL, NULL),
(27, '15', 'Math', NULL, NULL),
(28, '15', 'Science', NULL, NULL),
(29, '15', 'Religion', NULL, NULL),
(30, '15', 'Bangladesh & Global', NULL, NULL),
(31, '16', 'Bangla', NULL, NULL),
(32, '16', 'English', NULL, NULL),
(33, '16', 'Math', NULL, NULL),
(34, '16', 'Science', NULL, NULL),
(35, '16', 'Religion', NULL, NULL),
(36, '16', 'Bangladesh & Global', NULL, NULL),
(37, '16', 'ICT', NULL, NULL),
(38, '17', 'Bangla', NULL, NULL),
(39, '17', 'English', NULL, NULL),
(40, '17', 'Math', NULL, NULL),
(41, '17', 'Science', NULL, NULL),
(42, '17', 'Religion', NULL, NULL),
(43, '17', 'Bangladesh & Global', NULL, NULL),
(44, '17', 'ICT', NULL, NULL),
(45, '18', 'Bangla', NULL, NULL),
(46, '18', 'English', NULL, NULL),
(47, '18', 'Math', NULL, NULL),
(48, '18', 'Science', NULL, NULL),
(49, '18', 'Religion', NULL, NULL),
(50, '18', 'Bangladesh & Global', NULL, NULL),
(51, '18', 'ICT', NULL, NULL),
(52, '19', 'Bangla I', NULL, NULL),
(53, '19', 'Bangla II', NULL, NULL),
(54, '19', 'English I', NULL, NULL),
(55, '19', 'English II', NULL, NULL),
(56, '19', 'Math', NULL, NULL),
(57, '19', 'Religion', NULL, NULL),
(58, '19', 'Bangladesh & Global', NULL, NULL),
(59, '19', 'Physics', NULL, NULL),
(60, '19', 'Chemistry', NULL, NULL),
(61, '19', 'Biology', NULL, NULL),
(62, '19', 'Higher Math', NULL, NULL),
(63, '19', 'Agriculture', NULL, NULL),
(64, '19', 'ICT', NULL, NULL),
(65, '19', 'Accounting', NULL, NULL),
(66, '19', 'F & B', NULL, NULL),
(67, '19', 'Business Ent', NULL, NULL),
(68, '19', 'G. Science', NULL, NULL),
(69, '20', 'Bangla I', NULL, NULL),
(70, '20', 'Bangla II', NULL, NULL),
(71, '20', 'English I', NULL, NULL),
(72, '20', 'English II', NULL, NULL),
(73, '20', 'Math', NULL, NULL),
(74, '20', 'Religion', NULL, NULL),
(75, '20', 'Bangladesh & Global', NULL, NULL),
(76, '20', 'Physics', NULL, NULL),
(77, '20', 'Chemistry', NULL, NULL),
(78, '20', 'Biology', NULL, NULL),
(79, '20', 'Higher Math', NULL, NULL),
(80, '20', 'Agriculture', NULL, NULL),
(81, '20', 'ICT', NULL, NULL),
(82, '20', 'Accounting', NULL, NULL),
(83, '20', 'F & B', NULL, NULL),
(84, '20', 'Business Ent', NULL, NULL),
(85, '20', 'G. Science', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `allvideos`
--

CREATE TABLE `allvideos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `allvideos`
--

INSERT INTO `allvideos` (`id`, `class_id`, `subject_id`, `term_id`, `date`, `youtube_link`, `created_at`, `updated_at`) VALUES
(1, 10, 5, 2, '14-May-2020', 'https://www.youtube.com/watch?v=-H2I0yJ4FE8&list=PLdX41zbXyvpWm6NTBmy2q7ETGY-7XlzJ7&index=2', '2020-05-31 15:09:58', '2020-05-31 15:09:58'),
(2, 10, 5, 2, '15-May-2020', 'https://www.youtube.com/watch?v=x0wecZDaP7Y&list=PLdX41zbXyvpWm6NTBmy2q7ETGY-7XlzJ7&index=3', '2020-05-31 15:10:12', '2020-05-31 15:10:12'),
(3, 11, 7, 2, '11-May-2020', 'https://www.youtube.com/watch?v=CDAB-4aPJKg&list=PLdX41zbXyvpVVrpx9pKVxbYE01VPteepw&index=4', '2020-05-31 15:13:21', '2020-05-31 15:13:21'),
(4, 11, 7, 2, '13-May-2020', 'https://www.youtube.com/watch?v=seaoqrp1CiA&list=PLdX41zbXyvpVVrpx9pKVxbYE01VPteepw&index=5', '2020-05-31 15:13:46', '2020-05-31 15:13:46'),
(5, 11, 7, 2, '18-May-2020', 'https://www.youtube.com/watch?v=HkdVBr2Ou80&list=PLdX41zbXyvpVVrpx9pKVxbYE01VPteepw&index=6', '2020-05-31 15:14:01', '2020-05-31 15:14:01'),
(6, 12, 11, 2, '12-May-2020', 'https://www.youtube.com/watch?v=SxWYZG7wYCw&list=PLdX41zbXyvpVXWTDueM-LsOnmyS2Lhrbx&index=2', '2020-05-31 15:15:00', '2020-05-31 15:15:00'),
(7, 12, 11, 2, '18-May-2020', 'https://www.youtube.com/watch?v=W-tY5rHXO4Y&list=PLdX41zbXyvpVXWTDueM-LsOnmyS2Lhrbx&index=4', '2020-05-31 15:15:15', '2020-05-31 15:15:15'),
(8, 12, 11, 2, '19-May-2020', 'https://www.youtube.com/watch?v=skueE8ApZGY&list=PLdX41zbXyvpVXWTDueM-LsOnmyS2Lhrbx&index=5', '2020-05-31 15:15:32', '2020-05-31 15:15:32'),
(9, 13, 14, 2, '12-May-2020', 'https://www.youtube.com/watch?v=8fFhqY1Xggs&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=5', '2020-05-31 15:16:38', '2020-05-31 15:16:38'),
(10, 13, 14, 2, '18-May-2020', 'https://www.youtube.com/watch?v=6G-HBpy7Akk&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=10', '2020-05-31 15:16:50', '2020-05-31 15:16:50'),
(11, 13, 14, 2, '20-May-2020', 'https://www.youtube.com/watch?v=iB3vjfD7YqU&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=12', '2020-05-31 15:17:03', '2020-05-31 15:17:03'),
(12, 13, 17, 2, '13-May-2020', 'https://www.youtube.com/watch?v=N03biOawFAA&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=7', '2020-05-31 15:17:24', '2020-05-31 15:17:24'),
(13, 13, 17, 2, '19-May-2020', 'https://www.youtube.com/watch?v=9yH0yOuZ5u0&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=11', '2020-05-31 15:17:40', '2020-05-31 15:17:40'),
(14, 13, 18, 2, '10-May-2020', 'https://youtu.be/bir9wIBRKic', '2020-05-31 15:18:07', '2020-05-31 15:18:07'),
(15, 13, 18, 2, '15-May-2020', 'https://www.youtube.com/watch?v=qiLHVXA9Teo&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=8', '2020-05-31 15:18:20', '2020-05-31 15:18:20'),
(16, 13, 18, 2, '17-May-2020', 'https://www.youtube.com/watch?v=BCWB1YAVgfY&list=PLdX41zbXyvpWJ1bGkZ0gO8ETR_0H85LYI&index=9', '2020-05-31 15:18:33', '2020-05-31 15:18:33'),
(17, 14, 19, 2, '10-May-2020', 'https://youtu.be/BqjuxvHAAdI', '2020-05-31 15:19:16', '2020-05-31 15:19:16'),
(18, 14, 19, 2, '16-May-2020', 'https://www.youtube.com/watch?v=5yWnIyqWflU&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=15', '2020-05-31 15:19:29', '2020-05-31 15:19:29'),
(19, 14, 19, 2, '20-May-2020', 'https://www.youtube.com/watch?v=04BppUAid1Q&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=17', '2020-05-31 15:19:41', '2020-05-31 15:19:41'),
(20, 14, 20, 2, '10-May-2020', 'https://youtu.be/ZABBzZ-RhjI', '2020-05-31 15:19:58', '2020-05-31 15:19:58'),
(21, 14, 20, 2, '12-May-2020', 'https://www.youtube.com/watch?v=4z3ZzroA98A&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=11', '2020-05-31 15:20:09', '2020-05-31 15:20:09'),
(22, 14, 20, 2, '14-May-2020', 'https://www.youtube.com/watch?v=ksEx_cp-fM0&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=13', '2020-05-31 15:20:22', '2020-05-31 15:20:22'),
(23, 14, 20, 2, '21-May-2020', 'https://www.youtube.com/watch?v=KMA94RBE_Ck&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=20', '2020-05-31 15:20:33', '2020-05-31 15:20:33'),
(24, 14, 22, 2, '12-May-2020', 'https://www.youtube.com/watch?v=poU_nEmXVi4&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=12', '2020-05-31 15:20:55', '2020-05-31 15:20:55'),
(25, 14, 22, 2, '15-May-2020', 'https://www.youtube.com/watch?v=0GoLI0UqjPQ&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=14', '2020-05-31 15:21:10', '2020-05-31 15:21:10'),
(26, 14, 23, 2, '11-May-2020', 'https://youtu.be/o6sDLd0JUvo', '2020-05-31 15:21:28', '2020-05-31 15:21:28'),
(27, 14, 23, 2, '18-May-2020', 'https://www.youtube.com/watch?v=cnkrX439eMU&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=16', '2020-05-31 15:21:59', '2020-05-31 15:21:59'),
(28, 14, 24, 2, '12-May-2020', 'https://www.youtube.com/watch?v=60C_sW73ZmU&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=10', '2020-05-31 15:22:14', '2020-05-31 15:22:14'),
(29, 14, 24, 2, '14-May-2020', 'https://www.youtube.com/watch?v=97IWagWyPbs&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=12', '2020-05-31 15:22:31', '2020-05-31 15:22:31'),
(30, 14, 24, 2, '20-May-2020', 'https://www.youtube.com/watch?v=Y56Al0AFMHY&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=18', '2020-05-31 15:22:43', '2020-05-31 15:22:43'),
(31, 14, 24, 2, '21-May-2020', 'https://www.youtube.com/watch?v=LVxDXA6tUtE&list=PLdX41zbXyvpWIO9kGr0fZasEqF-hwMb47&index=19', '2020-05-31 15:22:54', '2020-05-31 15:22:54'),
(32, 15, 25, 2, '04-May-2020', 'https://youtu.be/uZUWxKxfdTQ', '2020-05-31 15:25:38', '2020-05-31 15:25:38'),
(33, 15, 25, 2, '07-May-2020', 'https://youtu.be/OzjO9sem2qU', '2020-05-31 15:25:52', '2020-05-31 15:25:52'),
(34, 15, 25, 2, '14-May-2020', 'https://www.youtube.com/watch?v=5SqaAZcj1yA&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=28', '2020-05-31 15:26:02', '2020-05-31 15:26:02'),
(35, 15, 27, 2, '02-May-2020', 'https://www.youtube.com/watch?v=SmQDppiPk9g&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh', '2020-05-31 15:26:20', '2020-05-31 15:26:20'),
(36, 15, 27, 2, '04-May-2020', 'https://youtu.be/1xpO7DvvrZE', '2020-05-31 15:27:17', '2020-05-31 15:27:17'),
(37, 15, 27, 2, '06-May-2020', 'https://youtu.be/Qu1faAWMHvQ', '2020-05-31 15:27:30', '2020-05-31 15:27:30'),
(38, 15, 27, 2, '08-May-2020', 'https://youtu.be/ROeU9fBxJo4', '2020-05-31 15:27:42', '2020-05-31 15:27:42'),
(39, 15, 27, 2, '09-May-2020', 'https://youtu.be/26kMX3js73c', '2020-05-31 15:27:53', '2020-05-31 15:27:53'),
(40, 15, 27, 2, '14-May-2020', 'https://www.youtube.com/watch?v=6xkJ02S-ikI&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=29', '2020-05-31 15:28:05', '2020-05-31 15:28:05'),
(41, 15, 27, 2, '16-May-2020', 'https://www.youtube.com/watch?v=xgSpp8PsaEE&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=36', '2020-05-31 15:28:16', '2020-05-31 15:28:16'),
(42, 15, 27, 2, '18-May-2020', 'https://www.youtube.com/watch?v=nm_lCJDwX5I&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=34', '2020-05-31 15:28:31', '2020-05-31 15:28:31'),
(44, 15, 28, 2, '02-May-2020', 'https://www.youtube.com/watch?v=MIcx6vwQOZ4&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh', '2020-05-31 15:30:06', '2020-05-31 15:30:06'),
(45, 15, 28, 2, '09-May-2020', 'https://youtu.be/QIUiFYX-aVA', '2020-05-31 15:30:19', '2020-05-31 15:30:19'),
(46, 15, 28, 2, '14-May-2020', 'https://www.youtube.com/watch?v=58wZPGsveFA&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=30', '2020-05-31 15:30:30', '2020-05-31 15:30:30'),
(47, 15, 28, 2, '18-May-2020', 'https://www.youtube.com/watch?v=_W0z-EP5RNI&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=33', '2020-05-31 15:30:44', '2020-05-31 15:30:44'),
(48, 15, 28, 2, '21-May-2020', 'https://www.youtube.com/watch?v=kxe85GSViII&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=39', '2020-05-31 15:30:57', '2020-05-31 15:30:57'),
(49, 15, 29, 2, '05-May-2020', 'https://youtu.be/Qz5pw8lL6Qc', '2020-05-31 15:31:20', '2020-05-31 15:31:20'),
(50, 15, 29, 2, '07-May-2020', 'https://youtu.be/Wf43xn0ISsM', '2020-05-31 15:31:33', '2020-05-31 15:31:33'),
(51, 15, 29, 2, '12-May-2020', 'https://www.youtube.com/watch?v=DtGRJ8S4al4&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=27', '2020-05-31 15:31:46', '2020-05-31 15:31:46'),
(52, 15, 29, 2, '19-May-2020', 'https://www.youtube.com/watch?v=0HK3pgO_np4&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=37', '2020-05-31 15:31:58', '2020-05-31 15:31:58'),
(53, 15, 29, 2, '21-May-2020', 'https://www.youtube.com/watch?v=EMOjLYfsLc4&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=38', '2020-05-31 15:32:14', '2020-05-31 15:32:14'),
(54, 15, 30, 2, '03-May-2020', 'https://youtu.be/hs-k4BTBCZ4', '2020-05-31 15:32:30', '2020-05-31 15:32:30'),
(55, 15, 30, 2, '10-May-2020', 'https://youtu.be/4z6oqsy0_ls', '2020-05-31 15:32:41', '2020-05-31 15:32:41'),
(56, 15, 30, 2, '15-May-2020', 'https://www.youtube.com/watch?v=cnVOiUCDQp0&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=31', '2020-05-31 15:32:53', '2020-05-31 15:32:53'),
(57, 15, 30, 2, '18-May-2020', 'https://www.youtube.com/watch?v=cDc6DWFOkrQ&list=PLdX41zbXyvpXPCE_6QpJ62LpphAEu8Dzh&index=32', '2020-05-31 15:33:04', '2020-05-31 15:33:04'),
(58, 16, 32, 2, '12-May-2020', 'https://www.youtube.com/watch?v=BPawRrmr_LA&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=9', '2020-05-31 15:37:11', '2020-05-31 15:37:11'),
(59, 16, 32, 2, '17-May-2020', 'https://www.youtube.com/watch?v=4gAltIP1xKY&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=13', '2020-05-31 15:37:24', '2020-05-31 15:37:24'),
(60, 16, 32, 2, '19-May-2020', 'https://www.youtube.com/watch?v=owDPrBPNu2E&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=18', '2020-05-31 15:37:37', '2020-05-31 15:37:37'),
(61, 16, 33, 2, '10-May-2020', 'https://youtu.be/OYOUntIRbBo', '2020-05-31 15:38:09', '2020-05-31 15:38:09'),
(62, 16, 33, 2, '11-May-2020', 'https://youtu.be/ke1gIaDJT0k', '2020-05-31 15:38:19', '2020-05-31 15:38:19'),
(63, 16, 33, 2, '17-May-2020', 'https://www.youtube.com/watch?v=cRp6-JfjDvQ&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=17', '2020-05-31 15:38:30', '2020-05-31 15:38:30'),
(64, 16, 33, 2, '18-May-2020', 'https://www.youtube.com/watch?v=yFHWolN70ew&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=14', '2020-05-31 15:38:44', '2020-05-31 15:38:44'),
(65, 16, 34, 2, '12-May-2020', 'https://www.youtube.com/watch?v=MpB2VqRj-Oc&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=11', '2020-05-31 15:39:09', '2020-05-31 15:39:09'),
(66, 16, 34, 2, '18-May-2020', 'https://www.youtube.com/watch?v=b3nlYirNy2o&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=15', '2020-05-31 15:39:23', '2020-05-31 15:39:23'),
(67, 16, 34, 2, '21-May-2020', 'https://www.youtube.com/watch?v=EU8ybxkj7o8&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=20', '2020-05-31 15:39:36', '2020-05-31 15:39:36'),
(68, 16, 35, 2, '12-May-2020', 'https://www.youtube.com/watch?v=dGB1TRFZ5EE&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=10', '2020-05-31 15:39:50', '2020-05-31 15:39:50'),
(69, 16, 35, 2, '19-May-2020', 'https://www.youtube.com/watch?v=RUBtZ0_dxXs&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=19', '2020-05-31 15:40:04', '2020-05-31 15:40:04'),
(70, 16, 36, 2, '11-May-2020', 'https://youtu.be/_hvuP0vnY-s', '2020-05-31 15:40:20', '2020-05-31 15:40:20'),
(71, 16, 36, 2, '15-May-2020', 'https://www.youtube.com/watch?v=0f1JiMJo2T8&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=12', '2020-05-31 15:40:34', '2020-05-31 15:40:34'),
(72, 16, 36, 2, '18-May-2020', 'https://www.youtube.com/watch?v=8Y20DDt9LAw&list=PLdX41zbXyvpUzRuAXONWSJM9gArvG4x85&index=16', '2020-05-31 15:40:46', '2020-05-31 15:40:46'),
(73, 17, 38, 2, '12-May-2020', 'https://www.youtube.com/watch?v=CcxA4ZdDKsA&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=12', '2020-05-31 15:41:53', '2020-05-31 15:41:53'),
(74, 17, 38, 2, '14-May-2020', 'https://www.youtube.com/watch?v=O0A_jqHjGiA&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=15', '2020-05-31 15:42:13', '2020-05-31 15:42:13'),
(75, 17, 38, 2, '19-May-2020', 'https://www.youtube.com/watch?v=wivNH1VK2rk&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=22', '2020-05-31 15:42:28', '2020-05-31 15:42:28'),
(76, 17, 39, 2, '10-May-2020', 'https://youtu.be/NMhUKc0qgKc', '2020-05-31 15:42:44', '2020-05-31 15:42:44'),
(77, 17, 39, 2, '13-May-2020', 'https://www.youtube.com/watch?v=q9cQHDW5n-Y&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=13', '2020-05-31 15:42:56', '2020-05-31 15:42:56'),
(78, 17, 39, 2, '16-May-2020', 'https://www.youtube.com/watch?v=W6mfiNnQ054&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=16', '2020-05-31 15:43:08', '2020-05-31 15:43:08'),
(79, 17, 39, 2, '19-May-2020', 'https://www.youtube.com/watch?v=Hc4ruJI06ik&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=23', '2020-05-31 15:43:20', '2020-05-31 15:43:20'),
(80, 17, 40, 2, '10-May-2020', 'https://youtu.be/c9ztZpYdmko', '2020-05-31 15:43:40', '2020-05-31 15:43:40'),
(81, 17, 40, 2, '14-May-2020', 'https://www.youtube.com/watch?v=I0JZuLjIrGg&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=16', '2020-05-31 15:43:59', '2020-05-31 15:43:59'),
(82, 17, 40, 2, '17-May-2020', 'https://www.youtube.com/watch?v=MUNwRw6h_1Y&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=17', '2020-05-31 15:44:11', '2020-05-31 15:44:11'),
(83, 17, 40, 2, '19-May-2020', 'https://www.youtube.com/watch?v=gTm9X9_DOjc&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=24', '2020-05-31 15:44:22', '2020-05-31 15:44:22'),
(84, 17, 41, 2, '11-May-2020', 'https://youtu.be/wKM35QznbOs', '2020-05-31 15:44:36', '2020-05-31 15:44:36'),
(85, 17, 41, 2, '18-May-2020', 'https://www.youtube.com/watch?v=hZ1Sg-vyE8I&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=19', '2020-05-31 15:44:48', '2020-05-31 15:44:48'),
(86, 17, 42, 2, '11-May-2020', 'https://youtu.be/2ydbSDKndgI', '2020-05-31 15:45:00', '2020-05-31 15:45:00'),
(87, 17, 42, 2, '18-May-2020', 'https://www.youtube.com/watch?v=yg0pomXdRIE&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=18', '2020-05-31 15:45:12', '2020-05-31 15:45:12'),
(88, 17, 43, 2, '12-May-2020', 'https://www.youtube.com/watch?v=EKH5zVkprj8&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=12', '2020-05-31 15:45:26', '2020-05-31 15:45:26'),
(89, 17, 43, 2, '19-May-2020', 'https://www.youtube.com/watch?v=_EVx--pe14k&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=21', '2020-05-31 15:45:36', '2020-05-31 15:45:36'),
(90, 17, 43, 2, '21-May-2020', 'https://www.youtube.com/watch?v=5_Mf1dRjIqU&list=PLdX41zbXyvpW473fksdxBM2WJ6tkC8aN7&index=25', '2020-05-31 15:46:21', '2020-05-31 15:46:21'),
(91, 18, 45, 2, '02-May-2020', 'https://www.youtube.com/watch?v=urzS6iEQnUU&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx', '2020-05-31 15:47:51', '2020-05-31 15:47:51'),
(92, 18, 45, 2, '04-May-2020', 'https://youtu.be/vBgsTpHsvII', '2020-05-31 15:48:03', '2020-05-31 15:48:03'),
(93, 18, 45, 2, '14-May-2020', 'https://www.youtube.com/watch?v=ZueNHO4F25U&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=35', '2020-05-31 15:48:13', '2020-05-31 15:48:13'),
(94, 18, 45, 2, '15-May-2020', 'https://www.youtube.com/watch?v=QJaEgRLuIVM&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=38', '2020-05-31 15:48:25', '2020-05-31 15:48:25'),
(95, 18, 46, 2, '02-May-2020', 'https://www.youtube.com/watch?v=s1Sv9Y4u5cg&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx', '2020-05-31 15:48:43', '2020-05-31 15:48:43'),
(96, 18, 46, 2, '04-May-2020', 'https://youtu.be/dh1Gk7g3wvY', '2020-05-31 15:48:59', '2020-05-31 15:48:59'),
(97, 18, 46, 2, '06-May-2020', 'https://youtu.be/dWSA2AcJ9zM', '2020-05-31 15:49:10', '2020-05-31 15:49:10'),
(98, 18, 46, 2, '08-May-2020', 'https://youtu.be/c5C8J-oyQ1k', '2020-05-31 15:49:27', '2020-05-31 15:49:27'),
(99, 18, 46, 2, '10-May-2020', 'https://youtu.be/ilNpWwKRjxE', '2020-05-31 15:49:41', '2020-05-31 15:49:41'),
(100, 18, 46, 2, '12-May-2020', 'https://www.youtube.com/watch?v=XbOCzw4AOjU&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=34', '2020-05-31 15:49:54', '2020-05-31 15:49:54'),
(101, 18, 46, 2, '14-May-2020', 'https://www.youtube.com/watch?v=tYXSXYkHAZA&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=37', '2020-05-31 15:50:07', '2020-05-31 15:50:07'),
(102, 18, 46, 2, '16-May-2020', 'https://www.youtube.com/watch?v=uOad5a0dozo&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=41', '2020-05-31 15:50:18', '2020-05-31 15:50:18'),
(103, 18, 46, 2, '18-May-2020', 'https://www.youtube.com/watch?v=ADz6bdPRxDI&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=43', '2020-05-31 15:50:31', '2020-05-31 15:50:31'),
(104, 18, 46, 2, '20-May-2020', 'https://www.youtube.com/watch?v=EVSCN9D7Vg8&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=46', '2020-05-31 15:50:43', '2020-05-31 15:50:43'),
(105, 18, 47, 2, '02-May-2020', 'https://youtu.be/FaaM6HaNbtY', '2020-05-31 15:51:26', '2020-05-31 15:51:26'),
(106, 18, 47, 2, '07-May-2020', 'https://youtu.be/kmN_6gZ2fCg', '2020-05-31 15:51:36', '2020-05-31 15:51:36'),
(107, 18, 47, 2, '15-May-2020', 'https://www.youtube.com/watch?v=2cwba-xW_PA&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=43', '2020-05-31 15:51:46', '2020-05-31 15:51:46'),
(108, 18, 47, 2, '19-May-2020', 'https://www.youtube.com/watch?v=v80dteDjzbg&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=45', '2020-05-31 15:51:59', '2020-05-31 15:51:59'),
(109, 18, 48, 2, '02-May-2020', 'https://www.youtube.com/watch?v=XaR9g8q9qrI&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx', '2020-05-31 15:52:17', '2020-05-31 15:52:17'),
(110, 18, 48, 2, '04-May-2020', 'https://youtu.be/p_pJkUvCmtc', '2020-05-31 15:52:30', '2020-05-31 15:52:30'),
(111, 18, 48, 2, '09-May-2020', 'https://youtu.be/K-4UMyUKeoY', '2020-05-31 15:52:43', '2020-05-31 15:52:43'),
(112, 18, 48, 2, '12-May-2020', 'https://www.youtube.com/watch?v=uUq6kYPSJ6k&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=35', '2020-05-31 15:52:54', '2020-05-31 15:52:54'),
(113, 18, 48, 2, '16-May-2020', 'https://www.youtube.com/watch?v=xeqxZzQN_dU&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=42', '2020-05-31 15:53:05', '2020-05-31 15:53:05'),
(114, 18, 48, 2, '18-May-2020', 'https://www.youtube.com/watch?v=UE2ogWK-GwY&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=44', '2020-05-31 15:53:16', '2020-05-31 15:53:16'),
(115, 18, 48, 2, '20-May-2020', 'https://www.youtube.com/watch?v=Yy0ciLboMN0&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=48', '2020-05-31 15:53:32', '2020-05-31 15:53:32'),
(116, 18, 49, 2, '14-May-2020', 'https://www.youtube.com/watch?v=bID_YuNfaN8&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=36', '2020-05-31 15:53:46', '2020-05-31 15:53:46'),
(117, 18, 49, 2, '20-May-2020', 'https://www.youtube.com/watch?v=UJr71tqMby8&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=47', '2020-05-31 15:53:57', '2020-05-31 15:53:57'),
(118, 18, 49, 2, '21-May-2020', 'https://www.youtube.com/watch?v=bcMjc1G63wU&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=49', '2020-05-31 15:54:13', '2020-05-31 15:54:13'),
(119, 18, 50, 2, '02-May-2020', 'https://www.youtube.com/watch?v=0BneXUSbYhY&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx', '2020-05-31 15:54:32', '2020-05-31 15:54:32'),
(120, 18, 50, 2, '05-May-2020', 'https://youtu.be/0PN3K8uFnX4', '2020-05-31 15:54:42', '2020-05-31 15:54:42'),
(121, 18, 50, 2, '09-May-2020', 'https://youtu.be/OEappePqZaU', '2020-05-31 15:54:54', '2020-05-31 15:54:54'),
(122, 18, 50, 2, '12-May-2020', 'https://www.youtube.com/watch?v=M6Iu_G42i1Q&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=32', '2020-05-31 15:55:07', '2020-05-31 15:55:07'),
(123, 18, 50, 2, '16-May-2020', 'https://www.youtube.com/watch?v=z75IvC8jJ9g&list=PLdX41zbXyvpXeRbPP_jmEIbYBUu_9ASMx&index=40', '2020-05-31 15:55:18', '2020-05-31 15:55:18'),
(124, 19, 52, 2, '19-May-2020', 'https://www.youtube.com/watch?v=gmM9ViaHf3Q&list=PLdX41zbXyvpVRoVHY8QWy-p72J1SaWw32&index=2', '2020-05-31 15:58:04', '2020-05-31 15:58:04'),
(125, 19, 52, 2, '20-May-2020', 'https://www.youtube.com/watch?v=2VsMBRm_9W0&list=PLdX41zbXyvpVRoVHY8QWy-p72J1SaWw32&index=3', '2020-05-31 15:58:27', '2020-05-31 15:58:27'),
(126, 19, 52, 2, '21-May-2020', 'https://www.youtube.com/watch?v=8RGmPZYZnQI&list=PLdX41zbXyvpVRoVHY8QWy-p72J1SaWw32&index=4', '2020-05-31 15:58:39', '2020-05-31 15:58:39'),
(127, 19, 58, 2, '10-May-2020', 'https://youtu.be/abNcKX7oa_s', '2020-05-31 15:58:58', '2020-05-31 15:58:58'),
(128, 19, 58, 2, '15-May-2020', 'https://www.youtube.com/watch?v=tamXq3pMSPs&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=16', '2020-05-31 15:59:10', '2020-05-31 15:59:10'),
(129, 19, 58, 2, '18-May-2020', 'https://www.youtube.com/watch?v=Ks4fjlu9lzk&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=21', '2020-05-31 15:59:21', '2020-05-31 15:59:21'),
(130, 19, 59, 2, '09-May-2020', 'https://youtu.be/mrasGL93z5A', '2020-05-31 15:59:41', '2020-05-31 15:59:41'),
(131, 19, 59, 2, '13-May-2020', 'https://www.youtube.com/watch?v=SnzY_RTWDJM&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=15', '2020-05-31 15:59:52', '2020-05-31 15:59:52'),
(132, 19, 59, 2, '17-May-2020', 'https://www.youtube.com/watch?v=GnRre6vewE8&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=19', '2020-05-31 16:00:04', '2020-05-31 16:00:04'),
(133, 19, 60, 2, '05-May-2020', 'https://youtu.be/sqo-G6Poe74', '2020-05-31 16:00:16', '2020-05-31 16:00:16'),
(134, 19, 60, 2, '13-May-2020', 'https://www.youtube.com/watch?v=s5uC6euwbA8&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=14', '2020-05-31 16:00:29', '2020-05-31 16:00:29'),
(135, 19, 60, 2, '19-May-2020', 'https://www.youtube.com/watch?v=AHbRYA0xbXM&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=22', '2020-05-31 16:00:45', '2020-05-31 16:00:45'),
(136, 19, 61, 2, '10-May-2020', 'https://youtu.be/TurwNjFhCOw', '2020-05-31 16:00:57', '2020-05-31 16:00:57'),
(137, 19, 61, 2, '17-May-2020', 'https://www.youtube.com/watch?v=-H_XZg3AfX4&list=PLdX41zbXyvpUFihahntLNzjcVTY2hyaoU&index=17', '2020-05-31 16:01:10', '2020-05-31 16:01:10'),
(138, 19, 65, 2, '12-May-2020', 'https://www.youtube.com/watch?v=AJeFAsTvw-0&list=PLdX41zbXyvpVgdRqHSGS1Ko1ddLPngwgL&index=4', '2020-05-31 16:01:29', '2020-05-31 16:01:29'),
(139, 19, 65, 2, '15-May-2020', 'https://www.youtube.com/watch?v=FB6Dq7fOuEM&list=PLdX41zbXyvpVgdRqHSGS1Ko1ddLPngwgL&index=6', '2020-05-31 16:01:39', '2020-05-31 16:01:39'),
(140, 19, 66, 2, '12-May-2020', 'https://www.youtube.com/watch?v=MVQwbkVoFKY&list=PLdX41zbXyvpVgdRqHSGS1Ko1ddLPngwgL&index=6', '2020-05-31 16:01:54', '2020-05-31 16:01:54'),
(141, 19, 67, 2, '16-May-2020', 'https://www.youtube.com/watch?v=hbrt86ll7K0&list=PLdX41zbXyvpVgdRqHSGS1Ko1ddLPngwgL&index=7', '2020-05-31 16:02:08', '2020-05-31 16:02:08'),
(142, 19, 67, 2, '18-May-2020', 'https://www.youtube.com/watch?v=yxpmRNNh-_k&list=PLdX41zbXyvpVgdRqHSGS1Ko1ddLPngwgL&index=9', '2020-05-31 16:02:17', '2020-05-31 16:02:17'),
(143, 19, 68, 2, '10-May-2020', 'https://youtu.be/GKJ2-PQ_OEE', '2020-05-31 16:02:28', '2020-05-31 16:02:28'),
(144, 19, 68, 2, '16-May-2020', 'https://www.youtube.com/watch?v=OjnGvmPXeBk&list=PLdX41zbXyvpVgdRqHSGS1Ko1ddLPngwgL&index=8', '2020-05-31 16:02:37', '2020-05-31 16:02:37'),
(145, 20, 69, 2, '04-May-2020', 'https://youtu.be/fvz50QqPmHI', '2020-05-31 16:06:43', '2020-05-31 16:06:43'),
(146, 20, 69, 2, '08-May-2020', 'https://youtu.be/yod_biDBpOA', '2020-05-31 16:06:52', '2020-05-31 16:06:52'),
(147, 20, 69, 2, '12-May-2020', 'https://www.youtube.com/watch?v=kN7Ofh4twkA&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=14', '2020-05-31 16:07:04', '2020-05-31 16:07:04'),
(148, 20, 69, 2, '13-May-2020', 'https://www.youtube.com/watch?v=yUNv2TFrseI&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=17', '2020-05-31 16:07:12', '2020-05-31 16:07:12'),
(149, 20, 69, 2, '15-May-2020', 'https://www.youtube.com/watch?v=RM0YCDyCQuU&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=19', '2020-05-31 16:07:23', '2020-05-31 16:07:23'),
(150, 20, 71, 2, '02-May-2020', 'https://www.youtube.com/watch?v=fPl7RMg5nxM&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=4&t=0s', '2020-05-31 16:07:47', '2020-05-31 16:07:47'),
(151, 20, 71, 2, '04-May-2020', 'https://youtu.be/uVaH8Lgk6ag', '2020-05-31 16:08:04', '2020-05-31 16:08:04'),
(152, 20, 71, 2, '08-May-2020', 'https://youtu.be/UaCpeSJH4A4', '2020-05-31 16:08:30', '2020-05-31 16:08:30'),
(153, 20, 71, 2, '10-May-2020', 'https://youtu.be/dOp_ZhJjfss', '2020-05-31 16:08:41', '2020-05-31 16:08:41'),
(154, 20, 71, 2, '12-May-2020', 'https://www.youtube.com/watch?v=IKYB6YMVE8c&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=16', '2020-05-31 16:08:54', '2020-05-31 16:08:54'),
(155, 20, 71, 2, '14-May-2020', 'https://www.youtube.com/watch?v=HnKz2kOMpYU&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=19', '2020-05-31 16:09:06', '2020-05-31 16:09:06'),
(156, 20, 71, 2, '16-May-2020', 'https://www.youtube.com/watch?v=0DBG_UpxX8Y&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=20', '2020-05-31 16:09:17', '2020-05-31 16:09:17'),
(157, 20, 71, 2, '18-May-2020', 'https://www.youtube.com/watch?v=ya7Dg4BebOQ&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=21', '2020-05-31 16:09:31', '2020-05-31 16:09:31'),
(158, 20, 71, 2, '20-May-2020', 'https://www.youtube.com/watch?v=LlmrJgF-gRA&list=PLdX41zbXyvpXDf0xnBIDHY8IedNlnFjRp&index=22', '2020-05-31 16:09:43', '2020-05-31 16:09:43'),
(159, 20, 75, 2, '05-May-2020', 'https://youtu.be/TQJpxQ3oAFA', '2020-05-31 16:09:59', '2020-05-31 16:09:59'),
(160, 20, 75, 2, '08-May-2020', 'https://youtu.be/mN44wZu9fMk', '2020-05-31 16:10:09', '2020-05-31 16:10:09'),
(161, 20, 75, 2, '14-May-2020', 'https://www.youtube.com/watch?v=WLEDdC1QvwQ&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=17', '2020-05-31 16:10:19', '2020-05-31 16:10:19'),
(162, 20, 75, 2, '19-May-2020', 'https://www.youtube.com/watch?v=J0aOgpoZf4U&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=19', '2020-05-31 16:10:30', '2020-05-31 16:10:30'),
(163, 20, 76, 2, '02-May-2020', 'https://www.youtube.com/watch?v=e56VbehFPnk&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=2&t=0s', '2020-05-31 16:15:42', '2020-05-31 16:15:42'),
(164, 20, 76, 2, '03-May-2020', 'https://youtu.be/WKNHkSrEcVE', '2020-05-31 16:16:02', '2020-05-31 16:16:02'),
(165, 20, 76, 2, '07-May-2020', 'https://youtu.be/ysvMk5tCvJU', '2020-05-31 16:16:14', '2020-05-31 16:16:14'),
(166, 20, 76, 2, '16-May-2020', 'https://www.youtube.com/watch?v=HraTulnVHlk&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=18', '2020-05-31 16:16:25', '2020-05-31 16:16:25'),
(167, 20, 77, 2, '05-May-2020', 'https://youtu.be/PLL7I7q9pMs', '2020-05-31 16:16:40', '2020-05-31 16:16:40'),
(168, 20, 77, 2, '12-May-2020', 'https://www.youtube.com/watch?v=rl1wLJITigY&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=15', '2020-05-31 16:16:54', '2020-05-31 16:16:54'),
(169, 20, 77, 2, '19-May-2020', 'https://www.youtube.com/watch?v=Z5EckylSiAY&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=20', '2020-05-31 16:17:06', '2020-05-31 16:17:06'),
(170, 20, 78, 2, '03-May-2020', 'https://youtu.be/wpBn3EeUXcY', '2020-05-31 16:17:24', '2020-05-31 16:17:24'),
(171, 20, 78, 2, '11-May-2020', 'https://youtu.be/76t66FcyJN8', '2020-05-31 16:17:39', '2020-05-31 16:17:39'),
(172, 20, 78, 2, '16-May-2020', 'https://www.youtube.com/watch?v=Mx69Es-i_cA&list=PLdX41zbXyvpVvD-XMnXKFreAEsnqwQKzi&index=17', '2020-05-31 16:17:53', '2020-05-31 16:17:53'),
(173, 20, 82, 2, '02-May-2020', 'https://www.youtube.com/watch?v=BzzZ6qZqNGk&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=2&t=0s', '2020-05-31 16:18:31', '2020-05-31 16:18:31'),
(174, 20, 82, 2, '05-May-2020', 'https://youtu.be/cQCR5F_Xbhg', '2020-05-31 16:19:31', '2020-05-31 16:19:31'),
(175, 20, 82, 2, '09-May-2020', 'https://youtu.be/rd5YudLyicE', '2020-05-31 16:19:48', '2020-05-31 16:19:48'),
(176, 20, 82, 2, '12-May-2020', 'https://www.youtube.com/watch?v=kVpmO4NGClU&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=14', '2020-05-31 16:19:58', '2020-05-31 16:19:58'),
(177, 20, 82, 2, '15-May-2020', 'https://www.youtube.com/watch?v=p7k3zia41_8&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=17', '2020-05-31 16:20:08', '2020-05-31 16:20:08'),
(178, 20, 83, 2, '05-May-2020', 'https://youtu.be/k5_jty0Uy4g', '2020-05-31 16:20:25', '2020-05-31 16:20:25'),
(179, 20, 83, 2, '12-May-2020', 'https://www.youtube.com/watch?v=nqBl_1nUEuU&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=15', '2020-05-31 16:20:35', '2020-05-31 16:20:35'),
(180, 20, 83, 2, '15-May-2020', 'https://www.youtube.com/watch?v=4DptiudC3NU&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=18', '2020-05-31 16:20:46', '2020-05-31 16:20:46'),
(181, 20, 84, 2, '02-May-2020', 'https://www.youtube.com/watch?v=3YG8vSmi4vg&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=3&t=0s', '2020-05-31 16:21:04', '2020-05-31 16:21:04'),
(182, 20, 84, 2, '09-May-2020', 'https://youtu.be/Q-2fuYuKCmA', '2020-05-31 16:21:16', '2020-05-31 16:21:16'),
(183, 20, 85, 2, '13-May-2020', 'https://www.youtube.com/watch?v=7u6kcDweLgs&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=16', '2020-05-31 16:21:28', '2020-05-31 16:21:28'),
(184, 20, 85, 2, '19-May-2020', 'https://www.youtube.com/watch?v=f6LZ0HqcEnU&list=PLdX41zbXyvpX040-Dl3LTb2sjl02oOWGp&index=19', '2020-05-31 16:21:40', '2020-05-31 16:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_06_080535_create_allvideos_table', 1),
(5, '2020_05_06_081308_create_allclasses_table', 1),
(6, '2020_05_06_081741_create_allsubjects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'MD TAJMUL', 'tajmul.ledp@gmail.com', NULL, '$2y$10$PzB.8SDYG0rkETYJJxImSuRpJ8aUXTWHO2IsT47PNM9wQqtjfwyF.', 'B6hlPn6lcks3bIPrLm3qh2vvsbqGe2OQN6brCEoac8aiR7fWxU2CpDrs1aHC', '2020-05-31 01:02:30', '2020-05-31 01:02:30'),
(3, 'Shikkha School Rajshahi', 'sscraj2013@gmail.om', NULL, '$2y$10$ctK2X80Q3MQJ1sAGv.zXAOxNlCUs6MSPMc57kHgN2D7Byi9v52TtW', NULL, '2020-05-31 02:35:36', '2020-05-31 02:35:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allclasses`
--
ALTER TABLE `allclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allsubjects`
--
ALTER TABLE `allsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allvideos`
--
ALTER TABLE `allvideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allclasses`
--
ALTER TABLE `allclasses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `allsubjects`
--
ALTER TABLE `allsubjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `allvideos`
--
ALTER TABLE `allvideos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
