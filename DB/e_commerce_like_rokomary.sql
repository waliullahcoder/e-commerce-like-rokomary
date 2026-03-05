-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for e_commerce_like_rokomary
DROP DATABASE IF EXISTS `e_commerce_like_rokomary`;
CREATE DATABASE IF NOT EXISTS `e_commerce_like_rokomary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e_commerce_like_rokomary`;

-- Dumping structure for table e_commerce_like_rokomary.account_transactions
DROP TABLE IF EXISTS `account_transactions`;
CREATE TABLE IF NOT EXISTS `account_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_transaction_auto_id` bigint unsigned NOT NULL,
  `voucher_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `coa_id` bigint unsigned NOT NULL,
  `coa_head_code` bigint NOT NULL,
  `narration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `debit_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `credit_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` bigint unsigned DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_transactions_account_transaction_auto_id_foreign` (`account_transaction_auto_id`),
  KEY `account_transactions_coa_id_foreign` (`coa_id`),
  KEY `account_transactions_approved_by_foreign` (`approved_by`),
  KEY `account_transactions_created_by_foreign` (`created_by`),
  KEY `account_transactions_updated_by_foreign` (`updated_by`),
  KEY `account_transactions_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `account_transactions_account_transaction_auto_id_foreign` FOREIGN KEY (`account_transaction_auto_id`) REFERENCES `account_transaction_autos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `account_transactions_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `account_transactions_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `account_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `account_transactions_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `account_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.account_transactions: ~992 rows (approximately)
DELETE FROM `account_transactions`;

-- Dumping structure for table e_commerce_like_rokomary.account_transaction_autos
DROP TABLE IF EXISTS `account_transaction_autos`;
CREATE TABLE IF NOT EXISTS `account_transaction_autos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `voucher_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `coa_id` bigint unsigned NOT NULL,
  `coa_head_code` bigint NOT NULL,
  `narration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `debit_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `credit_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` bigint unsigned DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_transaction_autos_coa_id_foreign` (`coa_id`),
  KEY `account_transaction_autos_approved_by_foreign` (`approved_by`),
  KEY `account_transaction_autos_created_by_foreign` (`created_by`),
  KEY `account_transaction_autos_updated_by_foreign` (`updated_by`),
  KEY `account_transaction_autos_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `account_transaction_autos_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `account_transaction_autos_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `account_transaction_autos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `account_transaction_autos_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `account_transaction_autos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.account_transaction_autos: ~1,011 rows (approximately)
DELETE FROM `account_transaction_autos`;

-- Dumping structure for table e_commerce_like_rokomary.admin_menus
DROP TABLE IF EXISTS `admin_menus`;
CREATE TABLE IF NOT EXISTS `admin_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menus_permission_id_foreign` (`permission_id`),
  KEY `admin_menus_parent_id_foreign` (`parent_id`),
  CONSTRAINT `admin_menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_menus_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.admin_menus: ~45 rows (approximately)
DELETE FROM `admin_menus`;
INSERT INTO `admin_menus` (`id`, `permission_id`, `parent_id`, `name`, `route`, `icon`, `order`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'Dashboard', 'admin.dashboard', '<span class="material-symbols-outlined fs-22"> home_app_logo </span>', 1, 1, 1, '2026-01-19 05:33:09', '2026-01-19 05:33:09'),
	(2, 2, NULL, 'User & Role Manage', NULL, '<span class="material-symbols-outlined fs-22"> settings_cinematic_blur </span>', 2, 1, 1, '2026-01-19 05:34:47', '2026-02-25 23:25:47'),
	(3, 3, 2, 'Roles', 'admin.role.index', NULL, 1, 1, 1, '2026-01-19 05:35:46', '2026-01-19 05:35:46'),
	(4, 4, 2, 'Users', 'admin.user.index', NULL, 2, 1, 1, '2026-01-19 05:36:43', '2026-01-19 05:36:43'),
	(6, 6, 26, 'Admin Settings', 'admin.admin-settings.index', NULL, 4, 1, 1, '2026-01-19 05:37:50', '2026-02-25 23:45:51'),
	(9, 21, NULL, 'Books Management', NULL, '<span class="material-symbols-outlined fs-22"> menu_book </span>', 4, 1, 1, '2026-01-20 03:47:59', '2026-02-25 23:42:20'),
	(10, 22, 9, 'Category', 'admin.category.index', NULL, 4, 1, 1, '2026-01-20 03:49:56', '2026-01-20 03:49:56'),
	(11, 26, 9, 'Manage Book', 'admin.product.index', NULL, 4, 1, 1, '2026-01-20 03:56:07', '2026-02-25 23:43:47'),
	(12, 27, 9, 'UOM', 'admin.uom.index', NULL, 4, 1, 1, '2026-01-20 04:04:00', '2026-01-20 04:04:00'),
	(13, 28, 9, 'Brand', 'admin.brand.index', NULL, 4, 1, 1, '2026-01-20 04:04:36', '2026-01-20 04:04:36'),
	(15, 32, 9, 'Vendor', 'admin.vendor.index', NULL, 4, 1, 1, '2026-01-20 04:12:04', '2026-01-20 04:12:04'),
	(16, 34, 9, 'Attribute', 'admin.attribute.index', NULL, 4, 1, 1, '2026-01-20 04:19:04', '2026-01-20 04:19:04'),
	(17, 36, 9, 'publication', 'admin.publication.index', NULL, 4, 1, 1, '2026-01-20 04:22:54', '2026-01-20 04:22:54'),
	(18, 39, NULL, 'User Menu', NULL, NULL, 5, 0, 1, '2026-01-20 05:21:16', '2026-01-28 23:16:55'),
	(19, 40, 18, 'Main Menu', 'admin.menu.index', NULL, 5, 1, 1, '2026-01-20 05:22:04', '2026-01-20 05:22:04'),
	(21, 45, 27, 'UI Settings', 'admin.settings.index', NULL, 2, 1, 1, '2026-01-20 06:07:06', '2026-02-25 23:24:47'),
	(22, 47, 9, 'Author', 'admin.author.index', NULL, 5, 1, 1, '2026-01-22 04:29:15', '2026-01-22 04:29:15'),
	(23, 55, NULL, 'Orders Management', NULL, '<span class="material-symbols-outlined fs-22"> receipt_long </span>', 6, 1, 1, '2026-01-31 22:22:32', '2026-02-25 23:43:01'),
	(24, 56, 23, 'Order List', 'admin.orders.index', NULL, 6, 1, 1, '2026-01-31 22:25:06', '2026-01-31 22:28:50'),
	(25, 57, 27, 'Slider', 'admin.slider.index', '#', 2, 1, 1, '2026-02-02 04:09:16', '2026-02-25 23:45:04'),
	(26, 59, NULL, 'Business Setup', NULL, '<span class="material-symbols-outlined fs-24"> api </span>', 2, 1, 1, '2026-02-25 23:12:24', '2026-02-25 23:12:24'),
	(27, 60, NULL, 'Website Setup', NULL, '<span class="material-symbols-outlined fs-22"> build </span>', 11, 1, 1, '2026-02-25 23:23:51', '2026-03-02 01:02:23'),
	(28, 61, NULL, 'Inventory', NULL, '<span class="material-symbols-outlined fs-24"> inventory </span>', 8, 1, 1, '2026-02-26 01:33:52', '2026-02-26 01:33:52'),
	(29, 62, 28, 'Production', 'admin.production.index', NULL, 1, 1, 1, '2026-02-26 01:35:08', '2026-02-26 01:35:08'),
	(30, 65, 26, 'Stores', 'admin.store.index', NULL, 5, 1, 1, '2026-02-26 01:49:40', '2026-02-26 01:49:40'),
	(31, 68, 28, 'Stock', 'admin.stock-status.index', NULL, 2, 1, 1, '2026-02-26 02:01:06', '2026-02-26 02:01:06'),
	(32, 69, NULL, 'Investor Panel', NULL, '<span class="material-symbols-outlined fs-22"> account_balance </span>', 9, 1, 1, '2026-03-01 21:58:22', '2026-03-01 21:59:14'),
	(33, 70, 32, 'Investor', 'admin.investor.index', NULL, 1, 1, 1, '2026-03-01 22:00:26', '2026-03-01 22:02:17'),
	(34, 71, 32, 'Invest Process', 'admin.invest.index', NULL, 2, 1, 1, '2026-03-01 22:04:26', '2026-03-01 22:04:26'),
	(35, 72, 32, 'Profit Distribution', 'admin.profit-distribution.index', NULL, 3, 1, 1, '2026-03-01 22:06:32', '2026-03-01 22:06:32'),
	(36, 73, 32, 'Investor Payment', 'admin.investor-payment.index', NULL, 4, 1, 1, '2026-03-01 22:08:13', '2026-03-01 22:08:13'),
	(37, 74, 32, 'Invest Settlements', 'admin.invest-sattlement.index', NULL, 5, 1, 1, '2026-03-01 22:10:04', '2026-03-01 22:10:04'),
	(38, 75, 32, 'Investor Statement', 'admin.investor-statement.index', NULL, 6, 1, 1, '2026-03-01 22:15:11', '2026-03-01 22:15:11'),
	(39, 86, NULL, 'Sales Management', NULL, '<span class="material-symbols-outlined fs-24"> bar_chart_4_bars </span>', 5, 1, 1, '2026-03-01 22:34:26', '2026-03-02 02:35:58'),
	(40, 87, 39, 'Clients', 'admin.client.index', NULL, 1, 1, 1, '2026-03-01 22:42:47', '2026-03-01 22:42:47'),
	(41, 90, 39, 'Sales', 'admin.sales.index', NULL, 2, 1, 1, '2026-03-01 22:45:09', '2026-03-01 22:45:09'),
	(42, 93, 39, 'Collections', 'admin.collection.index', NULL, 3, 1, 1, '2026-03-01 22:50:23', '2026-03-01 22:50:23'),
	(43, 96, NULL, 'Reports', NULL, '<span class="material-symbols-outlined fs-22"> article </span>', 10, 1, 1, '2026-03-01 22:57:48', '2026-03-01 22:57:48'),
	(44, 97, 43, 'Sales Report', 'admin.sales-report.index', NULL, 1, 1, 1, '2026-03-01 23:55:22', '2026-03-01 23:55:22'),
	(45, 98, 43, 'Collection Report', 'admin.collection-report.index', NULL, 2, 1, 1, '2026-03-01 23:57:00', '2026-03-01 23:57:00'),
	(46, 99, 43, 'Sales Return Report', 'admin.sales-return-report.index', NULL, 3, 1, 1, '2026-03-02 00:03:47', '2026-03-02 00:03:47'),
	(47, 100, NULL, 'Expenses', 'admin.expense.index', '<span class="material-symbols-outlined fs-22"> payment </span>', 5, 1, 1, '2026-03-02 00:16:46', '2026-03-02 00:19:38'),
	(48, 104, 43, 'Income Statement', 'admin.income-statement.index', NULL, 4, 1, 1, '2026-03-02 00:29:11', '2026-03-02 00:29:11'),
	(49, 105, 26, 'Admin Menu', 'admin.admin-menu.index', NULL, 6, 1, 1, '2026-03-02 00:35:14', '2026-03-02 00:35:14'),
	(50, 113, NULL, 'Purchase Manage', NULL, '<span class="material-symbols-outlined fs-22"> receipt_long </span>', 4, 1, 1, '2026-03-02 02:34:09', '2026-03-02 02:39:06'),
	(51, 114, 50, 'Purchase Order', 'admin.purchase-order.index', NULL, 1, 1, 1, '2026-03-02 02:38:30', '2026-03-02 02:38:30'),
	(52, 117, 50, 'Purchase Create', 'admin.purchase-order.create', NULL, 2, 1, 1, '2026-03-02 23:47:17', '2026-03-02 23:47:17');

-- Dumping structure for table e_commerce_like_rokomary.admin_menu_actions
DROP TABLE IF EXISTS `admin_menu_actions`;
CREATE TABLE IF NOT EXISTS `admin_menu_actions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` bigint unsigned NOT NULL,
  `admin_menu_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_actions_permission_id_foreign` (`permission_id`),
  KEY `admin_menu_actions_admin_menu_id_foreign` (`admin_menu_id`),
  CONSTRAINT `admin_menu_actions_admin_menu_id_foreign` FOREIGN KEY (`admin_menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_menu_actions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.admin_menu_actions: ~54 rows (approximately)
DELETE FROM `admin_menu_actions`;
INSERT INTO `admin_menu_actions` (`id`, `permission_id`, `admin_menu_id`, `name`, `route`, `status`, `created_at`, `updated_at`) VALUES
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
	(33, 58, 25, 'edit', 'admin.slider.edit', 1, '2026-02-02 04:09:53', '2026-02-02 04:09:53'),
	(34, 63, 29, 'create', 'admin.production.create', 1, '2026-02-26 01:35:53', '2026-02-26 01:35:53'),
	(35, 64, 29, 'edit', 'admin.production.edit', 1, '2026-02-26 01:36:39', '2026-02-26 01:36:39'),
	(36, 66, 30, 'create', 'admin.store.create', 1, '2026-02-26 01:50:44', '2026-02-26 01:50:44'),
	(37, 67, 30, 'edit', 'admin.store.edit', 1, '2026-02-26 01:51:03', '2026-02-26 01:51:03'),
	(38, 76, 33, 'create', 'admin.investor.create', 1, '2026-03-01 22:17:06', '2026-03-01 22:17:06'),
	(40, 78, 34, 'create', 'admin.invest.create', 1, '2026-03-01 22:20:32', '2026-03-01 22:20:32'),
	(41, 79, 33, 'edit', 'admin.investor.edit', 1, '2026-03-01 22:21:50', '2026-03-01 22:21:50'),
	(42, 80, 35, 'create', 'admin.profit-distribution.create', 1, '2026-03-01 22:22:35', '2026-03-01 22:22:35'),
	(43, 81, 35, 'show', 'admin.profit-distribution.show', 1, '2026-03-01 22:24:39', '2026-03-01 22:24:39'),
	(44, 82, 36, 'create', 'admin.investor-payment.create', 1, '2026-03-01 22:25:41', '2026-03-01 22:25:41'),
	(45, 83, 36, 'edit', 'admin.investor-payment.edit', 1, '2026-03-01 22:26:02', '2026-03-01 22:26:02'),
	(46, 84, 37, 'create', 'admin.invest-sattlement.create', 1, '2026-03-01 22:26:57', '2026-03-01 22:26:57'),
	(47, 85, 37, 'show', 'admin.invest-sattlement.show', 1, '2026-03-01 22:27:09', '2026-03-01 22:27:09'),
	(48, 88, 40, 'create', 'admin.client.create', 1, '2026-03-01 22:43:16', '2026-03-01 22:43:16'),
	(49, 89, 40, 'edit', 'admin.client.edit', 1, '2026-03-01 22:43:27', '2026-03-01 22:43:27'),
	(50, 91, 41, 'create', 'admin.sales.create', 1, '2026-03-01 22:46:57', '2026-03-01 22:46:57'),
	(51, 92, 41, 'show', 'admin.sales.show', 1, '2026-03-01 22:47:20', '2026-03-01 22:47:20'),
	(52, 94, 42, 'create', 'admin.collection.create', 1, '2026-03-01 22:51:54', '2026-03-01 22:51:54'),
	(53, 95, 42, 'show', 'admin.collection.show', 1, '2026-03-01 22:52:07', '2026-03-01 22:52:07'),
	(55, 102, 47, 'create', 'admin.expense.create', 1, '2026-03-02 00:20:20', '2026-03-02 00:20:20'),
	(56, 103, 47, 'show', 'admin.expense.show', 1, '2026-03-02 00:21:24', '2026-03-02 00:21:24'),
	(57, 106, 49, 'create', 'admin.admin-menu.create', 1, '2026-03-02 00:51:22', '2026-03-02 00:51:22'),
	(58, 107, 49, 'edit', 'admin.admin-menu.edit', 1, '2026-03-02 00:52:37', '2026-03-02 00:52:37'),
	(59, 108, 49, 'view actions', 'admin.admin-menu-action.index', 1, '2026-03-02 00:56:38', '2026-03-02 00:56:38'),
	(60, 109, 49, 'create action', 'admin.admin-menu-action.create', 1, '2026-03-02 00:57:37', '2026-03-02 00:57:37'),
	(61, 110, 49, 'edit action', 'admin.admin-menu-action.edit', 1, '2026-03-02 00:58:54', '2026-03-02 00:58:54'),
	(62, 111, 49, 'delete action', 'admin.admin-menu-action.destroy', 1, '2026-03-02 00:59:45', '2026-03-02 00:59:45'),
	(63, 112, 49, 'destroy', 'admin.admin-menu.destroy', 1, '2026-03-02 01:00:30', '2026-03-02 01:00:30'),
	(64, 115, 51, 'create', 'admin.purchase-order.create', 1, '2026-03-02 02:39:57', '2026-03-02 02:39:57'),
	(65, 116, 51, 'show', 'admin.purchase-order.show', 1, '2026-03-02 02:40:17', '2026-03-02 02:40:17');

-- Dumping structure for table e_commerce_like_rokomary.admin_settings
DROP TABLE IF EXISTS `admin_settings`;
CREATE TABLE IF NOT EXISTS `admin_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.admin_settings: ~1 rows (approximately)
DELETE FROM `admin_settings`;
INSERT INTO `admin_settings` (`id`, `logo`, `small_logo`, `favicon`, `title`, `footer_text`, `primary_color`, `secondary_color`, `facebook`, `twitter`, `linkedin`, `whatsapp`, `google`, `created_at`, `updated_at`) VALUES
	(1, 'storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp', 'storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp', 'storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp', 'Books', 'sdfsdfsdf', '#e80c9b', '#18ba64', 'sdfs', 'fsdf', 'sdfsd', 'dfsdf', NULL, '2026-01-19 05:04:11', '2026-01-19 05:04:11');

-- Dumping structure for table e_commerce_like_rokomary.areas
DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `region_id` bigint unsigned NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `incharge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areas_code_unique` (`code`),
  KEY `areas_region_id_foreign` (`region_id`),
  KEY `areas_created_by_foreign` (`created_by`),
  KEY `areas_updated_by_foreign` (`updated_by`),
  KEY `areas_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `areas_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `areas_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `areas_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `areas_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.areas: ~51 rows (approximately)
