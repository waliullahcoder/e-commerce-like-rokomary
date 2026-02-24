-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2026 at 12:19 PM
-- Server version: 10.6.23-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busines2_books_and_books`
--
USE `e_commerce_like_rokomary`;
-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `permission_id`, `parent_id`, `name`, `route`, `icon`, `order`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Dashboard', 'admin.dashboard', '<span class=\"material-symbols-outlined fs-22\"> home_app_logo </span>', 1, 1, 1, '2026-01-19 05:33:09', '2026-01-19 05:33:09'),
(2, 2, NULL, 'System Settings', NULL, '<span class=\"material-symbols-outlined fs-22\"> settings_cinematic_blur </span>', 2, 1, 1, '2026-01-19 05:34:47', '2026-01-19 05:34:47'),
(3, 3, 2, 'Roles', 'admin.role.index', NULL, 1, 1, 1, '2026-01-19 05:35:46', '2026-01-19 05:35:46'),
(4, 4, 2, 'Users', 'admin.user.index', NULL, 2, 1, 1, '2026-01-19 05:36:43', '2026-01-19 05:36:43'),
(5, 5, NULL, 'Admin Menu', 'admin.admin-menu.index', NULL, 3, 1, 1, '2026-01-19 05:37:27', '2026-01-20 02:51:54'),
(6, 6, 2, 'Admin Settings', 'admin.admin-settings.index', NULL, 4, 1, 1, '2026-01-19 05:37:50', '2026-01-19 05:37:50'),
(9, 21, NULL, 'Products', NULL, NULL, 4, 1, 1, '2026-01-20 03:47:59', '2026-01-20 03:55:33'),
(10, 22, 9, 'Category', 'admin.category.index', NULL, 4, 1, 1, '2026-01-20 03:49:56', '2026-01-20 03:49:56'),
(11, 26, 9, 'Product Manage', 'admin.product.index', NULL, 4, 1, 1, '2026-01-20 03:56:07', '2026-01-20 03:56:07'),
(12, 27, 9, 'UOM', 'admin.uom.index', NULL, 4, 1, 1, '2026-01-20 04:04:00', '2026-01-20 04:04:00'),
(13, 28, 9, 'Brand', 'admin.brand.index', NULL, 4, 1, 1, '2026-01-20 04:04:36', '2026-01-20 04:04:36'),
(15, 32, 9, 'Vendor', 'admin.vendor.index', NULL, 4, 1, 1, '2026-01-20 04:12:04', '2026-01-20 04:12:04'),
(16, 34, 9, 'Attribute', 'admin.attribute.index', NULL, 4, 1, 1, '2026-01-20 04:19:04', '2026-01-20 04:19:04'),
(17, 36, 9, 'publication', 'admin.publication.index', NULL, 4, 1, 1, '2026-01-20 04:22:54', '2026-01-20 04:22:54'),
(18, 39, NULL, 'User Menu', NULL, NULL, 5, 0, 1, '2026-01-20 05:21:16', '2026-01-28 23:16:55'),
(19, 40, 18, 'Main Menu', 'admin.menu.index', NULL, 5, 1, 1, '2026-01-20 05:22:04', '2026-01-20 05:22:04'),
(21, 45, NULL, 'settings', 'admin.settings.index', NULL, 2, 1, 1, '2026-01-20 06:07:06', '2026-01-20 06:07:06'),
(22, 47, 9, 'Author', 'admin.author.index', NULL, 5, 1, 1, '2026-01-22 04:29:15', '2026-01-22 04:29:15'),
(23, 55, NULL, 'Orders Management', NULL, NULL, 6, 1, 1, '2026-01-31 22:22:32', '2026-01-31 22:24:38'),
(24, 56, 23, 'Order List', 'admin.orders.index', NULL, 6, 1, 1, '2026-01-31 22:25:06', '2026-01-31 22:28:50'),
(25, 57, 2, 'Slider', 'admin.slider.index', '#', 2, 1, 1, '2026-02-02 04:09:16', '2026-02-02 04:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu_actions`
--

