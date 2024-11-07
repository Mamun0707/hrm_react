-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 09:13 AM
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
-- Database: `hrm_react`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) NOT NULL,
  `check_in` time DEFAULT NULL,
  `shift` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `name`, `employee_id`, `department`, `check_in`, `shift`, `status`, `created_at`, `updated_at`) VALUES
(9, '1', 1, 'Finance', '12:05:00', 'Morning', 'Active', '2024-10-27 00:05:31', '2024-10-27 00:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `head_of_dept` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `total_emp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_name`, `head_of_dept`, `phone`, `email`, `total_emp`, `created_at`, `updated_at`) VALUES
(1, 'Hrm', 'MMM', '4564', 'mmm@gmail.com', '30', '2024-10-15 22:16:20', '2024-10-15 22:16:20'),
(2, 'IR', 'fc', '+1234567890', 'wdpfr59@gmail.com', '30', '2024-10-15 22:22:16', '2024-10-15 22:22:16'),
(46, 'IR', 'kasem', '015', 'kasem09@gmail.com', '15', '2024-10-27 22:04:56', '2024-10-27 22:04:56'),
(47, 'I.T', 'Harun', '01316752707', 'it@gmail.com', '55', '2024-10-29 22:58:49', '2024-10-29 22:58:49'),
(48, 'Sales', 'Shafkat', '01554308923', 'shafkat@gmail.com', '22', '2024-10-29 22:59:29', '2024-10-29 22:59:29'),
(49, 'Hrm', 'Ramzan', '55555', 'ramzan@gmail.com', '2', '2024-11-06 22:28:34', '2024-11-06 22:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desi_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `desi_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Junior', 'sdfarfs', NULL, '2024-11-07 01:17:41', '2024-11-07 01:17:41'),
(2, 'Junior', 'Mens Collection', NULL, '2024-11-07 01:28:34', '2024-11-07 01:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `hire_date` varchar(255) NOT NULL,
  `job_location` varchar(255) NOT NULL,
  `designation_id` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `basic` decimal(8,2) DEFAULT NULL,
  `provident_fund` decimal(8,2) NOT NULL,
  `medical` decimal(8,2) NOT NULL,
  `h_rent` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active 2 inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_no`, `date_of_birth`, `age`, `hire_date`, `job_location`, `designation_id`, `department_id`, `education`, `address`, `basic`, `provident_fund`, `medical`, `h_rent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NVIT WDPF R59', 'wdpfr59@gmail.com', '12345', '2003-01-01', '21', '2024-11-01', '2 no gate', NULL, '2', 'SSC', '2No Gate, NVIT, Chittagong', 20000.00, 500.00, 500.00, 5000.00, 1, '2024-11-07 00:36:43', '2024-11-07 00:36:43'),
(2, 'Abdul Al Mamun', 'abdulalmamun637@gmail.com', '01675437902', '1996-04-01', '28', '2024-11-01', '2 no gate', '1', '1', 'Master\'s', '2No Gate, NVIT, Chittagong', 20000.00, 500.00, 500.00, 5000.00, 1, '2024-11-07 01:33:29', '2024-11-07 01:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `employee_id`, `title`, `type`, `start_date`, `end_date`, `details`, `created_at`, `updated_at`) VALUES
(5, 1, 'eid ul adha', 'public holidays', '2024-10-01', '2024-10-05', 'Active', '2024-10-29 23:18:31', '2024-10-29 23:18:31'),
(6, 2, 'Eid ul Fitar', 'public holidays', '2024-10-01', '2024-10-05', 'Active', '2024-10-29 23:19:16', '2024-10-29 23:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `leave_management`
--

CREATE TABLE `leave_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `apply_date` date NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_type` enum('sick','vacation','personal','maternity','paternity') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_management`
--

INSERT INTO `leave_management` (`id`, `employee_id`, `name`, `apply_date`, `leave_from`, `leave_to`, `leave_type`, `created_at`, `updated_at`) VALUES
(3, 1234, 'raza', '2024-10-10', '0000-00-00', '0000-00-00', 'sick', '2024-10-13 22:09:48', '2024-10-13 22:09:48'),
(4, 1234, 'raza', '2024-10-10', '0000-00-00', '0000-00-00', 'sick', '2024-10-13 22:09:49', '2024-10-13 22:09:49'),
(5, 20202, 'Abdul Al Mamun', '2024-10-02', '2024-10-08', '2024-10-16', 'sick', '2024-10-13 23:06:33', '2024-10-13 23:06:33'),
(6, 12345, 'Abdul Al Mamun', '2024-10-14', '2024-10-15', '2024-10-19', 'personal', '2024-10-16 22:39:44', '2024-10-16 22:39:44'),
(7, 1, 'Abdul Al Mamun', '2024-10-10', '2024-10-05', '2024-10-02', 'sick', '2024-10-26 01:18:08', '2024-10-26 01:18:08'),
(8, 2, '2', '2024-10-04', '2024-10-05', '2024-10-25', 'vacation', '2024-10-26 23:56:11', '2024-10-26 23:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_10_09_033336_create_projects_table', 3),
(8, '2024_10_09_041328_create_projects_table', 4),
(12, '2024_10_14_031831_create_leave_management_table', 6),
(13, '2024_10_14_054434_create_holidays_table', 7),
(15, '2024_10_15_074143_create_departments_table', 8),
(18, '2024_10_12_040440_create_attendances_table', 10),
(21, '2019_08_19_000000_create_failed_jobs_table', 12),
(23, '2024_10_24_043139_create_resignations_table', 13),
(26, '2024_10_16_082133_create_payrolls_table', 15),
(32, '2024_10_02_061047_create_employees_table', 16),
(35, '2024_11_06_035127_create_designations_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `basic` decimal(8,2) NOT NULL,
  `h_rent` decimal(8,2) NOT NULL,
  `medical` decimal(8,2) NOT NULL,
  `fine` decimal(8,2) NOT NULL DEFAULT 0.00,
  `conveyance` decimal(8,2) NOT NULL,
  `provident_fund` decimal(8,2) NOT NULL,
  `net_pay` decimal(8,2) NOT NULL,
  `pay_period_start` date NOT NULL,
  `pay_period_end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `employee_id`, `basic`, `h_rent`, `medical`, `fine`, `conveyance`, `provident_fund`, `net_pay`, `pay_period_start`, `pay_period_end`, `created_at`, `updated_at`) VALUES
(2, 2, 0.00, 5000.00, 1000.00, 500.00, 750.00, 150.00, 50.00, '2010-10-10', '2010-10-20', '2024-10-28 00:39:59', '2024-10-28 00:39:59'),
(3, 3, 10000.00, 5000.00, 1000.00, 500.00, 750.00, 150.00, 50.00, '2010-10-10', '2010-10-20', '2024-10-28 00:41:14', '2024-10-28 00:41:14'),
(5, 2, 20000.00, 5000.00, 500.00, 1000.00, 1250.00, 500.00, 1000.00, '2024-10-01', '2024-10-31', '2024-10-29 00:46:25', '2024-10-29 00:46:25'),
(8, 1, 20000.00, 5000.00, 500.00, 1000.00, 1250.00, 500.00, 1000.00, '2024-10-01', '2024-10-31', '2024-10-29 22:15:43', '2024-10-29 22:15:43'),
(9, 1, 20000.00, 5000.00, 500.00, 1000.00, 1250.00, 500.00, 1000.00, '2024-10-01', '2024-10-31', '2024-10-29 22:22:38', '2024-10-29 22:22:38'),
(10, 3, 10000.00, 5000.00, 1000.00, 500.00, 750.00, 150.00, 50.00, '2010-10-10', '2010-10-20', '2024-10-30 00:41:01', '2024-10-30 00:41:01'),
(12, 5, 20000.00, 5000.00, 500.00, 1000.00, 1250.00, 500.00, 1000.00, '2024-11-01', '2024-11-30', '2024-11-04 21:21:54', '2024-11-04 21:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'hosp', '9027486c6d4ed124631156ec1e40d945648e232bc74879b4f5499a5e8d3934e8', '[\"*\"]', NULL, NULL, '2024-09-30 23:27:15', '2024-09-30 23:27:15'),
(2, 'App\\Models\\User', 1, 'hosp', '93afcdb4f959e15d36b2a10c4eb0cc3e197d1b2e56540923c65b19f73bc47ed6', '[\"*\"]', NULL, NULL, '2024-09-30 23:59:57', '2024-09-30 23:59:57'),
(3, 'App\\Models\\User', 1, 'hosp', 'f1b621eb153b3aaeaa3750f2a5fb889f9219976bd540ecb49ff9679f9227b0f3', '[\"*\"]', NULL, NULL, '2024-09-30 23:59:58', '2024-09-30 23:59:58'),
(4, 'App\\Models\\User', 1, 'hosp', '71c23540475f925de52cc527f82fbf3f547ed051c05ada56fb9c5eb2e3c9e56f', '[\"*\"]', NULL, NULL, '2024-10-01 00:01:26', '2024-10-01 00:01:26'),
(5, 'App\\Models\\User', 1, 'hosp', '6562fefde4aa7ffdff2859b85ba075a002fc9d8d08f7130d831f9d45b986c4cf', '[\"*\"]', NULL, NULL, '2024-10-01 00:02:42', '2024-10-01 00:02:42'),
(6, 'App\\Models\\User', 1, 'hosp', '8df63b7fed0d8e256e1bc973ac60705c83416c51aef284cb0caf96da0ae99b13', '[\"*\"]', NULL, NULL, '2024-10-01 00:06:44', '2024-10-01 00:06:44'),
(7, 'App\\Models\\User', 1, 'hosp', '59c9feae99fbda08c0be4af138758d54bff7819293f108a5ba27e053a4d764fd', '[\"*\"]', NULL, NULL, '2024-10-01 21:28:24', '2024-10-01 21:28:24'),
(8, 'App\\Models\\User', 1, 'hosp', '4d279483a4156311c23283967266405d97fe3a8aec38c9704d8c25219adf7a84', '[\"*\"]', NULL, NULL, '2024-10-02 22:08:35', '2024-10-02 22:08:35'),
(9, 'App\\Models\\User', 1, 'hosp', '62c4ae1313a270849220fb6cc32476587e2f43b685437a3fac59a7275a2204ca', '[\"*\"]', NULL, NULL, '2024-10-02 23:13:10', '2024-10-02 23:13:10'),
(10, 'App\\Models\\User', 1, 'hosp', '8b164c0123de940b4a286b91d83d1aa370d7f0c6cb64411b9dbccac8c8ceff0b', '[\"*\"]', NULL, NULL, '2024-10-02 23:14:46', '2024-10-02 23:14:46'),
(11, 'App\\Models\\User', 1, 'hosp', '0cf55cc4c72e2a52c2e3a8bca3c1c32552307dda447fb6fc9c4664fabba75f58', '[\"*\"]', NULL, NULL, '2024-10-02 23:21:21', '2024-10-02 23:21:21'),
(12, 'App\\Models\\User', 2, 'hosp', 'df7d232c7ea290a7a3d4269ab5c56320e2d67021d9003a0a958226448ead38d9', '[\"*\"]', NULL, NULL, '2024-10-03 00:49:28', '2024-10-03 00:49:28'),
(13, 'App\\Models\\User', 2, 'hosp', '5d610717d2569e3e84c33ac83324bf1cfb35bb231121bb9b43a00b9bd618c9aa', '[\"*\"]', NULL, NULL, '2024-10-03 00:49:48', '2024-10-03 00:49:48'),
(14, 'App\\Models\\User', 3, 'hosp', '1af6157f2b4b50e2383477a190b051da4df0ffb09000d9e1fb59a1c2bc891dea', '[\"*\"]', NULL, NULL, '2024-10-03 00:53:25', '2024-10-03 00:53:25'),
(15, 'App\\Models\\User', 3, 'hosp', '6f347766a5a6a6c1e5236996c5f2bae932eed32591f5fb1ed308822e85ed2926', '[\"*\"]', NULL, NULL, '2024-10-03 00:53:35', '2024-10-03 00:53:35'),
(16, 'App\\Models\\User', 1, 'hosp', '0f68e9a365e51e6ead359e185f74c64228cddd82a8656c13e2c43ab2d0bf7942', '[\"*\"]', NULL, NULL, '2024-10-04 21:21:25', '2024-10-04 21:21:25'),
(17, 'App\\Models\\User', 1, 'hosp', 'b64e55213078889e40f9b1bd9dd8bfc85d9dd6fe2935908f8743cbfe2b6718e9', '[\"*\"]', NULL, NULL, '2024-10-07 00:05:16', '2024-10-07 00:05:16'),
(18, 'App\\Models\\User', 1, 'hosp', '0109448ad604bcacc735d7e45ef8aa2995b597cc5368de725d0cdadc9f51515d', '[\"*\"]', NULL, NULL, '2024-10-16 01:23:49', '2024-10-16 01:23:49'),
(19, 'App\\Models\\User', 1, 'hosp', '4cb487429b8fd569c612e77818c75187c7cb07a76b6f628af8f6a226dc5abd97', '[\"*\"]', NULL, NULL, '2024-10-16 02:19:31', '2024-10-16 02:19:31'),
(20, 'App\\Models\\User', 1, 'hosp', '34d72694c5e6d61a8eb62e2d1719d9f917591b2e6f51de49be85ec42481adab4', '[\"*\"]', NULL, NULL, '2024-10-16 21:11:02', '2024-10-16 21:11:02'),
(21, 'App\\Models\\User', 1, 'hosp', 'd059d31919ed8b72e0e3403e4374ae6541d0cec6181594fa455243baf42e68e7', '[\"*\"]', NULL, NULL, '2024-10-16 21:47:25', '2024-10-16 21:47:25'),
(22, 'App\\Models\\User', 1, 'hosp', '7741248144bf8b74418d7aa6e422d9cb2cf9f65e0891e0e56998f34357b29e1e', '[\"*\"]', NULL, NULL, '2024-10-16 21:51:30', '2024-10-16 21:51:30'),
(23, 'App\\Models\\User', 1, 'hosp', 'f09d92a7edf0dbef15f68e98bf20559b182a179a7afd389c84d4393080a9dc98', '[\"*\"]', NULL, NULL, '2024-10-16 22:31:37', '2024-10-16 22:31:37'),
(24, 'App\\Models\\User', 1, 'hosp', '81f130a15990bc4ae8dbf4cff498117776d08b852db80aea13980a60ac760840', '[\"*\"]', NULL, NULL, '2024-10-27 00:15:11', '2024-10-27 00:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `deadline` bigint(20) DEFAULT NULL,
  `team_member` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `client_name`, `deadline`, `team_member`, `status`, `created_at`, `updated_at`) VALUES
(8, 'New Project', 'Tanmoy', 10, 0, '1', '2024-10-09 01:12:55', '2024-10-09 01:12:55'),
(9, 'New Project', 'Ramzan', 10, 0, 'inactive', '2024-10-09 01:14:57', '2024-10-09 01:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address_to` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `apply_date` date NOT NULL,
  `effect_date` date NOT NULL,
  `approve_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resignations`
--

INSERT INTO `resignations` (`id`, `employee_id`, `title`, `address_to`, `details`, `apply_date`, `effect_date`, `approve_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'vgdfvdf', 'Department Head', 'waste of time', '2024-10-05', '2024-10-05', '2024-10-26', 'inactive', '2024-10-24 01:42:11', '2024-10-24 01:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mamun', 'mamun@gmail.com', NULL, '$2y$12$v1PDDxu08a0luxi2fIwCP.FfgJTAQ9k/Y6oNpOVEKW1XhvZrlUkWC', NULL, '2024-09-30 23:27:14', '2024-09-30 23:27:14'),
(2, 'Abdul Al Mamun', 'wdpfr59@gmail.com', NULL, '$2y$12$1VzesBRHqWfyqkQL.3VGR.66Q1F6TiEii.tzMIJJxmHgD9CaiZq.6', NULL, '2024-10-03 00:49:27', '2024-10-03 00:49:27'),
(3, 'any', 'any@gmail.com', NULL, '$2y$12$pTCiHTJFKD9zAktn.ZfgJOdu4CJXbKwwJLklo2ovAYT0pFERM7a0W', NULL, '2024-10-03 00:53:25', '2024-10-03 00:53:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_email_unique` (`email`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_management`
--
ALTER TABLE `leave_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_management`
--
ALTER TABLE `leave_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