DELETE FROM `areas`;
INSERT INTO `areas` (`id`, `region_id`, `code`, `name`, `incharge`, `phone`, `email`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'নীলক্ষেত', NULL, NULL, NULL, NULL, 1, 1, 10, NULL, NULL, '2025-07-22 03:18:40', '2025-10-26 00:13:31'),
	(2, 2, NULL, 'ভোলা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:52:58', '2025-10-25 23:52:58'),
	(3, 5, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:04:06', '2025-10-26 00:04:06'),
	(4, 2, NULL, 'পটুয়াখালী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:05:53', '2025-10-26 00:05:53'),
	(5, 5, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:07:44', '2025-10-26 00:07:44'),
	(6, 4, NULL, 'শেরপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:08:25', '2025-10-26 00:08:25'),
	(7, 3, NULL, 'কুষ্টিয়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:09:43', '2025-10-26 00:09:43'),
	(8, 6, NULL, 'গাইবান্ধা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:10:24', '2025-10-26 00:10:24'),
	(9, 6, NULL, 'দিনাজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:14:44', '2025-10-26 00:14:44'),
	(10, 6, NULL, 'লালমনিরহাট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:15:15', '2025-10-26 00:15:15'),
	(11, 1, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:15:47', '2025-10-26 00:15:47'),
	(12, 5, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:16:47', '2025-10-26 00:16:47'),
	(13, 5, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:17:29', '2025-10-26 00:17:29'),
	(14, 9, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:19:33', '2025-10-26 00:19:33'),
	(15, 5, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:31:22', '2025-10-26 00:31:22'),
	(16, 7, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 01:11:55', '2025-10-26 01:11:55'),
	(17, 7, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-30 05:19:41', '2025-10-26 01:12:36', '2025-10-30 05:19:41'),
	(18, 7, NULL, 'ফেনী', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-30 05:19:47', '2025-10-26 01:12:56', '2025-10-30 05:19:47'),
	(19, 7, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-30 05:19:12', '2025-10-26 01:13:17', '2025-10-30 05:19:12'),
	(20, 1, NULL, 'সাভার', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 04:29:58', '2025-10-30 04:29:58'),
	(21, 1, NULL, 'মুন্সীগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 04:34:11', '2025-11-01 01:20:01'),
	(22, 1, NULL, 'মাধবদী,নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 04:35:11', '2025-11-01 01:26:48'),
	(23, 1, NULL, 'গাজীপুর, মাওনা', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 05:10:16', '2025-10-30 05:10:40'),
	(24, 2, NULL, 'পিরোজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:11:18', '2025-10-30 05:11:18'),
	(25, 2, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:11:45', '2025-10-30 05:11:45'),
	(26, 3, NULL, 'যশোর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:12:55', '2025-10-30 05:12:55'),
	(27, 3, NULL, 'নোয়াপাড়া, খুলনা', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-30 05:14:38', '2025-11-01 00:30:35'),
	(28, 4, NULL, 'জামালপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:15:09', '2025-10-30 05:15:09'),
	(29, 4, NULL, 'নেত্রকোনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:15:31', '2025-10-30 05:15:31'),
	(30, 4, NULL, 'টাঙ্গাইল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:15:56', '2025-10-30 05:15:56'),
	(31, 4, NULL, 'ময়মনসিংহ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:17:27', '2025-10-30 05:17:27'),
	(32, 7, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:17:49', '2025-10-30 05:17:49'),
	(33, 7, NULL, 'চট্টগ্রাম', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:18:09', '2025-10-30 05:18:09'),
	(34, 7, NULL, 'ফেনী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:18:28', '2025-10-30 05:18:28'),
	(35, 7, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:18:42', '2025-10-30 05:18:42'),
	(36, 8, NULL, 'সিলেট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:20:59', '2025-10-30 05:20:59'),
	(37, 8, NULL, 'হবিগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:21:36', '2025-10-30 05:21:36'),
	(38, 8, NULL, 'মৌলভীবাজার', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:22:37', '2025-10-30 05:22:37'),
	(39, 8, NULL, 'সুনামগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:23:16', '2025-10-30 05:23:16'),
	(40, 5, NULL, 'সিরাজগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:23:36', '2025-10-30 05:23:36'),
	(41, 5, NULL, 'পাবনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:23:56', '2025-10-30 05:23:56'),
	(42, 5, NULL, 'রাজশাহী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:24:37', '2025-10-30 05:24:37'),
	(43, 5, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:54:26', '2025-10-30 05:25:11', '2025-11-01 01:54:26'),
	(44, 6, NULL, 'রংপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:25:35', '2025-10-30 05:25:35'),
	(45, 6, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-30 05:26:38', '2025-10-30 05:26:38'),
	(46, 3, NULL, 'খুলনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:30:57', '2025-11-01 00:30:57'),
	(47, 1, NULL, 'মালিবাগ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:08:45', '2025-11-01 01:08:45'),
	(48, 2, NULL, 'ঝালকাঠি', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:17:09', '2025-11-01 01:17:09'),
	(49, 1, NULL, 'নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:20:16', '2025-11-01 01:20:16'),
	(50, 2, NULL, 'বরিশাল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:05:45', '2025-11-02 03:05:45'),
	(51, 1, NULL, 'বাংলা বাজার', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-24 05:20:36', '2026-01-24 05:20:36');

-- Dumping structure for table e_commerce_like_rokomary.attributes
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_slug_unique` (`slug`),
  KEY `attributes_created_by_foreign` (`created_by`),
  KEY `attributes_updated_by_foreign` (`updated_by`),
  KEY `attributes_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `attributes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `attributes_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `attributes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.attributes: ~1 rows (approximately)
DELETE FROM `attributes`;
INSERT INTO `attributes` (`id`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'attrbuts', 'attrbuts', 'zzzxczxcz', 1, 1, NULL, NULL, NULL, '2026-01-20 04:21:28', '2026-01-20 04:21:28');

-- Dumping structure for table e_commerce_like_rokomary.attribute_values
DROP TABLE IF EXISTS `attribute_values`;
CREATE TABLE IF NOT EXISTS `attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  KEY `attribute_values_created_by_foreign` (`created_by`),
  KEY `attribute_values_updated_by_foreign` (`updated_by`),
  CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attribute_values_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `attribute_values_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.attribute_values: ~0 rows (approximately)
DELETE FROM `attribute_values`;

-- Dumping structure for table e_commerce_like_rokomary.authors
DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authors_slug_unique` (`slug`),
  KEY `authors_created_by_foreign` (`created_by`),
  KEY `authors_updated_by_foreign` (`updated_by`),
  KEY `authors_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `authors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `authors_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `authors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.authors: ~2 rows (approximately)
DELETE FROM `authors`;
INSERT INTO `authors` (`id`, `name`, `slug`, `image`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ', 'author-name-test', 'storage/author/2026-01-22-zeIQ6hqzq0S5fMSdNwjKvP71YvOQVfeDJdi8CtFq.webp', NULL, 'sadas', 1, 1, NULL, NULL, NULL, '2026-01-22 04:32:15', '2026-01-22 04:32:15'),
	(2, 'জন সি মাক্সওয়েল', 'jn-si-makswel', 'storage/author/2026-01-22-T02ZWzSpmM23u47w1cOI5T34THWIlNdQq4nuDjUA.webp', NULL, 'জন সি মাক্সওয়েল', 1, 1, 1, NULL, NULL, '2026-01-22 04:32:35', '2026-02-02 05:31:07');

-- Dumping structure for table e_commerce_like_rokomary.brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_slug_unique` (`slug`),
  KEY `brands_created_by_foreign` (`created_by`),
  KEY `brands_updated_by_foreign` (`updated_by`),
  KEY `brands_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `brands_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `brands_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.brands: ~1 rows (approximately)
DELETE FROM `brands`;
INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'BRAND NAME WASKER', 'brand-name-wasker', 'storage/brand/2026-01-20-mH033TDt5IhVVLvH7rpLvNfYNUawDwaI0kR4lDnL.webp', 'sdsdsadasd', 1, 1, NULL, NULL, NULL, '2026-01-20 04:10:04', '2026-01-20 04:10:04');

-- Dumping structure for table e_commerce_like_rokomary.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.cache: ~3 rows (approximately)
DELETE FROM `cache`;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('books_books_cache_admin_menus', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:6:{i:0;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:1;s:13:"permission_id";i:1;s:9:"parent_id";N;s:4:"name";s:9:"Dashboard";s:5:"route";s:15:"admin.dashboard";s:4:"icon";s:68:"<span class="material-symbols-outlined fs-22"> home_app_logo </span>";s:5:"order";i:1;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:33:09";s:10:"updated_at";s:19:"2026-01-19 11:33:09";}s:11:"\0*\0original";a:11:{s:2:"id";i:1;s:13:"permission_id";i:1;s:9:"parent_id";N;s:4:"name";s:9:"Dashboard";s:5:"route";s:15:"admin.dashboard";s:4:"icon";s:68:"<span class="material-symbols-outlined fs-22"> home_app_logo </span>";s:5:"order";i:1;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:33:09";s:10:"updated_at";s:19:"2026-01-19 11:33:09";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:2:{s:8:"children";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:7:"actions";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:1;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:2;s:13:"permission_id";i:2;s:9:"parent_id";N;s:4:"name";s:15:"System Settings";s:5:"route";N;s:4:"icon";s:78:"<span class="material-symbols-outlined fs-22"> settings_cinematic_blur </span>";s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:34:47";s:10:"updated_at";s:19:"2026-01-19 11:34:47";}s:11:"\0*\0original";a:11:{s:2:"id";i:2;s:13:"permission_id";i:2;s:9:"parent_id";N;s:4:"name";s:15:"System Settings";s:5:"route";N;s:4:"icon";s:78:"<span class="material-symbols-outlined fs-22"> settings_cinematic_blur </span>";s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:34:47";s:10:"updated_at";s:19:"2026-01-19 11:34:47";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:2:{s:8:"children";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:4:{i:0;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:3;s:13:"permission_id";i:3;s:9:"parent_id";i:2;s:4:"name";s:5:"Roles";s:5:"route";s:16:"admin.role.index";s:4:"icon";N;s:5:"order";i:1;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:35:46";s:10:"updated_at";s:19:"2026-01-19 11:35:46";}s:11:"\0*\0original";a:11:{s:2:"id";i:3;s:13:"permission_id";i:3;s:9:"parent_id";i:2;s:4:"name";s:5:"Roles";s:5:"route";s:16:"admin.role.index";s:4:"icon";N;s:5:"order";i:1;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:35:46";s:10:"updated_at";s:19:"2026-01-19 11:35:46";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:1;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:4;s:13:"permission_id";i:4;s:9:"parent_id";i:2;s:4:"name";s:5:"Users";s:5:"route";s:16:"admin.user.index";s:4:"icon";N;s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:36:43";s:10:"updated_at";s:19:"2026-01-19 11:36:43";}s:11:"\0*\0original";a:11:{s:2:"id";i:4;s:13:"permission_id";i:4;s:9:"parent_id";i:2;s:4:"name";s:5:"Users";s:5:"route";s:16:"admin.user.index";s:4:"icon";N;s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:36:43";s:10:"updated_at";s:19:"2026-01-19 11:36:43";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:2;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:25;s:13:"permission_id";i:57;s:9:"parent_id";i:2;s:4:"name";s:6:"Slider";s:5:"route";s:18:"admin.slider.index";s:4:"icon";s:1:"#";s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-02-02 10:09:16";s:10:"updated_at";s:19:"2026-02-02 10:09:16";}s:11:"\0*\0original";a:11:{s:2:"id";i:25;s:13:"permission_id";i:57;s:9:"parent_id";i:2;s:4:"name";s:6:"Slider";s:5:"route";s:18:"admin.slider.index";s:4:"icon";s:1:"#";s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-02-02 10:09:16";s:10:"updated_at";s:19:"2026-02-02 10:09:16";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:3;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:6;s:13:"permission_id";i:6;s:9:"parent_id";i:2;s:4:"name";s:14:"Admin Settings";s:5:"route";s:26:"admin.admin-settings.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:37:50";s:10:"updated_at";s:19:"2026-01-19 11:37:50";}s:11:"\0*\0original";a:11:{s:2:"id";i:6;s:13:"permission_id";i:6;s:9:"parent_id";i:2;s:4:"name";s:14:"Admin Settings";s:5:"route";s:26:"admin.admin-settings.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:37:50";s:10:"updated_at";s:19:"2026-01-19 11:37:50";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:7:"actions";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:2;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:21;s:13:"permission_id";i:45;s:9:"parent_id";N;s:4:"name";s:8:"settings";s:5:"route";s:20:"admin.settings.index";s:4:"icon";N;s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 12:07:06";s:10:"updated_at";s:19:"2026-01-20 12:07:06";}s:11:"\0*\0original";a:11:{s:2:"id";i:21;s:13:"permission_id";i:45;s:9:"parent_id";N;s:4:"name";s:8:"settings";s:5:"route";s:20:"admin.settings.index";s:4:"icon";N;s:5:"order";i:2;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 12:07:06";s:10:"updated_at";s:19:"2026-01-20 12:07:06";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:2:{s:8:"children";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:7:"actions";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:3;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:5;s:13:"permission_id";i:5;s:9:"parent_id";N;s:4:"name";s:10:"Admin Menu";s:5:"route";s:22:"admin.admin-menu.index";s:4:"icon";N;s:5:"order";i:3;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:37:27";s:10:"updated_at";s:19:"2026-01-20 08:51:54";}s:11:"\0*\0original";a:11:{s:2:"id";i:5;s:13:"permission_id";i:5;s:9:"parent_id";N;s:4:"name";s:10:"Admin Menu";s:5:"route";s:22:"admin.admin-menu.index";s:4:"icon";N;s:5:"order";i:3;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-19 11:37:27";s:10:"updated_at";s:19:"2026-01-20 08:51:54";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:2:{s:8:"children";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:7:"actions";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:7:{i:0;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:1;s:13:"permission_id";i:7;s:13:"admin_menu_id";i:5;s:4:"name";s:6:"create";s:5:"route";s:23:"admin.admin-menu.create";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:02";s:10:"updated_at";s:19:"2026-01-19 11:39:02";}s:11:"\0*\0original";a:8:{s:2:"id";i:1;s:13:"permission_id";i:7;s:13:"admin_menu_id";i:5;s:4:"name";s:6:"create";s:5:"route";s:23:"admin.admin-menu.create";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:02";s:10:"updated_at";s:19:"2026-01-19 11:39:02";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:1;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:13:"permission_id";i:8;s:13:"admin_menu_id";i:5;s:4:"name";s:4:"edit";s:5:"route";s:21:"admin.admin-menu.edit";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:14";s:10:"updated_at";s:19:"2026-01-19 11:39:14";}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:13:"permission_id";i:8;s:13:"admin_menu_id";i:5;s:4:"name";s:4:"edit";s:5:"route";s:21:"admin.admin-menu.edit";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:14";s:10:"updated_at";s:19:"2026-01-19 11:39:14";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:2;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:3;s:13:"permission_id";i:9;s:13:"admin_menu_id";i:5;s:4:"name";s:6:"delete";s:5:"route";s:24:"admin.admin-menu.destroy";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:24";s:10:"updated_at";s:19:"2026-01-19 11:39:24";}s:11:"\0*\0original";a:8:{s:2:"id";i:3;s:13:"permission_id";i:9;s:13:"admin_menu_id";i:5;s:4:"name";s:6:"delete";s:5:"route";s:24:"admin.admin-menu.destroy";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:24";s:10:"updated_at";s:19:"2026-01-19 11:39:24";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:3;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:4;s:13:"permission_id";i:10;s:13:"admin_menu_id";i:5;s:4:"name";s:12:"view actions";s:5:"route";s:29:"admin.admin-menu-action.index";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:36";s:10:"updated_at";s:19:"2026-01-19 11:39:36";}s:11:"\0*\0original";a:8:{s:2:"id";i:4;s:13:"permission_id";i:10;s:13:"admin_menu_id";i:5;s:4:"name";s:12:"view actions";s:5:"route";s:29:"admin.admin-menu-action.index";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:36";s:10:"updated_at";s:19:"2026-01-19 11:39:36";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:4;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:5;s:13:"permission_id";i:11;s:13:"admin_menu_id";i:5;s:4:"name";s:13:"create action";s:5:"route";s:30:"admin.admin-menu-action.create";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:45";s:10:"updated_at";s:19:"2026-01-19 11:39:45";}s:11:"\0*\0original";a:8:{s:2:"id";i:5;s:13:"permission_id";i:11;s:13:"admin_menu_id";i:5;s:4:"name";s:13:"create action";s:5:"route";s:30:"admin.admin-menu-action.create";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:39:45";s:10:"updated_at";s:19:"2026-01-19 11:39:45";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:5;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:6;s:13:"permission_id";i:12;s:13:"admin_menu_id";i:5;s:4:"name";s:11:"edit action";s:5:"route";s:28:"admin.admin-menu-action.edit";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:40:14";s:10:"updated_at";s:19:"2026-01-19 11:40:14";}s:11:"\0*\0original";a:8:{s:2:"id";i:6;s:13:"permission_id";i:12;s:13:"admin_menu_id";i:5;s:4:"name";s:11:"edit action";s:5:"route";s:28:"admin.admin-menu-action.edit";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:40:14";s:10:"updated_at";s:19:"2026-01-19 11:40:14";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:6;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:7;s:13:"permission_id";i:13;s:13:"admin_menu_id";i:5;s:4:"name";s:13:"delete action";s:5:"route";s:31:"admin.admin-menu-action.destroy";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:40:27";s:10:"updated_at";s:19:"2026-01-19 11:40:27";}s:11:"\0*\0original";a:8:{s:2:"id";i:7;s:13:"permission_id";i:13;s:13:"admin_menu_id";i:5;s:4:"name";s:13:"delete action";s:5:"route";s:31:"admin.admin-menu-action.destroy";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-19 11:40:27";s:10:"updated_at";s:19:"2026-01-19 11:40:27";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:4;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:9;s:13:"permission_id";i:21;s:9:"parent_id";N;s:4:"name";s:8:"Products";s:5:"route";N;s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 09:47:59";s:10:"updated_at";s:19:"2026-01-20 09:55:33";}s:11:"\0*\0original";a:11:{s:2:"id";i:9;s:13:"permission_id";i:21;s:9:"parent_id";N;s:4:"name";s:8:"Products";s:5:"route";N;s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 09:47:59";s:10:"updated_at";s:19:"2026-01-20 09:55:33";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:2:{s:8:"children";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:8:{i:0;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:10;s:13:"permission_id";i:22;s:9:"parent_id";i:9;s:4:"name";s:8:"Category";s:5:"route";s:20:"admin.category.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 09:49:56";s:10:"updated_at";s:19:"2026-01-20 09:49:56";}s:11:"\0*\0original";a:11:{s:2:"id";i:10;s:13:"permission_id";i:22;s:9:"parent_id";i:9;s:4:"name";s:8:"Category";s:5:"route";s:20:"admin.category.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 09:49:56";s:10:"updated_at";s:19:"2026-01-20 09:49:56";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:1;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:11;s:13:"permission_id";i:26;s:9:"parent_id";i:9;s:4:"name";s:14:"Product Manage";s:5:"route";s:19:"admin.product.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 09:56:07";s:10:"updated_at";s:19:"2026-01-20 09:56:07";}s:11:"\0*\0original";a:11:{s:2:"id";i:11;s:13:"permission_id";i:26;s:9:"parent_id";i:9;s:4:"name";s:14:"Product Manage";s:5:"route";s:19:"admin.product.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 09:56:07";s:10:"updated_at";s:19:"2026-01-20 09:56:07";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:2;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:12;s:13:"permission_id";i:27;s:9:"parent_id";i:9;s:4:"name";s:3:"UOM";s:5:"route";s:15:"admin.uom.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:04:00";s:10:"updated_at";s:19:"2026-01-20 10:04:00";}s:11:"\0*\0original";a:11:{s:2:"id";i:12;s:13:"permission_id";i:27;s:9:"parent_id";i:9;s:4:"name";s:3:"UOM";s:5:"route";s:15:"admin.uom.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:04:00";s:10:"updated_at";s:19:"2026-01-20 10:04:00";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:3;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:13;s:13:"permission_id";i:28;s:9:"parent_id";i:9;s:4:"name";s:5:"Brand";s:5:"route";s:17:"admin.brand.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:04:36";s:10:"updated_at";s:19:"2026-01-20 10:04:36";}s:11:"\0*\0original";a:11:{s:2:"id";i:13;s:13:"permission_id";i:28;s:9:"parent_id";i:9;s:4:"name";s:5:"Brand";s:5:"route";s:17:"admin.brand.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:04:36";s:10:"updated_at";s:19:"2026-01-20 10:04:36";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:4;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:15;s:13:"permission_id";i:32;s:9:"parent_id";i:9;s:4:"name";s:6:"Vendor";s:5:"route";s:18:"admin.vendor.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:12:04";s:10:"updated_at";s:19:"2026-01-20 10:12:04";}s:11:"\0*\0original";a:11:{s:2:"id";i:15;s:13:"permission_id";i:32;s:9:"parent_id";i:9;s:4:"name";s:6:"Vendor";s:5:"route";s:18:"admin.vendor.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:12:04";s:10:"updated_at";s:19:"2026-01-20 10:12:04";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:5;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:16;s:13:"permission_id";i:34;s:9:"parent_id";i:9;s:4:"name";s:9:"Attribute";s:5:"route";s:21:"admin.attribute.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:19:04";s:10:"updated_at";s:19:"2026-01-20 10:19:04";}s:11:"\0*\0original";a:11:{s:2:"id";i:16;s:13:"permission_id";i:34;s:9:"parent_id";i:9;s:4:"name";s:9:"Attribute";s:5:"route";s:21:"admin.attribute.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:19:04";s:10:"updated_at";s:19:"2026-01-20 10:19:04";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:6;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:17;s:13:"permission_id";i:36;s:9:"parent_id";i:9;s:4:"name";s:11:"publication";s:5:"route";s:23:"admin.publication.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:22:54";s:10:"updated_at";s:19:"2026-01-20 10:22:54";}s:11:"\0*\0original";a:11:{s:2:"id";i:17;s:13:"permission_id";i:36;s:9:"parent_id";i:9;s:4:"name";s:11:"publication";s:5:"route";s:23:"admin.publication.index";s:4:"icon";N;s:5:"order";i:4;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-20 10:22:54";s:10:"updated_at";s:19:"2026-01-20 10:22:54";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:7;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:22;s:13:"permission_id";i:47;s:9:"parent_id";i:9;s:4:"name";s:6:"Author";s:5:"route";s:18:"admin.author.index";s:4:"icon";N;s:5:"order";i:5;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-22 10:29:15";s:10:"updated_at";s:19:"2026-01-22 10:29:15";}s:11:"\0*\0original";a:11:{s:2:"id";i:22;s:13:"permission_id";i:47;s:9:"parent_id";i:9;s:4:"name";s:6:"Author";s:5:"route";s:18:"admin.author.index";s:4:"icon";N;s:5:"order";i:5;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-01-22 10:29:15";s:10:"updated_at";s:19:"2026-01-22 10:29:15";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:7:"actions";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:3:{i:0;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:13;s:13:"permission_id";i:23;s:13:"admin_menu_id";i:9;s:4:"name";s:6:"create";s:5:"route";s:20:"admin.product.create";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-20 09:51:53";s:10:"updated_at";s:19:"2026-01-20 09:51:53";}s:11:"\0*\0original";a:8:{s:2:"id";i:13;s:13:"permission_id";i:23;s:13:"admin_menu_id";i:9;s:4:"name";s:6:"create";s:5:"route";s:20:"admin.product.create";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-20 09:51:53";s:10:"updated_at";s:19:"2026-01-20 09:51:53";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:1;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:14;s:13:"permission_id";i:24;s:13:"admin_menu_id";i:9;s:4:"name";s:4:"edit";s:5:"route";s:18:"admin.product.edit";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-20 09:52:09";s:10:"updated_at";s:19:"2026-01-20 09:52:09";}s:11:"\0*\0original";a:8:{s:2:"id";i:14;s:13:"permission_id";i:24;s:13:"admin_menu_id";i:9;s:4:"name";s:4:"edit";s:5:"route";s:18:"admin.product.edit";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-20 09:52:09";s:10:"updated_at";s:19:"2026-01-20 09:52:09";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:2;O:26:"App\\Models\\AdminMenuAction":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:18:"admin_menu_actions";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:8:{s:2:"id";i:15;s:13:"permission_id";i:25;s:13:"admin_menu_id";i:9;s:4:"name";s:6:"delete";s:5:"route";s:21:"admin.product.destroy";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-20 09:52:34";s:10:"updated_at";s:19:"2026-01-20 09:52:34";}s:11:"\0*\0original";a:8:{s:2:"id";i:15;s:13:"permission_id";i:25;s:13:"admin_menu_id";i:9;s:4:"name";s:6:"delete";s:5:"route";s:21:"admin.product.destroy";s:6:"status";i:1;s:10:"created_at";s:19:"2026-01-20 09:52:34";s:10:"updated_at";s:19:"2026-01-20 09:52:34";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:6:"status";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:5:{i:0;s:13:"permission_id";i:1;s:13:"admin_menu_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:6:"status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:5;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:23;s:13:"permission_id";i:55;s:9:"parent_id";N;s:4:"name";s:17:"Orders Management";s:5:"route";N;s:4:"icon";N;s:5:"order";i:6;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-02-01 04:22:32";s:10:"updated_at";s:19:"2026-02-01 04:24:38";}s:11:"\0*\0original";a:11:{s:2:"id";i:23;s:13:"permission_id";i:55;s:9:"parent_id";N;s:4:"name";s:17:"Orders Management";s:5:"route";N;s:4:"icon";N;s:5:"order";i:6;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-02-01 04:22:32";s:10:"updated_at";s:19:"2026-02-01 04:24:38";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:2:{s:8:"children";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:1:{i:0;O:20:"App\\Models\\AdminMenu":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:11:"admin_menus";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:11:{s:2:"id";i:24;s:13:"permission_id";i:56;s:9:"parent_id";i:23;s:4:"name";s:10:"Order List";s:5:"route";s:18:"admin.orders.index";s:4:"icon";N;s:5:"order";i:6;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-02-01 04:25:06";s:10:"updated_at";s:19:"2026-02-01 04:28:50";}s:11:"\0*\0original";a:11:{s:2:"id";i:24;s:13:"permission_id";i:56;s:9:"parent_id";i:23;s:4:"name";s:10:"Order List";s:5:"route";s:18:"admin.orders.index";s:4:"icon";N;s:5:"order";i:6;s:6:"status";i:1;s:12:"is_deletable";i:1;s:10:"created_at";s:19:"2026-02-01 04:25:06";s:10:"updated_at";s:19:"2026-02-01 04:28:50";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:2:{s:6:"status";s:7:"boolean";s:12:"is_deletable";s:7:"boolean";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:7:"actions";O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:8:{i:0;s:13:"permission_id";i:1;s:9:"parent_id";i:2;s:4:"name";i:3;s:5:"route";i:4;s:4:"icon";i:5;s:5:"order";i:6;s:6:"status";i:7;s:12:"is_deletable";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1771919380),
	('books_books_cache_admin_setting', 'O:23:"App\\Models\\AdminSetting":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:14:"admin_settings";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:15:{s:2:"id";i:1;s:4:"logo";s:79:"storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp";s:10:"small_logo";s:79:"storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp";s:7:"favicon";s:79:"storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp";s:5:"title";s:5:"Books";s:11:"footer_text";s:9:"sdfsdfsdf";s:13:"primary_color";s:7:"#e80c9b";s:15:"secondary_color";s:7:"#18ba64";s:8:"facebook";s:4:"sdfs";s:7:"twitter";s:4:"fsdf";s:8:"linkedin";s:5:"sdfsd";s:8:"whatsapp";s:5:"dfsdf";s:6:"google";N;s:10:"created_at";s:19:"2026-01-19 11:04:11";s:10:"updated_at";s:19:"2026-01-19 11:04:11";}s:11:"\0*\0original";a:15:{s:2:"id";i:1;s:4:"logo";s:79:"storage/admin-setting//2026-01-19-WOkDhHTNPYsXyYppCJmHwrY9oLAUS0GyfybMRVZ0.webp";s:10:"small_logo";s:79:"storage/admin-setting//2026-01-19-OJFe5jFdx2IBzbbmhVTaY0E5lm2I5ER7OwoEGMPA.webp";s:7:"favicon";s:79:"storage/admin-setting//2026-01-19-DhG2fWtAwUI17NKIMiQKmQQZKanvyCBQnFoRYhUl.webp";s:5:"title";s:5:"Books";s:11:"footer_text";s:9:"sdfsdfsdf";s:13:"primary_color";s:7:"#e80c9b";s:15:"secondary_color";s:7:"#18ba64";s:8:"facebook";s:4:"sdfs";s:7:"twitter";s:4:"fsdf";s:8:"linkedin";s:5:"sdfsd";s:8:"whatsapp";s:5:"dfsdf";s:6:"google";N;s:10:"created_at";s:19:"2026-01-19 11:04:11";s:10:"updated_at";s:19:"2026-01-19 11:04:11";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:12:{i:0;s:4:"logo";i:1;s:10:"small_logo";i:2;s:7:"favicon";i:3;s:5:"title";i:4;s:11:"footer_text";i:5;s:13:"primary_color";i:6;s:15:"secondary_color";i:7;s:8:"facebook";i:8;s:7:"twitter";i:9;s:8:"linkedin";i:10;s:8:"whatsapp";i:11;s:6:"google";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}', 1771919380),
	('books_books_cache_setting', 'O:18:"App\\Models\\Setting":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:8:"settings";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:42:{s:2:"id";i:1;s:8:"app_name";s:15:"Books and Books";s:5:"title";s:15:"Books and Books";s:13:"primary_phone";s:11:"01575020231";s:15:"secondary_phone";s:11:"01921588567";s:13:"primary_email";s:23:"booksandbooks@gmail.com";s:15:"secondary_email";s:23:"booksandbooks@gmail.com";s:11:"office_time";N;s:7:"address";s:22:"Aftabnager, Dhaka-1212";s:11:"description";N;s:10:"banner_one";s:73:"storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp";s:15:"banner_one_link";N;s:17:"banner_one_status";i:1;s:10:"banner_two";N;s:15:"banner_two_link";N;s:17:"banner_two_status";i:1;s:15:"page_heading_bg";s:73:"storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp";s:10:"meta_title";N;s:12:"meta_keyword";N;s:16:"meta_description";N;s:10:"meta_image";s:73:"storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp";s:10:"google_map";N;s:7:"favicon";s:73:"storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp";s:4:"logo";s:73:"storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp";s:11:"footer_logo";N;s:11:"placeholder";s:73:"storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp";s:13:"facebook_page";N;s:14:"facebook_group";N;s:7:"youtube";N;s:7:"twitter";N;s:8:"linkedin";N;s:6:"google";N;s:8:"whatsapp";N;s:9:"instagram";N;s:9:"pinterest";N;s:11:"sms_api_url";N;s:11:"sms_api_key";N;s:10:"sms_api_id";N;s:12:"bkash_status";i:1;s:12:"nagad_status";i:1;s:10:"created_at";s:19:"2026-01-19 11:10:51";s:10:"updated_at";s:19:"2026-02-02 10:07:54";}s:11:"\0*\0original";a:42:{s:2:"id";i:1;s:8:"app_name";s:15:"Books and Books";s:5:"title";s:15:"Books and Books";s:13:"primary_phone";s:11:"01575020231";s:15:"secondary_phone";s:11:"01921588567";s:13:"primary_email";s:23:"booksandbooks@gmail.com";s:15:"secondary_email";s:23:"booksandbooks@gmail.com";s:11:"office_time";N;s:7:"address";s:22:"Aftabnager, Dhaka-1212";s:11:"description";N;s:10:"banner_one";s:73:"storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp";s:15:"banner_one_link";N;s:17:"banner_one_status";i:1;s:10:"banner_two";N;s:15:"banner_two_link";N;s:17:"banner_two_status";i:1;s:15:"page_heading_bg";s:73:"storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp";s:10:"meta_title";N;s:12:"meta_keyword";N;s:16:"meta_description";N;s:10:"meta_image";s:73:"storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp";s:10:"google_map";N;s:7:"favicon";s:73:"storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp";s:4:"logo";s:73:"storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp";s:11:"footer_logo";N;s:11:"placeholder";s:73:"storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp";s:13:"facebook_page";N;s:14:"facebook_group";N;s:7:"youtube";N;s:7:"twitter";N;s:8:"linkedin";N;s:6:"google";N;s:8:"whatsapp";N;s:9:"instagram";N;s:9:"pinterest";N;s:11:"sms_api_url";N;s:11:"sms_api_key";N;s:10:"sms_api_id";N;s:12:"bkash_status";i:1;s:12:"nagad_status";i:1;s:10:"created_at";s:19:"2026-01-19 11:10:51";s:10:"updated_at";s:19:"2026-02-02 10:07:54";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:39:{i:0;s:8:"app_name";i:1;s:5:"title";i:2;s:13:"primary_phone";i:3;s:15:"secondary_phone";i:4;s:13:"primary_email";i:5;s:15:"secondary_email";i:6;s:11:"office_time";i:7;s:7:"address";i:8;s:11:"description";i:9;s:10:"banner_one";i:10;s:15:"banner_one_link";i:11;s:17:"banner_one_status";i:12;s:10:"banner_two";i:13;s:15:"banner_two_link";i:14;s:17:"banner_two_status";i:15;s:15:"page_heading_bg";i:16;s:10:"meta_title";i:17;s:12:"meta_keyword";i:18;s:16:"meta_description";i:19;s:10:"meta_image";i:20;s:10:"google_map";i:21;s:7:"favicon";i:22;s:4:"logo";i:23;s:11:"footer_logo";i:24;s:11:"placeholder";i:25;s:13:"facebook_page";i:26;s:14:"facebook_group";i:27;s:7:"youtube";i:28;s:7:"twitter";i:29;s:8:"linkedin";i:30;s:6:"google";i:31;s:8:"whatsapp";i:32;s:9:"instagram";i:33;s:9:"pinterest";i:34;s:11:"sms_api_url";i:35;s:11:"sms_api_key";i:36;s:10:"sms_api_id";i:37;s:12:"bkash_status";i:38;s:12:"nagad_status";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}', 1771919380);

-- Dumping structure for table e_commerce_like_rokomary.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.cache_locks: ~0 rows (approximately)
DELETE FROM `cache_locks`;

-- Dumping structure for table e_commerce_like_rokomary.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'header',
  `url` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  KEY `categories_created_by_foreign` (`created_by`),
  KEY `categories_updated_by_foreign` (`updated_by`),
  KEY `categories_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.categories: ~57 rows (approximately)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `parent_id`, `name`, `type`, `slug`, `image`, `description`, `status`, `position`, `url`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'বই', '', 'amar-itihas', 'storage/category/2026-01-20-ML4RobJCoxQrhxcUTXiRgZC4TXdfkN8vNe14bkcA.webp', 'সকল আলোচনা', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-20 03:44:44', '2026-02-02 23:52:48'),
	(2, 1, 'ইতিহাস', 'book', 'itihas', 'storage/category/2026-01-25-A5GUscpZWSmrLr0xXmWYQSegvXP9ZN2fhgMSSjAd.webp', 'সকল', 1, 'header', NULL, 1, 1, NULL, NULL, '2026-01-20 03:46:02', '2026-01-25 21:58:31'),
	(3, 4, 'Water Heater', NULL, 'es-es-si', 'storage/category/2026-01-25-X7ut7OeRn9ZovzDhNdGSxUNwZ8inNzNx51OBw2Zt.webp', 'Water Heater', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-21 04:33:12', '2026-02-03 00:20:46'),
	(4, NULL, 'ইলেক্ট্রনিক্স', 'other', 'ekademik', 'storage/category/2026-01-21-pLTcQNE1TC5RKHwntlvgDiX9wYN9vbisByj7KeVu.webp', 'ইলেক্ট্রনিক্স', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-21 05:50:48', '2026-02-24 22:26:23'),
	(5, NULL, 'সুপার স্টোর', NULL, 'kartun-er-glp', 'storage/category/2026-01-20-HS8XmhC2g9rbCbXWO8fNyt5dKzaM370aar4KZM1M.webp', 'সকল', 1, 'header', '#', 1, 1, NULL, NULL, '2026-01-21 22:39:35', '2026-02-02 23:54:01'),
	(6, 4, 'Mobile', NULL, 'eisessi', 'storage/category/2026-01-25-WCUZ8WW5OfIAtRyi4yvV0lSWSokmTxYrWCkSQAbj.webp', 'Mobile', 1, 'header_top', '#', 1, 1, NULL, NULL, '2026-01-21 23:44:00', '2026-02-03 00:21:02'),
	(7, 4, 'Ceiling Fan', NULL, 'iunivarsiti-vrti', 'storage/category/2026-01-25-cVOMfDXxut0kWOLWSITIcGVcN7JiqdKBiWkXw512.webp', 'Ceiling Fan', 1, 'header_top', '#', 1, 1, NULL, NULL, '2026-01-21 23:44:48', '2026-02-03 00:21:22'),
	(8, 5, 'কার্টুন এর ভাল গল্প', NULL, 'kartun-er-val-glp', 'storage/category/2026-01-25-eXypOGkciWmMflByx1hhc6P9uarA7XRZklaxAR7B.webp', NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2026-01-25 05:24:59', '2026-01-25 05:24:59'),
	(9, 5, 'আজব ঠাকুরের কথা', NULL, 'ajb-thakurer-ktha', 'storage/category/2026-01-25-o95VBf7carOoVlVnUd9J718AlcnCmldK2jKTuT1L.webp', 'সদফসদ', 1, NULL, NULL, 1, NULL, NULL, NULL, '2026-01-25 05:26:01', '2026-01-25 05:26:01'),
	(10, 1, 'গেরিলা যুদ্ধ', 'book', 'gerila-zuddh', 'storage/category/2026-01-25-lSfUto37Rogh00r0HFPSi5rP3cBwwWbLVZ9YaCtO.webp', 'সদফসদ', 1, 'header', NULL, 1, 1, NULL, NULL, '2026-01-25 05:26:39', '2026-01-25 21:58:41'),
	(11, NULL, 'ঘরে বসে আয় করুন', NULL, 'ghre-bse-ay-krun', 'storage/category/2026-01-26-RsPtfwny0ZVUNEiVFvOK4JhryKDUjqm17WMcIBeC.webp', 'csdsdsasd', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:07:30', '2026-01-25 22:07:30'),
	(12, NULL, 'রকমারি কুইজ', NULL, 'rkmari-kuij', 'storage/category/2026-01-26-cgw8o9oGv4zJvYYgY5OFEC1WLfVgYmAhOYGaBn8o.webp', 'রকমারি কুইজ', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:08:06', '2026-01-25 22:08:06'),
	(13, NULL, 'রকমারি কুইজ', NULL, 'rkmari-kuij-1', 'storage/category/2026-01-26-Q8K7EgW5ik9eGB1EP7NeXUDhjfZncAbfJ9mn7E7L.webp', 'রকমারি কুইজ', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:08:07', '2026-01-25 22:08:07'),
	(14, NULL, 'রকমারি উদ্যোক্তা', NULL, 'rkmari-udzokta', 'storage/category/2026-01-26-8uiOFhGGQoMb5pPKdE3mmljXPX4T7OTlhPx5TUaQ.webp', 'রকমারি উদ্যোক্তা', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:08:49', '2026-01-25 22:08:49'),
	(15, NULL, 'অর্ডার ট্র্যাক করুন', NULL, 'ordar-trzak-krun', 'storage/category/2026-01-26-oNZHh0hRfmJoBHZdOK6Kx9effoeTonOmdWV3T6dP.webp', 'অর্ডার ট্র্যাক করুন', 1, 'header_top', 'order/trucking/system', 1, 1, NULL, NULL, '2026-01-25 22:09:26', '2026-01-26 00:03:21'),
	(16, NULL, 'বই ডোনেশন', NULL, 'bi-donesn', 'storage/category/2026-01-26-j7LgSvY4BsKOJtIk5ZSN35XZVGIgsVOzatOfms7l.webp', 'বই ডোনেশন', 1, 'header_top', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:09:49', '2026-01-25 22:09:49'),
	(17, NULL, 'লেখক', NULL, 'kartun-glper-byer-skl-bi', 'storage/category/2026-01-26-DnYnRjci4O9zupNxTqAeCNux2YfuGoXNqXMOpNiV.webp', 'লেখক', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:11:01', '2026-02-02 23:57:57'),
	(18, NULL, 'বিষয়', NULL, 'islamik-glper-byer-skl-bi', 'storage/category/2026-01-26-mpfI28njiOcwM9MBKsoJqoTPuag0ZXM4tvDpratp.webp', 'বিষয়', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:11:32', '2026-02-02 23:58:25'),
	(19, NULL, 'প্রকাশনী', NULL, 'gariyal', 'storage/category/2026-01-26-hfA942qSdI82Nz67CmPMuet3ZVzkUQojPlgbbYB9.webp', 'প্রকাশনী', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:11:52', '2026-02-02 23:59:07'),
	(20, NULL, 'বইমেলা ২০২৬', NULL, 'rbeendr-sngoit', 'storage/category/2026-01-26-28I4Gn1K6mggXKdSitynMnIv6TJoNLaBAac7vkf5.webp', 'বইমেলা ২০২৬', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:12:11', '2026-02-02 23:59:42'),
	(21, NULL, 'একাডেমিক বই', NULL, 'njrul-sngoit-skl-bi', 'storage/category/2026-01-26-fluCxJbsXDBqPGyx2F8hUBlP8TpM7sU4uAR2fQfv.webp', 'একাডেমিক বই', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:12:27', '2026-02-03 00:00:04'),
	(22, NULL, 'ই-বুক', NULL, 'stzer-sndhane', 'storage/category/2026-01-26-Q7xC5PAbZ3Q169wYRMlfIL8HFPzDj4Krt3jW7I8U.webp', 'ই-বুক', 1, 'mega_menu_parent', '#', 1, 1, NULL, NULL, '2026-01-25 22:12:42', '2026-02-03 00:00:40'),
	(23, 18, 'আরও অনেক মেনু এখানে হবে', NULL, 'aroo-onek-menu-ekhane-hbe', 'storage/category/2026-01-26-bxCWFMr7kAjZAzLF8GVivWVL5m49ilxHVsbLKevm.webp', 'আরও অনেক মেনু এখানে হবে', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:13:48', '2026-01-25 22:13:48'),
	(24, 21, 'সাব মেনু যোগ করুন', NULL, 'sab-menu-zog-krun', 'storage/category/2026-01-26-baz8XrBGVg4B2xNoP3avsUTGU3YkTOc7FyuhlRGF.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:15:48', '2026-01-25 22:15:48'),
	(25, 18, 'সাব মেনু যোগ করুন', NULL, 'sab-menu-zog-krun-1', 'storage/category/2026-01-26-t3ACypNQ5OCP9T3eETfjrV7JOqddhLED07XYMTFm.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:16:26', '2026-01-25 22:16:26'),
	(27, 18, 'সাব মেনু যোগ করুন1', NULL, 'sab-menu-zog-krun1', 'storage/category/2026-01-26-nID85WsUZ8j0D0RsvJ1VeNfC9rrQIVRVeCmpRk90.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:17:23', '2026-01-25 22:17:23'),
	(28, 18, 'সাব মেনু যোগ করুন2', NULL, 'sab-menu-zog-krun2', 'storage/category/2026-01-26-rE7qReiLCzlWeiOecp1AywpbMDP1IKWnpYNqlKK2.webp', 'সাব মেনু যোগ করুন', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 22:17:44', '2026-01-25 22:17:44'),
	(29, 19, 'গাড়িয়াল1', NULL, 'gariyal1', 'storage/category/2026-01-26-i2sFKNE9uR91zOBUd2dC83DFtA3MFQDtlpZ8JGQJ.webp', 'গাড়িয়াল', 1, 'mega_menu_child', NULL, 1, NULL, NULL, NULL, '2026-01-25 23:27:36', '2026-01-25 23:27:36'),
	(30, NULL, 'হোম', NULL, 'hom', NULL, 'Description', 1, 'homepage', '#', 1, NULL, NULL, NULL, '2026-02-01 05:18:55', '2026-02-01 05:18:55'),
	(31, 30, 'ট্রেন্ডিং বইসমূহ', NULL, 'trending-bismuuh', 'storage/category/2026-02-03-dRrme3NquWtWBYLKCZ2p2uxujpqjFEKeCtYgiFvl.webp', 'ট্রেন্ডিং বইসমূহ', 1, 'header_top', '#', 1, 1, NULL, NULL, '2026-02-01 05:23:37', '2026-02-02 23:41:13'),
	(32, 30, 'নতুন প্রকাশিত বই', NULL, 'ntun-prkasit-bi', 'storage/category/2026-02-03-u1kg7wzdZRQPwIbg9k40xCK98f5D0ihkY4rR82fq.webp', 'ASDAS', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:24:19', '2026-02-02 23:50:42'),
	(33, 30, 'সিয়ান যুগপূর্তি অফার', NULL, 'sizan-zugpuurti-ofar', 'storage/category/2026-02-01-5EvBzyvKJZH9Z3mHN3XwXlO4oOlD8Lk0vykyTorf.webp', 'SADASDA', 1, 'header_top', '#', 1, NULL, NULL, NULL, '2026-02-01 05:24:55', '2026-02-01 05:24:55'),
	(34, 30, 'রবিউল আউয়াল সীরাত গ্রন্থমালা', NULL, 'rbiul-auzal-seerat-grnthmala', 'storage/category/2026-02-03-WOtcA7CyLuantF0vsLa4bM1XEc4UXrTcV4WKDfqw.webp', 'ASDASD', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:25:29', '2026-02-02 23:50:53'),
	(35, 30, 'জনপ্রিয় লেখক', NULL, 'jnpriy-lekhk', 'storage/category/2026-02-03-b3nMkOovpU6tbgNnfGC5Ql900iHPyU4E4XcJtSuB.webp', 'SFSF', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:26:02', '2026-02-02 23:50:02'),
	(36, 30, 'আতর ও সুগন্ধি পণ্য', NULL, 'atr-oo-sugndhi-pnz', 'storage/category/2026-02-03-jG8H9RfCYNUO7desKWtSPJB794NavB47rk2hufoY.webp', 'ADASD', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:26:54', '2026-02-02 23:49:34'),
	(37, 30, 'অন্যান্য পণ্য', NULL, 'onzanz-pnz', 'storage/category/2026-02-03-nnITyvQUF7GBrK3JHlWkTafHrYDc7nvp6aFmQXAn.webp', 'ASDASDA', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:27:25', '2026-02-02 23:44:22'),
	(38, 30, 'ব্র্যান্ডসমূহ', NULL, 'brzandsmuuh', 'storage/category/2026-02-03-Ya6z6MBkg6vjzkSnM4kZM9Ok5q2851h154J70y5w.webp', 'ব্র্যান্ডসমূহ', 1, 'homepage', '#', 1, 1, NULL, NULL, '2026-02-01 05:27:58', '2026-02-02 23:49:07'),
	(39, 30, 'এক্টুখানি  সুন্নাহ', 'book', 'ektukhani-sunnah', 'storage/category/2026-03-01-NgxxaYO2pJetOQhMwLpKYhPQoLvdvOEwv0nhnAux.webp', 'এক্টুখানি  সুন্নাহ', 1, 'homepage_banner_category', '#', 1, 1, NULL, NULL, '2026-02-01 22:30:06', '2026-03-01 03:45:21'),
	(40, 30, 'মানানসই পোশাক', 'book', 'manansi-posak', 'storage/category/2026-03-01-sjvjjIebAiKPIzQMJmh97FL3jtLhVPUHtlLIzbgP.webp', 'মানানসই পোশাক', 1, 'homepage_banner_category', '#', 1, 1, NULL, NULL, '2026-02-01 22:34:07', '2026-03-01 03:45:40'),
	(41, 30, 'সুঘ্রাণময় থাকুক চারপাশ', 'book', 'sughranmy-thakuk-carpas', 'storage/category/2026-03-01-rRqxkRlhzkUBdiGhGnVEclZ19vFkfhldT46U0fwV.webp', 'সুঘ্রাণময় থাকুক চারপাশ', 1, 'homepage_banner_category', '#', 1, 1, NULL, NULL, '2026-02-01 22:35:38', '2026-03-01 03:45:58'),
	(42, 30, 'মিজানুর রহমান আজহারি', NULL, 'mijanur-rhman-ajhari', 'storage/category/2026-02-02-tmLPonwx4q3ZOVpd2KaCJgybUfOu982ascQleyBh.webp', 'মিজানুর রহমান আজহারি', 1, 'homepage_writter_category', '#', 1, NULL, NULL, NULL, '2026-02-01 23:28:09', '2026-02-01 23:28:09'),
	(43, 30, 'আরিফ আজাদ', NULL, 'arif-ajad', 'storage/category/2026-02-02-SELttpnM6YEmaxD4LyTK4ftA8OSZ3UsJe550prEO.webp', 'আরিফ আজাদ', 1, 'homepage_writter_category', '#', 1, NULL, NULL, NULL, '2026-02-01 23:29:14', '2026-02-01 23:29:14'),
	(44, 30, 'মিজানুর রহমান আজহারি', NULL, 'mijanur-rhman-ajhari-1', 'storage/category/2026-02-02-UReJoIMjJ3OSbiWjlJA36T9mAaZfilaNkqaVRudg.webp', 'মিজানুর রহমান আজহারি', 1, 'homepage_writter_category', '#', 1, NULL, NULL, NULL, '2026-02-01 23:30:26', '2026-02-01 23:30:26'),
	(45, 30, 'আতর', NULL, 'atr', 'storage/category/2026-02-02-AVpbSa9BUgCEoUwuhqceQIr0vU4PHfzZu7Wlw8Ul.webp', 'আতর', 1, 'homepage_others_category', '#', 1, NULL, NULL, NULL, '2026-02-02 00:16:58', '2026-02-02 00:16:58'),
	(46, 30, 'টি-শার্ট', NULL, 'ti-sart', 'storage/category/2026-02-02-tzjGn7lu31W6SBrjvg69GuRi5FoPGPqfh4cen2NG.webp', 'টি-শার্ট', 1, 'homepage_others_category', '#', 1, 1, NULL, NULL, '2026-02-02 00:17:57', '2026-02-02 00:18:14'),
	(47, 30, 'ব্র্যান্ডসমূহ', NULL, 'brzandsmuuh-1', 'storage/category/2026-02-02-QYNPg5a9Nd5eEJh9wWJVNJXY7f1MDueynCY1rlQv.webp', 'ব্র্যান্ডসমূহw', 1, 'homepage_brands_category', '#', 1, 1, NULL, NULL, '2026-02-02 00:29:27', '2026-02-02 23:46:36'),
	(48, NULL, 'কিডস জোন', NULL, 'kids-jon', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:54:35', '2026-02-02 23:54:35'),
	(49, NULL, 'প্রাতিষ্ঠানিক অর্ডার', NULL, 'pratishthanik-ordar', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:55:04', '2026-02-02 23:55:04'),
	(50, NULL, 'বেস্টসেলার অ্যাওয়ার্ড, ২৫', NULL, 'bestselar-ozaoozard-25', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:55:28', '2026-02-02 23:55:28'),
	(51, NULL, 'আজকের অফার !', NULL, 'ajker-ofar', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:56:03', '2026-02-02 23:56:03'),
	(52, NULL, 'Just for you', NULL, 'just-for-you', NULL, NULL, 1, 'header', '#', 1, NULL, NULL, NULL, '2026-02-02 23:56:55', '2026-02-02 23:56:55'),
	(53, NULL, 'প্যারালাল TEXT', NULL, 'pzaralal-text', NULL, NULL, 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:01:35', '2026-02-03 00:01:35'),
	(54, NULL, 'ভর্তি প্রস্তুতি', NULL, 'vrti-prstuti', NULL, NULL, 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:01:57', '2026-02-03 00:01:57'),
	(55, NULL, 'ইসলামি বই', NULL, 'islami-bi', NULL, 'ইসলামি বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:02:15', '2026-02-03 00:02:15'),
	(56, NULL, 'ইংরেজি ভাষার বই', NULL, 'ingreji-vashar-bi', NULL, 'ইংরেজি ভাষার বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:02:31', '2026-02-03 00:02:31'),
	(57, NULL, 'পশ্চিমবঙ্গের বই', NULL, 'pscimbngoer-bi', NULL, 'পশ্চিমবঙ্গের বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:02:45', '2026-02-03 00:02:45'),
	(58, NULL, 'অতিরিক্ত ছাড়ের বই', NULL, 'otirikt-charer-bi', NULL, 'অতিরিক্ত ছাড়ের বই', 1, 'mega_menu_parent', '#', 1, NULL, NULL, NULL, '2026-02-03 00:03:04', '2026-02-03 00:03:04'),
	(59, NULL, 'যোগাযোগ করুন', 'book', 'zogazog-krun', NULL, 'যোগাযোগ করুন', 1, 'footer', '#', 1, 1, NULL, NULL, '2026-03-01 03:28:39', '2026-03-01 03:30:57'),
	(60, NULL, 'পছন্দের তালিকা', 'book', 'pchnder-talika', NULL, 'পছন্দের তালিকা', 1, 'footer_col2', '#', 1, NULL, NULL, NULL, '2026-03-01 03:29:26', '2026-03-01 03:29:26');

-- Dumping structure for table e_commerce_like_rokomary.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coa_id` bigint unsigned DEFAULT NULL,
  `region_id` bigint unsigned DEFAULT NULL,
  `area_id` bigint unsigned DEFAULT NULL,
  `territory_id` bigint unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` decimal(16,0) DEFAULT NULL,
  `bin_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_code_unique` (`code`),
  KEY `clients_coa_id_foreign` (`coa_id`),
  KEY `clients_region_id_foreign` (`region_id`),
  KEY `clients_area_id_foreign` (`area_id`),
  KEY `clients_territory_id_foreign` (`territory_id`),
  KEY `clients_created_by_foreign` (`created_by`),
  KEY `clients_updated_by_foreign` (`updated_by`),
  KEY `clients_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `clients_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clients_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clients_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clients_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clients_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clients_territory_id_foreign` FOREIGN KEY (`territory_id`) REFERENCES `territories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clients_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.clients: ~64 rows (approximately)
DELETE FROM `clients`;
INSERT INTO `clients` (`id`, `coa_id`, `region_id`, `area_id`, `territory_id`, `user_id`, `code`, `name`, `contact_person`, `phone`, `email`, `address`, `credit_limit`, `bin_no`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(3, 127, 1, 1, 1, NULL, NULL, 'Apon Library', 'Deen Mohammad', NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 00:36:24', '2025-10-25 00:36:24'),
	(4, 128, 9, 14, 1, NULL, NULL, 'Saiful Shaheb', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 00:26:48', '2025-11-01 02:01:21'),
	(5, 129, 9, 14, 1, NULL, NULL, 'Ali Ahammad Bahar', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 00:28:32', '2025-11-01 02:01:18'),
	(6, 130, 9, 14, 1, NULL, NULL, 'Tso Mostafa', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 00:29:20', '2025-11-01 02:01:17'),
	(7, 131, 5, 15, 2, NULL, NULL, 'Moonlight Library', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-26 00:30:53', '2025-11-01 02:01:15'),
	(9, 141, 7, 16, 4, NULL, NULL, 'Tso Anamul', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 03:04:53', '2025-11-01 02:01:13'),
	(10, 142, 9, 14, 1, NULL, NULL, 'Tso Bahar', NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 03:13:58', '2025-11-01 02:01:12'),
	(11, 143, 1, 47, 49, NULL, NULL, 'কারেন্ট লাইব্রেরী মালিবাগ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-29 23:19:00', '2025-11-01 01:09:24'),
	(12, 144, 1, 1, 44, NULL, NULL, 'ইউনিটি বুক সাপ্লাই নীলক্ষেত (M)', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-29 23:23:27', '2025-11-01 01:06:57'),
	(13, 145, 1, 23, 47, NULL, NULL, 'গাজীপুর, মাওনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:12:16', '2025-11-01 01:12:07', '2025-11-01 01:12:16'),
	(14, 146, 1, 23, 47, NULL, NULL, 'গাজীপুর, মাওনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:12:07', '2025-11-01 01:12:07'),
	(15, 147, 1, 20, 32, NULL, NULL, 'সাভার', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:12:54', '2025-11-01 01:12:54'),
	(16, 148, 2, 24, 28, NULL, NULL, 'পিরোজপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:24:22', '2025-11-01 01:24:22'),
	(17, 149, 2, 4, 45, NULL, NULL, 'পটুয়াখালী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:24:55', '2025-11-01 01:24:55'),
	(18, 150, 2, 25, 46, NULL, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:30:07', '2025-11-01 01:30:07'),
	(19, 151, 3, 26, 26, NULL, NULL, 'যশোর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:32:05', '2025-11-01 01:32:05'),
	(20, 152, 3, 27, 25, NULL, NULL, 'নোয়াপাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:32:49', '2025-11-01 01:32:49'),
	(21, 153, 4, 6, 40, NULL, NULL, 'শেরপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:33:32', '2025-11-01 01:33:32'),
	(22, 154, 4, 28, 24, NULL, NULL, 'জামালপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:34:07', '2025-11-01 01:34:07'),
	(23, 155, 4, 29, 23, NULL, NULL, 'নেত্রকোনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:34:30', '2025-11-01 01:34:30'),
	(24, 156, 4, 30, 22, NULL, NULL, 'টাঙ্গাইল', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:35:09', '2025-11-01 01:35:09'),
	(25, 157, 4, 31, 21, NULL, NULL, 'ময়মনসিংহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:36:08', '2025-11-01 01:36:08'),
	(26, 158, 7, 35, 17, NULL, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:36:45', '2025-11-01 01:36:45'),
	(27, 159, 7, 32, 19, NULL, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:37:12', '2025-11-01 01:37:12'),
	(28, 160, 7, 33, 20, NULL, NULL, 'চট্টগ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:37:41', '2025-11-01 01:37:41'),
	(29, 161, 7, 34, 18, NULL, NULL, 'ফেনী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:38:15', '2025-11-01 01:38:15'),
	(30, 162, 8, 36, 16, NULL, NULL, 'সিলেট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:39:40', '2025-11-01 01:39:40'),
	(31, 163, 8, 37, 15, NULL, NULL, 'হবিগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:40:24', '2025-11-01 01:40:24'),
	(32, 164, 8, 38, 14, NULL, NULL, 'মৌলভীবাজার', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:44:44', '2025-11-01 01:44:44'),
	(33, 165, 8, 39, 13, NULL, NULL, 'সুনামগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:45:35', '2025-11-01 01:45:35'),
	(34, 166, 2, 48, 50, NULL, NULL, 'ঝালকাঠি', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:46:31', '2025-11-01 01:46:31'),
	(35, 167, 2, 2, 48, NULL, NULL, 'ভোলা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:47:19', '2025-11-01 01:47:19'),
	(36, 168, 1, 1, 44, NULL, NULL, 'নীলক্ষেত', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:47:43', '2025-11-01 01:47:43'),
	(37, 169, 1, 11, 36, NULL, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:48:14', '2025-11-01 01:48:14'),
	(38, 170, 1, 22, 29, NULL, NULL, 'মাধবদী, নরসিংদী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:49:38', '2025-11-01 01:49:38'),
	(39, 171, 1, 21, 30, NULL, NULL, 'মুন্সীগঞ্জ,', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:50:07', '2025-11-01 01:50:07'),
	(40, 172, 1, 49, 51, NULL, NULL, 'নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:50:46', '2025-11-01 01:50:46'),
	(41, 173, 5, 40, 12, NULL, NULL, 'সিরাজগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:52:22', '2025-11-01 01:52:22'),
	(42, 174, 5, 41, 11, NULL, NULL, 'পাবনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:52:57', '2025-11-01 01:52:57'),
	(43, 175, 5, 42, 10, NULL, NULL, 'রাজশাহী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:53:28', '2025-11-01 01:53:28'),
	(44, 176, 5, 3, 9, NULL, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:54:07', '2025-11-01 01:54:07'),
	(45, 177, 5, 13, 33, NULL, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:55:02', '2025-11-01 01:55:02'),
	(46, 178, 5, 12, 35, NULL, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:55:34', '2025-11-01 01:55:34'),
	(47, 179, 5, 12, 35, NULL, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:55:58', '2025-11-01 01:55:34', '2025-11-01 01:55:58'),
	(48, 180, 5, 5, 41, NULL, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:56:49', '2025-11-01 01:56:49'),
	(49, 181, 6, 44, 8, NULL, NULL, 'রংপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:57:25', '2025-11-01 01:57:25'),
	(50, 182, 6, 45, 5, NULL, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:57:51', '2025-11-01 01:57:51'),
	(51, 183, 6, 9, 38, NULL, NULL, 'দিনাজপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:58:55', '2025-11-01 01:58:55'),
	(52, 184, 6, 8, 7, NULL, NULL, 'গাইবান্ধা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:59:28', '2025-11-01 01:59:28'),
	(53, 185, 6, 10, 37, NULL, NULL, 'লালমনিরহাট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:59:46', '2025-11-01 01:59:46'),
	(54, 186, 3, 7, 39, NULL, NULL, 'কুষ্টিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 02:00:34', '2025-11-01 02:00:34'),
	(55, 187, 3, 46, 52, NULL, NULL, 'সোহাগ বুক ডিপো', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 02:43:36', '2025-11-02 02:43:36'),
	(56, 188, 3, 46, 52, NULL, NULL, 'খুলনা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:01:26', '2025-11-02 03:01:26'),
	(57, 189, 2, 50, 53, NULL, NULL, 'বরিশাল', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:06:19', '2025-11-02 03:06:19'),
	(58, 228, 3, 46, 52, NULL, NULL, 'ঝিনাইদাহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:52:04', '2025-12-21 21:52:04'),
	(59, 229, 1, 47, 49, NULL, NULL, 'মীরপুর (১০)', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:54:34', '2025-12-21 21:54:34'),
	(60, 230, 1, 11, 36, NULL, NULL, 'মীরপুর (2)', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:54:52', '2025-12-21 21:54:52'),
	(61, 231, 1, 11, 36, NULL, NULL, 'ফার্মগেট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-21 21:55:10', '2025-12-21 21:55:10'),
	(62, 232, 1, 1, 44, NULL, NULL, 'নেক্সাস', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-12-23 21:46:21', '2025-12-23 21:46:21'),
	(63, 269, 1, 51, 54, NULL, NULL, 'রকমারি', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-24 05:23:13', '2026-01-24 05:23:13'),
	(64, 270, 5, 3, 9, NULL, NULL, 'নাটোর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-30 09:35:18', '2026-01-30 09:35:18'),
	(65, 271, 4, 31, 21, NULL, NULL, 'পপুলার লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-30 09:52:50', '2026-01-30 09:52:50'),
	(66, 272, 4, 31, 21, NULL, NULL, 'আরাফাত লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-30 09:53:11', '2026-01-30 09:53:11'),
	(67, 273, 6, 45, 5, NULL, NULL, 'ঠাকুর গাঁও', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-02-04 05:38:55', '2026-02-04 05:38:55'),
	(68, 277, 2, 48, 50, 2, 'cde111', 'Aira', NULL, '22222222', 'aira@gmail.com', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-03-03 22:43:38', '2026-03-03 22:43:38'),
	(69, 278, 2, 48, 50, 8, NULL, 'Mitul', NULL, '44444444', 'mitul@gmail.com', NULL, NULL, NULL, 1, 8, 1, NULL, NULL, '2026-03-03 22:57:35', '2026-03-03 22:59:46'),
	(70, 279, 7, 32, 19, 1, NULL, 'Admin', NULL, '33333333333', 'wali@gmail.com', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-03-03 23:04:39', '2026-03-03 23:04:39'),
	(71, 280, 7, 16, 4, 3, 'code3', 'warid', NULL, '333333333333', 'warid@gmail.com', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '2026-03-04 00:34:21', '2026-03-04 00:34:42');

-- Dumping structure for table e_commerce_like_rokomary.coas
DROP TABLE IF EXISTS `coas`;
CREATE TABLE IF NOT EXISTS `coas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `head_code` bigint NOT NULL,
  `head_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction` tinyint(1) NOT NULL DEFAULT '0',
  `general` tinyint(1) NOT NULL DEFAULT '0',
  `head_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updateable` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coas_head_code_unique` (`head_code`),
  KEY `coas_parent_id_foreign` (`parent_id`),
  KEY `coas_created_by_foreign` (`created_by`),
  KEY `coas_updated_by_foreign` (`updated_by`),
  KEY `coas_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `coas_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `coas_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `coas_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `coas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `coas_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.coas: ~212 rows (approximately)
DELETE FROM `coas`;
INSERT INTO `coas` (`id`, `parent_id`, `head_code`, `head_name`, `transaction`, `general`, `head_type`, `status`, `updateable`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, 'Assets', 0, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:32:17', '2025-06-17 12:32:17'),
	(2, NULL, 2, 'Liabilities', 0, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:32:17', '2025-06-17 12:32:17'),
	(3, NULL, 3, 'Income', 0, 0, 'I', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:34:45', '2025-06-17 12:34:45'),
	(4, NULL, 4, 'Expense', 0, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 12:34:45', '2025-06-17 12:34:45'),
	(5, 1, 101, 'Current Asset', 0, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:41:07', '2025-06-17 06:41:07'),
	(6, 1, 102, 'Fixed Asset', 0, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:48:44', '2025-06-17 06:48:44'),
	(7, 5, 10101, 'Cash Receivable', 0, 1, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:48:58', '2025-06-17 06:48:58'),
	(8, 5, 10102, 'Cash In Hand', 0, 1, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:49:12', '2025-06-17 06:49:12'),
	(9, 5, 10103, 'Cash at Bank', 0, 1, 'A', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:49:30', '2025-06-17 06:49:30'),
	(10, 2, 201, 'Cash Payable', 0, 1, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:50:27', '2025-06-17 06:50:27'),
	(11, 2, 202, 'Investor Capital', 0, 1, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-06-17 06:50:42', '2025-06-17 06:50:42'),
	(13, 8, 1010201, 'Cash at Fattah', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-06-18 00:10:11', '2025-06-18 00:10:11'),
	(14, 9, 1010301, 'UCB Bank (33217)', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-06-18 00:10:23', '2025-06-18 00:10:23'),
	(26, 3, 301, 'Project Income', 0, 1, 'I', 1, 0, 1, NULL, NULL, NULL, '2025-06-22 22:49:53', '2025-06-22 22:49:53'),
	(27, 4, 401, 'Project Expense', 0, 1, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-06-22 22:50:06', '2025-06-22 22:50:06'),
	(42, 4, 402, 'Investor Profit', 0, 1, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-07-01 21:56:15', '2025-07-01 21:56:15'),
	(62, 3, 302, 'Direct Income', 0, 1, 'I', 1, 1, 1, NULL, NULL, NULL, '2025-07-20 06:35:32', '2025-07-20 06:35:32'),
	(63, 62, 30201, 'Product Sales', 1, 0, 'I', 1, 1, 1, NULL, NULL, NULL, '2025-07-20 06:35:37', '2025-07-20 06:35:37'),
	(64, 62, 30202, 'Sales Return', 1, 0, 'I', 1, 1, 1, NULL, NULL, NULL, '2025-07-21 07:01:16', '2025-07-21 07:01:16'),
	(70, 11, 20202, 'Faysal Ovi', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:54:59', '2025-07-26 05:54:59'),
	(71, 42, 40202, 'Faysal Ovi - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:54:59', '2025-07-26 05:54:59'),
	(72, 11, 20203, 'SK Turag', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:56:27', '2025-07-26 05:56:27'),
	(73, 42, 40203, 'SK Turag - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-07-26 05:56:27', '2025-07-26 05:56:27'),
	(74, 11, 20204, 'Ibrahim Kholil', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-03 06:26:44', '2025-08-03 06:26:44'),
	(75, 42, 40204, 'Ibrahim Kholil - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-03 06:26:44', '2025-08-03 06:26:44'),
	(77, 11, 20205, 'Rana Ibrahim', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-04 00:29:56', '2025-08-04 00:29:56'),
	(78, 42, 40205, 'Rana Ibrahim - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-04 00:29:56', '2025-08-04 00:29:56'),
	(79, 11, 20206, 'Kartik Biswas', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-13 02:44:17', '2025-08-13 02:44:17'),
	(80, 42, 40206, 'Kartik Biswas - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-13 02:44:17', '2025-08-13 02:44:17'),
	(81, 2, 203, 'Share Equity', 0, 1, 'L', 1, 1, 1, 1, NULL, NULL, '2025-08-31 21:49:37', '2025-08-31 21:49:40'),
	(82, 81, 20301, 'Business Box', 1, 0, 'L', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 21:49:55', '2025-08-31 21:49:55'),
	(83, 11, 20207, 'Mamunur Rashid', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-08-31 22:36:09', '2025-08-31 22:36:09'),
	(84, 42, 40207, 'Mamunur Rashid - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-08-31 22:36:09', '2025-08-31 22:36:09'),
	(85, 4, 403, 'Operational Exp.', 0, 1, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:58:16', '2025-08-31 22:58:16'),
	(86, 4, 404, 'Documentation Exp.', 0, 1, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:59:00', '2025-08-31 22:59:00'),
	(87, 86, 40401, 'Agreement Prepare & Notery', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:59:10', '2025-08-31 22:59:10'),
	(89, 6, 10201, 'Electronics & Devices', 0, 1, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 22:59:50', '2025-08-31 22:59:50'),
	(90, 4, 405, 'Salary & Remunaration', 0, 1, 'E', 1, 1, 1, 1, NULL, NULL, '2025-08-31 23:00:06', '2025-08-31 23:00:17'),
	(91, 89, 1020101, 'Computer, Laptop, Printer', 1, 0, 'A', 1, 1, 1, 1, NULL, NULL, '2025-08-31 23:00:46', '2025-08-31 23:01:09'),
	(92, 27, 40101, 'Book Publication', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:08:37', '2025-08-31 23:08:37'),
	(93, 85, 40301, 'Stationary Equipment', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:19:14', '2025-08-31 23:19:14'),
	(94, 85, 40302, 'Books load unload', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:20:30', '2025-08-31 23:20:30'),
	(95, 85, 40303, 'Office Rent', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-08-31 23:23:35', '2025-08-31 23:23:35'),
	(96, 11, 20208, 'Abdullah Faysal', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2025-09-08 03:55:39', '2025-09-08 03:55:39'),
	(97, 42, 40208, 'Abdullah Faysal - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2025-09-08 03:55:39', '2025-09-08 03:55:39'),
	(98, 8, 1010202, 'Cash at CEO Sir', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-09-13 23:36:20', '2025-09-13 23:36:20'),
	(99, 89, 1020102, 'Mobile Purchase', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 04:29:43', '2025-09-18 04:29:43'),
	(100, 85, 40304, 'Book Purchase', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 04:41:25', '2025-09-18 04:41:25'),
	(101, 85, 40305, 'Food Expense', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 04:58:36', '2025-09-18 04:58:36'),
	(102, 85, 40306, 'Compose Expense', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:02:35', '2025-09-18 05:02:35'),
	(103, 85, 40307, 'Writer Expnese', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:02:50', '2025-09-18 05:02:50'),
	(104, 85, 40308, 'Proof Expense', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:03:04', '2025-09-18 05:03:04'),
	(105, 85, 40309, 'Conveyance Exp.', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:12:55', '2025-09-18 05:12:55'),
	(106, 85, 40310, 'Mobile Recharge', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:13:20', '2025-09-18 05:13:20'),
	(107, 85, 40311, 'Bkash Charge', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:13:32', '2025-09-18 05:13:32'),
	(108, 85, 40312, 'Miscellaneous Expenses', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:14:31', '2025-09-18 05:14:31'),
	(109, 85, 40313, 'Keyboard Purchase', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-09-18 05:27:32', '2025-09-18 05:27:32'),
	(110, 85, 40314, 'Packaging Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-19 23:33:12', '2025-09-19 23:33:12'),
	(111, 85, 40315, 'Computer Servicing', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 00:44:36', '2025-09-20 00:44:36'),
	(112, 85, 40316, 'Print Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 00:48:44', '2025-09-20 00:48:44'),
	(113, 90, 40501, 'zakir saheb salary', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 00:54:26', '2025-09-20 00:54:26'),
	(114, 85, 40317, 'Accessories Purchase', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-09-20 01:28:52', '2025-09-20 01:29:08'),
	(115, 85, 40318, 'Make up Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 01:40:00', '2025-09-20 01:40:00'),
	(116, 85, 40319, 'Pen Drive', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 01:59:02', '2025-09-20 01:59:02'),
	(117, 85, 40320, 'Book Cover Designer', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 03:01:06', '2025-09-20 03:01:06'),
	(118, 85, 40321, 'Shaju salary', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-20 03:10:43', '2025-09-20 03:10:43'),
	(119, 85, 40322, 'Jahangir salary', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 02:12:05', '2025-09-22 02:12:05'),
	(120, 85, 40323, 'Telephone and Internet', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 02:38:24', '2025-09-22 02:38:24'),
	(121, 85, 40324, 'courier', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 04:30:25', '2025-09-22 04:30:25'),
	(122, 85, 40325, 'TSO Mostofa', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 04:46:23', '2025-09-22 04:46:23'),
	(123, 85, 40326, 'TSO Ali Ahmed', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-09-22 04:57:01', '2025-09-22 04:57:01'),
	(124, 5, 10104, 'Loan/Advance', 0, 1, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-10-13 00:04:24', '2025-10-13 00:04:24'),
	(125, 124, 1010401, 'Loan Zakir Saheb', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-10-13 00:04:51', '2025-10-13 00:04:51'),
	(126, 124, 1010402, 'Loan Delowar Sir', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-10-13 00:05:04', '2025-10-13 00:05:04'),
	(127, 7, 1010102, 'Apon Library', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-25 00:36:24', '2025-10-25 00:36:24'),
	(128, 7, 1010103, 'Saiful Shaheb', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 00:26:48', '2025-10-26 00:26:48'),
	(129, 7, 1010104, 'Ali Ahammad Bahar', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 00:28:32', '2025-10-26 00:28:32'),
	(130, 7, 1010105, 'Tso Mostafa', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 00:29:20', '2025-10-26 00:29:20'),
	(131, 7, 1010106, 'Moonlight Library', 1, 0, 'A', 1, 0, 10, 10, NULL, NULL, '2025-10-26 00:30:53', '2025-10-26 00:31:59'),
	(141, 7, 1010107, 'Tso Anamul', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 03:04:53', '2025-10-26 03:04:53'),
	(142, 7, 1010108, 'Tso Bahar', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-10-26 03:13:58', '2025-10-26 03:13:58'),
	(143, 7, 1010109, 'কারেন্ট লাইব্রেরী মালিবাগ', 1, 0, 'A', 1, 0, 10, 10, NULL, NULL, '2025-10-29 23:19:00', '2025-11-01 01:09:24'),
	(144, 7, 1010110, 'ইউনিটি বুক সাপ্লাই নীলক্ষেত (M)', 1, 0, 'A', 1, 0, 10, 10, NULL, NULL, '2025-10-29 23:23:27', '2025-11-01 01:06:57'),
	(145, 7, 1010111, 'গাজীপুর, মাওনা', 1, 0, 'A', 1, 0, 10, NULL, 10, '2025-11-01 01:12:16', '2025-11-01 01:12:07', '2025-11-01 01:12:16'),
	(146, 7, 1010112, 'গাজীপুর, মাওনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:12:07', '2025-11-01 01:12:07'),
	(147, 7, 1010113, 'সাভার', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:12:54', '2025-11-01 01:12:54'),
	(148, 7, 1010114, 'পিরোজপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:24:22', '2025-11-01 01:24:22'),
	(149, 7, 1010115, 'পটুয়াখালী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:24:55', '2025-11-01 01:24:55'),
	(150, 7, 1010116, 'বরগুনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:30:07', '2025-11-01 01:30:07'),
	(151, 7, 1010117, 'যশোর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:32:05', '2025-11-01 01:32:05'),
	(152, 7, 1010118, 'নোয়াপাড়া', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:32:49', '2025-11-01 01:32:49'),
	(153, 7, 1010119, 'শেরপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:33:32', '2025-11-01 01:33:32'),
	(154, 7, 1010120, 'জামালপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:34:07', '2025-11-01 01:34:07'),
	(155, 7, 1010121, 'নেত্রকোনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:34:30', '2025-11-01 01:34:30'),
	(156, 7, 1010122, 'টাঙ্গাইল', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:35:09', '2025-11-01 01:35:09'),
	(157, 7, 1010123, 'ময়মনসিংহ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:36:08', '2025-11-01 01:36:08'),
	(158, 7, 1010124, 'চাঁদপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:36:45', '2025-11-01 01:36:45'),
	(159, 7, 1010125, 'কুমিল্লা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:37:12', '2025-11-01 01:37:12'),
	(160, 7, 1010126, 'চট্টগ্রাম', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:37:41', '2025-11-01 01:37:41'),
	(161, 7, 1010127, 'ফেনী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:38:15', '2025-11-01 01:38:15'),
	(162, 7, 1010128, 'সিলেট', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:39:40', '2025-11-01 01:39:40'),
	(163, 7, 1010129, 'হবিগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:40:24', '2025-11-01 01:40:24'),
	(164, 7, 1010130, 'মৌলভীবাজার', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:44:44', '2025-11-01 01:44:44'),
	(165, 7, 1010131, 'সুনামগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:45:35', '2025-11-01 01:45:35'),
	(166, 7, 1010132, 'ঝালকাঠি', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:46:31', '2025-11-01 01:46:31'),
	(167, 7, 1010133, 'ভোলা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:47:19', '2025-11-01 01:47:19'),
	(168, 7, 1010134, 'নীলক্ষেত', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:47:43', '2025-11-01 01:47:43'),
	(169, 7, 1010135, 'নরসিংদী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:48:14', '2025-11-01 01:48:14'),
	(170, 7, 1010136, 'মাধবদী, নরসিংদী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:49:38', '2025-11-01 01:49:38'),
	(171, 7, 1010137, 'মুন্সীগঞ্জ,', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:50:07', '2025-11-01 01:50:07'),
	(172, 7, 1010138, 'নারায়ণগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:50:46', '2025-11-01 01:50:46'),
	(173, 7, 1010139, 'সিরাজগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:52:22', '2025-11-01 01:52:22'),
	(174, 7, 1010140, 'পাবনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:52:57', '2025-11-01 01:52:57'),
	(175, 7, 1010141, 'রাজশাহী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:53:28', '2025-11-01 01:53:28'),
	(176, 7, 1010142, 'বগুড়া', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:54:07', '2025-11-01 01:54:07'),
	(177, 7, 1010143, 'ঈশ্বরদী', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:55:02', '2025-11-01 01:55:02'),
	(178, 7, 1010144, 'চাঁপাইনবাবগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:55:34', '2025-11-01 01:55:34'),
	(179, 7, 1010145, 'চাঁপাইনবাবগঞ্জ', 1, 0, 'A', 1, 0, 10, NULL, 10, '2025-11-01 01:55:58', '2025-11-01 01:55:34', '2025-11-01 01:55:58'),
	(180, 7, 1010146, 'নওগাঁ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:56:49', '2025-11-01 01:56:49'),
	(181, 7, 1010147, 'রংপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:57:25', '2025-11-01 01:57:25'),
	(182, 7, 1010148, 'পঞ্চগড়', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:57:51', '2025-11-01 01:57:51'),
	(183, 7, 1010149, 'দিনাজপুর', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:58:55', '2025-11-01 01:58:55'),
	(184, 7, 1010150, 'গাইবান্ধা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:59:28', '2025-11-01 01:59:28'),
	(185, 7, 1010151, 'লালমনিরহাট', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 01:59:46', '2025-11-01 01:59:46'),
	(186, 7, 1010152, 'কুষ্টিয়া', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-01 02:00:34', '2025-11-01 02:00:34'),
	(187, 7, 1010153, 'সোহাগ বুক ডিপো', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-02 02:43:36', '2025-11-02 02:43:36'),
	(188, 7, 1010154, 'খুলনা', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-02 03:01:26', '2025-11-02 03:01:26'),
	(189, 7, 1010155, 'বরিশাল', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-11-02 03:06:19', '2025-11-02 03:06:19'),
	(190, 6, 10202, 'Funtiture', 0, 1, 'A', 1, 1, 1, NULL, NULL, NULL, '2025-11-18 09:49:02', '2025-11-18 09:49:02'),
	(191, 190, 1020201, 'Funtiture Purchase', 1, 0, 'A', 1, 1, 1, 1, NULL, NULL, '2025-11-18 09:49:27', '2025-11-18 09:49:43'),
	(192, 85, 40327, 'Software', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-11-18 09:55:25', '2025-11-18 09:55:25'),
	(193, 85, 40328, 'Domain & Hosting Bill', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2025-11-18 09:59:44', '2025-11-18 09:59:44'),
	(194, 27, 40102, 'Bad Depth', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-11-19 00:57:57', '2025-12-31 05:55:44'),
	(195, 11, 20209, 'Mehedi Khan', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 22:29:00', '2025-11-22 22:29:00'),
	(196, 42, 40209, 'Mehedi Khan - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 22:29:00', '2025-11-22 22:29:00'),
	(197, 11, 20210, 'Al Emran', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:09:01', '2025-11-22 23:09:01'),
	(198, 42, 40210, 'Al Emran - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:09:01', '2025-11-22 23:09:01'),
	(199, 11, 20211, 'Subal Mahato Rahul', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:10:18', '2025-11-22 23:10:18'),
	(200, 42, 40211, 'Subal Mahato Rahul - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:10:18', '2025-11-22 23:10:18'),
	(201, 11, 20212, 'মুফতি মাওলানা আব্দুল্লাহ', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:11:49', '2025-11-22 23:11:49'),
	(202, 42, 40212, 'মুফতি মাওলানা আব্দুল্লাহ - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-22 23:11:49', '2025-11-22 23:11:49'),
	(203, 11, 20213, 'Islam Zahirul', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-23 00:05:32', '2025-11-23 00:05:32'),
	(204, 42, 40213, 'Islam Zahirul - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-23 00:05:32', '2025-11-23 00:05:32'),
	(205, 89, 1020103, 'Plate Purchase', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 00:24:23', '2025-11-24 00:24:23'),
	(206, 6, 10203, 'Books Plate', 0, 1, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 00:37:57', '2025-11-24 00:37:57'),
	(207, 11, 20214, 'Abeda Sultana', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-24 00:39:55', '2025-11-24 00:39:55'),
	(208, 42, 40214, 'Abeda Sultana - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-24 00:39:55', '2025-11-24 00:39:55'),
	(209, 206, 1020301, 'বিদ্যুৎ বিভাগ নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 00:42:46', '2025-11-24 00:42:46'),
	(210, 4, 406, 'Marketing Expense', 0, 1, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 01:21:27', '2025-11-24 01:21:27'),
	(211, 210, 40601, 'বিদ্যুৎ বিভাগ নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-11-24 01:21:38', '2025-11-24 01:21:55'),
	(212, 206, 1020302, 'বিজিবি নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:33:46', '2025-11-24 03:33:46'),
	(213, 210, 40602, 'বিজিবি নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:33:53', '2025-11-24 03:33:53'),
	(214, 85, 40329, 'Comp. Correction Makeup', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:40:49', '2025-11-24 03:40:49'),
	(215, 206, 1020303, 'সাস্থ সহকারী নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:47:08', '2025-11-24 03:47:08'),
	(216, 210, 40603, 'সাস্থ সহকারী নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:47:19', '2025-11-24 03:47:19'),
	(217, 206, 1020304, 'পানি উন্নয়ন বোর্ড নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:52:23', '2025-11-24 03:52:23'),
	(218, 210, 40604, 'পানি উন্নয়ন বোর্ড নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 03:52:32', '2025-11-24 03:52:32'),
	(219, 210, 40605, 'পুলিশ নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-24 04:48:08', '2025-11-24 04:48:08'),
	(220, 206, 1020305, 'নৌ, সেনা, বিমান নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 00:34:36', '2025-11-25 00:34:36'),
	(221, 210, 40606, 'নৌ, সেনা, বিমান নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 00:34:42', '2025-11-25 00:34:42'),
	(222, 206, 1020306, 'প্রাথমিক শিক্ষক নিয়োগ সহায়ীকা', 1, 0, 'A', 1, 1, 10, 10, NULL, NULL, '2025-11-25 04:17:56', '2025-11-25 04:18:16'),
	(223, 210, 40607, 'প্রাথমিক শিক্ষক নিয়োগ সহায়ীকা', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 04:18:22', '2025-11-25 04:18:22'),
	(224, 7, 1010156, 'Unkown Sales', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-11-25 04:26:13', '2025-11-25 04:26:13'),
	(225, 11, 20215, 'Ahmedul Haq', 1, 0, 'L', 1, 0, 10, NULL, NULL, NULL, '2025-11-25 23:04:21', '2025-11-25 23:04:21'),
	(226, 42, 40215, 'Ahmedul Haq - Profit', 1, 0, 'E', 1, 0, 10, NULL, NULL, NULL, '2025-11-25 23:04:21', '2025-11-25 23:04:21'),
	(227, 210, 40608, 'Branding & Promotion Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-10 06:31:47', '2025-12-10 06:31:47'),
	(228, 7, 1010157, 'ঝিনাইদাহ', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:52:04', '2025-12-21 21:52:04'),
	(229, 7, 1010158, 'মীরপুর (১০)', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:54:34', '2025-12-21 21:54:34'),
	(230, 7, 1010159, 'মীরপুর (2)', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:54:52', '2025-12-21 21:54:52'),
	(231, 7, 1010160, 'ফার্মগেট', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-21 21:55:10', '2025-12-21 21:55:10'),
	(232, 7, 1010161, 'নেক্সাস', 1, 0, 'A', 1, 0, 10, NULL, NULL, NULL, '2025-12-23 21:46:21', '2025-12-23 21:46:21'),
	(233, 6, 10204, 'Documentation', 0, 1, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:16:26', '2025-12-31 05:16:26'),
	(234, 233, 1020401, 'Membership Fee', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:17:04', '2025-12-31 05:17:04'),
	(235, 233, 1020402, 'Trade License', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:27:17', '2025-12-31 05:27:17'),
	(236, 7, 1010162, 'Saiful Shaheb', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 05:55:24', '2025-12-31 05:55:24'),
	(237, 206, 1020307, 'পুলিশ কনস্টেবল নিয়োগ সহায়িকা', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:14:48', '2025-12-31 06:14:48'),
	(238, 206, 1020308, 'Cover Plate', 1, 0, 'A', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:24:03', '2025-12-31 06:24:03'),
	(239, 210, 40609, 'Paper Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:26:54', '2025-12-31 06:26:54'),
	(240, 210, 40610, 'Cover Board', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:28:41', '2025-12-31 06:28:41'),
	(241, 210, 40611, 'Cover Print', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:28:51', '2025-12-31 06:28:51'),
	(242, 210, 40612, 'Cover Lamination', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:29:05', '2025-12-31 06:29:05'),
	(243, 210, 40613, 'Forma Print', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:29:30', '2025-12-31 06:29:30'),
	(244, 85, 40330, 'Binding', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 06:29:49', '2025-12-31 06:29:49'),
	(245, 85, 40331, 'Salary Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:51:16', '2025-12-31 09:51:16'),
	(246, 210, 40614, 'Marketing', 1, 0, 'E', 1, 1, 10, 10, NULL, NULL, '2025-12-31 09:52:37', '2025-12-31 09:52:46'),
	(247, 85, 40332, 'Rokomari Ad', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:53:01', '2025-12-31 09:53:01'),
	(248, 210, 40615, 'Business Card/ Pad', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:54:56', '2025-12-31 09:54:56'),
	(249, 210, 40616, 'Poster', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:55:09', '2025-12-31 09:55:09'),
	(250, 85, 40333, 'Office Expense', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:55:25', '2025-12-31 09:55:25'),
	(252, 85, 40334, 'Printing Paper', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 09:59:53', '2025-12-31 09:59:53'),
	(253, 85, 40335, 'Faisal Printing', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 10:00:12', '2025-12-31 10:00:12'),
	(254, 85, 40336, 'Compose/Proof etc', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2025-12-31 10:00:52', '2025-12-31 10:00:52'),
	(255, 210, 40617, 'transport', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-01 01:28:13', '2026-01-01 01:28:13'),
	(256, 11, 20216, 'Ashfaque Rahman', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2026-01-01 01:45:27', '2026-01-01 01:45:27'),
	(257, 42, 40216, 'Ashfaque Rahman - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2026-01-01 01:45:27', '2026-01-01 01:45:27'),
	(258, 11, 20217, 'Md. Zakir Hossain suny', 1, 0, 'L', 1, 0, 1, NULL, NULL, NULL, '2026-01-08 00:50:14', '2026-01-08 00:50:14'),
	(259, 42, 40217, 'Md. Zakir Hossain suny - Profit', 1, 0, 'E', 1, 0, 1, NULL, NULL, NULL, '2026-01-08 00:50:14', '2026-01-08 00:50:14'),
	(260, 85, 40337, 'Tso Enamul Haque', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-11 09:25:24', '2026-01-11 09:25:24'),
	(261, 85, 40338, 'TSO Enamul Haque Salary', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-11 09:27:07', '2026-01-11 09:27:07'),
	(262, 85, 40339, 'Crockeries', 1, 0, 'E', 1, 1, 28, 28, NULL, NULL, '2026-01-12 01:14:19', '2026-01-12 01:15:34'),
	(263, 85, 40340, 'Furniture Purchese', 1, 0, 'E', 1, 1, 28, NULL, NULL, NULL, '2026-01-14 09:56:20', '2026-01-14 09:56:20'),
	(264, 206, 1020309, 'জেনারেল নলেজ', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2026-01-14 23:18:14', '2026-01-14 23:18:14'),
	(265, 206, 1020310, 'Inner Plate (4 books)', 1, 0, 'A', 1, 1, 1, NULL, NULL, NULL, '2026-01-19 09:16:09', '2026-01-19 09:16:09'),
	(266, 85, 40341, 'Internet Connection', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2026-01-20 22:01:23', '2026-01-20 22:01:23'),
	(267, 85, 40342, 'Stove', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2026-01-20 22:01:56', '2026-01-20 22:01:56'),
	(268, 85, 40343, 'carpet', 1, 0, 'E', 1, 1, 1, NULL, NULL, NULL, '2026-01-20 22:02:45', '2026-01-20 22:02:45'),
	(269, 7, 1010163, 'রকমারি', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-24 05:23:13', '2026-01-24 05:23:13'),
	(270, 7, 1010164, 'নাটোর', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-30 09:35:18', '2026-01-30 09:35:18'),
	(271, 7, 1010165, 'পপুলার লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-30 09:52:50', '2026-01-30 09:52:50'),
	(272, 7, 1010166, 'আরাফাত লাইব্রেরী ক্তাগাছা, ময়মনসিংহ', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-01-30 09:53:11', '2026-01-30 09:53:11'),
	(273, 7, 1010167, 'ঠাকুর গাঁও', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-02-04 05:38:55', '2026-02-04 05:38:55'),
	(274, 85, 40344, 'bKash Charge', 1, 0, 'E', 1, 1, 10, NULL, NULL, NULL, '2026-02-14 09:47:03', '2026-02-14 09:47:03'),
	(277, 7, 1010168, 'Aira', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-03-03 22:43:38', '2026-03-03 22:43:38'),
	(278, 7, 1010169, 'Mitul', 1, 0, 'A', 1, 0, 8, 1, NULL, NULL, '2026-03-03 22:57:35', '2026-03-03 22:59:46'),
	(279, 7, 1010170, 'Admin', 1, 0, 'A', 1, 0, 1, NULL, NULL, NULL, '2026-03-03 23:04:39', '2026-03-03 23:04:39'),
	(280, 7, 1010171, 'warid', 1, 0, 'A', 1, 0, 1, 1, NULL, NULL, '2026-03-04 00:34:21', '2026-03-04 00:34:42');

-- Dumping structure for table e_commerce_like_rokomary.collections
DROP TABLE IF EXISTS `collections`;
CREATE TABLE IF NOT EXISTS `collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `coa_id` bigint unsigned DEFAULT NULL,
  `sales_id` bigint unsigned DEFAULT NULL,
  `sales_return_id` bigint unsigned DEFAULT NULL,
  `payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collections_payment_no_unique` (`payment_no`),
  KEY `collections_client_id_foreign` (`client_id`),
  KEY `collections_coa_id_foreign` (`coa_id`),
  KEY `collections_sales_id_foreign` (`sales_id`),
  KEY `collections_sales_return_id_foreign` (`sales_return_id`),
  KEY `collections_created_by_foreign` (`created_by`),
  KEY `collections_updated_by_foreign` (`updated_by`),
  KEY `collections_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `collections_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collections_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `collections_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `collections_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `collections_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collections_sales_return_id_foreign` FOREIGN KEY (`sales_return_id`) REFERENCES `sales_returns` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collections_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.collections: ~12 rows (approximately)
DELETE FROM `collections`;

-- Dumping structure for table e_commerce_like_rokomary.collection_lists
DROP TABLE IF EXISTS `collection_lists`;
CREATE TABLE IF NOT EXISTS `collection_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` bigint unsigned NOT NULL,
  `sales_id` bigint unsigned NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_lists_collection_id_foreign` (`collection_id`),
  KEY `collection_lists_sales_id_foreign` (`sales_id`),
  CONSTRAINT `collection_lists_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `collection_lists_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.collection_lists: ~25 rows (approximately)
DELETE FROM `collection_lists`;

-- Dumping structure for table e_commerce_like_rokomary.expenses
DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coa_id` bigint unsigned NOT NULL,
  `transaction_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expenses_transaction_no_unique` (`transaction_no`),
  KEY `expenses_coa_id_foreign` (`coa_id`),
  KEY `expenses_created_by_foreign` (`created_by`),
  KEY `expenses_updated_by_foreign` (`updated_by`),
  KEY `expenses_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `expenses_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `expenses_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `expenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.expenses: ~117 rows (approximately)
DELETE FROM `expenses`;

-- Dumping structure for table e_commerce_like_rokomary.expense_items
DROP TABLE IF EXISTS `expense_items`;
CREATE TABLE IF NOT EXISTS `expense_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_id` bigint unsigned NOT NULL,
  `coa_id` bigint unsigned NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `is_distributed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_items_expense_id_foreign` (`expense_id`),
  KEY `expense_items_coa_id_foreign` (`coa_id`),
  CONSTRAINT `expense_items_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `expense_items_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.expense_items: ~117 rows (approximately)
DELETE FROM `expense_items`;

-- Dumping structure for table e_commerce_like_rokomary.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table e_commerce_like_rokomary.home_sections
DROP TABLE IF EXISTS `home_sections`;
CREATE TABLE IF NOT EXISTS `home_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Category Product','Trending Product','New Product','Featured Category','Category Carousel','Popular Writter','Banner','Brand') COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `serial` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_sections_category_id_foreign` (`category_id`),
  CONSTRAINT `home_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.home_sections: ~0 rows (approximately)
DELETE FROM `home_sections`;

-- Dumping structure for table e_commerce_like_rokomary.home_section_categories
DROP TABLE IF EXISTS `home_section_categories`;
CREATE TABLE IF NOT EXISTS `home_section_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `home_section_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_section_categories_home_section_id_foreign` (`home_section_id`),
  KEY `home_section_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `home_section_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `home_section_categories_home_section_id_foreign` FOREIGN KEY (`home_section_id`) REFERENCES `home_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.home_section_categories: ~0 rows (approximately)
DELETE FROM `home_section_categories`;

-- Dumping structure for table e_commerce_like_rokomary.investors
DROP TABLE IF EXISTS `investors`;
CREATE TABLE IF NOT EXISTS `investors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `coa_id` bigint unsigned DEFAULT NULL,
  `profit_head` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rocket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nagad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profit_percentage` int NOT NULL DEFAULT '40',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investors_user_id_foreign` (`user_id`),
  KEY `investors_coa_id_foreign` (`coa_id`),
  KEY `investors_profit_head_foreign` (`profit_head`),
  KEY `investors_created_by_foreign` (`created_by`),
  KEY `investors_updated_by_foreign` (`updated_by`),
  KEY `investors_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `investors_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `investors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `investors_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `investors_profit_head_foreign` FOREIGN KEY (`profit_head`) REFERENCES `coas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `investors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `investors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.investors: ~16 rows (approximately)
DELETE FROM `investors`;
INSERT INTO `investors` (`id`, `user_id`, `coa_id`, `profit_head`, `name`, `image`, `email`, `phone`, `address`, `nid`, `document`, `bkash`, `rocket`, `nagad`, `bank`, `branch`, `account_name`, `account_no`, `profit_percentage`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(3, 14, 70, 71, 'Faysal Ovi', NULL, NULL, '01819809095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-07-26 05:54:59', '2025-07-26 05:54:59'),
	(4, 15, 72, 73, 'SK Turag', NULL, NULL, '01611869202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-07-26 05:56:27', '2025-07-26 05:56:27'),
	(5, 16, 74, 75, 'Ibrahim Kholil', NULL, NULL, '01716552438', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-08-03 06:26:44', '2025-08-03 06:26:44'),
	(6, 17, 77, 78, 'Rana Ibrahim', NULL, NULL, '01891794391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-08-04 00:29:56', '2025-08-04 00:29:56'),
	(7, 18, 79, 80, 'Kartik Biswas', NULL, NULL, '01717363833', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-08-13 02:44:17', '2025-08-13 02:44:17'),
	(8, 19, 83, 84, 'Mamunur Rashid', NULL, NULL, '01916304877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-08-31 22:36:09', '2025-08-31 22:36:09'),
	(9, 20, 96, 97, 'Abdullah Faysal', NULL, NULL, '01920622566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2025-09-08 03:55:39', '2025-09-08 03:55:39'),
	(10, 21, 195, 196, 'Mehedi Khan', NULL, NULL, '01911592580', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-22 22:29:00', '2025-11-22 22:29:00'),
	(11, 22, 197, 198, 'Al Emran', NULL, NULL, '01836599470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-22 23:09:01', '2025-11-22 23:09:01'),
	(12, 23, 199, 200, 'Subal Mahato Rahul', NULL, NULL, '01737064119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-22 23:10:18', '2025-11-22 23:10:18'),
	(13, 24, 201, 202, 'মুফতি মাওলানা আব্দুল্লাহ', NULL, NULL, '966504858615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-22 23:11:49', '2025-11-22 23:11:49'),
	(14, 25, 203, 204, 'Islam Zahirul', NULL, NULL, '6590671541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-23 00:05:32', '2025-11-23 00:05:32'),
	(15, 26, 207, 208, 'Abeda Sultana', NULL, NULL, '01732232337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-24 00:39:55', '2025-11-24 00:39:55'),
	(16, 27, 225, 226, 'Ahmedul Haq', NULL, NULL, '01711075195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 10, NULL, NULL, NULL, '2025-11-25 23:04:21', '2025-11-25 23:04:21'),
	(17, 29, 256, 257, 'Ashfaque Rahman', NULL, NULL, '01625496989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2026-01-01 01:45:27', '2026-01-01 01:45:27'),
	(18, 30, 258, 259, 'Md. Zakir Hossain suny', NULL, NULL, '01715138858', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, 1, NULL, NULL, NULL, '2026-01-08 00:50:14', '2026-01-08 00:50:14');

-- Dumping structure for table e_commerce_like_rokomary.invests
DROP TABLE IF EXISTS `invests`;
CREATE TABLE IF NOT EXISTS `invests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `investor_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `invest_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `qty` int NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `deposit_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bkash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rocket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nagad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `sattled` tinyint(1) NOT NULL DEFAULT '0',
  `coa_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invests_invest_no_unique` (`invest_no`),
  KEY `invests_investor_id_foreign` (`investor_id`),
  KEY `invests_product_id_foreign` (`product_id`),
  KEY `invests_coa_id_foreign` (`coa_id`),
  KEY `invests_created_by_foreign` (`created_by`),
  KEY `invests_updated_by_foreign` (`updated_by`),
  KEY `invests_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `invests_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`),
  CONSTRAINT `invests_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invests_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invests_investor_id_foreign` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invests_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invests_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.invests: ~31 rows (approximately)
DELETE FROM `invests`;
INSERT INTO `invests` (`id`, `investor_id`, `product_id`, `invest_no`, `date`, `qty`, `amount`, `deposit_type`, `bkash`, `rocket`, `nagad`, `bank_account`, `remarks`, `approved`, `sattled`, `coa_id`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(10, 3, 3, 'I2509001', '2025-07-01', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, 10, NULL, NULL, '2025-08-31 22:34:19', '2025-12-30 00:34:32'),
	(11, 4, 3, 'I2509002', '2025-07-02', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, 10, NULL, NULL, '2025-08-31 22:34:50', '2025-12-30 00:33:41'),
	(12, 8, 16, 'I2509003', '2025-07-25', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, 10, NULL, NULL, '2025-08-31 22:36:57', '2025-11-22 23:30:48'),
	(13, 5, 3, 'I2509004', '2025-08-02', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, NULL, NULL, NULL, '2025-08-31 22:37:30', '2025-12-30 00:36:19'),
	(14, 6, 3, 'I2509005', '2025-07-30', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, 10, NULL, NULL, '2025-08-31 22:38:14', '2025-12-30 00:36:43'),
	(15, 7, 3, 'I2509006', '2025-08-12', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, NULL, NULL, NULL, '2025-08-31 22:38:45', '2025-12-30 08:22:08'),
	(16, 8, 12, 'I2509007', '2025-08-31', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, 10, NULL, NULL, '2025-08-31 22:39:40', '2025-11-24 21:45:08'),
	(17, 9, 4, 'I2509008', '2025-09-06', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 1, NULL, NULL, NULL, '2025-09-08 03:57:40', '2025-12-23 22:41:04'),
	(18, 8, 7, 'I2509009', '2025-09-27', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-09-27 05:36:00', '2025-11-22 23:35:03'),
	(19, 4, 16, 'I2510001', '2025-10-13', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-10-13 00:08:05', '2025-12-30 00:16:55'),
	(20, 15, 2, 'I2510002', '2025-10-16', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 10, 10, NULL, NULL, '2025-10-15 22:31:03', '2025-12-30 00:38:20'),
	(21, 8, 7, 'I2510003', '2025-09-06', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-10-15 23:39:51', '2025-11-22 23:34:53'),
	(22, 8, 12, 'I2511001', '2025-11-01', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 10, 10, NULL, NULL, '2025-11-01 00:42:22', '2025-11-24 21:45:08'),
	(23, 9, 4, 'I2511002', '2025-11-11', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 10, 10, NULL, NULL, '2025-11-11 06:45:17', '2025-12-23 22:41:04'),
	(24, 8, 2, 'I2511003', '2025-06-01', 5, 150000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 13, 10, 10, NULL, NULL, '2025-11-19 00:55:25', '2025-12-30 00:37:52'),
	(25, 8, 7, 'I2511004', '2025-11-22', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-11-22 22:27:02', '2025-11-22 23:34:39'),
	(26, 10, 13, 'I2511005', '2025-11-23', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-11-22 22:29:42', '2025-11-22 23:11:11'),
	(27, 11, 13, 'I2511006', '2025-11-30', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-11-22 23:09:19', '2025-11-22 23:09:27'),
	(28, 12, 13, 'I2511007', '2025-11-30', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-11-22 23:10:52', '2025-11-22 23:10:52'),
	(29, 13, 16, 'I2511008', '2025-11-22', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-11-22 23:12:17', '2025-11-22 23:12:17'),
	(30, 14, 13, 'I2511009', '2025-11-30', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-11-23 00:07:06', '2025-11-23 00:07:06'),
	(32, 16, 17, 'I2511010', '2025-11-25', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-11-25 23:06:14', '2025-11-25 23:06:14'),
	(33, 14, 17, 'I2511011', '2025-11-25', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-11-26 00:36:59', '2025-11-26 00:36:59'),
	(34, 14, 17, 'I2511012', '2025-11-27', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, NULL, NULL, NULL, '2025-11-26 22:32:35', '2025-11-26 22:32:35'),
	(35, 8, 13, 'I2512001', '2025-12-14', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, 10, NULL, NULL, '2025-12-14 00:17:31', '2025-12-15 03:19:36'),
	(36, 5, 13, 'I2512002', '2025-12-15', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-12-15 03:19:53', '2025-12-15 03:19:53'),
	(37, 8, 17, 'I2512003', '2025-12-21', 1, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 10, NULL, NULL, NULL, '2025-12-22 01:41:57', '2025-12-22 01:41:57'),
	(38, 17, 17, 'I2601001', '2026-01-01', 2, 60000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 14, 1, 1, NULL, NULL, '2026-01-01 01:45:47', '2026-01-01 03:16:36'),
	(39, 18, 17, 'I2601002', '2026-01-05', 5, 150000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 98, 1, 1, NULL, NULL, '2026-01-08 00:50:43', '2026-01-11 08:54:14'),
	(40, 9, 18, 'I2601003', '2026-01-15', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13, 1, NULL, NULL, NULL, '2026-01-19 01:31:09', '2026-01-19 01:31:09'),
	(41, 9, 18, 'I2601004', '2026-01-31', 3, 90000, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 14, 1, NULL, NULL, NULL, '2026-01-31 05:27:12', '2026-01-31 05:27:12');

-- Dumping structure for table e_commerce_like_rokomary.invest_sattlements
DROP TABLE IF EXISTS `invest_sattlements`;
CREATE TABLE IF NOT EXISTS `invest_sattlements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `investor_id` bigint unsigned NOT NULL,
  `coa_id` bigint unsigned NOT NULL,
  `sattlement_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `payment` decimal(16,0) NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invest_sattlements_sattlement_no_unique` (`sattlement_no`),
  KEY `invest_sattlements_investor_id_foreign` (`investor_id`),
  KEY `invest_sattlements_coa_id_foreign` (`coa_id`),
  KEY `invest_sattlements_created_by_foreign` (`created_by`),
  KEY `invest_sattlements_updated_by_foreign` (`updated_by`),
  KEY `invest_sattlements_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `invest_sattlements_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invest_sattlements_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invest_sattlements_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invest_sattlements_investor_id_foreign` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invest_sattlements_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.invest_sattlements: ~9 rows (approximately)
DELETE FROM `invest_sattlements`;
INSERT INTO `invest_sattlements` (`id`, `investor_id`, `coa_id`, `sattlement_no`, `date`, `invest_qty`, `invest_amount`, `payment`, `remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(9, 8, 13, 'IS2511004', '2025-11-24', 6, 180000, 180000, NULL, 10, NULL, NULL, NULL, '2025-11-24 21:45:08', '2025-11-24 21:45:08'),
	(12, 9, 13, 'IS2512002', '2025-12-24', 6, 180000, 180000, NULL, 10, NULL, NULL, NULL, '2025-12-23 22:41:04', '2025-12-23 22:41:04'),
	(16, 4, 13, 'IS2512003', '2025-11-23', 1, 30000, 30000, NULL, 10, NULL, NULL, NULL, '2025-12-30 00:33:41', '2025-12-30 00:33:41'),
	(17, 3, 13, 'IS2512004', '2025-11-23', 1, 30000, 30000, NULL, 10, NULL, NULL, NULL, '2025-12-30 00:34:32', '2025-12-30 00:34:32'),
	(18, 5, 13, 'IS2512005', '2025-12-15', 1, 30000, 30000, NULL, 10, NULL, NULL, NULL, '2025-12-30 00:36:19', '2025-12-30 00:36:19'),
	(19, 6, 13, 'IS2512006', '2025-12-29', 1, 30000, 30000, NULL, 10, NULL, NULL, NULL, '2025-12-30 00:36:43', '2025-12-30 00:36:43'),
	(20, 8, 13, 'IS2512007', '2025-12-29', 5, 150000, 150000, NULL, 10, NULL, NULL, NULL, '2025-12-30 00:37:52', '2025-12-30 00:37:52'),
	(21, 15, 13, 'IS2512008', '2025-12-29', 1, 30000, 30000, NULL, 10, NULL, NULL, NULL, '2025-12-30 00:38:20', '2025-12-30 00:38:20'),
	(22, 7, 13, 'IS2512009', '2025-12-30', 2, 60000, 60000, NULL, 10, NULL, NULL, NULL, '2025-12-30 08:22:08', '2025-12-30 08:22:08');

-- Dumping structure for table e_commerce_like_rokomary.invest_sattlement_lists
DROP TABLE IF EXISTS `invest_sattlement_lists`;
CREATE TABLE IF NOT EXISTS `invest_sattlement_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invest_sattlement_id` bigint unsigned NOT NULL,
  `investor_id` bigint unsigned NOT NULL,
  `invest_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `payment` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invest_sattlement_lists_invest_sattlement_id_foreign` (`invest_sattlement_id`),
  KEY `invest_sattlement_lists_investor_id_foreign` (`investor_id`),
  KEY `invest_sattlement_lists_invest_id_foreign` (`invest_id`),
  KEY `invest_sattlement_lists_product_id_foreign` (`product_id`),
  CONSTRAINT `invest_sattlement_lists_invest_id_foreign` FOREIGN KEY (`invest_id`) REFERENCES `invests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invest_sattlement_lists_invest_sattlement_id_foreign` FOREIGN KEY (`invest_sattlement_id`) REFERENCES `invest_sattlements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invest_sattlement_lists_investor_id_foreign` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invest_sattlement_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.invest_sattlement_lists: ~11 rows (approximately)
DELETE FROM `invest_sattlement_lists`;
INSERT INTO `invest_sattlement_lists` (`id`, `invest_sattlement_id`, `investor_id`, `invest_id`, `product_id`, `invest_qty`, `invest_amount`, `payment`, `created_at`, `updated_at`) VALUES
	(10, 9, 8, 16, 12, 3, 90000, 90000, '2025-11-24 21:45:08', '2025-11-24 21:45:08'),
	(11, 9, 8, 22, 12, 3, 90000, 90000, '2025-11-24 21:45:08', '2025-11-24 21:45:08'),
	(15, 12, 9, 17, 4, 3, 90000, 90000, '2025-12-23 22:41:04', '2025-12-23 22:41:04'),
	(16, 12, 9, 23, 4, 3, 90000, 90000, '2025-12-23 22:41:04', '2025-12-23 22:41:04'),
	(23, 16, 4, 11, 3, 1, 30000, 30000, '2025-12-30 00:33:41', '2025-12-30 00:33:41'),
	(24, 17, 3, 10, 3, 1, 30000, 30000, '2025-12-30 00:34:32', '2025-12-30 00:34:32'),
	(25, 18, 5, 13, 3, 1, 30000, 30000, '2025-12-30 00:36:19', '2025-12-30 00:36:19'),
	(26, 19, 6, 14, 3, 1, 30000, 30000, '2025-12-30 00:36:43', '2025-12-30 00:36:43'),
	(27, 20, 8, 24, 2, 5, 150000, 150000, '2025-12-30 00:37:52', '2025-12-30 00:37:52'),
	(28, 21, 15, 20, 2, 1, 30000, 30000, '2025-12-30 00:38:20', '2025-12-30 00:38:20'),
	(29, 22, 7, 15, 3, 2, 60000, 60000, '2025-12-30 08:22:08', '2025-12-30 08:22:08');

-- Dumping structure for table e_commerce_like_rokomary.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table e_commerce_like_rokomary.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.job_batches: ~0 rows (approximately)
DELETE FROM `job_batches`;

-- Dumping structure for table e_commerce_like_rokomary.menus
DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'footer',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `category_id` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `menus_created_by_foreign` (`created_by`),
  KEY `menus_updated_by_foreign` (`updated_by`),
  KEY `menus_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `menus_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `menus_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.menus: ~21 rows (approximately)
DELETE FROM `menus`;
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

-- Dumping structure for table e_commerce_like_rokomary.menu_items
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` enum('external','internal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  KEY `menu_items_parent_id_foreign` (`parent_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.menu_items: ~9 rows (approximately)
DELETE FROM `menu_items`;
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

-- Dumping structure for table e_commerce_like_rokomary.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.migrations: ~40 rows (approximately)
DELETE FROM `migrations`;
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

-- Dumping structure for table e_commerce_like_rokomary.model_has_permissions
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.model_has_permissions: ~0 rows (approximately)
DELETE FROM `model_has_permissions`;

-- Dumping structure for table e_commerce_like_rokomary.model_has_roles
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.model_has_roles: ~1 rows (approximately)
DELETE FROM `model_has_roles`;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1);

-- Dumping structure for table e_commerce_like_rokomary.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_number_unique` (`order_number`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.orders: ~15 rows (approximately)
DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `user_id`, `order_number`, `subtotal`, `discount`, `tax`, `total`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
	(1, 8, 'ORD-1772611138', 1163.00, 116.30, 58.15, 1104.85, 'cod', 'pending', '2026-03-04 01:58:58', '2026-03-04 01:58:58');

-- Dumping structure for table e_commerce_like_rokomary.order_items
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned DEFAULT NULL,
  `qty` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_product_variant_id_foreign` (`product_variant_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.order_items: ~30 rows (approximately)
DELETE FROM `order_items`;
INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_variant_id`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
	(1, 1, 28, NULL, 3, 33.00, 99.00, '2026-03-04 01:58:58', '2026-03-04 01:58:58'),
	(2, 1, 31, 16, 4, 266.00, 1064.00, '2026-03-04 01:58:58', '2026-03-04 01:58:58');

-- Dumping structure for table e_commerce_like_rokomary.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table e_commerce_like_rokomary.payments
DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `investor_id` bigint unsigned NOT NULL,
  `coa_id` bigint unsigned DEFAULT NULL,
  `payment_type` enum('Advance','Payment','Adjust') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Advance',
  `payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payments_payment_no_unique` (`payment_no`),
  KEY `payments_investor_id_foreign` (`investor_id`),
  KEY `payments_coa_id_foreign` (`coa_id`),
  KEY `payments_created_by_foreign` (`created_by`),
  KEY `payments_updated_by_foreign` (`updated_by`),
  KEY `payments_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `payments_coa_id_foreign` FOREIGN KEY (`coa_id`) REFERENCES `coas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `payments_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `payments_investor_id_foreign` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.payments: ~23 rows (approximately)
DELETE FROM `payments`;

-- Dumping structure for table e_commerce_like_rokomary.payment_lists
DROP TABLE IF EXISTS `payment_lists`;
CREATE TABLE IF NOT EXISTS `payment_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` bigint unsigned NOT NULL,
  `distribution_list_id` bigint unsigned NOT NULL,
  `invest_id` bigint unsigned NOT NULL,
  `investor_id` bigint unsigned NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_lists_payment_id_foreign` (`payment_id`),
  KEY `payment_lists_distribution_list_id_foreign` (`distribution_list_id`),
  KEY `payment_lists_invest_id_foreign` (`invest_id`),
  KEY `payment_lists_investor_id_foreign` (`investor_id`),
  CONSTRAINT `payment_lists_distribution_list_id_foreign` FOREIGN KEY (`distribution_list_id`) REFERENCES `profit_distribution_lists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payment_lists_invest_id_foreign` FOREIGN KEY (`invest_id`) REFERENCES `invests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payment_lists_investor_id_foreign` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payment_lists_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.payment_lists: ~17 rows (approximately)
DELETE FROM `payment_lists`;

-- Dumping structure for table e_commerce_like_rokomary.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.permissions: ~91 rows (approximately)
DELETE FROM `permissions`;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Dashboard', 'web', '2026-01-19 05:33:09', '2026-01-19 05:33:09'),
	(2, 'User & Role Manage', 'web', '2026-01-19 05:34:47', '2026-02-25 23:25:47'),
	(3, 'Roles', 'web', '2026-01-19 05:35:46', '2026-01-19 05:35:46'),
	(4, 'Users', 'web', '2026-01-19 05:36:43', '2026-01-19 05:36:43'),
	(6, 'Admin Settings', 'web', '2026-01-19 05:37:50', '2026-01-19 05:37:50'),
	(14, 'admin.role.create', 'web', '2026-01-19 23:59:11', '2026-01-19 23:59:11'),
	(18, 'admin.role.edit', 'web', '2026-01-20 03:24:24', '2026-01-20 03:24:24'),
	(19, 'admin.role.destroy', 'web', '2026-01-20 03:25:16', '2026-01-20 03:29:11'),
	(20, 'admin.role-permission.edit', 'web', '2026-01-20 03:31:59', '2026-01-20 03:31:59'),
	(21, 'Books Management', 'web', '2026-01-20 03:47:59', '2026-02-25 23:41:26'),
	(22, 'Category', 'web', '2026-01-20 03:49:56', '2026-01-20 03:49:56'),
	(23, 'admin.product.create', 'web', '2026-01-20 03:51:53', '2026-01-20 03:51:53'),
	(24, 'admin.product.edit', 'web', '2026-01-20 03:52:09', '2026-01-20 03:52:09'),
	(25, 'admin.product.destroy', 'web', '2026-01-20 03:52:34', '2026-01-20 03:52:34'),
	(26, 'admin.product.index', 'web', '2026-01-20 03:56:07', '2026-02-25 23:43:47'),
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
	(45, 'admin.settings.index', 'web', '2026-01-20 06:07:05', '2026-02-25 23:24:47'),
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
	(58, 'admin.slider.edit', 'web', '2026-02-02 04:09:53', '2026-02-02 04:09:53'),
	(59, 'Business Setup', 'web', '2026-02-25 23:12:24', '2026-02-25 23:12:24'),
	(60, 'Website Setup', 'web', '2026-02-25 23:23:51', '2026-02-25 23:23:51'),
	(61, 'Inventory', 'web', '2026-02-26 01:33:52', '2026-02-26 01:33:52'),
	(62, 'Production', 'web', '2026-02-26 01:35:08', '2026-02-26 01:35:08'),
	(63, 'admin.production.create', 'web', '2026-02-26 01:35:53', '2026-02-26 01:35:53'),
	(64, 'admin.production.edit', 'web', '2026-02-26 01:36:39', '2026-02-26 01:36:39'),
	(65, 'Stores', 'web', '2026-02-26 01:49:40', '2026-02-26 01:49:40'),
	(66, 'admin.store.create', 'web', '2026-02-26 01:50:44', '2026-02-26 01:50:44'),
	(67, 'admin.store.edit', 'web', '2026-02-26 01:51:03', '2026-02-26 01:51:03'),
	(68, 'Stock', 'web', '2026-02-26 02:01:06', '2026-02-26 02:01:06'),
	(69, 'Investor Panel', 'web', '2026-03-01 21:58:22', '2026-03-01 21:58:22'),
	(70, 'Investor 1', 'web', '2026-03-01 22:00:26', '2026-03-01 22:00:26'),
	(71, 'Invest Process', 'web', '2026-03-01 22:04:26', '2026-03-01 22:04:26'),
	(72, 'Profit Distribution', 'web', '2026-03-01 22:06:32', '2026-03-01 22:06:32'),
	(73, 'Investor Payment', 'web', '2026-03-01 22:08:13', '2026-03-01 22:08:13'),
	(74, 'Invest Settlements', 'web', '2026-03-01 22:10:04', '2026-03-01 22:10:04'),
	(75, 'Investor Statement', 'web', '2026-03-01 22:15:11', '2026-03-01 22:15:11'),
	(76, 'admin.investor.create', 'web', '2026-03-01 22:17:06', '2026-03-01 22:17:06'),
	(78, 'admin.invest.create', 'web', '2026-03-01 22:20:32', '2026-03-01 22:20:32'),
	(79, 'admin.investor.edit', 'web', '2026-03-01 22:21:50', '2026-03-01 22:21:50'),
	(80, 'admin.profit-distribution.create', 'web', '2026-03-01 22:22:35', '2026-03-01 22:22:35'),
	(81, 'admin.profit-distribution.show', 'web', '2026-03-01 22:24:39', '2026-03-01 22:24:39'),
	(82, 'admin.investor-payment.create', 'web', '2026-03-01 22:25:41', '2026-03-01 22:25:41'),
	(83, 'admin.investor-payment.edit', 'web', '2026-03-01 22:26:02', '2026-03-01 22:26:02'),
	(84, 'admin.invest-sattlement.create', 'web', '2026-03-01 22:26:57', '2026-03-01 22:26:57'),
	(85, 'admin.invest-sattlement.show', 'web', '2026-03-01 22:27:09', '2026-03-01 22:27:09'),
	(86, 'Sales Management', 'web', '2026-03-01 22:34:26', '2026-03-01 22:34:26'),
	(87, 'Clients', 'web', '2026-03-01 22:42:47', '2026-03-01 22:42:47'),
	(88, 'admin.client.create', 'web', '2026-03-01 22:43:16', '2026-03-01 22:43:16'),
	(89, 'admin.client.edit', 'web', '2026-03-01 22:43:27', '2026-03-01 22:43:27'),
	(90, 'Sales 1', 'web', '2026-03-01 22:45:09', '2026-03-01 22:45:09'),
	(91, 'admin.sales.create', 'web', '2026-03-01 22:46:57', '2026-03-01 22:46:57'),
	(92, 'admin.sales.show', 'web', '2026-03-01 22:47:20', '2026-03-01 22:47:20'),
	(93, 'Collections', 'web', '2026-03-01 22:50:23', '2026-03-01 22:50:23'),
	(94, 'admin.collection.create', 'web', '2026-03-01 22:51:54', '2026-03-01 22:51:54'),
	(95, 'admin.collection.show', 'web', '2026-03-01 22:52:07', '2026-03-01 22:52:07'),
	(96, 'Reports', 'web', '2026-03-01 22:57:48', '2026-03-01 22:57:48'),
	(97, 'Sales Report', 'web', '2026-03-01 23:55:22', '2026-03-01 23:55:22'),
	(98, 'Collection Report', 'web', '2026-03-01 23:57:00', '2026-03-01 23:57:00'),
	(99, 'Sales Return Report', 'web', '2026-03-02 00:03:47', '2026-03-02 00:03:47'),
	(100, 'Expenses', 'web', '2026-03-02 00:16:46', '2026-03-02 00:16:46'),
	(102, 'admin.expense.create', 'web', '2026-03-02 00:20:19', '2026-03-02 00:20:19'),
	(103, 'admin.expense.show', 'web', '2026-03-02 00:21:24', '2026-03-02 00:21:24'),
	(104, 'Income Statement', 'web', '2026-03-02 00:29:11', '2026-03-02 00:29:11'),
	(105, 'Admin Menu', 'web', '2026-03-02 00:35:14', '2026-03-02 00:35:14'),
	(106, 'admin.admin-menu.create', 'web', '2026-03-02 00:51:22', '2026-03-02 00:51:22'),
	(107, 'admin.admin-menu.edit', 'web', '2026-03-02 00:52:36', '2026-03-02 00:52:36'),
	(108, 'admin.admin-menu-action.index', 'web', '2026-03-02 00:56:38', '2026-03-02 00:56:38'),
	(109, 'admin.admin-menu-action.create', 'web', '2026-03-02 00:57:37', '2026-03-02 00:57:37'),
	(110, 'admin.admin-menu-action.edit', 'web', '2026-03-02 00:58:54', '2026-03-02 00:58:54'),
	(111, 'admin.admin-menu-action.destroy', 'web', '2026-03-02 00:59:45', '2026-03-02 00:59:45'),
	(112, 'admin.admin-menu.destroy', 'web', '2026-03-02 01:00:30', '2026-03-02 01:00:30'),
	(113, 'Purchase Manage', 'web', '2026-03-02 02:34:09', '2026-03-02 02:39:06'),
	(114, 'Purchase Order', 'web', '2026-03-02 02:38:30', '2026-03-02 02:38:30'),
	(115, 'admin.purchase-order.create', 'web', '2026-03-02 02:39:57', '2026-03-02 02:39:57'),
	(116, 'admin.purchase-order.show', 'web', '2026-03-02 02:40:17', '2026-03-03 00:06:41'),
	(117, 'Purchase Create', 'web', '2026-03-02 23:47:16', '2026-03-02 23:47:16');

-- Dumping structure for table e_commerce_like_rokomary.productions
DROP TABLE IF EXISTS `productions`;
CREATE TABLE IF NOT EXISTS `productions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `production_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `total_qty` decimal(16,0) NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productions_production_no_unique` (`production_no`),
  KEY `productions_store_id_foreign` (`store_id`),
  KEY `productions_created_by_foreign` (`created_by`),
  KEY `productions_updated_by_foreign` (`updated_by`),
  KEY `productions_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `productions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `productions_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `productions_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  CONSTRAINT `productions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.productions: ~3 rows (approximately)
DELETE FROM `productions`;

-- Dumping structure for table e_commerce_like_rokomary.production_lists
DROP TABLE IF EXISTS `production_lists`;
CREATE TABLE IF NOT EXISTS `production_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `production_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_edition_id` bigint unsigned DEFAULT NULL,
  `qty` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `production_lists_production_id_foreign` (`production_id`),
  KEY `production_lists_store_id_foreign` (`store_id`),
  KEY `production_lists_product_id_foreign` (`product_id`),
  KEY `production_lists_product_edition_id_foreign` (`product_edition_id`),
  CONSTRAINT `production_lists_product_edition_id_foreign` FOREIGN KEY (`product_edition_id`) REFERENCES `product_editions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `production_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `production_lists_production_id_foreign` FOREIGN KEY (`production_id`) REFERENCES `productions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `production_lists_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.production_lists: ~2 rows (approximately)
DELETE FROM `production_lists`;

-- Dumping structure for table e_commerce_like_rokomary.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `uom_id` bigint unsigned DEFAULT NULL,
  `brand_id` bigint unsigned DEFAULT NULL,
  `publication_id` bigint unsigned DEFAULT NULL,
  `product_type` enum('book','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'book',
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `regular_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `discount_start_date` date DEFAULT NULL,
  `discount_end_date` date DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `new_arrival` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  UNIQUE KEY `products_barcode_unique` (`barcode`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_uom_id_foreign` (`uom_id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  KEY `products_publication_id_foreign` (`publication_id`),
  KEY `products_created_by_foreign` (`created_by`),
  KEY `products_updated_by_foreign` (`updated_by`),
  KEY `products_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_publication_id_foreign` FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `uoms` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.products: ~22 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `code`, `slug`, `category_id`, `uom_id`, `brand_id`, `publication_id`, `product_type`, `barcode`, `file`, `thumbnail`, `short_description`, `description`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `sku`, `meta_title`, `meta_description`, `meta_image`, `custom_barcode`, `favorite`, `trending`, `new_arrival`, `best_seller`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Book1', NULL, 'book1', 1, 1, 1, NULL, 'book', 'asdsas', NULL, 'storage/media/product/2026-01-25-ohsvTRcZVvt6d3SOWJRqqL5gxdGsAfsTpogwuJoG.webp', '<p>dadadasda</p>', '<p>sdsdasd</p>', 234.00, 300.00, 320.00, 1.00, 'amount', '2026-01-20', '2026-02-21', 'SKUS', 'meta', 'cssdsfsf', 'storage/media/product/2026-01-20-FLxMajI5xjcg9zj2q2IBLQh6RqZUGujs5DiDmI6I.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-20 04:15:44', '2026-01-24 23:17:55'),
	(2, 'Book2', NULL, 'book2', 1, 1, 1, NULL, 'book', 'sdasd', NULL, 'storage/media/product/2026-01-25-fQxUtYHO76XI21NVyXZ7weRAsPQpdbmXQwaJHczN.webp', '<p>dsdasda</p>', '<p>dasdas</p>', 11.00, 33.00, 31.00, 2.00, 'amount', '2026-01-20', '2026-02-26', 'ssds', 'sdsadad', 'sadasdasd', 'storage/media/product/2026-01-20-NPtdHB2jK5Qnb7ZQHRfq1tlCqh3GLhOoYfA8dHbZ.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-20 04:26:34', '2026-01-24 23:17:37'),
	(3, 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', NULL, 'eknjre-ummahr-itihas-3-khnd', 2, 1, 1, 2, 'book', 'sdfsd', NULL, 'storage/media/product/2026-01-25-OeGX8HlaQ779JWdmB6KHD84OpPmkARBeql8VyfvA.webp', '<p>আল্লামা ইবনুল কায়্যিম জাওযিয়্যাহ রহ</p>', '<p>sdfsd</p>', 22.00, 23.00, 22.00, 1.00, 'amount', NULL, NULL, NULL, 'sdfsddf', 'sdfsd', 'storage/media/product/2026-01-25-OeGX8HlaQ779JWdmB6KHD84OpPmkARBeql8VyfvA.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-22 04:46:01', '2026-02-28 21:27:50'),
	(5, 'Electric Ketle', NULL, 'electric-ketle', 3, 1, 1, 2, 'other', 'sds', NULL, 'storage/media/product/2026-02-03-EB2TqjB4St9q72M2f8GOo8FWAAkIM0PB7bmFM9sa.webp', '<p>Electric Ketle</p>', '<p>Electric Ketle</p>', 800.00, 1200.00, 1188.00, 1.00, 'percent', NULL, NULL, NULL, 'sdfsdf', 'dsfsdf', 'storage/media/product/2026-02-03-EB2TqjB4St9q72M2f8GOo8FWAAkIM0PB7bmFM9sa.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-22 06:36:18', '2026-02-03 00:25:05'),
	(7, 'Smart Phone Model12222', NULL, 'smart-phone-model12222', 6, 1, 1, 1, 'other', 'sasa', NULL, 'storage/media/product/2026-02-03-AaEwp89prQkVMnUeryd9zWDClt1a0seH4xMJYlUL.webp', '<p><span style="color: rgb(108, 117, 125); font-family: Inter, sans-serif; background-color: rgb(248, 249, 250);">Smart Phone Model12222</span></p>', '<p><span style="color: rgb(108, 117, 125); font-family: Inter, sans-serif; background-color: rgb(248, 249, 250);">Smart Phone Model12222</span></p>', 13000.00, 20000.00, 13400.00, 33.00, 'percent', NULL, NULL, NULL, 'fsd', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-AaEwp89prQkVMnUeryd9zWDClt1a0seH4xMJYlUL.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:06:22', '2026-02-03 00:24:05'),
	(10, 'শেষের কবিতা', 'COD2026030510', 'sesher-kbita', 31, 1, 1, 2, 'book', 'wqsa', NULL, 'storage/media/product/2026-02-03-rb9Jdd1upUcXFKsCuruAHGJPitvu7OMJ15JZqU70.webp', 'লেখক: <strong data-start="161" data-end="182">রবীন্দ্রনাথ ঠাকুর</strong><br data-start="360" data-end="363">ভাষা: বাংলা<br data-start="374" data-end="377">সংকলন ও রচনা: <strong data-start="161" data-end="182">রবীন্দ্রনাথ ঠাকুর</strong>', '<h2 data-start="113" data-end="130">📘 বইয়ের নাম</h2>\r\n<p data-start="131" data-end="146"><strong data-start="131" data-end="146">শেষের কবিতা</strong></p>\r\n<h2 data-start="148" data-end="160">✍️ লেখক</h2>\r\n<p data-start="161" data-end="182"><strong data-start="161" data-end="182">রবীন্দ্রনাথ ঠাকুর</strong></p>\r\n<h2 data-start="184" data-end="202">🏷️ ক্যাটাগরি</h2>\r\n<p data-start="203" data-end="246">উপন্যাস / রোমান্টিক সাহিত্য / বাংলা ক্লাসিক</p>\r\n<h2 data-start="248" data-end="260">🌐 ভাষা</h2>\r\n<p data-start="261" data-end="266">বাংলা</p>\r\n<h2 data-start="268" data-end="297">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start="298" data-end="500"><strong data-start="298" data-end="313">শেষের কবিতা</strong> বাংলা সাহিত্যের অন্যতম জনপ্রিয় ও গভীর রোমান্টিক উপন্যাস। এই উপন্যাসে প্রেমকে দেখা হয়েছে নতুন দৃষ্টিভঙ্গিতে—যেখানে আবেগ, বুদ্ধিবৃত্তিক দ্বন্দ্ব, আত্মসম্মান ও স্বাধীন চিন্তার সমন্বয় রয়েছে।</p>\r\n<p data-start="502" data-end="679">গল্পের মূল চরিত্র <strong data-start="520" data-end="532">অমিত রায়</strong> ও <strong data-start="535" data-end="545">লাবণ্য</strong>—দুজনের কথোপকথন, মানসিক টানাপোড়েন এবং দর্শনভিত্তিক প্রেমই এই উপন্যাসের প্রাণ। এখানে প্রেম শুধু অনুভূতি নয়, বরং চিন্তা ও উপলব্ধির বিষয়।</p>\r\n<h2 data-start="681" data-end="707">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<ul data-start="708" data-end="882"><li data-start="708" data-end="741">\r\n<p data-start="710" data-end="741">প্রেম ও আত্মসম্মানের দ্বন্দ্ব</p>\r\n</li><li data-start="742" data-end="782">\r\n<p data-start="744" data-end="782">আধুনিক চিন্তাধারা ও ব্যক্তিস্বাধীনতা</p>\r\n</li><li data-start="783" data-end="810">\r\n<p data-start="785" data-end="810">আবেগ বনাম যুক্তির সংঘাত</p>\r\n</li><li data-start="811" data-end="847">\r\n<p data-start="813" data-end="847">নারীর আত্মমর্যাদা ও মানসিক শক্তি</p>\r\n</li><li data-start="848" data-end="882">\r\n<p data-start="850" data-end="882">দর্শনভিত্তিক রোমান্টিক সম্পর্ক</p>\r\n</li></ul>\r\n<h2 data-start="884" data-end="906">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start="907" data-end="1099"><li data-start="907" data-end="965">\r\n<p data-start="909" data-end="965">বাংলা সাহিত্যের <strong data-start="925" data-end="952">ক্লাসিক প্রেমের উপন্যাস</strong> পড়তে চাইলে</p>\r\n</li><li data-start="966" data-end="1008">\r\n<p data-start="968" data-end="1008">প্রেমকে গভীর ও বুদ্ধিবৃত্তিকভাবে বুঝতে</p>\r\n</li><li data-start="1009" data-end="1055">\r\n<p data-start="1011" data-end="1055">রবীন্দ্রনাথের চিন্তা ও ভাষাশৈলী উপভোগ করতে</p>\r\n</li><li data-start="1056" data-end="1099">\r\n<p data-start="1058" data-end="1099">বারবার পড়ার মতো একটি সাহিত্যকর্ম হিসেবে</p>\r\n</li></ul>\r\n<h2 data-start="1101" data-end="1125">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start="1126" data-end="1243"><li data-start="1126" data-end="1148">\r\n<p data-start="1128" data-end="1148">সাহিত্যপ্রেমী পাঠক</p>\r\n</li><li data-start="1149" data-end="1184">\r\n<p data-start="1151" data-end="1184">কলেজ–বিশ্ববিদ্যালয়ের শিক্ষার্থী</p>\r\n</li><li data-start="1185" data-end="1208">\r\n<p data-start="1187" data-end="1208">রবীন্দ্রনাথ অনুরাগী</p>\r\n</li><li data-start="1209" data-end="1243">\r\n<p data-start="1211" data-end="1243">ক্লাসিক বাংলা উপন্যাস সংগ্রাহক</p>\r\n</li></ul>\r\n<h2 data-start="1245" data-end="1265">🧠 লেখক পরিচিতি</h2>\r\n<p data-start="1266" data-end="1435"><strong data-start="1266" data-end="1287">রবীন্দ্রনাথ ঠাকুর</strong> (১৮৬১–১৯৪১) বাংলা সাহিত্যের সর্বশ্রেষ্ঠ সাহিত্যিকদের একজন এবং <strong data-start="1350" data-end="1379">নোবেল পুরস্কারপ্রাপ্ত কবি</strong>। তাঁর উপন্যাস, কবিতা ও প্রবন্ধ আজও সমানভাবে প্রাসঙ্গিক।</p>', 150.00, 160.00, 140.80, 12.00, 'percent', '2026-02-26', '2026-02-27', 'SHSEK', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড3', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-rb9Jdd1upUcXFKsCuruAHGJPitvu7OMJ15JZqU70.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:11:41', '2026-03-04 23:17:45'),
	(11, 'অনুভূতির কাব্য', 'COD2026030511', 'onuvuutir-kabz', 31, 1, 1, 2, 'book', 'BARKABB', NULL, 'storage/media/product/2026-02-03-8FjavixMHLPCAdGiq8fTy7q0qjCY3f4bLTPcV3Wy.webp', 'লেখক: হিল্লোল তালুকদার<br data-start="360" data-end="363">ভাষা: বাংলা<br data-start="374" data-end="377">সংকলন ও রচনা: প্রিয় বাংলা প্রকাশন', '<h2 data-start="157" data-end="174">📘 বইয়ের নাম</h2>\r\n<p data-start="175" data-end="193"><strong data-start="175" data-end="193">অনুভূতির কাব্য</strong></p>\r\n<h2 data-start="195" data-end="213">🏷️ ক্যাটাগরি</h2>\r\n<p data-start="214" data-end="258">কবিতা / আধুনিক বাংলা কাব্য / অনুভূতি ও প্রেম</p>\r\n<h2 data-start="260" data-end="272">🌐 ভাষা</h2>\r\n<p data-start="273" data-end="278">বাংলা</p>\r\n<h2 data-start="280" data-end="309">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start="310" data-end="552"><strong data-start="310" data-end="328">অনুভূতির কাব্য</strong> একটি আবেগপ্রবণ কবিতার সংকলন, যেখানে মানুষের অন্তর্গত অনুভূতি—ভালোবাসা, কষ্ট, অপেক্ষা, বিচ্ছেদ, নীরবতা ও জীবনের বাস্তবতা—কবিতার ছন্দে তুলে ধরা হয়েছে। প্রতিটি কবিতা পাঠকের হৃদয়ের গভীরে লুকিয়ে থাকা না বলা কথাগুলোকে স্পর্শ করে।</p>\r\n<p data-start="554" data-end="692">এই বইয়ের কবিতাগুলো সহজ ভাষায় লেখা, কিন্তু অনুভূতিতে গভীর। পাঠক নিজের জীবনের গল্পের সঙ্গে কবিতার পঙ্‌ক্তিগুলো মিলিয়ে নিতে পারবেন খুব সহজেই।</p>\r\n<h2 data-start="694" data-end="720">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<ul data-start="721" data-end="871"><li data-start="721" data-end="750">\r\n<p data-start="723" data-end="750">প্রেম ও ভালোবাসার অনুভূতি</p>\r\n</li><li data-start="751" data-end="782">\r\n<p data-start="753" data-end="782">না বলা কষ্ট ও নীরব যন্ত্রণা</p>\r\n</li><li data-start="783" data-end="812">\r\n<p data-start="785" data-end="812">স্মৃতি, অপেক্ষা ও বিচ্ছেদ</p>\r\n</li><li data-start="813" data-end="839">\r\n<p data-start="815" data-end="839">জীবনের বাস্তব অভিজ্ঞতা</p>\r\n</li><li data-start="840" data-end="871">\r\n<p data-start="842" data-end="871">হৃদয়ছোঁয়া ও ভাবনামূলক কবিতা</p>\r\n</li></ul>\r\n<h2 data-start="873" data-end="895">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start="896" data-end="1066"><li data-start="896" data-end="933">\r\n<p data-start="898" data-end="933">অনুভূতিপ্রবণ কবিতা পড়তে ভালোবাসলে</p>\r\n</li><li data-start="934" data-end="973">\r\n<p data-start="936" data-end="973">একাকিত্ব বা নীরব সময়ের সঙ্গী হিসেবে</p>\r\n</li><li data-start="974" data-end="1013">\r\n<p data-start="976" data-end="1013">সহজ কিন্তু গভীর অর্থবহ কবিতা খুঁজলে</p>\r\n</li><li data-start="1014" data-end="1066">\r\n<p data-start="1016" data-end="1066">উপহার দেওয়ার জন্য একটি সুন্দর কাব্যগ্রন্থ হিসেবে</p>\r\n</li></ul>\r\n<h2 data-start="1068" data-end="1092">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start="1093" data-end="1201"><li data-start="1093" data-end="1114">\r\n<p data-start="1095" data-end="1114">কবিতা প্রেমী পাঠক</p>\r\n</li><li data-start="1115" data-end="1134">\r\n<p data-start="1117" data-end="1134">তরুণ ও যুব সমাজ</p>\r\n</li><li data-start="1135" data-end="1180">\r\n<p data-start="1137" data-end="1180">যারা অনুভূতির লেখায় নিজেকে খুঁজে পেতে চান</p>\r\n</li><li data-start="1181" data-end="1201">\r\n<p data-start="1183" data-end="1201">সাহিত্য সংগ্রাহক</p></li></ul>', 130.00, 179.00, 119.93, 33.00, 'percent', '2026-01-16', '2026-02-20', 'ONUVTTIK', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড4', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-8FjavixMHLPCAdGiq8fTy7q0qjCY3f4bLTPcV3Wy.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:13:34', '2026-03-04 23:17:12'),
	(12, 'একাত্তরের চিঠি', 'COD2026030512', 'ekattrer-cithi', 31, 1, 1, 2, 'book', 'AKATCHTI', NULL, 'storage/media/product/2026-02-03-WSrTGyJMmzR3tLWgEctfyrrLJatgmAX3AgZmmu6b.webp', 'লেখক: <strong data-start="157" data-end="175">মুনতাসীর মামুন</strong><br data-start="360" data-end="363">ভাষা: বাংলা<br data-start="374" data-end="377">সংকলন ও রচনা: <strong data-start="157" data-end="175">মুনতাসীর মামুন</strong>', '<h2 data-start="105" data-end="122">📘 বইয়ের নাম</h2>\r\n<p data-start="123" data-end="141"><strong data-start="123" data-end="141">একাত্তরের চিঠি</strong></p>\r\n<h2 data-start="143" data-end="156">✍️ সংকলক</h2>\r\n<p data-start="157" data-end="175"><strong data-start="157" data-end="175">মুনতাসীর মামুন</strong></p>\r\n<h2 data-start="177" data-end="195">🏷️ ক্যাটাগরি</h2>\r\n<p data-start="196" data-end="240">মুক্তিযুদ্ধ / ইতিহাস / দলিলপত্র / চিঠি সংকলন</p>\r\n<h2 data-start="242" data-end="254">🌐 ভাষা</h2>\r\n<p data-start="255" data-end="260">বাংলা</p>\r\n<h2 data-start="262" data-end="291">📖 বইয়ের সংক্ষিপ্ত বিবরণ</h2>\r\n<p data-start="292" data-end="488"><strong data-start="292" data-end="310">একাত্তরের চিঠি</strong> হলো বাংলাদেশের মুক্তিযুদ্ধকালীন (১৯৭১) সময়ের বাস্তব ও হৃদয়স্পর্শী চিঠির সংকলন। যুদ্ধের ভয়াবহতা, আশা-নিরাশা, ভালোবাসা, দেশপ্রেম ও আত্মত্যাগ—সবকিছু উঠে এসেছে এই চিঠিগুলোর মাধ্যমে।</p>\r\n<p data-start="490" data-end="512">এই চিঠিগুলো লিখেছিলেন—</p>\r\n<ul data-start="513" data-end="634"><li data-start="513" data-end="531">\r\n<p data-start="515" data-end="531">মুক্তিযোদ্ধারা</p>\r\n</li><li data-start="532" data-end="557">\r\n<p data-start="534" data-end="557">শহীদ পরিবারের সদস্যরা</p>\r\n</li><li data-start="558" data-end="594">\r\n<p data-start="560" data-end="594">যুদ্ধরত সন্তানকে লেখা মায়ের চিঠি</p>\r\n</li><li data-start="595" data-end="634">\r\n<p data-start="597" data-end="634">প্রিয়জনের কাছে লেখা শেষ বিদায়ের কথা</p>\r\n</li></ul>\r\n<h2 data-start="636" data-end="662">⭐ বইয়ের মূল বিষয়বস্তু</h2>\r\n<ul data-start="663" data-end="862"><li data-start="663" data-end="730">\r\n<p data-start="665" data-end="730">মুক্তিযুদ্ধের সময় সাধারণ মানুষের আবেগ ও মানসিক অবস্থার প্রতিফলন</p>\r\n</li><li data-start="731" data-end="779">\r\n<p data-start="733" data-end="779">যুদ্ধক্ষেত্র ও পরিবারের মধ্যে দূরত্বের বেদনা</p>\r\n</li><li data-start="780" data-end="823">\r\n<p data-start="782" data-end="823">স্বাধীনতার জন্য আত্মত্যাগের বাস্তব দলিল</p>\r\n</li><li data-start="824" data-end="862">\r\n<p data-start="826" data-end="862">ইতিহাসের বইয়ে না পাওয়া মানবিক গল্প</p>\r\n</li></ul>\r\n<h2 data-start="864" data-end="886">🎯 কেন বইটি পড়বেন</h2>\r\n<ul data-start="887" data-end="1074"><li data-start="887" data-end="936">\r\n<p data-start="889" data-end="936">মুক্তিযুদ্ধকে <strong data-start="903" data-end="923">মানবিক দৃষ্টিকোণ</strong> থেকে জানতে</p>\r\n</li><li data-start="937" data-end="979">\r\n<p data-start="939" data-end="979">বাস্তব চিঠির মাধ্যমে ইতিহাস অনুভব করতে</p>\r\n</li><li data-start="980" data-end="1033">\r\n<p data-start="982" data-end="1033">শিক্ষার্থী ও গবেষকদের জন্য গুরুত্বপূর্ণ রেফারেন্স</p>\r\n</li><li data-start="1034" data-end="1074">\r\n<p data-start="1036" data-end="1074">দেশপ্রেম ও মূল্যবোধ জাগ্রত করার জন্য</p>\r\n</li></ul>\r\n<h2 data-start="1076" data-end="1100">📚 কার জন্য উপযুক্ত</h2>\r\n<ul data-start="1101" data-end="1231"><li data-start="1101" data-end="1142">\r\n<p data-start="1103" data-end="1142">স্কুল-কলেজ-বিশ্ববিদ্যালয়ের শিক্ষার্থী</p>\r\n</li><li data-start="1143" data-end="1169">\r\n<p data-start="1145" data-end="1169">মুক্তিযুদ্ধপ্রেমী পাঠক</p>\r\n</li><li data-start="1170" data-end="1196">\r\n<p data-start="1172" data-end="1196">গবেষক ও ইতিহাস অনুরাগী</p>\r\n</li><li data-start="1197" data-end="1231">\r\n<p data-start="1199" data-end="1231">লাইব্রেরি ও সংগ্রহে রাখার জন্য</p>\r\n</li></ul>\r\n<h2 data-start="1233" data-end="1255">🧠 সংকলক সম্পর্কে</h2>\r\n<p data-start="1256" data-end="1389"><strong data-start="1256" data-end="1274">মুনতাসীর মামুন</strong> বাংলাদেশের প্রখ্যাত ইতিহাসবিদ ও মুক্তিযুদ্ধ গবেষক। মুক্তিযুদ্ধভিত্তিক বহু গুরুত্বপূর্ণ গ্রন্থ সংকলন ও রচনা করেছেন।</p><p></p>', 120.00, 190.00, 169.10, 11.00, 'percent', NULL, NULL, 'AKATTCHTI', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড5', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-WSrTGyJMmzR3tLWgEctfyrrLJatgmAX3AgZmmu6b.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:14:33', '2026-03-04 23:16:32'),
	(13, 'একাত্তরের জননী', 'COD2026030513', 'ekattrer-jnnee', 31, 1, 1, 2, 'book', '33', NULL, 'storage/media/product/2026-02-03-s9NU7e74PI9ZSp85NVkh2EmKvAQNxy8S8D0dRSIS.webp', 'লেখক: <strong data-start="346" data-end="360">রমা চৌধুরী</strong><br data-start="360" data-end="363">\r\nভাষা: বাংলা<br data-start="374" data-end="377">\r\nপ্রকাশনী: মাধুকরী প্রকাশন', '<h3 data-start="300" data-end="318">📘 বইয়ের নাম</h3>\r\n<p data-start="319" data-end="440"><strong data-start="319" data-end="337">একাত্তরের জননী</strong><br data-start="337" data-end="340">\r\nলেখক: <strong data-start="346" data-end="360">রমা চৌধুরী</strong><br data-start="360" data-end="363">\r\nভাষা: বাংলা<br data-start="374" data-end="377">\r\nপ্রকাশনী: মাধুকরী প্রকাশন <span class="" data-state="closed"></span></p>\r\n<h3 data-start="442" data-end="465">✍️ লেখকের পরিচিতি</h3>\r\n<p data-start="466" data-end="837">রমা চৌধুরী বাংলাদেশের <strong data-start="488" data-end="524">মুক্তিযুদ্ধের বীরাঙ্গনা ও লেখিকা</strong> ছিলেন। তাঁর লেখা <strong data-start="542" data-end="562">“একাত্তরের জননী”</strong> সবচেয়ে বেশি পরিচিত কাজগুলোর মধ্যে একটি, যেখানে তিনি ১৯৭১-এর মুক্তিযুদ্ধের সময়কার নির্যাতন, বেদনা ও স্বদেশপ্রেমের কথা নিজের জীবনের অভিজ্ঞতার আলোকে বসিয়েছেন। তিনি পরে <strong data-start="728" data-end="749">বেগম রোকেয়া পদকে</strong> ভূষিত হন (মরণোপরান্ত) বাংলাদেশ সরকারের পক্ষ থেকে। <span class="" data-state="closed"></span></p>\r\n<h3 data-start="839" data-end="871">📖 বইটির ধারণা ও বিষয়বস্তু</h3>\r\n<p data-start="872" data-end="950">“একাত্তরের জননী” বইটি মূলত রমা চৌধুরীর <strong data-start="911" data-end="930">আত্মজৈবনিক গল্প</strong> — যেখানে তিনি বলেন:</p>\r\n<ul data-start="951" data-end="1371"><li data-start="951" data-end="1124">\r\n<p data-start="953" data-end="1124">১৯৭১-এর মুক্তিযুদ্ধের সময় পাকহানাদার বাহিনীর হাতে নারীর উপর যেসব নির্যাতন ও ভয়াবহতা ঘটেছিল, তা কীভাবে তার জীবনে গভীর ক্ষত তৈরি করে। <span class="" data-state="closed"></span></p>\r\n</li><li data-start="1125" data-end="1238">\r\n<p data-start="1127" data-end="1238">তিনি তার <strong data-start="1136" data-end="1185">ব্যক্তিগত দুঃখ, হারানো সন্তান, বিপর্যয়ের গল্প</strong> তুলে ধরেছেন। <span class="" data-state="closed"></span></p>\r\n</li><li data-start="1239" data-end="1371">\r\n<p data-start="1241" data-end="1371">বইতে জীবনের বাস্তব অভিজ্ঞতার আলোকে দেশপ্রেম, শোষণ, বেদনা, এবং যুদ্ধের বাস্তব চিত্র ফুটে ওঠে। <span class="" data-state="closed"></span></p>\r\n</li></ul>\r\n<h3 data-start="1373" data-end="1395">📚 ব্যাকগ্রাউন্ড</h3>\r\n<ul data-start="1396" data-end="1673"><li data-start="1396" data-end="1512">\r\n<p data-start="1398" data-end="1512">এই গ্রন্থটি রাজনৈতিক ও মুক্তিযুদ্ধভিত্তিক উপন্যাস/স্মৃতিকথা হিসেবে ধরা হয়। <span class="" data-state="closed"></span></p>\r\n</li><li data-start="1513" data-end="1673">\r\n<p data-start="1515" data-end="1673">লেখক রমা চৌধুরী নিজেও ১৯৭১-এ বীরাঙ্গনা হিসেবে অংশগ্রহণ করেছিলেন এবং পরে তাঁর লেখালেখি সেই বাস্তব অভিজ্ঞতার অভিসারে গঠিত। <span class="" data-state="closed"></span></p>\r\n</li></ul>\r\n<h3 data-start="1675" data-end="1692">📘 সংক্ষেপে</h3>\r\n<p data-start="1693" data-end="1929">“একাত্তরের জননী” বইটি ১৯৭১-এর মুক্তিযুদ্ধের <strong data-start="1737" data-end="1766">ব্যক্তিগত ও মানবিক স্মৃতি</strong> হিসেবে অত্যন্ত আবেগপ্রবণ ভাষায় লেখা একটি গ্রন্থ, যা সেই বেদনাদায়ক সময়ের গল্প ও নারীর সংগ্রামকে পাঠকের সামনে জীবন্ত করে তোলে।</p>', 169.00, 190.00, 169.10, 11.00, 'percent', NULL, NULL, '71JNN', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড7', 'একনজরে উম্মাহর ইতিহাস ৩ খন্ড', 'storage/media/product/2026-02-03-s9NU7e74PI9ZSp85NVkh2EmKvAQNxy8S8D0dRSIS.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-01-25 02:18:09', '2026-03-04 23:15:59'),
	(27, 'লিডারশীপ-১০১', 'COD2026030527', 'lidarseep-101', 31, 1, 1, 2, 'book', 'ASS', NULL, 'storage/media/product/2026-02-24-feiVUJP44wlPO1WT2K4ZoQNbiEojgsrFMu6tznvA.webp', 'লেখক: জন সি. ম্যাক্সওয়েল<br data-start="360" data-end="363">ভাষা: বাংলা<br data-start="374" data-end="377">অনুবাদক: মোঃ মোরশেদ আলম', '<h2 data-start="132" data-end="149"><span style="font-size: 14px;"><b>📘 বইয়ের নাম</b></span></h2><span style="font-size: 14px;">\r\n</span><p data-start="150" data-end="183"><span data-start="150" data-end="183" style="font-size: 14px;">লিডারশিপ ১০১ (Leadership 101)</span><span style="font-size: 14px;">﻿</span></p><span style="font-size: 14px;">\r\n</span><h2 data-start="185" data-end="197"><span style="font-size: 14px;"><b>✍️ লেখক</b></span></h2><span style="font-size: 14px;">\r\n</span><p data-start="198" data-end="238"><strong data-start="198" data-end="238"><span style="font-size: 14px;">জন সি. ম্যাক্সওয়েল (John C. Maxwell)</span></strong></p><span style="font-size: 14px;">\r\n</span><h2 data-start="240" data-end="256"><span style="font-size: 14px;"><b>🌐 মূল ভাষা</b></span></h2><span style="font-size: 14px;">\r\n</span><p data-start="257" data-end="303"><span style="font-size: 14px;">ইংরেজি (বাংলা অনুবাদ সংস্করণ বাজারে পাওয়া যায়)</span></p><span style="font-size: 14px;">\r\n</span><h2 data-start="305" data-end="323"><span style="font-size: 14px;"><b>🏷️ ক্যাটাগরি</b></span></h2><span style="font-size: 14px;">\r\n</span><p data-start="324" data-end="371"><span style="font-size: 14px;">লিডারশিপ / আত্মউন্নয়ন / ম্যানেজমেন্ট / মোটিভেশন</span></p><span style="font-size: 14px;">\r\n</span><h2 data-start="373" data-end="402"><span style="font-size: 14px;"><b>📖 বইয়ের সংক্ষিপ্ত বিবরণ</b></span></h2><span style="font-size: 14px;">\r\n</span><p data-start="403" data-end="580"><strong data-start="403" data-end="419"><span style="font-size: 14px;">লিডারশিপ ১০১</span></strong><span style="font-size: 14px;"> হলো নেতৃত্ব শেখার একদম বেসিক গাইড। এই বইয়ে জন সি. ম্যাক্সওয়েল খুব সহজ ভাষায় বুঝিয়েছেন—</span><br data-start="506" data-end="509"><span style="font-size: 8px;">\r\n<span style="font-size: 12px;">নেতৃত্ব মানে শুধু পদ বা ক্ষমতা নয়, নেতৃত্ব মানে </span></span><strong data-start="557" data-end="579"><span style="font-size: 12px;">প্রভাব (Influence)</span></strong><span style="font-size: 12px;">।</span></p><span style="font-size: 12px;">\r\n</span><p data-start="582" data-end="611"><span style="font-size: 12px;">এই বইটি বিশেষভাবে লেখা হয়েছে:</span></p><span style="font-size: 8px;">\r\n</span><ul data-start="612" data-end="717"><li data-start="612" data-end="634"><span style="font-size: 8px;">\r\n</span><p data-start="614" data-end="634">নতুন লিডারদের জন্য</p><span style="font-size: 8px;">\r\n</span></li><li data-start="635" data-end="676"><span style="font-size: 8px;">\r\n</span><p data-start="637" data-end="676">যারা নেতৃত্ব শিখতে চায় একদম শুরু থেকে</p><span style="font-size: 8px;">\r\n</span></li><li data-start="677" data-end="717"><span style="font-size: 8px;">\r\n</span><p data-start="679" data-end="717">ছাত্র, চাকরিজীবী ও উদ্যোক্তাদের জন্য</p><span style="font-size: 8px;">\r\n</span></li></ul><span style="font-size: 8px;">\r\n</span><h2 data-start="719" data-end="745"><span style="font-size: 14px;"><b>⭐ বইয়ের মূল বিষয়বস্তু</b></span></h2><span style="font-size: 12px;">\r\n</span><p data-start="746" data-end="766"><span style="font-size: 12px;">এই বইয়ে আপনি শিখবেন—</span></p><span style="font-size: 8px;">\r\n</span><ul data-start="768" data-end="993"><li data-start="768" data-end="797"><span style="font-size: 8px;">\r\n</span><p data-start="770" data-end="797">নেতৃত্ব আসলে কী এবং কী নয়</p><span style="font-size: 8px;">\r\n</span></li><li data-start="798" data-end="832"><span style="font-size: 8px;">\r\n</span><p data-start="800" data-end="832">ভালো লিডার হওয়ার মৌলিক গুণাবলি</p><span style="font-size: 8px;">\r\n</span></li><li data-start="833" data-end="879"><span style="font-size: 8px;">\r\n</span><p data-start="835" data-end="879">কীভাবে মানুষের উপর ইতিবাচক প্রভাব ফেলতে হয়</p><span style="font-size: 8px;">\r\n</span></li><li data-start="880" data-end="909"><span style="font-size: 8px;">\r\n</span><p data-start="882" data-end="909">লিডার ও ফলোয়ারের পার্থক্য</p><span style="font-size: 8px;">\r\n</span></li><li data-start="910" data-end="956"><span style="font-size: 8px;">\r\n</span><p data-start="912" data-end="956">ব্যক্তিগত উন্নতির মাধ্যমে নেতৃত্ব গড়ে তোলা</p><span style="font-size: 8px;">\r\n</span></li><li data-start="957" data-end="993"><span style="font-size: 8px;">\r\n</span><p data-start="959" data-end="993">বাস্তব জীবনের উদাহরণ ও সহজ সূত্র</p><span style="font-size: 8px;">\r\n</span></li></ul><span style="font-size: 8px;">\r\n</span><h2 data-start="995" data-end="1017"><span style="font-size: 14px;"><b>🎯 কেন বইটি পড়বেন</b></span></h2><span style="font-size: 8px;">\r\n</span><ul data-start="1018" data-end="1179"><li data-start="1018" data-end="1066"><span style="font-size: 8px;">\r\n</span><p data-start="1020" data-end="1066">নেতৃত্ব শেখার জন্য <strong data-start="1039" data-end="1064">পারফেক্ট স্টার্টার বই</strong></p><span style="font-size: 8px;">\r\n</span></li><li data-start="1067" data-end="1097"><span style="font-size: 8px;">\r\n</span><p data-start="1069" data-end="1097">কম পেজ, কিন্তু খুব কার্যকর</p><span style="font-size: 8px;">\r\n</span></li><li data-start="1098" data-end="1131"><span style="font-size: 8px;">\r\n</span><p data-start="1100" data-end="1131">বাস্তব জীবনে প্রয়োগযোগ্য টিপস</p><span style="font-size: 8px;">\r\n</span></li><li data-start="1132" data-end="1179"><span style="font-size: 8px;">\r\n</span><p data-start="1134" data-end="1179">আত্মবিশ্বাস ও সিদ্ধান্ত নেওয়ার ক্ষমতা বাড়ায়</p><span style="font-size: 8px;">\r\n</span></li></ul><span style="font-size: 8px;">\r\n</span><h2 data-start="1181" data-end="1205"><span style="font-size: 14px;"><b>📚 কার জন্য উপযুক্ত</b></span></h2><span style="font-size: 8px;">\r\n</span><ul data-start="1206" data-end="1297"><li data-start="1206" data-end="1219"><span style="font-size: 8px;">\r\n</span><p data-start="1208" data-end="1219">স্টুডেন্ট</p><span style="font-size: 8px;">\r\n</span></li><li data-start="1220" data-end="1238"><span style="font-size: 8px;">\r\n</span><p data-start="1222" data-end="1238">নতুন ম্যানেজার</p><span style="font-size: 8px;">\r\n</span></li><li data-start="1239" data-end="1252"><span style="font-size: 8px;">\r\n</span><p data-start="1241" data-end="1252">টিম লিডার</p><span style="font-size: 8px;">\r\n</span></li><li data-start="1253" data-end="1266"><span style="font-size: 8px;">\r\n</span><p data-start="1255" data-end="1266">উদ্যোক্তা</p><span style="font-size: 8px;">\r\n</span></li><li data-start="1267" data-end="1297"><span style="font-size: 8px;">\r\n</span><p data-start="1269" data-end="1297">যারা লিডারশিপ শিখতে আগ্রহী</p><span style="font-size: 8px;">\r\n</span></li></ul><span style="font-size: 8px;">\r\n</span><h2 data-start="1299" data-end="1320"><span style="font-size: 14px;"><b>🧠 লেখক সম্পর্কে</b></span></h2><span style="font-size: 14px;">\r\n</span><p data-start="1321" data-end="1470"><span style="font-size: 14px;">জন সি. ম্যাক্সওয়েল একজন বিশ্বখ্যাত লিডারশিপ এক্সপার্ট। তিনি</span><br data-start="1380" data-end="1383"><span style="font-size: 12px;">\r\n</span><strong data-start="1383" data-end="1410">৭০টিরও বেশি লিডারশিপ বই</strong><span style="font-size: 12px;"> লিখেছেন, যেগুলো কোটি কপি বিক্রি হয়েছে এবং বহু ভাষায় অনূদিত।</span></p>', 120.00, 160.00, 120.00, 40.00, 'amount', '2026-02-06', '2026-03-03', NULL, 'একনজরে উম্মাহর ইতিহাস ৩ খন্ডWA', 'sAS', 'storage/media/product/2026-02-24-feiVUJP44wlPO1WT2K4ZoQNbiEojgsrFMu6tznvA.webp', 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-02-01 06:30:48', '2026-03-04 23:15:27'),
	(28, 'Itihas', NULL, 'itihas', 2, 1, 1, 2, 'book', 'dsdsa', NULL, 'storage/media/product/2026-02-25-zVkMnkTW3cZwFd47CTfgrzB238BmQX2w4kfWy1gc.webp', '<p>dasd</p>', '<p>dasdas</p>', 55.00, 33.00, 33.00, 0.00, 'amount', NULL, NULL, NULL, 'Itihas', 'dasdas', 'storage/media/product/2026-02-25-zVkMnkTW3cZwFd47CTfgrzB238BmQX2w4kfWy1gc.webp', 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-02-24 22:49:29', '2026-03-04 01:02:48'),
	(29, 'Gerila', NULL, 'gerila', 10, 1, 1, 1, 'book', '34fede', NULL, 'storage/media/product/2026-02-25-aQyaIxZ1q44p5S1WuPLM1tkjUvHd36Twpjk4hKN5.webp', '<p>asdsa</p>', '<p>dasd</p>', 12.00, 14.00, 14.00, 0.00, 'amount', NULL, NULL, NULL, 'Gerila', 'dasd', 'storage/media/product/2026-02-25-aQyaIxZ1q44p5S1WuPLM1tkjUvHd36Twpjk4hKN5.webp', 1, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-02-24 23:02:38', '2026-02-24 23:02:38'),
	(30, 'Gerila2', NULL, 'gerila2', 10, 1, 1, 1, 'book', '417345298821', NULL, 'storage/media/product/2026-02-25-YfMdlWJKe0qeuJC1QSsjaG3WvzBJLiW4CqzeKBQo.webp', '<p>q</p>', '<p>eqwe</p>', 15.00, 16.00, 16.00, 0.00, 'amount', NULL, NULL, NULL, 'Gerila2', 'eqwe', 'storage/media/product/2026-02-25-YfMdlWJKe0qeuJC1QSsjaG3WvzBJLiW4CqzeKBQo.webp', 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-02-24 23:03:35', '2026-02-24 23:11:35'),
	(31, 'test prod', NULL, 'test-prod', 2, 1, 1, 1, 'book', 'fff', NULL, 'storage/media/product/2026-02-25-J3OBoi3kVZrs3jNNf3WJzrRrOXsqF36haCbpSQDx.webp', '<p>sddas</p>', '<p>asdas</p>', 255.00, 266.00, 266.00, 0.00, 'amount', NULL, NULL, NULL, 'test prod', 'asdas', 'storage/media/product/2026-02-25-J3OBoi3kVZrs3jNNf3WJzrRrOXsqF36haCbpSQDx.webp', 1, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-02-25 00:23:57', '2026-02-25 00:23:57'),
	(32, 'teddd', '', 'teddd', 10, 1, 1, 1, 'book', 'yyyy', NULL, 'storage/media/product/2026-02-25-BT8UrUQ43xHxjiCGG0ogQI0noci3Y3byotgdkqVT.webp', '<p>sadsa</p>', '<p>adasd</p>', 577.00, 588.00, 588.00, 0.00, 'amount', NULL, NULL, NULL, 'teddd', 'adasd', 'storage/media/product/2026-02-25-BT8UrUQ43xHxjiCGG0ogQI0noci3Y3byotgdkqVT.webp', 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-02-25 00:25:11', '2026-03-04 21:53:32'),
	(33, 'gggrrr', '', 'gggrrr', 10, 1, 1, 2, 'book', 'ttttt', NULL, 'storage/media/product/2026-02-25-GfVIfGLk8NJyrb75Y2JySij2r7y0B5DQ14aqjL6Y.webp', '<p>dff</p>', '<p>fd</p>', 699.00, 888.00, 888.00, 0.00, 'amount', NULL, NULL, NULL, 'gggrrr', 'fd', 'storage/media/product/2026-02-25-GfVIfGLk8NJyrb75Y2JySij2r7y0B5DQ14aqjL6Y.webp', 1, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2026-02-25 02:53:25', '2026-03-04 22:06:28'),
	(34, 'Test33', '', 'test33', 2, 1, 1, 2, 'book', 'eeeee', NULL, 'storage/media/product/2026-02-26-Xya5bRC9GWaIc5yQG3eyKtC0cnqjlWguxVtkgdAA.webp', NULL, NULL, 66.00, 77.00, 77.00, 0.00, 'amount', NULL, NULL, NULL, 'Test33', '', 'storage/media/product/2026-02-26-Xya5bRC9GWaIc5yQG3eyKtC0cnqjlWguxVtkgdAA.webp', 1, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2026-02-26 00:12:31', '2026-03-04 22:00:28'),
	(35, 'gggg', 'COD2026030535', 'gggg', 2, 1, 1, 2, 'book', 'gfgfgfg', NULL, 'storage/media/product/2026-03-05-PuOiR3zvjoCQTk55uzqOwGYxJdgeGmmGLM71lmSs.webp', NULL, NULL, 44.00, 55.00, 55.00, 0.00, 'amount', NULL, NULL, NULL, 'gggg', '', 'storage/media/product/2026-03-05-PuOiR3zvjoCQTk55uzqOwGYxJdgeGmmGLM71lmSs.webp', 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-03-04 21:37:26', '2026-03-04 22:39:54'),
	(36, 'hhh', 'COD2026030536', 'hhh', 10, 1, 1, 2, 'book', 'fgfdgdg', NULL, 'storage/media/product/2026-03-05-RR4l03EXIwvaASjbDVVRjrpBRKqc0GvB05N0aE8B.webp', NULL, NULL, 77.00, 88.00, 88.00, 0.00, 'amount', NULL, NULL, NULL, 'hhh', '', 'storage/media/product/2026-03-05-RR4l03EXIwvaASjbDVVRjrpBRKqc0GvB05N0aE8B.webp', 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-03-04 22:10:40', '2026-03-04 22:36:49'),
	(37, 'jjj', 'COD2026030537', 'jjj', 2, 1, 1, 2, 'book', 'fdd', NULL, 'storage/media/product/2026-03-05-4ZDtSvHTkzqOKUlFhdDj8TMdjm3vYyoAEQ7uoj40.webp', NULL, NULL, 66.00, 77.00, 77.00, 0.00, 'amount', NULL, NULL, NULL, 'jjj', '', 'storage/media/product/2026-03-05-4ZDtSvHTkzqOKUlFhdDj8TMdjm3vYyoAEQ7uoj40.webp', 1, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, '2026-03-04 22:29:01', '2026-03-04 22:29:01'),
	(38, 'kk', 'COD2026030538', 'kk', 2, 1, 1, 2, 'book', '333', NULL, 'storage/media/product/2026-03-05-1IfsybrYpNZfKEmhpiWRvx7BgDrUAEhaCoil9rX9.webp', NULL, NULL, 88.00, 99.00, 99.00, 0.00, 'amount', NULL, NULL, NULL, 'kk', '', 'storage/media/product/2026-03-05-1IfsybrYpNZfKEmhpiWRvx7BgDrUAEhaCoil9rX9.webp', 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-03-04 22:32:44', '2026-03-04 23:01:20'),
	(39, 'gh', 'COD2026030539', 'gh', 10, 1, 1, 2, 'book', 'ewee', NULL, 'storage/media/product/2026-03-05-xnQoyhgqkf0FC3NZmT12qVDxlgpz9p3I4E3cAeiv.webp', NULL, NULL, 44.00, 55.00, 55.00, 0.00, 'amount', NULL, NULL, NULL, 'gh', '', 'storage/media/product/2026-03-05-xnQoyhgqkf0FC3NZmT12qVDxlgpz9p3I4E3cAeiv.webp', 1, 0, 0, 0, 0, 1, 1, 1, NULL, NULL, '2026-03-04 22:41:43', '2026-03-04 22:51:35');

-- Dumping structure for table e_commerce_like_rokomary.product_authors
DROP TABLE IF EXISTS `product_authors`;
CREATE TABLE IF NOT EXISTS `product_authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_authors_product_id_foreign` (`product_id`),
  KEY `product_authors_author_id_foreign` (`author_id`),
  CONSTRAINT `product_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_authors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_authors: ~14 rows (approximately)
DELETE FROM `product_authors`;
INSERT INTO `product_authors` (`id`, `product_id`, `author_id`, `created_at`, `updated_at`) VALUES
	(1, 3, 1, '2026-01-22 04:46:02', '2026-01-22 04:46:02'),
	(2, 5, 1, '2026-01-22 06:36:21', '2026-01-22 06:36:21'),
	(3, 7, 1, '2026-01-25 02:06:23', '2026-01-25 02:06:23'),
	(4, 10, 1, '2026-01-25 02:11:41', '2026-01-25 02:11:41'),
	(5, 11, 1, '2026-01-25 02:13:34', '2026-01-25 02:13:34'),
	(6, 12, 1, '2026-01-25 02:14:33', '2026-01-25 02:14:33'),
	(7, 13, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
	(8, 27, 2, '2026-02-01 06:30:48', '2026-02-01 06:30:48'),
	(9, 28, 2, '2026-02-24 22:49:29', '2026-02-24 22:49:29'),
	(10, 29, 1, '2026-02-24 23:02:38', '2026-02-24 23:02:38'),
	(11, 30, 1, '2026-02-24 23:03:35', '2026-02-24 23:03:35'),
	(12, 31, 2, '2026-02-25 00:23:57', '2026-02-25 00:23:57'),
	(13, 32, 2, '2026-02-25 00:25:11', '2026-02-25 00:25:11'),
	(14, 33, 1, '2026-02-25 02:53:25', '2026-02-25 02:53:25'),
	(15, 34, 1, '2026-02-26 00:12:31', '2026-02-26 00:12:31'),
	(16, 35, 1, '2026-03-04 21:37:27', '2026-03-04 21:37:27'),
	(17, 36, 1, '2026-03-04 22:10:40', '2026-03-04 22:10:40'),
	(18, 37, 1, '2026-03-04 22:29:01', '2026-03-04 22:29:01'),
	(19, 38, 2, '2026-03-04 22:32:44', '2026-03-04 22:32:44'),
	(20, 39, 1, '2026-03-04 22:41:43', '2026-03-04 22:41:43');

-- Dumping structure for table e_commerce_like_rokomary.product_categories
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_categories_product_id_foreign` (`product_id`),
  KEY `product_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_categories: ~0 rows (approximately)
DELETE FROM `product_categories`;

-- Dumping structure for table e_commerce_like_rokomary.product_editions
DROP TABLE IF EXISTS `product_editions`;
CREATE TABLE IF NOT EXISTS `product_editions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_editions_product_id_foreign` (`product_id`),
  CONSTRAINT `product_editions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_editions: ~11 rows (approximately)
DELETE FROM `product_editions`;
INSERT INTO `product_editions` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 34, '2nd Edition', 1, '2026-02-26 00:12:31', '2026-02-26 00:45:17'),
	(2, 33, 'First Edition', 1, '2026-02-26 00:46:13', '2026-02-26 00:46:13'),
	(3, 27, 'First Edition', 1, '2026-02-28 21:12:01', '2026-03-04 23:15:28'),
	(4, 3, '3rd edition', 1, '2026-02-28 21:27:59', '2026-02-28 21:27:59'),
	(5, 28, '3rd edition', 1, '2026-03-04 01:02:48', '2026-03-04 01:02:48'),
	(6, 35, '2nd Edition', 1, '2026-03-04 21:37:26', '2026-03-04 21:37:26'),
	(7, 32, '2nd', 1, '2026-03-04 21:53:33', '2026-03-04 21:53:33'),
	(8, 36, '3rd', 1, '2026-03-04 22:10:40', '2026-03-04 22:10:40'),
	(9, 37, '3rd', 1, '2026-03-04 22:29:01', '2026-03-04 22:29:01'),
	(10, 38, 'Second Edition', 1, '2026-03-04 22:32:44', '2026-03-04 23:01:20'),
	(11, 39, 'Fourth Edition', 1, '2026-03-04 22:41:43', '2026-03-04 22:51:35'),
	(12, 13, 'First Edition', 1, '2026-03-04 23:15:59', '2026-03-04 23:15:59'),
	(13, 12, 'First Edition', 1, '2026-03-04 23:16:32', '2026-03-04 23:16:32'),
	(14, 11, 'First Edition', 1, '2026-03-04 23:17:12', '2026-03-04 23:17:12'),
	(15, 10, 'Fifth Edition', 1, '2026-03-04 23:17:45', '2026-03-04 23:17:45');

-- Dumping structure for table e_commerce_like_rokomary.product_images
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_images: ~12 rows (approximately)
DELETE FROM `product_images`;
INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
	(7, 2, 'storage/media/product/2026-01-25-q6VNZvcQxcMGzpLPdVNKBNhheXbvT4UqbX1rIzgV.webp', '2026-01-24 23:17:37', '2026-01-24 23:17:37'),
	(8, 1, 'storage/media/product/2026-01-25-SS3rfwzKYDXqC0L6JtHqRN7dZhhB1iMtlIUqNGd3.webp', '2026-01-24 23:17:55', '2026-01-24 23:17:55'),
	(16, 12, 'storage/media/product/2026-02-03-bJPebuGWn950tTPbjYzUhVoEbvTFASaFCz8G5Lfl.webp', '2026-02-02 23:08:14', '2026-02-02 23:08:14'),
	(17, 11, 'storage/media/product/2026-02-03-mII972VRKN4ux2YvxZPHTnmJ8GwYowO1e6F8p9OQ.webp', '2026-02-02 23:17:41', '2026-02-02 23:17:41'),
	(18, 10, 'storage/media/product/2026-02-03-ROGRCZ9fcA0SDCZSSHTbX8Tf1r0o1SEaoIpJdEhz.webp', '2026-02-02 23:34:35', '2026-02-02 23:34:35'),
	(19, 7, 'storage/media/product/2026-02-03-nnA3bEurhOyIyX7zyQmxO3pJk9dmzr5FkxhX0GdD.webp', '2026-02-03 00:23:13', '2026-02-03 00:23:13'),
	(20, 5, 'storage/media/product/2026-02-03-QrIVELPj4tjzeY5I7jo3G8Y9dPSeIIPIDcz6ENod.webp', '2026-02-03 00:25:06', '2026-02-03 00:25:06'),
	(21, 27, 'storage/media/product/2026-02-24-56TcbTnUV1kzRRXlXET59BL3rCvtb3hAv4x3LGbi.webp', '2026-02-24 01:05:13', '2026-02-24 01:05:13'),
	(22, 3, 'storage/media/product/2026-03-01-kI1ZrCx52eSIv3pc65OstKbE6q1QnHP9gydlynOt.webp', '2026-02-28 21:27:56', '2026-02-28 21:27:56'),
	(23, 3, 'storage/media/product/2026-03-01-yK5YNj9DIiBAs8qJGIJiWrW9jvjTWhYYa6n6Z9ei.webp', '2026-02-28 21:27:57', '2026-02-28 21:27:57'),
	(24, 3, 'storage/media/product/2026-03-01-eQtwDXjScyFWZmfWqBlSjkRWKKAGJ0uP7Wmrs0JD.webp', '2026-02-28 21:27:58', '2026-02-28 21:27:58'),
	(25, 3, 'storage/media/product/2026-03-01-sp5wucpwisla2niZjKQ6ScFpwTLzGf6UobGyYTWS.webp', '2026-02-28 21:27:59', '2026-02-28 21:27:59');

-- Dumping structure for table e_commerce_like_rokomary.product_tags
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE IF NOT EXISTS `product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tags_product_id_foreign` (`product_id`),
  CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_tags: ~10 rows (approximately)
DELETE FROM `product_tags`;
INSERT INTO `product_tags` (`id`, `product_id`, `name`, `created_at`, `updated_at`) VALUES
	(9, 2, 'facebook', '2026-01-24 23:17:37', '2026-01-24 23:17:37'),
	(10, 1, 'asaa', '2026-01-24 23:17:55', '2026-01-24 23:17:55'),
	(53, 7, 'sasa', '2026-02-03 00:24:05', '2026-02-03 00:24:05'),
	(54, 5, 'dfsdf', '2026-02-03 00:25:06', '2026-02-03 00:25:06'),
	(63, 3, 'dsfsd', '2026-02-28 21:27:59', '2026-02-28 21:27:59'),
	(64, 27, 'aS', '2026-03-04 23:15:28', '2026-03-04 23:15:28'),
	(65, 13, 'Zxazx', '2026-03-04 23:15:59', '2026-03-04 23:15:59'),
	(66, 12, 'sd', '2026-03-04 23:16:33', '2026-03-04 23:16:33'),
	(67, 11, 'sdfdsf', '2026-03-04 23:17:12', '2026-03-04 23:17:12'),
	(68, 10, 'sads', '2026-03-04 23:17:45', '2026-03-04 23:17:45');

-- Dumping structure for table e_commerce_like_rokomary.product_variants
DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `regular_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variants_product_id_foreign` (`product_id`),
  CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_variants: ~12 rows (approximately)
DELETE FROM `product_variants`;
INSERT INTO `product_variants` (`id`, `product_id`, `variant`, `sku`, `purchase_price`, `regular_price`, `sale_price`, `discount`, `discount_type`, `image`, `stock`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'SKUS', 11.00, 12.00, 11.00, 1.00, 'amount', NULL, 1000, 1, '2026-01-20 04:15:44', '2026-01-24 23:17:55'),
	(2, 2, NULL, 'ssds', 11.00, 33.00, 31.00, 2.00, 'amount', NULL, 1001, 1, '2026-01-20 04:26:34', '2026-03-03 21:24:06'),
	(3, 3, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 'amount', NULL, 1000, 1, '2026-01-22 04:46:01', '2026-01-24 23:17:14'),
	(5, 5, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 'amount', NULL, 1000, 1, '2026-01-22 06:36:18', '2026-02-01 02:11:02'),
	(6, 7, NULL, NULL, 33.00, 33.00, 0.00, 33.00, 'amount', NULL, 1000, 1, '2026-01-25 02:06:22', '2026-01-28 23:10:06'),
	(7, 10, NULL, 'dsfs', 33.00, 33.00, 0.00, 33.00, 'amount', NULL, 1000, 1, '2026-01-25 02:11:41', '2026-02-01 02:11:02'),
	(8, 11, NULL, 'dfsdf', 33.00, 33.00, 0.00, 33.00, 'amount', NULL, 1000, 1, '2026-01-25 02:13:34', '2026-02-01 02:11:02'),
	(9, 12, NULL, NULL, 77.00, 86.00, 85.00, 1.00, 'amount', NULL, 1000, 1, '2026-01-25 02:14:33', '2026-02-01 02:11:02'),
	(10, 13, NULL, 'dsf', 55.00, 55.00, 53.00, 2.00, 'amount', NULL, 1000, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
	(13, 27, NULL, 'dsf', 55.00, 120.00, 180.00, 20.00, 'amount', NULL, 1000, 1, '2026-01-25 02:18:09', '2026-01-25 02:18:09'),
	(14, 29, NULL, NULL, 12.00, 14.00, 14.00, 0.00, 'amount', NULL, 0, 1, '2026-02-24 23:02:38', '2026-02-24 23:02:38'),
	(15, 34, NULL, NULL, 66.00, 77.00, 77.00, 0.00, 'amount', NULL, 5, 1, '2026-02-28 23:11:59', '2026-03-01 00:15:27'),
	(16, 31, NULL, NULL, 255.00, 266.00, 266.00, 0.00, 'amount', NULL, -4, 1, '2026-03-03 21:33:11', '2026-03-04 01:58:58');

-- Dumping structure for table e_commerce_like_rokomary.product_variant_values
DROP TABLE IF EXISTS `product_variant_values`;
CREATE TABLE IF NOT EXISTS `product_variant_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `attribute_value_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_values_product_variant_id_attribute_id_unique` (`product_variant_id`,`attribute_id`),
  KEY `product_variant_values_product_id_foreign` (`product_id`),
  KEY `product_variant_values_attribute_id_foreign` (`attribute_id`),
  KEY `product_variant_values_attribute_value_id_foreign` (`attribute_value_id`),
  CONSTRAINT `product_variant_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_variant_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_variant_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_variant_values_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_variant_values: ~0 rows (approximately)
DELETE FROM `product_variant_values`;

-- Dumping structure for table e_commerce_like_rokomary.product_vendors
DROP TABLE IF EXISTS `product_vendors`;
CREATE TABLE IF NOT EXISTS `product_vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_vendors_product_id_foreign` (`product_id`),
  KEY `product_vendors_vendor_id_foreign` (`vendor_id`),
  CONSTRAINT `product_vendors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_vendors_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.product_vendors: ~16 rows (approximately)
DELETE FROM `product_vendors`;
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
	(13, 27, 1, '2026-02-01 06:33:54', '2026-02-01 06:33:54'),
	(14, 28, 1, '2026-02-24 22:49:29', '2026-02-24 22:49:29'),
	(15, 29, 1, '2026-02-24 23:02:38', '2026-02-24 23:02:38'),
	(16, 30, 1, '2026-02-24 23:03:35', '2026-02-24 23:03:35'),
	(17, 31, 1, '2026-02-25 00:23:57', '2026-02-25 00:23:57'),
	(18, 32, 1, '2026-02-25 00:25:11', '2026-02-25 00:25:11'),
	(19, 33, 1, '2026-02-25 02:53:25', '2026-02-25 02:53:25'),
	(20, 34, 1, '2026-02-26 00:12:31', '2026-02-26 00:12:31'),
	(21, 36, 1, '2026-03-04 22:10:40', '2026-03-04 22:10:40'),
	(22, 37, 1, '2026-03-04 22:29:01', '2026-03-04 22:29:01'),
	(23, 39, 1, '2026-03-04 22:41:43', '2026-03-04 22:41:43');

-- Dumping structure for table e_commerce_like_rokomary.profit_distributions
DROP TABLE IF EXISTS `profit_distributions`;
CREATE TABLE IF NOT EXISTS `profit_distributions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `production_qty` int NOT NULL,
  `sales_qty` int NOT NULL,
  `sales_amount` decimal(12,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `profit_amount` decimal(16,0) NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profit_distributions_serial_no_unique` (`serial_no`),
  KEY `profit_distributions_created_by_foreign` (`created_by`),
  KEY `profit_distributions_updated_by_foreign` (`updated_by`),
  KEY `profit_distributions_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `profit_distributions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `profit_distributions_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `profit_distributions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.profit_distributions: ~4 rows (approximately)
DELETE FROM `profit_distributions`;
INSERT INTO `profit_distributions` (`id`, `serial_no`, `year`, `month`, `date`, `product_id`, `invest_qty`, `production_qty`, `sales_qty`, `sales_amount`, `invest_amount`, `profit_amount`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(14, 'PD2511001', 2025, 'November', '2025-11-26', 12, 6, 1013, 842, 185328, 180000, 37890, 10, NULL, NULL, NULL, '2025-11-26 01:17:55', '2025-11-26 01:17:55'),
	(15, 'PD2512001', 2025, 'December', '2025-12-24', 4, 6, 1107, 897, 186638, 180000, 40365, 10, NULL, NULL, NULL, '2025-12-23 22:40:41', '2025-12-23 22:40:41'),
	(19, 'PD2512002', 2025, 'December', '2025-12-29', 3, 6, 987, 878, 203580, 180000, 39510, 10, NULL, NULL, NULL, '2025-12-29 23:51:54', '2025-12-29 23:51:54'),
	(20, 'PD2512003', 2025, 'December', '2025-12-30', 2, 6, 1100, 751, 144115, 180000, 33795, 10, NULL, NULL, NULL, '2025-12-29 23:54:16', '2025-12-29 23:54:16');

-- Dumping structure for table e_commerce_like_rokomary.profit_distribution_lists
DROP TABLE IF EXISTS `profit_distribution_lists`;
CREATE TABLE IF NOT EXISTS `profit_distribution_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `profit_distribution_id` bigint unsigned NOT NULL,
  `invest_id` bigint unsigned NOT NULL,
  `investor_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `profit_per_sale` decimal(16,0) NOT NULL,
  `sales_qty` decimal(16,0) DEFAULT NULL,
  `invest_qty` decimal(16,0) NOT NULL,
  `invest_amount` decimal(16,0) NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `paid_amount` decimal(16,0) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profit_distribution_lists_profit_distribution_id_foreign` (`profit_distribution_id`),
  KEY `profit_distribution_lists_invest_id_foreign` (`invest_id`),
  KEY `profit_distribution_lists_investor_id_foreign` (`investor_id`),
  KEY `profit_distribution_lists_product_id_foreign` (`product_id`),
  CONSTRAINT `profit_distribution_lists_invest_id_foreign` FOREIGN KEY (`invest_id`) REFERENCES `invests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profit_distribution_lists_investor_id_foreign` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profit_distribution_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profit_distribution_lists_profit_distribution_id_foreign` FOREIGN KEY (`profit_distribution_id`) REFERENCES `profit_distributions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.profit_distribution_lists: ~11 rows (approximately)
DELETE FROM `profit_distribution_lists`;
INSERT INTO `profit_distribution_lists` (`id`, `profit_distribution_id`, `invest_id`, `investor_id`, `product_id`, `profit_per_sale`, `sales_qty`, `invest_qty`, `invest_amount`, `amount`, `paid_amount`, `created_at`, `updated_at`) VALUES
	(17, 14, 16, 8, 12, 45, 842, 3, 90000, 18945, 18945, '2025-11-26 01:17:55', '2025-11-26 01:24:18'),
	(18, 14, 22, 8, 12, 45, 842, 3, 90000, 18945, 18945, '2025-11-26 01:17:55', '2025-11-26 01:24:18'),
	(19, 15, 17, 9, 4, 45, 897, 3, 90000, 20184, 20184, '2025-12-23 22:40:41', '2025-12-23 22:42:14'),
	(20, 15, 23, 9, 4, 45, 897, 3, 90000, 20184, 20184, '2025-12-23 22:40:41', '2025-12-23 22:42:14'),
	(27, 19, 10, 3, 3, 45, 878, 1, 30000, 6585, 6585, '2025-12-29 23:51:54', '2025-12-30 00:53:35'),
	(28, 19, 11, 4, 3, 45, 878, 1, 30000, 6585, 6585, '2025-12-29 23:51:54', '2025-12-30 00:55:12'),
	(29, 19, 13, 5, 3, 45, 878, 1, 30000, 6585, 6585, '2025-12-29 23:51:54', '2025-12-30 00:56:52'),
	(30, 19, 14, 6, 3, 45, 878, 1, 30000, 6585, 6585, '2025-12-29 23:51:54', '2025-12-31 03:37:38'),
	(31, 19, 15, 7, 3, 45, 878, 2, 60000, 13170, 13170, '2025-12-29 23:51:54', '2025-12-30 00:58:05'),
	(32, 20, 20, 15, 2, 45, 751, 1, 30000, 5633, 5633, '2025-12-29 23:54:16', '2025-12-30 01:00:39'),
	(33, 20, 24, 8, 2, 45, 751, 5, 150000, 28165, 28165, '2025-12-29 23:54:16', '2025-12-30 00:59:54');

-- Dumping structure for table e_commerce_like_rokomary.publications
DROP TABLE IF EXISTS `publications`;
CREATE TABLE IF NOT EXISTS `publications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publications_slug_unique` (`slug`),
  KEY `publications_created_by_foreign` (`created_by`),
  KEY `publications_updated_by_foreign` (`updated_by`),
  KEY `publications_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `publications_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `publications_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `publications_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.publications: ~2 rows (approximately)
DELETE FROM `publications`;
INSERT INTO `publications` (`id`, `name`, `slug`, `image`, `cover_image`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'PublicationName1233', 'publicationname1233', 'storage/publication/2026-01-20-YJsw5YKEToACrcjI64eyleHJWWOJZSSLJBeUZnQ2.webp', 'storage/publication/2026-01-20-OraaoflH2i5HqarTG3PsAVbb74Zym9w7RnmeCdlE.webp', 'asdsad', 1, 1, NULL, NULL, NULL, '2026-01-20 04:24:34', '2026-01-20 04:24:34'),
	(2, 'Publication12', 'publication12', 'storage/publication/2026-01-22-pLcGvcdwiBan700LNHOTiRx7VBAPn2zbYC4wZ3Rr.webp', 'storage/publication/2026-01-22-YkCGXyosBESKkHyUso3foqsYxmxFKj3WIpmWhQR2.webp', 'asdasd', 1, 1, NULL, NULL, NULL, '2026-01-22 04:34:10', '2026-01-22 04:34:10');

-- Dumping structure for table e_commerce_like_rokomary.purchase_orders
DROP TABLE IF EXISTS `purchase_orders`;
CREATE TABLE IF NOT EXISTS `purchase_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `po_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `order_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `expected_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT '0.00',
  `discount_amount` decimal(12,2) DEFAULT '0.00',
  `tax_amount` decimal(12,2) DEFAULT '0.00',
  `grand_total` decimal(12,2) DEFAULT '0.00',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `status` enum('draft','pending','approved','partially_received','received','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_orders_po_number_unique` (`po_number`),
  KEY `purchase_orders_store_id_foreign` (`store_id`),
  KEY `purchase_orders_vendor_id_foreign` (`vendor_id`),
  KEY `purchase_orders_created_by_foreign` (`created_by`),
  KEY `purchase_orders_updated_by_foreign` (`updated_by`),
  KEY `purchase_orders_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `purchase_orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_orders_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_orders_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.purchase_orders: ~10 rows (approximately)
DELETE FROM `purchase_orders`;

-- Dumping structure for table e_commerce_like_rokomary.purchase_order_items
DROP TABLE IF EXISTS `purchase_order_items`;
CREATE TABLE IF NOT EXISTS `purchase_order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned DEFAULT NULL,
  `quantity` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `received_quantity` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `unit_price` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `total_amount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_order_items_purchase_order_id_foreign` (`purchase_order_id`),
  KEY `purchase_order_items_product_id_foreign` (`product_id`),
  KEY `purchase_order_items_product_variant_id_foreign` (`product_variant_id`),
  KEY `purchase_order_items_created_by_foreign` (`created_by`),
  KEY `purchase_order_items_updated_by_foreign` (`updated_by`),
  KEY `purchase_order_items_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `purchase_order_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_order_items_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_order_items_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_order_items_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.purchase_order_items: ~18 rows (approximately)
DELETE FROM `purchase_order_items`;

-- Dumping structure for table e_commerce_like_rokomary.purchase_receipts
DROP TABLE IF EXISTS `purchase_receipts`;
CREATE TABLE IF NOT EXISTS `purchase_receipts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `receipt_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_order_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned NOT NULL,
  `receipt_date` date NOT NULL,
  `received_by` bigint unsigned DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_receipts_receipt_number_unique` (`receipt_number`),
  KEY `purchase_receipts_purchase_order_id_foreign` (`purchase_order_id`),
  KEY `purchase_receipts_store_id_foreign` (`store_id`),
  KEY `purchase_receipts_received_by_foreign` (`received_by`),
  CONSTRAINT `purchase_receipts_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_receipts_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchase_receipts_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.purchase_receipts: ~0 rows (approximately)
DELETE FROM `purchase_receipts`;

-- Dumping structure for table e_commerce_like_rokomary.purchase_receipt_items
DROP TABLE IF EXISTS `purchase_receipt_items`;
CREATE TABLE IF NOT EXISTS `purchase_receipt_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_receipt_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `unit_cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_receipt_items_purchase_receipt_id_foreign` (`purchase_receipt_id`),
  KEY `purchase_receipt_items_product_id_foreign` (`product_id`),
  KEY `purchase_receipt_items_product_variant_id_foreign` (`product_variant_id`),
  CONSTRAINT `purchase_receipt_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_receipt_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_receipt_items_purchase_receipt_id_foreign` FOREIGN KEY (`purchase_receipt_id`) REFERENCES `purchase_receipts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.purchase_receipt_items: ~0 rows (approximately)
DELETE FROM `purchase_receipt_items`;

-- Dumping structure for table e_commerce_like_rokomary.regions
DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `incharge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regions_code_unique` (`code`),
  KEY `regions_created_by_foreign` (`created_by`),
  KEY `regions_updated_by_foreign` (`updated_by`),
  KEY `regions_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `regions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `regions_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `regions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.regions: ~9 rows (approximately)
DELETE FROM `regions`;
INSERT INTO `regions` (`id`, `code`, `name`, `incharge`, `phone`, `email`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Dhaka', NULL, NULL, NULL, NULL, 1, 1, 10, NULL, NULL, '2025-07-22 03:18:28', '2025-10-26 00:13:07'),
	(2, NULL, 'Barishal', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:48:53', '2025-10-25 23:48:53'),
	(3, NULL, 'Khulna', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:49:05', '2025-10-25 23:49:05'),
	(4, NULL, 'Mymensingh', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:49:32', '2025-10-25 23:49:32'),
	(5, NULL, 'Rajshahi', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:49:47', '2025-10-25 23:49:47'),
	(6, NULL, 'Rangpur', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:50:31', '2025-10-25 23:50:31'),
	(7, NULL, 'Chattogram', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:50:52', '2025-10-25 23:50:52'),
	(8, NULL, 'Sylhet', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-25 23:51:18', '2025-10-25 23:51:18'),
	(9, NULL, 'Region-1', NULL, NULL, NULL, NULL, 0, 10, NULL, NULL, NULL, '2025-10-26 00:18:44', '2025-11-01 01:45:01');

-- Dumping structure for table e_commerce_like_rokomary.reviews
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `rating` tinyint NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_user_id_product_id_unique` (`user_id`,`product_id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.reviews: ~3 rows (approximately)
DELETE FROM `reviews`;
INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
	(1, 3, 11, 5, 'NICE', 1, '2026-02-01 00:25:27', '2026-02-01 00:26:37'),
	(2, 2, 11, 2, 'Motamuti', 1, '2026-02-01 00:31:58', '2026-02-01 00:31:58'),
	(3, 3, 10, 4, 'hhhh', 1, '2026-02-01 00:39:43', '2026-02-01 00:39:43'),
	(4, 1, 32, 4, 'This is good', 1, '2026-02-25 22:16:06', '2026-02-25 22:16:06');

-- Dumping structure for table e_commerce_like_rokomary.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.roles: ~2 rows (approximately)
DELETE FROM `roles`;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Software Admin', 'web', '2026-01-19 04:51:11', '2026-01-19 04:51:11'),
	(2, 'Test Role', 'web', '2026-01-19 06:27:50', '2026-01-19 06:27:50');

-- Dumping structure for table e_commerce_like_rokomary.role_has_permissions
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.role_has_permissions: ~91 rows (approximately)
DELETE FROM `role_has_permissions`;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(6, 1),
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
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(62, 1),
	(63, 1),
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1),
	(78, 1),
	(79, 1),
	(80, 1),
	(81, 1),
	(82, 1),
	(83, 1),
	(84, 1),
	(85, 1),
	(86, 1),
	(87, 1),
	(88, 1),
	(89, 1),
	(90, 1),
	(91, 1),
	(92, 1),
	(93, 1),
	(94, 1),
	(95, 1),
	(96, 1),
	(97, 1),
	(98, 1),
	(99, 1),
	(100, 1),
	(102, 1),
	(103, 1),
	(104, 1),
	(105, 1),
	(106, 1),
	(107, 1),
	(108, 1),
	(109, 1),
	(110, 1),
	(111, 1),
	(112, 1),
	(113, 1),
	(114, 1),
	(115, 1),
	(116, 1),
	(117, 1);

-- Dumping structure for table e_commerce_like_rokomary.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `sales_officer_id` bigint unsigned DEFAULT NULL,
  `coa_id` bigint unsigned DEFAULT NULL,
  `sale_type` enum('Credit','Cash') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Credit',
  `invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `net_amount` decimal(16,2) NOT NULL,
  `paid` decimal(16,2) NOT NULL DEFAULT '0.00',
  `return_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `return_paid` decimal(16,2) NOT NULL DEFAULT '0.00',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_invoice_unique` (`invoice`),
  KEY `sales_client_id_foreign` (`client_id`),
  KEY `sales_store_id_foreign` (`store_id`),
  KEY `sales_sales_officer_id_foreign` (`sales_officer_id`),
  KEY `sales_coa_id_foreign` (`coa_id`),
  KEY `sales_created_by_foreign` (`created_by`),
  KEY `sales_updated_by_foreign` (`updated_by`),
  KEY `sales_deleted_by_foreign` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sales: ~293 rows (approximately)
DELETE FROM `sales`;

-- Dumping structure for table e_commerce_like_rokomary.sales_lists
DROP TABLE IF EXISTS `sales_lists`;
CREATE TABLE IF NOT EXISTS `sales_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_edition_id` bigint unsigned DEFAULT NULL,
  `price` decimal(16,2) NOT NULL,
  `commission` decimal(16,2) NOT NULL DEFAULT '0.00',
  `commission_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(16,2) NOT NULL,
  `qty` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `net_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `return_qty` decimal(16,2) NOT NULL DEFAULT '0.00',
  `return_amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `distributed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_lists_sales_id_foreign` (`sales_id`),
  KEY `sales_lists_client_id_foreign` (`client_id`),
  KEY `sales_lists_store_id_foreign` (`store_id`),
  KEY `sales_lists_product_id_foreign` (`product_id`),
  KEY `sales_lists_product_edition_id_foreign` (`product_edition_id`),
  CONSTRAINT `sales_lists_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_lists_product_edition_id_foreign` FOREIGN KEY (`product_edition_id`) REFERENCES `product_editions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sales_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_lists_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_lists_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sales_lists: ~316 rows (approximately)
DELETE FROM `sales_lists`;

-- Dumping structure for table e_commerce_like_rokomary.sales_officers
DROP TABLE IF EXISTS `sales_officers`;
CREATE TABLE IF NOT EXISTS `sales_officers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_officers_code_unique` (`code`),
  KEY `sales_officers_created_by_foreign` (`created_by`),
  KEY `sales_officers_updated_by_foreign` (`updated_by`),
  KEY `sales_officers_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `sales_officers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sales_officers_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sales_officers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sales_officers: ~4 rows (approximately)
DELETE FROM `sales_officers`;
INSERT INTO `sales_officers` (`id`, `code`, `name`, `phone`, `email`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(2, NULL, 'Tso Mostafa', NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 01:54:45', '2025-11-02 01:54:45'),
	(3, NULL, 'Tso Anamul', NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 01:55:01', '2025-11-02 01:55:01'),
	(4, NULL, 'Ali Ahmed Bahar', NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 01:55:30', '2025-11-02 01:55:30'),
	(5, NULL, 'Tso Rasel', NULL, NULL, 1, 10, 10, NULL, NULL, '2025-12-21 22:00:16', '2025-12-21 22:01:37'),
	(6, NULL, 'Online', '0000000000', 'online@gmail.com', 1, 1, NULL, NULL, NULL, '2026-03-03 23:26:22', '2026-03-03 23:26:22');

-- Dumping structure for table e_commerce_like_rokomary.sales_returns
DROP TABLE IF EXISTS `sales_returns`;
CREATE TABLE IF NOT EXISTS `sales_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `return_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_returns_return_no_unique` (`return_no`),
  KEY `sales_returns_client_id_foreign` (`client_id`),
  KEY `sales_returns_store_id_foreign` (`store_id`),
  KEY `sales_returns_created_by_foreign` (`created_by`),
  KEY `sales_returns_updated_by_foreign` (`updated_by`),
  KEY `sales_returns_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `sales_returns_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_returns_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sales_returns_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sales_returns_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_returns_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sales_returns: ~20 rows (approximately)
DELETE FROM `sales_returns`;

-- Dumping structure for table e_commerce_like_rokomary.sales_return_lists
DROP TABLE IF EXISTS `sales_return_lists`;
CREATE TABLE IF NOT EXISTS `sales_return_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `store_id` bigint unsigned NOT NULL,
  `sales_id` bigint unsigned NOT NULL,
  `sales_list_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_edition_id` bigint unsigned DEFAULT NULL,
  `rate` decimal(16,2) NOT NULL,
  `qty` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_return_lists_sales_return_id_foreign` (`sales_return_id`),
  KEY `sales_return_lists_client_id_foreign` (`client_id`),
  KEY `sales_return_lists_store_id_foreign` (`store_id`),
  KEY `sales_return_lists_sales_id_foreign` (`sales_id`),
  KEY `sales_return_lists_sales_list_id_foreign` (`sales_list_id`),
  KEY `sales_return_lists_product_id_foreign` (`product_id`),
  KEY `sales_return_lists_product_edition_id_foreign` (`product_edition_id`),
  CONSTRAINT `sales_return_lists_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_lists_product_edition_id_foreign` FOREIGN KEY (`product_edition_id`) REFERENCES `product_editions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sales_return_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_lists_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_lists_sales_list_id_foreign` FOREIGN KEY (`sales_list_id`) REFERENCES `sales_lists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_lists_sales_return_id_foreign` FOREIGN KEY (`sales_return_id`) REFERENCES `sales_returns` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_lists_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sales_return_lists: ~20 rows (approximately)
DELETE FROM `sales_return_lists`;

-- Dumping structure for table e_commerce_like_rokomary.sales_return_payments
DROP TABLE IF EXISTS `sales_return_payments`;
CREATE TABLE IF NOT EXISTS `sales_return_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint unsigned NOT NULL,
  `sales_id` bigint unsigned NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_return_payments_sales_return_id_foreign` (`sales_return_id`),
  KEY `sales_return_payments_sales_id_foreign` (`sales_id`),
  CONSTRAINT `sales_return_payments_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sales_return_payments_sales_return_id_foreign` FOREIGN KEY (`sales_return_id`) REFERENCES `sales_returns` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sales_return_payments: ~0 rows (approximately)
DELETE FROM `sales_return_payments`;

-- Dumping structure for table e_commerce_like_rokomary.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sessions: ~85 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('2wpGfcCTDVwXuGhQXagnFOW8PhaVKayMjIvj0N0f', NULL, '85.208.96.203', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam13OWlzTmttZnhrWVhucG1NNlpEYTdBck1mdDBaUUNGTjlQTnhWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vYm9va3NhbmRib29rc2JkLmNvbS9zaWdubGUvc3ViL2NhdGVnb3J5LzI4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771741292),
	('3x9ED1AQuFJrpbS0s17DBbWkNAXJ86DbIah6Y92R', NULL, '5.39.1.250', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS29yWUdCcTFUYVJ0endQMEpHTWpRWUlrdWFGSVJnNURLdVh1TGdJayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvNTMvcHphcmFsYWwtdGV4dC8lRTAlQTYlQUElRTAlQTclOEQlRTAlQTYlQUYlRTAlQTYlQkUlRTAlQTYlQjAlRTAlQTYlQkUlRTAlQTYlQjIlRTAlQTYlQkUlRTAlQTYlQjIlMjBURVhUIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771882406),
	('6K2AwQTDnr2PucGfCn5gg65yr7TYE4sAOPIQDHv7', NULL, '176.31.139.2', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3VlWmhrTEhpWFlIc0tWS3NnenJodnd1VjQwUmhoc0p1MGNkMDJOaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk1OiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMjcvc2FiLW1lbnUtem9nLWtydW4xLyVFMCVBNiVCOCVFMCVBNiVCRSVFMCVBNiVBQyUyMCVFMCVBNiVBRSVFMCVBNyU4NyVFMCVBNiVBOCVFMCVBNyU4MSUyMCVFMCVBNiVBRiVFMCVBNyU4QiVFMCVBNiU5NyUyMCVFMCVBNiU5NSVFMCVBNiVCMCVFMCVBNyU4MSVFMCVBNiVBODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771897235),
	('6PEKrPb372Uzhb17DK77uVvG11rcrdiiQHCbwBdJ', NULL, '176.31.139.27', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVREbW5QNjJ6eU5nV3QwdVFKME41clhqMmdTQmQwWm5TWTFoWktQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAyOiJodHRwczovL2Jvb2tzYW5kYm9va3NiZC5jb20vY2F0ZWdvcnkvMTgvaXNsYW1pay1nbHBlci1ieWVyLXNrbC1iaS8lRTAlQTYlQUMlRTAlQTYlQkYlRTAlQTYlQjclRTAlQTclOUYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771899314),
	('8dF3NqTXd6tNhuXFBroePGsUAsFPGngYkW4oVKti', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3ZSZXg5aXg4WG1Ka0x6WXVib3VWZWFhbU40VVJBbks5VVM3TW9DeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMzkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771782044),
	('92XZ9foEBHD2ociNevoQ4HoAN0e1UKTGOHA3C7N6', NULL, '43.135.177.189', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU5BZXF4dTdCbE5vRUpwQmxHMjdOeE9EajhOb2hWRUxEMzRKZU5ZViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly93d3cuYm9va3NhbmRib29rc2JkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771892506),
	('9gYGX5hQx4i037OVIpOopupXjF4VH0WNQ2ovoBrF', NULL, '216.244.66.236', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUhUdThmb0ZFWlFGY2RuN2d4UEFVczlGM09mZWtZYnl3dkt5TUlKTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9ib29rc2FuZGJvb2tzYmQuY29tL3NpZ25sZS9zdWIvY2F0ZWdvcnkvMjciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771722810),
	('9PqaFFB3Apg9ofa6wnjjmwWtkioUSKQYnpuTrB6V', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHdyZEtGeGJwbUJGRjBTTklZaTkxUXV1QUlJRjBGYm1rTnNFMlF3dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1771915785),
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

-- Dumping structure for table e_commerce_like_rokomary.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `tax` double DEFAULT '0',
  `discount` double DEFAULT '0',
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'percent' COMMENT '''percent'',''amount''',
  `description` text COLLATE utf8mb4_unicode_ci,
  `banner_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_one_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_one_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_two_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_two_status` tinyint(1) NOT NULL DEFAULT '1',
  `page_heading_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_image` text COLLATE utf8mb4_unicode_ci,
  `google_map` text COLLATE utf8mb4_unicode_ci,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sms_api_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sms_api_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `bkash_status` tinyint(1) NOT NULL DEFAULT '1',
  `nagad_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `settings_chk_1` CHECK (json_valid(`sms_api_url`)),
  CONSTRAINT `settings_chk_2` CHECK (json_valid(`sms_api_key`)),
  CONSTRAINT `settings_chk_3` CHECK (json_valid(`sms_api_id`))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.settings: ~1 rows (approximately)
DELETE FROM `settings`;
INSERT INTO `settings` (`id`, `app_name`, `title`, `primary_phone`, `secondary_phone`, `primary_email`, `secondary_email`, `office_time`, `address`, `tax`, `discount`, `discount_type`, `description`, `banner_one`, `banner_one_link`, `banner_one_status`, `banner_two`, `banner_two_link`, `banner_two_status`, `page_heading_bg`, `meta_title`, `meta_keyword`, `meta_description`, `meta_image`, `google_map`, `favicon`, `logo`, `footer_logo`, `placeholder`, `facebook_page`, `facebook_group`, `youtube`, `twitter`, `linkedin`, `google`, `whatsapp`, `instagram`, `pinterest`, `sms_api_url`, `sms_api_key`, `sms_api_id`, `bkash_status`, `nagad_status`, `created_at`, `updated_at`) VALUES
	(1, 'Books and Books', 'Books and Books', '01575020231', '01921588567', 'books@gmail.com', 'books@gmail.com', NULL, 'Aftabnager, Dhaka-1212', 5, 10, 'percent', NULL, 'storage/settings/2026-02-02-GF8iNzEQw10DQX3hGgXKvIxe4fI7GR7kjt8TCcXZ.webp', NULL, 1, NULL, NULL, 1, 'storage/settings/2026-02-02-6btudjpIhD9wkXsltv1kfnMekRN4YTuKpP1eUaQT.webp', NULL, NULL, NULL, 'storage/settings/2026-02-02-9xnG106bbdYpc2rUuzNhoyqMKOGHlgoUWrK9aXuy.webp', NULL, 'storage/settings/2026-01-21-V4Q3LAERhKBYrp5zL6fOf2BdZ83NJFuqn0lf317n.webp', 'storage/settings/2026-01-21-3u5FB5fLxnC4FK4pIV24Pli0lW1d0I8gBIfHLqM3.webp', NULL, 'storage/settings/2026-02-02-JYguxUfcqzekqfG4Eh7ZmqP2bzGXy1Iuv5UxSuLC.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2026-01-19 05:10:51', '2026-03-05 03:35:59');

-- Dumping structure for table e_commerce_like_rokomary.sliders
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_created_by_foreign` (`created_by`),
  KEY `sliders_updated_by_foreign` (`updated_by`),
  KEY `sliders_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `sliders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sliders_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sliders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.sliders: ~2 rows (approximately)
DELETE FROM `sliders`;
INSERT INTO `sliders` (`id`, `image`, `mobile_image`, `link`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'storage/slider/2026-02-02-gGt84nAFmb4dz3DNvgQQ3bZmu6zD2Hrtv7UE6eHo.webp', 'storage/slider/2026-02-02-uGFIrrGWjnDroUQyWQt1nUaHPhPNDKBhgnEaT9Wz.webp', '#', 1, 1, 1, NULL, NULL, '2026-01-20 00:28:37', '2026-02-02 04:10:39'),
	(2, 'storage/slider/2026-02-02-jEQIDlnRlmF2Q055Pk5S21Ql3fc1bQrEZ8E2FqI2.webp', 'storage/slider/2026-02-02-vk63QKQKXC62BQHLB4DbCA3jH6FIEbXs9oWV1UsP.webp', '#', 1, 1, 1, NULL, NULL, '2026-01-20 00:39:06', '2026-02-02 04:11:05');

-- Dumping structure for table e_commerce_like_rokomary.stocks
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned NOT NULL,
  `quantity` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocks_store_id_product_variant_id_unique` (`store_id`,`product_variant_id`),
  KEY `stocks_product_id_foreign` (`product_id`),
  KEY `stocks_product_variant_id_foreign` (`product_variant_id`),
  CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stocks_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stocks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.stocks: ~0 rows (approximately)
DELETE FROM `stocks`;

-- Dumping structure for table e_commerce_like_rokomary.stock_movements
DROP TABLE IF EXISTS `stock_movements`;
CREATE TABLE IF NOT EXISTS `stock_movements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `type` enum('purchase_receipt','sales','transfer_out','transfer_in','adjustment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_movements_store_id_foreign` (`store_id`),
  KEY `stock_movements_product_id_foreign` (`product_id`),
  KEY `stock_movements_product_variant_id_foreign` (`product_variant_id`),
  KEY `stock_movements_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  CONSTRAINT `stock_movements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_movements_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_movements_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.stock_movements: ~0 rows (approximately)
DELETE FROM `stock_movements`;

-- Dumping structure for table e_commerce_like_rokomary.stores
DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stores_code_unique` (`code`),
  KEY `stores_created_by_foreign` (`created_by`),
  KEY `stores_updated_by_foreign` (`updated_by`),
  KEY `stores_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `stores_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `stores_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `stores_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.stores: ~1 rows (approximately)
DELETE FROM `stores`;
INSERT INTO `stores` (`id`, `code`, `type`, `name`, `address`, `remarks`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Product Stock,Damage Stock', 'Book Store1', NULL, NULL, 1, 1, 1, NULL, NULL, '2025-07-22 03:19:10', '2026-02-26 01:51:37');

-- Dumping structure for table e_commerce_like_rokomary.territories
DROP TABLE IF EXISTS `territories`;
CREATE TABLE IF NOT EXISTS `territories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `region_id` bigint unsigned NOT NULL,
  `area_id` bigint unsigned NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `incharge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `territories_code_unique` (`code`),
  KEY `territories_region_id_foreign` (`region_id`),
  KEY `territories_area_id_foreign` (`area_id`),
  KEY `territories_created_by_foreign` (`created_by`),
  KEY `territories_updated_by_foreign` (`updated_by`),
  KEY `territories_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `territories_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `territories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `territories_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `territories_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `territories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.territories: ~54 rows (approximately)
DELETE FROM `territories`;
INSERT INTO `territories` (`id`, `region_id`, `area_id`, `code`, `name`, `incharge`, `phone`, `email`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 9, 14, NULL, 'Territory 1', NULL, NULL, NULL, NULL, 1, 1, 10, NULL, NULL, '2025-07-22 03:18:54', '2025-10-26 00:19:55'),
	(2, 5, 15, NULL, 'Territory-1', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-10-26 00:31:40', '2025-10-26 00:32:46'),
	(3, 7, 18, NULL, 'Area-1', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-26 01:14:11', '2025-10-26 01:13:55', '2025-10-26 01:14:11'),
	(4, 7, 16, NULL, 'Territory-1', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-26 01:16:06', '2025-10-26 01:16:06'),
	(5, 6, 45, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 22:43:40', '2025-10-31 22:43:40'),
	(6, 6, 45, NULL, 'পঞ্চগড়', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-10-31 22:46:12', '2025-10-31 22:43:41', '2025-10-31 22:46:12'),
	(7, 6, 8, NULL, 'গাইবান্ধা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 22:52:14', '2025-10-31 22:52:14'),
	(8, 6, 44, NULL, 'রংপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 23:59:02', '2025-10-31 23:59:02'),
	(9, 5, 3, NULL, 'বগুড়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-10-31 23:59:48', '2025-10-31 23:59:48'),
	(10, 5, 42, NULL, 'রাজশাহী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:00:04', '2025-11-01 00:00:04'),
	(11, 5, 41, NULL, 'পাবনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:19:37', '2025-11-01 00:19:37'),
	(12, 5, 40, NULL, 'সিরাজগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:20:38', '2025-11-01 00:20:38'),
	(13, 8, 39, NULL, 'সুনামগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:21:55', '2025-11-01 00:21:55'),
	(14, 8, 38, NULL, 'মৌলভীবাজার', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-11-01 00:24:39', '2025-11-01 00:25:02'),
	(15, 8, 37, NULL, 'হবিগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:25:22', '2025-11-01 00:25:22'),
	(16, 8, 36, NULL, 'সিলেট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:25:51', '2025-11-01 00:25:51'),
	(17, 7, 35, NULL, 'চাঁদপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:26:10', '2025-11-01 00:26:10'),
	(18, 7, 34, NULL, 'ফেনী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:26:45', '2025-11-01 00:26:45'),
	(19, 7, 32, NULL, 'কুমিল্লা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:26:59', '2025-11-01 00:26:59'),
	(20, 7, 33, NULL, 'চট্টগ্রাম', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:27:40', '2025-11-01 00:27:40'),
	(21, 4, 31, NULL, 'ময়মনসিংহ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:27:58', '2025-11-01 00:27:58'),
	(22, 4, 30, NULL, 'টাঙ্গাইল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:28:16', '2025-11-01 00:28:16'),
	(23, 4, 29, NULL, 'নেত্রকোনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:28:31', '2025-11-01 00:28:31'),
	(24, 4, 28, NULL, 'জামালপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:28:53', '2025-11-01 00:28:53'),
	(25, 3, 27, NULL, 'নোয়াপাড়া, খুলনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:32:05', '2025-11-01 00:32:05'),
	(26, 3, 26, NULL, 'যশোর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:32:33', '2025-11-01 00:32:33'),
	(27, 2, 25, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:03:36', '2025-11-01 00:33:35', '2025-11-01 01:03:36'),
	(28, 2, 24, NULL, 'পিরোজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:34:00', '2025-11-01 00:34:00'),
	(29, 1, 22, NULL, 'নরসিংদী মাধবদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:34:26', '2025-11-01 00:34:26'),
	(30, 1, 21, NULL, 'মুন্সীগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-11-01 00:35:27', '2025-11-01 01:20:48'),
	(31, 1, 21, NULL, 'মুন্সীগঞ্জ, নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 00:36:07', '2025-11-01 00:35:27', '2025-11-01 00:36:07'),
	(32, 1, 20, NULL, 'সাভার', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:35:44', '2025-11-01 00:35:44'),
	(33, 5, 13, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:36:53', '2025-11-01 00:36:53'),
	(34, 5, 13, NULL, 'ঈশ্বরদী', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 00:37:54', '2025-11-01 00:36:53', '2025-11-01 00:37:54'),
	(35, 5, 12, NULL, 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:38:33', '2025-11-01 00:38:33'),
	(36, 1, 11, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:41:07', '2025-11-01 00:41:07'),
	(37, 6, 10, NULL, 'লালমনিরহাট', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:56:07', '2025-11-01 00:56:07'),
	(38, 6, 9, NULL, 'দিনাজপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:56:51', '2025-11-01 00:56:51'),
	(39, 3, 7, NULL, 'কুষ্টিয়া', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:57:35', '2025-11-01 00:57:35'),
	(40, 4, 6, NULL, 'শেরপুর', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:58:05', '2025-11-01 00:58:05'),
	(41, 5, 5, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 00:58:47', '2025-11-01 00:58:47'),
	(42, 5, 5, NULL, 'নওগাঁ', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 00:59:41', '2025-11-01 00:58:47', '2025-11-01 00:59:41'),
	(43, 1, 11, NULL, 'নরসিংদী', NULL, NULL, NULL, NULL, 1, 10, NULL, 10, '2025-11-01 01:48:34', '2025-11-01 01:01:40', '2025-11-01 01:48:34'),
	(44, 1, 1, NULL, 'নীলক্ষেত', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:02:07', '2025-11-01 01:02:07'),
	(45, 2, 4, NULL, 'পটুয়াখালী', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:03:03', '2025-11-01 01:03:03'),
	(46, 2, 25, NULL, 'বরগুনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:03:25', '2025-11-01 01:03:25'),
	(47, 1, 23, NULL, 'মাওনা', NULL, NULL, NULL, NULL, 1, 10, 10, NULL, NULL, '2025-11-01 01:04:16', '2025-11-01 01:18:42'),
	(48, 2, 2, NULL, 'ভোলা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:04:56', '2025-11-01 01:04:56'),
	(49, 1, 47, NULL, 'মালিবাগ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:08:56', '2025-11-01 01:08:56'),
	(50, 2, 48, NULL, 'ঝালকাঠি', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:17:20', '2025-11-01 01:17:20'),
	(51, 1, 49, NULL, 'নারায়ণগঞ্জ', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-01 01:20:33', '2025-11-01 01:20:33'),
	(52, 3, 46, NULL, 'খুলনা', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 02:42:42', '2025-11-02 02:42:42'),
	(53, 2, 50, NULL, 'বরিশাল', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '2025-11-02 03:06:03', '2025-11-02 03:06:03'),
	(54, 1, 51, NULL, 'ঢাকা দক্ষিণ', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-01-24 05:22:03', '2026-01-24 05:22:03');

-- Dumping structure for table e_commerce_like_rokomary.uoms
DROP TABLE IF EXISTS `uoms`;
CREATE TABLE IF NOT EXISTS `uoms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uoms_slug_unique` (`slug`),
  KEY `uoms_created_by_foreign` (`created_by`),
  KEY `uoms_updated_by_foreign` (`updated_by`),
  KEY `uoms_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `uoms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `uoms_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `uoms_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.uoms: ~1 rows (approximately)
DELETE FROM `uoms`;
INSERT INTO `uoms` (`id`, `name`, `slug`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'UNIT', 'unit', 'UNit des', 1, 1, NULL, NULL, NULL, '2026-01-20 04:07:27', '2026-01-20 04:07:27');

-- Dumping structure for table e_commerce_like_rokomary.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_status` int DEFAULT '0',
  `otp` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expire` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_name_unique` (`user_name`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_by_foreign` (`created_by`),
  KEY `users_updated_by_foreign` (`updated_by`),
  KEY `users_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `users_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.users: ~4 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `phone`, `address`, `image`, `cover_image`, `status`, `email_verified_at`, `role_status`, `otp`, `otp_expire`, `password`, `remember_token`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin', 'wali@gmail.com', '01575020231', 'Dhaka', NULL, NULL, 1, NULL, 1, NULL, NULL, '$2y$12$gKjdlJg51/QNpFugdCaHsOx05nZNn28nktM7kUBhWToaVwk0wcHfO', NULL, NULL, NULL, NULL, NULL, '2026-01-19 04:51:10', '2026-01-26 22:26:43'),
	(2, 'Abdullah Al-Wasi', 'wasi', 'wasi@gmail.com', '22222222', 'Adresss,gggfgd', NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$WAyduN/2SccBUdkF1.gILeTWcVRi/GTVU0qaC7ZUAeD8GCYDtFIvq', NULL, NULL, NULL, NULL, NULL, '2026-01-26 23:05:57', '2026-02-25 23:03:35'),
	(3, 'warid', 'warid', 'warid@gmail.com', '55559999', 'H#5, R#4, Aftabanagar', 'storage/users/profile/2026-01-27-pQ8JiklKJo66CtAWiwxF4mONukP1Y5oEFBHT5TN1.webp', NULL, 1, NULL, 0, NULL, NULL, '$2y$12$m21rnvULrJK3aIZvXPlvl.EjP5lRJe7zRfxajqIQyQItvzq7fQMdu', NULL, NULL, NULL, NULL, NULL, '2026-01-27 00:03:34', '2026-01-27 05:14:38'),
	(4, 'Sumon', NULL, 'sumon@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$2x5YHnPByWB/0rt/bF5NJ.kSB6/eTn1F9dHlUfZoSbCL55M5z8Gba', NULL, NULL, NULL, NULL, NULL, '2026-01-28 06:17:11', '2026-01-28 06:17:11'),
	(6, 'Arman', NULL, 'arman@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$yjOOAududi/rrZ2QW4gq3eJj8gxZPmir1TYxhgX/8LPmYCtALtTgK', NULL, NULL, NULL, NULL, NULL, '2026-03-01 00:15:27', '2026-03-01 00:15:27'),
	(8, 'Mitul', 'mitul', 'mitul@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, '$2y$12$PFsA/yE.brrNBkN9sDI2ieKCgfTBo9Arh0tfDv2QonQuqt.WFVfcK', NULL, NULL, NULL, NULL, NULL, '2026-03-03 22:57:34', '2026-03-03 22:57:34');

-- Dumping structure for table e_commerce_like_rokomary.vendors
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_slug_unique` (`slug`),
  UNIQUE KEY `vendors_code_unique` (`code`),
  KEY `vendors_created_by_foreign` (`created_by`),
  KEY `vendors_updated_by_foreign` (`updated_by`),
  KEY `vendors_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `vendors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendors_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.vendors: ~1 rows (approximately)
DELETE FROM `vendors`;
INSERT INTO `vendors` (`id`, `name`, `slug`, `code`, `contact_person`, `email`, `phone`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Vendor123', 'vendor123', 'CODE123', 'Wali', 'wali@gmail.com', '33333333', 'dsds sdsdasddasda', 1, 1, NULL, NULL, NULL, '2026-01-20 04:13:33', '2026-01-20 04:13:33');

-- Dumping structure for table e_commerce_like_rokomary.wishlists
DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wishlists_user_id_product_id_unique` (`user_id`,`product_id`),
  KEY `wishlists_product_id_foreign` (`product_id`),
  CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table e_commerce_like_rokomary.wishlists: ~7 rows (approximately)
DELETE FROM `wishlists`;
INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(6, 3, 3, '2026-01-27 06:13:15', '2026-01-27 06:13:15'),
	(8, 3, 12, '2026-01-27 06:15:50', '2026-01-27 06:15:50'),
	(9, 3, 5, '2026-01-27 06:16:30', '2026-01-27 06:16:30'),
	(10, 1, 10, '2026-01-27 23:04:48', '2026-01-27 23:04:48'),
	(11, 3, 13, '2026-02-01 00:42:44', '2026-02-01 00:42:44'),
	(13, 1, 29, '2026-02-28 22:23:10', '2026-02-28 22:23:10'),
	(14, 2, 34, '2026-02-28 22:24:31', '2026-02-28 22:24:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
