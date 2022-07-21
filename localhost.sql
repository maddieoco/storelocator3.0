-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2022 at 08:17 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storefinder`
--
CREATE DATABASE IF NOT EXISTS `storefinder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `storefinder`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_24_092245_create_permission_tables', 2),
(5, '2020_12_22_132517_create_initial_surveys_table', 3),
(6, '2020_12_22_133314_create_remote_assessments_table', 3),
(7, '2020_12_22_133343_create_ground_proofs_table', 3),
(8, '2019_05_03_000001_create_customer_columns', 4),
(9, '2019_05_03_000002_create_subscriptions_table', 4),
(10, '2019_05_03_000003_create_subscription_items_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 25, 'API Token', '5eeb90815fa4b6e3d6438792bfb0decd1f215998ba1a77a9d60ba3f54440b20e', '[\"*\"]', NULL, '2021-11-22 01:01:50', '2021-11-22 01:01:50'),
(2, 'App\\Models\\User', 26, 'API Token', 'a6e05f543bd918f18a0856d78027074abe719d0e25c0d7bfd3565dc5c027fd29', '[\"*\"]', NULL, '2021-11-22 01:04:42', '2021-11-22 01:04:42'),
(3, 'App\\Models\\User', 26, 'API Token', 'a3bc4e14a54f9b466ff5c1a00cb597e392f84c3e409b8f37f3c3a099941cb43d', '[\"*\"]', NULL, '2021-11-22 01:09:26', '2021-11-22 01:09:26'),
(4, 'App\\Models\\User', 26, 'API Token', '7c181b858210497e384744a9adb050fdd261618eeec181f2fae1961af2131201', '[\"*\"]', NULL, '2021-11-22 02:25:53', '2021-11-22 02:25:53'),
(5, 'App\\Models\\User', 26, 'API Token', 'aa0d09b92d18bd2220f5fc36be578bf5a00a3ada084af368a86665e3f71304bc', '[\"*\"]', NULL, '2021-11-22 02:57:45', '2021-11-22 02:57:45'),
(6, 'App\\Models\\User', 26, 'API Token', '9e9dc91965cc2972e60002364007abf0c46eb54ef7c91695981535ea5e3699db', '[\"*\"]', NULL, '2021-11-22 02:58:15', '2021-11-22 02:58:15'),
(7, 'App\\Models\\User', 26, 'API Token', '8faec17c8ed32dc4b01f502705618a34cceb90f04604760ce51db547d1e48efb', '[\"*\"]', NULL, '2021-11-22 02:58:34', '2021-11-22 02:58:34'),
(8, 'App\\Models\\User', 26, 'API Token', '5cc3a897bfc276bc35d34d6261aa626c0d697bf0c6d6bfa211f3005caa6e4b49', '[\"*\"]', NULL, '2021-11-22 03:01:03', '2021-11-22 03:01:03'),
(9, 'App\\Models\\User', 26, 'API Token', 'b5e1e1c67c229a4c89e0a3e2fc823c3b20403e573557204956eec635a0359135', '[\"*\"]', NULL, '2021-11-22 03:02:37', '2021-11-22 03:02:37'),
(10, 'App\\Models\\User', 26, 'API Token', 'a6eed5c948aa6bd177c36eb0559edd60a25b09b3f28a78a2bed9c5e87193b31e', '[\"*\"]', NULL, '2021-11-22 03:12:13', '2021-11-22 03:12:13'),
(11, 'App\\Models\\User', 26, 'API Token', '8f9bd4640a644e26c73c78936f77d7545349fbdf6b9fc780988cac931f1fa3e2', '[\"*\"]', NULL, '2021-11-22 03:13:05', '2021-11-22 03:13:05'),
(12, 'App\\Models\\User', 26, 'API Token', '3c2ab64631aabb73dfbce8899972d9b9801cfcf389050c6f0fb65eb972d35c25', '[\"*\"]', NULL, '2021-11-29 09:07:10', '2021-11-29 09:07:10'),
(13, 'App\\Models\\User', 26, 'API Token', 'b018bdbf2af188c9c1a4189e3c3e20a483ab83f2d3a0f047d2192aff45a305f7', '[\"*\"]', NULL, '2021-11-30 03:11:39', '2021-11-30 03:11:39'),
(14, 'App\\Models\\User', 26, 'API Token', '11754db67cbbaee859937b302609165e783b094f65b6b5707f3564c99f5310e7', '[\"*\"]', NULL, '2021-11-30 03:12:00', '2021-11-30 03:12:00'),
(15, 'App\\Models\\User', 26, 'API Token', '0d66e40744b36a9c445ce354c3d6655ae053f5591cbecc3c4a53f1be11e17b33', '[\"*\"]', NULL, '2021-11-30 03:29:01', '2021-11-30 03:29:01'),
(16, 'App\\Models\\User', 26, 'API Token', '47d98799111e880ef0894be38f5d4c7fe3ca336459dd171589a3f1305db05f41', '[\"*\"]', NULL, '2021-11-30 03:31:12', '2021-11-30 03:31:12'),
(17, 'App\\Models\\User', 23, 'API Token', '1a62e547582e919c88656c010ec17ab2267930e965af85b74d0ea9e2cbed11ca', '[\"*\"]', NULL, '2021-11-30 03:47:03', '2021-11-30 03:47:03'),
(18, 'App\\Models\\User', 23, 'API Token', 'b739385db0007bc36634d95e97703114ce934ab79cbd983730df3e5106c2daab', '[\"*\"]', NULL, '2021-11-30 03:47:31', '2021-11-30 03:47:31'),
(19, 'App\\Models\\User', 23, 'API Token', 'd4a2e94727869bfd7c86e3c3fc0fd0aae3f07748a5a0e9290ad2082a5e9218b9', '[\"*\"]', NULL, '2021-11-30 07:00:39', '2021-11-30 07:00:39'),
(20, 'App\\Models\\User', 23, 'API Token', 'd10b05955ab60199c649d3b2825666befe464627fea63836237f5b6b22ce455c', '[\"*\"]', NULL, '2021-11-30 07:01:32', '2021-11-30 07:01:32'),
(21, 'App\\Models\\User', 23, 'API Token', '147a87cc5ce8ff078cd90734767c418727397271101fd73a75889a5d1d26cd93', '[\"*\"]', NULL, '2021-11-30 07:02:00', '2021-11-30 07:02:00'),
(22, 'App\\Models\\User', 23, 'API Token', '95d83824a6b213573f56a486eb401a21b5a6508d25272e984313294be149b8ff', '[\"*\"]', NULL, '2021-11-30 07:02:26', '2021-11-30 07:02:26'),
(23, 'App\\Models\\User', 23, 'API Token', '8910bee2ed363481103601225808f635233c73cab4342ecde9b15215a85f523a', '[\"*\"]', NULL, '2021-11-30 07:09:08', '2021-11-30 07:09:08'),
(24, 'App\\Models\\User', 23, 'API Token', '2f6967d3dbc55610963eca61ae82546340a0a91f9f5d65646386d7d272afa7b4', '[\"*\"]', NULL, '2021-11-30 07:09:50', '2021-11-30 07:09:50'),
(25, 'App\\Models\\User', 23, 'API Token', '6baf89a9c078c1bc33bf482bf1ccd111fad65c05e35e089427c48a13e3ee483f', '[\"*\"]', NULL, '2021-11-30 07:10:03', '2021-11-30 07:10:03'),
(26, 'App\\Models\\User', 23, 'API Token', '10cd519363678d4d1d3e78438b20387f6ab69026adad33757c71126fe0bf3955', '[\"*\"]', NULL, '2021-11-30 07:12:04', '2021-11-30 07:12:04'),
(27, 'App\\Models\\User', 23, 'API Token', 'a2cd9ac1f49071ce4596e3262778503bcd2d5666fbee4a962c3788fa482b8355', '[\"*\"]', NULL, '2021-11-30 07:13:53', '2021-11-30 07:13:53'),
(28, 'App\\Models\\User', 23, 'API Token', '018af0bbf9627b432cdcf79fb4aad47341cdadc09519c2dd4145262ba836b0bb', '[\"*\"]', NULL, '2021-11-30 07:15:12', '2021-11-30 07:15:12'),
(29, 'App\\Models\\User', 26, 'API Token', '4d2c296fc2a4f3aec022f9e0487ad8880f2daae385769d986269121b694fd10c', '[\"*\"]', '2021-12-02 05:44:43', '2021-11-30 07:42:03', '2021-12-02 05:44:43'),
(30, 'App\\Models\\User', 26, 'API Token', '206c32ebe94f2c13b6fe756b1d46993ca645d6a1e34fc41da34ba24111b50061', '[\"*\"]', '2021-12-01 02:05:40', '2021-12-01 01:35:10', '2021-12-01 02:05:40'),
(31, 'App\\Models\\User', 23, 'API Token', 'a978ba1bf27b73f521e3f5bff5c6b5171c29451e5249843c3c173f1221b3e4a3', '[\"*\"]', '2021-12-01 02:07:06', '2021-12-01 02:06:48', '2021-12-01 02:07:06'),
(32, 'App\\Models\\User', 23, 'API Token', '636610eaef4099246dd0c2db63753b5ca9806564072d75af75d2eedb78c41b2b', '[\"*\"]', NULL, '2021-12-01 05:57:06', '2021-12-01 05:57:06'),
(33, 'App\\Models\\User', 23, 'API Token', '27bf7ff86d4d10e8f45c9367f57486960bc6772301fe3cde10522e8c2569bdc5', '[\"*\"]', NULL, '2021-12-01 06:00:06', '2021-12-01 06:00:06'),
(34, 'App\\Models\\User', 26, 'API Token', '5b7f565a78941a08ac8099359a180c588a3887f1e0ab0acd2c09d7e8e2f87177', '[\"*\"]', '2021-12-02 05:21:56', '2021-12-01 06:16:03', '2021-12-02 05:21:56'),
(35, 'App\\Models\\User', 23, 'API Token', 'cbc40561fba92f0bb3400bd2238f74e48b50350394424c8dbbc4d8cc02a47e5b', '[\"*\"]', '2021-12-02 05:14:39', '2021-12-01 07:40:47', '2021-12-02 05:14:39'),
(36, 'App\\Models\\User', 26, 'API Token', '9840a0aa2e39e2fce1c0496e7489f86d74f958247966dcb597ba22993e4e3d3c', '[\"*\"]', '2021-12-07 06:19:49', '2021-12-02 05:22:48', '2021-12-07 06:19:49'),
(37, 'App\\Models\\User', 23, 'API Token', '1352ccbc04ea239ed3244770254017ebb38156388b2a6176733251b000721b39', '[\"*\"]', '2021-12-02 07:42:54', '2021-12-02 07:25:00', '2021-12-02 07:42:54'),
(38, 'App\\Models\\User', 23, 'API Token', 'f50d37d9b0a32e3ec84f134df959aa2a213798a2d46a51de058aff25c3c90517', '[\"*\"]', NULL, '2021-12-02 07:50:37', '2021-12-02 07:50:37'),
(39, 'App\\Models\\User', 26, 'API Token', 'f62abc4a448601749f6d39eaa98af80d4d1cab8d13fb537d74b29d2d0dd51c3b', '[\"*\"]', '2021-12-06 01:16:03', '2021-12-06 01:15:11', '2021-12-06 01:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2020-03-18 13:42:29', '2020-03-18 13:42:29'),
(2, 'endUser', 'web', '2020-03-18 13:42:29', '2020-03-18 13:42:29'),
(3, 'supplier', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int UNSIGNED NOT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `company`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `lat`, `lng`, `email`, `phone1`, `type`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '64 Main Street Trading Co. LTD', '64 Main Street', NULL, 'Macedon', 'NY', '14502', 'USA', '43.068809', '-77.3015139', 'nfalanga@rochester.rr.com', '(315) 986-2808', 'Retailer', NULL, '2021-12-14 16:29:26', '2021-12-15 21:00:44', NULL),
(2, 'The Purple Painted Lady', '77 W Main St', '', 'Macedon', 'NY', '14502', 'USA', '43.0684473', '-77.3005353', 'takuntz@rochester.rr.com', '(585) 750-6056 ', 'Retailer', '', '2021-12-14 16:29:27', '2021-12-14 16:29:27', NULL),
(3, 'Red Cat Supplies', '863 3rd Ave.', '', 'Brooklyn', 'NY', '11232', 'USA', '40.657638', '-74.003657', 'redcatsupplies@gmail.com', '(347) 721-3184', 'Retailer', '', '2021-12-14 16:29:29', '2021-12-14 16:29:29', NULL),
(4, 'Diane Prince, Inc.', '92 S Main Street', '', 'Fairport', 'NY', '14450', 'USA', '43.0990979', '-77.4423811', 'dianeprince@msn.com', '(585) 388-0060 ', 'Retailer', '', '2021-12-14 16:29:30', '2021-12-14 16:29:30', NULL),
(5, 'Andreas Furniture', '114 Dover Rd', '', 'Sugarcreek', 'OH', '44681', 'USA', '40.507687', '-81.638137', 'wparson@andreasfurniture.com', '(800) 846-7448 ', 'Retailer', '', '2021-12-14 16:29:31', '2021-12-14 16:29:31', NULL),
(6, 'Crossroads', '115 Crossroads Blvd.', '', 'Bucyrus', 'OH', '44820', 'USA', '40.8318775', '-82.9704858', 'erin@simpleessentials.com', '(866) 247-0156', 'Retailer', '', '2021-12-14 16:29:33', '2021-12-14 16:29:33', NULL),
(7, 'Betsey\'s Boutique', '139 S Main Street', '', 'Rockford', 'OH', '45882', 'USA', '40.6911339', '-84.6468226', 'shopbetseys@hotmail.com', '(419) 363-9005', 'Retailer', '', '2021-12-14 16:29:34', '2021-12-14 16:29:34', NULL),
(8, 'Urban Cottage, The', '142 E Liberty St', '', 'Wooster', 'OH', '44691', 'USA', '40.798652', '-81.9389307', 'theurbancottage@aol.com', '(330) 262-0603', 'Retailer', '', '2021-12-14 16:29:35', '2021-12-14 16:29:35', NULL),
(9, 'Elements', '18 West Main St', '', 'Seville', 'OH', '44273', 'USA', '41.0099906', '-81.8626295', 'funkyjunkboutique@gmail.com', '(330) 769-4367', 'Retailer', '', '2021-12-14 16:29:36', '2021-12-14 16:29:36', NULL),
(10, 'Real Deals/Granville', '1919 Lancaster Road', '', 'Granville', 'OH', '43023', 'USA', '40.0603323', '-82.5203034', 'mkoester@columbus.rr.com', '(740) 644-6233 ', 'Retailer', '', '2021-12-14 16:29:37', '2021-12-14 16:29:37', NULL),
(11, 'Elm & Iron', '3475 N High St', '', 'Columbus', 'OH', '43214', 'USA', '40.032872', '-83.0165634', 'elmandiron@gmail.com', '(614) 824-5611 ', 'Retailer', '', '2021-12-14 16:29:38', '2021-12-14 16:29:38', NULL),
(12, 'Amish Country Peddler', '3239 State Route 39', '', 'Millersburg', 'OH', '44654', 'USA', '40.5453232', '-81.7378915', 'hello@visitthepeddler.com', '(330) 893-2701', 'Retailer', '', '2021-12-14 16:29:39', '2021-12-14 16:29:39', NULL),
(13, 'Edwin Loy Home', '34 North State St.', '', 'Westerville', 'OH', '43081', 'USA', '40.1267926', '-82.9321938', 'edwinloyhome@gmail.com', '(740) 990-0432', 'Retailer', '', '2021-12-14 16:29:40', '2021-12-14 16:29:40', NULL),
(14, 'Lillywood', '3117 Harrison Ave', '', 'Cincinnati', 'OH', '45211', 'USA', '39.1510931', '-84.6007165', 'juliemjoseph10@gmail.com', '(513) 562-7854', 'Retailer', '', '2021-12-14 16:29:41', '2021-12-14 16:29:41', NULL),
(15, 'Oakland Nursery', '4261 W Dublin Granville Rd', '', 'Dublin', 'OH', '43017', 'USA', '40.0984093', '-83.1036521', 'oaklandpottery@gmail.com', '(614) 874-2400 ', 'Retailer', '', '2021-12-14 16:29:41', '2021-12-14 16:29:41', NULL),
(16, 'White Magnolia', '46 N Main St', '', 'Chargin Falls', 'OH', '44022', 'USA', '41.431123', '-81.3914774', 'marjijhauck@yahoo.com', '(216) 659-7098', 'Retailer', '', '2021-12-14 16:29:42', '2021-12-14 16:29:42', NULL),
(17, 'Oakland Nursery', '5211 Johnstown Rd.', '', 'New Albany', 'OH', '43054', 'USA', '40.0617185', '-82.8322958', 'jholibaugh@oaklandnursery.com', '(614) 917-1020', 'Retailer', '', '2021-12-14 16:29:43', '2021-12-14 16:29:43', NULL),
(18, 'Modern Farmhouse', '56 E Jackson Street', '', 'Millersburg', 'OH', '44654', 'USA', '40.5542575', '-81.9166932', 'tlvk00@gmail.com', '(330) 674-3881', 'Retailer', '', '2021-12-14 16:29:44', '2021-12-14 16:29:44', NULL),
(19, 'Proper Garden, A', '5840 Olentangy River Rd', '', 'Delaware', 'OH', '43015', 'USA', '40.2162296', '-83.0626485', 'bvancura@apropergarden.net', '(740) 369-5060', 'Retailer', '', '2021-12-14 16:29:45', '2021-12-14 16:29:45', NULL),
(20, 'Spruce Home Decor', '600 Robbins Ave.', '', 'Niles', 'OH', '44446', 'USA', '41.1827531', '-80.7517294', 'sprucehomedecor@gmail.com', '(330) 766-4930 ', 'Retailer', '', '2021-12-14 16:29:46', '2021-12-14 16:29:46', NULL),
(21, 'Waynesville Antique Mall', '69 Main St.', '', 'Waynesville', 'OH', '45068', 'USA', '39.5302484', '-84.0866753', 'lauren@waynesvilleantiquemall.com', '(513) 897-6937', 'Retailer', '', '2021-12-14 16:29:47', '2021-12-14 16:29:47', NULL),
(22, 'Fortin Iron Works', '944 W. Fifth Ave', '', 'Columbus', 'OH', '43212', 'USA', '39.9887866', '-83.0312076', 'bob@fortinironworks.com', '(614) 291-4342', 'Retailer', '', '2021-12-14 16:29:48', '2021-12-14 16:29:48', NULL),
(23, 'Fleurish', '247 W Central Ave', '', 'Springboro', 'OH', '45066', 'USA', '39.5576993', '-84.240178', 'fleurishhomeshop@gmail.com', '(937) 748-8362 ', 'Retailer', '', '2021-12-14 16:29:49', '2021-12-14 16:29:49', NULL),
(24, 'Country Gatherings', 'Berlin Village Gift Barn 4755 SR 39', '', 'Berlin', 'OH', '44610', 'USA', '40.5609658', '-81.7934104', 'warehouse@oldeberlinvillage.com', '(330) 893-1174 ', 'Retailer', '', '2021-12-14 16:29:50', '2021-12-14 16:29:50', NULL),
(25, 'Morning Sky Boutique', '106 S Thornton St', '', 'Vian', 'OK', '74962', 'USA', '35.49822', '-94.969401', 'morningskyboutique@gmail.com', '(918) 773-5000 ', 'Retailer', '', '2021-12-14 16:29:50', '2021-12-14 16:29:50', NULL),
(26, 'Home on the Range Home Furnishings', '118 West Broadway Ave.', '', 'Elk City', 'OK', '73644', 'USA', '35.410463', '-99.4057982', 'rhonda.twyman@yahoo.com', '(580) 303-0349', 'Retailer', '', '2021-12-14 16:29:51', '2021-12-14 16:29:51', NULL),
(27, 'Uptown Market Place', '1225 East Main', '', 'Weatherford', 'OK', '73096', 'USA', '35.5268211', '-98.6931228', 'uptown2238@sbcglobal.net', '(580) 772-2238 ', 'Retailer', '', '2021-12-14 16:29:52', '2021-12-14 16:29:52', NULL),
(28, 'Lifestyles Stores', '1801 W 33rd', '', 'Edmond', 'OK', '73013', 'USA', '35.6244198', '-97.5071062', 'payables@Oklahomalifestyles.com', '(405) 348-7420 ', 'Retailer', '', '2021-12-14 16:29:53', '2021-12-14 16:29:53', NULL),
(29, 'Sanders Nursery', '20705 E. 161st St', '', 'Broken Arrow', 'OK', '74014', 'USA', '35.9326953', '-95.7472856', 'cjones@sandersnurseryok.com', '(918) 486-1500', 'Retailer', '', '2021-12-14 16:29:54', '2021-12-14 16:29:54', NULL),
(30, 'Designs by Dennis', '218 North Main', '', 'Kingfisher', 'OK', '73750', 'USA', '35.8626791', '-97.9329443', 'desndennis@gmail.com', '(405) 375-4257 ', 'Retailer', '', '2021-12-14 16:29:55', '2021-12-14 16:29:55', NULL),
(31, 'The Market in Dewey', '312 E Don Tyler', '', 'Dewey', 'OK', '74051', 'USA', '36.7989086', '-95.9375303', 'themarketindewey@gmail.com', '(918) 230-1915', 'Retailer', '', '2021-12-14 16:29:55', '2021-12-14 16:29:56', NULL),
(32, 'Live Boho', '3721 S I-35 Serv Rd', '', 'Oklahoma City', 'OK', '73129', 'USA', '35.4271583', '-97.487648', 'liveboho@yahoo.com', '(405) 413-1386', 'Retailer', '', '2021-12-14 16:29:57', '2021-12-14 16:29:57', NULL),
(33, 'Urban Farmhouse Designs', '400 S. Western Ave.', '', 'Oklahoma City', 'OK', '73109', 'USA', '35.4532271', '-97.5566729', 'cherami@urbanfarmhousedesigns.com', '(405) 812-8374', 'Retailer', '', '2021-12-14 16:29:58', '2021-12-14 16:29:58', NULL),
(34, 'Sei Bella', '410 Main St', '', 'Drummond', 'OK', '73735', 'USA', '36.2997022', '-98.0369804', 'seibellagm@gmail.com', '(580) 493-2600', 'Retailer', '', '2021-12-14 16:29:59', '2021-12-14 16:29:59', NULL),
(35, 'Gardentown', '4650 N Hwy 81', '', 'Duncan', 'OK', '73533', 'USA', '34.5559792', '-97.9666214', 'gardentown@sbcglobal.net', '(580) 641-2715', 'Retailer', '', '2021-12-14 16:30:00', '2021-12-14 16:30:00', NULL),
(36, 'Country Temptations', '4801 N. Macarthur', '', 'Oklahoma City', 'OK', '73122', 'USA', '35.5201354', '-97.6193221', 'marsha@countrytemptations.com', '(405) 789-8876 ', 'Retailer', '', '2021-12-14 16:30:01', '2021-12-14 16:30:01', NULL),
(37, 'Briar Patch Market', '5127 E 84Th Pl', '', 'Tulsa', 'OK', '74137', 'USA', '36.0402691', '-95.9186214', '1twins58@att.net', '(918) 453-0403 ', 'Retailer', '', '2021-12-14 16:30:02', '2021-12-14 16:30:02', NULL),
(38, 'Oklahoma City Golf & Country C', '7000 N.W.Grand Blvd.', '', 'Nichols Hills', 'OK', '73116', 'USA', '35.5470009', '-97.5503772', 'oliverb@okcgcc.com', '(405) 848-5611 ', 'Retailer', '', '2021-12-14 16:30:03', '2021-12-14 16:30:03', NULL),
(39, 'Southwood Landscape & Nursery', '9025 S Lewis Ave', '', 'Tulsa', 'OK', '74137', 'USA', '36.032719', '-95.95313', 'AP@SOUTHWOODNURSERY.COM', '(918) 299-9400 ', 'Retailer', '', '2021-12-14 16:30:04', '2021-12-14 16:30:04', NULL),
(40, 'Carolyn Campbell Designs', '916 West Main', '', 'Duncan', 'OK', '73533', 'USA', '34.501672', '-97.9590735', 'carolyncampbell@cableone.net', '(580) 252-2190', 'Retailer', '', '2021-12-14 16:30:05', '2021-12-14 16:30:05', NULL),
(41, 'Eclectic Echo & Company', '920 West Main St', '', 'Duncan', 'OK', '73533', 'USA', '34.5018394', '-97.9591914', 'debbiesledge@cableone.net', '(580) 255-3246 ', 'Retailer', '', '2021-12-14 16:30:06', '2021-12-14 16:30:06', NULL),
(42, 'Cook\'s Companion & More', '219 N Muskogee Ave', '', 'Tahlaquah', 'OK', '74464', 'USA', '35.9151771', '-94.9702773', 'dmtozzi62@yahoo.com', '(972) 765-1962', 'Retailer', '', '2021-12-14 16:30:07', '2021-12-14 16:30:07', NULL),
(43, 'Oak Leaf Interiors', '1503 W 3rd St', '', 'Elk City', 'OK', '73644', 'USA', '35.4121172', '-99.422349', 'judyeden@sbcglobal.net', '(817) 304-1013 ', 'Retailer', '', '2021-12-14 16:30:07', '2021-12-14 16:30:08', NULL),
(44, 'The Red Store', '1196 SE 282nd Ave', '', 'Gresham', 'OR', '97080', 'USA', '45.4880662', '-122.3725846', 'CANDACEDERR@YAHOO.COM', '(503) 803-6417', 'Retailer', '', '2021-12-14 16:30:09', '2021-12-14 16:30:09', NULL),
(45, 'Cody\'s General Store', '2101 Main St', '', 'Baker City', 'OR', '97814', 'USA', '44.778535', '-117.830122', 'jodyjeffries@hotmail.com', '(541) 523-5375 ', 'Retailer', '', '2021-12-14 16:30:10', '2021-12-14 16:30:10', NULL),
(46, 'Terra Casa, LLC', '19995 SE Hwy 212', '', 'Damascus', 'OR', '97089', 'USA', '45.4178314', '-122.457138', 'diana@terracasa.com', '(503) 577-8242 ', 'Retailer', '', '2021-12-14 16:30:11', '2021-12-14 16:30:11', NULL),
(47, 'Sesame And Lillies', '183 North Hemlock St', '', 'Cannon Beach', 'OR', '97110', 'USA', '45.8980975', '-123.9602278', 'dspeakm@gmail.com', '(503) 436-2027 ', 'Retailer', '', '2021-12-14 16:30:12', '2021-12-14 16:30:12', NULL),
(48, 'The Urban Coop', '2051 Williamette Falls Dr.', '', 'West Linn', 'OR', '97068', 'USA', '45.3448467', '-122.651858', 'theurbancoop2051@yahoo.com', '(503) 919-0784 ', 'Retailer', '', '2021-12-14 16:30:13', '2021-12-14 16:30:13', NULL),
(49, 'City Home', '217 SE Taylor', '', 'Portland', 'OR', '97214', 'USA', '45.5153128', '-122.6634424', 'karen@cityhomepdx.com', '(503) 888-8717 ', 'Retailer', '', '2021-12-14 16:30:14', '2021-12-14 16:30:14', NULL),
(50, 'Pretty In Paint', '305 North Bartlett', '', 'Medford', 'OR', '97501', 'USA', '42.3295379', '-122.8741077', 'cindy@prettyinpaintshop.com', '(541) 261-2997', 'Retailer', '', '2021-12-14 16:30:14', '2021-12-14 16:30:14', NULL),
(51, 'Egge Seed and Nursery', '30991 Crossroads Lane', '', 'Eugene', 'OR', '97408', 'USA', '44.150396', '-123.0805209', 'jenniferegge72@gmail.com', '(541) 337-7957', 'Retailer', '', '2021-12-14 16:30:15', '2021-12-14 16:30:15', NULL),
(52, 'Fitzgerald Flowers', '1414 Adams', '', 'LaGrande', 'OR', '97850', 'USA', '45.326752', '-118.091934', 'juliebodfish@gmail.com', '(541) 963-2126', 'Retailer', '', '2021-12-14 16:30:16', '2021-12-14 16:30:16', NULL),
(53, 'Simply Sandy\'s LLC', '305 N Main St', '', 'Joseph', 'OR', '97846', 'USA', '45.3549731', '-117.2302659', 'jmm1969@hotmail.com', '(541) 432-3211 ', 'Retailer', '', '2021-12-14 16:30:17', '2021-12-14 16:30:17', NULL),
(54, 'Sand Lily Home', '631 NW Federal St #100', '', 'Bend', 'OR', '97701', 'USA', '44.0564879', '-121.3280683', 'sandlilyhome@gmail.com', '(619) 507-1161 ', 'Retailer', '', '2021-12-14 16:30:18', '2021-12-14 16:30:19', NULL),
(55, 'Cocalico Creek Country Store', '1037 North Reading Rd', '', 'Stevens', 'PA', '17578', 'USA', '40.2076656', '-76.1390165', 'cocalicocreek@yahoo.com', '(717) 490-6955 ', 'Retailer', '', '2021-12-14 16:30:19', '2021-12-14 16:30:19', NULL),
(56, 'Vintage This Repurpose That', '1070 Centre Turnpike', '', 'Orwigsburg', 'PA', '17961', 'USA', '40.6402435', '-76.0990118', 'vintagethisrepurposethat@gmail.com', '(570) 728-4466', 'Retailer', '', '2021-12-14 16:30:20', '2021-12-14 16:30:20', NULL),
(57, 'Life\'s Patina', '1750 North Valley Road', '', 'Malvern', 'PA', '19355', 'USA', '40.0727061', '-75.500247', 'meg@lifespatina.com', '(610) 952-2254', 'Retailer', '', '2021-12-14 16:30:21', '2021-12-14 16:30:22', NULL),
(58, 'The Treasure Place', '176 S. New Holland Road', '', 'Gordonville', 'PA', '17529', 'USA', '40.03824', '-76.109489', 'cfsmucker@aol.com', '(717) 768-8093', 'Retailer', '', '2021-12-14 16:30:23', '2021-12-14 16:30:23', NULL),
(59, 'Embellish', '12 Main St', '', 'Dallas', 'PA', '18612', 'USA', '41.3361', '-75.9628381', 'cdorrancedesigns@epix.net', '(570) 674-7565 ', 'Retailer', '', '2021-12-14 16:30:24', '2021-12-14 16:30:24', NULL),
(60, 'J&B Classics', '1806 Deep Run Rd. Unit H', '', 'Pipersville', 'PA', '18947', 'USA', '40.4232723', '-75.1441111', 'janine@piperclassics.com', '(215) 766-7924 ', 'Retailer', '', '2021-12-14 16:30:25', '2021-12-14 16:30:25', NULL),
(61, 'Sewickley Creek Greenhouses', '2639 Big Sewickley Creek Rd.', '', 'Sewickley', 'PA', '15143', 'USA', '40.6124668', '-80.1413616', 'sewickleycreekgreenhouse@hotmail.com', '(724) 935-8500 ', 'Retailer', '', '2021-12-14 16:30:25', '2021-12-14 16:30:26', NULL),
(62, 'Kings Impressions', '2847 Lincoln Hwy East', '', 'Ronks', 'PA', '17572', 'USA', '40.0162262', '-76.1597682', 'metalandcrate@gmail.com', '(717) 687-7999 ', 'Retailer', '', '2021-12-14 16:30:26', '2021-12-14 16:30:26', NULL),
(63, 'Levin Furniture', '301 Fitz Henry Road', '', 'Smithton', 'PA', '15479', 'USA', '40.1725044', '-79.7463607', 'dlamanna@levinfurniture.com', '(724) 872-2050 ', 'Retailer', '', '2021-12-14 16:30:27', '2021-12-14 16:30:27', NULL),
(64, 'It\'s So Evie', '130 Doyle St', '', 'Doylestown', 'PA', '18901', 'USA', '40.3137407', '-75.1342204', 'itssoevie@gmail.com', '(804) 243-1110', 'Retailer', '', '2021-12-14 16:30:28', '2021-12-14 16:30:28', NULL),
(65, 'King\'s Homestead', '3518 West Newport Rd', '', 'Ronks', 'PA', '17572', 'USA', '40.0452912', '-76.1151312', 'backoffice@kingshomestead.com', '(717) 768-7688', 'Retailer', '', '2021-12-14 16:30:29', '2021-12-14 16:30:29', NULL),
(66, 'Kitchen Kettle-Country Life', '3529 Old Philadelphia Pike', '', 'Intercourse', 'PA', '17534', 'USA', '40.0393664', '-76.1101159', 'jreeser@kitchenkettle.com', '(717) 768-8261', 'Retailer', '', '2021-12-14 16:30:30', '2021-12-14 16:30:30', NULL),
(67, 'The English Garden', '497 South Mill Street', '', 'Danville', 'PA', '17821', 'USA', '40.9557988', '-76.6227727', 'info@the-english-garden.com', '(570) 275-2252', 'Retailer', '', '2021-12-14 16:30:31', '2021-12-14 16:30:31', NULL),
(68, 'Valley Forge Flowers', '503 West Lancaster Ave', '', 'Wayne', 'PA', '19087', 'USA', '40.046112', '-75.4017355', 'marlena@valleyforgeflowers.com', '(610) 687-5566', 'Retailer', '', '2021-12-14 16:30:32', '2021-12-14 16:30:32', NULL),
(69, 'Country Folk', '550 Zenith Rd.', '', 'Nescopeck', 'PA', '18635', 'USA', '41.0395234', '-76.1434782', 'countryfolkstore@hotmail.com', '(570) 379-3176', 'Retailer', '', '2021-12-14 16:30:33', '2021-12-14 16:30:33', NULL),
(70, 'Piper Hill Co.', '6907 Easton Rd', '', 'Pipersville', 'PA', '18947', 'USA', '40.4214586', '-75.1453505', 'piperhillco@gmail.com', '(215) 766-7767 ', 'Retailer', '', '2021-12-14 16:30:33', '2021-12-14 16:30:33', NULL),
(71, 'Myerstown Sheds & Fencing', '694 E Lincoln Ave', '', 'Myerstown', 'PA', '17067', 'USA', '40.3830958', '-76.2852642', 'moewe91@gmail.com', '(717) 838-7270 ', 'Retailer', '', '2021-12-14 16:30:34', '2021-12-14 16:30:34', NULL),
(72, 'Corky\'s Garden Path', '729 Justus Blvd', '', 'Scott Township', 'PA', '18411', 'USA', '41.5015892', '-75.6397658', 'cory@corkysgardenpath.com', '(570) 586-9563 ', 'Retailer', '', '2021-12-14 16:30:35', '2021-12-14 16:30:35', NULL),
(73, 'Lighting By Design', '8 Dowling Forge Rd', '', 'Exton', 'PA', '19341', 'USA', '40.0536637', '-75.6603794', 'lori@lighting-by-design.com', '(610) 524-0107', 'Retailer', '', '2021-12-14 16:30:36', '2021-12-14 16:30:36', NULL),
(74, 'Giunta\'s Furniture', '808 N Pottsotwn Pike', '', 'Exton', 'PA', '19341', 'USA', '40.0551184', '-75.6493133', 'giunta@giuntasfurniture.com', '(610) 594-9494', 'Retailer', '', '2021-12-14 16:30:37', '2021-12-14 16:30:37', NULL),
(75, 'Vintage Home', '83 E. Lancaster Ave', '', 'Paoli', 'PA', '19301', 'USA', '40.0421941', '-75.4796217', '83lancaster@gmail.com', '(610) 251-2155 ', 'Retailer', '', '2021-12-14 16:30:38', '2021-12-14 16:30:38', NULL),
(76, 'Old Candle Barn, The', '3551 Old Philadelphia Pike', '', 'Intercourse', 'PA', '17534', 'USA', '40.039356', '-76.1074677', 'jratjavong@oldcandlebarn.com', '(717) 768-8926', 'Retailer', '', '2021-12-14 16:30:39', '2021-12-14 16:30:39', NULL),
(77, 'Three Sisters Company', '19 S Whitehorse Rd', '', 'Phoenixville', 'PA', '19460', 'USA', '40.119384', '-75.5035799', 'Rbrown@bethanygc.com', '(610) 935-8978', 'Retailer', '', '2021-12-14 16:30:40', '2021-12-14 16:30:40', NULL),
(78, 'The Pelican\'s Pouch', '1 North Forest Beach', '', 'Hilto', 'SC', '29928', 'USA', '32.1459764', '-80.7538748', 'tiffany.pelican@gmail.com', '(843) 686-6000', 'Retailer', '', '2021-12-14 16:30:41', '2021-12-14 16:30:41', NULL),
(79, 'SH Designs Inc', '103 Halton', '', 'Greenville', 'SC', '29607', 'USA', '34.8433783', '-82.3282753', 'becky@shdesignsinc.com', '(404) 228-1564 ', 'Retailer', '', '2021-12-14 16:30:42', '2021-12-14 16:30:42', NULL),
(80, 'Chd Interiors', '1088 Mall Drive', '', 'Murrells Inlet', 'SC', '29576', 'USA', '33.5789631', '-79.0278319', 'gale@chdinteriors.com', '(843) 357-1700 ', 'Retailer', '', '2021-12-14 16:30:43', '2021-12-14 16:30:43', NULL),
(81, 'Twigs - SC', '1100 Woods Crossing Rd', '', 'Greenville', 'SC', '29607', 'USA', '34.848204', '-82.3302888', 'deb@twigs.net', '(864) 242-1418 ', 'Retailer', '', '2021-12-14 16:30:44', '2021-12-14 16:30:44', NULL),
(82, 'Bluffton General Store LLC', '12 Church St.', '', 'Bluffton', 'SC', '29910', 'USA', '32.2355491', '-80.8615361', 'janaqualey@gmail.com', '(843) 384-9935', 'Retailer', '', '2021-12-14 16:30:45', '2021-12-14 16:30:45', NULL),
(83, 'Lettrs', '1303 Main St', '', 'Hilton Head', 'SC', '29926', 'USA', '32.2145121', '-80.7232318', 'hhigifts@aol.com', '(843) 682-3450', 'Retailer', '', '2021-12-14 16:30:46', '2021-12-14 16:30:46', NULL),
(84, 'Amelia\'s Home and Garden', '135 South Blackstock Rd', '', 'Spartanburg', 'SC', '29301', 'USA', '34.9321954', '-82.0009863', 'ameliatoney@me.com', '(864) 707-2725', 'Retailer', '', '2021-12-14 16:30:47', '2021-12-14 16:30:47', NULL),
(85, 'Hay Hill Garden Market', '1625 Bluff Road', '', 'Columbia', 'SC', '29201', 'USA', '33.8477742', '-81.026598', 'kevin@hayhillgardenmarket.com', '(803) 834-6652', 'Retailer', '', '2021-12-14 16:30:48', '2021-12-14 16:30:48', NULL),
(86, 'ReInvintage', '912 Harden St', '', 'Columbia', 'SC', '29205', 'USA', '34.0021639', '-81.0171514', 'inspire@myreinvintage.com', '(214) 235-4358 ', 'Retailer', '', '2021-12-14 16:30:49', '2021-12-14 16:30:49', NULL),
(87, 'The Garden Cafe & Marketplace', '307 W Liberty St.', '', 'York', 'SC', '29745', 'USA', '34.9956242', '-81.2471108', 'gardencafe@bellsouth.net', '(803) 230-3184', 'Retailer', '', '2021-12-14 16:30:50', '2021-12-14 16:30:50', NULL),
(88, 'Chesson Country Antiques', '415 Mauldin Rd', '', 'Greenville', 'SC', '29605', 'USA', '34.8019371', '-82.3719482', 'dave.chesson@yahoo.com', '(864) 299-8981 ', 'Retailer', '', '2021-12-14 16:30:51', '2021-12-14 16:30:51', NULL),
(89, 'Lecroy Interiors', '416 HAYWOOD RD', '', 'Greenville', 'SC', '29607', 'USA', '34.841194', '-82.342921', 'b.coffeyart@gmail.com', '(864) 593-1845', 'Retailer', '', '2021-12-14 16:30:52', '2021-12-14 16:30:52', NULL),
(90, 'Mason & Magnolia', '604 North East Main Street', '', 'Simpsonville', 'SC', '29681', 'USA', '34.73954', '-82.256806', 'masonandmagnolia@gmail.com', '(864) 963-2912 ', 'Retailer', '', '2021-12-14 16:30:53', '2021-12-14 16:30:53', NULL),
(91, 'The Southern Nest', '6280 Carolina Commons Dr', '', 'Indian Land', 'SC', '29707', 'USA', '34.9378819', '-80.8362651', 'thesouthernnest@yahoo.com', '(803) 802-1606 ', 'Retailer', '', '2021-12-14 16:30:54', '2021-12-14 16:30:54', NULL),
(92, 'Vintage Now Modern', '633 South Main Street', '', 'Greenville', 'SC', '29601', 'USA', '34.8444133', '-82.4029208', 'debra@vintagenowmodern.com', '(864) 385-5004 ', 'Retailer', '', '2021-12-14 16:30:54', '2021-12-14 16:30:54', NULL),
(93, 'Professional Party Rentals', '647 Congaree Rd', '', 'Greenville', 'SC', '29607', 'USA', '34.8352115', '-82.3477468', 'jeff@professionalpartyrentals.com', '(864) 627-8808 ', 'Retailer', '', '2021-12-14 16:30:55', '2021-12-14 16:30:55', NULL),
(94, 'Carolina Cider Company', '81 Charleston Hwy', '', 'Yemassee', 'SC', '29945', 'USA', '32.605405', '-80.755177', 'jessicalamar@me.com', '(843) 263-4847', 'Retailer', '', '2021-12-14 16:30:56', '2021-12-14 16:30:56', NULL),
(95, 'Sweet Bay, Inc.', '915 Bay Street', '', 'Beaufort', 'SC', '29902', 'USA', '32.431199', '-80.6722441', 'sweetbaybeaufort@yahoo.com', '(843) 524-7545', 'Retailer', '', '2021-12-14 16:30:57', '2021-12-14 16:30:57', NULL),
(96, 'The Greenery', '960 William Hilton Pkwy', '', 'Hilton Head', 'SC', '29928', 'USA', '32.1628626', '-80.7489573', 'lisakiggans@thegreeneryinc.com', '(843) 785-3848 ', 'Retailer', '', '2021-12-14 16:30:58', '2021-12-14 16:30:58', NULL),
(97, 'Interiors Etc.', '3201 S. Prairie Ave', '', 'Sioux Falls', 'SD', '57105', 'USA', '43.5518911', '-96.7275008', 'interiorsetcsiouxfalls@gmail.com', '(605) 334-0303', 'Retailer', '', '2021-12-14 16:30:59', '2021-12-14 16:30:59', NULL),
(98, 'Tia\'s Shabby Chic Boutique', '3650 N Mt Juliet Rd', '', 'Mt Juliet', 'TN', '37122', 'USA', '36.2210084', '-86.5152597', 'tbwoods21@gmail.com', '(615) 417-7823', 'Retailer', '', '2021-12-14 16:31:00', '2021-12-14 16:31:00', NULL),
(99, 'The Faded Farmhouse ', '113 East 6th St.', '', 'Columbia', 'TN', '38401', 'USA', '35.6164011', '-87.0325732', 'thefadedfarmhouse@collector.org', '(615) 500-1535', 'Retailer', '', '2021-12-14 16:31:01', '2021-12-14 16:31:01', NULL),
(100, 'Natural Element Homes', '1225 Murrays Chapel Rd', '', 'Sweetwater', 'TN', '37874', 'USA', '35.6036062', '-84.5132451', 'ksalinas@naturalelementhomes.com', '(423) 435-3963', 'Retailer', '', '2021-12-14 16:31:02', '2021-12-14 16:31:02', NULL),
(101, 'The Tin Cottage', '123 South Margin St', '', 'Franklin', 'TN', '37064', 'USA', '35.9251282', '-86.8696627', 'thetincottage@gmail.com', '(615) 472-1183 ', 'Retailer', '', '2021-12-14 16:31:03', '2021-12-14 16:31:03', NULL),
(102, 'Dee Larue Designs', '126 E. Mulberry St', '', 'Collierville', 'TN', '38017', 'USA', '35.0430863', '-89.6647269', 'deelaruedesign@aol.com', '(901) 854-4236 ', 'Retailer', '', '2021-12-14 16:31:04', '2021-12-14 16:31:04', NULL),
(103, 'Refresh Home, LLC', '1276 Lewisburg Pike Suite J', '', 'Franklin', 'TN', '37064', 'USA', '35.8699054', '-86.8457679', 'kara@refresh-home.com', '(615) 347-7756', 'Retailer', '', '2021-12-14 16:31:05', '2021-12-14 16:31:05', NULL),
(104, 'Bradley\'s', '141 N Peters Road', '', 'Knoxville', 'TN', '37923', 'USA', '35.9138895', '-84.0833387', 'joy@shopbradleys.com', '(865) 694-0400', 'Retailer', '', '2021-12-14 16:31:06', '2021-12-14 16:31:06', NULL),
(105, 'Snooty Fox, The', '149 Wilson Pike Circle', '', 'Brentwood', 'TN', '37027', 'USA', '36.0336227', '-86.7855453', 'craven5486@aol.com', '(615) 661-4565', 'Retailer', '', '2021-12-14 16:31:07', '2021-12-14 16:31:07', NULL),
(106, 'Tatum Hill Interior Design', '24 West Broad St', '', 'Cookeville', 'TN', '38501', 'USA', '36.163743', '-85.5069673', 'tatum.e.hill@gmail.com', '(931) 510-4670 ', 'Retailer', '', '2021-12-14 16:31:08', '2021-12-14 16:31:08', NULL),
(107, 'Furniture Shoppe, The', '1903 East 24th Street', '', 'Chattanooga', 'TN', '37404', 'USA', '35.01688', '-85.2843475', 'braucht@thefurnitureshoppe.net', '(423) 493-7630 ', 'Retailer', '', '2021-12-14 16:31:09', '2021-12-14 16:31:09', NULL),
(108, 'Tanglewood', '206 E Court St', '', 'Dyersburg', 'TN', '38024', 'USA', '36.0326937', '-89.3843198', 'fanofolemiss@gmail.com', '(731) 325-5704', 'Retailer', '', '2021-12-14 16:31:10', '2021-12-14 16:31:10', NULL),
(109, 'OP Jenkins Furniture Co', '209 W Summit Hill Dr', '', 'Knoxville', 'TN', '37902', 'USA', '35.9684066', '-83.9193725', 'sales@opjenkinsfurniture.com', '(865) 522-9632 ', 'Retailer', '', '2021-12-14 16:31:11', '2021-12-14 16:31:11', NULL),
(110, 'Color at Home', '2104 Crestmoor Rd', '', 'Nashville', 'TN', '37215', 'USA', '36.108882', '-86.8131305', 'jasongrant@colorathome.com', '(615) 269-3071', 'Retailer', '', '2021-12-14 16:31:12', '2021-12-14 16:31:12', NULL),
(111, 'Solieil Garden Center', '2317 Nailling Drive', '', 'Union City', 'TN', '38261', 'USA', '36.4366607', '-89.0168304', 'crystal@soleilgardencenter.com', '(731) 885-3005', 'Retailer', '', '2021-12-14 16:31:13', '2021-12-14 16:31:13', NULL),
(112, 'Then and Again', '235 E. Main Street Suite P', '', 'Hendersonville', 'TN', '37075', 'USA', '36.3065738', '-86.6026174', 'thenandagain2011@hotmail.com', '(615) 264-5594 ', 'Retailer', '', '2021-12-14 16:31:14', '2021-12-14 16:31:14', NULL),
(113, 'Painted House', '239 S. Lowe Ave.', '', 'Cookeville', 'TN', '38501', 'USA', '36.1575406', '-85.4992783', 'onepaintedhouse@gmail.com', '(615) 554-9359 ', 'Retailer', '', '2021-12-14 16:31:15', '2021-12-14 16:31:15', NULL),
(114, 'JD Designs', '505-c Cason Lane', '', 'Murfreesboro', 'TN', '37128', 'USA', '35.8473919', '-86.4232783', 'davenport1985@msn.com', '(615) 476-4749 ', 'Retailer', '', '2021-12-14 16:31:16', '2021-12-14 16:31:16', NULL),
(115, 'Graham\'s Lighting', '244 Cool Springs Blvd', '', 'Franklin', 'TN', '37067', 'USA', '35.9401321', '-86.8317871', 'payables@grahamsfranklin.com', '(901) 274-6780 ', 'Retailer', '', '2021-12-14 16:31:17', '2021-12-14 16:31:17', NULL),
(116, 'Hollywood Feed', '2648 Broad Ave.', '', 'Memphis', 'TN', '38112', 'USA', '35.146905', '-89.9716999', 'accountspayable@hollywoodfeed.com', '(901) 452-2474 ', 'Retailer', '', '2021-12-14 16:31:17', '2021-12-14 16:31:18', NULL),
(117, 'Mango Decor and Company', '309-311 S. Northshore Dr.', '', 'Knoxville', 'TN', '37919', 'USA', '35.9295736', '-84.0014487', 'kristyut@yahoo.com', '(423) 304-5358', 'Retailer', '', '2021-12-14 16:31:19', '2021-12-14 16:31:19', NULL),
(118, 'Bella Vita', '3670 S Houston Levee Rd Suite 101', '', 'Collierville', 'TN', '38017', 'USA', '35.0491022', '-89.7310267', 'customercare@shopbellavita.com', '(901) 850-0892', 'Retailer', '', '2021-12-14 16:31:20', '2021-12-14 16:31:20', NULL),
(119, 'Sophie\'s', '401 North Market St', '', 'Chattanooga', 'TN', '37405', 'USA', '35.065655', '-85.309309', 'tamara@sophiesshoppe.com', '(423) 756-8711', 'Retailer', '', '2021-12-14 16:31:21', '2021-12-14 16:31:21', NULL),
(120, 'Nest Decor', '4100 Hillsboro Pike', '', 'Nashville', 'TN', '37215', 'USA', '36.1023182', '-86.8166603', 'ap@nestdecor.com', '(615) 942-7494 ', 'Retailer', '', '2021-12-14 16:31:22', '2021-12-14 16:31:22', NULL),
(121, 'Chic Artique', '132 S Main St', '', 'Goodlettsville', 'TN', '37072', 'USA', '36.3214058', '-86.712969', 'rummel.jenna@yahoo.com', '(615) 982-9409', 'Retailer', '', '2021-12-14 16:31:23', '2021-12-14 16:31:23', NULL),
(122, 'Reclaimed Inspired Goods', '414 S Roan St. Suite 100', '', 'Johnson City', 'TN', '37601', 'USA', '36.3164296', '-82.3503845', 'tina@tinawilson.com', '(423) 967-5578', 'Retailer', '', '2021-12-14 16:31:24', '2021-12-14 16:31:24', NULL),
(123, 'Something Special Home Store', '4648 Merchant Pk Circle Suite 1000', '', 'Collierville', 'TN', '38017', 'USA', '35.0226669', '-89.7172775', 'something.special@att.net', '(901) 861-1202 ', 'Retailer', '', '2021-12-14 16:31:25', '2021-12-14 16:31:25', NULL),
(124, 'Faded Farmhouse', '4812 Murfreesboro Road, Suite F', '', 'Arrington', 'TN', '37014', 'USA', '35.8681852', '-86.7104332', 'TheGentlemansStache@gmail.com', '(901) 574-2623', 'Retailer', '', '2021-12-14 16:31:25', '2021-12-14 16:31:26', NULL),
(125, 'Ace Hardware of Chattanooga', '4921 Hwy 58', '', 'Chattanooga', 'TN', '37416', 'USA', '35.0939838', '-85.180255', 'ap@eldershardware.com', '(423) 899-6306', 'Retailer', '', '2021-12-14 16:31:26', '2021-12-14 16:31:26', NULL),
(126, 'Perkins Drugs', '532 Hartsville Pike', '', 'Gallatin', 'TN', '37066', 'USA', '36.391606', '-86.434691', 'perkinsgifts@gmail.com', '(615) 452-6111', 'Retailer', '', '2021-12-14 16:31:27', '2021-12-14 16:31:27', NULL),
(127, 'The Back Porch Mercantile', '5440 Homberg Dr', '', 'Knoxville', 'TN', '37919', 'USA', '35.9354532', '-83.9925353', 'shop@thebpmercantile.com', '(865) 247-4532', 'Retailer', '', '2021-12-14 16:31:28', '2021-12-14 16:31:28', NULL),
(128, 'Head Springs Depot', '547 Mount Hope Street', '', 'Franklin', 'TN', '37064', 'USA', '35.9265502', '-86.8758139', 'jhall@avldirect.com', '(615) 671-4021', 'Retailer', '', '2021-12-14 16:31:29', '2021-12-14 16:31:29', NULL),
(129, 'Warehouse 67', '5567 Commander Drive #102', '', 'Arlington', 'TN', '38002', 'USA', '35.2777917', '-89.6730621', 'warehouse67design@gmail.com', '(901) 497-6149 ', 'Retailer', '', '2021-12-14 16:31:30', '2021-12-14 16:31:30', NULL),
(130, 'Beds 2 Go, LLC', '562 Foothills Plaza Dr.', '', 'Maryville', 'TN', '37801', 'USA', '35.7397677', '-83.9910206', 'cunningham42@live.com', '(865) 681-2849', 'Retailer', '', '2021-12-14 16:31:31', '2021-12-14 16:31:31', NULL),
(131, 'Corner Nest Antiques', '562 Patterson Hill Rd', '', 'Blountville', 'TN', '37617', 'USA', '36.3496132', '-82.2250214', 'shant@btes.tv', '(423) 547-9111', 'Retailer', '', '2021-12-14 16:31:31', '2021-12-14 16:31:31', NULL),
(132, 'High Cotton Vintage Home', '213 North Spring St', '', 'Manchester', 'TN', '37355', 'USA', '35.4841667', '-86.0883333', 'highcottonvhf@gmail.com', '(931) 247-3449', 'Retailer', '', '2021-12-14 16:31:33', '2021-12-14 16:31:33', NULL),
(133, 'Millstone Market, LLC', '6993 Poplar Ave', '', 'Germantown', 'TN', '38138', 'USA', '35.0959502', '-89.8305264', 'summer@millstonenursery.com', '(901) 730-1183', 'Retailer', '', '2021-12-14 16:31:34', '2021-12-14 16:31:34', NULL),
(134, 'Southern Living Store ', '7225 Riverdale Bend Ste 105', '', 'Memphis', 'TN', '38125', 'USA', '35.0501315', '-89.8235033', 'blove@rahmemphis.comcastbiz.net', '(256) 252-0220', 'Retailer', '', '2021-12-14 16:31:35', '2021-12-14 16:31:35', NULL),
(135, 'Southern Living Store ', '1305 Celebrity Cir, Unit C116', '', 'Myrtle Beach', 'SC', '29577', 'USA', '33.7159142', '-78.8836049', 'blove@rahmemphis.comcastbiz.net', '(843) 945-2639', 'Retailer', '', '2021-12-14 16:31:35', '2021-12-14 16:31:35', NULL),
(136, 'Southern Living Store ', '3064 Howard Ave', '', 'Myrtle Beach', 'SC', '29577', 'USA', '33.6688954', '-78.9391477', 'blove@rahmemphis.comcastbiz.net', '(843) 945-2714', 'Retailer', '', '2021-12-14 16:31:36', '2021-12-14 16:31:36', NULL),
(137, 'Southern Living Store ', '1708 Towne Centre Way', '', 'Mt Pleasant', 'SC', '29464', 'USA', '32.8305238', '-79.8283529', 'blove@rahmemphis.comcastbiz.net', '(843) 972-8225', 'Retailer', '', '2021-12-14 16:31:37', '2021-12-14 16:31:37', NULL),
(138, 'Southern Living Store ', '4130 Legendary Drive Suite B-100', '', 'Destin ', 'FL', '32541', 'USA', '30.3921435', '-86.4244182', 'blove@rahmemphis.comcastbiz.net', '(850) 842-4779', 'Retailer', '', '2021-12-14 16:31:38', '2021-12-14 16:31:38', NULL),
(139, 'Southern Living Store ', '340 The Bridge Street Suite 148', '', 'Huntsville ', 'AL ', '35806', '', '34.7176479', '-86.6731882', 'blove@rahmemphis.comcastbiz.net', '(256) 327-8782', 'Retailer', '', '2021-12-14 16:31:39', '2021-12-14 16:31:39', NULL),
(140, 'Factory Furniture', '804 South Main', '', 'Estill Springs', 'TN', '37330', 'USA', '35.2561264', '-86.1218032', 'factory.furniture@comcast.net', '(931) 649-5461', 'Retailer', '', '2021-12-14 16:31:40', '2021-12-14 16:31:40', NULL),
(141, 'First Fruit Collection', '84 N. Main Street', '', 'Collierville', 'TN', '38017', 'USA', '35.0422104', '-89.6639719', 'contact@firstfruitcollection.com', '(901) 861-7111', 'Retailer', '', '2021-12-14 16:31:41', '2021-12-14 16:31:41', NULL),
(142, 'The Rustic Touch', '961 Rock Island Rd.', '', 'Rock Island', 'TN', '38581', 'USA', '35.7887778', '-85.6139222', 'ourrustictouch@hotmail.com', '(931) 686-4438', 'Retailer', '', '2021-12-14 16:31:42', '2021-12-14 16:31:42', NULL),
(143, 'The White Orchid', '998 Davidson Drive', '', 'Nashville', 'TN', '37205', 'USA', '36.128896', '-86.9027892', 'info@whiteorchidnashville.com', '(615) 833-1400 ', 'Retailer', '', '2021-12-14 16:31:43', '2021-12-14 16:31:43', NULL),
(144, 'L & K Designs', '1401 Adams St', '', 'Franklin', 'TN', '37064', 'USA', '35.911006', '-86.86832', 'Kristin@lkdesignco.com', '(615) 598-5970', 'Retailer', '', '2021-12-14 16:31:43', '2021-12-14 16:31:44', NULL),
(145, 'Houston Country Club', '1 Potomac Dr.', '', 'Houston', 'TX', '77057', 'USA', '29.7616474', '-95.4886366', 'msgreenthumb2004@yahoo.com', '(713) 465-8381', 'Retailer', '', '2021-12-14 16:31:44', '2021-12-14 16:31:44', NULL),
(146, 'Evridges Inc', '100 E Commerce St', '', 'Brady', 'TX', '76825', 'USA', '31.1345431', '-99.3344721', 'nancye@bradytx.net', '(325) 597-2358', 'Retailer', '', '2021-12-14 16:31:45', '2021-12-14 16:31:45', NULL),
(147, 'Milk House Market', '1002 Main St', '', 'Friona', 'TX', '79035', 'USA', '34.6407826', '-102.7181809', 'milkhousemarket5@gmail.com', '(602) 739-0813', 'Retailer', '', '2021-12-14 16:31:46', '2021-12-14 16:31:47', NULL),
(148, 'Arabella\'s', '102 E. Louisiana St', '', 'Mckinney', 'TX', '75069', 'USA', '33.1971423', '-96.6152387', 'uptownmckinney@aol.com', '(972) 562-0303', 'Retailer', '', '2021-12-14 16:31:47', '2021-12-14 16:31:47', NULL),
(149, 'Patio 1', '10520 Harwin Dr.', '', 'Houston', 'TX', '77036', 'USA', '29.7177546', '-95.5560782', 'Catherine@Patio1.com', '(713) 789-8080 ', 'Retailer', '', '2021-12-14 16:31:48', '2021-12-14 16:31:48', NULL),
(150, 'Timeless Consignments LLC', '16341 Mueschke Rd', '', 'Cypress', 'TX', '77433', 'USA', '30.0121558', '-95.7254836', 'timelessdesignsmarket@gmail.com', '(713) 409-7944', 'Retailer', '', '2021-12-14 16:31:49', '2021-12-14 16:31:49', NULL),
(151, 'Laurie\'s Home', '10730 FM 2920', '', 'Tomball', 'TX', '77375', 'USA', '30.097578', '-95.5813446', 'sales@laurieshomefurnishings.com', '(281) 290-9565 ', 'Retailer', '', '2021-12-14 16:31:50', '2021-12-14 16:31:50', NULL),
(152, 'Faithbridge Design Company', '108 S Ranch House Road # 800', '', 'Willow Park', 'TX', '76008', 'USA', '32.7385323', '-97.5655878', 'michele@faithbridgeproperty.com', '(817) 789-8841', 'Retailer', '', '2021-12-14 16:31:51', '2021-12-14 16:31:51', NULL),
(153, 'Birds & Words', '113 N. Kentucky St. Suite 102', '', 'McKinney', 'TX', '75069', 'USA', '33.1980871', '-96.6159692', 'birdsandwordshomeboutique@gmail.com', '(903) 287-0277 ', 'Retailer', '', '2021-12-14 16:31:52', '2021-12-14 16:31:52', NULL),
(154, 'Dirt Road Rustics', '11400 Hwy 30 Suite 100', '', 'College Station', 'TX', '77845', 'USA', '30.640918', '-96.2527158', 'veronica.fly@dirtroadrustics.com', '(903) 814-3062 ', 'Retailer', '', '2021-12-14 16:31:53', '2021-12-14 16:31:53', NULL),
(155, 'Veranda Bloom', '12 E. Mesquite', '', 'Rogers', 'TX', '76569', 'USA', '30.9315078', '-97.2262871', 'verandabloom@windstream.net', '(254) 642-0153', 'Retailer', '', '2021-12-14 16:31:54', '2021-12-14 16:31:54', NULL),
(156, 'Refinishing Queen', '12109 Wild Bill Ct', '', 'Newark', 'TX', '76071', 'USA', '32.6951573', '-97.6033369', 'therefinishingqueen@yahoo.com', '(817) 915-9510', 'Retailer', '', '2021-12-14 16:31:55', '2021-12-14 16:31:55', NULL),
(157, 'Boxcar House LLC', '122 Rose Lane Ste 702', '', 'Frisco', 'TX', '75034', 'USA', '33.1520742', '-96.9141892', 'Sales@boxcarhouse.com', '(214) 240-1104', 'Retailer', '', '2021-12-14 16:31:56', '2021-12-14 16:31:56', NULL),
(158, 'Brazos Avenue Market', '126 N Velasco St.', '', 'Angleton', 'TX', '77515', 'USA', '29.1653404', '-95.4316558', 'brazosinvoices@gmail.com', '(979) 345-2874 ', 'Retailer', '', '2021-12-14 16:31:57', '2021-12-14 16:31:57', NULL),
(159, 'Jordan Taylor & Co', '1275 E Southlake Blvd. Suite 433', '', 'Southlake', 'TX', '76092', 'USA', '32.9390527', '-97.1320246', 'jordantaylorandco@hotmail.com', '(817) 594-7855 ', 'Retailer', '', '2021-12-14 16:31:58', '2021-12-14 16:31:58', NULL),
(160, 'Dickinson Interiors', '13044 Louetta Rd', '', 'Cypress', 'TX', '77429', 'USA', '29.9960636', '-95.6210928', 'deeda@dickinsoninteriorsonline.com', '(281) 370-2099', 'Retailer', '', '2021-12-14 16:31:59', '2021-12-14 16:31:59', NULL),
(161, 'Bucketheads', '3194 South 27th', '', 'Abilene', 'TX', '79605', 'USA', '32.4183596', '-99.7622651', 'ilovebucketheads@gmail.com', '(325) 669-8787', 'Retailer', '', '2021-12-14 16:31:59', '2021-12-14 16:31:59', NULL),
(162, 'EWay Furniture', '132A E Main St', '', 'Fredericksburg', 'TX', '78624', 'USA', '30.2747222', '-98.8711111', 'gina@ewayfurniture.com', '(800) 497-6002 ', 'Retailer', '', '2021-12-14 16:32:00', '2021-12-14 16:32:00', NULL),
(163, 'Gallery Auctions Inc', '13310 Luthe Road', '', 'Houston', 'TX', '77039', 'USA', '29.9070659', '-95.3715895', 'email@galleryauctions.com', '(281) 931-0100', 'Retailer', '', '2021-12-14 16:32:01', '2021-12-14 16:32:01', NULL),
(164, 'Cutting Corners', '13720 Midway Rd #200', '', 'Dallas', 'TX', '75244', 'USA', '32.9352149', '-96.8384017', 'cuttingkel@aol.com', '(214) 957-7720', 'Retailer', '', '2021-12-14 16:32:02', '2021-12-14 16:32:02', NULL),
(165, 'Coyote Candle Co.', '14012 FM 1730', '', 'Lubbock', 'TX', '79424', 'USA', '33.4669777', '-101.9229296', 'shop@coyotecandle.com', '(806) 798-9677', 'Retailer', '', '2021-12-14 16:32:03', '2021-12-14 16:32:03', NULL),
(166, 'Smallwood Management Company', '1409 S. Lake Harris Rd. Suite 130', '', 'White Oak', 'TX', '75693', 'USA', '32.5140532', '-94.8336745', 'elishia@smallwoodcompany.com', '(903) 295-2763 ', 'Retailer', '', '2021-12-14 16:32:04', '2021-12-14 16:32:04', NULL),
(167, 'Circle X Country Store', '1415 East Old San Antonio Rd', '', 'Bryan', 'TX', '77808', 'USA', '30.7583256', '-96.449767', 'k.duewall@bre.com', '(979) 492-9703', 'Retailer', '', '2021-12-14 16:32:05', '2021-12-14 16:32:05', NULL),
(168, 'Fox & Fig', '222 Linda Dr', '', 'Sulphur Springs', 'TX', '75482', 'USA', '33.1354873', '-95.6087016', 'laura@foxandfig.com', '(903) 780-1991', 'Retailer', '', '2021-12-14 16:32:06', '2021-12-14 16:32:06', NULL),
(169, 'Mark W Todd Architects Inc', '1440 Lake Front Cir. Ste 120', '', 'The Woodlands', 'TX', '77380', 'USA', '30.171303', '-95.4607042', 'mark@mwtoddarch.com', '(281) 363-2593 ', 'Retailer', '', '2021-12-14 16:32:07', '2021-12-14 16:32:07', NULL),
(170, 'Lady Bird Johnson Wildflower', '1616 Guadalupe UTA, Suite 3.302', '', 'Austin', 'TX', '78701', 'USA', '30.1854889', '-97.8732649', 'store@wildflower.org', '(512) 232-0143', 'Retailer', '', '2021-12-14 16:32:08', '2021-12-14 16:32:08', NULL),
(171, 'Mason & Dixie', '603 Main St', '', 'Grapevine', 'TX', '76051', 'USA', '32.9349242', '-97.0781612', 'bethanne_newman@yahoo.com', '(817) 798-5453', 'Retailer', '', '2021-12-14 16:32:09', '2021-12-14 16:32:09', NULL),
(172, 'Picket Fences', '19193 I-45 South', '', 'Shenandoah', 'TX', '77385', 'USA', '30.176705', '-95.449357', 'lisapf@sbcglobal.net', '(281) 465-4144 ', 'Retailer', '', '2021-12-14 16:32:10', '2021-12-14 16:32:10', NULL),
(173, 'Schott Country Store', '19405 Bandera Rd.', '', 'Helotes', 'TX', '78023', 'USA', '29.6234923', '-98.7981242', 'schottcountrystore@yahoo.com', '(830) 377-6416 ', 'Retailer', '', '2021-12-14 16:32:10', '2021-12-14 16:32:10', NULL),
(174, 'Twigs', '199 Enterprise Blvd.', '', 'Emory', 'TX', '75440', 'USA', '32.8633949', '-95.7515639', 'twigscandles@yahoo.com', '(620) 330-2725', 'Retailer', '', '2021-12-14 16:32:11', '2021-12-14 16:32:11', NULL),
(175, 'Junk in the Mix', '200 S. Broadway', '', 'Dimmitt', 'TX', '79027', 'USA', '34.5495368', '-102.3127908', 'lisa.mixson@yahoo.com', '(806) 647-6700 ', 'Retailer', '', '2021-12-14 16:32:12', '2021-12-14 16:32:12', NULL),
(176, 'The Furniture Buyers Club', '2001 Central Circle #101', '', 'McKinney', 'TX', '75069', 'USA', '33.2200489', '-96.6317293', 'marina@thefurniturebuyersclub.com', '(469) 952-6404 ', 'Retailer', '', '2021-12-14 16:32:13', '2021-12-14 16:32:13', NULL),
(177, 'Standley Feed and Seed Inc.', '201 East Trinity', '', 'Madisonville', 'TX', '77864', 'USA', '30.9490742', '-95.912573', 'mittye.standley@yahoo.com', '(936) 348-2235 ', 'Retailer', '', '2021-12-14 16:32:14', '2021-12-14 16:32:14', NULL),
(178, 'Old Bryan Marketplace', '202 South Bryan', '', 'Bryan', 'TX', '77803', 'USA', '30.672571', '-96.3746479', 'whitney@oldbryan.com', '(979) 779-3245', 'Retailer', '', '2021-12-14 16:32:15', '2021-12-14 16:32:15', NULL),
(179, 'The Dienger Trading Co.', '210 N. Main St', '', 'Boerne', 'TX', '78006', 'USA', '29.7947166', '-98.7324705', 'mernst.thg@gmail.com', '(210) 380-3245', 'Retailer', '', '2021-12-14 16:32:16', '2021-12-14 16:32:16', NULL),
(180, 'Carter\'s Furniture', '2101 West Wadley # 6', '', 'Midland', 'TX', '79705', 'USA', '32.0221023', '-102.1071853', 'e.johnson@cartersfurniture.net', '(432) 682-2842', 'Retailer', '', '2021-12-14 16:32:17', '2021-12-14 16:32:17', NULL),
(181, 'Redid', '213 Highway 281', '', 'Marble Falls', 'TX', '78654', 'USA', '30.5710956', '-98.2759915', 'jeffmeganbeau@yahoo.com', '(512) 644-4040 ', 'Retailer', '', '2021-12-14 16:32:18', '2021-12-14 16:32:18', NULL),
(182, 'Kerr\'s Home INC', '21499 Eva Street', '', 'Montgomery', 'TX', '77356', 'USA', '30.3879989', '-95.7029601', 'kerrs@consolidated.net', '(936) 597-4000 ', 'Retailer', '', '2021-12-14 16:32:18', '2021-12-14 16:32:19', NULL),
(183, 'Clara Ida Frances Inc.', '219 N. Main', '', 'Winnsboro', 'TX', '75494', 'USA', '32.9582396', '-95.2903689', 'onlinestore@claraidafrances.com', '(903) 342-6137 ', 'Retailer', '', '2021-12-14 16:32:19', '2021-12-14 16:32:19', NULL),
(184, 'Parisian Class with Southern Sass', '221 Bonham Street', '', 'Paris', 'TX', '75460', 'USA', '33.6611561', '-95.5585695', 'Parisianclasswithsouthernsass@yahoo.com', '(903) 517-7775 ', 'Retailer', '', '2021-12-14 16:32:20', '2021-12-14 16:32:21', NULL),
(185, 'Emboldened Elegance Boutique', '2211 Strand Street Suite 101', '', 'Galveston', 'TX', '77550', 'USA', '29.552736', '-95.3941153', 'Heather@emboldenedboutiquesllc.com', '(979) 997-0979 ', 'Retailer', '', '2021-12-14 16:32:21', '2021-12-14 16:32:21', NULL),
(186, 'Cobblestone Cottage', '23701 Cinco Ranch Blvd, Suite 150', '', 'Katy', 'TX', '77494', 'USA', '29.7421665', '-95.7781504', 'casinewbill@yahoo.com', '(281) 693-4080 ', 'Retailer', '', '2021-12-14 16:32:23', '2021-12-14 16:32:23', NULL),
(187, 'Willow House', '238 W Pecan St', '', 'Celina', 'TX', '75009', 'USA', '33.3247344', '-96.7859028', 'willowhouse@shopwhb.com', '(972) 382-8811 ', 'Retailer', '', '2021-12-14 16:32:24', '2021-12-14 16:32:24', NULL),
(188, 'Three Doors', '2402 Bissonnet', '', 'Houston', 'TX', '77005', 'USA', '29.7256953', '-95.4152248', 'accounting@threedoorshouston.com', '(713) 528-7800 ', 'Retailer', '', '2021-12-14 16:32:24', '2021-12-14 16:32:25', NULL),
(189, 'Kuhl Linscomb', '2407 Steel Street', '', 'Houston', 'TX', '77098', 'USA', '29.738884', '-95.417031', 'accounting@kuhl-linscomb.com', '(713) 526-6000', 'Retailer', '', '2021-12-14 16:32:25', '2021-12-14 16:32:25', NULL),
(190, 'Jillybean', '245 Boys Ranch Rd', '', 'Waco', 'TX', '76705', 'USA', '31.6240552', '-97.0296192', 'jillt225@yahoo.com', '(254) 733-4332 ', 'Retailer', '', '2021-12-14 16:32:26', '2021-12-14 16:32:26', NULL),
(191, '259 Home Market', '255 S Main St', '', 'Boerne', 'TX', '78006', 'USA', '29.7920115', '-98.7305677', 'jordis@gvtc.com', '(830) 331-8866 ', 'Retailer', '', '2021-12-14 16:32:27', '2021-12-14 16:32:27', NULL),
(192, 'True Blue Home', '6507 Hwy 290 E', '', 'Chappell Hill', 'TX', '77833', 'USA', '30.1408112', '-96.2984934', 'cindy@truebluehome.com', '(832) 205-1022 ', 'Retailer', '', '2021-12-14 16:32:28', '2021-12-14 16:32:28', NULL),
(193, 'Nash Brothers Stores', '309 W San Antonio St', '', 'New Braunfels', 'TX', '78130', 'USA', '29.700205', '-98.125677', 'yolienash@msn.com', '(830) 708-1805', 'Retailer', '', '2021-12-14 16:32:29', '2021-12-14 16:32:29', NULL),
(194, 'Two Loons', '3210 W. 6Th', '', 'Amarillo', 'TX', '79106', 'USA', '35.2113702', '-101.872741', 'twoloonswarehouse@gmail.com', '(806) 670-0660', 'Retailer', '', '2021-12-14 16:32:30', '2021-12-14 16:32:30', NULL),
(195, 'Anthology Lighting', '32411 - A FM 2978', '', 'Magnolia', 'TX', '77354', 'USA', '30.2113249', '-95.5705627', 'michelle@anthologylighting.com', '(281) 298-5200', 'Retailer', '', '2021-12-14 16:32:31', '2021-12-14 16:32:31', NULL),
(196, 'The Nest Egg', '4020 Avenue Q', '', 'Lubbock', 'TX', '79412', 'USA', '33.557454', '-101.855857', 'nesteggantiques@gmail.com', '(806) 795-3545', 'Retailer', '', '2021-12-14 16:32:32', '2021-12-14 16:32:32', NULL),
(197, 'Kelly B Marble', '3519 34th St', '', 'Lubbock', 'TX', '79410', 'USA', '33.562995', '-101.890804', 'kelly@collegeflowers.com', '(806) 789-2374', 'Retailer', '', '2021-12-14 16:32:33', '2021-12-14 16:32:33', NULL),
(198, 'All About You', '9855 Eagle Dr', '', 'Baytown', 'TX', '77523', 'USA', '29.8414687', '-94.8547179', 'allaboutyoumb@yahoo.com', '(281) 385-6600', 'Retailer', '', '2021-12-14 16:32:34', '2021-12-14 16:32:34', NULL),
(199, 'The Lily Field', '4720 Cooper St', '', 'Arlington', 'TX', '76017', 'USA', '32.6695143', '-97.1353801', 'sjlingo@aol.com', '(817) 235-7742', 'Retailer', '', '2021-12-14 16:32:35', '2021-12-14 16:32:35', NULL),
(200, 'Buck Fergeson Originals Inc', '4 S Holland St', '', 'Bellville', 'TX', '77418', 'USA', '29.9504472', '-96.2579973', 'buckferg@gmail.com', '(979) 865-2167', 'Retailer', '', '2021-12-14 16:32:36', '2021-12-14 16:32:36', NULL),
(201, 'The Urban Giraffe ', '4000 SW 51st Avenue', '', 'Amarillo', 'TX', '79109', 'USA', '35.1541879', '-101.8809759', 'theurbangiraffe@hotmail.com', '(806) 418-8962', 'Retailer', '', '2021-12-14 16:32:37', '2021-12-14 16:32:37', NULL),
(202, 'Smitten LLC', '401 Augusta St', '', 'Fredericksburg', 'TX', '78624', 'USA', '30.2688515', '-98.8694686', 'dkfritz51@aol.com', '(830) 990-2732', 'Retailer', '', '2021-12-14 16:32:38', '2021-12-14 16:32:38', NULL),
(203, 'Bluebird off the Square', '202 W Alamo St', '', 'Brenham', 'TX', '77833', 'USA', '30.1665894', '-96.3991872', 'bluebirdoffthesquare@gmail.com', '(979) 421-8168 ', 'Retailer', '', '2021-12-14 16:32:39', '2021-12-14 16:32:39', NULL),
(204, 'The Design Connection', '441 Lone Star Dr', '', 'Abilene', 'TX', '79602', 'USA', '32.395781', '-99.716459', 'stockardpam@gmail.com', '(325) 669-3213', 'Retailer', '', '2021-12-14 16:32:40', '2021-12-14 16:32:40', NULL),
(205, 'Fixture This', '4614 DC Drive, Suite 1-A', '', 'Tyler', 'TX', '75701', 'USA', '32.2991682', '-95.3251884', 'info@fixturethistyler.com', '(903) 939-1300', 'Retailer', '', '2021-12-14 16:32:41', '2021-12-14 16:32:42', NULL),
(206, 'Becker Vineyards', '464 Becker Farms Rd', '', 'Stonewall', 'TX', '78671', 'USA', '30.2037931', '-98.7102097', 'lavender@beckerwines.com', '(830) 644-2681', 'Retailer', '', '2021-12-14 16:32:42', '2021-12-14 16:32:42', NULL),
(207, 'Gracie Lane', '4720 S. Cooper ST', '', 'Arlington', 'TX', '76017', 'USA', '32.6695143', '-97.1353801', 'teresa@gracielanecollection.com', '(817) 468-5263', 'Retailer', '', '2021-12-14 16:32:43', '2021-12-14 16:32:43', NULL),
(208, 'E T Tobey Company', '475 Murray Street', '', 'Midlothian', 'TX', '76065', 'USA', '32.4769054', '-96.9787103', 'info@ettobey.com', '(214) 208-7575', 'Retailer', '', '2021-12-14 16:32:44', '2021-12-14 16:32:44', NULL),
(209, 'Svelte Veldt', '5009 Broadway Street', '', 'San Antonio', 'TX', '78209', 'USA', '29.4725592', '-98.4630822', 'svelteveldthome@gmail.com', '(210) 973-7770', 'Retailer', '', '2021-12-14 16:32:45', '2021-12-14 16:32:45', NULL),
(210, 'Rhinestone Angel Gifts & Interiors', '501 I-10 Frontage Rd', '', 'Flatonia', 'TX', '78941', 'USA', '29.6976522', '-97.1024029', 'rhinestoneangel@hotmail.com', '(361) 865-9026 ', 'Retailer', '', '2021-12-14 16:32:46', '2021-12-14 16:32:46', NULL),
(211, 'Ballard & Blakely', '5021 West Lovers Lane', '', 'Dallas', 'TX', '75209', 'USA', '32.8515446', '-96.8243342', 'abby@ballardandblakely.com', '(214) 352-4440 ', 'Retailer', '', '2021-12-14 16:32:47', '2021-12-14 16:32:47', NULL),
(212, 'Pfaff Pfineries', '509 7th Street', '', 'Comfort', 'TX', '78013', 'USA', '29.9673265', '-98.9073639', 'lisapfaff2000@yahoo.com', '(830) 370-1100', 'Retailer', '', '2021-12-14 16:32:48', '2021-12-14 16:32:48', NULL),
(213, 'Fleurish Flowers', '514 8th St', '', 'Olton', 'TX', '79064', 'USA', '34.1813353', '-102.1344117', 'fleurishflowers@live.com', '(806) 285-2253', 'Retailer', '', '2021-12-14 16:32:49', '2021-12-14 16:32:49', NULL),
(214, 'Whiskey Cake Verde Parc', '5151 Beltline Road Suite 1200', '', 'Dallas', 'TX', '75254', 'USA', '32.9545844', '-96.8202131', 'leigh.sessler@fbrest.com', '(214) 766-6741', 'Retailer', '', '2021-12-14 16:32:49', '2021-12-14 16:32:49', NULL),
(215, 'Turkey Ridge Trading Co', '527 Hwy 27', '', 'Comfort', 'TX', '78013', 'USA', '29.9691003', '-98.9104355', 'sales@turkeyridge.com', '(830) 995-4265', 'Retailer', '', '2021-12-14 16:32:50', '2021-12-14 16:32:51', NULL);
INSERT INTO `shops` (`id`, `company`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `lat`, `lng`, `email`, `phone1`, `type`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(216, 'Sally Lynn Home', '545 Nolen Dr, Suite 200', '', 'Southlake', 'TX', '76092', 'USA', '32.9359043', '-97.108713', 'oscar@sallylynnhome.com', '(214) 315-4465', 'Retailer', '', '2021-12-14 16:32:51', '2021-12-14 16:32:52', NULL),
(217, 'Ruiz Studios', '5625 2nd St.', '', 'Katy', 'TX', '77493', 'USA', '29.7874068', '-95.8219814', 'ruizstudios@yahoo.com', '(281) 391-2299', 'Retailer', '', '2021-12-14 16:32:52', '2021-12-14 16:32:53', NULL),
(218, 'Bird Bakery', '5912 Broadway St.', '', 'San Antonio', 'TX', '78209', 'USA', '29.4809025', '-98.4647356', 'bird@birdbakery.com', '(310) 849-5304 ', 'Retailer', '', '2021-12-14 16:32:53', '2021-12-14 16:32:53', NULL),
(219, 'Laurie Saunders', '179 S Main', '', 'Boerne', 'TX', '78006', 'USA', '29.7930297', '-98.7310104', 'laurie@lauriesaunders.com', '(210) 710-3227', 'Retailer', '', '2021-12-14 16:32:54', '2021-12-14 16:32:54', NULL),
(220, 'Leakey Buckstop', '608 Hwy 83 S', '', 'Leakey', 'TX', '78873', 'USA', '29.7201885', '-99.7629555', 'info@leakeybuckstop.com', '(830) 232-5559', 'Retailer', '', '2021-12-14 16:32:55', '2021-12-14 16:32:55', NULL),
(221, 'Loudees Floral & Gift Center', '614 Avenue H', '', 'Levelland', 'TX', '79336', 'USA', '33.5867748', '-102.3782119', 'shakespearemary@yahoo.com', '(806) 894-7207', 'Retailer', '', '2021-12-14 16:32:56', '2021-12-14 16:32:56', NULL),
(222, 'Hausita Antiques', '636 South Castell Avenue', '', 'New Braunfels', 'TX', '78130', 'USA', '29.695721', '-98.117686', 'erin863@gmail.com', '(830) 515-5170 ', 'Retailer', '', '2021-12-14 16:32:57', '2021-12-14 16:32:57', NULL),
(223, 'Wallace & Dean', '6606 FM1488, Ste. 148, 111', '', 'Magnolia', 'TX', '77354', 'USA', '30.2228475', '-95.566322', 'wallaceanddeanproperties@gmail.com', '(832) 427-9925 ', 'Retailer', '', '2021-12-14 16:32:58', '2021-12-14 16:32:58', NULL),
(224, 'The Golden Antler Boutique', '709 Water Street', '', 'Kerrville', 'TX', '78028', 'USA', '30.0461616', '-99.1414642', 'thegoldenantler@gmail.com', '(830) 896-0107 ', 'Retailer', '', '2021-12-14 16:32:59', '2021-12-14 16:32:59', NULL),
(225, 'Lynda\'s', '7115 FM 145', '', 'Kress', 'TX', '79052', 'USA', '34.3730759', '-101.8152576', 'kim@streetrealestate.com', '(806) 292-8631', 'Retailer', '', '2021-12-14 16:33:00', '2021-12-14 16:33:00', NULL),
(226, 'Pete\'s Greenhouse', '7300 Canyon Dr.', '', 'Amarillo', 'TX', '79109-7202', 'USA', '35.1324357', '-101.9001749', 'orders@petesgreenhouse.com', '(806) 352-1664 ', 'Retailer', '', '2021-12-14 16:33:01', '2021-12-14 16:33:01', NULL),
(227, 'Renovate', '7413 Westview Dr. Suite C', '', 'Houston', 'TX', '77055', 'USA', '29.7941812', '-95.4783036', 'renovatecrp@gmail.com', '(713) 269-4417', 'Retailer', '', '2021-12-14 16:33:02', '2021-12-14 16:33:02', NULL),
(228, 'Judith Kellar Interiors LLC', '750 South Main Street, #150-73', '', 'Keller', 'TX', '76248', 'USA', '32.9230251', '-97.2549187', 'jlkellarinteriors@gmail.com', '(817) 907-1742 ', 'Retailer', '', '2021-12-14 16:33:03', '2021-12-14 16:33:03', NULL),
(229, 'Fort Worth Lighting', '7621 Rendon Bloodworth', '', 'Mansfield', 'TX', '76140', 'USA', '32.5774799', '-97.1959807', 'claudia.fwl5@yahoo.com', '(817) 534-8500', 'Retailer', '', '2021-12-14 16:33:04', '2021-12-14 16:33:04', NULL),
(230, 'Red Rooster ', '225 S Main ', '', 'Boerne', 'TX', '78006', 'USA', '29.7923004', '-98.7306617', 'jenniferfinch98@msn.com', '(210) 317-2804', 'Retailer', '', '2021-12-14 16:33:04', '2021-12-14 16:33:05', NULL),
(231, 'Country Accents Antiques', '8312 Hwy 16 South', '', 'Pipe Creek', 'TX', '78063', 'USA', '29.7318757', '-98.9575742', 'el4488@gmail.com', '(830) 535-4979', 'Retailer', '', '2021-12-14 16:33:05', '2021-12-14 16:33:06', NULL),
(232, 'Rusty Chandelier', '8980 Preston Rd. #1014', '', 'Frisco', 'TX', '75034', 'USA', '33.151397', '-96.8020282', 'vmccoskey@yahoo.com', '(214) 616-0211 ', 'Retailer', '', '2021-12-14 16:33:06', '2021-12-14 16:33:06', NULL),
(233, 'Crystal Interiors', '9209 Westview Cir', '', 'Dallas', 'TX', '75231', 'USA', '32.8902408', '-96.7453593', 'cacinteriors@mac.com', '(214) 749-7034', 'Retailer', '', '2021-12-14 16:33:07', '2021-12-14 16:33:07', NULL),
(234, 'Alldredge Gardens', '3300 N Fairgrounds Rd', '', 'Midland', 'TX', '79705', 'USA', '32.036034', '-102.057819', 'aarroyo0618@gmail.com', '(421) 682-0029', 'Retailer', '', '2021-12-14 16:33:08', '2021-12-14 16:33:08', NULL),
(235, 'Ballyhoo', '805 Ave F NW', '', 'Childress', 'TX', '79201', 'USA', '34.4293157', '-100.2130656', 'ballyhoo_gifts@att.net', '(940) 937-6775', 'Retailer', '', '2021-12-14 16:33:09', '2021-12-14 16:33:09', NULL),
(236, 'Back Country Furniture Designs', '401 Hurst St', '', 'Center', 'TX', '75935', 'USA', '31.7921604', '-94.1895875', 'shrs.inc94@yahoo.com', '(936) 598-7467 ', 'Retailer', '', '2021-12-14 16:33:10', '2021-12-14 16:33:10', NULL),
(237, 'Weir\'s Furniture Village', '4800 Spring Valley Rd', '', 'Farmers Branch', 'TX', '75244', 'USA', '32.9388184', '-96.8275338', 'tandip@weirs.net', '(214) 452-7764', 'Retailer', '', '2021-12-14 16:33:11', '2021-12-14 16:33:11', NULL),
(238, 'First Baptist Church Colleyville', '5405 Pleasant Run Rd', '', 'Colleyville', 'TX', '76034', 'USA', '32.8882292', '-97.1543996', 'beckyr@firstcolleyville.com ', '(817) 281-4158 ', 'Retailer', '', '2021-12-14 16:33:12', '2021-12-14 16:33:12', NULL),
(239, 'Bird\'s Nest Gifts and Antiques', '117 N Main St', '', 'Bryan', 'TX', '77803', 'USA', '30.6743107', '-96.3729019', 'candace.scott@att.net', '(979) 704-6256 ', 'Retailer', '', '2021-12-14 16:33:13', '2021-12-14 16:33:13', NULL),
(240, 'Lucy\'s Boutique and Gifts', '915 N Shepherd Dr Suite F', '', 'Houston', 'TX', '77008', 'USA', '29.7867483', '-95.4103076', 'lucygale0119@gmail.com', '(832) 541-7547 ', 'Retailer', '', '2021-12-14 16:33:14', '2021-12-14 16:33:14', NULL),
(241, 'Urban Alchemy, LLC', '403 E Main St', '', 'Arlington', 'TX', '76010', 'USA', '32.7366241', '-97.1029761', 'tony@urbanalchemy.bar', '(817) 673-8333', 'Retailer', '', '2021-12-14 16:33:15', '2021-12-14 16:33:15', NULL),
(242, 'Howell Furniture', '6095 Folsom Dr', '', 'Beaumont', 'TX', '77706', 'USA', '30.114298', '-94.171316', 'Wanda@howellfurniture.com', '(409) 832-2544 ', 'Retailer', '', '2021-12-14 16:33:16', '2021-12-14 16:33:16', NULL),
(243, 'Schaefer Outfitter', '6715 Corporation Pkwy Suite A', '', 'Fort Worth', 'TX', '76126', 'USA', '32.6946024', '-97.5099466', 'Lynn@schaeferranchwear.com', '(970) 800-1827 ', 'Retailer', '', '2021-12-14 16:33:17', '2021-12-14 16:33:17', NULL),
(244, 'Gardner Mill Company', '1100 West 7800 South #23B', '', 'West Jordan', 'UT', '84088', 'USA', '40.6093286', '-111.9228319', 'kristy@gardnervillage.com', '(801) 562-1933 ', 'Retailer', '', '2021-12-14 16:33:18', '2021-12-14 16:33:18', NULL),
(245, 'Sun River Gardens', '1248 North State Street', '', 'Orem', 'UT', '84057', 'USA', '40.3201342', '-111.7041741', 'tanya@sunrivergardens.com', '(801) 229-1975', 'Retailer', '', '2021-12-14 16:33:19', '2021-12-14 16:33:19', NULL),
(246, 'R C Willey', '2301 South 300 West', '', 'Salt Lake City', 'UT', '84115', 'USA', '40.7199786', '-111.8981459', 'leah.brunsman@rcwilley.com', '(801) 464-2370', 'Retailer', '', '2021-12-14 16:33:20', '2021-12-14 16:33:20', NULL),
(247, 'Olive and Cocoa', '3030 Directors Row', '', 'Salt Lake City', 'UT', '84104', 'USA', '40.7615242', '-112.0424423', 'jwadsworth@oliveandcocoa.com', '(801) 433-5007', 'Retailer', '', '2021-12-14 16:33:20', '2021-12-14 16:33:20', NULL),
(248, 'Boulevard Home Furnishings', '390 North Mall Drive', '', 'St. George', 'UT', '84790', 'USA', '37.1150357', '-113.541415', 'wendyw@blvdhome.com', '(435) 986-3100', 'Retailer', '', '2021-12-14 16:33:21', '2021-12-14 16:33:21', NULL),
(249, 'Four Foods Group', '871 South Automall Dr, Suite A ', '', 'American Fork', 'UT', '84003', 'USA', '40.4307502', '-111.8743951', 'maryam@fourfoodsgroup.com', '(801) 642-3800 ', 'Retailer', '', '2021-12-14 16:33:22', '2021-12-14 16:33:22', NULL),
(250, 'Studio McGee', '2110 E Murray Holladay Rd #200', '', 'Holladay', 'UT', '84117', 'USA', '40.6659644', '-111.8304537', 'accounting@mcgeeandco.com', '(801) 505-9984', 'Retailer', '', '2021-12-14 16:33:23', '2021-12-14 16:33:23', NULL),
(251, 'Winey Chicks Boutique', '18013 Forest Rd, Suite A-03', '', 'Forest', 'VA', '24551', 'USA', '37.3778105', '-79.2465057', 'beunique@wineychicksboutique.com', '(434) 610-9278', 'Retailer', '', '2021-12-14 16:33:24', '2021-12-14 16:33:24', NULL),
(252, 'Forge Industrial Works', '128 S Royal, Suite 100', '', 'Alexandria', 'VA', '22314', 'USA', '38.8036509', '-77.0436729', 'support@forgeindustrialworks.com', '(571) 290-3287', 'Retailer', '', '2021-12-14 16:33:25', '2021-12-14 16:33:25', NULL),
(253, 'The Market at Grelen', '15091 Yager Rd', '', 'Somerset', 'VA', '22972', 'USA', '38.199417', '-78.194607', 'gregg1357@me.com', '(434) 242-7356 ', 'Retailer', '', '2021-12-14 16:33:26', '2021-12-14 16:33:26', NULL),
(254, 'Great Country Farms', '18780 Foggy Bottom Road', '', 'Bluemont', 'VA', '20135', 'USA', '39.0955267', '-77.8253713', 'michele@greatcountryfarms.com', '(540) 554-2073 ', 'Retailer', '', '2021-12-14 16:33:27', '2021-12-14 16:33:27', NULL),
(255, 'Carolyn Elizabeth Designs', '27 South King St', '', 'Leesburg', 'VA', '20175', 'USA', '39.1144238', '-77.5651104', 'orders@27-south.com', '(856) 905-1916', 'Retailer', '', '2021-12-14 16:33:28', '2021-12-14 16:33:28', NULL),
(256, 'Main Street Primitives', '2821 West Main St', '', 'Salem', 'VA', '24153', 'USA', '37.2820181', '-80.1092561', 'connie_drennen@yahoo.com', '(540) 387-5030 ', 'Retailer', '', '2021-12-14 16:33:29', '2021-12-14 16:33:29', NULL),
(257, 'Simply Beautiful Spaces', '315 Garrisonville Rd Suite 108', '', 'Stafford', 'VA', '22554', 'USA', '38.4740483', '-77.4218643', 'kate@simplybeautifulspaces.com', '(540) 630-4074 ', 'Retailer', '', '2021-12-14 16:33:30', '2021-12-14 16:33:30', NULL),
(258, 'Lucketts Store', '42350 Lucketts Rd', '', 'Leesburg', 'VA', '20176', 'USA', '39.2158886', '-77.5344457', 'amycwhyte@gmail.com', '(703) 779-0268', 'Retailer', '', '2021-12-14 16:33:30', '2021-12-14 16:33:31', NULL),
(259, 'Rockfish Gap Country Store', '8860 Rockfish Gap Turnpike', '', 'Afton', 'VA', '22920', 'USA', '38.0306279', '-78.8084237', 'toosie2146@aol.com', '(540) 456-6112 ', 'Retailer', '', '2021-12-14 16:33:31', '2021-12-14 16:33:31', NULL),
(260, 'Red Poppy Pickin', '8167 Mechanicsville Turnpike, Suite A', '', 'Mechanicsville', 'VA', '23111', 'USA', '37.5967864', '-77.3777465', 'chelsealhooper@gmail.com', '(804) 398-0585', 'Retailer', '', '2021-12-14 16:33:32', '2021-12-14 16:33:32', NULL),
(261, 'Gather', '920 Mt. Hermoin Rd.', '', 'Midlothian', 'VA', '23112', 'USA', '37.4886369', '-77.7263255', 'contact@shopgather.com', '(804) 379-0441', 'Retailer', '', '2021-12-14 16:33:34', '2021-12-14 16:33:34', NULL),
(262, 'Gracie\'s Cottage', '11529 Busy St', '', 'Richmond', 'VA', '23236', 'USA', '37.5024208', '-77.6088417', 'Jhmcnamara@gmail.com', '(804) 399-7892', 'Retailer', '', '2021-12-14 16:33:34', '2021-12-14 16:33:34', NULL),
(263, 'The Jefferson Monticello', 'Ivy Business Park, 556 Dettor Rd Suite 107', '', 'Charlottesville', 'VA', '22903', 'USA', '38.0086043', '-78.4531994', 'lwilkins@monticello.org', '(434) 984-7722 ', 'Retailer', '', '2021-12-14 16:33:35', '2021-12-14 16:33:36', NULL),
(264, 'Creme de la CrÃ¨me ', '23 East Washington St', '', 'Middleburg', 'VA', '20117', 'USA', '38.9692719', '-77.7342218', 'cdlcmiddleburg@gmail.com', '(240) 651-1714', 'Retailer', '', '2021-12-14 16:33:36', '2021-12-14 16:33:36', NULL),
(265, 'Merrifield Garden Center', '8132 Lee Hwy', '', 'Falls Church', 'VA', '22042', 'USA', '38.8759689', '-77.2261047', 'apdept@mgcmail.com', '(703) 968-9600 ', 'Retailer', '', '2021-12-14 16:33:37', '2021-12-14 16:33:37', NULL),
(266, 'Green Mountain Florist Supply', '45 Swift Street', '', 'South Burlington', 'VT', '05430', 'USA', '44.4455184', '-73.2078688', 'tom@gmfsi.com', '(802) 865-4447', 'Retailer', '', '2021-12-14 16:33:38', '2021-12-14 16:33:38', NULL),
(267, 'Northlight Interiors', '103 W Stewart Ave', '', 'Puyallup', 'WA', '98371', 'USA', '47.2035243', '-122.2400534', 'chris@northlightinteriors.com', '(253) 826-0339', 'Retailer', '', '2021-12-14 16:33:39', '2021-12-14 16:33:39', NULL),
(268, 'Re-Feather Your Nest', '121-A Freeway Dr', '', 'Mt Vernon', 'WA', '98273', 'USA', '48.4219657', '-122.3366205', 'Info@re-featheryournest.com', '(360) 755-3126', 'Retailer', '', '2021-12-14 16:33:40', '2021-12-14 16:33:40', NULL),
(269, 'Urban in Cashmere', '126 cottage ave', '', 'Cashmere', 'WA', '98815', 'USA', '47.5217349', '-120.4682292', 'Urban.karaj@gmail.com', '(509) 670-2583 ', 'Retailer', '', '2021-12-14 16:33:41', '2021-12-14 16:33:41', NULL),
(270, 'Urban Barnhouse', '1333 Washington Street', '', 'Vancouver', 'WA', '98660', 'USA', '45.6315827', '-122.672144', 'urbanbarnhouse1333@gmail.com', '(360) 600-7035 ', 'Retailer', '', '2021-12-14 16:33:42', '2021-12-14 16:33:42', NULL),
(271, 'Retreat Interiors', '1118 1st St', '', 'Snohomish', 'WA', '98290', 'USA', '47.9116905', '-122.0968726', 'jlsteinhauer@gmail.com', '(425) 876-4674', 'Retailer', '', '2021-12-14 16:33:43', '2021-12-14 16:33:43', NULL),
(272, 'Arlington Hardware', '215 N Olympic Ave', '', 'Arlington', 'WA', '98223', 'USA', '48.1938373', '-122.1262756', 'amandaz@arlingtonhardware.com', '(360) 435-5523 ', 'Retailer', '', '2021-12-14 16:33:44', '2021-12-14 16:33:44', NULL),
(273, 'Graja INC', '218 Misty Dr', '', 'Woodland', 'WA', '98674', 'USA', '45.9194501', '-122.7245712', 'lisa@graja.biz', '(816) 304-7455', 'Retailer', '', '2021-12-14 16:33:44', '2021-12-14 16:33:44', NULL),
(274, 'Lucky You', '317 NW Gilman Blvd Suite 16', '', 'Issaquah', 'WA', '98027', 'USA', '47.5399348', '-122.0416548', 'shopluckyyou@gmail.com', '(425) 890-7331 ', 'Retailer', '', '2021-12-14 16:33:45', '2021-12-14 16:33:45', NULL),
(275, 'Walkers Furniture', '3808 N Sullivan Road, Building #22', '', 'Spokane Valley', 'WA', '99216', 'USA', '47.688467', '-117.191945', 'Darcy@walkersfurniture.com', '(509) 535-1995', 'Retailer', '', '2021-12-14 16:33:46', '2021-12-14 16:33:46', NULL),
(276, 'Curtsy Couture Events & Designs', '435 State Route 153', '', 'Pateros', 'WA', '98846', 'USA', '48.114013', '-120.0101151', 'barbaralpierre@gmail.com', '(206) 948-4949', 'Retailer', '', '2021-12-14 16:33:47', '2021-12-14 16:33:47', NULL),
(277, 'It\'s All in the Details', '4504 W 26th Ave. Ste. 110', '', 'Kennewick', 'WA', '99338', 'USA', '46.1864889', '-119.1807107', 'ashley@gretlhomes.com', '(509) 943-9139 ', 'Retailer', '', '2021-12-14 16:33:48', '2021-12-14 16:33:48', NULL),
(278, 'The Garden Room', '4729 Pt Fosdick Dr NW, Suite 300', '', 'Gig Harbor', 'WA', '98335', 'USA', '47.3033859', '-122.5812954', 'gardenroom@comcast.net', '(253) 514-6033', 'Retailer', '', '2021-12-14 16:33:49', '2021-12-14 16:33:49', NULL),
(279, 'Favorite Things', '5780 North Star Rd', '', 'Ferndale', 'WA', '98248', 'USA', '48.8516731', '-122.6710052', 'Petalsandbloomsbham@gmail.com', '(360) 920-1294', 'Retailer', '', '2021-12-14 16:33:51', '2021-12-14 16:33:51', NULL),
(280, 'Haley\'s Cottage', '922 1st st', '', 'Snohomish', 'WA', '98290', 'USA', '47.9115593', '-122.0942432', 'haleyscottage@aol.com', '(425) 822-2730', 'Retailer', '', '2021-12-14 16:33:52', '2021-12-14 16:33:52', NULL),
(281, 'Frenchies Flute\'s & Fleur\'s', '107 E Woodin Ave', '', 'Chelan', 'WA', '98816', 'USA', '47.8401737', '-120.0188467', 'kelly.frenchies@nwi.net', '(509) 888-2602 ', 'Retailer', '', '2021-12-14 16:33:53', '2021-12-14 16:33:53', NULL),
(282, 'Red Barn Company Store', '114 E Main St. Suite 107', '', 'Waunakee', 'WI', '53597', 'USA', '43.1917975', '-89.4534776', 'vicky@redbarncompanystore.com', '(608) 850-4285', 'Retailer', '', '2021-12-14 16:33:54', '2021-12-14 16:33:54', NULL),
(283, 'Brenda\'s Blumenladen', '17 Sixth Ave', '', 'New Glarus', 'WI', '53574', 'USA', '42.8142193', '-89.6331513', 'blumenladen@tds.net', '(608) 527-2230 ', 'Retailer', '', '2021-12-14 16:33:54', '2021-12-14 16:33:54', NULL),
(284, 'The French Farmhouse', '222 N. Main St.', '', 'Rice Lake', 'WI', '54868', 'USA', '45.5039677', '-91.7336973', 'widikerj@gmail.com', '(715) 579-6704', 'Retailer', '', '2021-12-14 16:33:55', '2021-12-14 16:33:56', NULL),
(285, 'Inspired Spaces, LLC', '239 E Chicago Street ', '', 'Milwaukee', 'WI', '53202', 'USA', '43.0324415', '-87.9079934', 'inspiredspaces.betsy@gmail.com', '(414) 800-5838', 'Retailer', '', '2021-12-14 16:33:57', '2021-12-14 16:33:57', NULL),
(286, 'Harvest Home', '505 Capitol Dr.', '', 'Pewaukee', 'WI', '53072', 'USA', '43.0833649', '-88.2558348', 'bwistl@tds.net', '(262) 691-4663', 'Retailer', '', '2021-12-14 16:33:57', '2021-12-14 16:33:57', NULL),
(287, 'Sendik\'s', '7225 W. Marcia Rd.', '', 'Milwaukee', 'WI', '53223', 'USA', '43.1670699', '-88.0007281', 'margaret@sendiksmarket.com', '(414) 962-9525', 'Retailer', '', '2021-12-14 16:33:58', '2021-12-14 16:33:58', NULL),
(288, 'Door County Nature Works', '7335 Highway 42', '', 'Egg Harbor', 'WI', '54209', 'USA', '45.049998', '-87.279515', 'marcy@dcnw.biz', '(920) 868-2651', 'Retailer', '', '2021-12-14 16:33:59', '2021-12-14 16:33:59', NULL),
(289, 'WG&R Furniture', '900 Challenger Drive', '', 'Green Bay', 'WI', '54311', 'USA', '44.4843197', '-87.9342462', 'acctpay@wgrfurniture.com', '(920) 469-4880 ', 'Retailer', '', '2021-12-14 16:34:00', '2021-12-14 16:34:00', NULL),
(290, 'Vintage Barn Chicks, LLC', 'N47W 28270 Lynndale Rd', '', 'Pewaukee', 'WI', '53072', 'USA', '43.1047075', '-88.3084327', 'vintagebarnchicks@hotmail.com', '(920) 397-0712 ', 'Retailer', '', '2021-12-14 16:34:01', '2021-12-14 16:34:01', NULL),
(291, 'Treehouse Gifts Inc.', '9546 E 16 Frontage Rd', '', 'Onalaska', 'WI', '54650', 'USA', '43.8844285', '-91.1715611', 'cassandrabirdd.treehousegifts@gmail.com', '(608) 783-4438', 'Retailer', '', '2021-12-14 16:34:02', '2021-12-14 16:34:02', NULL),
(292, 'Blue Magnolia', '610 N. Eisenhower Dr', '', 'Beckley', 'WV', '25801', 'USA', '37.791346', '-81.17223', 'info@bluemagnoliahome.com', '(304) 256-7500', 'Retailer', '', '2021-12-14 16:34:03', '2021-12-14 16:34:03', NULL),
(293, '0', '0', '', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '', '2021-12-14 16:34:04', '2021-12-14 16:34:04', NULL),
(294, 'Urban Farmhouse', '12680 Crabapple Rd.', '', 'Milton', 'GA', '30004', 'USA', '34.0900206', '-84.3403969', 'urbanfarmhousedesigns@yahoo.com', '(770) 410-1112 ', 'Retailer', '', '2021-12-14 16:34:05', '2021-12-14 16:34:05', NULL),
(295, 'Southern with Grace', '103 East Main Street', '', 'Cartersville', 'GA', '30120', 'USA', '34.116269', '-84.9000645', 'southernwithgrace@gmail.com', '(678) 758-6084', 'Retailer', '', '2021-12-14 16:34:06', '2021-12-14 16:34:06', NULL),
(296, 'Birds & Bobos LLC', '1190 Huff Rd NW', '', 'Atlanta', 'GA', '30318', 'USA', '33.7885797', '-84.4268893', 'birdsandboboshome@gmail.com', '(404) 895-1159 ', 'Retailer', '', '2021-12-14 16:34:07', '2021-12-14 16:34:07', NULL),
(297, 'Linen & Flax Home', '984 Canton Street', '', 'Roswell', 'GA', '30075', 'USA', '34.0257381', '-84.3617927', 'vendor@linenandflax.com', '(770) 846-8292', 'Retailer', '', '2021-12-14 16:34:08', '2021-12-14 16:34:08', NULL),
(298, 'Lizard Thicket-Peachtree City', '1253 N Peachtree Parkway', '', 'Peachtree', 'GA', '30269', 'USA', '33.4382576', '-84.5911137', 'annab18@att.net', '(770) 487-7449', 'Retailer', '', '2021-12-14 16:34:09', '2021-12-14 16:34:09', NULL),
(299, 'Nautical Furnishing', '60 NW 60th St', '', 'Fort Lauderdale', 'FL', '33309', 'USA', '26.201248', '-80.147405', 'pbattershill@nauticalfurnishings.com', '(954) 771-1100 ', 'Retailer', '', '2021-12-14 16:34:09', '2021-12-14 16:34:09', NULL),
(300, 'J Turner & Co', '6100 Phillips Hwy Unit 2', '', 'Jacksonville', 'FL', '32224', 'USA', '30.2600049', '-81.614049', 'jill@jturner.com', '(904) 527-8359', 'Retailer', '', '2021-12-14 16:34:10', '2021-12-14 16:34:10', NULL),
(301, 'Green Gates Market', '801 North Section Street ', '', 'Fairhope', 'AL', '36532', 'USA', '30.5401918', '-87.8992453', 'greengatesmarket@bellsouth.net', '(251) 928-2525', 'Retailer', '', '2021-12-14 16:34:11', '2021-12-14 16:34:11', NULL),
(302, 'Olde Farm Creek', '10151 Lisbon Road', '', 'Yorkville', 'IL', '60560', 'USA', '41.5720464', '-88.4863298', 'oldefarmcreek@ameritech.net', '(630) 553-0628 ', 'Retailer', '', '2021-12-14 16:34:12', '2021-12-14 16:34:12', NULL),
(303, 'Songbird Lane Antiques', '16870 N 1100 Ave', '', 'Cambridge', 'IL', '61238', 'USA', '41.3107986', '-90.1105575', 'lfpfrm@gmail.com', '(309) 507-1660', 'Retailer', '', '2021-12-14 16:34:13', '2021-12-14 16:34:13', NULL),
(304, 'The Greenbriar Shop', '19374 Collier Ridge Rd', '', 'Guilford', 'IN', '47022', 'USA', '39.153085', '-84.9603204', 'thegreenbriarshop@comcast.net', '(812) 487-8008 ', 'Retailer', '', '2021-12-14 16:34:14', '2021-12-14 16:34:14', NULL),
(305, 'Fivethirty Home', '205 S. Main Street', '', 'Zionville', 'IN', '46077', 'USA', '39.949848', '-86.2612799', 'erica@fivethirtyresale.com', '(317) 567-7781 ', 'Retailer', '', '2021-12-14 16:34:15', '2021-12-14 16:34:15', NULL),
(306, 'Ole Tin Rooster', '165 N Harrison St', '', 'Shipshewana', 'IN', '46565', 'USA', '41.677416', '-85.5790896', 'david@oletinrooster.com', '(260) 341-2206', 'Retailer', '', '2021-12-14 16:34:16', '2021-12-14 16:34:16', NULL),
(307, 'Schultz Floral Shop', '2204 Calumet', '', 'Valparaiso', 'IN', '46383', 'USA', '41.48875', '-87.0484055', 'schultzfloral@comcast.net', '(219) 464-3588', 'Retailer', '', '2021-12-14 16:34:17', '2021-12-14 16:34:17', NULL),
(308, 'Critser\'s Flowers and Gifts', '59 W Washington Street', '', 'Morgantaown', 'IN', '46160', 'USA', '39.3710393', '-86.2616802', 'critsersflowers@yahoo.com', '(812) 597-4551', 'Retailer', '', '2021-12-14 16:34:18', '2021-12-14 16:34:18', NULL),
(309, 'Salsberry Garden Center', '2269 W 400 South', '', 'Kokomo', 'IN', '46902', 'USA', '40.4176829', '-86.1702772', 'sgc@lightbound.com', '(765) 453-5531', 'Retailer', '', '2021-12-14 16:34:19', '2021-12-14 16:34:19', NULL),
(310, 'Gathered Roots', '242 S Main Street', '', 'Fortville', 'IN', '46040', 'USA', '39.9321732', '-85.8484883', 'libby@gathered-roots.com', '(317) 482-7979', 'Retailer', '', '2021-12-14 16:34:20', '2021-12-14 16:34:20', NULL),
(311, 'Greystone Marketplace', '5475 Hwy 280', '', 'Birmingham', 'AL', '35242', 'USA', '33.4121604', '-86.6645151', 'greystoneantiques280@gmail.com', '(205) 995-4773', 'Retailer', '', '2021-12-14 16:34:21', '2021-12-14 16:34:21', NULL),
(312, 'Home~Santa Margarita', '10300 Santa Lucia Rd.', '', 'Atascadero', 'CA', '93422', 'USA', '35.3910498', '-120.6094955', 'homesantamargarita@gmail.com', '(805) 365-7072', 'Retailer', '', '2021-12-14 16:34:22', '2021-12-14 16:34:22', NULL),
(313, 'Mak & Co', '18 Red Spting Rd', '', 'Andover', 'MA', '01810', 'USA', '42.655563', '-71.140229', 'lmakiej@gmail.com', '(978) 985-9506', 'Retailer', '', '2021-12-14 16:34:23', '2021-12-14 16:34:23', NULL),
(314, 'Shelayne\'s Botanicals', '5287 Hwy 280 Suite 249', '', 'Birmingham', 'AL', '35242', 'USA', '33.4220222', '-86.6806223', 'shelayne73@gmail.com', '(205) 706-2055', 'Retailer', '', '2021-12-14 16:34:24', '2021-12-14 16:34:24', NULL),
(315, 'Inline Electric Supply', '217 Broadway Dr, SW', '', 'Cullman', 'AL', '35055', 'USA', '34.1545794', '-86.836138', 'ap@inlinelectric.com', '(256) 533-2851', 'Retailer', '', '2021-12-14 16:34:25', '2021-12-14 16:34:25', NULL),
(316, 'Inline Electric Supply', '745 Northeast Blvd', '', 'Montgomery', 'AL', '36117', 'USA', '32.404191', '-86.215438', 'ap@inlinelectric.com', '(256) 533-2851', 'Retailer', '', '2021-12-14 16:34:26', '2021-12-14 16:34:26', NULL),
(317, 'Inline Electric Supply', '2721 Pelham Parkway', '', 'Pelham', 'AL', '35124', 'USA', '33.3124951', '-86.8008061', 'ap@inlinelectric.com', '(256) 533-2851', 'Retailer', '', '2021-12-14 16:34:27', '2021-12-14 16:34:27', NULL),
(318, 'Inline Electric Supply', '1661 Shug Jordan PKWY, Suite 502', '', 'Auburn', 'AL', '36830', 'USA', '32.6286811', '-85.500801', 'ap@inlinelectric.com', '(256) 533-2851', 'Retailer', '', '2021-12-14 16:34:28', '2021-12-14 16:34:28', NULL),
(319, 'Inline Electric Supply', '813 US Hwy 72 West', '', 'Athens', 'AL', '35611', 'USA', '34.7893795', '-86.9804063', 'ap@inlinelectric.com', '(256) 533-2851', 'Retailer', '', '2021-12-14 16:34:29', '2021-12-14 16:34:29', NULL),
(320, 'Inline Electric Supply', '2880 Bob Wallace Ave', '', 'Huntsville', 'AL', '35805', 'USA', '34.7122483', '-86.6058727', 'ap@inlinelectric.com', '(256) 533-2851', 'Retailer', '', '2021-12-14 16:34:29', '2021-12-14 16:34:29', NULL),
(321, 'Vintage Treasures Antiques & More', '7329 W Main St', '', 'Dothan', 'AL', '36305', 'USA', '31.2376541', '-85.5091592', 'jtidwell@ozarkcityschools.net', '(334) 432-0019', 'Retailer', '', '2021-12-14 16:34:30', '2021-12-14 16:34:30', NULL),
(322, 'Kaufman by Design West', '14900 Cantrell Rd', '', 'Little Rock', 'AR', '72223', 'USA', '34.8014281', '-92.4386507', 'dnorris@kaufmanlumber.com', '(501) 673-3978', 'Retailer', '', '2021-12-14 16:34:31', '2021-12-14 16:34:31', NULL),
(323, 'Emerson Country Store ', '5340 NY-28', '', 'Mt. Tremper', 'NY', '12457', 'USA', '42.051969', '-74.2895976', 'hlane@emersonresort.com', '(845)-688-5800', 'Retailer', '', '2021-12-14 16:34:32', '2021-12-14 16:34:33', NULL),
(324, 'Mama\'s Junk', '204 Hand Ave', '', 'Cape May Court House ', 'NJ', '8210', 'USA', '39.0828428', '-74.8285294', 'info@mamasjunkco.com', '(609) 231-5097', 'Retailer', '', '2021-12-14 16:34:34', '2021-12-14 16:34:34', NULL),
(325, 'Pine Cone Cottage ', '1817 SR 83, Unit 341', '', 'Millersburg', 'OH', '44654', 'USA', '40.4605005', '-81.9038128', 'pineconecottage@icloud.com', '(330) 763-1181', 'Retailer', '', '2021-12-14 16:34:35', '2021-12-14 16:34:35', NULL),
(326, 'Watson\'s of Cincinnati', '2721 E. Sharon Road', '', 'Cincinnati', 'OH', '45241', 'USA', '39.268697', '-84.4312657', 'dscudder@watsons.com', '(513) 326-1120', 'Retailer', '', '2021-12-14 16:34:36', '2021-12-14 16:34:36', NULL),
(327, 'Architectural Justice', '2462 Pearl Road', '', 'Medina', 'OH', '44256', 'USA', '41.208049', '-81.842448', 'Djustice@archjustice.com', '(330) 225-6000', 'Retailer', '', '2021-12-14 16:34:36', '2021-12-14 16:34:37', NULL),
(328, 'Rever Home Decor LLCÂ ', '510 S Prospect Ave', '', 'Hartville', 'OH', '44632', 'USA', '40.9592263', '-81.3361383', 'reverhomedecor@gmail.com', '(330)705-6826', 'Retailer', '', '2021-12-14 16:34:38', '2021-12-14 16:34:38', NULL),
(329, 'Country Rose Boutique', '1157 6th Street', '', 'Norco', 'CA', '92860', 'USA', '33.9386398', '-117.5469622', '', '951-220-7485', 'Retailer', '', '2021-12-14 16:34:39', '2021-12-14 16:34:39', NULL),
(330, 'Darby Mack Designs company', '1999 Bruno Place', '', 'Escondido', 'CA', '92026', 'USA', '33.1613758', '-117.1225343', '', '(858) 472-0549', 'Retailer', '', '2021-12-14 16:34:40', '2021-12-14 16:34:40', NULL),
(331, 'Leslie Home Gallery', '108 W Ridgeville Blvd', '', 'Mount Airy', 'MD', '21771', 'USA', '39.3652175', '-77.168135', '', '(301) 829-8121', 'Retailer', '', '2021-12-14 16:34:40', '2021-12-14 16:34:40', NULL),
(332, 'Laylaloou', '7432 Mayfair Wood Dr', '', 'Fuquay Varina', 'NC', '27526', 'USA', '35.5684155', '-78.7636709', '', '(919) 608-0103', 'Retailer', '', '2021-12-14 16:34:41', '2021-12-14 16:34:42', NULL),
(333, 'Lily Crest', '211 W 3rd Street', '', 'Yankton', 'SD', '57078', 'USA', '42.869712', '-97.394554', '', '(605) 664-8800', 'Retailer', '', '2021-12-14 16:34:42', '2021-12-14 16:34:42', NULL),
(334, 'Summer’s Market', '3304 S. Elm Pl', '', 'Broken Arrow', 'OK', '74011', 'USA', '36.0188814', '-95.7978222', '', '(918) 955-0148', 'Retailer', '', '2021-12-14 16:34:43', '2021-12-14 16:34:43', NULL),
(335, 'Digs', '3905 Chenoweth Square', '', 'Louisville', 'KY', '40207', 'USA', '38.2539409', '-85.6557623', '', '(502) 893-3447', 'Retailer', '', '2021-12-14 16:34:44', '2021-12-14 16:34:44', NULL),
(336, 'Southern Blessings', '3430 N Main Street', '', 'Hazard', 'KY', '41701', 'USA', '37.2810483', '-83.1933006', '', '(606) 439-0001', 'Retailer', '', '2021-12-14 16:34:45', '2021-12-14 16:34:45', NULL),
(337, 'Silverwood', '398 Broadway', '', 'Saratoga Springs', 'NY', '12866', 'USA', '43.0813865', '-73.7853268', '', '(518) 583-3600', 'Retailer', '', '2021-12-14 16:34:46', '2021-12-14 16:34:46', NULL),
(338, 'Tucker\'s Valley Furniture', '850 E Main Street', '', 'El Cajon', 'CA', '92020', 'USA', '32.7952312', '-116.951483', '', '619-442-7706', 'Retailer', '', '2021-12-14 16:34:47', '2021-12-14 16:34:47', NULL),
(339, 'The Lake House', '28966 Hook Creek Road', '', 'Cedar Glen', 'CA', '92321', 'USA', '34.2549387', '-117.1712289', '', '(909) 213-8772', 'Retailer', '', '2021-12-14 16:34:48', '2021-12-14 16:34:48', NULL),
(340, 'Inspirations Gift Shop', '4411 Avenida De Las Estrellas', '', 'Yorba Linda', 'CA', '92887', 'USA', '33.8905864', '-117.7646067', '', '(714) 386-8500', 'Retailer', '', '2021-12-14 16:34:49', '2021-12-14 16:34:49', NULL),
(341, 'Laissez Faire & Co', '10710 York Rd', '', 'Cockeysville', 'MD', '21030', 'USA', '39.4795785', '-76.6433288', '', '(410) 299-2538', 'Retailer', '', '2021-12-14 16:34:50', '2021-12-14 16:34:50', NULL),
(342, 'Inspirations Gift Shop', '4411 Avenida De Las Estrellas', '', 'Yorba Linda', 'CA', '92887', 'USA', '33.8905864', '-117.7646067', '', '(714) 386-8500', 'Retailer', '', '2021-12-14 16:34:51', '2021-12-14 16:34:51', NULL),
(343, 'Genevieve Bond', '7680 E Brainerd Rd', '', 'Chattanooga', 'TN', '37421', 'USA', '35.0108544', '-85.1565204', '', '(423) 510-0099', 'Retailer', '', '2021-12-14 16:34:51', '2021-12-14 16:34:52', NULL),
(344, 'Boot N Shoot', '210 W Street Road', '', 'Warminster', 'PA', '18974', 'USA', '40.1987706', '-75.0869201', '', '(215) 674-8509', 'Retailer', '', '2021-12-14 16:34:52', '2021-12-14 16:34:52', NULL),
(345, 'Ozarks Americana', '4131 Old Seward Hwy', '', 'Anchorage', 'AK', '99503', 'USA', '61.18342', '-149.8676', 'ozarksamericana@gci.net', '(253) 838-2909 ', 'Retailer', '', '2021-12-14 16:47:00', '2021-12-14 16:47:00', NULL),
(346, 'The Greenery ', '3671 N Hwy 77 ', '', 'Waxahachie', 'TX', '75165', 'USA', '32.4770664', '-96.8299982', 'deborah.green1961@gmail.com', '(972) 617-5459', 'Retailer', '', '2021-12-14 16:47:01', '2021-12-14 16:47:01', NULL),
(347, 'Beard Antiquities on 5th', '248 Chubby Drive', '', 'Columbus', 'MS', '39705', 'USA', '33.5367514', '-88.4345664', 'jeanettebeard@gmail.com', '(662) 386-6157', 'Retailer', '', '2021-12-14 16:47:03', '2021-12-14 16:47:03', NULL),
(348, 'Art & Soul Gallery', '5732A HWY 431 S', '', 'Brownsboro', 'AL', '35741', 'USA', '34.749522', '-86.4424034', 'kim@artandsoulhsv.com', '(256) 270-7363', 'Retailer', '', '2021-12-14 16:47:04', '2021-12-14 16:47:04', NULL),
(349, 'The Greenery ', '210 Campground Rd.', '', 'Brownsboro', 'AL', '65741', 'USA', '34.6818776', '-86.4963862', 'greenery210@aol.com', '(256) 518-9836', 'Retailer', '', '2021-12-14 16:47:04', '2021-12-14 16:47:04', NULL),
(350, 'Beard\'s Antiquities', '248 Chubby Drive ', '', 'Columbus', 'MS', '39705', 'USA', '33.5367514', '-88.4345664', 'jeanettebeard@gmail.com', '(662) 386-6157', 'Retailer', '', '2021-12-14 16:47:06', '2021-12-14 16:47:06', NULL),
(351, 'Capitol Park Antiques Interior', '2625 University Blvd', '', 'Tuscaloosa', 'AL', '35401', 'USA', '33.2082438', '-87.5723829', 'capitolparkantiques@yahoo.com', '(205) 826-4627', 'Retailer', '', '2021-12-14 16:47:07', '2021-12-14 16:47:07', NULL),
(352, 'Tinnin Imports', '2089 Lakeland Dr', '', 'Jackson', 'MS', '39216', 'USA', '32.3315408', '-90.1326891', 'charles@tinninimports.com', '(601) 981-5234', 'Retailer', '', '2021-12-14 16:47:07', '2021-12-14 16:47:07', NULL),
(353, 'Nordaas Retail', '10091 State Hwy 22', '', 'Minnesota Lake ', 'MN', '56068', 'USA', '43.8501853', '-93.8356552', 'sheila.orourke@nordaashomes.com', '(507) 462-3331', 'Retailer', '', '2021-12-14 16:47:08', '2021-12-14 16:47:08', NULL),
(354, 'The Southern Exchange', '1 Court Square Ste. 100', '', 'Montgomery', 'AL', '36104', 'USA', '32.3768994', '-86.3095475', 'bpitts93@yahoo.com', '(334) 850-3344 ', 'Retailer', '', '2021-12-14 16:47:09', '2021-12-14 16:47:09', NULL),
(355, 'Alabama Furniture Market', '10 Commercial Park Dr', '', 'Calera', 'AL', '35040', 'USA', '33.1353836', '-86.751976', 'arhodesakins@gmail.com', '(205) 668-9995', 'Retailer', '', '2021-12-14 16:47:10', '2021-12-14 16:47:10', NULL),
(356, 'Maison de France', '1304 8th Street', '', 'Leeds', 'AL', '35094', 'USA', '33.5431093', '-86.5426343', 'ginny@mdfantiques.com', '(205) 699-6330 ', 'Retailer', '', '2021-12-14 16:47:11', '2021-12-14 16:47:11', NULL),
(357, 'Naomi and Olive', '140 N Foster St', '', 'Dothan', 'AL', '36305', 'USA', '31.2242349', '-85.3918885', 'christy@naomiandolive.com', '(334) 791-1821', 'Retailer', '', '2021-12-14 16:47:12', '2021-12-14 16:47:12', NULL),
(358, 'Attic Antiques', '14569 Hwy 280', '', 'Chelsea', 'AL', '35043', 'USA', '33.349994', '-86.59533', 'bzmann@bellsouth.net', '(205) 991-6887 ', 'Retailer', '', '2021-12-14 16:47:13', '2021-12-14 16:47:13', NULL),
(359, 'The Vintage Cottage', '16221 Hwy 82 West', '', 'Buhl', 'AL', '35446', 'USA', '33.2705102', '-87.7393302', 'thevintagecottage35446@yahoo.com', '(205) 310-3933', 'Retailer', '', '2021-12-14 16:47:14', '2021-12-14 16:47:14', NULL),
(360, 'Tru Identity', '1650 Jack Warner Pkwy', '', 'Tuscaloosa', 'AL', '35401', 'USA', '33.2177199', '-87.5588605', 'tammy.markethouse@gmail.com', '(256) 577-5177', 'Retailer', '', '2021-12-14 16:47:16', '2021-12-14 16:47:16', NULL),
(361, 'Gadsden Lighting Showroom', '1801 W Meighan Blvd', '', 'Gadsden', 'AL', '35904', 'USA', '34.0253774', '-86.0312437', 'adowdygls@gmail.com', '(256) 547-1869', 'Retailer', '', '2021-12-14 16:47:16', '2021-12-14 16:47:16', NULL),
(362, 'Cothren Cotton House', '14057 Hwy 231 431', '', 'Hazel Green', 'AL', '35750', 'USA', '34.9269072', '-86.572366', 'cothrensonia@gmail.com', '(256) 924-4439 ', 'Retailer', '', '2021-12-14 16:47:17', '2021-12-14 16:47:17', NULL),
(363, 'Lush Home Garden Event', '1910 Government St', '', 'Mobile', 'AL', '36606', 'USA', '30.676878', '-88.084678', 'parkside4036@att.net', '(205) 903-0352 ', 'Retailer', '', '2021-12-14 16:47:18', '2021-12-14 16:47:18', NULL),
(364, 'Hood\'s Discount Home Center', '1918 N. Mckenzie', '', 'Foley', 'AL', '36535', 'USA', '30.431827', '-87.681981', 'mgcoombs74@yahoo.com', '(251) 943-1801 ', 'Retailer', '', '2021-12-14 16:47:19', '2021-12-14 16:47:19', NULL),
(365, 'Hood\'s Discount Home Center', '1212 W Gannon Dr', '', 'Festus', 'MO', '63028', 'USA', '38.2089118', '-90.4023895', 'hoodsoffice@yahoo.com', '(636) 931-6380', 'Retailer', '', '2021-12-14 16:47:20', '2021-12-14 16:47:20', NULL),
(366, 'Bless Your Heart', '20 Main Street', '', 'Eclectic', 'AL', '36024', 'USA', '32.6359131', '-86.0350634', 'blessyourheartofal@gmail.com', '(334) 531-0960 ', 'Retailer', '', '2021-12-14 16:47:21', '2021-12-14 16:47:21', NULL),
(367, 'Pimentos Inc.', '210 West Market St.', '', 'Athen', 'AL', '35611', 'USA', '34.8034446', '-86.9716294', 'teresa@shop-pimentos.com', '(256) 233-3795 ', 'Retailer', '', '2021-12-14 16:47:22', '2021-12-14 16:47:22', NULL),
(368, 'Liddon Furniture Co. Inc', '251 East Main Street', '', 'Dothan', 'AL', '36301', 'USA', '31.223651', '-85.3899398', 'liddonfurniture@centurytel.net', '(334) 792-2711', 'Retailer', '', '2021-12-14 16:47:23', '2021-12-14 16:47:23', NULL),
(369, 'Antiques At The Loop', '28 South Florida St.', '', 'Mobile', 'AL', '36606', 'USA', '30.6856813', '-88.1007027', 'sweetaiter@aol.com', '(251) 476-0309 ', 'Retailer', '', '2021-12-14 16:47:24', '2021-12-14 16:47:24', NULL),
(370, 'Stock & Trade Design Co.', '2831 Pelham Parkway', '', 'Pelham', 'AL', '35124', 'USA', '33.3064987', '-86.8043409', 'Orders@StockandTrade.com', '(850) 460-8990 ', 'Retailer', '', '2021-12-14 16:47:25', '2021-12-14 16:47:25', NULL),
(371, 'Stock & Trade Design Co.', '4157, 3048 Independence Drive', '', 'Homewood', 'AL ', '35209', 'USA', '33.4766087', '-86.7877011', 'Orders@StockandTrade.com', '(205) 783-1350', 'Retailer', '', '2021-12-14 16:47:26', '2021-12-14 16:47:26', NULL),
(372, 'Stock & Trade Design Co.', '11111 Emerald Coast Pkwy', '', 'Miramar Beach', 'FL', '32550', 'USA', '30.3814553', '-86.3591577', 'Orders@StockandTrade.com', '(850) 460-8990', 'Retailer', '', '2021-12-14 16:47:27', '2021-12-14 16:47:27', NULL),
(373, 'At Home Furnishings', '2921 18Th St South', '', 'Birmingham', 'AL', '35209', 'USA', '33.4789056', '-86.7913773', 'athomeorders@gmail.com', '(205) 879-3510 ', 'Retailer', '', '2021-12-14 16:47:28', '2021-12-14 16:47:28', NULL),
(374, 'White Willow', '302 1st Ave. SE', '', 'Cullman', 'AL', '35055', 'USA', '34.175457', '-86.841582', 'libbycrider598@gmail.com', '(256) 739-7001 ', 'Retailer', '', '2021-12-14 16:47:29', '2021-12-14 16:47:29', NULL),
(375, 'Stewart\'s Home Furnishings', '3175 Montgomery Hwy', '', 'Dothan', 'AL', '36303', 'USA', '31.2520309', '-85.428792', 'stewartshomefurnishing@yahoo.com', '(334) 794-7644', 'Retailer', '', '2021-12-14 16:47:29', '2021-12-14 16:47:29', NULL),
(376, 'Stray Cats Home Decor', '3101 4th Ave S', '', 'Birmingham', 'AL', '35233', 'USA', '33.5314282', '-86.7060285', 'straycats@windstream.net', '(205) 502-7166', 'Retailer', '', '2021-12-14 16:47:30', '2021-12-14 16:47:30', NULL),
(377, 'Akins Furniture', '3450 Cty Rd 81', '', 'Fort Payne', 'AL', '35967', 'USA', '34.3526898', '-85.7371284', 'akinsfurnituredogtown@gmail.com', '(256) 845-2057', 'Retailer', '', '2021-12-14 16:47:31', '2021-12-14 16:47:31', NULL),
(378, 'Akins Furniture', '701 S Broad St', '', 'Scottsboro', 'AL ', '35768', 'USA', '34.66735', '-86.033737', 'akinsfurnituredogtown@gmail.com', '(256) 259-1872', 'Retailer', '', '2021-12-14 16:47:32', '2021-12-14 16:47:32', NULL),
(379, 'Swoon LLC', '3253 Cahaba Heights Rd', '', 'Vestavia', 'AL', '35242', 'USA', '33.453785', '-86.7277991', 'shopandswoon@gmail.com', '(205) 527-7343', 'Retailer', '', '2021-12-14 16:47:33', '2021-12-14 16:47:33', NULL),
(380, 'The Alabama Gift Co.', '528 Broad St', '', 'Gadsden', 'AL', '35901', 'USA', '34.0139181', '-86.0058324', 'kathy@thealabamagiftcompany.com', '(256) 549-0910', 'Retailer', '', '2021-12-14 16:47:34', '2021-12-14 16:47:34', NULL),
(381, 'Brooks & Collier', '813 Meridian St N', '', 'Huntsville', 'AL', '35801', 'USA', '34.7409607', '-86.585573', 'brooksandcollier@att.net', '(256) 534-2781', 'Retailer', '', '2021-12-14 16:47:35', '2021-12-14 16:47:35', NULL),
(382, 'Hawgs', '1135 North St Louis', '', 'Batesville', 'AR', '72501', 'USA', '35.7879826', '-91.6419561', 'llillard@staffmark.com', '(501) 993-4545', 'Retailer', '', '2021-12-14 16:47:36', '2021-12-14 16:47:36', NULL),
(383, 'The Good Earth Garden Center', '15601 Cantrell Road', '', 'Little Rock', 'AR', '72223', 'USA', '34.802059', '-92.446342', 'laura@thegoodearthgarden.com', '(501) 868-4666 ', 'Retailer', '', '2021-12-14 16:47:36', '2021-12-14 16:47:37', NULL),
(384, '30 East Designs', '1850 Higdon Ferry', '', 'Hot Springs National Park', 'AR', '71913', 'USA', '34.4575373', '-93.0777359', 'asw30east@gmail.com', '(662) 822-5450 ', 'Retailer', '', '2021-12-14 16:47:38', '2021-12-14 16:47:38', NULL),
(385, 'Hardy Pottery Inc', '200 E Main St', '', 'Hardy', 'AR', '72542', 'USA', '36.315882', '-91.48128', 'shopatjades@yahoo.com', '(870) 847-1883', 'Retailer', '', '2021-12-14 16:47:39', '2021-12-14 16:47:39', NULL),
(386, 'Deck The Halls Y\'all', '2005 Hwy 38W', '', 'DesArc', 'AR', '72040', 'USA', '34.9821784', '-91.5102579', 'phguess3@aol.com', '(870) 256-1352', 'Retailer', '', '2021-12-14 16:47:40', '2021-12-14 16:47:40', NULL),
(387, 'Blue Goose', '3660 Front Street, Suite 3', '', 'Fayetteville', 'AR', '72703', 'USA', '36.1177777', '-94.1437914', 'bluegoosenwa@gmail.com', '(479) 443-2664', 'Retailer', '', '2021-12-14 16:47:42', '2021-12-14 16:47:42', NULL),
(388, 'Nelson\'s', '37 Spring St', '', 'Eureka Springs', 'AR', '72632', 'USA', '36.4028076', '-93.7367644', 'marywebb1965@gmail.com', '(479) 253-4314', 'Retailer', '', '2021-12-14 16:47:42', '2021-12-14 16:47:43', NULL),
(389, 'Gift House', '525 Mission', '', 'Fayetteville', 'AR', '72701', 'USA', '36.0709208', '-94.1500541', '', '(479) 521-4334 ', 'Retailer', '', '2021-12-14 16:47:43', '2021-12-14 16:47:44', NULL),
(390, 'Butler Furniture', '551 HWY 5 N', '', 'Mountain Home', 'AR', '72653', 'USA', '36.3448143', '-92.3916931', 'laureen1985@gmail.com', '(870) 421-3799', 'Retailer', '', '2021-12-14 16:47:44', '2021-12-14 16:47:44', NULL),
(391, 'The Kitchen Store & More', '704 Locust Street', '', 'Conway', 'AR', '72034', 'USA', '35.0878806', '-92.4416378', 'conwaykitchen@conwaycorp.net', '(501) 327-2182', 'Retailer', '', '2021-12-14 16:47:46', '2021-12-14 16:47:46', NULL),
(392, 'Hartz Honey Hole', '7106 Dollarway Rd', '', 'White Hall', 'AR', '71602', 'USA', '34.2618599', '-92.0829482', 'janethartz@scottsysinc.com', '(870) 247-2404 ', 'Retailer', '', '2021-12-14 16:47:46', '2021-12-14 16:47:46', NULL),
(393, 'Flowers Etc.', '900 West B Street', '', 'Russellville', 'AR', '72801', 'USA', '35.2814215', '-93.1408974', 'flowersetc900@centurylink.net', '(479) 968-3600', 'Retailer', '', '2021-12-14 16:47:47', '2021-12-14 16:47:47', NULL),
(394, 'Hortus LTD', '1722 Broadway St', '', 'Little Rock', 'AR', '72206', 'USA', '34.73238', '-92.278746', 'pholden@pallensmith.com', '(501) 940-0679 ', 'Retailer', '', '2021-12-14 16:47:48', '2021-12-14 16:47:48', NULL),
(395, 'Old Fort Furniture', '7606 Fort Chaffee Blvd', '', 'Fort Smith', 'AR', '72916', 'USA', '35.3087654', '-94.3012619', 'randy@oldfortfurniture.com', '(479) 434-4969', 'Retailer', '', '2021-12-14 16:47:49', '2021-12-14 16:47:49', NULL),
(396, 'Fancy That', '109 S Granite', '', 'Prescott', 'AZ', '86303', 'USA', '34.5411881', '-112.4717082', 'fancythataz@yahoo.com', '(928) 445-1883', 'Retailer', '', '2021-12-14 16:47:50', '2021-12-14 16:47:50', NULL),
(397, 'Rustic Stuff', '16495 N. Scottsdale Rd, Suite 106', '', 'Scottsdale', 'AZ', '85254', 'USA', '33.635778', '-111.921126', 'accounting@rusticstuffhome.com', '(480) 596-0345 ', 'Retailer', '', '2021-12-14 16:47:51', '2021-12-14 16:47:51', NULL),
(398, 'The Farmhouse', '317 E. Beale St.', '', 'Kingman', 'AZ', '86401', 'USA', '35.1898599', '-114.0537108', 'thefarmhousekingman@gmail.com', '(928) 377-8499', 'Retailer', '', '2021-12-14 16:47:52', '2021-12-14 16:47:52', NULL),
(399, 'Designer Blvd', '4895 S Higley Rd', '', 'Gilbert', 'AZ', '85298', 'USA', '33.2613911', '-111.7198287', 'coh.designerblvd@gmail.com', '(480) 988-6525', 'Retailer', '', '2021-12-14 16:47:53', '2021-12-14 16:47:53', NULL),
(400, 'Flagstaff General Store', '5270 N Hwy 89', '', 'Flagstaff', 'AZ', '86004', 'USA', '35.1981461', '-111.6479641', 'heidi@flagstaffgeneralstore.com', '(928) 220-0447', 'Retailer', '', '2021-12-14 16:47:54', '2021-12-14 16:47:54', NULL),
(401, 'Hadherway\'s', '6310 N. Scottsdale Rd', '', 'Scottsdale', 'AZ', '85253', 'USA', '33.530285', '-111.926225', 'dibomcd@gmail.com', '(602) 881-3801', 'Retailer', '', '2021-12-14 16:47:55', '2021-12-14 16:47:55', NULL),
(402, 'Whitfill Nursery', '824 E Glendale Ave', '', 'Phoenix', 'AZ', '85020', 'USA', '33.5385818', '-112.0613555', 'janis@whitfillnursery.com', '(602) 944-8479', 'Retailer', '', '2021-12-14 16:47:56', '2021-12-14 16:47:56', NULL),
(403, 'Potato Barn', '8980 E Bahia Dr.', '', 'Scottsdale', 'AZ', '85260', 'USA', '33.6383285', '-111.8886566', 'info@potato-barn.com', '(480) 279-5500', 'Retailer', '', '2021-12-14 16:47:57', '2021-12-14 16:47:57', NULL),
(404, 'Orange Blossom Cottage', '1018 West Teapot Dome', '', 'Porterville', 'CA', '93258', 'USA', '36.0226792', '-119.0402841', 'belnenna@gmail.com', '(559) 907-7560 ', 'Retailer', '', '2021-12-14 16:47:58', '2021-12-14 16:47:58', NULL),
(405, 'Baker Party Rentals Inc.', '1151 Baker St.', '', 'Costa Mesa', 'CA', '92626', 'USA', '33.6796365', '-117.9057327', 'tomm@bakerpartyrentals.com', '(714) 545-4667', 'Retailer', '', '2021-12-14 16:47:59', '2021-12-14 16:47:59', NULL),
(406, 'Napa Valley Vintage Home', '1201 Main St', '', 'St. Helena', 'CA', '94574', 'USA', '38.5037493', '-122.4681878', 'Accounting@napavalleyvintagehome.com', '(707) 963-7423 ', 'Retailer', '', '2021-12-14 16:48:00', '2021-12-14 16:48:00', NULL),
(407, 'Acres Home and Garden', '1219 Main Street', '', 'St. Helena', 'CA', '94574', 'USA', '38.5038996', '-122.4683591', 'cort@acreshomeandgarden.com', '(707) 967-1142', 'Retailer', '', '2021-12-14 16:48:01', '2021-12-14 16:48:01', NULL),
(408, 'Poway Countryside Barn', '14051 Midland Rd', '', 'Poway', 'CA', '92064', 'USA', '32.9687592', '-117.0357789', 'info@powaycountrysidebarn.com', '(858) 391-1616 ', 'Retailer', '', '2021-12-14 16:48:02', '2021-12-14 16:48:02', NULL),
(409, 'Bright Event Rentals LLC', '1640 West 190th Street', '', 'Los Angeles', 'CA', '90501', 'USA', '33.85757', '-118.3080451', 'accountspayable@bright.com', '(707) 940-6060', 'Retailer', '', '2021-12-14 16:48:03', '2021-12-14 16:48:03', NULL),
(410, 'Portico For Home and Garden', '1700 McHenry Ave. Ste. 27A', '', 'Modesto', 'CA', '95350', 'USA', '37.669537', '-120.992092', 'portico@sbcglobal.net', '(209) 544-2354', 'Retailer', '', '2021-12-14 16:48:04', '2021-12-14 16:48:04', NULL),
(411, 'French Farmhouse', '1723 S Catalina Ave', '', 'Redondo Beach', 'CA', '90277', 'USA', '33.8180195', '-118.388238', 'seagaterobin@gmail.com', '(310) 373-2224 ', 'Retailer', '', '2021-12-14 16:48:05', '2021-12-14 16:48:05', NULL),
(412, 'Back Home', '221 S. Center', '', 'Turlock', 'CA', '95380', 'USA', '37.4942633', '-120.84375', 'backhomefurnitureanddecor@gmail.com', '(209) 427-2225 ', 'Retailer', '', '2021-12-14 16:48:06', '2021-12-14 16:48:06', NULL),
(413, 'Re-Finery', '840 13th St, Suite A', '', 'Paso Robles', 'CA', '93446', 'USA', '35.6276327', '-120.6892266', 'refinery16@gmail.com', '(949) 338-2708', 'Retailer', '', '2021-12-14 16:48:07', '2021-12-14 16:48:07', NULL),
(414, 'Roger\'s Gardens', '2301 San Joaquin Hills Rd', '', 'Corona del Mar', 'CA', '92625', 'USA', '33.6124512', '-117.8662433', 'rashminj@rogersgardens.com', '(949) 640-5800 ', 'Retailer', '', '2021-12-14 16:48:08', '2021-12-14 16:48:08', NULL),
(415, 'Meat Market and Tavern', '241 Main Street', '', 'McCloud', 'CA', '96057', 'USA', '41.2532653', '-122.1392898', 'info@mccloudmercantile.com', '(530) 964-2602 ', 'Retailer', '', '2021-12-14 16:48:09', '2021-12-14 16:48:09', NULL),
(416, 'Refined Vintage Boutique', '27674 Newhall Ranch Rd. D-15', '', 'Valencia', 'CA', '91355', 'USA', '34.437752', '-118.564678', 'RefinedVB@icloud.com', '(661) 505-7175 ', 'Retailer', '', '2021-12-14 16:48:10', '2021-12-14 16:48:10', NULL),
(417, 'Farmer\'s Wife', '28459 Old Town Front St. #125', '', 'Temecula', 'CA', '92590', 'USA', '33.4957573', '-117.1520532', 'thefarmerswifegifts@verizon.net', '(951) 506-1606 ', 'Retailer', '', '2021-12-14 16:48:11', '2021-12-14 16:48:11', NULL),
(418, 'Skypark at Santa\'s Village', '28950 Hwy 18', '', 'Skyforest', 'CA', '92385', 'USA', '34.2328287', '-117.1696567', 'kpolson@skyparksantasvillage.com', '(909) 273-4250 ', 'Retailer', '', '2021-12-14 16:48:12', '2021-12-14 16:48:12', NULL),
(419, 'Jeannine Interior Design', '292 Hwy 173', '', 'Lake Arrowhead', 'CA', '92352', 'USA', '34.2489739', '-117.1892118', 'jeannine444@yahoo.com', '(909) 336-4400 ', 'Retailer', '', '2021-12-14 16:48:13', '2021-12-14 16:48:13', NULL),
(420, 'The French Quarter', '3015 Calloway Drive, Unit 1', '', 'Bakersfield', 'CA', '93312', 'USA', '35.3876735', '-119.1116858', 'juliehatridge@att.net', '(661) 588-0669', 'Retailer', '', '2021-12-14 16:48:14', '2021-12-14 16:48:14', NULL),
(421, 'Prop Heaven', '3110 Winona Ave', '', 'Burbank', 'CA', '91504', 'USA', '34.1987777', '-118.3452318', 'dans@propheaven.com', '(818) 841-5882', 'Retailer', '', '2021-12-14 16:48:15', '2021-12-14 16:48:15', NULL),
(422, 'Farmhouse Comforts', '31133 Via Colinas Ste. 102', '', 'West Lake Village', 'CA', '91362', 'USA', '34.1537854', '-118.8037745', 'kelly@farmhousecomforts.com', '(818) 369-4587', 'Retailer', '', '2021-12-14 16:48:16', '2021-12-14 16:48:16', NULL),
(423, 'Deja Vu Antique Mall', '315 S Broadway St', '', 'Old Orcutt', 'CA', '93455', 'USA', '34.8628427', '-120.4478275', 'markwendysteller@msn.com', '(805) 314-2409', 'Retailer', '', '2021-12-14 16:48:17', '2021-12-14 16:48:17', NULL),
(424, 'Wreckclamation', '325 Pleasant Ave, Suite D', '', 'Auburn', 'CA', '95603', 'USA', '38.8912549', '-121.0705265', 'dutraddranch@gmail.com', '(530) 913-0949', 'Retailer', '', '2021-12-14 16:48:18', '2021-12-14 16:48:18', NULL),
(425, 'Tuvalu Home', '32921-A Calle Perfecto', '', 'San Juan Capistrano', 'CA', '92675', 'USA', '33.5427486', '-117.7826751', 'laurie@tuvaluhome.com', '(949) 487-1282', 'Retailer', '', '2021-12-14 16:48:19', '2021-12-14 16:48:19', NULL),
(426, 'Apricot Lane Boutique', '3333 Vaca Valley Pkwy #700', '', 'Vacaville', 'CA', '95688', 'USA', '38.3906311', '-121.9398201', 'ellen@apricotlaneusa.com', '(302) 383-6774', 'Retailer', '', '2021-12-14 16:48:19', '2021-12-14 16:48:20', NULL),
(427, 'Designer Flower Center', '3450 W Gettysburg Ave', '', 'Fresno', 'CA', '93722', 'USA', '36.8016207', '-119.8547619', 'lisah@designerflowercenter.net', '(559) 228-3300', 'Retailer', '', '2021-12-14 16:48:20', '2021-12-14 16:48:20', NULL),
(428, 'Dry Creek General Store', '3495 Dry Creek Rd', '', 'Healdsburg', 'CA', '95448', 'USA', '38.6548614', '-122.9217821', 'atharine.darby@ejgallo.com', '(707) 431-5642', 'Retailer', '', '2021-12-14 16:48:21', '2021-12-14 16:48:21', NULL),
(429, 'Dennee\'s', '500 Carnelian St #100', '', 'Redondo Beach', 'CA', '90277', 'USA', '33.847025', '-118.3878541', 'dennees.sy@verizon.net', '(805) 686-0842', 'Retailer', '', '2021-12-14 16:48:22', '2021-12-14 16:48:22', NULL),
(430, 'The Farmer\'s Daughter', '358 Main St.', '', 'Ferndale', 'CA', '95536', 'USA', '40.5760429', '-124.2641827', 'gbbrodt@yahoo.com', '(707) 407-7550', 'Retailer', '', '2021-12-14 16:48:23', '2021-12-14 16:48:23', NULL),
(431, 'Orchard Nursery and Florist Inc', '4010 Mt. Diablo Blvd.', '', 'Lafayette', 'CA', '94549', 'USA', '37.8904134', '-122.1520745', 'janb@orchardnursery.com', '(925) 284-4474', 'Retailer', '', '2021-12-14 16:48:24', '2021-12-14 16:48:24', NULL);
INSERT INTO `shops` (`id`, `company`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `lat`, `lng`, `email`, `phone1`, `type`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(432, 'Bianco', '418 N Santa Cruz Ave', '', 'Los Gatos', 'CA', '95030', 'USA', '37.2296811', '-121.9799624', 'biancolosgatos@yahoo.com', '(408) 354-1200', 'Retailer', '', '2021-12-14 16:48:25', '2021-12-14 16:48:25', NULL),
(433, 'Rip\'s Roost', '3543 Old Conejo Rd #102B', '', 'Thousand Oaks', 'CA', '91320', 'USA', '34.1630832', '-118.964122', 'brendanripley@msn.com', '(805) 402-7001', 'Retailer', '', '2021-12-14 16:48:26', '2021-12-14 16:48:26', NULL),
(434, 'Yorkshire Pine', '4250 Morena Blvd, Suite C', '', 'San Diego', 'CA', '92117', 'USA', '32.816348', '-117.220942', 'yorkshirepine@yahoo.com', '(858) 270-7463', 'Retailer', '', '2021-12-14 16:48:28', '2021-12-14 16:48:28', NULL),
(435, 'Jackalope', '4505 Bandini Blvd', '', 'Vernon', 'CA', '90058', 'USA', '34.0003629', '-118.1786404', 'sue@jackalope.com', '(505) 471-8539', 'Retailer', '', '2021-12-14 16:48:29', '2021-12-14 16:48:29', NULL),
(436, 'Seashells and Sawdust', '315 Morro Bay Blvd', '', 'Morro Bay', 'CA', '93442', 'USA', '35.3660799', '-120.8497267', 'seashellsandsawdust@gmail.com', '(805) 701-8001', 'Retailer', '', '2021-12-14 16:48:30', '2021-12-14 16:48:30', NULL),
(437, 'Serendipity', '519 Main St.', '', 'Woodland', 'CA', '95695', 'USA', '38.6778013', '-121.774003', 'kl.serendipityhomedecor@gmail.com', '(530) 650-8244 ', 'Retailer', '', '2021-12-14 16:48:31', '2021-12-14 16:48:31', NULL),
(438, 'The Original Manassero Farms', '5406 Alton Pkwy, Suite A-622', '', 'Irvine', 'CA', '92618', 'USA', '33.6754824', '-117.7818226', 'anne@manasserofarms.com', '(714) 488-5128', 'Retailer', '', '2021-12-14 16:48:32', '2021-12-14 16:48:32', NULL),
(439, 'Regalo Bello', '5757 Pacific Avenue, Suite 150', '', 'Stockton', 'CA', '95207', 'USA', '38.001848', '-121.3195172', 'sdondero5@gmail.com', '(209) 951-4329', 'Retailer', '', '2021-12-14 16:48:32', '2021-12-14 16:48:33', NULL),
(440, 'Wisteria Antiques', '5870 Soquel Dr.', '', 'Soquel', 'CA', '95073', 'USA', '36.9880556', '-121.9369444', 'wisteriaantiques@comcast.net', '(831) 462-2900 ', 'Retailer', '', '2021-12-14 16:48:33', '2021-12-14 16:48:33', NULL),
(441, 'Flower Mill Inc.', '619 N. Main Street', '', 'Porterville', 'CA', '93257', 'USA', '36.066384', '-119.0188513', 'theflowermillinc@yahoo.com', '(559) 784-2142', 'Retailer', '', '2021-12-14 16:48:35', '2021-12-14 16:48:35', NULL),
(442, 'Harvest Furniture', '639 Santa Cruz Ave', '', 'Menlo Park', 'CA', '94025', 'USA', '37.4526465', '-122.1835427', 'Menlopark@shopharvest.com', '(650) 325-7733 ', 'Retailer', '', '2021-12-14 16:48:35', '2021-12-14 16:48:35', NULL),
(443, 'The Garden Gallery ', '680 Embarcadero', '', 'Morro Bay', 'CA', '93442', 'USA', '35.3647833', '-120.8526972', 'chad@thegardengalleryinc.com', '(805) 772-4044', 'Retailer', '', '2021-12-14 16:48:36', '2021-12-14 16:48:36', NULL),
(444, 'Home - Santa Barbara', '14 Parker Way', '', 'Santa Barbara', 'CA', '93101', 'USA', '34.4149848', '-119.6942492', 'homesantabarbara@gmail.com', '(815) 712-3749 ', 'Retailer', '', '2021-12-14 16:48:37', '2021-12-14 16:48:37', NULL),
(445, 'Sonora Trading Post', '730 S. Washington St.', '', 'Sonora', 'CA', '95370', 'USA', '37.9750289', '-120.3795928', 'shereedavis7096@sbcglobal.net', '(209) 532-4700', 'Retailer', '', '2021-12-14 16:48:38', '2021-12-14 16:48:38', NULL),
(446, 'Graeagle Mercantile', '108, CA-89', '', 'Graeagle', 'CA', '96103', 'USA', '39.7673923', '-120.6195309', 'nancy@graeaglemercantile.com', '(530) 836-2515 ', 'Retailer', '', '2021-12-14 16:48:39', '2021-12-14 16:48:39', NULL),
(447, 'The Faded Awning', '7464 Girard Ave.', '', 'La Jolla', 'CA', '92037', 'USA', '32.8401396', '-117.2726275', 'fadedawn@aol.com', '(858) 242-6678', 'Retailer', '', '2021-12-14 16:48:40', '2021-12-14 16:48:40', NULL),
(448, 'Farmyard Darlings', '20 Lafayette Circle', '', 'Lafayette', 'CA', '94549', 'USA', '37.8914199', '-122.120333', 'farmyarddarlings@gmail.com', '(925) 818-1038 ', 'Retailer', '', '2021-12-14 16:48:41', '2021-12-14 16:48:41', NULL),
(449, 'The Antique Gardener', '80 Main Street', '', 'Sutter Creek', 'CA', '95685', 'USA', '38.3945297', '-120.8030948', 'theantiquegardener@att.net', '(209) 267-5551 ', 'Retailer', '', '2021-12-14 16:48:42', '2021-12-14 16:48:42', NULL),
(450, 'The Nest', '800 Sycamore Valley West', '', 'Danville', 'CA', '94526', 'USA', '37.8128062', '-121.9977216', 'thenest12@yahoo.com', '(925) 820-2220 ', 'Retailer', '', '2021-12-14 16:48:43', '2021-12-14 16:48:43', NULL),
(451, 'Filoli Holiday', '86 Canada Rd', '', 'Woodside', 'CA', '94062', 'USA', '37.4704708', '-122.3106764', 'rmckenzie@filoli.org', '(650) 364-8300', 'Retailer', '', '2021-12-14 16:48:44', '2021-12-14 16:48:44', NULL),
(452, 'The Duchess on Cambridge', '910 East Chapman Ave.', '', 'Orange', 'CA', '92866', 'USA', '33.787559', '-117.844122', 'duchessinvoices@gmail.com', '(714) 602-9457', 'Retailer', '', '2021-12-14 16:48:45', '2021-12-14 16:48:45', NULL),
(453, 'Orchard and Twine', '940 C Hilltop Drive', '', 'Redding', 'CA', '96003', 'USA', '40.5945917', '-122.3597817', 'orchardandtwine@gmail.com', '(530) 941-4630 ', 'Retailer', '', '2021-12-14 16:48:46', '2021-12-14 16:48:46', NULL),
(454, 'Rolling Greens', '9528 Jefferson Blvd', '', 'Culver City', 'CA', '90232', 'USA', '34.0170617', '-118.3846409', 'msveum@rg-ca.com', '(310) 559-8656', 'Retailer', '', '2021-12-14 16:48:47', '2021-12-14 16:48:47', NULL),
(455, 'Silveria\'s Flowers and Gifts', '995 Lincoln Center', '', 'Stockton', 'CA', '95207', 'USA', '38.0102933', '-121.3238597', 'silveriasfloral@att.net', '(209) 477-4407', 'Retailer', '', '2021-12-14 16:48:48', '2021-12-14 16:48:48', NULL),
(456, 'Jacqueline Rita Davies- Vintage Begonia', '28465 Old Town Front St Suite 102', '', 'Temecula', 'CA', '92590', 'USA', '33.4955718', '-117.1518012', 'vintagebegonia@yahoo.com', '(909) 717-0562', 'Retailer', '', '2021-12-14 16:48:49', '2021-12-14 16:48:49', NULL),
(457, 'Farm Supply', '2450 Ramada Drive', '', 'Paso Robles', 'CA', '93446', 'USA', '35.5824004', '-120.6959402', 'may@farmsupplycompany.com', '(805) 543-3951', 'Retailer', '', '2021-12-14 16:48:50', '2021-12-14 16:48:50', NULL),
(458, 'Knott\'s Berry Farm', '8340 Western Ave', '', 'Buena Park', 'CA', '90620-9985', 'USA', '33.8443038', '-118.0002265', 'kathleen.garcia@knotts.com', '(714) 220-5333 ', 'Retailer', '', '2021-12-14 16:48:51', '2021-12-14 16:48:51', NULL),
(459, 'The Warm Hearth', '2125 Main Street', '', 'Julian', 'CA', '92036', 'USA', '33.0782337', '-116.6021966', 'thewarmhearth@gmail.com', '(760) 765-1022 ', 'Retailer', '', '2021-12-14 16:48:52', '2021-12-14 16:48:52', NULL),
(460, 'Stella Mitchell', '116 N School St', '', 'Lodi ', 'CA', '95240', 'USA', '38.1361786', '-121.2733276', 'Kagai@msn.com', '(209) 369-7231', 'Retailer', '', '2021-12-14 16:48:53', '2021-12-14 16:48:53', NULL),
(461, 'Arya', '10490 Santa Monica ', '', 'Los Angeles', 'CA', '90025', 'USA', '34.0553988', '-118.4265594', 'Aryagroup@aryagroup.com', '(310) 446-7000 ', 'Retailer', '', '2021-12-14 16:48:54', '2021-12-14 16:48:54', NULL),
(462, 'Harvest Furniture', '677 A Laurel Street', '', 'San Carlos', 'CA', '94070', 'USA', '37.5054963', '-122.2597141', 'sancarlos@shopharvest.com', '(650)832-1046', 'Retailer', '', '2021-12-14 16:48:55', '2021-12-14 16:48:55', NULL),
(463, 'Harvest Furniture', '18 North Santa Cruz Ave', '', 'Los Gatos', 'CA', '95240', 'USA', '37.2231836', '-121.9834892', 'losgatos@shopharvest.com', '(209) 369-7231', 'Retailer', '', '2021-12-14 16:48:55', '2021-12-14 16:48:55', NULL),
(464, 'The Feathered Nest', '3264 Taylor Rd', '', 'Loomis', 'CA', '95650', 'USA', '38.8340744', '-121.1828604', 'info@thefeatherednest.store', '(916) 633-2711', 'Retailer', '', '2021-12-14 16:48:56', '2021-12-14 16:48:56', NULL),
(465, 'The Feed Store', '265 Petaluma Ave', '', 'Sebastopol', 'CA', '95472', 'USA', '38.401062', '-122.821827', 'stacey@thefeedstoreinc.com', '(707) 823-3909', 'Retailer', '', '2021-12-14 16:48:57', '2021-12-14 16:48:57', NULL),
(466, 'The Feathered Nest', '444 Ignacio Blvd', '', 'Novato', 'CA', '94949', 'USA', '38.0673808', '-122.5418532', 'featherednestnovato@gmail.com', '(415) 612-4304', 'Retailer', '', '2021-12-14 16:48:58', '2021-12-14 16:48:58', NULL),
(467, 'Home Refined', '111 Sacramento St', '', 'Auburn', 'CA', '95603', 'USA', '38.895451', '-121.077782', 'karyn@grantgroupca.com', '(916) 827-0473', 'Retailer', '', '2021-12-14 16:48:59', '2021-12-14 16:49:00', NULL),
(468, 'Studio Homes', '312 W D Street', '', 'Lemoore', 'CA', '93245', 'USA', '36.3019128', '-119.7852746', 'jamie@studio12homes.com', '(559) 670-2927', 'Retailer', '', '2021-12-14 16:49:00', '2021-12-14 16:49:00', NULL),
(469, 'Sunday Afternoon', '400 3rd Street', '', 'Castle Rock', 'CO', '80104', 'USA', '39.3724139', '-104.85952', 'lharlas@rocketmail.com', '(720) 331-1055', 'Retailer', '', '2021-12-14 16:49:02', '2021-12-14 16:49:02', NULL),
(470, 'Mimi\'s Designs', '1493 Senter Ave', '', 'Burlington', 'CO', '80807', 'USA', '39.3045016', '-102.2691334', 'mimisdesigns@outlook.com', '(719) 346-7039', 'Retailer', '', '2021-12-14 16:49:03', '2021-12-14 16:49:03', NULL),
(471, 'Black Diamond Partners LLC', '204 W Colorado Ave, Unit 104', '', 'Telluride', 'CO', '81435', 'USA', '37.9372816', '-107.8120411', 'bdp@blackdiamondpartners.net', '(970) 728-9222 ', 'Retailer', '', '2021-12-14 16:49:04', '2021-12-14 16:49:04', NULL),
(472, 'Willowstone Antique Marketplac', '2150 W. Garden of the Gods Rd', '', 'Colorado Springs', 'CO', '80907', 'USA', '38.8977778', '-104.8677778', 'Junderw840@aol.com', '(719) 597-3209 ', 'Retailer', '', '2021-12-14 16:49:05', '2021-12-14 16:49:05', NULL),
(473, 'Magpie Mercantile Ltd.', '27061 Barkley Road', '', 'Conifer', 'CO', '80433', 'USA', '39.5343091', '-105.3099907', 'MagpieConifer@gmail.com', '(310) 292-8231 ', 'Retailer', '', '2021-12-14 16:49:06', '2021-12-14 16:49:06', NULL),
(474, 'Cozy Cottage Antiques & Collection', '2721 Council Tree Ave. Suite 125', '', 'Fort Collins', 'CO', '80525', 'USA', '40.5252444', '-105.0259115', 'RECEIVING@shopcozycottage.com', '(970) 226-2699 ', 'Retailer', '', '2021-12-14 16:49:07', '2021-12-14 16:49:07', NULL),
(475, 'Service Systems Associates', '4624 Central PArk Blvd. Suite 100', '', 'Denver', 'CO', '80238', 'USA', '39.7804252', '-104.8821485', 'neilalmalbis@kmssa.com', '(214) 943-2771', 'Retailer', '', '2021-12-14 16:49:08', '2021-12-14 16:49:08', NULL),
(476, 'Kitchen a la More', '577 Yampa Avenue', '', 'Craig', 'CO', '81625', 'USA', '40.515649', '-107.5469994', 'kitchenalamore@yahoo.com', '(970) 629-9232', 'Retailer', '', '2021-12-14 16:49:09', '2021-12-14 16:49:09', NULL),
(477, 'Antiques by Joy @ Dwell', '5910 S University Blvd, Suite E3', '', 'Greenwood Village', 'CO', '80121', 'USA', '39.6085117', '-104.9604585', 'antiquesbyjoy@yahoo.com', '(720) 308-4455', 'Retailer', '', '2021-12-14 16:49:10', '2021-12-14 16:49:10', NULL),
(478, 'Guiry\'s', '620 N. Canosa Court', '', 'Denver', 'CO', '80204', 'USA', '39.7263423', '-105.0196081', 'ap@guirys.com', '(303) 292-0444', 'Retailer', '', '2021-12-14 16:49:11', '2021-12-14 16:49:11', NULL),
(479, 'Complete Gourmet Gifts', '7592 S. University Blvd.', '', 'Centennial', 'CO', '80122', 'USA', '39.5786851', '-104.9597284', 'admin@compleatlifestyles.com', '(303) 290-9222', 'Retailer', '', '2021-12-14 16:49:12', '2021-12-14 16:49:12', NULL),
(480, 'Due South', '802 South Public Road Ste A', '', 'Lafayette', 'CO', '80026', 'USA', '39.9912282', '-105.0901739', 'sellwithnoel@gmail.com', '(720) 935-3152 ', 'Retailer', '', '2021-12-14 16:49:13', '2021-12-14 16:49:13', NULL),
(481, 'The Gardens', '9542 S University Blvd', '', 'Highlands Ranch', 'CO', '80126', 'USA', '39.5436282', '-104.9399725', 'thegardens@aol.com', '(303) 791-0338 ', 'Retailer', '', '2021-12-14 16:49:15', '2021-12-14 16:49:15', NULL),
(482, 'Nickâ€™s Garden Center', '2001 S Chambers Rd', '', 'Aurora', 'CO', '80014', 'USA', '39.6794735', '-104.8112403', 'Nicksgardencenter@gmail.com', '(303) 696-6657 ', 'Retailer', '', '2021-12-14 16:49:16', '2021-12-14 16:49:16', NULL),
(483, 'Shakespeare\'s Garden', '25 Obtuse Rd. South', '', 'Brookfield', 'CT', '06804', 'USA', '41.4548251', '-73.3552703', 'BUYER@shakespearesgarden.net', '(203) 775-2214 ', 'Retailer', '', '2021-12-14 16:49:17', '2021-12-14 16:49:17', NULL),
(484, 'No. 299', '11 Unquowa Rd', '', 'Fairfield', 'CT', '06824', 'USA', '41.1417443', '-73.2567237', 'jackieweihs@optonline.net', '(917) 375-2243', 'Retailer', '', '2021-12-14 16:49:18', '2021-12-14 16:49:18', NULL),
(485, 'Madison Flower Shop and Garden', '376 Durham Road', '', 'Madison', 'CT', '06443', 'USA', '41.3046718', '-72.6039541', 'madisonflower@sbcglobal.net', '(203) 245-4851', 'Retailer', '', '2021-12-14 16:49:19', '2021-12-14 16:49:19', NULL),
(486, 'Mellow Monkey LLC', '360 Sniffens Lane', '', 'Stratford', 'CT', '06615', 'USA', '41.1712529', '-73.1178294', 'howard@mellowmonkey.com', '(203) 379-1860 ', 'Retailer', '', '2021-12-14 16:49:20', '2021-12-14 16:49:20', NULL),
(487, 'Rooster\'s Nest', '37244 Lighthouse Road #118', '', 'Selbyville', 'DE', '19975', 'USA', '38.464695', '-75.085412', 'roostersally@aol.com', '(302) 436-1848', 'Retailer', '', '2021-12-14 16:49:21', '2021-12-14 16:49:21', NULL),
(488, 'Wharton\'s Garden Center', '35557 Airport Rd', '', 'Rehoboth Beach', 'DE', '19971', 'USA', '38.7246032', '-75.1304604', 'whartonsgardencenter1@gmail.com', '(302) 227-0913 ', 'Retailer', '', '2021-12-14 16:49:22', '2021-12-14 16:49:22', NULL),
(489, 'Rare Hues', '10005 North Dale Mabry', '', 'Tampa', 'FL', '33618', 'USA', '28.0410056', '-82.5043528', 'sales@rarehues.com', '(813) 503-4040', 'Retailer', '', '2021-12-14 16:49:23', '2021-12-14 16:49:23', NULL),
(490, 'Ann\'s Florist', '1001 E. Las Olas Blvd', '', 'Fort lauderdale', 'FL', '33301', 'USA', '26.1194921', '-80.1331321', 'flowergirl3617@yahoo.com', '(954) 761-3334', 'Retailer', '', '2021-12-14 16:49:24', '2021-12-14 16:49:24', NULL),
(491, 'LMB Boutique', '815 S Howard Ave', '', 'Tampa', 'FL', '33606', 'USA', '27.935259', '-82.483274', 'lizmurtaghmail@yahoo.com', '(727) 517-5861', 'Retailer', '', '2021-12-14 16:49:25', '2021-12-14 16:49:25', NULL),
(492, 'Belles & Whistles Southern', '102 Eglin Pkwy SE', '', 'Fort Walton Beach', 'FL', '32548', 'USA', '30.4083568', '-86.6044588', 'BellesandWhistlesSouthernMarket@yahoo.com', '(850) 217-7622', 'Retailer', '', '2021-12-14 16:49:26', '2021-12-14 16:49:26', NULL),
(493, 'Tranquility Blu', '1106 Harrison Ave', '', 'Panama City', 'FL', '32401', 'USA', '30.1681663', '-85.6599376', 'lena@tranquility-blu.com', '(850) 252-8790', 'Retailer', '', '2021-12-14 16:49:28', '2021-12-14 16:49:28', NULL),
(494, 'Southern Hospitality Inc', '1709 J L Redman Pkwy', '', 'Plant City', 'FL', '33563', 'USA', '27.9970194', '-82.1231311', 'sohofurniture10@yahoo.com', '(813) 717-7895', 'Retailer', '', '2021-12-14 16:49:29', '2021-12-14 16:49:29', NULL),
(495, 'Blueberry Patch', '231 North Main Avenue', '', 'Lake Placid', 'FL', '33852', 'USA', '27.3000348', '-81.3669019', 'theblueberrypatch@embarqmail.com', '(863) 465-5111 ', 'Retailer', '', '2021-12-14 16:49:30', '2021-12-14 16:49:30', NULL),
(496, 'Country Primitives', '251 Ave A SW', '', 'Winter Haven', 'FL', '33880', 'USA', '28.0213982', '-81.7296748', 'country.primitives@yahoo.com', '(863) 291-3131 ', 'Retailer', '', '2021-12-14 16:49:31', '2021-12-14 16:49:31', NULL),
(497, 'Alyssa\'s Antique Depot', '4586 Chumuckla Hwy', '', 'Pace', 'FL', '32571', 'USA', '30.6037635', '-87.1608047', 'shopalyssas@gmail.com', '(850) 994-9114', 'Retailer', '', '2021-12-14 16:49:32', '2021-12-14 16:49:32', NULL),
(498, 'Repurpose Market', '505 Alleria Court', '', 'Auburndale', 'FL', '33823', 'USA', '28.0974863', '-81.7782962', 'Michellerepurposes@gmail.com', '(407) 744-5401', 'Retailer', '', '2021-12-14 16:49:33', '2021-12-14 16:49:33', NULL),
(499, 'The Antique Cottage', '903 Harrison Ave.', '', 'Panama City Beach', 'FL', '32401', 'USA', '30.1645064', '-85.6605579', 'ashleyclovejoy@gmail.com', '(850) 769-9503', 'Retailer', '', '2021-12-14 16:49:34', '2021-12-14 16:49:34', NULL),
(500, 'Corporate Interiors Inc.', '12115 28th St N', '', 'St Petersburg', 'FL', '33716', 'USA', '27.8823548', '-82.6708329', 'ckomons@the-cigroup.com', '(813) 341-3413 ', 'Retailer', '', '2021-12-14 16:49:35', '2021-12-14 16:49:35', NULL),
(501, 'Kanes Furniture Corporation', '5700 70th Ave N', '', 'Pinellas Park', 'FL', '33781', 'USA', '27.834543', '-82.710954', 'mschom@kanesfurniture.com', '(727) 278-6907', 'Retailer', '', '2021-12-14 16:49:36', '2021-12-14 16:49:36', NULL),
(502, 'Boxwoods Gardens & Gifts', '100 East Andrews Dr', '', 'Atlanta', 'GA', '30305', 'USA', '33.8432371', '-84.3821168', 'sales@boxwoodsonline.com', '(404) 233-3400', 'Retailer', '', '2021-12-14 16:49:37', '2021-12-14 16:49:37', NULL),
(503, 'Woodstock Furniture Outlet', '100 Robin Road Extention', '', 'Acworth', 'GA', '30102', 'USA', '34.0874845', '-84.5846087', 'hstierle@woodstockoutlet.com', '678) 255-1004', 'Retailer', '', '2021-12-14 16:49:38', '2021-12-14 16:49:38', NULL),
(504, 'The Treehouse', '112 N. Main Street', '', 'Clayton', 'GA', '30525', 'USA', '34.8799363', '-83.4003563', 'thetreehouseinc@gmail.com', '(706) 782-7297 ', 'Retailer', '', '2021-12-14 16:49:39', '2021-12-14 16:49:39', NULL),
(505, 'Warthen Lane Interiors', '114-A E. Haynes', '', 'Sandersville', 'GA', '31082', 'USA', '32.9826282', '-82.8104237', 'woodsal@bellsouth.net', '(478) 552-7722', 'Retailer', '', '2021-12-14 16:49:40', '2021-12-14 16:49:40', NULL),
(506, 'Lighting Concepts', '11619 Troupeville Rd', '', 'Valdosta', 'GA', '31602', 'USA', '30.8525914', '-83.3583166', 'lightingcshowroom@att.net', '(229) 249-8158', 'Retailer', '', '2021-12-14 16:49:41', '2021-12-14 16:49:41', NULL),
(507, 'Finders Keepers Vintage Furniture', '1024 US Hwy 80 W, Unit 110', '', 'Pooler', 'GA', '31322', 'USA', '32.1228436', '-81.2640414', 'moedottie86@yahoo.com', '(912) 667-9320 ', 'Retailer', '', '2021-12-14 16:49:42', '2021-12-14 16:49:42', NULL),
(508, 'The Nest', '1358 Washington Street', '', 'Clarkesville', 'GA', '30523', 'USA', '34.614769', '-83.5256454', 'shopthenest@gmail.com', '(404) 234-5234 ', 'Retailer', '', '2021-12-14 16:49:43', '2021-12-14 16:49:43', NULL),
(509, 'Fashion Cupcake', '8670 Main St, Suite 3', '', 'Woodstock', 'GA', '30188', 'USA', '34.0999904', '-84.5199874', 'atopper@bellsouth.net', '(770) 924-2484', 'Retailer', '', '2021-12-14 16:49:44', '2021-12-14 16:49:44', NULL),
(510, 'Pin It Gifts & Events', '139 City Hall Ave', '', 'Bowdon', 'GA', '30108', 'USA', '33.5381877', '-85.2510226', 'pinitgiftsandevents@gmail.com', '(678) 372-9414 ', 'Retailer', '', '2021-12-14 16:49:45', '2021-12-14 16:49:45', NULL),
(511, 'Bright Ideas Lighting Center', '1410 Northside Drive E.', '', 'Statesboro', 'GA', '30458', 'USA', '32.4496006', '-81.7726028', 'brightid1991@gmail.com', '(912) 764-9288 ', 'Retailer', '', '2021-12-14 16:49:46', '2021-12-14 16:49:46', NULL),
(512, 'Scottsdale Farms', '15639 Birmingham Hwy', '', 'Alpharetta', 'GA', '30004', 'USA', '34.1625334', '-84.3326885', 'jenny@scottsdalefarms.com', '(770) 777-5875', 'Retailer', '', '2021-12-14 16:49:47', '2021-12-14 16:49:47', NULL),
(513, 'Rustic Home', '127 E Hightower Trail', '', 'Social Circle', 'GA', '30025', 'USA', '33.6558633', '-83.7182931', 'rustichomeanddecor@gmail.com', '(770) 856-6213', 'Retailer', '', '2021-12-14 16:49:48', '2021-12-14 16:49:48', NULL),
(514, 'Bloved', '191 E. Main St.', '', 'Canton', 'GA', '30114', 'USA', '34.2365101', '-84.4900295', 'customercare@shopbloved.com', '(770) 704-7447', 'Retailer', '', '2021-12-14 16:49:49', '2021-12-14 16:49:49', NULL),
(515, 'Heery\'s Too!', '195 College Ave', '', 'Athens', 'GA', '30601', 'USA', '33.9582879', '-83.3758099', 'rustyheery@gmail.com', '(706) 543-0702 ', 'Retailer', '', '2021-12-14 16:49:50', '2021-12-14 16:49:50', NULL),
(516, 'The Family Tree Garden Center', '1983 East Main Street', '', 'Snellville', 'GA', '30078', 'USA', '33.8568611', '-83.9961318', 'Linda@thefamilytreeinc.com', '(770) 972-2470 ', 'Retailer', '', '2021-12-14 16:49:51', '2021-12-14 16:49:51', NULL),
(517, 'Shoppes At Fourth & Cherry', '205 E 4Th St', '', 'Ocilla', 'GA', '31774', 'USA', '31.5940612', '-83.2491354', 'theshoppes@fourthandcherry.com', '(229) 468-4426 ', 'Retailer', '', '2021-12-14 16:49:52', '2021-12-14 16:49:52', NULL),
(518, 'Birch Interiors, LLC', '205 East Spring Street', '', 'Monroe', 'GA', '30655', 'USA', '33.7954013', '-83.7112263', 'maghansisk@saltbox-lane.com', '(678) 773-8856 ', 'Retailer', '', '2021-12-14 16:49:53', '2021-12-14 16:49:53', NULL),
(519, 'Toscoga Marketplace', '209 S. Broad St.', '', 'Thomasville', 'GA', '31792', 'USA', '30.8362139', '-83.9786139', 'deanaponder@att.net', '(229) 378-4465 ', 'Retailer', '', '2021-12-14 16:49:54', '2021-12-14 16:49:54', NULL),
(520, 'Savannah Bee Company', '211 Johnny Mercer Blvd', '', 'Savannah', 'GA', '31410', 'USA', '32.0137711', '-80.9840871', 'rob@savannahbee.com', '(912) 503-2956 ', 'Retailer', '', '2021-12-14 16:49:55', '2021-12-14 16:49:55', NULL),
(521, 'Fabrics & Furnishings', '2270 Dogwood Dr SE', '', 'Conyers', 'GA', '30013', 'USA', '33.633126', '-83.9727791', 'debbie@fabfurn.com', '(770) 922-6077', 'Retailer', '', '2021-12-14 16:49:56', '2021-12-14 16:49:56', NULL),
(522, 'Bluebelle Artist Market', '2301 Airport Thruway, Suite A', '', 'Columbus', 'GA', '31907', 'USA', '32.5216278', '-84.9610412', 'Mollyltwigg@gmail.com', '(404) 771-6858 ', 'Retailer', '', '2021-12-14 16:49:57', '2021-12-14 16:49:57', NULL),
(523, 'White Interiors', '240 Dawson Village Way, North Suite 240', '', 'Dawsonville', 'GA', '30534', 'USA', '34.3648543', '-84.0319422', 'staff@whiteinteriorsllc.com', '(706) 216-1230 ', 'Retailer', '', '2021-12-14 16:49:58', '2021-12-14 16:49:58', NULL),
(524, 'Town & Country Furniture', '266 Orvin Lance Dr. Suite 104', '', 'Blue Ridge', 'GA', '30513', 'USA', '34.874133', '-84.299469', 'accounting@tcfurn.com', '(706) 632-8280 ', 'Retailer', '', '2021-12-14 16:49:59', '2021-12-14 16:49:59', NULL),
(525, 'Smith Ace Hardware', '2900 Delk Rd. Suite 2400', '', 'Marietta', 'GA', '30067', 'USA', '33.9235555', '-84.4658246', 'debbie@smithacehardware.com', '(678) 247-1238 ', 'Retailer', '', '2021-12-14 16:50:00', '2021-12-14 16:50:00', NULL),
(526, 'Kudzu Antiques', '2928 E. Ponce de Leon Ave', '', 'Decatur', 'GA', '30030', 'USA', '33.7828029', '-84.2737799', 'orders@kudzuantiques.com', '(404) 373-6498 ', 'Retailer', '', '2021-12-14 16:50:01', '2021-12-14 16:50:01', NULL),
(527, 'White Dog Decor', '21 Milton Ave', '', 'Alpharetta', 'GA', '30009', 'USA', '34.0757446', '-84.2952502', 'malinda@whitedogdecor.com', '(404) 808-7490 ', 'Retailer', '', '2021-12-14 16:50:02', '2021-12-14 16:50:02', NULL),
(528, 'Sarah\'s Home', '308A Willow Bend Rd', '', 'Peachtree City', 'GA', '30269', 'USA', '33.3989537', '-84.5860248', 'simplysarahdesigns@comcast.net', '(770) 892-1421', 'Retailer', '', '2021-12-14 16:50:03', '2021-12-14 16:50:03', NULL),
(529, 'Simons', '316 Mallory St', '', 'Saint Simons Island', 'GA', '31522', 'USA', '31.1361441', '-81.3955641', 'simonsfg@bellsouth.net', '(912) 638-3899', 'Retailer', '', '2021-12-14 16:50:04', '2021-12-14 16:50:04', NULL),
(530, 'K & J Design Group', '3422 Pierce Drive', '', 'Chamblee', 'GA', '30341', 'USA', '33.8909252', '-84.3038633', 'jj@kandjdesigngroup.com', '(404) 369-7699', 'Retailer', '', '2021-12-14 16:50:05', '2021-12-14 16:50:05', NULL),
(531, 'Pittman\'s Country Market', '355 Cedar Crossing Rd', '', 'Uvalda', 'GA', '30473', 'USA', '31.9717873', '-82.3642516', 'pittmansmarket@outlook.com', '(912) 245-5058', 'Retailer', '', '2021-12-14 16:50:06', '2021-12-14 16:50:06', NULL),
(532, 'The French Market & Tavern', '3840 Hwy 42', '', 'Locust Grove', 'GA', '30248', 'USA', '33.3471559', '-84.1101547', 'mmacurdy@gmail.com', '(770) 914-9312', 'Retailer', '', '2021-12-14 16:50:06', '2021-12-14 16:50:07', NULL),
(533, 'Living and Giving, LLC', '401 Broad Street', '', 'Rome', 'GA', '30161', 'USA', '34.2548832', '-85.1715878', 'llandry201@gmail.com', '(706) 235-5530', 'Retailer', '', '2021-12-14 16:50:08', '2021-12-14 16:50:08', NULL),
(534, 'Chic & Shabby LLC', '375 Keys Ferry St', '', 'McDonough', 'GA', '30253', 'USA', '33.5133056', '-84.1382141', 'aubrey@southerngracehospice.com', '(678) 332-9122 ', 'Retailer', '', '2021-12-14 16:50:08', '2021-12-14 16:50:08', NULL),
(535, 'RW Designs', '410 Peachtree Pkwy Suite 246', '', 'Cumming', 'GA', '30041', 'USA', '34.1535941', '-84.1768731', 'charles@rwhitedesigns.com', '(770) 781-1625', 'Retailer', '', '2021-12-14 16:50:09', '2021-12-14 16:50:09', NULL),
(536, 'Mizell Floor Covering & Interiors', '423 Connel Rd.', '', 'Valdosta', 'GA', '31602', 'USA', '30.8738', '-83.2799', 'smizell@mizellinteriors.com', '(229) 244-2333 ', 'Retailer', '', '2021-12-14 16:50:10', '2021-12-14 16:50:10', NULL),
(537, 'Rak Outfitters', '455 Bellwood Rd. Suite 90', '', 'Calhoun', 'GA', '30701', 'USA', '34.4596582', '-84.9156916', 'rakoutfitters@gmail.com', '(706) 602-2244', 'Retailer', '', '2021-12-14 16:50:11', '2021-12-14 16:50:11', NULL),
(538, 'Corner Market Antiques', '5 East Coffee St', '', 'Hazlehurst', 'GA', '31539', 'USA', '31.8695734', '-82.5948126', 'cornermarket45@gmail.com', '(912) 551-9408 ', 'Retailer', '', '2021-12-14 16:50:12', '2021-12-14 16:50:12', NULL),
(539, 'Blue Ridge Cotton Company', '550 East Main Street', '', 'Blue Ridge', 'GA', '30513', 'USA', '34.8674284', '-84.3228319', 'blueridgecottoncompany@gmail.com', '(706) 632-8990', 'Retailer', '', '2021-12-14 16:50:13', '2021-12-14 16:50:13', NULL),
(540, 'Woodstock Market', '5500 Bells Ferry Rd', '', 'Acworth', 'GA', '30102', 'USA', '34.0855084', '-84.5748533', 'donna@woodstockmarket.com', '(770) 517-7771', 'Retailer', '', '2021-12-14 16:50:14', '2021-12-14 16:50:14', NULL),
(541, 'Lucy\'s Market', '56 E Andrews Dr. Suite 15', '', 'Atlanta', 'GA', '30305', 'USA', '33.8431864', '-84.381206', 'lucysmarket123@gmail.com', '(404) 357-0052 ', 'Retailer', '', '2021-12-14 16:50:15', '2021-12-14 16:50:15', NULL),
(542, 'All Inspired Boutique', '5950 State Bridge Rd. Suite 140A', '', 'Duluth', 'GA', '30097', 'USA', '34.0130421', '-84.1866024', 'cherrymelissa@me.com', '(678) 488-2344', 'Retailer', '', '2021-12-14 16:50:16', '2021-12-14 16:50:16', NULL),
(543, 'The Rustic Market', '5330 Brookstone Dr NW Ste 220', '', 'Acworth', 'GA', '30101', 'USA', '33.998452', '-84.707008', 'hello@rusticmarkethome.com', '(443) 831-9744', 'Retailer', '', '2021-12-14 16:50:17', '2021-12-14 16:50:17', NULL),
(544, 'Iron Accents', '6415 Cleveland Hwy', '', 'Clermont', 'GA', '30527', 'USA', '34.4816812', '-83.7649389', 'sales@ironaccents.com', '(770) 539-9093', 'Retailer', '', '2021-12-14 16:50:18', '2021-12-14 16:50:18', NULL),
(545, 'Gregory Joseph Designs', '663 Amsterdam Ave', '', 'Atlanta', 'GA', '30306', 'USA', '33.7879689', '-84.365438', 'fleminggreg@bellsouth.net', '(404) 539-0143', 'Retailer', '', '2021-12-14 16:50:19', '2021-12-14 16:50:19', NULL),
(546, 'Underpriced Furniture', '6694 Dawson Blvd', '', 'Norcross', 'GA', '30093', 'USA', '33.9075831', '-84.2290362', 'Mahall321@gmail.com', '(770) 441-1154 ', 'Retailer', '', '2021-12-14 16:50:20', '2021-12-14 16:50:20', NULL),
(547, 'Byrd Cookie Company', '6700 Waters Ave.', '', 'Savannah', 'GA', '31406', 'USA', '32.0095191', '-81.099504', 'reannah@byrdcookiecompany.com', '(912) 355-1716', 'Retailer', '', '2021-12-14 16:50:20', '2021-12-14 16:50:21', NULL),
(548, 'Outrageous Interiors Warehouse', '7025 Amwiler Industrial Dr. Suite B', '', 'Atlanta', 'GA', '30360', 'USA', '33.9299106', '-84.2575935', 'larryg@outrageousinteriors.com', '(770) 840-8455', 'Retailer', '', '2021-12-14 16:50:22', '2021-12-14 16:50:22', NULL),
(549, 'Two Sisters & Jane', '712 Varnell Rd', '', 'Tunnel Hill', 'GA', '30755', 'USA', '34.860625', '-85.029152', 'julieboyd_cwo@windstream.net', '(706) 673-2112 ', 'Retailer', '', '2021-12-14 16:50:22', '2021-12-14 16:50:22', NULL),
(550, 'Cochran Furniture', '7290 Nashville St', '', 'Ringgold', 'GA', '30736', 'USA', '34.9182791', '-85.1174127', 'lynnm@catt.com', '(706) 935-2228 ', 'Retailer', '', '2021-12-14 16:50:23', '2021-12-14 16:50:23', NULL),
(551, 'Happy Home by Kayla Cristine', '103 Jonesboro Rd', '', 'McDonough', 'GA', '30253', 'USA', '33.4474889', '-84.1560924', 'happyhomefurnishings@yahoo.com', '(770) 634-2780', 'Retailer', '', '2021-12-14 16:50:24', '2021-12-14 16:50:24', NULL),
(552, 'La Bella Maison', '500 N Main St', '', 'Alpharetta', 'GA', '30009', 'USA', '34.0754803', '-84.2952139', 'lisabaggett@aol.com', '(954) 770-2796 ', 'Retailer', '', '2021-12-14 16:50:25', '2021-12-14 16:50:25', NULL),
(553, 'Love Street at Cedarcrest', '80 Seven Hills Blvd, Suite 509', '', 'Dallas', 'GA', '30132', 'USA', '34.0295818', '-84.7787093', 'kendall@lovestreetonline.com', '(678) 483-0283 ', 'Retailer', '', '2021-12-14 16:50:26', '2021-12-14 16:50:26', NULL),
(554, 'Beyond the Door', '30 Main St Suite E', '', 'Senoia', 'GA', '30276', 'USA', '33.3008576', '-84.554507', 'btdretail@gmail.com', '(770) 599-3331 ', 'Retailer', '', '2021-12-14 16:50:27', '2021-12-14 16:50:27', NULL),
(555, 'iiHome by Inspirare Interiors', '1008 Industrial Ct Suite A', '', 'Suwanee', 'GA', '30024', 'USA', '34.0375491', '-84.0862454', 'Nina@iihomes.com', '(678) 541-5050 ', 'Retailer', '', '2021-12-14 16:50:28', '2021-12-14 16:50:28', NULL),
(556, 'Regional Design Inc.', '118 N Main St', '', 'Sylvester', 'GA', '31791', 'USA', '31.5266607', '-83.8352457', 'Regionaldesign@bellsouth.net', '(229) 347-5901', 'Retailer', '', '2021-12-14 16:50:29', '2021-12-14 16:50:29', NULL),
(557, 'Southern Comforts Consignments', '2510 Mt Vernon Rd', '', 'Dunwoody', 'GA', '30338', 'USA', '33.959344', '-84.3020304', 'Jenny@southerncomforts.com', '(770) 901-5001 ', 'Retailer', '', '2021-12-14 16:50:30', '2021-12-14 16:50:30', NULL),
(558, 'Back Porch Design Co', '119 W Jefferson', '', 'Madison', 'GA', '30650', 'USA', '33.5962119', '-83.4701207', 'Julie@backporchdesignco.com', '(678) 782-0855 ', 'Retailer', '', '2021-12-14 16:50:31', '2021-12-14 16:50:31', NULL),
(559, 'Cherokee General Store', '116 E Main Street', '', 'Cherokee', 'IA', '51012', 'USA', '42.749892', '-95.550353', 'sarah@cherokeegeneralstore.com', '(712) 225-3216 ', 'Retailer', '', '2021-12-14 16:50:32', '2021-12-14 16:50:32', NULL),
(560, 'Re Home LLC', '106 N 1st Ave', '', 'Winterset', 'IA', '50273', 'USA', '41.3347308', '-94.0147168', 'rehomedm@gmail.com', '(515) 229-6172 ', 'Retailer', '', '2021-12-14 16:50:33', '2021-12-14 16:50:33', NULL),
(561, 'Garden Gate', '4596 460th St', '', 'Granville', 'IA', '51022', 'USA', '42.9823215', '-95.8800506', 'gardengate2001@gmail.com', '(712) 577-3647 ', 'Retailer', '', '2021-12-14 16:50:34', '2021-12-14 16:50:34', NULL),
(562, 'Fine Things Reclaimed', '205 1st Ave W', '', 'Newton', 'IA', '50208', 'USA', '41.6994084', '-93.0551561', 'jubent@yahoo.com', '(641) 521-4460', 'Retailer', '', '2021-12-14 16:50:35', '2021-12-14 16:50:35', NULL),
(563, 'Vine & Willow', '305 1st Ave South', '', 'Altoona', 'IA', '50009', 'USA', '41.649084', '-93.464325', 'vineandwillow@gmail.com', '(515) 210-3646', 'Retailer', '', '2021-12-14 16:50:36', '2021-12-14 16:50:36', NULL),
(564, 'The Market Place', '321 Main Street', '', 'Manning', 'IA', '51455', 'USA', '41.908255', '-95.065336', 'marketplacemanning@gmail.com', '(712) 655-5555', 'Retailer', '', '2021-12-14 16:50:37', '2021-12-14 16:50:37', NULL),
(565, 'Yarrow Avenue Collection', '420 Yarrow Avenue', '', 'Ackley', 'IA', '50601', 'USA', '42.605034', '-93.0474289', 'yarrowavenuecollection@gmail.com', '(319) 430-9263', 'Retailer', '', '2021-12-14 16:50:38', '2021-12-14 16:50:38', NULL),
(566, 'Simple Treasures', '713 Franklin St', '', 'Pella', 'IA', '50219', 'USA', '41.4064449', '-92.9171858', 'shawnalmiller1@gmail.com', '(641) 628-2662 ', 'Retailer', '', '2021-12-14 16:50:39', '2021-12-14 16:50:39', NULL),
(567, 'Iowa Outdoor Products', 'Boxwoods Fine Furnishings 3200 86th St', '', 'Urbandale', 'IA', '50322', 'USA', '41.6234478', '-93.7374028', 'boxwoods.iowa@gmail.com', '(515) 277-6242', 'Retailer', '', '2021-12-14 16:50:39', '2021-12-14 16:50:39', NULL),
(568, 'L L Green\'s', '101 N Main', '', 'Hailey', 'ID', '83333', 'USA', '43.519751', '-114.315882', 'wannyg25@gmail.com', '(208) 788-9359 ', 'Retailer', '', '2021-12-14 16:50:40', '2021-12-14 16:50:40', NULL),
(569, 'Black Door Interiors', '124 Broadway Ave', '', 'Boise', 'ID', '83716', 'USA', '43.6101115', '-116.193033', 'stefanie@blackdoorinteriors.com', '(208) 891-4382', 'Retailer', '', '2021-12-14 16:50:41', '2021-12-14 16:50:41', NULL),
(570, 'L & K Carpet One', '129 N. 2nd Ave.', '', 'Pocatello', 'ID', '83201', 'USA', '42.8649024', '-112.4473342', 'carpetone@lkc1.com', '(208) 233-6190', 'Retailer', '', '2021-12-14 16:50:42', '2021-12-14 16:50:42', NULL),
(571, 'Hidden Treasures', '238 S Emerson', '', 'Shelley', 'ID', '83274', 'USA', '43.3789476', '-112.1266948', 'fishonjed@aol.com', '(208) 357-5899', 'Retailer', '', '2021-12-14 16:50:43', '2021-12-14 16:50:43', NULL),
(572, 'Heritage Reflections', '3175 E Copper Point Rd', '', 'Meridian', 'ID', '83642', 'USA', '43.5832181', '-116.3549392', 'terri@heritagereflections.com', '(208) 855-9885', 'Retailer', '', '2021-12-14 16:50:44', '2021-12-14 16:50:44', NULL),
(573, 'The Farmer\'s Daughter', '331 Leadville Ave', '', 'Ketchum', 'ID', '83340', 'USA', '43.681337', '-114.363844', 'rita.marie@mindspring.com', '(208) 726-6433', 'Retailer', '', '2021-12-14 16:50:45', '2021-12-14 16:50:45', NULL),
(574, 'C-A-L Ranch Stores', '665 E Anderson', '', 'Idaho Falls', 'ID', '83403', 'USA', '43.5118421', '-112.0198671', 'accountspayable@calranch.com', '(801) 754-4027', 'Retailer', '', '2021-12-14 16:50:46', '2021-12-14 16:50:46', NULL),
(575, 'Moscow & Pullman Building', '760 N. Main', '', 'Moscow', 'ID', '83843', 'USA', '46.7422953', '-116.9996951', 'michael@mbspbs.com', '(208) 882-4716', 'Retailer', '', '2021-12-14 16:50:47', '2021-12-14 16:50:47', NULL),
(576, 'Under The Sun', '7178 Main St', '', 'Bonners Ferry', 'ID', '83805', 'USA', '48.6964712', '-116.3120433', 'underthesunidaho@gmail.com', '(208) 267-6467', 'Retailer', '', '2021-12-14 16:50:47', '2021-12-14 16:50:47', NULL),
(577, 'Urban Farmhouse', '208 State Street', '', 'Geneseo', 'IL', '61254', 'USA', '41.4515087', '-90.1555145', 'mrhenderson22@yahoo.com', '(309) 441-5218 ', 'Retailer', '', '2021-12-14 16:50:48', '2021-12-14 16:50:48', NULL),
(578, 'Whimsy', '217 Liberty Street', '', 'Morris', 'IL', '60450', 'USA', '41.3579818', '-88.4236223', 'tracit20@aol.com', '(815) 513-5600 ', 'Retailer', '', '2021-12-14 16:50:49', '2021-12-14 16:50:49', NULL),
(579, 'Urban Farmgirl', '2202 Rural Street', '', 'Rockford', 'IL', '61107', 'USA', '42.2752091', '-89.0853169', 'urbanfarmgirl@yahoo.com', '(815) 566-0961', 'Retailer', '', '2021-12-14 16:50:50', '2021-12-14 16:50:50', NULL),
(580, 'Rustic Roots', '725 N Brinton Ave', '', 'Dixon', 'IL', '61021', 'USA', '41.8539197', '-89.4848131', 'rusticrootsil@hotmail.com', '(815) 994-2536 ', 'Retailer', '', '2021-12-14 16:50:51', '2021-12-14 16:50:51', NULL),
(581, 'Magnolia Lane', '3600 S 6th St Rd', '', 'Springfield', 'IL', '62703', 'USA', '39.7513995', '-89.6440628', 'mandm8005@yahoo.com', '(217) 503-6513', 'Retailer', '', '2021-12-14 16:50:52', '2021-12-14 16:50:52', NULL),
(582, 'Primitive n\' Proper', '8402 N. Second St.', '', 'Machesney Park', 'IL', '61115', 'USA', '42.344814', '-89.051633', 'primitivenproper1@gmail.com', '(815) 601-9493', 'Retailer', '', '2021-12-14 16:50:53', '2021-12-14 16:50:53', NULL),
(583, 'Barefoot Cottage, The', '101 State Street', '', 'Newburg', 'IN', '47630', 'USA', '37.9446487', '-87.4049691', 'customerservice@thebarefootcottage.com', '(812) 401-3383', 'Retailer', '', '2021-12-14 16:50:54', '2021-12-14 16:50:54', NULL),
(584, 'A. Shively & Co.', '1165 E Business 30', '', 'Columbia City', 'IN', '46725', 'USA', '41.1457987', '-85.4688327', 'annetteshively@orizonrealestate.com', '(260) 503-8800', 'Retailer', '', '2021-12-14 16:50:55', '2021-12-14 16:50:55', NULL),
(585, 'L. J. Wagner Home Interiors', '1200 E.Market St.', '', 'Nappanee', 'IN', '46550', 'USA', '41.4430389', '-85.987358', 'payables@ljwagner.com', '(574) 773-5000', 'Retailer', '', '2021-12-14 16:50:56', '2021-12-14 16:50:56', NULL),
(586, 'Leslie J\'s Marketplace', '206 E Main St', '', 'Worthington', 'IN', '47471', 'USA', '39.1191514', '-86.9761623', 'LeslieJs.farmchic@gmail.com', '(812) 699-1637', 'Retailer', '', '2021-12-14 16:50:57', '2021-12-14 16:50:57', NULL),
(587, 'Niche Market Furniture', '424 Broadway St', '', 'New Haven', 'IN', '46774', 'USA', '41.07346', '-85.017814', 'wanda@nichemarketfurniture.com', '(260) 749-8181', 'Retailer', '', '2021-12-14 16:50:58', '2021-12-14 16:50:58', NULL),
(588, 'Simply Primitive', '4445 West State Road. 45', '', 'Bloomington', 'IN', '47403', 'USA', '39.1373939', '-86.5924606', 'HILLTOPCANDLES@GMAIL.COM', '(812) 825-9660', 'Retailer', '', '2021-12-14 16:50:58', '2021-12-14 16:50:59', NULL),
(589, 'Gehlhausen Floral', '735 S Greenriver Rd', '', 'Evansville', 'IN', '47714', 'USA', '37.9667955', '-87.4932774', 'gehlhausenfloral@gmail.com', '(812) 428-2320', 'Retailer', '', '2021-12-14 16:50:59', '2021-12-14 16:50:59', NULL),
(590, 'The Graceful Lady', '805 E. Park Street', '', 'Fort Branch', 'IN', '47648', 'USA', '38.2521496', '-87.5691839', 'thegracefullady@hotmail.com', '(812) 753-3595', 'Retailer', '', '2021-12-14 16:51:01', '2021-12-14 16:51:01', NULL),
(591, 'Birds Gotta Fly', '916 N. Michigan Street', '', 'Elkhart', 'IN', '46514', 'USA', '41.6943796', '-85.984482', 'phoffer76@comcast.net', '(574) 333-3104', 'Retailer', '', '2021-12-14 16:51:01', '2021-12-14 16:51:01', NULL),
(592, 'Lucas Furniture and Mattress', '96 W 300 South', '', 'Kokomo', 'IN', '46902', 'USA', '40.4338786', '-86.1292996', 'kjohnsonlhf@gmail.com', '(765) 453-0504 ', 'Retailer', '', '2021-12-14 16:51:02', '2021-12-14 16:51:02', NULL),
(593, 'Urban Styles', '8375 Castleton Corner Dr', '', 'Indianapolis', 'IN', '46250', 'USA', '39.9084181', '-86.0704384', 'fredisaac72@gmail.com', '(317) 578-7770 ', 'Retailer', '', '2021-12-14 16:51:03', '2021-12-14 16:51:03', NULL),
(594, 'Giftologists', '102 Albert', '', 'Scott City', 'KS', '67871', 'USA', '38.4833635', '-100.9070874', 'giftologists@hotmail.com', '(620) 872-7100 ', 'Retailer', '', '2021-12-14 16:51:04', '2021-12-14 16:51:04', NULL),
(595, 'Bella B Decor', '11 W Wea Street', '', 'Paola', 'KS', '66071', 'USA', '38.5717148', '-94.8784719', 'lynn@bellabdecor.com', '(913) 814-0300 ', 'Retailer', '', '2021-12-14 16:51:05', '2021-12-14 16:51:05', NULL),
(596, 'Garnand Fine Furniture', '1401 East Kansas Ave', '', 'Garden City', 'KS', '67846', 'USA', '37.976365', '-100.856607', 'gff@garnandfurniture.com', '(620) 276-2326', 'Retailer', '', '2021-12-14 16:51:06', '2021-12-14 16:51:06', NULL),
(597, 'Uniquities Home', '141 N Rock Island', '', 'Wichita', 'KS', '67202', 'USA', '37.6874934', '-97.3283491', 'robyn@uniquitieshome.com', '(316) 214-2301 ', 'Retailer', '', '2021-12-14 16:51:07', '2021-12-14 16:51:07', NULL),
(598, 'Discovery Furniture', '1901 SW Wanamaker Rd', '', 'Topeka', 'KS', '66604', 'USA', '39.0313658', '-95.7658163', 'Swilliams@furnituremallofkansas.com', '(785) 271-0684 ', 'Retailer', '', '2021-12-14 16:51:08', '2021-12-14 16:51:08', NULL),
(599, 'Gatherings at 3 Thirteen', '313 Poyntz Avenue', '', 'Manhattan', 'KS', '66502', 'USA', '39.1791648', '-96.5608749', 'rob@gatheringsat3thirteen.com', '(785) 320-5380', 'Retailer', '', '2021-12-14 16:51:09', '2021-12-14 16:51:09', NULL),
(600, 'My Farmhouse 5', '610 W Main St', '', 'Anthony', 'KS', '67003', 'USA', '37.1519244', '-98.0372527', 'myfarmhouse5@gmail.com', '(620) 842-2944', 'Retailer', '', '2021-12-14 16:51:10', '2021-12-14 16:51:10', NULL),
(601, 'Aster House Design', '7300 Anderson Ave.', '', 'Manhattan', 'KS', '66503', 'USA', '39.1796813', '-96.5609283', 'info@asterhousedesign.com', '(785) 341-6299', 'Retailer', '', '2021-12-14 16:51:11', '2021-12-14 16:51:11', NULL),
(602, 'Red Door Home Store', '2131 SW Fairlawn Plaza Dr', '', 'Topeka', 'KS', '66614', 'USA', '39.027592', '-95.746799', 'jborjon75@gmail.com', '(785) 249-9438 ', 'Retailer', '', '2021-12-14 16:51:12', '2021-12-14 16:51:13', NULL),
(603, 'Southern Soul', '109 S 4th Street', '', 'Murray', 'KY', '42071', 'USA', '36.6102686', '-88.3017753', 'shopsouthernsoul@outlook.com', '(270) 227-7069 ', 'Retailer', '', '2021-12-14 16:51:13', '2021-12-14 16:51:13', NULL),
(604, '2 Chicks and a Farmer', '113 S. 7th Street', '', 'Mayfield', 'KY', '42066', 'USA', '36.7411659', '-88.6360506', '2chicksandafarmer@gmail.com', '(270) 227-4335', 'Retailer', '', '2021-12-14 16:51:14', '2021-12-14 16:51:14', NULL),
(605, 'Picket Fences', '11612 Shelbyville Rd', '', 'Louisville', 'KY', '40243', 'USA', '38.246081', '-85.540473', 'toniaraine@gmail.com', '(281) 455-8741', 'Retailer', '', '2021-12-14 16:51:15', '2021-12-14 16:51:15', NULL),
(606, 'Urban Farmhouse Market LLC', '2830 Frankfort Ave', '', 'Louisville', 'KY', '40206', 'USA', '38.25455', '-85.6883826', 'tufmstore@gmail.com', '(502) 384-5434 ', 'Retailer', '', '2021-12-14 16:51:16', '2021-12-14 16:51:16', NULL),
(607, 'The Milam House', '308 Washington Street', '', 'Frankfort', 'KY', '40601', 'USA', '38.1997042', '-84.879125', 'THEMILAMHOUSE@YAHOO.COM', '(502) 226-6464', 'Retailer', '', '2021-12-14 16:51:17', '2021-12-14 16:51:17', NULL),
(608, 'Home Inspired Inc', '3271 Alvey Park Drive', '', 'Owensboro', 'KY', '42303', 'USA', '37.750599', '-87.066006', 'homeinspired@oolwireless.net', '(270) 684-9047', 'Retailer', '', '2021-12-14 16:51:18', '2021-12-14 16:51:18', NULL),
(609, 'Dee\'s', '5045 Shelbyville Rd', '', 'Louisville', 'KY', '40207', 'USA', '38.2523179', '-85.6229472', 'kolliges@deescrafts.com', '(502) 896-6755 ', 'Retailer', '', '2021-12-14 16:51:19', '2021-12-14 16:51:19', NULL),
(610, 'Embellish Home', '901 Lehman Ave', '', 'Bowling Green', 'KY', '42104', 'USA', '36.9892179', '-86.4318596', 'marshall61.lisa@gmail.com', '(270) 991-3110 ', 'Retailer', '', '2021-12-14 16:51:20', '2021-12-14 16:51:20', NULL),
(611, 'Sisters & Friends', '6236 Paducah Rd', '', 'LaCenter', 'KY', '42056', 'USA', '37.0798066', '-88.9411253', 'tonya@sistersandfriends.net', '(270) 519-1011 ', 'Retailer', '', '2021-12-14 16:51:21', '2021-12-14 16:51:21', NULL),
(612, 'Dresser Up Vintage Boutique', '913 Monmouth St', '', 'Newport', 'KY', '41071', 'USA', '39.088216', '-84.48953', 'dresserupvintage@gmail.com', '(859) 240-9426 ', 'Retailer', '', '2021-12-14 16:51:22', '2021-12-14 16:51:22', NULL),
(613, 'A Simpler Time', '518 St Peter St', '', 'New Orleans', 'LA', '70116', 'USA', '29.9569397', '-90.0633632', 'asimplertime.brassbell@gmail.com', '(919) 336-3154', 'Retailer', '', '2021-12-14 16:51:23', '2021-12-14 16:51:23', NULL),
(614, 'Home Furniture', '1312 Ryan St', '', 'Lake Charles', 'LA', '70601', 'USA', '30.2220222', '-93.2192146', 'rmcgee@homefurn.com', '(337) 234-8578 ', 'Retailer', '', '2021-12-14 16:51:24', '2021-12-14 16:51:24', NULL),
(615, 'Ramsey\'s Southern Outfitters', '457 Hwy 531', '', 'Minden', 'LA', '71055', 'USA', '32.6153732', '-93.2492579', 'eramsey@maddencontracting.com', '(318) 470-8663 ', 'Retailer', '', '2021-12-14 16:51:25', '2021-12-14 16:51:25', NULL),
(616, 'John Ward Interiors & Gifts', '1504 Metro Drive', '', 'Alexandria', 'LA', '71301', 'USA', '31.27485', '-92.47594', 'office@johnwardinteriorsandgifts.com', '(318) 442-3303 ', 'Retailer', '', '2021-12-14 16:51:26', '2021-12-14 16:51:26', NULL),
(617, 'The Farmhouse Co.', '2801 Ryan Street Ste 400', '', 'Lake Charles', 'LA', '70601', 'USA', '30.2278442', '-93.3448791', 'thefarmhouseco@yahoo.com', '(337) 529-6559 ', 'Retailer', '', '2021-12-14 16:51:27', '2021-12-14 16:51:27', NULL),
(618, 'Rosewood Home Market', '2850 DOUGLAS DRIVE', '', 'BOSSIER CITY', 'LA', '71111', 'USA', '32.5434613', '-93.7076251', 'suzanne@rosewoodhomemarket.com', '(318) 458-5439', 'Retailer', '', '2021-12-14 16:51:28', '2021-12-14 16:51:28', NULL),
(619, 'Redoux Home Market', '2983 Highway 190', '', 'Mandeville', 'LA', '70471', 'USA', '30.3920383', '-90.0818562', 'shop@redouxhomemarket.com', '(985) 966-1532 ', 'Retailer', '', '2021-12-14 16:51:29', '2021-12-14 16:51:29', NULL),
(620, 'False River Antique', '300-A Hospital Road', '', 'New Roads', 'LA', '70760', 'USA', '30.6822708', '-91.4640839', 'alyson.coates@gmail.com', '(225) 240-2746', 'Retailer', '', '2021-12-14 16:51:30', '2021-12-14 16:51:30', NULL),
(621, 'Ivy & Stone', '4320 Benton Rd.', '', 'Bossier City', 'LA', '71111', 'USA', '32.5813343', '-93.7309489', 'hello@ivyandstonehome.com', '(318) 840-8007', 'Retailer', '', '2021-12-14 16:51:31', '2021-12-14 16:51:31', NULL),
(622, 'Chateaux Rustique', '710 Jefferson Terrace Blvd.', '', 'New Iberia', 'LA', '70560', 'USA', '29.9894137', '-91.8085097', 'paige@chateauxrustique.com', '(337) 376-6215', 'Retailer', '', '2021-12-14 16:51:32', '2021-12-14 16:51:32', NULL),
(623, 'The Corbel', '911 Hwy. 61', '', 'Jackson', 'LA', '70748', 'USA', '30.7054174', '-91.2700355', 'donna@thecorbel.com', '(225) 654-0130', 'Retailer', '', '2021-12-14 16:51:32', '2021-12-14 16:51:32', NULL),
(624, 'Purple Rose', '140 Main Street', '', 'Northborough', 'MA', '01532', 'USA', '42.3224097', '-71.631485', 'orders@purplerosehome.com', '(508) 393-8882 ', 'Retailer', '', '2021-12-14 16:51:33', '2021-12-14 16:51:33', NULL),
(625, 'Setting the Space', '276 South Meadow Rd.', '', 'Plymouth', 'MA', '02360', 'USA', '41.9096013', '-70.7357634', 'billing@settingthespace.com', '(508) 746-0600 ', 'Retailer', '', '2021-12-14 16:51:34', '2021-12-14 16:51:34', NULL),
(626, 'Setting the Space', '228 Legacy Place', '', 'Dedham', 'MA', '2026', 'USA', '42.2314288', '-71.1767541', 'billing@settingthespace.com', '(781) 613-0800', 'Retailer', '', '2021-12-14 16:51:35', '2021-12-14 16:51:35', NULL),
(627, 'Setting the Space', '233 Main Street', '', 'Falmouth', 'MA', '2540', 'USA', '41.5520626', '-70.6157383', 'billing@settingthespace.com', '(508) 444-9500', 'Retailer', '', '2021-12-14 16:51:36', '2021-12-14 16:51:36', NULL),
(628, 'Bernie & Phyl\'s', '308 E Main Street', '', 'Norton', 'MA', '02766', 'USA', '41.9958648', '-71.1529006', 'jslora@bernphyl.com', '(508) 366-9595', 'Retailer', '', '2021-12-14 16:51:37', '2021-12-14 16:51:37', NULL),
(629, 'Bernie & Phyl\'s', '243 Daniel Webster Hwy', '', 'Nashua', 'NH', '3060', 'USA', '42.7098037', '-71.442274', 'jslora@bernphyl.com', '(603) 888-9700', 'Retailer', '', '2021-12-14 16:51:38', '2021-12-14 16:51:38', NULL),
(630, 'Bernie & Phyl\'s', '901 Broadway', '', 'Saugus', 'MA', '1906', 'USA', '42.4734869', '-71.0254514', 'jslora@bernphyl.com', '(781) 233-7999', 'Retailer', '', '2021-12-14 16:51:39', '2021-12-14 16:51:39', NULL),
(631, 'Bernie & Phyl\'s', '180 Wood Rd', '', 'Braintree', 'MA', '2184', 'USA', '42.2216265', '-71.0354765', 'jslora@bernphyl.com', '(781) 664-1500', 'Retailer', '', '2021-12-14 16:51:40', '2021-12-14 16:51:40', NULL),
(632, 'Bernie & Phyl\'s', '240 New State Hwy', '', 'Raynham', 'MA', '2767', 'USA', '41.9060684', '-71.0575947', 'jslora@bernphyl.com', '(508) 824-9655', 'Retailer', '', '2021-12-14 16:51:41', '2021-12-14 16:51:41', NULL),
(633, 'Bernie & Phyl\'s', '272 Turnpike Rd', '', 'Westborough', 'MA', '1581', 'USA', '42.2816346', '-71.6430162', 'jslora@bernphyl.com', '(508) 366-9595', 'Retailer', '', '2021-12-14 16:51:42', '2021-12-14 16:51:42', NULL),
(634, 'Bernie & Phyl\'s', '61 Worcester St', '', 'Natick', 'MA', '1760', 'USA', '42.3046197', '-71.3287152', 'jslora@bernphyl.com', '508) 907-6500', 'Retailer', '', '2021-12-14 16:51:43', '2021-12-14 16:51:43', NULL),
(635, 'Bernie & Phyl\'s', '20 Airport Rd', '', 'Hyannis', 'MA', '2601', 'USA', '41.6710713', '-70.2986367', 'jslora@bernphyl.com', '508) 790-0115', 'Retailer', '', '2021-12-14 16:51:43', '2021-12-14 16:51:43', NULL),
(636, 'The Chatham Mayflower, Inc', '475 Main Street', '', 'Chatham,', 'MA', '02633', 'USA', '41.679504', '-69.9565931', 'info@themayflowershop.com', '(508) 945-0065', 'Retailer', '', '2021-12-14 16:51:45', '2021-12-14 16:51:45', NULL),
(637, 'Farmhouse Wares', '94 State St.', '', 'Whately', 'MA', '01093', 'USA', '42.4398101', '-72.6348118', 'betsys@farmhousewares.com', '(413) 303-9524', 'Retailer', '', '2021-12-14 16:51:45', '2021-12-14 16:51:46', NULL),
(638, 'Country Curtains', '705 Pleasant St', '', 'Lee', 'MA', '01238', 'USA', '42.2791962', '-73.2508573', 'sdamico@countrycurtains.com', '(413) 394-6238 ', 'Retailer', '', '2021-12-14 16:51:46', '2021-12-14 16:51:46', NULL),
(639, 'Gracefully Restored Furniture', '755 Washington St', '', 'Holliston', 'MA', '01746', 'USA', '42.2003674', '-71.4298503', 'susan.conroy@yahoo.com', '(978) 793-2040', 'Retailer', '', '2021-12-14 16:51:47', '2021-12-14 16:51:47', NULL),
(640, 'Ashley Homestore', '116 Nature Park Way', '', 'Winnipeg', 'MB', 'R3P0X8', 'USA', '49.833936', '-97.212727', 'dsgaccountspayable@ashleyhomestore.ca', '(903) 581-2945', 'Retailer', '', '2021-12-14 16:51:48', '2021-12-14 16:51:48', NULL),
(641, 'Potomac Garden Center', '12024 Darnestown Road', '', 'North Potomac', 'MD', '20878', 'USA', '39.115609', '-77.2498009', 'jamie@potomacgardencenter.com', '(301) 814-3400', 'Retailer', '', '2021-12-14 16:51:49', '2021-12-14 16:51:49', NULL),
(642, 'Simply Beautiful Flowers', '1400 Clarkview Rd', '', 'Baltimore', 'MD', '21209', 'USA', '39.3829807', '-76.6577451', 'renniefriedlander@gmail.com', '(410) 484-7743', 'Retailer', '', '2021-12-14 16:51:50', '2021-12-14 16:51:50', NULL),
(643, 'Walther Gardens at White Oak', '520 Forrest St', '', 'Baltimore', 'MD', '21202', 'USA', '39.3416862', '-76.5630111', 'mwwittek@hotmail.com', '(443) 758-1859', 'Retailer', '', '2021-12-14 16:51:51', '2021-12-14 16:51:51', NULL),
(644, 'The Kellogg Collection Inc.', '7824 Cessna Ave', '', 'Gaithersburg', 'MD', '20879', 'USA', '39.1711575', '-77.1605262', 'payables@kelloggcollection.com', '(301) 519-3477', 'Retailer', '', '2021-12-14 16:51:52', '2021-12-14 16:51:52', NULL),
(645, 'Belle Patri Home Furnishings', '3725 Federal Hill Rd', '', 'Jarrettsvile', 'MD', '21084', 'USA', '39.6072542', '-76.4773922', 'belle_patri@yahoo.com', '(410) 692-5341 ', 'Retailer', '', '2021-12-14 16:51:53', '2021-12-14 16:51:53', NULL);
INSERT INTO `shops` (`id`, `company`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `lat`, `lng`, `email`, `phone1`, `type`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(646, 'Farm + Table', '8 Langsford Road', '', 'Kennebunkport', 'ME', '4046', 'USA', '43.3714013', '-70.4374949', 'bruce@farmtablekennebunkport.com', '(207) 604-8029', 'Retailer', '', '2021-12-14 16:51:54', '2021-12-14 16:51:54', NULL),
(647, 'Possibilities Gifts & More', '49 Main St', '', 'Lincoln', 'ME', '04457', 'USA', '45.3637726', '-68.5037348', 'april@possibilitiesgifts.com', '(207) 794-1000 ', 'Retailer', '', '2021-12-14 16:51:55', '2021-12-14 16:51:55', NULL),
(648, 'Pigeon in the Parlour', '110 S. Saginaw St.', '', 'Holly', 'MI', '48442', 'USA', '42.7915694', '-83.6278439', 'svonwald@live.com', '(248) 634-7467', 'Retailer', '', '2021-12-14 16:51:56', '2021-12-14 16:51:56', NULL),
(649, 'Westborn Market', '14925 Middlebelt', '', 'Livonia', 'MI', '48154', 'USA', '42.395446', '-83.335944', 'mmicallef@westbornmarket.com', '(734) 223-3000', 'Retailer', '', '2021-12-14 16:51:57', '2021-12-14 16:51:57', NULL),
(650, 'Livingston Antique Outlet', '1825 N Burkhart Rd', '', 'Howell', 'MI', '48855', 'USA', '42.626248', '-83.99446', 'antique.chic70@gmail.com', '(517) 548-5399 ', 'Retailer', '', '2021-12-14 16:51:58', '2021-12-14 16:51:58', NULL),
(651, 'Reinspired Treasures, LLC', '2417 Eastern Ave. SE', '', 'Grand Rapids', 'MI', '49507', 'USA', '42.9195365', '-85.6479339', 'barbara@reinspiredtreasures.com', '(616) 915-2299 ', 'Retailer', '', '2021-12-14 16:51:59', '2021-12-14 16:51:59', NULL),
(652, 'Found Cottage, The', '2460 Chicago Drive', '', 'Hudsonville', 'MI', '49426', 'USA', '42.8786861', '-85.8454512', 'hellolizmarieblog@gmail.com', '(616) 745-8324 ', 'Retailer', '', '2021-12-14 16:51:59', '2021-12-14 16:51:59', NULL),
(653, 'Cotton Blossom Exchange', '56717 Leeds Lane', '', 'Macomb', 'MI', '48042', 'USA', '42.713549', '-82.9305237', 'cottonblossomexchange@yahoo.com', '(816) 916-8681 ', 'Retailer', '', '2021-12-14 16:52:00', '2021-12-14 16:52:00', NULL),
(654, 'The Birch Cottage', '723 E. Savidge Street Suite F', '', 'Spring Lake', 'MI', '49456', 'USA', '43.0772036', '-86.1811449', 'Stewartgeneral@yahoo.com', '(616) 318-4971 ', 'Retailer', '', '2021-12-14 16:52:01', '2021-12-14 16:52:01', NULL),
(655, '3Bird', '8060 Main St.', '', 'Dexter', 'MI', '48130', 'USA', '42.3382234', '-83.8880456', '3birddexter@gmail.com', '(734) 634-0519 ', 'Retailer', '', '2021-12-14 16:52:02', '2021-12-14 16:52:02', NULL),
(656, 'Christmas Point', '14803 Edgewood Drive', '', 'Baxter', 'MN', '56425', 'USA', '46.3663767', '-94.2455278', 'jennifer@christmaspoint.com', '(218) 828-0603', 'Retailer', '', '2021-12-14 16:52:03', '2021-12-14 16:52:03', NULL),
(657, 'Harlow\'s House', '18 1st. Ave NE', '', 'Buffalo', 'MN', '55313', 'USA', '45.1726051', '-93.8746738', 'carall27@yahoo.com', '(612) 236-5880 ', 'Retailer', '', '2021-12-14 16:52:04', '2021-12-14 16:52:04', NULL),
(658, 'Past Perfect', '18415 Hwy 65 NE', '', 'East Bethel', 'MN', '55011', 'USA', '45.3037367', '-93.2335153', 'dkjk28@msn.com', '(763) 232-2680 ', 'Retailer', '', '2021-12-14 16:52:05', '2021-12-14 16:52:05', NULL),
(659, 'The Great Furniture Gallery', '31876 Cty Rd 3', '', 'Crosslake', 'MN', '56442', 'USA', '46.615076', '-94.130726', 'kaylin@brainerd.net', '(218) 765-4082', 'Retailer', '', '2021-12-14 16:52:06', '2021-12-14 16:52:06', NULL),
(660, 'Kowalski Companies Inc.', '33 S. Syndicate Street', '', 'Saint Paul', 'MN', '55105', 'USA', '44.9404884', '-93.1545427', 'dspaar@kowalskis.com', '(651) 698-4752', 'Retailer', '', '2021-12-14 16:52:07', '2021-12-14 16:52:07', NULL),
(661, 'Tonkadale Greenhouses', '3739 Tonkawood Rd.', '', 'Minnetonka', 'MN', '55345', 'USA', '44.9347318', '-93.4811739', 'jessie@tonkadale.com', '(952) 938-6480', 'Retailer', '', '2021-12-14 16:52:08', '2021-12-14 16:52:08', NULL),
(662, 'Modern Barnyard', '7285 County Road 75', '', 'Saint Cloud', 'MN', '56301', 'USA', '45.5553016', '-94.2592315', 'modernbarnyard@gmail.com', '(320) 253-8033 ', 'Retailer', '', '2021-12-14 16:52:08', '2021-12-14 16:52:08', NULL),
(663, 'Accentric', '8318 State Hwy 23 West', '', 'Saint Cloud', 'MN', '56301', 'USA', '45.5161663', '-94.2811696', 'molly@thegrandedepot.com', '(320) 257-5500', 'Retailer', '', '2021-12-14 16:52:09', '2021-12-14 16:52:09', NULL),
(664, 'Astrup Drug Inc.', '905 N Main Street', '', 'Austin', 'MN', '55912', 'USA', '43.6747551', '-92.9759029', 'ap@smart-fill.com ', '(507) 433-7447 ', 'Retailer', '', '2021-12-14 16:52:11', '2021-12-14 16:52:11', NULL),
(665, 'Marketplace at The Abbey', '10090 Manchester Rd.', '', 'Glendale', 'MO', '63122', 'USA', '38.6017549', '-90.3904129', 'marketplaceattheabbey@gmail.com', '(314) 965-1400 ', 'Retailer', '', '2021-12-14 16:52:11', '2021-12-14 16:52:12', NULL),
(666, 'Hoods Discount Home Center', '1212 South Gannon  Drive', '', 'Festus', 'MO', '63028', 'USA', '38.2089118', '-90.4023895', 'hoodsoffice@yahoo.com', '(636) 931-6380 ', 'Retailer', '', '2021-12-14 16:52:12', '2021-12-14 16:52:12', NULL),
(667, 'Seasons Event', '300 Tanger Blvd #430', '', 'Branson', 'MO', '65616', 'USA', '36.6439786', '-93.2648849', 'bj120@centurytel.net', '(417) 527-5330 ', 'Retailer', '', '2021-12-14 16:52:13', '2021-12-14 16:52:13', NULL),
(668, 'Bratton House Design Antiques', '157 Topeka Street', '', 'Branson', 'MO', '65616', 'USA', '36.6358108', '-93.3074874', 'brattonhouseantiques@gmail.com', '(417) 699-0630 ', 'Retailer', '', '2021-12-14 16:52:14', '2021-12-14 16:52:14', NULL),
(669, 'Buy Now or Never', '1590 Fenpark', '', 'Fenton', 'MO', '63026', 'USA', '38.5365614', '-90.4486552', 'dgottula@buynowornever.com', '(314) 567-4434 ', 'Retailer', '', '2021-12-14 16:52:15', '2021-12-14 16:52:15', NULL),
(670, 'The Porch', '16957 Manchester Rd', '', 'Wildwood', 'MO', '63040', 'USA', '38.5763168', '-90.6369628', 'netwhiteinteriors@gmail.com', '(314) 780-6195', 'Retailer', '', '2021-12-14 16:52:16', '2021-12-14 16:52:16', NULL),
(671, 'Annie\'s Furniture & Home Accent', '1740 W. 69 Hwy', '', 'Excelsior Springs', 'MO', '64024', 'USA', '39.3402628', '-94.2520876', 'anniesfurniture@mchsi.com', '(816) 630-5300 ', 'Retailer', '', '2021-12-14 16:52:17', '2021-12-14 16:52:17', NULL),
(672, 'The Lamp Stand', '1929 E. Bennett', '', 'Springfield', 'MO', '65804', 'USA', '37.1893253', '-93.258237', 'lcraig@thelampstand.com', '(417) 865-3725 ', 'Retailer', '', '2021-12-14 16:52:18', '2021-12-14 16:52:18', NULL),
(673, 'Boomland Square', '1996 West Elm St.', '', 'Ozark', 'MO', '65721', 'USA', '37.019651', '-93.230796', 'homedecor@boomlandsquare.com', '(417) 581-6512 ', 'Retailer', '', '2021-12-14 16:52:19', '2021-12-14 16:52:19', NULL),
(674, 'Union Furniture Co.', '21 S. Washington', '', 'Union', 'MO', '63084', 'USA', '38.445159', '-91.00914', 'mariab@unionfurnituremo.com', '(636) 583-3133 ', 'Retailer', '', '2021-12-14 16:52:20', '2021-12-14 16:52:20', NULL),
(675, 'Major Interiors', '2104 Industrial Dr', '', 'Jefferson City', 'MO', '65109', 'USA', '38.5885967', '-92.2053181', 'majint@aol.com', '(573) 635-9212', 'Retailer', '', '2021-12-14 16:52:21', '2021-12-14 16:52:21', NULL),
(676, 'Very Violet Boutique', '20 SW 3rd St', '', 'Lee\'s Summit', 'MO', '64063', 'USA', '38.9116112', '-94.3788641', 'Veryvioletboutique@gmail.com', '(816) 434-5513 ', 'Retailer', '', '2021-12-14 16:52:22', '2021-12-14 16:52:22', NULL),
(677, 'Family Center of Harrisonville', '2601 Cantrell Rd.', '', 'Harrisonville', 'MO', '64701', 'USA', '38.659123', '-94.373155', 'invoices@familycenter.us', '(816) 380-7282 ', 'Retailer', '', '2021-12-14 16:52:23', '2021-12-14 16:52:23', NULL),
(678, 'Sandstone Gardens', '2826 Douglas Fir', '', 'Joplin', 'MO', '64804', 'USA', '37.0005179', '-94.5954946', 'angela@sandstonegardens.com', '(417) 206-6305 ', 'Retailer', '', '2021-12-14 16:52:24', '2021-12-14 16:52:24', NULL),
(679, 'Peddler\'s Post', '3203 Miller St', '', 'Bethany', 'MO', '64424', 'USA', '40.2657467', '-94.020261', 'pedpost@grm.net', '(660) 425-6336', 'Retailer', '', '2021-12-14 16:52:25', '2021-12-14 16:52:25', NULL),
(680, 'Nell Hill\'s', '4205 NW Riverside', '', 'Riverside', 'MO', '64150', 'USA', '39.171379', '-94.6136448', 'kimh@nellhills.com', '(816) 505-1558', 'Retailer', '', '2021-12-14 16:52:25', '2021-12-14 16:52:25', NULL),
(681, 'JC Mattress', '4725 Horner Rd', '', 'Jefferson City', 'MO', '65109', 'USA', '38.5800857', '-92.2772293', 'kay4725@embarqmail.com', '(573) 893-8361', 'Retailer', '', '2021-12-14 16:52:26', '2021-12-14 16:52:26', NULL),
(682, 'Sweet Peas', '5217 North 17th Street', '', 'Ozark', 'MO', '65721', 'USA', '37.0682364', '-93.2242431', '417sweetpeas@gmail.com', '(417) 521-8578', 'Retailer', '', '2021-12-14 16:52:27', '2021-12-14 16:52:27', NULL),
(683, 'Ozarkland Enterprises of Blair', '53 Illinois St SW', '', 'Camdenton', 'MO', '65020', 'USA', '38.0064587', '-92.7453633', 'laurie@ozarkland.org', '(573) 346-3366 ', 'Retailer', '', '2021-12-14 16:52:28', '2021-12-14 16:52:28', NULL),
(684, 'Big Cedar Lodge', '612 Devil\'s Pool Road', '', 'Ridgedale', 'MO', '65739', 'USA', '36.5346076', '-93.2738942', 'cduhrhammer@big-cedar.com', '(417) 339-5015', 'Retailer', '', '2021-12-14 16:52:29', '2021-12-14 16:52:29', NULL),
(685, 'Petals & Potpourri', '708 W 40 HWY', '', 'Blue Springs', 'MO', '64015', 'USA', '39.0087697', '-94.2731749', 'bspetals@sbcglobal.net', '(816) 229-4266', 'Retailer', '', '2021-12-14 16:52:30', '2021-12-14 16:52:30', NULL),
(686, 'K. Hall Designs', '715 Hanley Industrial Court', '', 'Brentwood', 'MO', '63144', 'USA', '38.6227241', '-90.3423482', 'briansmith@khalldesigns.com', '(314) 961-1990', 'Retailer', '', '2021-12-14 16:52:31', '2021-12-14 16:52:31', NULL),
(687, 'White Rabbit', '9030 Manchester Rd', '', 'St. Louis', 'MO', '63144', 'USA', '38.6123056', '-90.3545409', 'emailtwr@yahoo.com', '(314) 963-9784', 'Retailer', '', '2021-12-14 16:52:32', '2021-12-14 16:52:32', NULL),
(688, 'The Copper Lantern,  LLC', '312 N Washington St', '', 'Farmington', 'MO', '63640', 'USA', '37.7832361', '-90.4200554', 'thecopperlantern63640@gmail.com', '(573) 631-8638 ', 'Retailer', '', '2021-12-14 16:52:34', '2021-12-14 16:52:34', NULL),
(689, 'Delta Home 51', '1720 Hwy 51 S', '', 'Hernando', 'MS', '38632', 'USA', '34.8348957', '-89.9939774', 'deltahome51hernando@gmail.com', '(901) 356-8399 ', 'Retailer', '', '2021-12-14 16:52:34', '2021-12-14 16:52:35', NULL),
(690, 'Farm House', '165 W Peace St', '', 'Canton', 'MS', '39046', 'USA', '32.6124994', '-90.0356184', 'info@farmhouseinterior.com', '(702) 354-3678 ', 'Retailer', '', '2021-12-14 16:52:35', '2021-12-14 16:52:36', NULL),
(691, 'Livingston Mercantile', '106 Livingston Church Rd.', '', 'Flora', 'MS', '39071', 'USA', '32.5528452', '-90.2171909', 'ron@livingstonmercantile.com', '(601) 519-8895 ', 'Retailer', '', '2021-12-14 16:52:36', '2021-12-14 16:52:36', NULL),
(692, 'Rick\'s Furniture', '1091 Stark Rd', '', 'Starkville', 'MS', '39759', 'USA', '33.4552184', '-88.8128653', 'rick@ricksfurnituremarket.com', '(662) 323-9640', 'Retailer', '', '2021-12-14 16:52:37', '2021-12-14 16:52:37', NULL),
(693, 'Scarborough Building Supply', '117 West Jefferson Street', '', 'Kosciusko', 'MS', '39090', 'USA', '33.0663259', '-89.5794871', 'sbshomecenter@yahoo.com', '(662) 792-4088', 'Retailer', '', '2021-12-14 16:52:38', '2021-12-14 16:52:38', NULL),
(694, 'Rowan House', '604 Wick St', '', 'Corinth', 'MS', '38834', 'USA', '34.9338885', '-88.5197035', 'rowan.house@hotmail.com', '(662) 284-8317 ', 'Retailer', '', '2021-12-14 16:52:39', '2021-12-14 16:52:39', NULL),
(695, 'Southern Antiques', '317 Central Ave', '', 'Laurel', 'MS', '39440', 'USA', '31.6921429', '-89.1299916', 'jmilham@bellsouth.net', '(601) 426-2322', 'Retailer', '', '2021-12-14 16:52:40', '2021-12-14 16:52:40', NULL),
(696, 'Discount Building Materials & Home Center', '408 Hwy 6 West', '', 'Oxford', 'MS', '38655', 'USA', '34.3621487', '-89.5763503', 'dawnsink@earthlink.net', '(662) 236-5615', 'Retailer', '', '2021-12-14 16:52:41', '2021-12-14 16:52:41', NULL),
(697, 'The Wooden Door', '6542 Goodman Road Ste 104', '', 'Olive Branch', 'MS', '38654', 'USA', '34.963581', '-89.8311767', 'thewoodendoorob@gmail.com', '(662) 292-2800 ', 'Retailer', '', '2021-12-14 16:52:42', '2021-12-14 16:52:42', NULL),
(698, 'Gandy & Co.', '703 Court Street', '', 'Waynesboro', 'MS', '39367', 'USA', '31.6763004', '-88.6474314', 'chrisdfurniture@att.net', '(601) 735-9376', 'Retailer', '', '2021-12-14 16:52:43', '2021-12-14 16:52:43', NULL),
(699, 'Hutto Furniture, INC.', '713 Azalea Dr', '', 'Waynesboro', 'MS ', '39367', 'USA', '31.6758939', '-88.6451874', 'huttofurnitureco@bellsouth.net', '(601) 735-2037', 'Retailer', '', '2021-12-14 16:52:44', '2021-12-14 16:52:44', NULL),
(700, 'Plain Janes', '100 W. Main', '', 'Ennis', 'MT', '59729', 'USA', '45.3489672', '-111.7302392', 'plainjanes@3rivers.net', '(406) 682-5252 ', 'Retailer', '', '2021-12-14 16:52:45', '2021-12-14 16:52:45', NULL),
(701, 'Bestow LLC', '217 Main St', '', 'Kalispel', 'MT', '59901', 'USA', '48.1965493', '-114.3126165', 'bestow@bestowheartandhome.com', '(406) 270-8291 ', 'Retailer', '', '2021-12-14 16:52:46', '2021-12-14 16:52:46', NULL),
(702, 'Red Rooster Trading', '333 N. Higgins', '', 'Missoula', 'MT', '59802', 'USA', '46.872936', '-113.9937412', 'redroosterhome@gmail.com', '(406) 543-7777', 'Retailer', '', '2021-12-14 16:52:47', '2021-12-14 16:52:47', NULL),
(703, 'Montana Rustic Accents', '637 North 9th Suite 150', '', 'Columbus', 'MT', '59019', 'USA', '45.6427409', '-109.2478809', 'montanarusticaccents@yahoo.com', '(406) 322-6204', 'Retailer', '', '2021-12-14 16:52:48', '2021-12-14 16:52:48', NULL),
(704, 'Montana Expressions', '81811 Gallatin Rd', '', 'Bozeman', 'MT', '59718', 'USA', '45.6701187', '-111.1865642', 'info@montanaexpressions.com', '(406) 585-5839', 'Retailer', '', '2021-12-14 16:52:49', '2021-12-14 16:52:49', NULL),
(705, 'Liberty & Vine Country Store', '2019 Montana Ave', '', 'Billings', 'MT', '59101', 'USA', '45.7857398', '-108.4964065', 'libertyandvine@yahoo.com', '(406) 698-5636 ', 'Retailer', '', '2021-12-14 16:52:50', '2021-12-14 16:52:50', NULL),
(706, 'Main Street Mercantile', '101 S Main Street', '', 'Waynesville', 'NC', '28786', 'USA', '35.4882431', '-82.9885212', '101mercantile@gmail.com', '(828) 246-6176 ', 'Retailer', '', '2021-12-14 16:52:50', '2021-12-14 16:52:50', NULL),
(707, 'Hoop\'s', '112 N Trade St. Ste A', '', 'Tryon', 'NC', '28782', 'USA', '35.2097479', '-82.239697', 'Hoopsantiques@gmail.com', '(828) 440-1440', 'Retailer', '', '2021-12-14 16:52:52', '2021-12-14 16:52:52', NULL),
(708, 'The Unique Boutique', '11500 E Independence Blvd Ste F', '', 'Matthews', 'NC', '28105', 'USA', '35.0511173', '-80.6466022', 'theuniqueboutique14@gmail.com', '(704) 400-7213', 'Retailer', '', '2021-12-14 16:52:53', '2021-12-14 16:52:53', NULL),
(709, 'Coastal Vibe', '119 South Water St', '', 'Wilmington', 'NC', '28401', 'USA', '34.2346457', '-77.9487437', 'ceschram@yahoo.com', '(910) 262-1533 ', 'Retailer', '', '2021-12-14 16:52:54', '2021-12-14 16:52:54', NULL),
(710, 'Carolina Pine Country Store', '122 S. Center Street', '', 'Goldsboro', 'NC', '27530', 'USA', '35.382414', '-77.996953', 'carolinepinellc@outlook.com', '(919) 947-5112', 'Retailer', '', '2021-12-14 16:52:54', '2021-12-14 16:52:54', NULL),
(711, 'Farmhouse Chic', '14200 E. Independence Blvd. #C', '', 'Indian Trail', 'NC', '28079', 'USA', '35.076849', '-80.644755', 'farmhousechictables@gmail.com', '(704) 492-5128', 'Retailer', '', '2021-12-14 16:52:55', '2021-12-14 16:52:55', NULL),
(712, 'Southern Chicks Market', '1630 Asheville Hwy.', '', 'Hendersonville', 'NC', '28791', 'USA', '35.3312878', '-82.4688838', 'southernchicksmarket@gmail.com', '(828) 595-2530 ', 'Retailer', '', '2021-12-14 16:52:56', '2021-12-14 16:52:56', NULL),
(713, 'Interior Enhancements, Inc', '179 Hwy 107 South', '', 'Cashiers', 'NC', '28717', 'USA', '35.1116451', '-83.0985602', 'ydorau@aol.com', '(828) 743-5840 ', 'Retailer', '', '2021-12-14 16:52:57', '2021-12-14 16:52:57', NULL),
(714, 'Bumpkins', '181 Hwy 64 West', '', 'Cashiers', 'NC', '28717', 'USA', '35.1123554', '-83.1034061', 'jeff.sikes@me.com', '(828) 743-1844', 'Retailer', '', '2021-12-14 16:52:58', '2021-12-14 16:52:58', NULL),
(715, 'Dutchmans Designs', '19441 Old Jetton Rd.', '', 'Cornelius', 'NC', '28031', 'USA', '35.4781299', '-80.8922972', 'gabbi@dutchmansdesigns.com', '(828) 526-8864', 'Retailer', '', '2021-12-14 16:52:59', '2021-12-14 16:52:59', NULL),
(716, 'Two Old Birds', '223 N. Salem St.', '', 'Apex', 'NC', '27502', 'USA', '35.7323436', '-78.8505559', 'twooldbirds@gmail.com', '(919) 632-4601', 'Retailer', '', '2021-12-14 16:53:00', '2021-12-14 16:53:00', NULL),
(717, 'Welcome Home', '235 Market Street', '', 'Mount Airy', 'NC', '27030', 'USA', '36.5008079', '-80.6091662', 'Karen@welcomehomedecor235.com', '(336) 648-8025 ', 'Retailer', '', '2021-12-14 16:53:01', '2021-12-14 16:53:01', NULL),
(718, 'Wrinkled Egg, The', '2710 Greenvile Hwy', '', 'Flat Rock', 'NC', '28731', 'USA', '35.271043', '-82.44144', 'virginia@thewrinkledegg.com', '(828) 696-3998 ', 'Retailer', '', '2021-12-14 16:53:02', '2021-12-14 16:53:02', NULL),
(719, 'Roost Interiors & Gifts', '35 W Main St', '', 'Brevard', 'NC', '28712', 'USA', '35.2338191', '-82.7349788', 'ctprince@citcom.net', '(828) 884-2012', 'Retailer', '', '2021-12-14 16:53:03', '2021-12-14 16:53:03', NULL),
(720, 'Cabin Store, The', '1101 S Jefferson Ave', '', 'West Jefferson', 'NC', '28694', 'USA', '36.2018341', '-81.6694556', 'cabinstore@earthlink.net', '(336) 246-5647', 'Retailer', '', '2021-12-14 16:53:04', '2021-12-14 16:53:04', NULL),
(721, 'Raleigh Road Garden Center & Landscapes', '4175 Raleigh Road Parkway', '', 'Wilson', 'NC', '27896', 'USA', '35.75512', '-77.9764919', 'rrgcenter@yahoo.com', '(252) 291-0114 ', 'Retailer', '', '2021-12-14 16:53:05', '2021-12-14 16:53:05', NULL),
(722, 'La Farm', '4248 NW Cary Parkway', '', 'Cary', 'NC', '27513', 'USA', '35.7907196', '-78.8274122', 'adrienne.cates@lafarmbakery.com', '(919) 657-0657', 'Retailer', '', '2021-12-14 16:53:06', '2021-12-14 16:53:06', NULL),
(723, 'Robin Blu', '486 Hazelwood Ave.', '', 'Waynesville', 'NC', '28786', 'USA', '35.4781913', '-83.0037307', 'robannem62@yahoo.com', '(828) 550-1914 ', 'Retailer', '', '2021-12-14 16:53:07', '2021-12-14 16:53:07', NULL),
(724, 'K2 Studios', '59 College St.', '', 'Asheville', 'NC', '28801', 'USA', '35.5952372', '-82.5528526', 'info@k2furniture.com', '(828) 250-0500', 'Retailer', '', '2021-12-14 16:53:08', '2021-12-14 16:53:08', NULL),
(725, 'Salem Creek', '694 Hanes Mall Blvd.', '', 'Winston-Salem', 'NC', '27103', 'USA', '36.0630556', '-80.3025', 'tameca@salemcreek.com', '(336) 760-1717', 'Retailer', '', '2021-12-14 16:53:08', '2021-12-14 16:53:08', NULL),
(726, 'Vintage Home South', '764-1B 9th Street', '', 'Durham', 'NC', '27705', 'USA', '36.0098621', '-78.9218394', 'jen@vintagehomesouth.com', '(919) 599-4209 ', 'Retailer', '', '2021-12-14 16:53:09', '2021-12-14 16:53:09', NULL),
(727, 'Rug & Home', '799B Brevard Rd.', '', 'Asheville', 'NC', '28806', 'USA', '35.5342025', '-82.6039047', 'carolyn@rugandhome.com', '(828) 667-4585', 'Retailer', '', '2021-12-14 16:53:10', '2021-12-14 16:53:10', NULL),
(728, 'Bella Boutique', '80 Main Street', '', 'Hayesville', 'NC', '28904', 'USA', '35.0463303', '-83.8177758', 'Bellaonmain16@gmail.com', '(828) 389-1800', 'Retailer', '', '2021-12-14 16:53:11', '2021-12-14 16:53:11', NULL),
(729, 'The Raggedy Rooster', '10635 Park Rd', '', 'Charlotte', 'NC', '28210', 'USA', '35.0910849', '-80.8674421', 'bws7434@gmail.com', '(704) 619-2890', 'Retailer', '', '2021-12-14 16:53:12', '2021-12-14 16:53:12', NULL),
(730, 'Creative by Nature HOME', '9830 Rea Rd Ste H', '', 'Charlotte', 'NC', '28277', 'USA', '35.0346183', '-80.8071152', 'cbnfloral@yahoo.com', '(704) 542-7570', 'Retailer', '', '2021-12-14 16:53:13', '2021-12-14 16:53:13', NULL),
(731, 'Brass Exchange, The', '1157 Main St', '', 'Blowing Rock', 'NC', '28605', 'USA', '36.1316257', '-81.6783249', 'brassexchange@bellsouth.net', '(828) 295-9260', 'Retailer', '', '2021-12-14 16:53:14', '2021-12-14 16:53:14', NULL),
(732, 'Reliks', '929 Parkway View Rd', '', 'Mars Hill', 'NC', '28754', 'USA', '35.831733', '-82.5292347', 'relikshomeandgarden@yahoo.com', '(828) 380-3352 ', 'Retailer', '', '2021-12-14 16:53:15', '2021-12-14 16:53:15', NULL),
(733, 'Chestnut Forge Furniture', '3946 US Hwy 64', '', 'Rutherfordton', 'NC', '28139', 'USA', '35.4670551', '-81.8819093', 'Craig@chestnutforgeandfurniture.com', '(828) 755-6563 ', 'Retailer', '', '2021-12-14 16:53:16', '2021-12-14 16:53:16', NULL),
(734, 'Eco Chic', '4955 17th Ave S Ste 106', '', 'Fargo', 'ND', '58103', 'USA', '46.8551788', '-96.8700527', 'maria@iloveecochic.com', '(701) 356-6600 ', 'Retailer', '', '2021-12-14 16:53:17', '2021-12-14 16:53:17', NULL),
(735, 'Rustic & Red LLC.', '139 W 8th', '', 'Cozad', 'NE', '69130', 'USA', '40.859375', '-99.9869842', 'rusticandred@gmail.com', '(308) 784-3200', 'Retailer', '', '2021-12-14 16:53:18', '2021-12-14 16:53:18', NULL),
(736, 'Cedar Hill', '5500 Old Cheney Rd., Ste. 11', '', 'Lincoln', 'NE', '68516', 'USA', '40.7567221', '-96.6473234', 'apa-barb@neb.rr.com', '(402) 421-6119 ', 'Retailer', '', '2021-12-14 16:53:19', '2021-12-14 16:53:19', NULL),
(737, 'Revived Furniture and Home Dec', '2 Island Pond Rd', '', 'Derry', 'NH', '03038', 'USA', '42.8988808', '-71.3399777', 'cjleiter@yahoo.com', '(603) 965-3527', 'Retailer', '', '2021-12-14 16:53:20', '2021-12-14 16:53:20', NULL),
(738, 'Chickadee Lane Interiors', '25 North Main Street', '', 'Concord', 'NH', '03301', 'USA', '43.2048838', '-71.5360977', 'chickadeelane@comcast.net', '(603) 856-7825 ', 'Retailer', '', '2021-12-14 16:53:21', '2021-12-14 16:53:21', NULL),
(739, 'Robin\'s Egg', '326 Nashua Street', '', 'Milford', 'NH', '03055', 'USA', '42.8724467', '-71.6119802', 'robinseggoffice@gmail.com', '(603) 672-3900', 'Retailer', '', '2021-12-14 16:53:22', '2021-12-14 16:53:22', NULL),
(740, 'Papernut', '103 North Main St', '', 'Mullica Hill', 'NJ', '08062', 'USA', '39.7435236', '-75.2235911', 'dianevillecco@hotmail.com', '(856) 223-9400 ', 'Retailer', '', '2021-12-14 16:53:22', '2021-12-14 16:53:22', NULL),
(741, 'Reynolds Garden Shop', '201 E. Bay Avenue', '', 'Manahawkin', 'NJ', '08050', 'USA', '39.692131', '-74.2526935', 'accountspayable@reynoldslbi.com', '(609) 597-6099 ', 'Retailer', '', '2021-12-14 16:53:23', '2021-12-14 16:53:23', NULL),
(742, 'David Ellis Events', '300 Connell Drive Suite 2200', '', 'Berkley Heights', 'NJ', '07922', 'USA', '40.6950039', '-74.3005461', 'dustin@davidellisevents.com', '(973) 539-3000 ', 'Retailer', '', '2021-12-14 16:53:24', '2021-12-14 16:53:24', NULL),
(743, 'How To Live', '7 South Bay Avenue', '', 'Beach Haven', 'NJ', '08008', 'USA', '39.5632587', '-74.2399706', 'sandygingras2@gmail.com', '(609) 492-9232 ', 'Retailer', '', '2021-12-14 16:53:25', '2021-12-14 16:53:25', NULL),
(744, 'Miller Waldrop Furniture', '100 W Bender Blvd', '', 'Hobbs', 'NM', '88240', 'USA', '32.726188', '-103.13663', 'office3@millerwaldrop.com', '(575) 392-6508 ', 'Retailer', '', '2021-12-14 16:53:26', '2021-12-14 16:53:26', NULL),
(745, 'Old Barrel Tea & Spice', '2402 Sudderth Drive', '', 'Ruidoso', 'NM', '88345', 'USA', '33.3316228', '-105.6702672', 'dana@noisywaterwinery.com', '(575) 315-0999 ', 'Retailer', '', '2021-12-14 16:53:27', '2021-12-14 16:53:27', NULL),
(746, 'Osuna Nursery', '501 Osuna Road NE', '', 'Albuquerque', 'NM', '87113', 'USA', '35.1517893', '-106.6200708', 'rcarillo@osunanursery.com', '(505) 345-6644', 'Retailer', '', '2021-12-14 16:53:28', '2021-12-14 16:53:28', NULL),
(747, 'The Furniture Superstore', '7901 4th St', '', 'Albuquerque', 'NM', '87114', 'USA', '35.1124937', '-106.6459648', 'jonsaylor@gmail.com', '(505) 263-8466 ', 'Retailer', '', '2021-12-14 16:53:29', '2021-12-14 16:53:29', NULL),
(748, 'Route 54 Home Decor', '209 N White Sands Blvd', '', 'Alamogordo', 'NM', '88310', 'USA', '32.8920228', '-105.9605781', 'Route54homedecor@gmail.com', '(575) 434-0310 ', 'Retailer', '', '2021-12-14 16:53:30', '2021-12-14 16:53:30', NULL),
(749, 'Tara Dennis Pty. Ltd', '33 Redleaf Ave', '', 'Wahroonga', 'NSW', '2076', 'USA', '-33.719339', '151.117062', 'martyn@taradennis.com', '+61 29489 2952', 'Retailer', '', '2021-12-14 16:53:30', '2021-12-14 16:53:31', NULL),
(750, 'Fresh Wata', '3905 W. Diablo Drive Suite 100', '', 'Las Vegas', 'NV', '89118', 'USA', '36.0894336', '-115.1916281', 'tricia@freshwata.com', '(913) 269-3849 ', 'Retailer', '', '2021-12-14 16:53:31', '2021-12-14 16:53:31', NULL),
(751, 'Bloom', '503 Hotel Plaza', '', 'Boulder City', 'NV', '89005', 'USA', '35.9777939', '-114.8359411', 'let.yourself.bloom@gmail.com', '(702) 386-1010', 'Retailer', '', '2021-12-14 16:53:32', '2021-12-14 16:53:32', NULL),
(752, 'Nicolette\'s', '1040 North Broadway', '', 'N. Massapequa', 'NY', '11758', 'USA', '40.7095704', '-73.4607661', 'jnic1029@gmail.com', '(516) 694-3591 ', 'Retailer', '', '2021-12-14 16:53:33', '2021-12-14 16:53:33', NULL),
(753, 'A Cottage in the City', '2 South Main St.', '', 'Sayville', 'NY', '11782', 'USA', '40.7358895', '-73.082269', 'sara@acottageinthecity.com', '(631) 567-0828', 'Retailer', '', '2021-12-14 16:53:34', '2021-12-14 16:53:34', NULL),
(754, 'Country Willow', '230 Rte 117 By Pass Rd', '', 'Bedford Hills', 'NY', '10507', 'USA', '41.2461099', '-73.6814977', 'liana@countrywillow.com', '(914) 241-7000 ', 'Retailer', '', '2021-12-14 16:53:35', '2021-12-14 16:53:35', NULL),
(755, 'Tattered Tulip', '4090 Lake Ave', '', 'Lockport', 'NY', '14094', 'USA', '43.2196349', '-78.678001', 'lsmiles2009@gmail.com', '(716) 425-2322', 'Retailer', '', '2021-12-14 16:53:36', '2021-12-14 16:53:36', NULL),
(756, 'Marmalade Mercantile LLC', '414 N Meadow Street', '', 'Ithaca', 'NY', '14850', 'USA', '42.443052', '-76.508839', 'folks@marmalademercantile.com', '(607) 379-6654', 'Retailer', '', '2021-12-14 16:53:37', '2021-12-14 16:53:37', NULL),
(757, 'Front Street Home', '6 Front Street', '', 'Ballston Spa', 'NY', '12020', 'USA', '43.0027658', '-73.8492064', 'derockerdesign@verizon.net', '(518) 885-6555', 'Retailer', '', '2021-12-14 16:53:38', '2021-12-14 16:53:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expiry` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verified_at` datetime DEFAULT NULL,
  `provider` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(141) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `phone`, `email`, `date_of_birth`, `gender`, `email_verified_at`, `password`, `profile_image`, `otp`, `otp_expiry`, `otp_verified_at`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', NULL, NULL, 'admin@store-locator.com', NULL, NULL, '2021-06-21 09:25:19', '$2y$10$brDgTkVs98inl2Q8l.iR/O.4Dl55CxyBbZRkhFV/LTayNd1/IGpOC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-23 03:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

CREATE TABLE `user_request` (
  `id` int NOT NULL,
  `request_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_car_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `title` text,
  `additional_info` text,
  `location` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_request`
--

INSERT INTO `user_request` (`id`, `request_id`, `user_id`, `user_car_id`, `quantity`, `title`, `additional_info`, `location`, `created_at`, `updated_at`) VALUES
(7, 811905, 26, 4, 2, 'a dummy title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'islamabad', '2021-06-25 02:33:27', '2021-06-25 02:33:27'),
(8, 840261, 26, 4, NULL, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', NULL, '2021-11-30 08:59:56', '2021-11-30 08:59:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_request`
--
ALTER TABLE `user_request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_request`
--
ALTER TABLE `user_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
