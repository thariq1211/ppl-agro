-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 23 Okt 2017 pada 07.53
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buah_naga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `benefits`
--

CREATE TABLE `benefits` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_naga` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kandungan` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `manfaat` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `benefits`
--

INSERT INTO `benefits` (`id`, `deleted_at`, `created_at`, `updated_at`, `jenis_naga`, `kandungan`, `manfaat`) VALUES
(1, NULL, '2017-10-10 10:14:42', '2017-10-16 18:51:50', 'Buah Naga Putih', 'Vitamin A, vitamin C, zat besi', 'menyehatkan mata, mencegah sariwan, tulang kuat, sehat'),
(2, NULL, '2017-10-10 10:15:27', '2017-10-10 10:15:27', 'Buah Naga Merah', 'vitamin D', 'memperkuat tulang'),
(3, NULL, '2017-10-16 18:46:24', '2017-10-16 18:46:24', 'Buah Naga Merah', 'menganudng bhana oengawet', 'gak ada jjkkj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(2, 'Rembangan', '[]', 'red', NULL, '2017-10-10 06:00:00', '2017-10-10 06:00:11'),
(3, 'Dinas Pertania', '[]', 'yellow', NULL, '2017-10-10 06:00:37', '2017-10-10 06:00:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Super Admin', 'Male', '8888888888', '', 'admin@nogo.id', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2017-10-10', '2017-10-10', '2017-10-10', '0.000', NULL, '2017-10-10 05:50:08', '2017-10-10 05:50:08'),
(2, 'Dinas Pertanian', 'dinas', 'Male', '08134567899', '', 'dinas@nogo.id', 3, 'Jember', 'Jl Kaliwates', '', '1987-01-22', '2006-11-22', '1990-01-01', '0.000', NULL, '2017-10-10 06:14:51', '2017-10-10 06:14:51'),
(3, 'Dinas Rembangan', 'Rembangan', 'Male', '08134567889', '', 'rembangan@nogo.id', 2, 'Jember', 'Puncak Rembangan, Arjasa', '', '1995-06-04', '1970-01-01', '1990-01-01', '0.000', NULL, '2017-10-10 06:16:19', '2017-10-10 06:16:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guides`
--

CREATE TABLE `guides` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis_naga` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `panduan` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `guides`
--

INSERT INTO `guides` (`id`, `deleted_at`, `created_at`, `updated_at`, `jenis_naga`, `panduan`) VALUES
(1, NULL, '2017-10-10 10:28:00', '2017-10-10 10:28:00', 'Buah Kuning', 'tanam buah kuning dengan benih berupa setek agar cepat tumbuh dan menghasilkan buah yang berkualitas'),
(2, NULL, '2017-10-16 18:59:07', '2017-10-16 19:01:27', 'Buah Merah', 'JADK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Nogo.ID', '2017-10-10 05:48:42', '2017-10-16 23:16:59'),
(2, 'sitename_part1', '', 'Nogo', '2017-10-10 05:48:42', '2017-10-16 23:16:59'),
(3, 'sitename_part2', '', 'ID', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(4, 'sitename_short', '', 'dr', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(5, 'site_description', '', 'LaraAdmin is a open-source Laravel Admin Panel for quick-start Admin based applications and boilerplate for CRM or CMS systems.', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(6, 'sidebar_search', '', '1', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(7, 'show_messages', '', '1', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(8, 'show_notifications', '', '1', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(9, 'show_tasks', '', '1', '2017-10-10 05:48:43', '2017-10-16 23:16:59'),
(10, 'show_rightsidebar', '', '1', '2017-10-10 05:48:43', '2017-10-16 23:17:00'),
(11, 'skin', '', 'skin-green', '2017-10-10 05:48:43', '2017-10-16 23:17:00'),
(12, 'layout', '', 'fixed', '2017-10-10 05:48:43', '2017-10-16 23:17:00'),
(13, 'default_email', '', 'test@example.com', '2017-10-10 05:48:43', '2017-10-16 23:17:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 6, '2017-10-10 05:48:38', '2017-10-16 18:05:31'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2017-10-10 05:48:38', '2017-10-16 18:05:31'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 1, '2017-10-10 05:48:38', '2017-10-16 18:05:31'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 2, '2017-10-10 05:48:38', '2017-10-16 18:05:31'),
(7, 'Organizations', 'organizations', 'fa-university', 'module', 0, 2, '2017-10-10 05:48:39', '2017-10-16 18:05:31'),
(10, 'Benefits', 'benefits', 'fa fa-plus-square-o', 'module', 0, 3, '2017-10-10 06:57:35', '2017-10-16 18:05:31'),
(11, 'Guides', 'guides', 'fa fa-fire-extinguisher', 'module', 0, 4, '2017-10-10 07:03:19', '2017-10-16 18:05:31'),
(12, 'Locations', 'locations', 'fa fa-location-arrow', 'module', 0, 5, '2017-10-10 07:07:58', '2017-10-16 18:05:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instansi` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lokasi_instansi` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jenis_naga` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `deleted_at`, `created_at`, `updated_at`, `instansi`, `lokasi_instansi`, `jenis_naga`) VALUES
(1, NULL, '2017-10-16 04:34:55', '2017-10-16 04:35:14', 'Perkebunan Buah Naga Rembangan', 'Puncak Rembangan, Arjasa Jember', 'Buah Hitam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'password', 'User', 'UsersController', 'fa-group', 1, '2017-10-10 05:48:07', '2017-10-10 06:22:40'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-10-10 05:48:09', '2017-10-10 05:48:43'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-10-10 05:48:11', '2017-10-10 05:48:43'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-10-10 05:48:12', '2017-10-10 05:48:43'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-10-10 05:48:14', '2017-10-10 05:48:43'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2017-10-10 05:48:23', '2017-10-10 05:48:43'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-10-10 05:48:25', '2017-10-10 05:48:43'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-10-10 05:48:27', '2017-10-10 05:48:44'),
(10, 'Benefits', 'Benefits', 'benefits', 'manfaat', 'Benefit', 'BenefitsController', 'fa-plus-square-o', 1, '2017-10-10 06:53:02', '2017-10-10 06:57:35'),
(11, 'Guides', 'Guides', 'guides', 'panduan', 'Guide', 'GuidesController', 'fa-fire-extinguisher', 1, '2017-10-10 07:00:37', '2017-10-10 07:03:19'),
(12, 'Locations', 'Locations', 'locations', 'lokasi_instansi', 'Location', 'LocationsController', 'fa-location-arrow', 1, '2017-10-10 07:05:33', '2017-10-10 07:07:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-10-10 05:48:07', '2017-10-10 05:48:07'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-10-10 05:48:07', '2017-10-10 05:48:07'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-10-10 05:48:07', '2017-10-10 05:48:07'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-10-10 05:48:07', '2017-10-10 05:48:07'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2017-10-10 05:48:07', '2017-10-10 05:48:07'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-10-10 05:48:10', '2017-10-10 05:48:10'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-10-10 05:48:12', '2017-10-10 05:48:12'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-10-10 05:48:12', '2017-10-10 05:48:12'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-10-10 05:48:12', '2017-10-10 05:48:12'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-10-10 05:48:13', '2017-10-10 05:48:13'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-10-10 05:48:15', '2017-10-10 05:48:15'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-10-10 05:48:15', '2017-10-10 05:48:15'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-10-10 05:48:15', '2017-10-10 05:48:15'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-10-10 05:48:15', '2017-10-10 05:48:15'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-10-10 05:48:15', '2017-10-10 05:48:15'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2017-10-10 05:48:23', '2017-10-10 05:48:23'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2017-10-10 05:48:23', '2017-10-10 05:48:23'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2017-10-10 05:48:23', '2017-10-10 05:48:23'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2017-10-10 05:48:23', '2017-10-10 05:48:23'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2017-10-10 05:48:24', '2017-10-10 05:48:24'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-10-10 05:48:25', '2017-10-10 05:48:25'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-10-10 05:48:26', '2017-10-10 05:48:26'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-10-10 05:48:26', '2017-10-10 05:48:26'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-10-10 05:48:27', '2017-10-10 05:48:27'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-10-10 05:48:27', '2017-10-10 05:48:27'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-10-10 05:48:27', '2017-10-10 05:48:27'),
(55, 'jenis_naga', 'Jenis Buah Naga', 10, 7, 0, '', 0, 0, 1, '[\"Buah Naga Merah\",\"Buah Naga Putih\",\"Buah Naga Hitam\",\"Buah Naga Kuning\"]', 0, '2017-10-10 06:54:34', '2017-10-10 06:54:34'),
(56, 'kandungan', 'Kandungan', 10, 19, 0, '', 8, 250, 1, '', 0, '2017-10-10 06:55:41', '2017-10-10 06:55:41'),
(57, 'manfaat', 'Manfaat', 10, 19, 0, '', 8, 250, 1, '', 0, '2017-10-10 06:56:16', '2017-10-10 06:56:16'),
(58, 'jenis_naga', 'Jenis Buah Naga', 11, 7, 0, '', 0, 0, 1, '[\"Buah Merah\",\"Buah Putih\",\"Buah Kuning\",\"Buah Hitam\"]', 0, '2017-10-10 07:02:28', '2017-10-10 07:02:28'),
(59, 'panduan', 'Panduan', 11, 21, 0, '', 0, 0, 1, '', 0, '2017-10-10 07:02:58', '2017-10-10 07:02:58'),
(60, 'instansi', 'Nama Instansi', 12, 19, 0, '', 8, 250, 1, '', 0, '2017-10-10 07:06:24', '2017-10-10 07:06:24'),
(61, 'lokasi_instansi', 'Lokasi Instansi', 12, 1, 0, '', 8, 250, 1, '', 0, '2017-10-10 07:06:52', '2017-10-10 07:06:52'),
(62, 'jenis_naga', 'Jenis Buah Naga', 12, 7, 0, '', 0, 0, 1, '[\"Buah Merah\",\"Buah Putih\",\"Buah Kuning\",\"Buah Hitam\"]', 0, '2017-10-10 07:07:38', '2017-10-10 07:07:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(2, 'Checkbox', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(3, 'Currency', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(4, 'Date', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(5, 'Datetime', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(6, 'Decimal', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(7, 'Dropdown', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(8, 'Email', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(9, 'File', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(10, 'Float', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(11, 'HTML', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(12, 'Image', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(13, 'Integer', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(14, 'Mobile', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(15, 'Multiselect', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(16, 'Name', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(17, 'Password', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(18, 'Radio', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(19, 'String', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(20, 'Taginput', '2017-10-10 05:48:03', '2017-10-10 05:48:03'),
(21, 'Textarea', '2017-10-10 05:48:04', '2017-10-10 05:48:04'),
(22, 'TextField', '2017-10-10 05:48:04', '2017-10-10 05:48:04'),
(23, 'URL', '2017-10-10 05:48:04', '2017-10-10 05:48:04'),
(24, 'Files', '2017-10-10 05:48:04', '2017-10-10 05:48:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(2, 'DINAS', 'Dinas Panel', 'Pegawai Dinas Pertanian', NULL, '2017-10-10 06:02:58', '2017-10-10 06:02:58'),
(3, 'Rembangan', 'Rembangan Panel', '', NULL, '2017-10-10 06:03:40', '2017-10-10 06:03:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(2, 'DINAS', 'pegawai_dinas', 'Bagian Dinas Pasar', 1, 3, NULL, '2017-10-10 05:58:53', '2017-10-10 06:00:54'),
(3, 'REMBANGAN', 'Perkebunan Buah Naga', '', 1, 2, NULL, '2017-10-10 06:01:48', '2017-10-10 06:01:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(2, 1, 2, 1, 1, 1, 1, '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(3, 1, 3, 1, 1, 1, 1, '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(4, 1, 4, 1, 1, 1, 1, '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(5, 1, 5, 1, 1, 1, 1, '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(6, 1, 6, 1, 1, 1, 1, '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(7, 1, 7, 1, 1, 1, 1, '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(8, 1, 8, 1, 1, 1, 1, '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(9, 2, 1, 0, 0, 0, 0, '2017-10-10 05:58:53', '2017-10-10 05:58:53'),
(10, 2, 2, 0, 0, 0, 0, '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(11, 2, 3, 0, 0, 0, 0, '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(12, 2, 4, 0, 0, 0, 0, '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(13, 2, 5, 0, 0, 0, 0, '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(14, 2, 6, 0, 0, 0, 0, '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(15, 2, 7, 1, 0, 0, 0, '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(16, 2, 8, 0, 0, 0, 0, '2017-10-10 05:58:57', '2017-10-10 05:58:57'),
(17, 3, 1, 0, 0, 0, 0, '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(18, 3, 2, 0, 0, 0, 0, '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(19, 3, 3, 0, 0, 0, 0, '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(20, 3, 4, 0, 0, 0, 0, '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(21, 3, 5, 0, 0, 0, 0, '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(22, 3, 6, 0, 0, 0, 0, '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(23, 3, 7, 1, 0, 0, 0, '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(24, 3, 8, 0, 0, 0, 0, '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(28, 1, 10, 1, 0, 0, 0, '2017-10-10 06:57:36', '2017-10-10 06:57:36'),
(29, 1, 11, 1, 0, 0, 0, '2017-10-10 07:03:19', '2017-10-10 07:03:19'),
(30, 1, 12, 1, 0, 0, 0, '2017-10-10 07:07:58', '2017-10-10 07:07:58'),
(31, 2, 12, 1, 1, 1, 1, '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(32, 3, 12, 1, 0, 0, 0, '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(33, 2, 11, 1, 0, 0, 0, '2017-10-10 07:10:35', '2017-10-10 07:10:35'),
(34, 3, 11, 1, 1, 1, 1, '2017-10-10 07:10:35', '2017-10-10 07:10:35'),
(35, 2, 10, 1, 0, 0, 0, '2017-10-10 07:11:59', '2017-10-10 07:11:59'),
(36, 3, 10, 1, 1, 1, 1, '2017-10-10 07:11:59', '2017-10-10 07:11:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(2, 1, 2, 'write', '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(3, 1, 3, 'write', '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(4, 1, 4, 'write', '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(5, 1, 5, 'write', '2017-10-10 05:48:39', '2017-10-10 05:48:39'),
(6, 1, 6, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(7, 1, 7, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(8, 1, 8, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(9, 1, 9, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(10, 1, 10, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(11, 1, 11, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(12, 1, 12, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(13, 1, 13, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(14, 1, 14, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(15, 1, 15, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(16, 1, 16, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(17, 1, 17, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(18, 1, 18, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(19, 1, 19, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(20, 1, 20, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(21, 1, 21, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(22, 1, 22, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(23, 1, 23, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(24, 1, 24, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(25, 1, 25, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(26, 1, 26, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(27, 1, 27, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(28, 1, 28, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(29, 1, 29, 'write', '2017-10-10 05:48:40', '2017-10-10 05:48:40'),
(30, 1, 30, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(31, 1, 31, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(32, 1, 32, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(33, 1, 33, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(34, 1, 34, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(35, 1, 35, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(36, 1, 36, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(37, 1, 37, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(38, 1, 38, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(39, 1, 39, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(40, 1, 40, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(41, 1, 41, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(42, 1, 42, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(43, 1, 43, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(44, 1, 44, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(45, 1, 45, 'write', '2017-10-10 05:48:41', '2017-10-10 05:48:41'),
(46, 1, 46, 'write', '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(47, 1, 47, 'write', '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(48, 1, 48, 'write', '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(49, 1, 49, 'write', '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(50, 1, 50, 'write', '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(51, 1, 51, 'write', '2017-10-10 05:48:42', '2017-10-10 05:48:42'),
(52, 2, 1, 'invisible', '2017-10-10 05:58:53', '2017-10-10 05:58:53'),
(53, 2, 2, 'invisible', '2017-10-10 05:58:53', '2017-10-10 05:58:53'),
(54, 2, 3, 'invisible', '2017-10-10 05:58:53', '2017-10-10 05:58:53'),
(55, 2, 4, 'invisible', '2017-10-10 05:58:53', '2017-10-10 05:58:53'),
(56, 2, 5, 'invisible', '2017-10-10 05:58:53', '2017-10-10 05:58:53'),
(57, 2, 6, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(58, 2, 7, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(59, 2, 8, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(60, 2, 9, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(61, 2, 10, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(62, 2, 11, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(63, 2, 12, 'invisible', '2017-10-10 05:58:54', '2017-10-10 05:58:54'),
(64, 2, 13, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(65, 2, 14, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(66, 2, 15, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(67, 2, 16, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(68, 2, 17, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(69, 2, 18, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(70, 2, 19, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(71, 2, 20, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(72, 2, 21, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(73, 2, 22, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(74, 2, 23, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(75, 2, 24, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(76, 2, 25, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(77, 2, 26, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(78, 2, 27, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(79, 2, 28, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(80, 2, 29, 'invisible', '2017-10-10 05:58:55', '2017-10-10 05:58:55'),
(81, 2, 30, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(82, 2, 31, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(83, 2, 32, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(84, 2, 33, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(85, 2, 34, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(86, 2, 35, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(87, 2, 36, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(88, 2, 37, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(89, 2, 38, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(90, 2, 39, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(91, 2, 40, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(92, 2, 41, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(93, 2, 42, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(94, 2, 43, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(95, 2, 44, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(96, 2, 45, 'invisible', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(97, 2, 46, 'readonly', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(98, 2, 47, 'readonly', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(99, 2, 48, 'readonly', '2017-10-10 05:58:56', '2017-10-10 05:58:56'),
(100, 2, 49, 'invisible', '2017-10-10 05:58:57', '2017-10-10 05:58:57'),
(101, 2, 50, 'invisible', '2017-10-10 05:58:57', '2017-10-10 05:58:57'),
(102, 2, 51, 'invisible', '2017-10-10 05:58:57', '2017-10-10 05:58:57'),
(103, 3, 1, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(104, 3, 2, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(105, 3, 3, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(106, 3, 4, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(107, 3, 5, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(108, 3, 6, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(109, 3, 7, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(110, 3, 8, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(111, 3, 9, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(112, 3, 10, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(113, 3, 11, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(114, 3, 12, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(115, 3, 13, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(116, 3, 14, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(117, 3, 15, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(118, 3, 16, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(119, 3, 17, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(120, 3, 18, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(121, 3, 19, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(122, 3, 20, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(123, 3, 21, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(124, 3, 22, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(125, 3, 23, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(126, 3, 24, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(127, 3, 25, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(128, 3, 26, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(129, 3, 27, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(130, 3, 28, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(131, 3, 29, 'invisible', '2017-10-10 06:01:49', '2017-10-10 06:01:49'),
(132, 3, 30, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(133, 3, 31, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(134, 3, 32, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(135, 3, 33, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(136, 3, 34, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(137, 3, 35, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(138, 3, 36, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(139, 3, 37, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(140, 3, 38, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(141, 3, 39, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(142, 3, 40, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(143, 3, 41, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(144, 3, 42, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(145, 3, 43, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(146, 3, 44, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(147, 3, 45, 'invisible', '2017-10-10 06:01:50', '2017-10-10 06:01:50'),
(148, 3, 46, 'readonly', '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(149, 3, 47, 'readonly', '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(150, 3, 48, 'readonly', '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(151, 3, 49, 'invisible', '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(152, 3, 50, 'invisible', '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(153, 3, 51, 'invisible', '2017-10-10 06:01:51', '2017-10-10 06:01:51'),
(163, 1, 55, 'readonly', '2017-10-10 06:54:35', '2017-10-10 06:54:35'),
(164, 1, 56, 'readonly', '2017-10-10 06:55:42', '2017-10-10 06:55:42'),
(165, 1, 57, 'invisible', '2017-10-10 06:56:17', '2017-10-10 06:56:17'),
(166, 1, 58, 'readonly', '2017-10-10 07:02:29', '2017-10-10 07:02:29'),
(167, 1, 59, 'readonly', '2017-10-10 07:02:59', '2017-10-10 07:02:59'),
(168, 1, 60, 'readonly', '2017-10-10 07:06:25', '2017-10-10 07:06:25'),
(169, 1, 61, 'readonly', '2017-10-10 07:06:52', '2017-10-10 07:06:52'),
(170, 1, 62, 'readonly', '2017-10-10 07:07:38', '2017-10-10 07:07:38'),
(171, 2, 60, 'write', '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(172, 2, 61, 'write', '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(173, 2, 62, 'write', '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(174, 3, 60, 'readonly', '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(175, 3, 61, 'readonly', '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(176, 3, 62, 'readonly', '2017-10-10 07:09:34', '2017-10-10 07:09:34'),
(177, 2, 58, 'readonly', '2017-10-10 07:10:35', '2017-10-10 07:10:35'),
(178, 2, 59, 'readonly', '2017-10-10 07:10:35', '2017-10-10 07:10:35'),
(179, 3, 58, 'write', '2017-10-10 07:10:35', '2017-10-10 07:10:35'),
(180, 3, 59, 'write', '2017-10-10 07:10:35', '2017-10-10 07:10:35'),
(181, 2, 55, 'readonly', '2017-10-10 07:11:59', '2017-10-10 07:11:59'),
(182, 2, 56, 'readonly', '2017-10-10 07:11:59', '2017-10-10 07:11:59'),
(183, 2, 57, 'readonly', '2017-10-10 07:11:59', '2017-10-10 07:11:59'),
(184, 3, 55, 'write', '2017-10-10 07:11:59', '2017-10-10 07:11:59'),
(185, 3, 56, 'write', '2017-10-10 07:11:59', '2017-10-10 07:11:59'),
(186, 3, 57, 'write', '2017-10-10 07:11:59', '2017-10-10 07:11:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin@nogo.id', '$2y$10$FMsUkCPfZfw16NdNedo5Lu.rpMezs3cQM.bdOGmVEmgBC6P8qBSCO', 'Employee', 'qmOUTwxbmL26yMn33mWHdxV0xWiUx8GuOEAhGZdCC4zA72IsRtpcK34zbFqT', NULL, '2017-10-10 05:50:08', '2017-10-22 22:41:46'),
(2, 'Dinas Pertanian', 2, 'dinas@nogo.id', '$2y$10$7g7JXVdSy0/wUF8eSNxrxOrRPAZHkGFuigWbGMEehk.ibdrUJoV/e', 'Employee', 'fD6zspxwG4pqh4rSYycVEbMO69ni20i4vWSZjHyakyKxTigBMPZjIGQlxjFI', NULL, '2017-10-10 06:14:51', '2017-10-16 23:16:27'),
(3, 'Dinas Rembangan', 3, 'rembangan@nogo.id', '$2y$10$nirXT8fj7h9tmUvV6J5UReuGfvtTFeNJ8Gb0XMYuF/lIZybkIKjTG', 'Employee', 'iwAvpjkOZwRzmp5RUowo0H5An8besldbQt9rUEktiY7k78hr2OhbRTHPBXeh', NULL, '2017-10-10 06:16:19', '2017-10-16 19:24:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Ketidakleluasaan untuk tabel `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