CREATE TABLE `admin_menu_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `admin_menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `route` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu_actions`
--

INSERT INTO `admin_menu_actions` (`id`, `permission_id`, `admin_menu_id`, `name`, `route`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 'create', 'admin.admin-menu.create', 1, '2026-01-19 05:39:02', '2026-01-19 05:39:02'),
(2, 8, 5, 'edit', 'admin.admin-menu.edit', 1, '2026-01-19 05:39:14', '2026-01-19 05:39:14'),
(3, 9, 5, 'delete', 'admin.admin-menu.destroy', 1, '2026-01-19 05:39:24', '2026-01-19 05:39:24'),
(4, 10, 5, 'view actions', 'admin.admin-menu-action.index', 1, '2026-01-19 05:39:36', '2026-01-19 05:39:36'),
(5, 11, 5, 'create action', 'admin.admin-menu-action.create', 1, '2026-01-19 05:39:45', '2026-01-19 05:39:45'),
(6, 12, 5, 'edit action', 'admin.admin-menu-action.edit', 1, '2026-01-19 05:40:14', '2026-01-19 05:40:14'),
(7, 13, 5, 'delete action', 'admin.admin-menu-action.destroy', 1, '2026-01-19 05:40:27', '2026-01-19 05:40:27'),
(8, 14, 3, 'create', 'admin.role.create', 1, '2026-01-19 23:59:12', '2026-01-19 23:59:12'),
(10, 18, 3, 'edit', 'admin.role.edit', 1, '2026-01-20 03:24:24', '2026-01-20 03:24:24'),
(11, 19, 3, 'delete', 'admin.role.destroy', 1, '2026-01-20 03:25:16', '2026-01-20 03:29:11'),
(12, 20, 3, 'Edit Permission', 'admin.role-permission.edit', 1, '2026-01-20 03:31:59', '2026-01-20 03:31:59'),
(13, 23, 9, 'create', 'admin.product.create', 1, '2026-01-20 03:51:53', '2026-01-20 03:51:53'),
(14, 24, 9, 'edit', 'admin.product.edit', 1, '2026-01-20 03:52:09', '2026-01-20 03:52:09'),
(15, 25, 9, 'delete', 'admin.product.destroy', 1, '2026-01-20 03:52:34', '2026-01-20 03:52:34'),
(16, 29, 12, 'create', 'admin.uom.create', 1, '2026-01-20 04:06:48', '2026-01-20 04:06:48'),
(17, 31, 13, 'create', 'admin.brand.create', 1, '2026-01-20 04:09:27', '2026-01-20 04:09:27'),
(18, 33, 15, 'create', 'admin.vendor.create', 1, '2026-01-20 04:12:41', '2026-01-20 04:12:41'),
(19, 35, 16, 'create', 'admin.attribute.create', 1, '2026-01-20 04:21:01', '2026-01-20 04:21:01'),
(20, 37, 17, 'create', 'admin.publication.create', 1, '2026-01-20 04:23:43', '2026-01-20 04:23:43'),
(21, 38, 11, 'show', 'admin.product.show', 1, '2026-01-20 04:59:33', '2026-01-20 04:59:33'),
(22, 41, 19, 'create', 'admin.menu.create', 1, '2026-01-20 05:23:01', '2026-01-20 05:23:01'),
(24, 44, 19, 'menu-item', 'admin.menu-item.index', 1, '2026-01-20 05:33:58', '2026-01-20 05:33:58'),
(25, 46, 19, 'edit', 'admin.menu.edit', 1, '2026-01-21 00:48:49', '2026-01-21 00:48:49'),
(26, 48, 22, 'create', 'admin.author.create', 1, '2026-01-22 04:30:36', '2026-01-22 04:30:36'),
(27, 49, 22, 'edit', 'admin.author.edit', 1, '2026-01-22 04:30:52', '2026-01-22 04:30:52'),
(28, 50, 22, 'delete', 'admin.author.destroy', 1, '2026-01-22 04:31:06', '2026-01-22 04:31:06'),
(29, 51, 22, 'show', 'admin.author.show', 1, '2026-01-22 04:31:22', '2026-01-22 04:31:22'),
(30, 52, 17, 'edit', 'admin.publication.edit', 1, '2026-01-22 04:33:21', '2026-01-22 04:33:21'),
(31, 53, 17, 'show', 'admin.publication.show', 1, '2026-01-22 04:33:41', '2026-01-22 04:33:41'),
(32, 54, 18, 'delete', 'admin.menu.destroy', 1, '2026-01-28 23:15:51', '2026-01-28 23:15:51'),
(33, 58, 25, 'edit', 'admin.slider.edit', 1, '2026-02-02 04:09:53', '2026-02-02 04:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `small_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `logo`, `small_logo`, `favicon`, `title`, `footer_text`, `primary_color`, `secondary_color`, `facebook`, `twitter`, `linkedin`, `whatsapp`, `google`, `created_at`, `updated_at`) VALUES
(1, 'storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp', 'storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp', 'storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp', 'Books', 'sdfsdfsdf', '#e80c9b', '#18ba64', 'sdfs', 'fsdf', 'sdfsd', 'dfsdf', NULL, '2026-01-19 05:04:11', '2026-01-19 05:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'attrbuts', 'attrbuts', 'zzzxczxcz', 1, 1, NULL, NULL, NULL, '2026-01-20 04:21:28', '2026-01-20 04:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `image`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ', 'author-name-test', 'storage/author/2026-01-22-zeIQ6hqzq0S5fMSdNwjKvP71YvOQVfeDJdi8CtFq.webp', NULL, 'sadas', 1, 1, NULL, NULL, NULL, '2026-01-22 04:32:15', '2026-01-22 04:32:15'),
(2, 'জন সি মাক্সওয়েল', 'jn-si-makswel', 'storage/author/2026-01-22-T02ZWzSpmM23u47w1cOI5T34THWIlNdQq4nuDjUA.webp', NULL, 'জন সি মাক্সওয়েল', 1, 1, 1, NULL, NULL, '2026-01-22 04:32:35', '2026-02-02 05:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BRAND NAME WASKER', 'brand-name-wasker', 'storage/brand/2026-01-20-mH033TDt5IhVVLvH7rpLvNfYNUawDwaI0kR4lDnL.webp', 'sdsdsadasd', 1, 1, NULL, NULL, NULL, '2026-01-20 04:10:04', '2026-01-20 04:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('books_books_cache_admin_menus', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:6:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:13:\"permission_id\";i:1;s:9:\"parent_id\";N;s:4:\"name\";s:9:\"Dashboard\";s:5:\"route\";s:15:\"admin.dashboard\";s:4:\"icon\";s:68:\"<span class=\"material-symbols-outlined fs-22\"> home_app_logo </span>\";s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:33:09\";s:10:\"updated_at\";s:19:\"2026-01-19 11:33:09\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:13:\"permission_id\";i:1;s:9:\"parent_id\";N;s:4:\"name\";s:9:\"Dashboard\";s:5:\"route\";s:15:\"admin.dashboard\";s:4:\"icon\";s:68:\"<span class=\"material-symbols-outlined fs-22\"> home_app_logo </span>\";s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:33:09\";s:10:\"updated_at\";s:19:\"2026-01-19 11:33:09\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:2;s:13:\"permission_id\";i:2;s:9:\"parent_id\";N;s:4:\"name\";s:15:\"System Settings\";s:5:\"route\";N;s:4:\"icon\";s:78:\"<span class=\"material-symbols-outlined fs-22\"> settings_cinematic_blur </span>\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:34:47\";s:10:\"updated_at\";s:19:\"2026-01-19 11:34:47\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:2;s:13:\"permission_id\";i:2;s:9:\"parent_id\";N;s:4:\"name\";s:15:\"System Settings\";s:5:\"route\";N;s:4:\"icon\";s:78:\"<span class=\"material-symbols-outlined fs-22\"> settings_cinematic_blur </span>\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:34:47\";s:10:\"updated_at\";s:19:\"2026-01-19 11:34:47\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:3;s:13:\"permission_id\";i:3;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Roles\";s:5:\"route\";s:16:\"admin.role.index\";s:4:\"icon\";N;s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:35:46\";s:10:\"updated_at\";s:19:\"2026-01-19 11:35:46\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:3;s:13:\"permission_id\";i:3;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Roles\";s:5:\"route\";s:16:\"admin.role.index\";s:4:\"icon\";N;s:5:\"order\";i:1;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:35:46\";s:10:\"updated_at\";s:19:\"2026-01-19 11:35:46\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:4;s:13:\"permission_id\";i:4;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Users\";s:5:\"route\";s:16:\"admin.user.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:36:43\";s:10:\"updated_at\";s:19:\"2026-01-19 11:36:43\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:4;s:13:\"permission_id\";i:4;s:9:\"parent_id\";i:2;s:4:\"name\";s:5:\"Users\";s:5:\"route\";s:16:\"admin.user.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:36:43\";s:10:\"updated_at\";s:19:\"2026-01-19 11:36:43\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:25;s:13:\"permission_id\";i:57;s:9:\"parent_id\";i:2;s:4:\"name\";s:6:\"Slider\";s:5:\"route\";s:18:\"admin.slider.index\";s:4:\"icon\";s:1:\"#\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-02 10:09:16\";s:10:\"updated_at\";s:19:\"2026-02-02 10:09:16\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:25;s:13:\"permission_id\";i:57;s:9:\"parent_id\";i:2;s:4:\"name\";s:6:\"Slider\";s:5:\"route\";s:18:\"admin.slider.index\";s:4:\"icon\";s:1:\"#\";s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-02 10:09:16\";s:10:\"updated_at\";s:19:\"2026-02-02 10:09:16\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:6;s:13:\"permission_id\";i:6;s:9:\"parent_id\";i:2;s:4:\"name\";s:14:\"Admin Settings\";s:5:\"route\";s:26:\"admin.admin-settings.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:50\";s:10:\"updated_at\";s:19:\"2026-01-19 11:37:50\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:6;s:13:\"permission_id\";i:6;s:9:\"parent_id\";i:2;s:4:\"name\";s:14:\"Admin Settings\";s:5:\"route\";s:26:\"admin.admin-settings.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:50\";s:10:\"updated_at\";s:19:\"2026-01-19 11:37:50\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:21;s:13:\"permission_id\";i:45;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"settings\";s:5:\"route\";s:20:\"admin.settings.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 12:07:06\";s:10:\"updated_at\";s:19:\"2026-01-20 12:07:06\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:21;s:13:\"permission_id\";i:45;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"settings\";s:5:\"route\";s:20:\"admin.settings.index\";s:4:\"icon\";N;s:5:\"order\";i:2;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 12:07:06\";s:10:\"updated_at\";s:19:\"2026-01-20 12:07:06\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:5;s:13:\"permission_id\";i:5;s:9:\"parent_id\";N;s:4:\"name\";s:10:\"Admin Menu\";s:5:\"route\";s:22:\"admin.admin-menu.index\";s:4:\"icon\";N;s:5:\"order\";i:3;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:27\";s:10:\"updated_at\";s:19:\"2026-01-20 08:51:54\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:5;s:13:\"permission_id\";i:5;s:9:\"parent_id\";N;s:4:\"name\";s:10:\"Admin Menu\";s:5:\"route\";s:22:\"admin.admin-menu.index\";s:4:\"icon\";N;s:5:\"order\";i:3;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:37:27\";s:10:\"updated_at\";s:19:\"2026-01-20 08:51:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:7:{i:0;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:13:\"permission_id\";i:7;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:23:\"admin.admin-menu.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:02\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:02\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:13:\"permission_id\";i:7;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:23:\"admin.admin-menu.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:02\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:02\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:13:\"permission_id\";i:8;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:21:\"admin.admin-menu.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:14\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:13:\"permission_id\";i:8;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:21:\"admin.admin-menu.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:14\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"permission_id\";i:9;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:24:\"admin.admin-menu.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:24\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:24\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"permission_id\";i:9;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:24:\"admin.admin-menu.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:24\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:24\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:13:\"permission_id\";i:10;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:12:\"view actions\";s:5:\"route\";s:29:\"admin.admin-menu-action.index\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:36\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:36\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:13:\"permission_id\";i:10;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:12:\"view actions\";s:5:\"route\";s:29:\"admin.admin-menu-action.index\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:36\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:13:\"permission_id\";i:11;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"create action\";s:5:\"route\";s:30:\"admin.admin-menu-action.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:45\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:45\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:13:\"permission_id\";i:11;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"create action\";s:5:\"route\";s:30:\"admin.admin-menu-action.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:39:45\";s:10:\"updated_at\";s:19:\"2026-01-19 11:39:45\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:6;s:13:\"permission_id\";i:12;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:11:\"edit action\";s:5:\"route\";s:28:\"admin.admin-menu-action.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:14\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:6;s:13:\"permission_id\";i:12;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:11:\"edit action\";s:5:\"route\";s:28:\"admin.admin-menu-action.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:14\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:14\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:13:\"permission_id\";i:13;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"delete action\";s:5:\"route\";s:31:\"admin.admin-menu-action.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:27\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:27\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:13:\"permission_id\";i:13;s:13:\"admin_menu_id\";i:5;s:4:\"name\";s:13:\"delete action\";s:5:\"route\";s:31:\"admin.admin-menu-action.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:40:27\";s:10:\"updated_at\";s:19:\"2026-01-19 11:40:27\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:9;s:13:\"permission_id\";i:21;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"Products\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:47:59\";s:10:\"updated_at\";s:19:\"2026-01-20 09:55:33\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:9;s:13:\"permission_id\";i:21;s:9:\"parent_id\";N;s:4:\"name\";s:8:\"Products\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:47:59\";s:10:\"updated_at\";s:19:\"2026-01-20 09:55:33\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:8:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:10;s:13:\"permission_id\";i:22;s:9:\"parent_id\";i:9;s:4:\"name\";s:8:\"Category\";s:5:\"route\";s:20:\"admin.category.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:49:56\";s:10:\"updated_at\";s:19:\"2026-01-20 09:49:56\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:10;s:13:\"permission_id\";i:22;s:9:\"parent_id\";i:9;s:4:\"name\";s:8:\"Category\";s:5:\"route\";s:20:\"admin.category.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:49:56\";s:10:\"updated_at\";s:19:\"2026-01-20 09:49:56\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:11;s:13:\"permission_id\";i:26;s:9:\"parent_id\";i:9;s:4:\"name\";s:14:\"Product Manage\";s:5:\"route\";s:19:\"admin.product.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:56:07\";s:10:\"updated_at\";s:19:\"2026-01-20 09:56:07\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:11;s:13:\"permission_id\";i:26;s:9:\"parent_id\";i:9;s:4:\"name\";s:14:\"Product Manage\";s:5:\"route\";s:19:\"admin.product.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:56:07\";s:10:\"updated_at\";s:19:\"2026-01-20 09:56:07\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:12;s:13:\"permission_id\";i:27;s:9:\"parent_id\";i:9;s:4:\"name\";s:3:\"UOM\";s:5:\"route\";s:15:\"admin.uom.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:00\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:00\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:12;s:13:\"permission_id\";i:27;s:9:\"parent_id\";i:9;s:4:\"name\";s:3:\"UOM\";s:5:\"route\";s:15:\"admin.uom.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:00\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:00\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:13;s:13:\"permission_id\";i:28;s:9:\"parent_id\";i:9;s:4:\"name\";s:5:\"Brand\";s:5:\"route\";s:17:\"admin.brand.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:36\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:36\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:13;s:13:\"permission_id\";i:28;s:9:\"parent_id\";i:9;s:4:\"name\";s:5:\"Brand\";s:5:\"route\";s:17:\"admin.brand.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:04:36\";s:10:\"updated_at\";s:19:\"2026-01-20 10:04:36\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:15;s:13:\"permission_id\";i:32;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Vendor\";s:5:\"route\";s:18:\"admin.vendor.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:12:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:12:04\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:15;s:13:\"permission_id\";i:32;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Vendor\";s:5:\"route\";s:18:\"admin.vendor.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:12:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:12:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:16;s:13:\"permission_id\";i:34;s:9:\"parent_id\";i:9;s:4:\"name\";s:9:\"Attribute\";s:5:\"route\";s:21:\"admin.attribute.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:19:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:19:04\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:16;s:13:\"permission_id\";i:34;s:9:\"parent_id\";i:9;s:4:\"name\";s:9:\"Attribute\";s:5:\"route\";s:21:\"admin.attribute.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:19:04\";s:10:\"updated_at\";s:19:\"2026-01-20 10:19:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:17;s:13:\"permission_id\";i:36;s:9:\"parent_id\";i:9;s:4:\"name\";s:11:\"publication\";s:5:\"route\";s:23:\"admin.publication.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:22:54\";s:10:\"updated_at\";s:19:\"2026-01-20 10:22:54\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:17;s:13:\"permission_id\";i:36;s:9:\"parent_id\";i:9;s:4:\"name\";s:11:\"publication\";s:5:\"route\";s:23:\"admin.publication.index\";s:4:\"icon\";N;s:5:\"order\";i:4;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 10:22:54\";s:10:\"updated_at\";s:19:\"2026-01-20 10:22:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:22;s:13:\"permission_id\";i:47;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Author\";s:5:\"route\";s:18:\"admin.author.index\";s:4:\"icon\";N;s:5:\"order\";i:5;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-22 10:29:15\";s:10:\"updated_at\";s:19:\"2026-01-22 10:29:15\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:22;s:13:\"permission_id\";i:47;s:9:\"parent_id\";i:9;s:4:\"name\";s:6:\"Author\";s:5:\"route\";s:18:\"admin.author.index\";s:4:\"icon\";N;s:5:\"order\";i:5;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-01-22 10:29:15\";s:10:\"updated_at\";s:19:\"2026-01-22 10:29:15\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:13;s:13:\"permission_id\";i:23;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:20:\"admin.product.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:51:53\";s:10:\"updated_at\";s:19:\"2026-01-20 09:51:53\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:13;s:13:\"permission_id\";i:23;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"create\";s:5:\"route\";s:20:\"admin.product.create\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:51:53\";s:10:\"updated_at\";s:19:\"2026-01-20 09:51:53\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:14;s:13:\"permission_id\";i:24;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:18:\"admin.product.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:09\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:09\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:14;s:13:\"permission_id\";i:24;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:4:\"edit\";s:5:\"route\";s:18:\"admin.product.edit\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:09\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:09\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:26:\"App\\Models\\AdminMenuAction\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:18:\"admin_menu_actions\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:15;s:13:\"permission_id\";i:25;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:21:\"admin.product.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:34\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:34\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:15;s:13:\"permission_id\";i:25;s:13:\"admin_menu_id\";i:9;s:4:\"name\";s:6:\"delete\";s:5:\"route\";s:21:\"admin.product.destroy\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2026-01-20 09:52:34\";s:10:\"updated_at\";s:19:\"2026-01-20 09:52:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:6:\"status\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"permission_id\";i:1;s:13:\"admin_menu_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:23;s:13:\"permission_id\";i:55;s:9:\"parent_id\";N;s:4:\"name\";s:17:\"Orders Management\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:22:32\";s:10:\"updated_at\";s:19:\"2026-02-01 04:24:38\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:23;s:13:\"permission_id\";i:55;s:9:\"parent_id\";N;s:4:\"name\";s:17:\"Orders Management\";s:5:\"route\";N;s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:22:32\";s:10:\"updated_at\";s:19:\"2026-02-01 04:24:38\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:20:\"App\\Models\\AdminMenu\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"admin_menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:24;s:13:\"permission_id\";i:56;s:9:\"parent_id\";i:23;s:4:\"name\";s:10:\"Order List\";s:5:\"route\";s:18:\"admin.orders.index\";s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:25:06\";s:10:\"updated_at\";s:19:\"2026-02-01 04:28:50\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:24;s:13:\"permission_id\";i:56;s:9:\"parent_id\";i:23;s:4:\"name\";s:10:\"Order List\";s:5:\"route\";s:18:\"admin.orders.index\";s:4:\"icon\";N;s:5:\"order\";i:6;s:6:\"status\";i:1;s:12:\"is_deletable\";i:1;s:10:\"created_at\";s:19:\"2026-02-01 04:25:06\";s:10:\"updated_at\";s:19:\"2026-02-01 04:28:50\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:6:\"status\";s:7:\"boolean\";s:12:\"is_deletable\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"actions\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:13:\"permission_id\";i:1;s:9:\"parent_id\";i:2;s:4:\"name\";i:3;s:5:\"route\";i:4;s:4:\"icon\";i:5;s:5:\"order\";i:6;s:6:\"status\";i:7;s:12:\"is_deletable\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1771917500);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('books_books_cache_admin_setting', 'O:23:\"App\\Models\\AdminSetting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"admin_settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:15:{s:2:\"id\";i:1;s:4:\"logo\";s:79:\"storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp\";s:10:\"small_logo\";s:79:\"storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp\";s:7:\"favicon\";s:79:\"storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp\";s:5:\"title\";s:5:\"Books\";s:11:\"footer_text\";s:9:\"sdfsdfsdf\";s:13:\"primary_color\";s:7:\"#e80c9b\";s:15:\"secondary_color\";s:7:\"#18ba64\";s:8:\"facebook\";s:4:\"sdfs\";s:7:\"twitter\";s:4:\"fsdf\";s:8:\"linkedin\";s:5:\"sdfsd\";s:8:\"whatsapp\";s:5:\"dfsdf\";s:6:\"google\";N;s:10:\"created_at\";s:19:\"2026-01-19 11:04:11\";s:10:\"updated_at\";s:19:\"2026-01-19 11:04:11\";}s:11:\"\0*\0original\";a:15:{s:2:\"id\";i:1;s:4:\"logo\";s:79:\"storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp\";s:10:\"small_logo\";s:79:\"storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp\";s:7:\"favicon\";s:79:\"storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp\";s:5:\"title\";s:5:\"Books\";s:11:\"footer_text\";s:9:\"sdfsdfsdf\";s:13:\"primary_color\";s:7:\"#e80c9b\";s:15:\"secondary_color\";s:7:\"#18ba64\";s:8:\"facebook\";s:4:\"sdfs\";s:7:\"twitter\";s:4:\"fsdf\";s:8:\"linkedin\";s:5:\"sdfsd\";s:8:\"whatsapp\";s:5:\"dfsdf\";s:6:\"google\";N;s:10:\"created_at\";s:19:\"2026-01-19 11:04:11\";s:10:\"updated_at\";s:19:\"2026-01-19 11:04:11\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:12:{i:0;s:4:\"logo\";i:1;s:10:\"small_logo\";i:2;s:7:\"favicon\";i:3;s:5:\"title\";i:4;s:11:\"footer_text\";i:5;s:13:\"primary_color\";i:6;s:15:\"secondary_color\";i:7;s:8:\"facebook\";i:8;s:7:\"twitter\";i:9;s:8:\"linkedin\";i:10;s:8:\"whatsapp\";i:11;s:6:\"google\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1771917500),
('books_books_cache_setting', 'O:18:\"App\\Models\\Setting\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:42:{s:2:\"id\";i:1;s:8:\"app_name\";s:15:\"Books and Books\";s:5:\"title\";s:15:\"Books and Books\";s:13:\"primary_phone\";s:11:\"01575020231\";s:15:\"secondary_phone\";s:11:\"01921588567\";s:13:\"primary_email\";s:23:\"booksandbooks@gmail.com\";s:15:\"secondary_email\";s:23:\"booksandbooks@gmail.com\";s:11:\"office_time\";N;s:7:\"address\";s:22:\"Aftabnager, Dhaka-1212\";s:11:\"description\";N;s:10:\"banner_one\";s:73:\"storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp\";s:15:\"banner_one_link\";N;s:17:\"banner_one_status\";i:1;s:10:\"banner_two\";N;s:15:\"banner_two_link\";N;s:17:\"banner_two_status\";i:1;s:15:\"page_heading_bg\";s:73:\"storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp\";s:10:\"meta_title\";N;s:12:\"meta_keyword\";N;s:16:\"meta_description\";N;s:10:\"meta_image\";s:73:\"storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp\";s:10:\"google_map\";N;s:7:\"favicon\";s:73:\"storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp\";s:4:\"logo\";s:73:\"storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp\";s:11:\"footer_logo\";N;s:11:\"placeholder\";s:73:\"storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp\";s:13:\"facebook_page\";N;s:14:\"facebook_group\";N;s:7:\"youtube\";N;s:7:\"twitter\";N;s:8:\"linkedin\";N;s:6:\"google\";N;s:8:\"whatsapp\";N;s:9:\"instagram\";N;s:9:\"pinterest\";N;s:11:\"sms_api_url\";N;s:11:\"sms_api_key\";N;s:10:\"sms_api_id\";N;s:12:\"bkash_status\";i:1;s:12:\"nagad_status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:10:51\";s:10:\"updated_at\";s:19:\"2026-02-02 10:07:54\";}s:11:\"\0*\0original\";a:42:{s:2:\"id\";i:1;s:8:\"app_name\";s:15:\"Books and Books\";s:5:\"title\";s:15:\"Books and Books\";s:13:\"primary_phone\";s:11:\"01575020231\";s:15:\"secondary_phone\";s:11:\"01921588567\";s:13:\"primary_email\";s:23:\"booksandbooks@gmail.com\";s:15:\"secondary_email\";s:23:\"booksandbooks@gmail.com\";s:11:\"office_time\";N;s:7:\"address\";s:22:\"Aftabnager, Dhaka-1212\";s:11:\"description\";N;s:10:\"banner_one\";s:73:\"storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp\";s:15:\"banner_one_link\";N;s:17:\"banner_one_status\";i:1;s:10:\"banner_two\";N;s:15:\"banner_two_link\";N;s:17:\"banner_two_status\";i:1;s:15:\"page_heading_bg\";s:73:\"storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp\";s:10:\"meta_title\";N;s:12:\"meta_keyword\";N;s:16:\"meta_description\";N;s:10:\"meta_image\";s:73:\"storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp\";s:10:\"google_map\";N;s:7:\"favicon\";s:73:\"storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp\";s:4:\"logo\";s:73:\"storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp\";s:11:\"footer_logo\";N;s:11:\"placeholder\";s:73:\"storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp\";s:13:\"facebook_page\";N;s:14:\"facebook_group\";N;s:7:\"youtube\";N;s:7:\"twitter\";N;s:8:\"linkedin\";N;s:6:\"google\";N;s:8:\"whatsapp\";N;s:9:\"instagram\";N;s:9:\"pinterest\";N;s:11:\"sms_api_url\";N;s:11:\"sms_api_key\";N;s:10:\"sms_api_id\";N;s:12:\"bkash_status\";i:1;s:12:\"nagad_status\";i:1;s:10:\"created_at\";s:19:\"2026-01-19 11:10:51\";s:10:\"updated_at\";s:19:\"2026-02-02 10:07:54\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:39:{i:0;s:8:\"app_name\";i:1;s:5:\"title\";i:2;s:13:\"primary_phone\";i:3;s:15:\"secondary_phone\";i:4;s:13:\"primary_email\";i:5;s:15:\"secondary_email\";i:6;s:11:\"office_time\";i:7;s:7:\"address\";i:8;s:11:\"description\";i:9;s:10:\"banner_one\";i:10;s:15:\"banner_one_link\";i:11;s:17:\"banner_one_status\";i:12;s:10:\"banner_two\";i:13;s:15:\"banner_two_link\";i:14;s:17:\"banner_two_status\";i:15;s:15:\"page_heading_bg\";i:16;s:10:\"meta_title\";i:17;s:12:\"meta_keyword\";i:18;s:16:\"meta_description\";i:19;s:10:\"meta_image\";i:20;s:10:\"google_map\";i:21;s:7:\"favicon\";i:22;s:4:\"logo\";i:23;s:11:\"footer_logo\";i:24;s:11:\"placeholder\";i:25;s:13:\"facebook_page\";i:26;s:14:\"facebook_group\";i:27;s:7:\"youtube\";i:28;s:7:\"twitter\";i:29;s:8:\"linkedin\";i:30;s:6:\"google\";i:31;s:8:\"whatsapp\";i:32;s:9:\"instagram\";i:33;s:9:\"pinterest\";i:34;s:11:\"sms_api_url\";i:35;s:11:\"sms_api_key\";i:36;s:10:\"sms_api_id\";i:37;s:12:\"bkash_status\";i:38;s:12:\"nagad_status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1771917500),
('books_books_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:52:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"Dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:15:\"System Settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"Roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:5:\"Users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:22:\"admin.admin-menu.index\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:14:\"Admin Settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:23:\"admin.admin-menu.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:21:\"admin.admin-menu.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:24:\"admin.admin-menu.destroy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:29:\"admin.admin-menu-action.index\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:30:\"admin.admin-menu-action.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:28:\"admin.admin-menu-action.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:31:\"admin.admin-menu-action.destroy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"admin.role.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"admin.role.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"admin.role.destroy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:26:\"admin.role-permission.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:8:\"Products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:8:\"Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:20:\"admin.product.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:18:\"admin.product.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:21:\"admin.product.destroy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"Product Manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:3:\"UOM\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:5:\"Brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:16:\"admin.uom.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:18:\"admin.brand.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:6:\"Vendor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:19:\"admin.vendor.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:9:\"Attribute\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:22:\"admin.attribute.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:11:\"publication\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:24:\"admin.publication.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:18:\"admin.product.show\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:9:\"User Menu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:9:\"Main Menu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:17:\"admin.menu.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:21:\"admin.menu-item.index\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:8:\"settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:15:\"admin.menu.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:6:\"Author\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:19:\"admin.author.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:17:\"admin.author.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:20:\"admin.author.destroy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:17:\"admin.author.show\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:22:\"admin.publication.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:22:\"admin.publication.show\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:18:\"admin.menu.destroy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:17:\"Orders Management\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:18:\"admin.orders.index\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:6:\"Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:17:\"admin.slider.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:14:\"Software Admin\";s:1:\"c\";s:3:\"web\";}}}', 1770113393);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `position` varchar(255) DEFAULT 'header',
  `url` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `description`, `status`, `position`, `url`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'বই', 'amar-itihas', 'storage/category/2026-01-20-ML4RobJCoxQrhxcUTXiRgZC4TXdfkN8vNe14bkcA.webp', 'সকল আলোচনা', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-20 03:44:44', '2026-02-02 23:52:48'),
(2, 1, 'ইতিহাস', 'itihas', 'storage/category/2026-01-25-A5GUscpZWSmrLr0xXmWYQSegvXP9ZN2fhgMSSjAd.webp', 'সকল', 1, 'header', NULL, 1, 1, NULL, NULL, '2026-01-20 03:46:02', '2026-01-25 21:58:31'),
(3, 4, 'Water Heater', 'es-es-si', 'storage/category/2026-01-25-X7ut7OeRn9ZovzDhNdGSxUNwZ8inNzNx51OBw2Zt.webp', 'Water Heater', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-21 04:33:12', '2026-02-03 00:20:46'),
(4, NULL, 'ইলেক্ট্রনিক্স', 'ekademik', 'storage/category/2026-01-21-pLTcQNE1TC5RKHwntlvgDiX9wYN9vbisByj7KeVu.webp', 'ইলেক্ট্রনিক্স', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-21 05:50:48', '2026-02-02 23:53:41'),
(5, NULL, 'সুপার স্টোর', 'kartun-er-glp', 'storage/category/2026-01-20-HS8XmhC2g9rbCbXWO8fNyt5dKzaM370aar4KZM1M.webp', 'সকল', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-21 22:39:35', '2026-02-02 23:54:01'),
(6, 4, 'Mobile', 'eisessi', 'storage/category/2026-01-25-WCUZ8WW5OfIAtRyi4yvV0lSWSokmTxYrWCkSQAbj.webp', 'Mobile', 1, 'header_top', '#', 1, 1, NULL, NULL, '2026-01-21 23:44:00', '2026-02-03 00:21:02'),
(7, 4, 'Ceiling Fan', 'iunivarsiti-vrti', 'storage/category/2026-01-25-cVOMfDXxut0kWOLWSITIcGVcN7JiqdKBiWkXw512.webp', 'Ceiling Fan', 1, 'header_top', '#', 1, 1, NULL, NULL, '2026-01-21 23:44:48', '2026-02-03 00:21:22'),
(8, 5, 'কার্টুন এর ভাল গল্প', 'kartun-er-val-glp', 'storage/category/2026-01-25-eXypOGkciWmMflByx1hhc6P9uarA7XRZklaxAR7B.webp', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2026-01-25 05:24:59', '2026-01-25 05:24:59'),
(9, 5, 'আজব ঠাকুরের কথা', 'ajb-thakurer-ktha', 'storage/category/2026-01-25-o95VBf7carOoVlVnUd9J718AlcnCmldK2jKTuT1L.webp', 'সদফসদ', 1, NULL, NULL, 1, NULL, NULL, NULL, '2026-01-25 05:26:01', '2026-01-25 05:26:01'),
(10, 1, 'গেরিলা যুদ্ধ', 'gerila-zuddh', 'storage/category/2026-01-25-lSfUto37Rogh00r0HFPSi5rP3cBwwWbLVZ9YaCtO.webp', 'সদফসদ', 1, 'header', NULL, 1, 1, NULL, NULL, '2026-01-25 05:26:39', '2026-01-25 21:58:41'),
(11, NULL, 'ঘরে বসে আয় করুন', 'ghre-bse-ay-krun', 'storage/category/2026-01-26-RsPtfwny0ZVUNEiVFvOK4JhryKDUjqm17WMcIBeC.webp', 'csdsdsasd', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:07:30', '2026-01-25 22:07:30'),
(12, NULL, 'রকমারি কুইজ', 'rkmari-kuij', 'storage/category/2026-01-26-cgw8o9oGv4zJvYYgY5OFEC1WLfVgYmAhOYGaBn8o.webp', 'রকমারি কুইজ', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:08:06', '2026-01-25 22:08:06'),
(13, NULL, 'রকমারি কুইজ', 'rkmari-kuij-1', 'storage/category/2026-01-26-Q8K7EgW5ik9eGB1EP7NeXUDhjfZncAbfJ9mn7E7L.webp', 'রকমারি কুইজ', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:08:07', '2026-01-25 22:08:07'),
(14, NULL, 'রকমারি উদ্যোক্তা', 'rkmari-udzokta', 'storage/category/2026-01-26-8uiOFhGGQoMb5pPKdE3mmljXPX4T7OTlhPx5TUaQ.webp', 'রকমারি উদ্যোক্তা', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:08:49', '2026-01-25 22:08:49'),
(15, NULL, 'অর্ডার ট্র্যাক করুন', 'ordar-trzak-krun', 'storage/category/2026-01-26-oNZHh0hRfmJoBHZdOK6Kx9effoeTonOmdWV3T6dP.webp', 'অর্ডার ট্র্যাক করুন', 1, 'header_top', 'order/trucking/system', 1, 1, NULL, NULL, '2026-01-25 22:09:26', '2026-01-26 00:03:21'),
(16, NULL, 'বই ডোনেশন', 'bi-donesn', 'storage/category/2026-01-26-j7LgSvY4BsKOJtIk5ZSN35XZVGIgsVOzatOfms7l.webp', 'বই ডোনেশন', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:09:49', '2026-01-25 22:09:49'),
(17, NULL, 'লেখক', 'kartun-glper-byer-skl-bi', 'storage/category/2026-01-26-DnYnRjci4O9zupNxTqAeCNux2YfuGoXNqXMOpNiV.webp', 'লেখক', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:11:01', '2026-02-02 23:57:57'),
(18, NULL, 'বিষয়', 'islamik-glper-byer-skl-bi', 'storage/category/2026-01-26-mpfI28njiOcwM9MBKsoJqoTPuag0ZXM4tvDpratp.webp', 'বিষয়', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:11:32', '2026-02-02 23:58:25'),
(19, NULL, 'প্রকাশনী', 'gariyal', 'storage/category/2026-01-26-hfA942qSdI82Nz67CmPMuet3ZVzkUQojPlgbbYB9.webp', 'প্রকাশনী', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:11:52', '2026-02-02 23:59:07'),
(20, NULL, 'বইমেলা ২০২৬', 'rbeendr-sngoit', 'storage/category/2026-01-26-28I4Gn1K6mggXKdSitynMnIv6TJoNLaBAac7vkf5.webp', 'বইমেলা ২০২৬', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:12:11', '2026-02-02 23:59:42'),
(21, NULL, 'একাডেমিক বই', 'njrul-sngoit-skl-bi', 'storage/category/2026-01-26-fluCxJbsXDBqPGyx2F8hUBlP8TpM7sU4uAR2fQfv.webp', 'একাডেমিক বই', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:12:27', '2026-02-03 00:00:04'),
(22, NULL, 'ই-বুক', 'stzer-sndhane', 'storage/category/2026-01-26-Q7xC5PAbZ3Q169wYRMlfIL8HFPzDj4Krt3jW7I8U.webp', 'ই-বুক', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:12:42', '2026-02-03 00:00:40'),
(23, 18, 'আরও অনেক মেনু এখানে হবে', 'aroo-onek-menu-ekhane-hbe', 'storage/category/2026-01-26-bxCWFMr7kAjZAzLF8GVivWVL5m49ilxHVsbLKevm.webp', 'আরও অনেক মেনু এখানে হবে', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:13:48', '2026-01-25 22:13:48'),
(24, 21, 'সাব মেনু যোগ করুন', 'sab-menu-zog-krun', 'storage/category/2026-01-26-baz8XrBGVg4B2xNoP3avsUTGU3YkTOc7FyuhlRGF.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:15:48', '2026-01-25 22:15:48'),
(25, 18, 'সাব মেনু যোগ করুন', 'sab-menu-zog-krun-1', 'storage/category/2026-01-26-t3ACypNQ5OCP9T3eETfjrV7JOqddhLED07XYMTFm.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:16:26', '2026-01-25 22:16:26'),
(27, 18, 'সাব মেনু যোগ করুন1', 'sab-menu-zog-krun1', 'storage/category/2026-01-26-nID85WsUZ8j0D0RsvJ1VeNfC9rrQIVRVeCmpRk90.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:17:23', '2026-01-25 22:17:23'),
(28, 18, 'সাব মেনু যোগ করুন2', 'sab-menu-zog-krun2', 'storage/category/2026-01-26-rE7qReiLCzlWeiOecp1AywpbMDP1IKWnpYNqlKK2.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:17:44', '2026-01-25 22:17:44'),
(29, 19, 'গাড়িয়াল1', 'gariyal1', 'storage/category/2026-01-26-i2sFKNE9uR91zOBUd2dC83DFtA3MFQDtlpZ8JGQJ.webp', 'গাড়িয়াল', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 23:27:36', '2026-01-25 23:27:36'),
(30, NULL, 'হোম', 'hom', NULL, 'Description', 1, 'homepage', '#', 1, NULL, NULL, NULL, '2026-02-01 05:18:55', '2026-02-01 05:18:55'),
(31, 30, 'ট্রেন্ডিং বইসমূহ', 'trending-bismuuh', 'storage/category/2026-02-03-dRrme3NquWtWBYLKCZ2p2uxujpqjFEKeCtYgiFvl.webp', 'ট্রেন্ডিং বইসমূহ', 1, 'header_top', '#', 1, 1, NULL, NULL, '2026-02-01 05:23:37', '2026-02-02 23:41:13'),
(32, 30, 'নতুন প্রকাশিত বই', 'ntun-prkasit-bi', 'storage/category/2026-02-03-u1kg7wzdZRQPwIbg9k40xCK98f5D0ihkY4rR82fq.webp', 'ASDAS', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:24:19', '2026-02-02 23:50:42'),
(33, 30, 'সিয়ান যুগপূর্তি অফার', 'sizan-zugpuurti-ofar', 'storage/category/2026-02-01-5EvBzyvKJZH9Z3mHN3XwXlO4oOlD8Lk0vykyTorf.webp', 'SADASDA', 1, 'header_top', '#', 1, NULL, NULL, NULL, '2026-02-01 05:24:55', '2026-02-01 05:24:55'),
(34, 30, 'রবিউল আউয়াল সীরাত গ্রন্থমালা', 'rbiul-auzal-seerat-grnthmala', 'storage/category/2026-02-03-WOtcA7CyLuantF0vsLa4bM1XEc4UXrTcV4WKDfqw.webp', 'ASDASD', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:25:29', '2026-02-02 23:50:53'),
(35, 30, 'জনপ্রিয় লেখক', 'jnpriy-lekhk', 'storage/category/2026-02-03-b3nMkOovpU6tbgNnfGC5Ql900iHPyU4E4XcJtSuB.webp', 'SFSF', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:26:02', '2026-02-02 23:50:02'),
(36, 30, 'আতর ও সুগন্ধি পণ্য', 'atr-oo-sugndhi-pnz', 'storage/category/2026-02-03-jG8H9RfCYNUO7desKWtSPJB794NavB47rk2hufoY.webp', 'ADASD', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:26:54', '2026-02-02 23:49:34'),
(37, 30, 'অন্যান্য পণ্য', 'onzanz-pnz', 'storage/category/2026-02-03-nnITyvQUF7GBrK3JHlWkTafHrYDc7nvp6aFmQXAn.webp', 'ASDASDA', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:27:25', '2026-02-02 23:44:22'),
(38, 30, 'ব্র্যান্ডসমূহ', 'brzandsmuuh', 'storage/category/2026-02-03-Ya6z6MBkg6vjzkSnM4kZM9Ok5q2851h154J70y5w.webp', 'ব্র্যান্ডসমূহ', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:27:58', '2026-02-02 23:49:07'),
(39, 30, 'এক্টুখানি  সুন্নাহ', 'ektukhani-sunnah', 'storage/category/2026-02-02-cAtgmCdwJumqRQ1xZ6hotIpXWS8zUmiJApkbUlRl.webp', 'এক্টুখানি  সুন্নাহ', 1, 'homepage_banner_category', '#', 1, 1, NULL, NULL, '2026-02-01 22:30:06', '2026-02-01 22:53:10'),
(40, 30, 'মানানসই পোশাক', 'manansi-posak', 'storage/category/2026-02-02-Bf5Np1eSTjDcQHKre3i7ckuku2nDI3I4LcPhR9qN.webp', 'মানানসই পোশাক', 1, 'homepage_banner_category', '#', 1, 1, NULL, NULL, '2026-02-01 22:34:07', '2026-02-01 22:53:22'),
(41, 30, 'সুঘ্রাণময় থাকুক চারপাশ', 'sughranmy-thakuk-carpas', 'storage/category/2026-02-02-o4SMe3WZ5HDcbwOsfT67mXLyEQle0nbc5lGZeCyH.webp', 'সুঘ্রাণময় থাকুক চারপাশ', 1, 'homepage_banner_category', '#', 1, 1, NULL, NULL, '2026-02-01 22:35:38', '2026-02-01 22:53:36'),
(42, 30, 'মিজানুর রহমান আজহারি', 'mijanur-rhman-ajhari', 'storage/category/2026-02-02-tmLPonwx4q3ZOVpd2KaCJgybUfOu982ascQleyBh.webp', 'মিজানুর রহমান আজহারি', 1, 'homepage_writter_category', '#', 1, NULL, NULL, NULL, '2026-02-01 23:28:09', '2026-02-01 23:28:09'),
(43, 30, 'আরিফ আজাদ', 'arif-ajad', 'storage/category/2026-02-02-SELttpnM6YEmaxD4LyTK4ftA8OSZ3UsJe550prEO.webp', 'আরিফ আজাদ', 1, 'homepage_writter_category', '#', 1, NULL, NULL, NULL, '2026-02-01 23:29:14', '2026-02-01 23:29:14'),
(44, 30, 'মিজানুর রহমান আজহারি', 'mijanur-rhman-ajhari-1', 'storage/category/2026-02-02-UReJoIMjJ3OSbiWjlJA36T9mAaZfilaNkqaVRudg.webp', 'মিজানুর রহমান আজহারি', 1, 'homepage_writter_category', '#', 1, NULL, NULL, NULL, '2026-02-01 23:30:26', '2026-02-01 23:30:26'),
(45, 30, 'আতর', 'atr', 'storage/category/2026-02-02-AVpbSa9BUgCEoUwuhqceQIr0vU4PHfzZu7Wlw8Ul.webp', 'আতর', 1, 'homepage_others_category', '#', 1, NULL, NULL, NULL, '2026-02-02 00:16:58', '2026-02-02 00:16:58'),
(46, 30, 'টি-শার্ট', 'ti-sart', 'storage/category/2026-02-02-tzjGn7lu31W6SBrjvg69GuRi5FoPGPqfh4cen2NG.webp', 'টি-শার্ট', 1, 'homepage_others_category', '#', 1, 1, NULL, NULL, '2026-02-02 00:17:57', '2026-02-02 00:18:14'),
(47, 30, 'ব্র্যান্ডসমূহ', 'brzandsmuuh-1', 'storage/category/2026-02-02-QYNPg5a9Nd5eEJh9wWJVNJXY7f1MDueynCY1rlQv.webp', 'ব্র্যান্ডসমূহw', 1, 'homepage_brands_category', '#', 1, 1, NULL, NULL, '2026-02-02 00:29:27', '2026-02-02 23:46:36'),
(48, NULL, 'কিডস জোন', 'kids-jon', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:54:35', '2026-02-02 23:54:35'),
(49, NULL, 'প্রাতিষ্ঠানিক অর্ডার', 'pratishthanik-ordar', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:55:04', '2026-02-02 23:55:04'),
(50, NULL, 'বেস্টসেলার অ্যাওয়ার্ড, ২৫', 'bestselar-ozaoozard-25', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:55:28', '2026-02-02 23:55:28'),
(51, NULL, 'আজকের অফার !', 'ajker-ofar', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:56:03', '2026-02-02 23:56:03'),
(52, NULL, 'Just for you', 'just-for-you', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:56:55', '2026-02-02 23:56:55'),
(53, NULL, 'প্যারালাল TEXT', 'pzaralal-text', NULL, NULL, 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:01:35', '2026-02-03 00:01:35'),
(54, NULL, 'ভর্তি প্রস্তুতি', 'vrti-prstuti', NULL, NULL, 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:01:57', '2026-02-03 00:01:57'),
(55, NULL, 'ইসলামি বই', 'islami-bi', NULL, 'ইসলামি বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:02:15', '2026-02-03 00:02:15'),
(56, NULL, 'ইংরেজি ভাষার বই', 'ingreji-vashar-bi', NULL, 'ইংরেজি ভাষার বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:02:31', '2026-02-03 00:02:31'),
(57, NULL, 'পশ্চিমবঙ্গের বই', 'pscimbngoer-bi', NULL, 'পশ্চিমবঙ্গের বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:02:45', '2026-02-03 00:02:45'),
(58, NULL, 'অতিরিক্ত ছাড়ের বই', 'otirikt-charer-bi', NULL, 'অতিরিক্ত ছাড়ের বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:03:04', '2026-02-03 00:03:04');

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
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('Category Product','Trending Product','New Product','Featured Category','Category Carousel','Popular Writter','Banner','Brand') NOT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_section_categories`
--

CREATE TABLE `home_section_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_section_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL DEFAULT 'footer',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text DEFAULT NULL,
  `category_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `position`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`, `url`, `category_id`) VALUES
(1, 'ঘরে বসে আয় করুন', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-20 05:19:24', '2026-01-21 02:30:12', '#', 1),
(2, 'রকমারি কুইজ', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 00:52:21', '2026-01-21 02:28:49', '#', 1),
(3, 'রকমারি উদ্যোক্তা', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 00:53:29', '2026-01-21 02:29:44', '#', 1),
(4, 'গল্পের বই', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 00:54:37', '2026-01-25 04:35:18', '#', 2),
(5, 'উপন্যাস', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 00:59:44', '2026-01-21 01:00:00', NULL, 1),
(6, 'কবিতা', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 01:01:13', '2026-01-21 01:01:13', NULL, 1),
(7, 'কার্টুন গল্পের বইয়ের সকল বই', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:01:51', '2026-01-21 01:01:51', NULL, 1),
(8, 'ইসলামিক গল্পের  বইয়ের সকল বই', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:08', '2026-01-21 01:02:08', NULL, 1),
(9, 'গাড়িয়াল', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:22', '2026-01-25 06:17:55', '#', 7),
(10, 'রবীন্দ্র সঙ্গিত   ', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:36', '2026-01-21 01:02:36', NULL, 1),
(11, 'নজ্রুল সঙ্গিত  সকল বই ', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:02:51', '2026-01-21 01:02:51', NULL, 1),
(12, 'সত্যের সন্ধানে', 'mega_menu', 1, 1, 1, NULL, NULL, '2026-01-21 01:03:10', '2026-01-21 01:03:10', NULL, 1),
(13, 'একাডেমিক বই', 'header', 1, 1, 1, NULL, NULL, '2026-01-21 01:03:37', '2026-01-21 23:45:52', '#', 4),
(14, 'আমার সময় ', 'footer', 1, 1, 1, NULL, NULL, '2026-01-21 01:07:17', '2026-01-21 01:07:17', NULL, 1),
(15, 'চিরকুট ', 'footer', 1, 1, 1, NULL, NULL, '2026-01-21 01:07:29', '2026-01-21 01:07:29', NULL, 1),
(16, 'হৃদয়য়ের  গহিনে', 'footer', 1, 1, 1, NULL, NULL, '2026-01-21 01:07:42', '2026-01-21 01:07:42', NULL, 1),
(17, 'আমার সপথ', 'footer_col2', 1, 1, 1, NULL, NULL, '2026-01-21 01:08:07', '2026-01-21 01:08:07', NULL, 1),
(18, 'আলোড়ন  ', 'footer_col2', 1, 1, 1, NULL, NULL, '2026-01-21 01:08:23', '2026-01-21 01:08:23', NULL, 1),
(19, 'বিড়ম্বনা', 'footer_col2', 1, 1, 1, NULL, NULL, '2026-01-21 01:08:40', '2026-01-21 01:08:40', NULL, 1),
(20, 'অর্ডার ট্র্যাক করুন', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 02:27:20', '2026-01-21 02:27:20', '#', 1),
(21, 'বই ডোনেশন', 'header_top', 1, 1, 1, NULL, NULL, '2026-01-21 02:30:46', '2026-01-21 02:30:46', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('external','internal') NOT NULL,
  `link` text NOT NULL,
  `serial` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `menu_id`, `parent_id`, `type`, `link`, `serial`, `created_at`, `updated_at`) VALUES
(3, 'আরও অনেক মেনু এখানে হবে', 8, NULL, 'internal', 'adadd', 1, '2026-01-21 01:04:22', '2026-01-21 01:04:22'),
(5, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sada', 2, '2026-01-21 01:04:54', '2026-01-21 01:04:54'),
(6, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sds', 3, '2026-01-21 01:05:14', '2026-01-21 01:05:14'),
(7, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sda', 4, '2026-01-21 01:05:26', '2026-01-21 01:05:26'),
(8, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'asda', 5, '2026-01-21 01:05:37', '2026-01-21 01:05:37'),
(9, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'asda', 6, '2026-01-21 01:05:39', '2026-01-21 01:05:39'),
(11, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'dasdsa', 8, '2026-01-21 01:05:52', '2026-01-21 01:05:52'),
(12, 'সাব মেনু  যোগ করুন', 8, NULL, 'internal', 'sa', 9, '2026-01-21 01:06:17', '2026-01-21 01:06:17'),
(13, 'সাব মেনু  যোগ করুন', 11, NULL, 'internal', '44', 1, '2026-01-21 01:53:45', '2026-01-21 01:53:45');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_07_083259_create_permission_tables', 1),
(5, '2025_05_07_083431_create_admin_menus_table', 1),
(6, '2025_05_07_083444_create_admin_menu_actions_table', 1),
(7, '2025_05_07_084137_create_admin_settings_table', 1),
(8, '2025_05_07_084409_create_settings_table', 1),
(9, '2025_08_19_172447_create_categories_table', 1),
(10, '2025_08_21_172430_create_uoms_table', 1),
(11, '2025_08_22_152908_create_stores_table', 1),
(12, '2025_08_22_160106_create_vendors_table', 1),
(13, '2025_08_23_114403_create_attributes_table', 1),
(14, '2025_08_23_114500_create_attribute_values_table', 1),
(15, '2025_08_23_122158_create_brands_table', 1),
(16, '2025_08_23_141243_create_authors_table', 1),
(17, '2025_08_23_151243_create_publications_table', 1),
(18, '2025_08_23_171640_create_products_table', 1),
(19, '2025_08_23_171642_create_product_categories_table', 1),
(20, '2025_08_23_171740_create_product_vendors_table', 1),
(21, '2025_08_23_171750_create_product_authors_table', 1),
(22, '2025_08_23_171840_create_product_tags_table', 1),
(23, '2025_08_23_172142_create_product_images_table', 1),
(24, '2025_08_23_172227_create_product_variants_table', 1),
(25, '2025_08_23_172246_create_product_variant_values_table', 1),
(26, '2025_09_02_162530_create_purchase_orders_table', 1),
(27, '2025_09_02_172432_create_purchase_order_items_table', 1),
(28, '2025_09_02_173851_create_purchase_receipts_table', 1),
(29, '2025_09_02_173857_create_purchase_receipt_items_table', 1),
(30, '2025_09_02_174309_create_stocks_table', 1),
(31, '2025_09_02_174319_create_stock_movements_table', 1),
(32, '2025_09_07_094949_create_sliders_table', 1),
(33, '2025_09_07_115753_create_home_sections_table', 1),
(34, '2025_09_10_045646_create_home_section_categories_table', 1),
(35, '2025_10_16_010234_create_menus_table', 2),
(36, '2025_10_16_010239_create_menu_items_table', 2),
(37, '2026_01_27_111709_create_wishlists_table', 3),
(40, '2026_01_28_060922_create_orders_table', 4),
(41, '2026_01_28_060938_create_order_items_table', 4),
(42, '2026_02_01_061140_create_reviews_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `subtotal`, `discount`, `tax`, `total`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 'ORD-1769594476', 176.00, 0.00, 0.00, 176.00, '', 'pending', '2026-01-28 04:01:16', '2026-01-28 04:01:16'),
(3, 3, 'ORD-1769594614', 260.00, 26.00, 11.70, 245.70, 'cod', 'cancelled', '2026-01-28 04:03:34', '2026-01-31 23:52:45'),
(4, 3, 'ORD-1769595857', 348.00, 34.80, 15.66, 328.86, 'cod', 'confirmed', '2026-01-28 04:24:17', '2026-01-31 23:18:11'),
(5, 3, 'ORD-1769601837', 263.00, 26.30, 11.84, 248.54, 'bkash', 'delivered', '2026-01-28 06:03:57', '2026-01-31 22:49:31'),
(6, 4, 'ORD-1769602631', 351.00, 35.10, 17.55, 333.45, 'rocket', 'shipped', '2026-01-28 06:17:11', '2026-01-31 22:49:24'),
(7, 4, 'ORD-1769658813', 55.00, 5.50, 2.75, 52.25, 'cod', 'processing', '2026-01-28 21:53:33', '2026-01-31 23:21:49'),
(8, 4, 'ORD-1769663406', 55.00, 5.50, 2.75, 52.25, 'cod', 'cancelled', '2026-01-28 23:10:06', '2026-01-31 23:09:53'),
(9, 3, 'ORD-1769925873', 351.00, 35.10, 17.55, 333.45, 'cod', 'confirmed', '2026-02-01 00:04:33', '2026-02-01 00:05:08'),
(10, 3, 'ORD-1769933462', 521.00, 52.10, 26.05, 494.95, 'cod', 'pending', '2026-02-01 02:11:02', '2026-02-01 02:11:02'),
(11, 3, 'ORD-1769933739', 528.00, 52.80, 26.40, 501.60, 'cod', 'pending', '2026-02-01 02:15:39', '2026-02-01 02:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_variant_id`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 5, NULL, 1, 88.00, 88.00, '2026-01-28 04:01:17', '2026-01-28 04:01:17'),
(2, 2, 10, NULL, 1, 88.00, 88.00, '2026-01-28 04:01:17', '2026-01-28 04:01:17'),
(3, 3, 10, NULL, 1, 88.00, 88.00, '2026-01-28 04:03:34', '2026-01-28 04:03:34'),
(4, 3, 11, NULL, 1, 87.00, 87.00, '2026-01-28 04:03:34', '2026-01-28 04:03:34'),
(5, 3, 12, NULL, 1, 85.00, 85.00, '2026-01-28 04:03:34', '2026-01-28 04:03:34'),
(6, 4, 5, NULL, 1, 88.00, 88.00, '2026-01-28 04:24:17', '2026-01-28 04:24:17'),
(7, 4, 10, NULL, 1, 88.00, 88.00, '2026-01-28 04:24:17', '2026-01-28 04:24:17'),
(8, 4, 11, NULL, 1, 87.00, 87.00, '2026-01-28 04:24:17', '2026-01-28 04:24:17'),
(9, 4, 12, NULL, 1, 85.00, 85.00, '2026-01-28 04:24:17', '2026-01-28 04:24:17'),
(10, 5, 5, NULL, 1, 88.00, 88.00, '2026-01-28 06:03:57', '2026-01-28 06:03:57'),
(11, 5, 10, NULL, 1, 88.00, 88.00, '2026-01-28 06:03:57', '2026-01-28 06:03:57'),
(12, 5, 11, NULL, 1, 87.00, 87.00, '2026-01-28 06:03:57', '2026-01-28 06:03:57'),
(13, 6, 10, NULL, 2, 88.00, 176.00, '2026-01-28 06:17:11', '2026-01-28 06:17:11'),
(14, 6, 5, NULL, 1, 88.00, 88.00, '2026-01-28 06:17:11', '2026-01-28 06:17:11'),
(15, 6, 11, NULL, 1, 87.00, 87.00, '2026-01-28 06:17:11', '2026-01-28 06:17:11'),
(16, 7, 7, NULL, 1, 55.00, 55.00, '2026-01-28 21:53:33', '2026-01-28 21:53:33'),
(17, 8, 7, 6, 1, 55.00, 55.00, '2026-01-28 23:10:06', '2026-01-28 23:10:06'),
(18, 9, 5, 5, 2, 88.00, 176.00, '2026-02-01 00:04:33', '2026-02-01 00:04:33'),
(19, 9, 10, 7, 1, 88.00, 88.00, '2026-02-01 00:04:33', '2026-02-01 00:04:33'),
(20, 9, 11, 8, 1, 87.00, 87.00, '2026-02-01 00:04:33', '2026-02-01 00:04:33'),
(21, 10, 5, 5, 1, 88.00, 88.00, '2026-02-01 02:11:02', '2026-02-01 02:11:02'),
(22, 10, 10, 7, 2, 88.00, 176.00, '2026-02-01 02:11:02', '2026-02-01 02:11:02'),
(23, 10, 11, 8, 1, 87.00, 87.00, '2026-02-01 02:11:02', '2026-02-01 02:11:02'),
(24, 10, 12, 9, 2, 85.00, 170.00, '2026-02-01 02:11:02', '2026-02-01 02:11:02'),
(25, 11, 5, NULL, 6, 88.00, 528.00, '2026-02-01 02:15:39', '2026-02-01 02:15:39');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'web', '2026-01-19 05:33:09', '2026-01-19 05:33:09'),
(2, 'System Settings', 'web', '2026-01-19 05:34:47', '2026-01-19 05:34:47'),
(3, 'Roles', 'web', '2026-01-19 05:35:46', '2026-01-19 05:35:46'),
(4, 'Users', 'web', '2026-01-19 05:36:43', '2026-01-19 05:36:43'),
(5, 'admin.admin-menu.index', 'web', '2026-01-19 05:37:27', '2026-01-20 02:51:53'),
(6, 'Admin Settings', 'web', '2026-01-19 05:37:50', '2026-01-19 05:37:50'),
(7, 'admin.admin-menu.create', 'web', '2026-01-19 05:39:02', '2026-01-19 05:39:02'),
(8, 'admin.admin-menu.edit', 'web', '2026-01-19 05:39:14', '2026-01-19 05:39:14'),
(9, 'admin.admin-menu.destroy', 'web', '2026-01-19 05:39:24', '2026-01-19 05:39:24'),
(10, 'admin.admin-menu-action.index', 'web', '2026-01-19 05:39:36', '2026-01-19 05:39:36'),
(11, 'admin.admin-menu-action.create', 'web', '2026-01-19 05:39:45', '2026-01-19 05:39:45'),
(12, 'admin.admin-menu-action.edit', 'web', '2026-01-19 05:40:14', '2026-01-19 05:40:14'),
(13, 'admin.admin-menu-action.destroy', 'web', '2026-01-19 05:40:26', '2026-01-19 05:40:26'),
(14, 'admin.role.create', 'web', '2026-01-19 23:59:11', '2026-01-19 23:59:11'),
(18, 'admin.role.edit', 'web', '2026-01-20 03:24:24', '2026-01-20 03:24:24'),
(19, 'admin.role.destroy', 'web', '2026-01-20 03:25:16', '2026-01-20 03:29:11'),
(20, 'admin.role-permission.edit', 'web', '2026-01-20 03:31:59', '2026-01-20 03:31:59'),
(21, 'Products', 'web', '2026-01-20 03:47:59', '2026-01-20 03:47:59'),
(22, 'Category', 'web', '2026-01-20 03:49:56', '2026-01-20 03:49:56'),
(23, 'admin.product.create', 'web', '2026-01-20 03:51:53', '2026-01-20 03:51:53'),
(24, 'admin.product.edit', 'web', '2026-01-20 03:52:09', '2026-01-20 03:52:09'),
(25, 'admin.product.destroy', 'web', '2026-01-20 03:52:34', '2026-01-20 03:52:34'),
(26, 'Product Manage', 'web', '2026-01-20 03:56:07', '2026-01-20 03:56:07'),
(27, 'UOM', 'web', '2026-01-20 04:04:00', '2026-01-20 04:04:00'),
(28, 'Brand', 'web', '2026-01-20 04:04:36', '2026-01-20 04:04:36'),
(29, 'admin.uom.create', 'web', '2026-01-20 04:06:48', '2026-01-20 04:06:48'),
(31, 'admin.brand.create', 'web', '2026-01-20 04:09:27', '2026-01-20 04:09:27'),
(32, 'Vendor', 'web', '2026-01-20 04:12:04', '2026-01-20 04:12:04'),
(33, 'admin.vendor.create', 'web', '2026-01-20 04:12:41', '2026-01-20 04:12:41'),
(34, 'Attribute', 'web', '2026-01-20 04:19:04', '2026-01-20 04:19:04'),
(35, 'admin.attribute.create', 'web', '2026-01-20 04:21:01', '2026-01-20 04:21:01'),
(36, 'publication', 'web', '2026-01-20 04:22:54', '2026-01-20 04:22:54'),
(37, 'admin.publication.create', 'web', '2026-01-20 04:23:43', '2026-01-20 04:23:43'),
(38, 'admin.product.show', 'web', '2026-01-20 04:59:33', '2026-01-20 04:59:33'),
(39, 'User Menu', 'web', '2026-01-20 05:21:16', '2026-01-20 05:21:16'),
(40, 'Main Menu', 'web', '2026-01-20 05:22:04', '2026-01-20 05:22:04'),
(41, 'admin.menu.create', 'web', '2026-01-20 05:23:01', '2026-01-20 05:23:01'),
(44, 'admin.menu-item.index', 'web', '2026-01-20 05:33:58', '2026-01-20 05:33:58'),
(45, 'settings', 'web', '2026-01-20 06:07:05', '2026-01-20 06:07:05'),
(46, 'admin.menu.edit', 'web', '2026-01-21 00:48:49', '2026-01-21 00:48:49'),
(47, 'Author', 'web', '2026-01-22 04:29:15', '2026-01-22 04:29:15'),
(48, 'admin.author.create', 'web', '2026-01-22 04:30:36', '2026-01-22 04:30:36'),
(49, 'admin.author.edit', 'web', '2026-01-22 04:30:52', '2026-01-22 04:30:52'),
(50, 'admin.author.destroy', 'web', '2026-01-22 04:31:06', '2026-01-22 04:31:06'),
(51, 'admin.author.show', 'web', '2026-01-22 04:31:22', '2026-01-22 04:31:22'),
(52, 'admin.publication.edit', 'web', '2026-01-22 04:33:21', '2026-01-22 04:33:21'),
(53, 'admin.publication.show', 'web', '2026-01-22 04:33:41', '2026-01-22 04:33:41'),
(54, 'admin.menu.destroy', 'web', '2026-01-28 23:15:50', '2026-01-28 23:15:50'),
(55, 'Orders Management', 'web', '2026-01-31 22:22:32', '2026-01-31 22:22:32'),
(56, 'admin.orders.index', 'web', '2026-01-31 22:25:06', '2026-01-31 22:28:50'),
(57, 'Slider', 'web', '2026-02-02 04:09:16', '2026-02-02 04:09:16'),
(58, 'admin.slider.edit', 'web', '2026-02-02 04:09:53', '2026-02-02 04:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `uom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_type` enum('book','other') NOT NULL DEFAULT 'book',
  `barcode` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `regular_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sale_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(10) NOT NULL DEFAULT 'amount',
  `discount_start_date` date DEFAULT NULL,
  `discount_end_date` date DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `custom_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `new_arrival` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Book1', 'book1', 1, 1, 1, NULL, 'book', 'asdsas', NULL, 'storage/media/product/2026-01-25-ohsvTRcZVvt6d3SOWJRqqL5gxdGsAfsTpogwuJoG.webp', '<p>dadadasda</p>', '<p>sdsdasd</p>', 234.00, 300.00, 320.00, 1.00, 'amount', '2026-01-20', '2026-02-21', 'SKUS', 'meta', 'cssdsfsf', 'storage/media/product/2026-01-20-FLxMajI5xjcg9zj2q2IBLQh6RqZUGujs5DiDmI6I.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-20 04:15:44', '2026-01-24 23:17:55'),
(2, 'Book2', 'book2', 1, 1, 1, NULL, 'book', 'sdasd', NULL, 'storage/media/product/2026-01-25-fQxUtYHO76XI21NVyXZ7weRAsPQpdbmXQwaJHczN.webp', '<p>dsdasda</p>', '<p>dasdas</p>', 11.00, 33.00, 31.00, 2.00, 'amount', '2026-01-20', '2026-02-26', 'ssds', 'sdsadad', 'sadasdasd', 'storage/media/product/2026-01-20-NPtdHB2jK5Qnb7ZQHRfq1tlCqh3GLhOoYfA8dHbZ.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-20 04:26:34', '2026-01-24 23:17:37'),
(3, 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'eknjre-ummahr-itihas-3-khnd-1', 4, 1, 1, 2, 'book', 'sdfsd', NULL, 'storage/media/product/2026-01-25-OeGX8HlaQ779JWdmB6KHD84OpPmkARBeql8VyfvA.webp', '<p>আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</p>', '<p>sdfsd</p>', 22.00, 33.00, 44.00, 1.00, 'amount', NULL, NULL, NULL, 'sdfsddf', 'sdfsd', 'storage/media/product/2026-01-25-OeGX8HlaQ779JWdmB6KHD84OpPmkARBeql8VyfvA.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-22 04:46:01', '2026-01-24 23:17:14'),
(5, 'Electric Ketle', 'electric-ketle', 3, 1, 1, 2, 'book', 'sds', NULL, 'storage/media/product/2026-02-03-EB2TqjB4St9q72M2f8GOo8FWAAkIM0PB7bmFM9sa.webp', '<p>Electric Ketle</p>', '<p>Electric Ketle</p>', 800.00, 1200.00, 1188.00, 1.00, 'percent', NULL, NULL, NULL, 'sdfsdf', 'dsfsdf', 'storage/media/product/2026-02-03-EB2TqjB4St9q72M2f8GOo8FWAAkIM0PB7bmFM9sa.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-22 06:36:18', '2026-02-03 00:25:05'),
(7, 'Smart Phone Model12222', 'smart-phone-model12222', 6, 1, 1, 1, 'book', 'sasa', NULL, 'storage/media/product/2026-02-03-AaEwp89prQkVMnUeryd9zWDClt1a0seH4xMJYlUL.webp', '<p><span style=\"color: rgb(108, 117, 125); font-family: Inter, sans-serif; background-color: rgb(248, 249, 250);\">Smart Phone Model12222</span></p>', '<p><span style=\"color: rgb(108, 117, 125); font-family: Inter, sans-serif; background-color: rgb(248, 249, 250);\">Smart Phone Model12222</span></p>', 13000.00, 20000.00, 13400.00, 33.00, 'percent', NULL, NULL, NULL, 'fsd', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-AaEwp89prQkVMnUeryd9zWDClt1a0seH4xMJYlUL.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:06:22', '2026-02-03 00:24:05'),
(10, 'শেষের কবিতা', 'sesher-kbita', 31, 1, 1, 2, 'book', 'wqsa', NULL, 'storage/media/product/2026-02-03-rb9Jdd1upUcXFKsCuruAHGJPitvu7OMJ15JZqU70.webp', 'লেখক:&nbsp;<strong data-start=\"161\" data-end=\"182\">রবীন্দ্রনাথ ঠাকুর</strong><br data-start=\"360\" data-end=\"363\">ভাষা: বাংলা<br data-start=\"374\" data-end=\"377\">সংকলন ও রচনা:&nbsp;<strong data-start=\"161\" data-end=\"182\">রবীন্দ্রনাথ ঠাকুর</strong>', '<h2 data-start=\"113\" data-end=\"130\">📘 বইয়ের নাম</h2>\r\n<p data-start=\"131\" data-end=\"146\"><strong data-start=\"131\" data-end=\"146\">শেষের কবিতা</strong></p>\r\n<h2 data-start=\"148\" data-end=\"160\">✍️ লেখক</h2>\r\n<p data-start=\"161\" data-end=\"182\"><strong data-start=\"161\" data-end=\"182\">রবীন্দ্রনাথ ঠাকুর</strong></p>\r\n<h2 data-start=\"184\" data-end=\"202\">🏷️ ক্যাটাগরি</h2>\r\n<p data-start=\"203\" data-end=\"246\">উপন্যাস / রোমান্টিক সাহিত্য / বাংলা ক্লাসিক</p>\r\n<h2 data-start=\"248\" data-end=\"260\">🌐 ভাষা</h2>\r\n<p data-start=\"261\" data-end=\"266\">বাংলা</p>\r\n<h2 data-start=\"268\" data-end=\"297\">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start=\"298\" data-end=\"500\"><strong data-start=\"298\" data-end=\"313\">শেষের কবিতা</strong> বাংলা সাহিত্যের অন্যতম জনপ্রিয় ও গভীর রোমান্টিক উপন্যাস। এই উপন্যাসে প্রেমকে দেখা হয়েছে নতুন দৃষ্টিভঙ্গিতে—যেখানে আবেগ, বুদ্ধিবৃত্তিক দ্বন্দ্ব, আত্মসম্মান ও স্বাধীন চিন্তার সমন্বয় রয়েছে।</p>\r\n<p data-start=\"502\" data-end=\"679\">গল্পের মূল চরিত্র <strong data-start=\"520\" data-end=\"532\">অমিত রায়</strong> ও <strong data-start=\"535\" data-end=\"545\">লাবণ্য</strong>—দুজনের কথোপকথন, মানসিক টানাপোড়েন এবং দর্শনভিত্তিক প্রেমই এই উপন্যাসের প্রাণ। এখানে প্রেম শুধু অনুভূতি নয়, বরং চিন্তা ও উপলব্ধির বিষয়।</p>\r\n<h2 data-start=\"681\" data-end=\"707\">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<ul data-start=\"708\" data-end=\"882\"><li data-start=\"708\" data-end=\"741\">\r\n<p data-start=\"710\" data-end=\"741\">প্রেম ও আত্মসম্মানের দ্বন্দ্ব</p>\r\n</li><li data-start=\"742\" data-end=\"782\">\r\n<p data-start=\"744\" data-end=\"782\">আধুনিক চিন্তাধারা ও ব্যক্তিস্বাধীনতা</p>\r\n</li><li data-start=\"783\" data-end=\"810\">\r\n<p data-start=\"785\" data-end=\"810\">আবেগ বনাম যুক্তির সংঘাত</p>\r\n</li><li data-start=\"811\" data-end=\"847\">\r\n<p data-start=\"813\" data-end=\"847\">নারীর আত্মমর্যাদা ও মানসিক শক্তি</p>\r\n</li><li data-start=\"848\" data-end=\"882\">\r\n<p data-start=\"850\" data-end=\"882\">দর্শনভিত্তিক রোমান্টিক সম্পর্ক</p>\r\n</li></ul>\r\n<h2 data-start=\"884\" data-end=\"906\">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start=\"907\" data-end=\"1099\"><li data-start=\"907\" data-end=\"965\">\r\n<p data-start=\"909\" data-end=\"965\">বাংলা সাহিত্যের <strong data-start=\"925\" data-end=\"952\">ক্লাসিক প্রেমের উপন্যাস</strong> পড়তে চাইলে</p>\r\n</li><li data-start=\"966\" data-end=\"1008\">\r\n<p data-start=\"968\" data-end=\"1008\">প্রেমকে গভীর ও বুদ্ধিবৃত্তিকভাবে বুঝতে</p>\r\n</li><li data-start=\"1009\" data-end=\"1055\">\r\n<p data-start=\"1011\" data-end=\"1055\">রবীন্দ্রনাথের চিন্তা ও ভাষাশৈলী উপভোগ করতে</p>\r\n</li><li data-start=\"1056\" data-end=\"1099\">\r\n<p data-start=\"1058\" data-end=\"1099\">বারবার পড়ার মতো একটি সাহিত্যকর্ম হিসেবে</p>\r\n</li></ul>\r\n<h2 data-start=\"1101\" data-end=\"1125\">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start=\"1126\" data-end=\"1243\"><li data-start=\"1126\" data-end=\"1148\">\r\n<p data-start=\"1128\" data-end=\"1148\">সাহিত্যপ্রেমী পাঠক</p>\r\n</li><li data-start=\"1149\" data-end=\"1184\">\r\n<p data-start=\"1151\" data-end=\"1184\">কলেজ–বিশ্ববিদ্যালয়ের শিক্ষার্থী</p>\r\n</li><li data-start=\"1185\" data-end=\"1208\">\r\n<p data-start=\"1187\" data-end=\"1208\">রবীন্দ্রনাথ অনুরাগী</p>\r\n</li><li data-start=\"1209\" data-end=\"1243\">\r\n<p data-start=\"1211\" data-end=\"1243\">ক্লাসিক বাংলা উপন্যাস সংগ্রাহক</p>\r\n</li></ul>\r\n<h2 data-start=\"1245\" data-end=\"1265\">🧠 লেখক পরিচিতি</h2>\r\n<p data-start=\"1266\" data-end=\"1435\"><strong data-start=\"1266\" data-end=\"1287\">রবীন্দ্রনাথ ঠাকুর</strong> (১৮৬১–১৯৪১) বাংলা সাহিত্যের সর্বশ্রেষ্ঠ সাহিত্যিকদের একজন এবং <strong data-start=\"1350\" data-end=\"1379\">নোবেল পুরস্কারপ্রাপ্ত কবি</strong>। তাঁর উপন্যাস, কবিতা ও প্রবন্ধ আজও সমানভাবে প্রাসঙ্গিক।</p>', 150.00, 160.00, 140.80, 12.00, 'percent', '2026-02-26', '2026-02-27', 'SHSEK', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড3', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-rb9Jdd1upUcXFKsCuruAHGJPitvu7OMJ15JZqU70.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:11:41', '2026-02-02 23:34:34'),
(11, 'অনুভূতির কাব্য', 'onuvuutir-kabz', 31, 1, 1, 2, 'book', 'BARKABB', NULL, 'storage/media/product/2026-02-03-8FjavixMHLPCAdGiq8fTy7q0qjCY3f4bLTPcV3Wy.webp', 'লেখক: হিল্লোল তালুকদার<br data-start=\"360\" data-end=\"363\">ভাষা: বাংলা<br data-start=\"374\" data-end=\"377\">সংকলন ও রচনা: প্রিয় বাংলা প্রকাশন', '<h2 data-start=\"157\" data-end=\"174\">📘 বইয়ের নাম</h2>\r\n<p data-start=\"175\" data-end=\"193\"><strong data-start=\"175\" data-end=\"193\">অনুভূতির কাব্য</strong></p>\r\n<h2 data-start=\"195\" data-end=\"213\">🏷️ ক্যাটাগরি</h2>\r\n<p data-start=\"214\" data-end=\"258\">কবিতা / আধুনিক বাংলা কাব্য / অনুভূতি ও প্রেম</p>\r\n<h2 data-start=\"260\" data-end=\"272\">🌐 ভাষা</h2>\r\n<p data-start=\"273\" data-end=\"278\">বাংলা</p>\r\n<h2 data-start=\"280\" data-end=\"309\">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start=\"310\" data-end=\"552\"><strong data-start=\"310\" data-end=\"328\">অনুভূতির কাব্য</strong> একটি আবেগপ্রবণ কবিতার সংকলন, যেখানে মানুষের অন্তর্গত অনুভূতি—ভালোবাসা, কষ্ট, অপেক্ষা, বিচ্ছেদ, নীরবতা ও জীবনের বাস্তবতা—কবিতার ছন্দে তুলে ধরা হয়েছে। প্রতিটি কবিতা পাঠকের হৃদয়ের গভীরে লুকিয়ে থাকা না বলা কথাগুলোকে স্পর্শ করে।</p>\r\n<p data-start=\"554\" data-end=\"692\">এই বইয়ের কবিতাগুলো সহজ ভাষায় লেখা, কিন্তু অনুভূতিতে গভীর। পাঠক নিজের জীবনের গল্পের সঙ্গে কবিতার পঙ্‌ক্তিগুলো মিলিয়ে নিতে পারবেন খুব সহজেই।</p>\r\n<h2 data-start=\"694\" data-end=\"720\">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<ul data-start=\"721\" data-end=\"871\"><li data-start=\"721\" data-end=\"750\">\r\n<p data-start=\"723\" data-end=\"750\">প্রেম ও ভালোবাসার অনুভূতি</p>\r\n</li><li data-start=\"751\" data-end=\"782\">\r\n<p data-start=\"753\" data-end=\"782\">না বলা কষ্ট ও নীরব যন্ত্রণা</p>\r\n</li><li data-start=\"783\" data-end=\"812\">\r\n<p data-start=\"785\" data-end=\"812\">স্মৃতি, অপেক্ষা ও বিচ্ছেদ</p>\r\n</li><li data-start=\"813\" data-end=\"839\">\r\n<p data-start=\"815\" data-end=\"839\">জীবনের বাস্তব অভিজ্ঞতা</p>\r\n</li><li data-start=\"840\" data-end=\"871\">\r\n<p data-start=\"842\" data-end=\"871\">হৃদয়ছোঁয়া ও ভাবনামূলক কবিতা</p>\r\n</li></ul>\r\n<h2 data-start=\"873\" data-end=\"895\">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start=\"896\" data-end=\"1066\"><li data-start=\"896\" data-end=\"933\">\r\n<p data-start=\"898\" data-end=\"933\">অনুভূতিপ্রবণ কবিতা পড়তে ভালোবাসলে</p>\r\n</li><li data-start=\"934\" data-end=\"973\">\r\n<p data-start=\"936\" data-end=\"973\">একাকিত্ব বা নীরব সময়ের সঙ্গী হিসেবে</p>\r\n</li><li data-start=\"974\" data-end=\"1013\">\r\n<p data-start=\"976\" data-end=\"1013\">সহজ কিন্তু গভীর অর্থবহ কবিতা খুঁজলে</p>\r\n</li><li data-start=\"1014\" data-end=\"1066\">\r\n<p data-start=\"1016\" data-end=\"1066\">উপহার দেওয়ার জন্য একটি সুন্দর কাব্যগ্রন্থ হিসেবে</p>\r\n</li></ul>\r\n<h2 data-start=\"1068\" data-end=\"1092\">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start=\"1093\" data-end=\"1201\"><li data-start=\"1093\" data-end=\"1114\">\r\n<p data-start=\"1095\" data-end=\"1114\">কবিতা প্রেমী পাঠক</p>\r\n</li><li data-start=\"1115\" data-end=\"1134\">\r\n<p data-start=\"1117\" data-end=\"1134\">তরুণ ও যুব সমাজ</p>\r\n</li><li data-start=\"1135\" data-end=\"1180\">\r\n<p data-start=\"1137\" data-end=\"1180\">যারা অনুভূতির লেখায় নিজেকে খুঁজে পেতে চান</p>\r\n</li><li data-start=\"1181\" data-end=\"1201\">\r\n<p data-start=\"1183\" data-end=\"1201\">সাহিত্য সংগ্রাহক</p></li></ul>', 130.00, 179.00, 119.93, 33.00, 'percent', '2026-01-16', '2026-02-20', 'ONUVTTIK', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড4', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-8FjavixMHLPCAdGiq8fTy7q0qjCY3f4bLTPcV3Wy.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:13:34', '2026-02-03 00:16:01'),
(12, 'একাত্তরের চিঠি', 'ekattrer-cithi', 31, 1, 1, 2, 'book', 'AKATCHTI', NULL, 'storage/media/product/2026-02-03-WSrTGyJMmzR3tLWgEctfyrrLJatgmAX3AgZmmu6b.webp', 'লেখক:&nbsp;<strong data-start=\"157\" data-end=\"175\">মুনতাসীর মামুন</strong><br data-start=\"360\" data-end=\"363\">ভাষা: বাংলা<br data-start=\"374\" data-end=\"377\">সংকলন ও রচনা:&nbsp;<strong data-start=\"157\" data-end=\"175\">মুনতাসীর মামুন</strong>', '<h2 data-start=\"105\" data-end=\"122\">📘 বইয়ের নাম</h2>\r\n<p data-start=\"123\" data-end=\"141\"><strong data-start=\"123\" data-end=\"141\">একাত্তরের চিঠি</strong></p>\r\n<h2 data-start=\"143\" data-end=\"156\">✍️ সংকলক</h2>\r\n<p data-start=\"157\" data-end=\"175\"><strong data-start=\"157\" data-end=\"175\">মুনতাসীর মামুন</strong></p>\r\n<h2 data-start=\"177\" data-end=\"195\">🏷️ ক্যাটাগরি</h2>\r\n<p data-start=\"196\" data-end=\"240\">মুক্তিযুদ্ধ / ইতিহাস / দলিলপত্র / চিঠি সংকলন</p>\r\n<h2 data-start=\"242\" data-end=\"254\">🌐 ভাষা</h2>\r\n<p data-start=\"255\" data-end=\"260\">বাংলা</p>\r\n<h2 data-start=\"262\" data-end=\"291\">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start=\"292\" data-end=\"488\"><strong data-start=\"292\" data-end=\"310\">একাত্তরের চিঠি</strong> হলো বাংলাদেশের মুক্তিযুদ্ধকালীন (১৯৭১) সময়ের বাস্তব ও হৃদয়স্পর্শী চিঠির সংকলন। যুদ্ধের ভয়াবহতা, আশা-নিরাশা, ভালোবাসা, দেশপ্রেম ও আত্মত্যাগ—সবকিছু উঠে এসেছে এই চিঠিগুলোর মাধ্যমে।</p>\r\n<p data-start=\"490\" data-end=\"512\">এই চিঠিগুলো লিখেছিলেন—</p>\r\n<ul data-start=\"513\" data-end=\"634\"><li data-start=\"513\" data-end=\"531\">\r\n<p data-start=\"515\" data-end=\"531\">মুক্তিযোদ্ধারা</p>\r\n</li><li data-start=\"532\" data-end=\"557\">\r\n<p data-start=\"534\" data-end=\"557\">শহীদ পরিবারের সদস্যরা</p>\r\n</li><li data-start=\"558\" data-end=\"594\">\r\n<p data-start=\"560\" data-end=\"594\">যুদ্ধরত সন্তানকে লেখা মায়ের চিঠি</p>\r\n</li><li data-start=\"595\" data-end=\"634\">\r\n<p data-start=\"597\" data-end=\"634\">প্রিয়জনের কাছে লেখা শেষ বিদায়ের কথা</p>\r\n</li></ul>\r\n<h2 data-start=\"636\" data-end=\"662\">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<ul data-start=\"663\" data-end=\"862\"><li data-start=\"663\" data-end=\"730\">\r\n<p data-start=\"665\" data-end=\"730\">মুক্তিযুদ্ধের সময় সাধারণ মানুষের আবেগ ও মানসিক অবস্থার প্রতিফলন</p>\r\n</li><li data-start=\"731\" data-end=\"779\">\r\n<p data-start=\"733\" data-end=\"779\">যুদ্ধক্ষেত্র ও পরিবারের মধ্যে দূরত্বের বেদনা</p>\r\n</li><li data-start=\"780\" data-end=\"823\">\r\n<p data-start=\"782\" data-end=\"823\">স্বাধীনতার জন্য আত্মত্যাগের বাস্তব দলিল</p>\r\n</li><li data-start=\"824\" data-end=\"862\">\r\n<p data-start=\"826\" data-end=\"862\">ইতিহাসের বইয়ে না পাওয়া মানবিক গল্প</p>\r\n</li></ul>\r\n<h2 data-start=\"864\" data-end=\"886\">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start=\"887\" data-end=\"1074\"><li data-start=\"887\" data-end=\"936\">\r\n<p data-start=\"889\" data-end=\"936\">মুক্তিযুদ্ধকে <strong data-start=\"903\" data-end=\"923\">মানবিক দৃষ্টিকোণ</strong> থেকে জানতে</p>\r\n</li><li data-start=\"937\" data-end=\"979\">\r\n<p data-start=\"939\" data-end=\"979\">বাস্তব চিঠির মাধ্যমে ইতিহাস অনুভব করতে</p>\r\n</li><li data-start=\"980\" data-end=\"1033\">\r\n<p data-start=\"982\" data-end=\"1033\">শিক্ষার্থী ও গবেষকদের জন্য গুরুত্বপূর্ণ রেফারেন্স</p>\r\n</li><li data-start=\"1034\" data-end=\"1074\">\r\n<p data-start=\"1036\" data-end=\"1074\">দেশপ্রেম ও মূল্যবোধ জাগ্রত করার জন্য</p>\r\n</li></ul>\r\n<h2 data-start=\"1076\" data-end=\"1100\">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start=\"1101\" data-end=\"1231\"><li data-start=\"1101\" data-end=\"1142\">\r\n<p data-start=\"1103\" data-end=\"1142\">স্কুল-কলেজ-বিশ্ববিদ্যালয়ের শিক্ষার্থী</p>\r\n</li><li data-start=\"1143\" data-end=\"1169\">\r\n<p data-start=\"1145\" data-end=\"1169\">মুক্তিযুদ্ধপ্রেমী পাঠক</p>\r\n</li><li data-start=\"1170\" data-end=\"1196\">\r\n<p data-start=\"1172\" data-end=\"1196\">গবেষক ও ইতিহাস অনুরাগী</p>\r\n</li><li data-start=\"1197\" data-end=\"1231\">\r\n<p data-start=\"1199\" data-end=\"1231\">লাইব্রেরি ও সংগ্রহে রাখার জন্য</p>\r\n</li></ul>\r\n<h2 data-start=\"1233\" data-end=\"1255\">🧠 সংকলক সম্পর্কে</h2>\r\n<p data-start=\"1256\" data-end=\"1389\"><strong data-start=\"1256\" data-end=\"1274\">মুনতাসীর মামুন</strong> বাংলাদেশের প্রখ্যাত ইতিহাসবিদ ও মুক্তিযুদ্ধ গবেষক। মুক্তিযুদ্ধভিত্তিক বহু গুরুত্বপূর্ণ গ্রন্থ সংকলন ও রচনা করেছেন।</p><p></p>', 120.00, 190.00, 169.10, 11.00, 'percent', NULL, NULL, 'AKATTCHTI', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড5', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-WSrTGyJMmzR3tLWgEctfyrrLJatgmAX3AgZmmu6b.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:14:33', '2026-02-03 00:17:10'),
(13, 'একাত্তরের জননী', 'ekattrer-jnnee', 31, 1, 1, 2, 'book', '33', NULL, 'storage/media/product/2026-02-03-s9NU7e74PI9ZSp85NVkh2EmKvAQNxy8S8D0dRSIS.webp', 'লেখক: <strong data-start=\"346\" data-end=\"360\">রমা চৌধুরী</strong><br data-start=\"360\" data-end=\"363\">\r\nভাষা: বাংলা<br data-start=\"374\" data-end=\"377\">\r\nপ্রকাশনী: মাধুকরী প্রকাশন', '<h3 data-start=\"300\" data-end=\"318\">📘 বইয়ের নাম</h3>\r\n<p data-start=\"319\" data-end=\"440\"><strong data-start=\"319\" data-end=\"337\">একাত্তরের জননী</strong><br data-start=\"337\" data-end=\"340\">\r\nলেখক: <strong data-start=\"346\" data-end=\"360\">রমা চৌধুরী</strong><br data-start=\"360\" data-end=\"363\">\r\nভাষা: বাংলা<br data-start=\"374\" data-end=\"377\">\r\nপ্রকাশনী: মাধুকরী প্রকাশন <span class=\"\" data-state=\"closed\"></span></p>\r\n<h3 data-start=\"442\" data-end=\"465\">✍️ লেখকের পরিচিতি</h3>\r\n<p data-start=\"466\" data-end=\"837\">রমা চৌধুরী বাংলাদেশের <strong data-start=\"488\" data-end=\"524\">মুক্তিযুদ্ধের বীরাঙ্গনা ও লেখিকা</strong> ছিলেন। তাঁর লেখা <strong data-start=\"542\" data-end=\"562\">“একাত্তরের জননী”</strong> সবচেয়ে বেশি পরিচিত কাজগুলোর মধ্যে একটি, যেখানে তিনি ১৯৭১-এর মুক্তিযুদ্ধের সময়কার নির্যাতন, বেদনা ও স্বদেশপ্রেমের কথা নিজের জীবনের অভিজ্ঞতার আলোকে বসিয়েছেন। তিনি পরে <strong data-start=\"728\" data-end=\"749\">বেগম রোকেয়া পদকে</strong> ভূষিত হন (মরণোপরান্ত) বাংলাদেশ সরকারের পক্ষ থেকে। <span class=\"\" data-state=\"closed\"></span></p>\r\n<h3 data-start=\"839\" data-end=\"871\">📖 বইটির ধারণা ও বিষয়বস্তু</h3>\r\n<p data-start=\"872\" data-end=\"950\">“একাত্তরের জননী” বইটি মূলত রমা চৌধুরীর <strong data-start=\"911\" data-end=\"930\">আত্মজৈবনিক গল্প</strong> — যেখানে তিনি বলেন:</p>\r\n<ul data-start=\"951\" data-end=\"1371\"><li data-start=\"951\" data-end=\"1124\">\r\n<p data-start=\"953\" data-end=\"1124\">১৯৭১-এর মুক্তিযুদ্ধের সময় পাকহানাদার বাহিনীর হাতে নারীর উপর যেসব নির্যাতন ও ভয়াবহতা ঘটেছিল, তা কীভাবে তার জীবনে গভীর ক্ষত তৈরি করে। <span class=\"\" data-state=\"closed\"></span></p>\r\n</li><li data-start=\"1125\" data-end=\"1238\">\r\n<p data-start=\"1127\" data-end=\"1238\">তিনি তার <strong data-start=\"1136\" data-end=\"1185\">ব্যক্তিগত দুঃখ, হারানো সন্তান, বিপর্যয়ের গল্প</strong> তুলে ধরেছেন। <span class=\"\" data-state=\"closed\"></span></p>\r\n</li><li data-start=\"1239\" data-end=\"1371\">\r\n<p data-start=\"1241\" data-end=\"1371\">বইতে জীবনের বাস্তব অভিজ্ঞতার আলোকে দেশপ্রেম, শোষণ, বেদনা, এবং যুদ্ধের বাস্তব চিত্র ফুটে ওঠে। <span class=\"\" data-state=\"closed\"></span></p>\r\n</li></ul>\r\n<h3 data-start=\"1373\" data-end=\"1395\">📚 ব্যাকগ্রাউন্ড</h3>\r\n<ul data-start=\"1396\" data-end=\"1673\"><li data-start=\"1396\" data-end=\"1512\">\r\n<p data-start=\"1398\" data-end=\"1512\">এই গ্রন্থটি রাজনৈতিক ও মুক্তিযুদ্ধভিত্তিক উপন্যাস/স্মৃতিকথা হিসেবে ধরা হয়। <span class=\"\" data-state=\"closed\"></span></p>\r\n</li><li data-start=\"1513\" data-end=\"1673\">\r\n<p data-start=\"1515\" data-end=\"1673\">লেখক রমা চৌধুরী নিজেও ১৯৭১-এ বীরাঙ্গনা হিসেবে অংশগ্রহণ করেছিলেন এবং পরে তাঁর লেখালেখি সেই বাস্তব অভিজ্ঞতার অভিসারে গঠিত। <span class=\"\" data-state=\"closed\"></span></p>\r\n</li></ul>\r\n<h3 data-start=\"1675\" data-end=\"1692\">📘 সংক্ষেপে</h3>\r\n<p data-start=\"1693\" data-end=\"1929\">“একাত্তরের জননী” বইটি ১৯৭১-এর মুক্তিযুদ্ধের <strong data-start=\"1737\" data-end=\"1766\">ব্যক্তিগত ও মানবিক স্মৃতি</strong> হিসেবে অত্যন্ত আবেগপ্রবণ ভাষায় লেখা একটি গ্রন্থ, যা সেই বেদনাদায়ক সময়ের গল্প ও নারীর সংগ্রামকে পাঠকের সামনে জীবন্ত করে তোলে।</p>', 169.00, 190.00, 169.10, 11.00, 'percent', NULL, NULL, '71JNN', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড7', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-s9NU7e74PI9ZSp85NVkh2EmKvAQNxy8S8D0dRSIS.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:18:09', '2026-02-03 00:16:46'),
(27, 'লিডারশীপ-১০১', 'lidarseep-101', 31, 1, 1, 2, 'book', 'ASS', NULL, 'storage/media/product/2026-02-03-79uI0eYlE14AAA6jYqJNr6MRihdh33wuTbpY59LT.webp', 'লেখক: জন সি. ম্যাক্সওয়েল<br data-start=\"360\" data-end=\"363\">ভাষা: বাংলা<br data-start=\"374\" data-end=\"377\">অনুবাদক: মোঃ মোরশেদ আলম', '<h2 data-start=\"132\" data-end=\"149\">📘 বইয়ের নাম</h2>\r\n<p data-start=\"150\" data-end=\"183\"><strong data-start=\"150\" data-end=\"183\">লিডারশিপ ১০১ (Leadership 101)</strong></p>\r\n<h2 data-start=\"185\" data-end=\"197\">✍️ লেখক</h2>\r\n<p data-start=\"198\" data-end=\"238\"><strong data-start=\"198\" data-end=\"238\">জন সি. ম্যাক্সওয়েল (John C. Maxwell)</strong></p>\r\n<h2 data-start=\"240\" data-end=\"256\">🌐 মূল ভাষা</h2>\r\n<p data-start=\"257\" data-end=\"303\">ইংরেজি (বাংলা অনুবাদ সংস্করণ বাজারে পাওয়া যায়)</p>\r\n<h2 data-start=\"305\" data-end=\"323\">🏷️ ক্যাটাগরি</h2>\r\n<p data-start=\"324\" data-end=\"371\">লিডারশিপ / আত্মউন্নয়ন / ম্যানেজমেন্ট / মোটিভেশন</p>\r\n<h2 data-start=\"373\" data-end=\"402\">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start=\"403\" data-end=\"580\"><strong data-start=\"403\" data-end=\"419\">লিডারশিপ ১০১</strong> হলো নেতৃত্ব শেখার একদম বেসিক গাইড। এই বইয়ে জন সি. ম্যাক্সওয়েল খুব সহজ ভাষায় বুঝিয়েছেন—<br data-start=\"506\" data-end=\"509\">\r\nনেতৃত্ব মানে শুধু পদ বা ক্ষমতা নয়, নেতৃত্ব মানে <strong data-start=\"557\" data-end=\"579\">প্রভাব (Influence)</strong>।</p>\r\n<p data-start=\"582\" data-end=\"611\">এই বইটি বিশেষভাবে লেখা হয়েছে:</p>\r\n<ul data-start=\"612\" data-end=\"717\"><li data-start=\"612\" data-end=\"634\">\r\n<p data-start=\"614\" data-end=\"634\">নতুন লিডারদের জন্য</p>\r\n</li><li data-start=\"635\" data-end=\"676\">\r\n<p data-start=\"637\" data-end=\"676\">যারা নেতৃত্ব শিখতে চায় একদম শুরু থেকে</p>\r\n</li><li data-start=\"677\" data-end=\"717\">\r\n<p data-start=\"679\" data-end=\"717\">ছাত্র, চাকরিজীবী ও উদ্যোক্তাদের জন্য</p>\r\n</li></ul>\r\n<h2 data-start=\"719\" data-end=\"745\">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<p data-start=\"746\" data-end=\"766\">এই বইয়ে আপনি শিখবেন—</p>\r\n<ul data-start=\"768\" data-end=\"993\"><li data-start=\"768\" data-end=\"797\">\r\n<p data-start=\"770\" data-end=\"797\">নেতৃত্ব আসলে কী এবং কী নয়</p>\r\n</li><li data-start=\"798\" data-end=\"832\">\r\n<p data-start=\"800\" data-end=\"832\">ভালো লিডার হওয়ার মৌলিক গুণাবলি</p>\r\n</li><li data-start=\"833\" data-end=\"879\">\r\n<p data-start=\"835\" data-end=\"879\">কীভাবে মানুষের উপর ইতিবাচক প্রভাব ফেলতে হয়</p>\r\n</li><li data-start=\"880\" data-end=\"909\">\r\n<p data-start=\"882\" data-end=\"909\">লিডার ও ফলোয়ারের পার্থক্য</p>\r\n</li><li data-start=\"910\" data-end=\"956\">\r\n<p data-start=\"912\" data-end=\"956\">ব্যক্তিগত উন্নতির মাধ্যমে নেতৃত্ব গড়ে তোলা</p>\r\n</li><li data-start=\"957\" data-end=\"993\">\r\n<p data-start=\"959\" data-end=\"993\">বাস্তব জীবনের উদাহরণ ও সহজ সূত্র</p>\r\n</li></ul>\r\n<h2 data-start=\"995\" data-end=\"1017\">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start=\"1018\" data-end=\"1179\"><li data-start=\"1018\" data-end=\"1066\">\r\n<p data-start=\"1020\" data-end=\"1066\">নেতৃত্ব শেখার জন্য <strong data-start=\"1039\" data-end=\"1064\">পারফেক্ট স্টার্টার বই</strong></p>\r\n</li><li data-start=\"1067\" data-end=\"1097\">\r\n<p data-start=\"1069\" data-end=\"1097\">কম পেজ, কিন্তু খুব কার্যকর</p>\r\n</li><li data-start=\"1098\" data-end=\"1131\">\r\n<p data-start=\"1100\" data-end=\"1131\">বাস্তব জীবনে প্রয়োগযোগ্য টিপস</p>\r\n</li><li data-start=\"1132\" data-end=\"1179\">\r\n<p data-start=\"1134\" data-end=\"1179\">আত্মবিশ্বাস ও সিদ্ধান্ত নেওয়ার ক্ষমতা বাড়ায়</p>\r\n</li></ul>\r\n<h2 data-start=\"1181\" data-end=\"1205\">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start=\"1206\" data-end=\"1297\"><li data-start=\"1206\" data-end=\"1219\">\r\n<p data-start=\"1208\" data-end=\"1219\">স্টুডেন্ট</p>\r\n</li><li data-start=\"1220\" data-end=\"1238\">\r\n<p data-start=\"1222\" data-end=\"1238\">নতুন ম্যানেজার</p>\r\n</li><li data-start=\"1239\" data-end=\"1252\">\r\n<p data-start=\"1241\" data-end=\"1252\">টিম লিডার</p>\r\n</li><li data-start=\"1253\" data-end=\"1266\">\r\n<p data-start=\"1255\" data-end=\"1266\">উদ্যোক্তা</p>\r\n</li><li data-start=\"1267\" data-end=\"1297\">\r\n<p data-start=\"1269\" data-end=\"1297\">যারা লিডারশিপ শিখতে আগ্রহী</p>\r\n</li></ul>\r\n<h2 data-start=\"1299\" data-end=\"1320\">🧠 লেখক সম্পর্কে</h2>\r\n<p data-start=\"1321\" data-end=\"1470\">জন সি. ম্যাক্সওয়েল একজন বিশ্বখ্যাত লিডারশিপ এক্সপার্ট। তিনি<br data-start=\"1380\" data-end=\"1383\">\r\n<strong data-start=\"1383\" data-end=\"1410\">৭০টিরও বেশি লিডারশিপ বই</strong> লিখেছেন, যেগুলো কোটি কপি বিক্রি হয়েছে এবং বহু ভাষায় অনূদিত।</p>', 120.00, 160.00, 120.00, 40.00, 'amount', '2026-02-06', '2026-03-03', NULL, 'একনজরে উম্মাহর ইতিহাস ৩ খন্ডWA', 'sAS', 'storage/media/product/2026-02-03-79uI0eYlE14AAA6jYqJNr6MRihdh33wuTbpY59LT.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-02-01 06:30:48', '2026-02-03 00:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_authors`
--

CREATE TABLE `product_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_authors`
--

INSERT INTO `product_authors` (`id`, `product_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2026-01-22 04:46:02', '2026-01-22 04:46:02'),
(2, 5, 1, '2026-01-22 06:36:21', '2026-01-22 06:36:21'),
(3, 7, 1, '2026-01-25 02:06:23', '2026-01-25 02:06:23'),
(4, 10, 1, '2026-01-25 02:11:41', '2026-01-25 02:11:41'),
(5, 11, 1, '2026-01-25 02:13:34', '2026-01-25 02:13:34'),
(6, 12, 1, '2026-01-25 02:14:33', '2026-01-25 02:14:33'),
(7, 13, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
(8, 27, 2, '2026-02-01 06:30:48', '2026-02-01 06:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(6, 3, 'storage/media/product/2026-01-25-dij5X01DPJKVUUsCeU25ctagymEvIDqfQmoqtOxS.webp', '2026-01-24 23:17:14', '2026-01-24 23:17:14'),
(7, 2, 'storage/media/product/2026-01-25-q6VNZvcQxcMGzpLPdVNKBNhheXbvT4UqbX1rIzgV.webp', '2026-01-24 23:17:37', '2026-01-24 23:17:37'),
(8, 1, 'storage/media/product/2026-01-25-SS3rfwzKYDXqC0L6JtHqRN7dZhhB1iMtlIUqNGd3.webp', '2026-01-24 23:17:55', '2026-01-24 23:17:55'),
(15, 27, 'storage/media/product/2026-02-01-b5fxDB9zSagqZeU63YzDm3DHcVO4AYjz7xgZXwRS.webp', '2026-02-01 06:33:54', '2026-02-01 06:33:54'),
(16, 12, 'storage/media/product/2026-02-03-bJPebuGWn950tTPbjYzUhVoEbvTFASaFCz8G5Lfl.webp', '2026-02-02 23:08:14', '2026-02-02 23:08:14'),
(17, 11, 'storage/media/product/2026-02-03-mII972VRKN4ux2YvxZPHTnmJ8GwYowO1e6F8p9OQ.webp', '2026-02-02 23:17:41', '2026-02-02 23:17:41'),
(18, 10, 'storage/media/product/2026-02-03-ROGRCZ9fcA0SDCZSSHTbX8Tf1r0o1SEaoIpJdEhz.webp', '2026-02-02 23:34:35', '2026-02-02 23:34:35'),
(19, 7, 'storage/media/product/2026-02-03-nnA3bEurhOyIyX7zyQmxO3pJk9dmzr5FkxhX0GdD.webp', '2026-02-03 00:23:13', '2026-02-03 00:23:13'),
(20, 5, 'storage/media/product/2026-02-03-QrIVELPj4tjzeY5I7jo3G8Y9dPSeIIPIDcz6ENod.webp', '2026-02-03 00:25:06', '2026-02-03 00:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `name`, `created_at`, `updated_at`) VALUES
(8, 3, 'dsfsd', '2026-01-24 23:17:14', '2026-01-24 23:17:14'),
(9, 2, 'facebook', '2026-01-24 23:17:37', '2026-01-24 23:17:37'),
(10, 1, 'asaa', '2026-01-24 23:17:55', '2026-01-24 23:17:55'),
(44, 10, 'sads', '2026-02-02 23:34:35', '2026-02-02 23:34:35'),
(47, 11, 'sdfdsf', '2026-02-03 00:16:01', '2026-02-03 00:16:01'),
(48, 27, 'aS', '2026-02-03 00:16:19', '2026-02-03 00:16:19'),
(49, 13, 'Zxazx', '2026-02-03 00:16:46', '2026-02-03 00:16:46'),
(50, 12, 'sd', '2026-02-03 00:17:10', '2026-02-03 00:17:10'),
(53, 7, 'sasa', '2026-02-03 00:24:05', '2026-02-03 00:24:05'),
(54, 5, 'dfsdf', '2026-02-03 00:25:06', '2026-02-03 00:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `regular_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sale_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(10) NOT NULL DEFAULT 'amount',
  `image` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant`, `sku`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `image`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'SKUS', 11.00, 12.00, 11.00, 1.00, 'amount', NULL, 1000, 1, '2026-01-20 04:15:44', '2026-01-24 23:17:55'),
(2, 2, NULL, 'ssds', 11.00, 33.00, 31.00, 2.00, 'amount', NULL, 1000, 1, '2026-01-20 04:26:34', '2026-01-24 23:17:37'),
(3, 3, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 'amount', NULL, 1000, 1, '2026-01-22 04:46:01', '2026-01-24 23:17:14'),
(5, 5, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 'amount', NULL, 1000, 1, '2026-01-22 06:36:18', '2026-02-01 02:11:02'),
(6, 7, NULL, NULL, 33.00, 33.00, 0.00, 33.00, 'amount', NULL, 1000, 1, '2026-01-25 02:06:22', '2026-01-28 23:10:06'),
(7, 10, NULL, 'dsfs', 33.00, 33.00, 0.00, 33.00, 'amount', NULL, 1000, 1, '2026-01-25 02:11:41', '2026-02-01 02:11:02'),
(8, 11, NULL, 'dfsdf', 33.00, 33.00, 0.00, 33.00, 'amount', NULL, 1000, 1, '2026-01-25 02:13:34', '2026-02-01 02:11:02'),
(9, 12, NULL, NULL, 77.00, 86.00, 85.00, 1.00, 'amount', NULL, 1000, 1, '2026-01-25 02:14:33', '2026-02-01 02:11:02'),
(10, 13, NULL, 'dsf', 55.00, 55.00, 53.00, 2.00, 'amount', NULL, 1000, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
(13, 27, NULL, 'dsf', 55.00, 120.00, 180.00, 20.00, 'amount', NULL, 1000, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_values`
--

CREATE TABLE `product_variant_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_vendors`
--

CREATE TABLE `product_vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_vendors`
--

INSERT INTO `product_vendors` (`id`, `product_id`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2026-01-20 04:15:44', '2026-01-20 04:15:44'),
(2, 2, 1, '2026-01-20 04:26:34', '2026-01-20 04:26:34'),
(3, 3, 1, '2026-01-22 04:46:01', '2026-01-22 04:46:01'),
(5, 5, 1, '2026-01-22 06:36:21', '2026-01-22 06:36:21'),
(6, 7, 1, '2026-01-25 02:06:22', '2026-01-25 02:06:22'),
(7, 10, 1, '2026-01-25 02:11:41', '2026-01-25 02:11:41'),
(8, 11, 1, '2026-01-25 02:13:34', '2026-01-25 02:13:34'),
(9, 12, 1, '2026-01-25 02:14:33', '2026-01-25 02:14:33'),
(10, 13, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
(13, 27, 1, '2026-02-01 06:33:54', '2026-02-01 06:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `name`, `slug`, `image`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PublicationName1233', 'publicationname1233', 'storage/publication/2026-01-20-YJsw5YKEToACrcjI64eyleHJWWOJZSSLJBeUZnQ2.webp', 'storage/publication/2026-01-20-OraaoflH2i5HqarTG3PsAVbb74Zym9w7RnmeCdlE.webp', 'asdsad', 1, 1, NULL, NULL, NULL, '2026-01-20 04:24:34', '2026-01-20 04:24:34'),
(2, 'Publication12', 'publication12', 'storage/publication/2026-01-22-pLcGvcdwiBan700LNHOTiRx7VBAPn2zbYC4wZ3Rr.webp', 'storage/publication/2026-01-22-YkCGXyosBESKkHyUso3foqsYxmxFKj3WIpmWhQR2.webp', 'asdasd', 1, 1, NULL, NULL, NULL, '2026-01-22 04:34:10', '2026-01-22 04:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `po_number` varchar(255) NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `expected_date` date DEFAULT NULL,
  `total_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `grand_total` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `status` enum('draft','pending','approved','partially_received','received','cancelled') NOT NULL DEFAULT 'draft',
  `notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `received_quantity` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `unit_price` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `total_amount` decimal(12,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_receipts`
--

CREATE TABLE `purchase_receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_number` varchar(255) NOT NULL,
  `purchase_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `receipt_date` date NOT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_receipt_items`
--

CREATE TABLE `purchase_receipt_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_receipt_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `unit_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `review` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 11, 5, 'NICE', 1, '2026-02-01 00:25:27', '2026-02-01 00:26:37'),
(2, 2, 11, 2, 'Motamuti', 1, '2026-02-01 00:31:58', '2026-02-01 00:31:58'),
(3, 3, 10, 4, 'hhhh', 1, '2026-02-01 00:39:43', '2026-02-01 00:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Software Admin', 'web', '2026-01-19 04:51:11', '2026-01-19 04:51:11'),
(2, 'Test Role', 'web', '2026-01-19 06:27:50', '2026-01-19 06:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2wpGfcCTDVwXuGhQXagnFOW8PhaVKayMjIvj0N0f', NULL, '85.208.96.203', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam13OWlzTmttZnhrWVhucG1NNlpEYTdBck1mdDBaUUNGTjlQTnhWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771741292),
('3x9ED1AQuFJrpbS0s17DBbWkNAXJ86DbIah6Y92R', NULL, '5.39.1.250', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS29yWUdCcTFUYVJ0endQMEpHTWpRWUlrdWFGSVJnNURLdVh1TGdJayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTMvcHphcmFsYWwtdGV4dC8lRTAlQTYlQUElRTAlQTclOEQlRTAlQTYlQUYlRTAlQTYlQkUlRTAlQTYlQjAlRTAlQTYlQkUlRTAlQTYlQjIlRTAlQTYlQkUlRTAlQTYlQjIlMjBURVhUIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771882406),
('6K2AwQTDnr2PucGfCn5gg65yr7TYE4sAOPIQDHv7', NULL, '176.31.139.2', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3VlWmhrTEhpWFlIc0tWS3NnenJodnd1VjQwUmhoc0p1MGNkMDJOaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjcvc2FiLW1lbnUtem9nLWtydW4xLyVFMCVBNiVCOCVFMCVBNiVCRSVFMCVBNiVBQyUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiVBRiVFMCVBNyU4QiVFMCVBNiU5NyUyMCVFMCVBNiU5NSVFMCVBNiVCMCVFMCVBNyU4MSVFMCVBNiVBODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771897235),
('6PEKrPb372Uzhb17DK77uVvG11rcrdiiQHCbwBdJ', NULL, '176.31.139.27', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVREbW5QNjJ6eU5nV3QwdVFKME41clhqMmdTQmQwWm5TWTFoWktQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMTgvaXNsYW1pay1nbHBlci1ieWVyLXNrbC1iaS8lRTAlQTYlQUMlRTAlQTYlQkYlRTAlQTYlQjclRTAlQTclOUYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771899314),
('8dF3NqTXd6tNhuXFBroePGsUAsFPGngYkW4oVKti', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3ZSZXg5aXg4WG1Ka0x6WXVib3VWZWFhbU40VVJBbks5VVM3TW9DeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771782044),
('92XZ9foEBHD2ociNevoQ4HoAN0e1UKTGOHA3C7N6', NULL, '43.135.177.189', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU5BZXF4dTdCbE5vRUpwQmxHMjdOeE9EajhOb2hWRUxEMzRKZU5ZViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771892506),
('9gYGX5hQx4i037OVIpOopupXjF4VH0WNQ2ovoBrF', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUhUdThmb0ZFWlFGY2RuN2d4UEFVczlGM09mZWtZYnl3dkt5TUlKTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMjciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771722810),
('9WfzMVIEeC9erLWHHhj9gRXsj242a7biG8wMQ931', NULL, '198.235.24.161', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0kwd3pXZWZ2YXZZSHpaRVZLekZuSEJxQW5PR2RTTGFzVUlNUmE1bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771719790),
('aArlVekKIvCtqwnARjPvdZO1zT1gcuwPW99wXSRW', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXlrcGpXRzVmcW5MeFRldG84MWNIbjBTZ3pIREMzOGpXYWd0a1dTdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MS9hamtlci1vZmFyLyVFMCVBNiU4NiVFMCVBNiU5QyVFMCVBNiU5NSVFMCVBNyU4NyVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNiVBQiVFMCVBNiVCRSVFMCVBNiVCMCUyMCEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771790226),
('aRJ12XXrj9ahZLUaYMWsfUpg1kFuopG7dQYOgpx2', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXVEdndjd2NFaGQxSWlUc3VxMk5rOE00U3RYVGdnNzhENVk2a0JVdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771765461),
('awgswZ7dKCXitP4hzoKzYGrCw7a6vnAzVHaIMuO0', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUtFU0lLYWpvWmhIRWJRVmRNbnZZeDZTNUJKSEkzSWh5S1h1dTRIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771765456),
('BbzS94LqGNElHCo7kw7jmpNPjdPnbQRwOWXagut9', NULL, '185.191.171.13', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGVsb3huSEpvNFpTM0xvd1BOWTNJVDcxQjJKV1ZkeThxN2U3ajgyMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771749595),
('BjEV3DLA7rq4RHKXliqNxUAk7RRleEFisCwaLKgq', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmJCMVRxUGhyMHVKSEtMZ3ozVmtHS2k4YjdaeDBlU01MQWF1cnRIUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy8xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771762843),
('bKgmbko1H4Srx5Mle4tJQ2P9bWmioZNIHCBx1R48', NULL, '93.158.90.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUFqU2tsSEFQbEhwaUNteG9oUE11eFRhVE5ZMUVmemt4dmFqbEZnciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yMy9hcm9vLW9uZWstbWVudS1la2hhbmUtaGJlLyVFMCVBNiU4NiVFMCVBNiVCMCVFMCVBNiU5MyUyMCVFMCVBNiU4NSVFMCVBNiVBOCVFMCVBNyU4NyVFMCVBNiU5NSUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiU4RiVFMCVBNiU5NiVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNyU4NyUyMCVFMCVBNiVCOSVFMCVBNiVBQyVFMCVBNyU4NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771861145),
('Bzy4Ch1vzQZSDRXgp5H71QYWIFLhVzIJm7gztFGG', NULL, '202.83.125.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGdXZzFOUkxHUU16b0lJSDZQVm92dVpCMGJ2V3dpcGtPVXZ0V21DViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771913934),
('CLImq4YeTcs2COcbziILjYLGtNGtlpfaN5HldJg0', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamxuMVBKd3JxTGFjYkpoZ01lcGx6VjNmb0hKbXJNelhydXg5SHA5dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL2NhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771787538),
('Cme6PnHFeR3TdtjPlvevSvdMCOsgFcu4uNXucgfI', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjl3V25WMDhVSVl2d3JVTWVSYWR0aTRuRkNNQWltQmxaQlIxcjdleCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTkyOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yNC9zYWItbWVudS16b2cta3J1bi8lRTAlQTYlQjglRTAlQTYlQkUlRTAlQTYlQUMlMjAlRTAlQTYlQUUlRTAlQTclODclRTAlQTYlQTglRTAlQTclODElMjAlRTAlQTYlQUYlRTAlQTclOEIlRTAlQTYlOTclMjAlRTAlQTYlOTUlRTAlQTYlQjAlRTAlQTclODElRTAlQTYlQTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771754859),
('COf3wHTKoukMKqlOdtYyAe719AWokccLLg9pdRna', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieURlNkgyeHE3U2V2VXVjb1kyeFdkemo0Tjk5WkJacHVaZldpTzQ0MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvNDUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771778976),
('DE7X2edQ6JQk2wSFVwH85MBKKsenOb3TxG2SUY0m', NULL, '93.158.91.237', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME9mR3hOWDd6Zk9UcjM4eDUwcUdUQjJWdmJzMWZTRUx2UllaSVdYOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771737881),
('DGxxuFsowr7bFpgccDsyUlHnteb9Qusjztw96Lmb', NULL, '37.59.204.149', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkFaNGFIcmFyTGx4cGxQV3VRVHpzc1g1azB3TFkyZkczRUNGejlOciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTkzOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjQvc2FiLW1lbnUtem9nLWtydW4vJUUwJUE2JUI4JUUwJUE2JUJFJUUwJUE2JUFDJTIwJUUwJUE2JUFFJUUwJUE3JTg3JUUwJUE2JUE4JUUwJUE3JTgxJTIwJUUwJUE2JUFGJUUwJUE3JThCJUUwJUE2JTk3JTIwJUUwJUE2JTk1JUUwJUE2JUIwJUUwJUE3JTgxJUUwJUE2JUE4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771900312),
('F11ZcUZuC1VKd4n4N3nAkj7vLg77JPksTLlzVAeJ', NULL, '185.191.171.19', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHExeVRTV0dQZTdaYzV3NmxnYmNCMmJOVHBVOG9YV21tMERHZWtJdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771729235),
('F99T1cUpRyvPk9eJHln5iCpLz2qWFv2gdpmEcmDw', NULL, '93.158.71.185', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTRPajV0azI4MkFFZ2oxeWJGa3R3VjZEUnBBU3B3QnRWVGJZakRxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yMy9hcm9vLW9uZWstbWVudS1la2hhbmUtaGJlLyVFMCVBNiU4NiVFMCVBNiVCMCVFMCVBNiU5MyUyMCVFMCVBNiU4NSVFMCVBNiVBOCVFMCVBNyU4NyVFMCVBNiU5NSUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiU4RiVFMCVBNiU5NiVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNyU4NyUyMCVFMCVBNiVCOSVFMCVBNiVBQyVFMCVBNyU4NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771737883),
('Fb9ueSnLZpSewZwhUrxQCZBqkgfC225bjllgOY9j', NULL, '5.39.1.254', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXd5MkdPNVE3a251UmxGNHlESnc0cHpmbTRFY2xGVGxrSFJFbHlIeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTEzOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjkvZ2FyaXlhbDEvJUUwJUE2JTk3JUUwJUE2JUJFJUUwJUE3JTlDJUUwJUE2JUJGJUUwJUE3JTlGJUUwJUE2JUJFJUUwJUE2JUIyMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771894529),
('fBwcAp648hvADFzgxl5EYEeCy6POFIM4ebi85y0U', NULL, '54.156.53.99', 'Mozilla/5.0 (Linux; Android 4.0.4; BNTV400 Build/IMM76L) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.111 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUlCVHVIZWUzSmIwU2hsVXpzODVRbmNOZExtMnh0NjQ2U0V1bGI3RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771840988),
('FTUXeEq5pHrfCHVjZRK5BOlHU6MInrgqu2bmtUvA', NULL, '54.37.118.71', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFNTaEpocTJnMEdtaUZTckQwb0ppS0E1ZHV3QUdJTEhTU202ankzWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc3OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTAvYmVzdHNlbGFyLW96YW9vemFyZC0yNS8lRTAlQTYlQUMlRTAlQTclODclRTAlQTYlQjglRTAlQTclOEQlRTAlQTYlOUYlRTAlQTYlQjglRTAlQTclODclRTAlQTYlQjIlRTAlQTYlQkUlRTAlQTYlQjAlMjAlRTAlQTYlODUlRTAlQTclOEQlRTAlQTYlQUYlRTAlQTYlQkUlRTAlQTYlOTMlRTAlQTYlQUYlRTAlQTYlQkMlRTAlQTYlQkUlRTAlQTYlQjAlRTAlQTclOEQlRTAlQTYlQTEsJTIwJUUwJUE3JUE4JUUwJUE3JUFCIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771890520),
('fwJMwObFO16ny2chhlitiGem0sWHABlBiCsCd22v', NULL, '98.83.57.80', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUF0a0laS0ZxekoxTklFUjRnOTROY25QN1VVTG1zczR3OGVuY3ZQRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmJvb2tzYW5kYm9va3NiZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771710598),
('g7Ptvz8kQBbR4w4J7vepodQCldBOUxRiCxQ1ZGWi', NULL, '151.248.1.103', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGUzNkwwZ2R3Y1A1TzZGSm5HVHF4eWFDNzdKY0RYWmZKdHlLR245RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771737883),
('GAX3bazbx8iO8o2flV3L0qFNdIcQj5ChD2KxvVOX', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDMxMzZNVm1VemNyaG9SUlVwUTZNQlN1dEtpUnRQdUxHdmo0aDR2aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTgxOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81NC92cnRpLXByc3R1dGkvJUUwJUE2JUFEJUUwJUE2JUIwJUUwJUE3JThEJUUwJUE2JUE0JUUwJUE2JUJGJTIwJUUwJUE2JUFBJUUwJUE3JThEJUUwJUE2JUIwJUUwJUE2JUI4JUUwJUE3JThEJUUwJUE2JUE0JUUwJUE3JTgxJUUwJUE2JUE0JUUwJUE2JUJGIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771738815),
('gtaEcPKC850R3A9zetwZFynd8DKM0NrVF4268DYy', NULL, '93.158.91.249', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2E3Q0lod3p3Q3RQSk9zTnFUeThEalBOcEE1VEFuN3dFOUN3ODRXTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771906136),
('gwdkiOnOofTeArdMwwCmdG554dsl69cGiEdGFwAY', NULL, '185.191.171.15', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGJXb2xpU0syTHhIa2pNYWxoT0JoTllaNlpsOTBubEJldE9tZlV3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771761050),
('gWSD5rWbQWbmGLmgcbXPW76GgEixeebny0DDyUtT', NULL, '93.158.91.235', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclZVeHl4UVNweFpFYVNZUVpCRGtqemQwa2lITEFDcTZqbTI3dU84OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc2OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MC9iZXN0c2VsYXItb3phb296YXJkLTI1LyVFMCVBNiVBQyVFMCVBNyU4NyVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNiVCOCVFMCVBNyU4NyVFMCVBNiVCMiVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNyU4RCVFMCVBNiVBRiVFMCVBNiVCRSVFMCVBNiU5MyVFMCVBNiVBRiVFMCVBNiVCQyVFMCVBNiVCRSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSwlMjAlRTAlQTclQTglRTAlQTclQUIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771906134),
('gZ5ZhQNgYkU921hInMHrz8G3UJ1W4Mq2vvMSKBmm', NULL, '85.208.96.197', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTFUZVlIOGFZc1gyUmZBQmttNnZ1YzBGUnFBUmFBa3lIUEoycXZCcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771723956),
('h76rcENAjBGytg05AbxBznseaJJs01SBFW1u4x3R', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmdoR0taSlQ0OEtyOE5haUI4dEI1eVAzMHpvVkVCREl4WjhQSWtHWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvNDYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771738820),
('hd0ZldwMA8ZsltuZ1Fj94iYnQYuASWYReNerLqX1', NULL, '85.208.96.208', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiand1bUR3RUh4RDVKZmdwUk9EdHQ0MjlWVkJjNTBQWExvNEFYOHA1eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771728544),
('HGy0kUYVTH6e03Sft06BQrK81keUUmKT9aUS79WU', NULL, '51.68.247.214', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicm8xY2c3YUU1M0RCUW1aczllTW5MOFlkNkVzazBTOHJLRTNyc2M5eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNDgva2lkcy1qb24vJUUwJUE2JTk1JUUwJUE2JUJGJUUwJUE2JUExJUUwJUE2JUI4JTIwJUUwJUE2JTlDJUUwJUE3JThCJUUwJUE2JUE4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771893148),
('hqZRhFY0b7W9IU1JpVh5KHSblpAfr3wCI0yvQNcb', NULL, '185.191.171.14', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzJXbWVaaFREODl0RVpQN2UzY00zWXBnYVdYdkNRbHRqbzJOUjNadCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771741555),
('IJGppZ7Jf1lANUjJzxvlheDuklHp6s83DX0DxfCs', NULL, '5.39.1.239', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW42akNWdEZxTUFWa3htVGZBZm1TQ0tiOTRvb3RRd3ZhWmVwTlFGWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk5OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTgvb3RpcmlrdC1jaGFyZXItYmkvJUUwJUE2JTg1JUUwJUE2JUE0JUUwJUE2JUJGJUUwJUE2JUIwJUUwJUE2JUJGJUUwJUE2JTk1JUUwJUE3JThEJUUwJUE2JUE0JTIwJUUwJUE2JTlCJUUwJUE2JUJFJUUwJUE3JTlDJUUwJUE3JTg3JUUwJUE2JUIwJTIwJUUwJUE2JUFDJUUwJUE2JTg3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771877723),
('iL4qfQcP2CCRglQMCHtNkOTvjQeiRyloLLaAhnyG', NULL, '54.156.53.99', 'Mozilla/5.0 (Linux; Android 12; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWms0c0FoMkRyV1pMZ1IzTnFLRmhMbkZrRWpDdTZMRmRrbkhiNXNJUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771840988),
('IWBZosT1v1KAdlLDYIwcQn3v93v3DeLe2o7xeT5N', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVk4ZXRFZHZLRHJ4RnA3UTY5MGZnMFNoNnQwaTFLc1lpSEluOGw5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMjUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771736089),
('j5GxpMQCoYoSzYVtWP1iDTosBnvsO92Eakh7Or7h', NULL, '143.198.40.214', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEVmSGxOeEVaVm1VbFhSMVNGcVM0MXhkOVh5Znh6UkpJcnlYM1VSdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771750608),
('JcHPfil6MeAwboiJ54DWmVREHTadTujZOrtlYUyE', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnhFN29JRXlpWXBFdlplazdMa2F1SW1wZWVxeXFwaG13UFRLWm5jTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771725544),
('JdtBb9GzY5igRK7RTbBJgja5QfmBci5egXH4YR9J', NULL, '176.31.139.6', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHY5WFN3cFJFcW5JdTYyWklVQ0JmN3FxWXZwVldMOW14MjcyelpUNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjgvc2FiLW1lbnUtem9nLWtydW4yLyVFMCVBNiVCOCVFMCVBNiVCRSVFMCVBNiVBQyUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiVBRiVFMCVBNyU4QiVFMCVBNiU5NyUyMCVFMCVBNiU5NSVFMCVBNiVCMCVFMCVBNyU4MSVFMCVBNiVBODIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771895781),
('Jz1SwFcuqf77qLoocgdG8wbUuugSMH8kAyElzw8d', NULL, '93.158.91.249', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjVQblo4RGxLa2k3OWxoZmxTMmh2N2U4cjNBWEhvdG9ZY1d5OUxNTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771906134),
('KhlvD9ikHxANtUhdA3eIAQuZYCgZsK38PDcW1lvW', NULL, '5.39.1.233', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3JBUVBraWNSU09vME9yVmM1akFuUnBRd0hOMGN5TlR4TWhtdklpTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjUvc2FiLW1lbnUtem9nLWtydW4tMS8lRTAlQTYlQjglRTAlQTYlQkUlRTAlQTYlQUMlMjAlRTAlQTYlQUUlRTAlQTclODclRTAlQTYlQTglRTAlQTclODElMjAlRTAlQTYlQUYlRTAlQTclOEIlRTAlQTYlOTclMjAlRTAlQTYlOTUlRTAlQTYlQjAlRTAlQTclODElRTAlQTYlQTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771898299),
('KNyxgqRl7fULkSs5WbCftaiNLLwzjXdH4IWRX1ok', NULL, '85.208.96.200', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU1KOTB3Q014cW5IZGFjZE9BcWRoVHdSVm5GaFhtU1laNWk1b3R6cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771749145),
('kxnNSo8ZfycQwagwkGktJb8c0p6lc5zcMk4LHLrO', NULL, '93.158.91.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0NmNnZOTnpIeXdBUlM4TmtLQUVpR1ZQSldKUnFuMU1DM2d6eGZWVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771825878),
('ldTlKDMmr4AbqCrFQylaYrSRBdCmf2Cmo25NReSh', NULL, '85.208.96.207', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0tBZFNNdFk5RjN1bThSYjV2QU9aZENBaVFLUHVkcjZ6cG1vWGV0OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771761516),
('LHAMaJmVyqyw2MwVPPZoFaQQXSFaitzzzpo2a2N3', NULL, '85.208.96.210', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHJVTnlNNnNybnRJWERSSmFQM3RvOE00TWNCb2VzZklhMVpkWXpyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771732331),
('lsHv24giuc6JdZS6hCTo0dCfk7iUdya58xDw345m', NULL, '137.184.207.51', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkN3NENOTU12djVSUmRCNVFuMkNXTENHekxoZzRCMXB4U09yUnNndiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771741392),
('m5zcMyeoiIKCJ3MuryrtPeztizJfHYcfmnZr4lub', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHQyWFFITlJZaHRXZWRLcWpPZzhDMEhnbTBMNTk5NHhqQ09BRnY2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771762848),
('Mbrfm6Zr1zYZn15zkaPIPSlimC7gVBGqEyxUEPeh', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUNRYWhkcDZQWGtrR0VCUUxUeXZEOFRFWGppTldySmFFaWx0WWpRaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81OC9vdGlyaWt0LWNoYXJlci1iaS8lRTAlQTYlODUlRTAlQTYlQTQlRTAlQTYlQkYlRTAlQTYlQjAlRTAlQTYlQkYlRTAlQTYlOTUlRTAlQTclOEQlRTAlQTYlQTQlMjAlRTAlQTYlOUIlRTAlQTYlQkUlRTAlQTclOUMlRTAlQTclODclRTAlQTYlQjAlMjAlRTAlQTYlQUMlRTAlQTYlODciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771725539),
('nna6zmm61LQQYRBAwV9YSn94YCqN7VlVkQGesckc', NULL, '80.76.49.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0dLZmNSQmx1RkZQZ0oyTjJBOE9GYUp2a1dPckNDNDZ5Y2plZk5CNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771747911),
('nqO5btPpqG3m0rgXBEsojXdjDAVpP74yWrj95Daj', NULL, '43.153.47.201', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialU5ZGlPWEhrbHpmbFI1SE94clZibWRaa3l4dWlZWGhmVlBqbUVodCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771855712),
('o8pklKvOedpqrrchGxqhcMoVKSycJU5ZET5E6TZN', NULL, '143.198.40.214', 'Mozilla/5.0 (X11; Linux x86_64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVpDQlR5RVRUMUlRQmR4TGljbTlQa2QxRGc1d2IyQ1BLcUp2bXRsaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771750606),
('OkPBUs9dB5KWGeyhTH1hfhSk7AZCdNmAc6izNjkq', NULL, '80.76.49.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0FxWGdLZEswRDQyTFU2R3lYNklRbmxoQzhtc1ZlVkhyQ1pLMmg2ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771747911),
('OR3ysT3blf83oMrFlaKZLSNiU55jdb1esDphqrZZ', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFExU3pPd29jYTdROUgyVjFjTnFualRjRDlXejc0NTNTVVkxUXlTTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY0OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80L2VrYWRlbWlrLyVFMCVBNiU4NyVFMCVBNiVCMiVFMCVBNyU4NyVFMCVBNiU5NSVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSVFMCVBNyU4RCVFMCVBNiVCOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771738809),
('oTRR2Bk4oS3sXenY2mRDLz0EIFgdK3OJNVfAZZlD', NULL, '85.208.96.193', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW55ZXNMVlNLYWRCZVlWQWIzc3lRZGkzMEVIWTRKZDN0N1A0RTRQSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdudXAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771760304),
('PdikF5POcQgwjXSfQpVAaGWmPUXVQMhFjfVQxFjy', NULL, '93.158.91.239', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUJwenR5R1NueTlPMEtQb0lRMVVKMTVvSnlwSllCSFJKSU9idjhGaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ4OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS8yMy9hcm9vLW9uZWstbWVudS1la2hhbmUtaGJlLyVFMCVBNiU4NiVFMCVBNiVCMCVFMCVBNiU5MyUyMCVFMCVBNiU4NSVFMCVBNiVBOCVFMCVBNyU4NyVFMCVBNiU5NSUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiU4RiVFMCVBNiU5NiVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNyU4NyUyMCVFMCVBNiVCOSVFMCVBNiVBQyVFMCVBNyU4NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771906135),
('pEnPgc4ZTzvHdBuc68UjMQLGweQXlRKhlYtFa9x9', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2l3SmFmMlVJYjRVMW1ZU2xUUUZYR0NVR1h1dEVRdHAwWkZ4TUNZOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy83Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771803909),
('pGvanG0HvdBGxWbxqLv7nAiolIOE3Xg8i2vFL615', NULL, '185.191.171.19', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiand3eUhjeXZoWmx4S0M3VFJoMThFb09iaEJTTGlKcnhiVWZsQmxzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771751668),
('PkYPxOn7tTohWqRnBXtXrHqexyPFSb0tclAgA2VC', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEtuU0o2alJlNDFmVmc3djBJb1J3cUwyN1VMWjBxUTRjRjYyOTJpeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3Byb2R1Y3QvZGV0YWlscy8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771784852),
('PnlrKB0S7arY0rfs85CfNoIlae2vTTzqIijlWA3k', NULL, '185.191.171.9', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMldFTVdhNENVQzBzTEN0Tm1PMWpnbVJTbmhNYTVHbnBGdVpHemUxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9wcm9kdWN0L2RldGFpbHMvMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771729555),
('Q7CmttvFOETWY3zrMNS7pMxntLN2yOlquldgsyiW', NULL, '185.91.69.242', 'Mozilla/5.0 (X11; Linux i686; rv:114.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQktQbHlLZnJaNURadm9LWnR5ampDTFI2VWhzSjRacFp4ZTFXaFU5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvNDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771703419),
('QIc5QxMuY8oqLbZHMDHrkdMQHcXEAlJPlcngqK7R', NULL, '93.158.90.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTVnak1jSGo4VE1XMTVIUnFrdjZSdXJ1MWw0ajRlV2lXM0ZyaHdvRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771861146),
('QjeYcGvpC87lXw3MS5ndb2zJtu4jP5gzKzxwr5oe', NULL, '92.222.104.220', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmpjcm1YUEw5cVFPS0F5Q2dmRGtlMEZNdGF6b0JVRUd6M2o2U3RYUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ2OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNS9rYXJ0dW4tZXItZ2xwLyVFMCVBNiVCOCVFMCVBNyU4MSVFMCVBNiVBQSVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNyU4QiVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771891825),
('rO2uKec7qEZpDIVa6qA8fnLT8XtL0KacGbBGuQbL', NULL, '92.222.108.113', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3QxVDZWUlZyaURpazZKcWRCUFJCQnNPV2k3SjlLRmZua2N4T1I3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTgyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTQvdnJ0aS1wcnN0dXRpLyVFMCVBNiVBRCVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBNCVFMCVBNiVCRiUyMCVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiVBNCVFMCVBNyU4MSVFMCVBNiVBNCVFMCVBNiVCRiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771880790),
('rQexNDehxONjEoVlTXdwdCuKLJTBzorUoKUXrgA9', NULL, '37.59.204.128', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekMxZ2dmMDk1ZDRhTVZ1bVM3YUNYMllCYW1Wa3VNMUMzeWh5N283biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWduaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771876074),
('RVIDboY6gW7NbbdNrDd8WZJZVRq0MyfemqhKUXn9', NULL, '185.191.171.16', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEFBMFNneVJ0MHZqb1pMT29COHVYSDJZM1M0VDJ4WlJPVzBTakFGcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771761594),
('UbOhnOgwMMHRVt8Lm8rjpalovDP4417nk4ew21H8', NULL, '93.158.90.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXhKTUIxd3pncTRQdDRjZmhiT3UwT1laeWNIYmN1VUx0U09vNnA3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc2OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MC9iZXN0c2VsYXItb3phb296YXJkLTI1LyVFMCVBNiVBQyVFMCVBNyU4NyVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNiVCOCVFMCVBNyU4NyVFMCVBNiVCMiVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNyU4RCVFMCVBNiVBRiVFMCVBNiVCRSVFMCVBNiU5MyVFMCVBNiVBRiVFMCVBNiVCQyVFMCVBNiVCRSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSwlMjAlRTAlQTclQTglRTAlQTclQUIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771861144),
('uBrjfva9mCGhnUqZBONox31ZXrf7AQBMtmJHRTBI', NULL, '92.222.108.112', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzF3cVN5dTVZM3BKeXpwRFg0RDVMSnJ6c21lanBDSkd1bjVYTVZoYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771788156),
('v24iBFAk14LAKMq0u576SVaImhVT1Ik8fqRWZCy6', NULL, '107.21.11.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4093.0 Safari/537.36 Edg/83.0.470.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzNzUlA2T2dydTUwSERxcjlyS0FNZ2pnWUdnb2ZyWG5paktxYU40TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771825729),
('vCZGb7QUUVjwDYeHREfg8EmAdYqt4SdYfnudjraY', NULL, '185.191.171.15', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG1zSXk4UGVOSzhBeGFvWG1KNG5BajBwcTF1T05TRFJsNzhCM2xJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771739751),
('vdc33yFObC86isSUBZhioq2b0DHOVA9pKQwuUdqT', NULL, '85.208.96.197', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUE4TFQyRXI4TjRta3ZsSzNDMnVQTWRlcFZEWmNXVG1xU1NRM1BCMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771753062),
('Vkd724klFlyyek1MI5ZDY6EuvsvJpmuMVQbPKx5c', NULL, '185.191.171.7', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmg4TDE3a2NIMVk2STRSWHZySVJIblFUNkVIZWh3eWtqODJKaE9IaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771724782),
('wBLXrEqPUCKjfBavJZUohQduT1iUsGeY4lrRq8lQ', NULL, '176.31.139.21', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2RNV1R6NVZVOVpoUEJ6OWRzeWhMOVFXa3pCYmU5b2ZPOGxmUTg3QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAxOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMTcva2FydHVuLWdscGVyLWJ5ZXItc2tsLWJpLyVFMCVBNiVCMiVFMCVBNyU4NyVFMCVBNiU5NiVFMCVBNiU5NSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771901339),
('Wbynn7VwtOfNUGtHp1xzYsyEbSujIVnuCLoxjn5d', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUxWR3RQcng0c2FDUjFFZGxTSEJQNjhzRkhjZmRUR3B3dElPUEphSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771744216),
('WqDwGfl3BbaEi6B48HVtXqN6PpRIjP2qh3kYveUs', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDQ5Vjh1aGR3b0V6cTB5R0JKb0dJdnlPUHpMbkg4bFlYYUhwQXRIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81NS9pc2xhbWktYmkvJUUwJUE2JTg3JUUwJUE2JUI4JUUwJUE2JUIyJUUwJUE2JUJFJUUwJUE2JUFFJUUwJUE2JUJGJTIwJUUwJUE2JUFDJUUwJUE2JTg3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771749538),
('wTzPRoLEXLc0L3PfHq6XchoYzu0pvslUU6B8QCgm', NULL, '94.23.188.222', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVZpaDJwYXZSb0xLVTNWRm5hTDZZMFZ3YjZCRVBnRm1hZWo5eGZLWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTgxOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTYvaW5ncmVqaS12YXNoYXItYmkvJUUwJUE2JTg3JUUwJUE2JTgyJUUwJUE2JUIwJUUwJUE3JTg3JUUwJUE2JTlDJUUwJUE2JUJGJTIwJUUwJUE2JUFEJUUwJUE2JUJFJUUwJUE2JUI3JUUwJUE2JUJFJUUwJUE2JUIwJTIwJUUwJUE2JUFDJUUwJUE2JTg3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771879239),
('wYDZ6yH5TKd8Tgan8JwkoaBiswDgx87jYbwI5OPp', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlBKR25lMVFuazhRdXRQTm0wVnlGeHB4WGpRQzM5bTdFZXlYVWFHbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjMzOiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS80OS9wcmF0aXNodGhhbmlrLW9yZGFyLyVFMCVBNiVBQSVFMCVBNyU4RCVFMCVBNiVCMCVFMCVBNiVCRSVFMCVBNiVBNCVFMCVBNiVCRiVFMCVBNiVCNyVFMCVBNyU4RCVFMCVBNiVBMCVFMCVBNiVCRSVFMCVBNiVBOCVFMCVBNiVCRiVFMCVBNiU5NSUyMCVFMCVBNiU4NSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSVFMCVBNiVCRSVFMCVBNiVCMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771773493),
('Xi9J35nwdXYUL9WdUKfjnRkFf6PMj73U65dcbvFy', NULL, '93.158.90.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU21qR0tUc004c3dlTTJCTFRrRzlaNlo3bFBaT2tqWmxoMWd2WkJ1UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771861144),
('xoEiK533UTn7acfzSdyCyz9aHahPXhPt6EzLGG2r', NULL, '85.208.96.199', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkhhTDdoQldxbXV5MnVLOVVRQXFOTEF3TXV1THBsREppUGhWaENDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzIzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771768177),
('XSqeYX7fzneO35dpUBOm8WyXaVAmVHVPdmsQJAng', NULL, '93.158.98.56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGxxaVlBdGpZNVkxRWt6QWE5TXdBNGQzbnZVTDRXZWN0SWJ6RmhKWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc2OiJodHRwOi8vYm9va3NhbmRib29rc2JkLmNvbS9jYXRlZ29yeS81MC9iZXN0c2VsYXItb3phb296YXJkLTI1LyVFMCVBNiVBQyVFMCVBNyU4NyVFMCVBNiVCOCVFMCVBNyU4RCVFMCVBNiU5RiVFMCVBNiVCOCVFMCVBNyU4NyVFMCVBNiVCMiVFMCVBNiVCRSVFMCVBNiVCMCUyMCVFMCVBNiU4NSVFMCVBNyU4RCVFMCVBNiVBRiVFMCVBNiVCRSVFMCVBNiU5MyVFMCVBNiVBRiVFMCVBNiVCQyVFMCVBNiVCRSVFMCVBNiVCMCVFMCVBNyU4RCVFMCVBNiVBMSwlMjAlRTAlQTclQTglRTAlQTclQUIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771737882),
('YnCyr0tkvjQ3B1VktkI8XcMz5dBQTRY3kqTRlvhK', NULL, '137.184.207.51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWRiMFl2cThGQ052dExFMnNYTVBDM2E3NjIwUm9kdzVURVVwQ3NDVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmJvb2tzYW5kYm9va3NiZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771741394),
('ZdjQFpjxk4stWQj2d6H50aIX6TOwJR7LyZlzaNga', NULL, '85.208.96.205', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVB6NGlncjUwWHRtSHByNkxXYUhQMGIzYWdRdDEzaEhHSTFYV0dCQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWduaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771732334);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `primary_phone` varchar(255) DEFAULT NULL,
  `secondary_phone` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `office_time` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner_one` varchar(255) DEFAULT NULL,
  `banner_one_link` varchar(255) DEFAULT NULL,
  `banner_one_status` tinyint(1) NOT NULL DEFAULT 1,
  `banner_two` varchar(255) DEFAULT NULL,
  `banner_two_link` varchar(255) DEFAULT NULL,
  `banner_two_status` tinyint(1) NOT NULL DEFAULT 1,
  `page_heading_bg` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `facebook_page` varchar(255) DEFAULT NULL,
  `facebook_group` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `sms_api_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sms_api_url`)),
  `sms_api_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sms_api_key`)),
  `sms_api_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sms_api_id`)),
  `bkash_status` tinyint(1) NOT NULL DEFAULT 1,
  `nagad_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `title`, `primary_phone`, `secondary_phone`, `primary_email`, `secondary_email`, `office_time`, `address`, `description`, `banner_one`, `banner_one_link`, `banner_one_status`, `banner_two`, `banner_two_link`, `banner_two_status`, `page_heading_bg`, `meta_title`, `meta_keyword`, `meta_description`, `meta_image`, `google_map`, `favicon`, `logo`, `footer_logo`, `placeholder`, `facebook_page`, `facebook_group`, `youtube`, `twitter`, `linkedin`, `google`, `whatsapp`, `instagram`, `pinterest`, `sms_api_url`, `sms_api_key`, `sms_api_id`, `bkash_status`, `nagad_status`, `created_at`, `updated_at`) VALUES
(1, 'Books and Books', 'Books and Books', '01575020231', '01921588567', 'booksandbooks@gmail.com', 'booksandbooks@gmail.com', NULL, 'Aftabnager, Dhaka-1212', NULL, 'storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp', NULL, 1, NULL, NULL, 1, 'storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp', NULL, NULL, NULL, 'storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp', NULL, 'storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp', 'storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp', NULL, 'storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2026-01-19 05:10:51', '2026-02-02 04:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `mobile_image`, `link`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'storage/slider/2026-02-02-gGt84nAFmb4dz3DNvgQQ3bZmu6zD2Hrtv7UE6eHo.webp', 'storage/slider/2026-02-02-uGFIrrGWjnDroUQyWQt1nUaHPhPNDKBhgnEaT9Wz.webp', '#', 1, 1, 1, NULL, NULL, '2026-01-20 00:28:37', '2026-02-02 04:10:39'),
(2, 'storage/slider/2026-02-02-jEQIDlnRlmF2Q055Pk5S21Ql3fc1bQrEZ8E2FqI2.webp', 'storage/slider/2026-02-02-vk63QKQKXC62BQHLB4DbCA3jH6FIEbXs9oWV1UsP.webp', '#', 1, 1, 1, NULL, NULL, '2026-01-20 00:39:06', '2026-02-02 04:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `type` enum('purchase_receipt','sales','transfer_out','transfer_in','adjustment') NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uoms`
--

CREATE TABLE `uoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uoms`
--

INSERT INTO `uoms` (`id`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'UNIT', 'unit', 'UNit des', 1, 1, NULL, NULL, NULL, '2026-01-20 04:07:27', '2026-01-20 04:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_status` int(11) DEFAULT 0,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expire` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `phone`, `address`, `image`, `cover_image`, `status`, `email_verified_at`, `role_status`, `otp`, `otp_expire`, `password`, `remember_token`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'wali@gmail.com', '01575020231', 'Dhaka', NULL, NULL, 1, NULL, 1, NULL, NULL, '$2y$12$gKjdlJg51/QNpFugdCaHsOx05nZNn28nktM7kUBhWToaVwk0wcHfO', NULL, NULL, NULL, NULL, NULL, '2026-01-19 04:51:10', '2026-01-26 22:26:43'),
(2, 'Abdullah Al-Wasi', 'wasi', 'wasi@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$WAyduN/2SccBUdkF1.gILeTWcVRi/GTVU0qaC7ZUAeD8GCYDtFIvq', NULL, NULL, NULL, NULL, NULL, '2026-01-26 23:05:57', '2026-01-26 23:05:57'),
(3, 'warid', 'warid', 'warid@gmail.com', '55559999', 'H#5, R#4, Aftabanagar', 'storage/users/profile/2026-01-27-pQ8JiklKJo66CtAWiwxF4mONukP1Y5oEFBHT5TN1.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$m21rnvULrJK3aIZvXPlvl.EjP5lRJe7zRfxajqIQyQItvzq7fQMdu', NULL, NULL, NULL, NULL, NULL, '2026-01-27 00:03:34', '2026-01-27 05:14:38'),
(4, 'Sumon', NULL, 'sumon@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$2x5YHnPByWB/0rt/bF5NJ.kSB6/eTn1F9dHlUfZoSbCL55M5z8Gba', NULL, NULL, NULL, NULL, NULL, '2026-01-28 06:17:11', '2026-01-28 06:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `code`, `contact_person`, `email`, `phone`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Vendor123', 'vendor123', 'CODE123', 'Wali', 'wali@gmail.com', '33333333', 'dsds sdsdasddasda', 1, 1, NULL, NULL, NULL, '2026-01-20 04:13:33', '2026-01-20 04:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 3, 3, '2026-01-27 06:13:15', '2026-01-27 06:13:15'),
(8, 3, 12, '2026-01-27 06:15:50', '2026-01-27 06:15:50'),
(9, 3, 5, '2026-01-27 06:16:30', '2026-01-27 06:16:30'),
(10, 1, 10, '2026-01-27 23:04:48', '2026-01-27 23:04:48'),
(11, 3, 13, '2026-02-01 00:42:44', '2026-02-01 00:42:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menus_permission_id_foreign` (`permission_id`),
  ADD KEY `admin_menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `admin_menu_actions`
--
ALTER TABLE `admin_menu_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_actions_permission_id_foreign` (`permission_id`),
  ADD KEY `admin_menu_actions_admin_menu_id_foreign` (`admin_menu_id`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_created_by_foreign` (`created_by`),
  ADD KEY `attributes_updated_by_foreign` (`updated_by`),
  ADD KEY `attributes_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_values_created_by_foreign` (`created_by`),
  ADD KEY `attribute_values_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`),
  ADD KEY `authors_created_by_foreign` (`created_by`),
  ADD KEY `authors_updated_by_foreign` (`updated_by`),
  ADD KEY `authors_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`),
  ADD KEY `brands_created_by_foreign` (`created_by`),
  ADD KEY `brands_updated_by_foreign` (`updated_by`),
  ADD KEY `brands_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_updated_by_foreign` (`updated_by`),
  ADD KEY `categories_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `home_section_categories`
--
ALTER TABLE `home_section_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_section_categories_home_section_id_foreign` (`home_section_id`),
  ADD KEY `home_section_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_created_by_foreign` (`created_by`),
  ADD KEY `menus_updated_by_foreign` (`updated_by`),
  ADD KEY `menus_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_uom_id_foreign` (`uom_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_publication_id_foreign` (`publication_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_updated_by_foreign` (`updated_by`),
  ADD KEY `products_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `product_authors`
--
ALTER TABLE `product_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_authors_product_id_foreign` (`product_id`),
  ADD KEY `product_authors_author_id_foreign` (`author_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_values_product_variant_id_attribute_id_unique` (`product_variant_id`,`attribute_id`),
  ADD KEY `product_variant_values_product_id_foreign` (`product_id`),
  ADD KEY `product_variant_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_variant_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_vendors`
--
ALTER TABLE `product_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_vendors_product_id_foreign` (`product_id`),
  ADD KEY `product_vendors_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publications_slug_unique` (`slug`),
  ADD KEY `publications_created_by_foreign` (`created_by`),
  ADD KEY `publications_updated_by_foreign` (`updated_by`),
  ADD KEY `publications_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_orders_po_number_unique` (`po_number`),
  ADD KEY `purchase_orders_store_id_foreign` (`store_id`),
  ADD KEY `purchase_orders_vendor_id_foreign` (`vendor_id`),
  ADD KEY `purchase_orders_created_by_foreign` (`created_by`),
  ADD KEY `purchase_orders_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_orders_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_items_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_order_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_order_items_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `purchase_order_items_created_by_foreign` (`created_by`),
  ADD KEY `purchase_order_items_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_order_items_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `purchase_receipts`
--
ALTER TABLE `purchase_receipts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_receipts_receipt_number_unique` (`receipt_number`),
  ADD KEY `purchase_receipts_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_receipts_store_id_foreign` (`store_id`),
  ADD KEY `purchase_receipts_received_by_foreign` (`received_by`);

--
-- Indexes for table `purchase_receipt_items`
--
ALTER TABLE `purchase_receipt_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_receipt_items_purchase_receipt_id_foreign` (`purchase_receipt_id`),
  ADD KEY `purchase_receipt_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_receipt_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_foreign` (`created_by`),
  ADD KEY `sliders_updated_by_foreign` (`updated_by`),
  ADD KEY `sliders_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stocks_store_id_product_variant_id_unique` (`store_id`,`product_variant_id`),
  ADD KEY `stocks_product_id_foreign` (`product_id`),
  ADD KEY `stocks_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_movements_store_id_foreign` (`store_id`),
  ADD KEY `stock_movements_product_id_foreign` (`product_id`),
  ADD KEY `stock_movements_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `stock_movements_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_code_unique` (`code`),
  ADD KEY `stores_created_by_foreign` (`created_by`),
  ADD KEY `stores_updated_by_foreign` (`updated_by`),
  ADD KEY `stores_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `uoms`
--
ALTER TABLE `uoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uoms_slug_unique` (`slug`),
  ADD KEY `uoms_created_by_foreign` (`created_by`),
  ADD KEY `uoms_updated_by_foreign` (`updated_by`),
  ADD KEY `uoms_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_updated_by_foreign` (`updated_by`),
  ADD KEY `users_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`),
  ADD UNIQUE KEY `vendors_code_unique` (`code`),
  ADD KEY `vendors_created_by_foreign` (`created_by`),
  ADD KEY `vendors_updated_by_foreign` (`updated_by`),
  ADD KEY `vendors_deleted_by_foreign` (`deleted_by`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `admin_menu_actions`
--
ALTER TABLE `admin_menu_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_section_categories`
--
ALTER TABLE `home_section_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_authors`
--
ALTER TABLE `product_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_variant_values`
--
ALTER TABLE `product_variant_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_vendors`
--
ALTER TABLE `product_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_receipts`
--
ALTER TABLE `purchase_receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_receipt_items`
--
ALTER TABLE `purchase_receipt_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uoms`
--
ALTER TABLE `uoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD CONSTRAINT `admin_menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_menus_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_menu_actions`
--
ALTER TABLE `admin_menu_actions`
  ADD CONSTRAINT `admin_menu_actions_admin_menu_id_foreign` FOREIGN KEY (`admin_menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_menu_actions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `attributes_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `attributes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `attribute_values_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `authors_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `authors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD CONSTRAINT `home_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `home_section_categories`
--
ALTER TABLE `home_section_categories`
  ADD CONSTRAINT `home_section_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `home_section_categories_home_section_id_foreign` FOREIGN KEY (`home_section_id`) REFERENCES `home_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menus_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menus_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_publication_id_foreign` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uoms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_authors`
--
ALTER TABLE `product_authors`
  ADD CONSTRAINT `product_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_authors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD CONSTRAINT `product_variant_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_values_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_vendors`
--
ALTER TABLE `product_vendors`
  ADD CONSTRAINT `product_vendors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_vendors_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `publications_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `publications_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `publications_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_orders_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_orders_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD CONSTRAINT `purchase_order_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_order_items_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_order_items_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_order_items_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_receipts`
--
ALTER TABLE `purchase_receipts`
  ADD CONSTRAINT `purchase_receipts_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_receipts_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchase_receipts_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_receipt_items`
--
ALTER TABLE `purchase_receipt_items`
  ADD CONSTRAINT `purchase_receipt_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_receipt_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_receipt_items_purchase_receipt_id_foreign` FOREIGN KEY (`purchase_receipt_id`) REFERENCES `purchase_receipts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD CONSTRAINT `stock_movements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_movements_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_movements_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stores_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stores_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `uoms`
--
ALTER TABLE `uoms`
  ADD CONSTRAINT `uoms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `uoms_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `uoms_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vendors_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vendors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
