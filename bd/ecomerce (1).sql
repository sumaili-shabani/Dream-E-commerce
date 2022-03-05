-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 05 mars 2022 à 07:25
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecomerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Appareil Electronique', 'Appareil-electronique', '2022-02-05 11:56:35', '2022-02-05 11:56:35'),
(2, 'Phone Mobile', 'Phone-mobile', '2022-02-05 11:56:36', '2022-02-05 11:56:36'),
(3, 'Shop Recent', 'Shop-recent', '2022-02-05 11:56:36', '2022-02-05 11:56:36'),
(4, 'Meuble', 'meuble', '2022-02-05 11:56:36', '2022-02-05 11:56:36'),
(5, 'Livre', 'livre', '2022-02-05 11:56:36', '2022-02-05 11:56:36'),
(6, 'Ordinateur', 'computer', '2022-02-05 16:30:23', '2022-02-05 16:30:23');

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(26, 3, 13, NULL, NULL),
(27, 1, 14, NULL, NULL),
(33, 3, 17, NULL, NULL),
(39, 2, 20, NULL, NULL),
(41, 4, 21, NULL, NULL),
(42, 3, 21, NULL, NULL),
(45, 4, 23, NULL, NULL),
(46, 2, 23, NULL, NULL),
(47, 4, 24, NULL, NULL),
(53, 2, 27, NULL, NULL),
(55, 2, 28, NULL, NULL),
(56, 2, 28, NULL, NULL),
(57, 3, 29, NULL, NULL),
(59, 2, 30, NULL, NULL),
(60, 2, 30, NULL, NULL),
(61, 3, 31, NULL, NULL),
(62, 4, 31, NULL, NULL),
(63, 6, 31, NULL, NULL),
(64, 6, 21, NULL, NULL),
(65, 2, 24, NULL, NULL),
(66, 2, 25, NULL, NULL),
(67, 2, 26, NULL, NULL),
(68, 2, 1, NULL, NULL),
(69, 6, 22, NULL, NULL),
(70, 2, 5, NULL, NULL),
(71, 2, 29, NULL, NULL),
(72, 3, 20, NULL, NULL),
(73, 3, 30, NULL, NULL),
(74, 3, 12, NULL, NULL),
(75, 6, 12, NULL, NULL),
(76, 6, 13, NULL, NULL),
(77, 6, 14, NULL, NULL),
(78, 6, 15, NULL, NULL),
(79, 6, 17, NULL, NULL),
(80, 1, 32, NULL, NULL),
(81, 1, 33, NULL, NULL),
(82, 3, 33, NULL, NULL),
(83, 1, 34, NULL, NULL),
(84, 3, 34, NULL, NULL),
(85, 1, 35, NULL, NULL),
(86, 3, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 5, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 5, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 5, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(30, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(31, 5, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 10),
(32, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(35, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(36, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(37, 5, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 10),
(38, 5, 'stock', 'number', 'Stock', 0, 1, 1, 1, 1, 1, '{}', 11),
(39, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 8, 'payment_intent_id', 'text', 'Payment Intent Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 8, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 3),
(42, 8, 'payment_created_at', 'text', 'Payment Created At', 1, 1, 1, 1, 1, 1, '{}', 4),
(43, 8, 'products', 'text', 'Products', 1, 1, 1, 1, 1, 1, '{}', 5),
(44, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(45, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(46, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-02-05 13:30:53', '2022-02-05 13:30:53'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-02-05 13:30:53', '2022-02-05 13:30:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-02-05 13:30:53', '2022-02-05 13:30:53'),
(5, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-05 15:38:54', '2022-02-07 07:43:52'),
(6, 'categories', 'categories', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-02-05 15:48:59', '2022-02-05 15:48:59'),
(8, 'orders', 'orders', 'Order', 'orders', 'voyager-pie-chart', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-07 07:59:49', '2022-02-07 08:06:50');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-02-05 13:30:56', '2022-02-05 13:30:56');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-02-05 13:30:56', '2022-02-05 13:30:56', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2022-02-05 13:30:56', '2022-02-07 08:01:23', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2022-02-05 13:30:56', '2022-02-07 08:01:23', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 5, '2022-02-05 13:30:56', '2022-02-07 08:01:23', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-02-05 13:30:56', '2022-02-07 08:00:52', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-02-05 13:30:56', '2022-02-05 15:45:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-02-05 13:30:56', '2022-02-05 15:45:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-02-05 13:30:56', '2022-02-05 15:45:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-02-05 13:30:56', '2022-02-05 15:45:23', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2022-02-05 13:30:57', '2022-02-07 08:00:52', 'voyager.settings.index', NULL),
(11, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2022-02-05 15:38:54', '2022-02-05 17:12:15', 'voyager.products.index', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-tag', NULL, NULL, 3, '2022-02-05 15:48:59', '2022-02-05 17:12:16', 'voyager.categories.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_02_03_092924_create_products_table', 1),
(4, '2022_02_04_143357_create_orders_table', 1),
(5, '2022_02_04_195332_create_categories_table', 1),
(6, '2022_02_05_121541_create_category_product_table', 1),
(7, '2016_01_01_000000_add_voyager_user_fields', 2),
(8, '2016_01_01_000000_create_data_types_table', 2),
(9, '2016_05_19_173453_create_menu_table', 2),
(10, '2016_10_21_190000_create_roles_table', 2),
(11, '2016_10_21_190000_create_settings_table', 2),
(12, '2016_11_30_135954_create_permission_table', 2),
(13, '2016_11_30_141208_create_permission_role_table', 2),
(14, '2016_12_26_201236_data_types__add__server_side', 2),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(16, '2017_01_14_005015_create_translations_table', 2),
(17, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(18, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(21, '2017_08_05_000000_add_group_to_settings_table', 2),
(22, '2017_11_26_013050_add_user_role_relationship', 2),
(23, '2017_11_26_015000_create_user_roles_table', 2),
(24, '2018_03_11_000000_add_user_settings', 2),
(25, '2018_03_14_000000_add_details_to_data_types_table', 2),
(26, '2018_03_16_000000_make_settings_value_nullable', 2),
(27, '2016_01_01_000000_create_pages_table', 3),
(28, '2016_01_01_000000_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_intent_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_created_at` datetime NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `payment_intent_id`, `amount`, `payment_created_at`, `products`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'pi_3KQSWjHcKfZ3B3C91ejKAy0m', 11979, '2022-02-07 08:24:49', 'a:3:{s:9:\"product_0\";a:3:{i:0;s:13:\"iphone 7 plus\";i:1;d:1900;i:2;i:1;}s:9:\"product_1\";a:3:{i:0;s:7:\"rame 4G\";i:1;d:4500;i:2;i:1;}s:9:\"product_2\";a:3:{i:0;s:12:\"Batterie  hp\";i:1;d:3500;i:2;i:1;}}', 4, '2022-02-07 07:25:13', '2022-02-07 07:25:13'),
(2, 'pi_3KQSfHHcKfZ3B3C91mCoSQsZ', 18150, '2022-02-07 08:33:39', 'a:2:{s:9:\"product_0\";a:3:{i:0;s:7:\"Macbook\";i:1;d:11500;i:2;i:1;}s:9:\"product_1\";a:3:{i:0;s:12:\"Batterie  hp\";i:1;d:3500;i:2;i:1;}}', 4, '2022-02-07 07:33:54', '2022-02-07 07:33:54'),
(3, 'pi_3KQUOOHcKfZ3B3C918fvNewc', 40414, '2022-02-07 10:24:20', 'a:2:{s:9:\"product_0\";a:3:{i:0;s:8:\"isigglub\";i:1;d:15000;i:2;s:1:\"2\";}s:9:\"product_1\";a:3:{i:0;s:15:\"batterie lenovo\";i:1;d:3400;i:2;i:1;}}', 4, '2022-02-07 09:24:42', '2022-02-07 09:24:42');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-02-05 13:30:57', '2022-02-05 13:30:57'),
(2, 'browse_bread', NULL, '2022-02-05 13:30:57', '2022-02-05 13:30:57'),
(3, 'browse_database', NULL, '2022-02-05 13:30:57', '2022-02-05 13:30:57'),
(4, 'browse_media', NULL, '2022-02-05 13:30:57', '2022-02-05 13:30:57'),
(5, 'browse_compass', NULL, '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(6, 'browse_menus', 'menus', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(7, 'read_menus', 'menus', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(8, 'edit_menus', 'menus', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(9, 'add_menus', 'menus', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(10, 'delete_menus', 'menus', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(11, 'browse_roles', 'roles', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(12, 'read_roles', 'roles', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(13, 'edit_roles', 'roles', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(14, 'add_roles', 'roles', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(15, 'delete_roles', 'roles', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(16, 'browse_users', 'users', '2022-02-05 13:30:58', '2022-02-05 13:30:58'),
(17, 'read_users', 'users', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(18, 'edit_users', 'users', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(19, 'add_users', 'users', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(20, 'delete_users', 'users', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(21, 'browse_settings', 'settings', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(22, 'read_settings', 'settings', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(23, 'edit_settings', 'settings', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(24, 'add_settings', 'settings', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(25, 'delete_settings', 'settings', '2022-02-05 13:30:59', '2022-02-05 13:30:59'),
(26, 'browse_products', 'products', '2022-02-05 15:38:54', '2022-02-05 15:38:54'),
(27, 'read_products', 'products', '2022-02-05 15:38:54', '2022-02-05 15:38:54'),
(28, 'edit_products', 'products', '2022-02-05 15:38:54', '2022-02-05 15:38:54'),
(29, 'add_products', 'products', '2022-02-05 15:38:54', '2022-02-05 15:38:54'),
(30, 'delete_products', 'products', '2022-02-05 15:38:54', '2022-02-05 15:38:54'),
(31, 'browse_categories', 'categories', '2022-02-05 15:48:59', '2022-02-05 15:48:59'),
(32, 'read_categories', 'categories', '2022-02-05 15:48:59', '2022-02-05 15:48:59'),
(33, 'edit_categories', 'categories', '2022-02-05 15:48:59', '2022-02-05 15:48:59'),
(34, 'add_categories', 'categories', '2022-02-05 15:48:59', '2022-02-05 15:48:59'),
(35, 'delete_categories', 'categories', '2022-02-05 15:48:59', '2022-02-05 15:48:59'),
(36, 'browse_orders', 'orders', '2022-02-07 07:59:50', '2022-02-07 07:59:50'),
(37, 'read_orders', 'orders', '2022-02-07 07:59:50', '2022-02-07 07:59:50'),
(38, 'edit_orders', 'orders', '2022-02-07 07:59:50', '2022-02-07 07:59:50'),
(39, 'add_orders', 'orders', '2022-02-07 07:59:50', '2022-02-07 07:59:50'),
(40, 'delete_orders', 'orders', '2022-02-07 07:59:50', '2022-02-07 07:59:50');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(15, 1),
(16, 1),
(17, 1),
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
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `created_at`, `updated_at`, `images`, `stock`) VALUES
(1, 'Techno w3', 'distinctio-repellat-ut-et', 'Excepturi qui eius voluptas sapiente.', '<p>Et alias commodi quis quia delectus et voluptatem. Est quaerat quos quam molestiae tenetur voluptatem. A et rerum saepe rem laborum et et minima. Laboriosam voluptas quas vel commodi error nihil id.</p>', 24700, 'products\\February2022\\3udogcEdmGfJagsKAhZk.jpg', '2022-02-05 11:56:00', '2022-02-05 16:42:01', NULL, 50),
(5, 'iphone 7 plus', 'excepturi-ab-eum-velit-qui-laborum', 'Rerum est aut ea perspiciatis ab.', '<p>A aperiam minima nobis corrupti unde aliquam. Laboriosam aut in rerum aspernatur voluptatibus soluta deleniti. Necessitatibus velit doloribus eum quas ipsa quae quia consequatur.</p>', 1900, 'products\\February2022\\BqcazsREVIEcyjaFZnm3.jfif', '2022-02-05 11:56:00', '2022-02-05 16:45:17', NULL, 50),
(12, 'Macbook', 'eum-dignissimos-atque-eaque-eaque-et-suscipit-deleniti', 'Rerum praesentium corporis ducimus enim et.', '<p>Quod incidunt repudiandae ipsum sint. Animi ea quis veritatis ea. Corporis voluptas est eligendi quo eius minima atque. Tenetur nesciunt rerum non ab.</p>', 11500, 'products\\February2022\\6gAEg9se9uPbkA8jLn9l.jpg', '2022-02-05 11:56:00', '2022-02-05 16:50:22', NULL, 50),
(13, 'isigglub', 'corrupti-non-quia-modi-qui-maxime-sit-at', 'Doloribus aut ea harum minus ab.', '<p>Aut eveniet et autem sed qui. Error et ab occaecati sequi libero ut sit sunt. Illum placeat officia dolorem blanditiis ea qui.</p>', 15000, 'products\\February2022\\YcMRs8zNSIkCZfIv4N6w.jfif', '2022-02-05 11:56:00', '2022-02-07 09:23:17', NULL, 155),
(14, 'hp p270', 'est-molestiae-esse-corrupti-voluptatem-dolor-quos', 'Ipsum dolores molestiae amet mollitia.', '<p>Iste ut omnis modi. Mollitia cumque accusantium aut blanditiis dolor optio vitae. Aspernatur iure veniam dolorem sed autem sunt.</p>', 24500, 'products\\February2022\\t7f2gSR0xFWyL3ObrdKM.jfif', '2022-02-05 11:56:00', '2022-02-05 16:55:24', NULL, 50),
(15, 'hp elite book', 'et-quidem-consequatur-officia', 'Adipisci rem error officiis sed.', '<p>Autem aut enim maiores sed facilis non nihil doloribus. Soluta non cum dolorum rerum adipisci libero quae. Fugit id eos maiores alias.</p>', 16700, 'products\\February2022\\bFmwjFiXkggohotf9y5S.jpg', '2022-02-05 11:56:00', '2022-02-05 16:58:12', NULL, 50),
(17, 'toshiba 10 pro', 'aut-veniam-maiores-quia-quidem', 'Qui et occaecati ratione quo esse molestiae.', '<p>Ut adipisci est ea ducimus tempore laborum. Ut voluptas est sed consequatur modi est. Sed provident dolor voluptatibus enim veritatis nam placeat ea. Hic ex dolor nihil.</p>', 10100, 'products\\February2022\\RkqPTdvvNyw5UD4R2yD4.jfif', '2022-02-05 11:56:00', '2022-02-05 16:59:35', NULL, 50),
(20, 'flnix 10', 'et-saepe-et-repudiandae-quae-aut-dolore-necessitatibus', 'Sit ullam itaque quisquam ut.', '<p>Ut velit quis nulla repudiandae. Pariatur mollitia eaque et facilis. Assumenda est omnis odio placeat.</p>', 20900, 'products\\February2022\\MmORbLh2VOouNUsxowdb.jfif', '2022-02-05 11:56:00', '2022-02-05 16:47:17', NULL, 50),
(21, 'Desktop', 'maiores-facilis-ducimus-rem-neque-adipisci-non-quo-rem', 'Alias voluptatum qui odio doloremque dolor.', '<p>Quis quia debitis nihil ea alias cum eum. Fugiat reiciendis sit totam vel aspernatur. Voluptas voluptatem quos saepe suscipit blanditiis est. Ipsa eum odio ipsum reiciendis.</p>', 13800, 'products\\February2022\\YjRe0zSHQitmk6r1WbhU.jpg', '2022-02-05 11:56:00', '2022-02-05 16:35:17', NULL, 50),
(22, 'Toshiba', 'ducimus-consectetur-et-aut-aut-repellat', 'Error enim nemo vitae repudiandae.', '<p>Doloremque vel autem sed accusantium natus illo. Accusamus architecto est eligendi maxime quibusdam. Sapiente impedit voluptate id et qui. Quia necessitatibus qui recusandae.</p>', 2200, 'products\\February2022\\9fI9Uo8wgaecy8tvl5AG.jfif', '2022-02-05 11:56:00', '2022-02-05 16:42:45', NULL, 50),
(23, 'Non nesciunt illum fugiat.', 'ducimus-et-rerum-qui-ab-sit-ut-velit', 'Est fuga alias sequi quam magni dicta.', '<p>Eos iusto quam sed omnis eos illum dolores ut. Adipisci omnis aut consectetur ipsa. Officia enim beatae incidunt voluptatem.</p>', 21200, 'products\\February2022\\4yWIokO57JalLNB4kQXg.jpg', '2022-02-05 11:56:00', '2022-02-05 16:36:25', NULL, 50),
(24, 'Samsung galaxy s5', 'omnis-ea-et-in-voluptatem-minima-veniam-soluta', 'Et maxime dignissimos odio.', '<p>Suscipit quod et voluptate ad. Id neque nemo neque nihil delectus nemo aut illo.</p>', 4900, 'products\\February2022\\jEYKyC9QlPTZ2ewu7Ox4.jfif', '2022-02-05 11:56:00', '2022-02-05 16:38:54', NULL, 50),
(25, 'Iphone xpro', 'quos-ratione-impedit-est-quaerat-voluptate-voluptatem', 'Minus rerum reiciendis sed et.', '<p>Explicabo esse blanditiis odio dolorem cumque consequatur. Fugit suscipit voluptas illo voluptatem unde consequatur. Odio aliquam earum cumque. Voluptate rerum hic voluptatibus adipisci alias.</p>', 15200, 'products\\February2022\\sFs6kssxVACYSt22zEuW.jfif', '2022-02-05 11:56:00', '2022-02-05 16:39:39', NULL, 50),
(26, 'Nokoia', 'nesciunt-ut-aut-aut-quibusdam-quam', 'Sunt et qui vitae quia voluptas earum.', '<p>Iure pariatur corrupti iste molestiae. Iste unde repellendus illo vero quam minus exercitationem. Et placeat voluptas sapiente adipisci. Corrupti omnis nulla omnis a eveniet ex et et.</p>', 21300, 'products\\February2022\\7Xg6yP07TgD6iOKzIr8u.jpg', '2022-02-05 11:56:00', '2022-02-05 16:40:16', NULL, 50),
(27, 'Iphone 7', 'repudiandae-qui-voluptatem-enim-sunt', 'Quo nihil dicta sequi consequatur aspernatur.', '<p>Natus architecto et quo. Ipsa atque magnam ipsa ut. Impedit quod est voluptatem. Ea repellendus aspernatur a sunt in tempora ea. Culpa sit dolores sint repellendus enim aut provident.</p>', 29700, 'products\\February2022\\feUgb8yMiZph6ztybhCh.jfif', '2022-02-05 11:56:00', '2022-02-05 16:43:36', NULL, 50),
(28, 'Iphone 6 plus', 'rerum-eum-sit-quia-pariatur-deleniti-voluptatum-aut', 'Quas distinctio quos in qui voluptatem.', '<p>Excepturi in voluptates consequuntur consequatur accusamus atque laudantium. Nam illo voluptas voluptates quia dolore aliquid quasi. Harum dolor velit harum non fugit officia.</p>', 3700, 'products\\February2022\\1pSJevxC8UIYY1utUNf4.jfif', '2022-02-05 11:56:00', '2022-02-05 16:44:10', NULL, 50),
(29, 'techno fnux', 'voluptatum-quidem-qui-possimus-explicabo-mollitia-architecto', 'Perspiciatis quae id cum sed.', '<p>Debitis dicta ea est saepe distinctio eos et facilis. Blanditiis aperiam vel nostrum quae a numquam aperiam. Officiis sit reiciendis non in explicabo vero.</p>', 5400, 'products\\February2022\\m9xldQiZyT3LgnmrlT1S.jfif', '2022-02-05 11:56:00', '2022-02-05 16:46:10', NULL, 50),
(30, 'windows 4', 'nemo-culpa-quod-sed-accusamus-corrupti-deserunt', 'Consequatur qui qui vel voluptatem deserunt.', '<p>Perspiciatis et aspernatur voluptates suscipit qui ex. Nesciunt laboriosam rerum atque cupiditate. Architecto veniam facilis ea. Esse nisi itaque quia est cum pariatur esse.</p>', 29100, 'products\\February2022\\z9WxUO5byZZYR34TPoie.jfif', '2022-02-05 11:56:00', '2022-02-05 16:49:33', NULL, 50),
(31, 'super produit', 'super-produit', 'le supeur produit créer', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\"> is simply dummy <span style=\"color: #ff0000;\">text of the printing</span> and typesetting industry. Lorem Ipsum has been the industry\'s&nbsp;</span></p>\r\n<p>&nbsp;</p>', 1000, 'products\\February2022\\eXKR0EOO1Vs12uBm5VP3.png', '2022-02-05 15:55:00', '2022-02-05 16:26:11', NULL, 50),
(32, 'Batterie  hp', 'baterie0-hp', 'le supeur produit créer', '<div class=\"NJo7tc Z26q7c uUuwM\" style=\"flex-direction: row; flex: 1 1 auto; color: #202124; font-family: arial, sans-serif;\" data-content-feature=\"1\">\r\n<div class=\"VwiC3b yXK7lf MUxGbd yDYNvb lyLwlc lEBKkf\" style=\"overflow-wrap: break-word; padding-top: 0px; margin-bottom: 0px; color: #4d5156; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: 2;\">Vous pouvez&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">placer</span>&nbsp;des &eacute;l&eacute;ments au sein d\'autres &eacute;l&eacute;ments, c\'est ce qu\'on appelle ... Regardons&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">comment</span>&nbsp;les combiner pour cr&eacute;er une page&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">HTML</span>&nbsp;compl&egrave;te.</div>\r\n</div>\r\n<div class=\"NJo7tc Z26q7c\" style=\"flex-direction: row; flex: 0 0 auto; color: #202124; font-family: arial, sans-serif;\" data-content-feature=\"2\">\r\n<div class=\"TXwUJf\" style=\"color: #70757a;\">Termes manquants&nbsp;:&nbsp;<s>inerpretter</s>&nbsp;&lrm;| Doit inclure&nbsp;:&nbsp;<a class=\"fl\" style=\"color: #1a0dab; text-decoration-line: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;\" href=\"https://www.google.com/search?rlz=1C1XXVF_frCD988CD988&amp;sxsrf=APq-WBt4wmL_BqahxQnRWDrjqfMpTJI3DA:1644085356995&amp;q=comment+%22inerpretter%22+du+html+dans+le+place&amp;sa=X&amp;ved=2ahUKEwjf6Ludl-n1AhWFPOwKHQdUDTkQ5t4CegQIERAB\">inerpretter</a></div>\r\n</div>', 3500, 'products\\February2022\\6MkGjIPPiTcxvafftty5.jpg', '2022-02-05 17:47:26', '2022-02-05 17:47:26', NULL, 50),
(33, 'baterie toshiba', 'baterie0-todhiba-bat1', 'est une batterie de l\'ordinateur', '<div class=\"NJo7tc Z26q7c uUuwM\" style=\"flex-direction: row; flex: 1 1 auto; color: #202124; font-family: arial, sans-serif;\" data-content-feature=\"1\">\r\n<div class=\"VwiC3b yXK7lf MUxGbd yDYNvb lyLwlc lEBKkf\" style=\"overflow-wrap: break-word; padding-top: 0px; margin-bottom: 0px; color: #4d5156; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: 2;\">J\'ai cr&eacute;&eacute; une application&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">Laravel</span>&nbsp;en utilisant installatron sur godaddy.com (h&eacute;bergement partag&eacute;).&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">Apr&egrave;s</span>&nbsp;l\'<span style=\"font-weight: bold; color: #5f6368;\">installation</span>&nbsp;de&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">Voyager</span>,&nbsp;...</div>\r\n</div>\r\n<div class=\"NJo7tc Z26q7c\" style=\"flex-direction: row; flex: 0 0 auto; color: #202124; font-family: arial, sans-serif;\" data-content-feature=\"2\">\r\n<div class=\"TXwUJf\" style=\"color: #70757a;\">Termes manquants&nbsp;:&nbsp;<s>7</s>&nbsp;&lrm;| Doit inclure&nbsp;:&nbsp;<a class=\"fl\" style=\"color: #1a0dab; text-decoration-line: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;\" href=\"https://www.google.com/search?sxsrf=APq-WBvo9CKuWC-vPxfXbFEbyYNJGakInA:1644078255639&amp;q=voyager+probleme+de+l%27image+apres+installation+sur+laravel+%227%22&amp;sa=X&amp;ved=2ahUKEwix1KPj_Oj1AhXEGewKHT8gBGkQ5t4CegQIHRAB\">7</a></div>\r\n</div>', 2300, 'products\\February2022\\pBgdr16dPBmxtINA2x7k.jpg', '2022-02-05 17:49:04', '2022-02-05 17:49:04', NULL, 50),
(34, 'batterie lenovo', 'super-produit-lenovo', 'est une batterie de l\'ordinateur', '<div class=\"NJo7tc Z26q7c uUuwM\" style=\"flex-direction: row; flex: 1 1 auto; color: #202124; font-family: arial, sans-serif;\" data-content-feature=\"1\">\r\n<div class=\"VwiC3b yXK7lf MUxGbd yDYNvb lyLwlc lEBKkf\" style=\"overflow-wrap: break-word; padding-top: 0px; margin-bottom: 0px; color: #4d5156; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: 2;\">Les balises. Les &eacute;l&eacute;ments sont d&eacute;limit&eacute;s par des balises. On&nbsp;<span style=\"font-weight: bold; color: #5f6368;\">place</span>&nbsp;une balise de d&eacute;but avant le contenu de l\'&eacute;l&eacute;ment et une balise de fin apr&egrave;s.</div>\r\n</div>\r\n<div class=\"NJo7tc Z26q7c\" style=\"flex-direction: row; flex: 0 0 auto; color: #202124; font-family: arial, sans-serif;\" data-content-feature=\"2\">\r\n<div class=\"TXwUJf\" style=\"color: #70757a;\">Termes manquants&nbsp;:&nbsp;<s>inerpretter</s>&nbsp;&lrm;| Doit inclure&nbsp;:&nbsp;<a class=\"fl\" style=\"color: #1a0dab; text-decoration-line: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;\" href=\"https://www.google.com/search?rlz=1C1XXVF_frCD988CD988&amp;sxsrf=APq-WBt4wmL_BqahxQnRWDrjqfMpTJI3DA:1644085356995&amp;q=comment+%22inerpretter%22+du+html+dans+le+place&amp;sa=X&amp;ved=2ahUKEwjf6Ludl-n1AhWFPOwKHQdUDTkQ5t4CegQIKBAB\">inerpretter</a></div>\r\n</div>', 3400, 'products\\February2022\\nsgPKyowGr4WoIwwrrJj.jfif', '2022-02-05 17:50:49', '2022-02-05 17:50:49', NULL, 50),
(35, 'rame 4G', 'baterie0-todhiba-ram', 'est une rame de 4G', '<div class=\"NJo7tc Z26q7c jGGQ5e\" style=\"flex-direction: row; flex: 0 0 auto; color: #202124; font-family: arial, sans-serif;\" data-header-feature=\"0\">\r\n<div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span style=\"font-size: 16px;\">le&nbsp;</span><strong style=\"font-size: 16px;\">lore</strong><span style=\"font-size: 16px;\">, emprunt &agrave; l\'anglais signifiant &laquo; folklore &raquo;, &laquo; tradition orale &raquo;, &laquo; di&eacute;g&egrave;se &raquo;, est l\'histoire d\'un univers de fiction ne constituant pas l\'intrigue principale d\'une &oelig;uvre. Ce terme est notamment utilis&eacute; dans le domaine des jeux vid&eacute;o.</span></div>\r\n</div>', 4500, 'products\\February2022\\fjq7XaQa8GkhPf5cYjgH.jfif', '2022-02-05 17:52:00', '2022-02-07 07:40:55', '[\"products\\\\February2022\\\\raJ4zSN06Y2GJQXLtMzn.jfif\",\"products\\\\February2022\\\\1UPUtkfmCSj5hTRlHWHd.jfif\",\"products\\\\February2022\\\\UG4IHLhZNTXIfqJ7FXwQ.jfif\"]', 50);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-02-05 13:30:57', '2022-02-05 13:30:57'),
(2, 'user', 'Normal User', '2022-02-05 13:30:57', '2022-02-05 13:30:57');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'E-commerce', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'est un site de ecommerce assurant le paiement en ligne des marchandises en offrant une livraison domicile', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$5HCh.8nQN8A4t8zk2bHwAeT.71TLw1MNyzVPzxBI9POU37QfQduK2', NULL, NULL, '2022-02-05 13:59:37', '2022-02-05 13:59:37'),
(2, 1, 'administrateur', 'admin@admin.com', 'users\\February2022\\m97hnRIeYUnz7NX3NVlv.jpg', NULL, '$2y$10$WKZhXrNsUDjrEH26y475fuSFc9jbapdmteC0MWwQxNVemLHH3o2mm', NULL, '{\"locale\":\"en\"}', '2022-02-05 14:04:41', '2022-02-05 17:13:39'),
(3, 2, 'user phone', 'user@gmail.com', 'users/default.png', NULL, '$2y$10$PvUKmMQZuWZjxzGrVJu6meT5BUJZyEPUxuWejI13OVbzfdqCLUXfG', NULL, '{\"locale\":\"fr\"}', '2022-02-05 17:16:03', '2022-02-05 17:16:03'),
(4, 2, 'David kisumbu', 'patrona@gmail.com', 'users/default.png', NULL, '$2y$10$4M/5NjfQMqHvdSFJndu11ef6l4vbQYgTiDbDMytNI19axiGfkH532', NULL, NULL, '2022-02-07 07:13:26', '2022-02-07 07:13:27');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_payment_intent_id_unique` (`payment_intent_id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
