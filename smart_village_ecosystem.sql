-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2025 at 02:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_village_ecosystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_date` datetime NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `content`, `activity_date`, `photo_url`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, '<div>mantap</div>', '2025-11-13 00:00:00', '/storage/announcements/1762412411_Frame 1000002192 1.png', 'mantap', 'draft', '2025-11-06 00:00:11', '2025-12-01 02:28:42'),
(2, '<div>Dicari Circle sekuat kami</div>', '2025-12-02 00:00:00', '/storage/announcements/1764581366_Screenshot_20251125_215134_Gallery.jpg', 'Villa', 'published', '2025-12-01 02:29:26', '2025-12-01 02:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `annual_category_data`
--

CREATE TABLE `annual_category_data` (
  `id` bigint UNSIGNED NOT NULL,
  `variable_category_id` bigint UNSIGNED NOT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `annual_category_data`
--

INSERT INTO `annual_category_data` (`id`, `variable_category_id`, `period_start`, `period_end`, `value`, `unit`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-01-01', '2025-12-31', 72.50, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(2, 1, '2024-01-01', '2024-12-31', 40.80, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(3, 1, '2023-01-01', '2023-12-31', 95.10, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(4, 2, '2025-01-01', '2025-12-31', 24.70, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(5, 2, '2024-01-01', '2024-12-31', 76.50, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(6, 2, '2023-01-01', '2023-12-31', 34.90, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(7, 3, '2025-01-01', '2025-12-31', 20.80, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(8, 3, '2024-01-01', '2024-12-31', 15.50, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(9, 3, '2023-01-01', '2023-12-31', 42.30, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(10, 4, '2025-01-01', '2025-12-31', 23.30, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(11, 4, '2024-01-01', '2024-12-31', 10.70, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(12, 4, '2023-01-01', '2023-12-31', 99.10, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(13, 5, '2025-01-01', '2025-12-31', 79.90, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(14, 5, '2024-01-01', '2024-12-31', 55.80, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(15, 5, '2023-01-01', '2023-12-31', 52.70, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(16, 6, '2025-01-01', '2025-12-31', 92.00, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(17, 6, '2024-01-01', '2024-12-31', 45.20, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(18, 6, '2023-01-01', '2023-12-31', 56.80, 'unit', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(19, 7, '2020-01-01', '2025-12-01', 4000.00, 'pcs', '2025-12-01 19:48:51', '2025-12-01 19:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `app_themes`
--

CREATE TABLE `app_themes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nama tema yang tampil di admin',
  `primary_colour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Kode warna primary, contoh #2A87FF',
  `secondary_colour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Kode warna secondary, contoh #BDE4FF',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'True untuk tema yang aktif/dipilih',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_themes`
--

INSERT INTO `app_themes` (`id`, `name`, `primary_colour`, `secondary_colour`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Abu-abu', '#4A4949', '#CFCFCF', 1, '2025-12-01 01:24:43', '2025-12-03 19:32:43'),
(2, 'Merah', '#BC0000', '#FF928A', 0, '2025-12-01 01:24:43', '2025-12-03 19:32:43'),
(3, 'Hijau', '#319F43', '#9CFF8F', 0, '2025-12-01 01:24:43', '2025-12-01 01:24:43'),
(4, 'Kuning', '#E2BD00', '#FFEB00', 0, '2025-12-01 01:24:43', '2025-12-01 01:24:43'),
(5, 'Biru', '#2A87FF', '#BDE4FF', 0, '2025-12-01 01:24:43', '2025-12-01 06:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `forum_post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('smartvillageecosystem_cache_user_last_activity:1', 'O:25:\"Illuminate\\Support\\Carbon\":3:{s:4:\"date\";s:26:\"2025-12-04 02:43:28.851104\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}', 1764818308),
('smartvillageecosystem_cache_village_officials', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:26:\"App\\Models\\VillageOfficial\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:17:\"village_officials\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:4:\"name\";s:14:\"Adelia Puspita\";s:8:\"position\";s:11:\"Kepala Desa\";s:9:\"photo_url\";s:71:\"/storage/village/officials/AEo5U853BldvcSss8FhD1KtteHAwRWMVcK3qermH.jpg\";s:12:\"period_start\";s:10:\"2020-01-01\";s:10:\"period_end\";s:10:\"2025-12-31\";s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-12-01 13:18:32\";s:10:\"updated_at\";s:19:\"2025-12-01 13:34:16\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:4:\"name\";s:14:\"Adelia Puspita\";s:8:\"position\";s:11:\"Kepala Desa\";s:9:\"photo_url\";s:71:\"/storage/village/officials/AEo5U853BldvcSss8FhD1KtteHAwRWMVcK3qermH.jpg\";s:12:\"period_start\";s:10:\"2020-01-01\";s:10:\"period_end\";s:10:\"2025-12-31\";s:9:\"is_active\";i:1;s:10:\"created_at\";s:19:\"2025-12-01 13:18:32\";s:10:\"updated_at\";s:19:\"2025-12-01 13:34:16\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:12:\"period_start\";s:4:\"date\";s:10:\"period_end\";s:4:\"date\";s:9:\"is_active\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"name\";i:1;s:8:\"position\";i:2;s:9:\"photo_url\";i:3;s:12:\"period_start\";i:4;s:10:\"period_end\";i:5;s:18:\"detail_description\";i:6;s:9:\"logo_desa\";i:7;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1764817591),
('smartvillageecosystem_cache_village_settings', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:15:{s:19:\"village_description\";s:15:\"<div>dqwd</div>\";s:4:\"visi\";s:20:\"<div>qwdqwdqwd</div>\";s:4:\"misi\";s:18:\"<div>dwqdqwd</div>\";s:22:\"selected_provinsi_kode\";s:2:\"51\";s:22:\"selected_provinsi_nama\";s:4:\"Bali\";s:18:\"selected_kota_kode\";s:5:\"51.06\";s:18:\"selected_kota_nama\";s:16:\"Kabupaten Bangli\";s:23:\"selected_kecamatan_kode\";s:8:\"51.06.02\";s:23:\"selected_kecamatan_nama\";s:6:\"Bangli\";s:23:\"selected_kelurahan_kode\";s:13:\"51.06.02.1003\";s:23:\"selected_kelurahan_nama\";s:8:\"Bebalang\";s:17:\"featured_news_ids\";s:3:\"[7]\";s:9:\"logo_desa\";s:53:\"settings/sF39KvBNAGGKxvkYxqdAsdCLmSfsq4egXw1FxDgF.png\";s:5:\"photo\";s:53:\"settings/0z8CADpb1TPIQN9v3PX9CuOvn0g4P5eciyjYhfm8.jpg\";s:17:\"photo_kepala_desa\";s:53:\"settings/oPwvhiNrJRCvGU8iZt7iTaPSLYskOs1tYYolYuj6.jpg\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1764817594);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Demografi', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(2, 'Ekonomi', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(3, 'Lingkungan', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(4, 'Test Kategori', '2025-12-01 19:42:42', '2025-12-01 19:42:42'),
(6, 'Kesehatan', '2025-12-01 19:47:04', '2025-12-01 19:47:04'),
(7, 'Nexlim pod', '2025-12-01 19:47:21', '2025-12-01 19:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` bigint UNSIGNED NOT NULL,
  `community_channel_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `profile_image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `community_channel_id`, `name`, `description`, `profile_image_url`, `is_active`, `created_at`, `updated_at`) VALUES
(31, 1, 'Developer Javacript Jawa', 'Komunitas developer yang fokus pada pengembangan aplikasi menggunakan framework Laravel. Berbagi pengetahuan, tips, dan tricks seputar Laravel development.', '/storage/community_images/CXW1h1Z2aBKQoTSmZcCmYSLIRHlqDFinnTY7oO5P.png', 1, '2025-11-09 19:13:37', '2025-11-09 23:42:01'),
(32, 1, 'UI/UX Designer Community', 'Wadah berkumpulnya para desainer UI/UX untuk saling berbagi portfolio, belajar tools design terbaru, dan diskusi tentang user experience.', NULL, 1, '2025-11-09 19:13:37', '2025-11-09 19:13:37'),
(33, 1, 'Digital Marketing Enthusiast', 'Komunitas para digital marketer yang membahas strategi marketing, social media, SEO, dan tips meningkatkan engagement online.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(34, 2, 'Komunitas Petani Organik', 'Kelompok petani yang menerapkan metode pertanian organik tanpa pestisida kimia. Berbagi pengalaman dan teknik budidaya ramah lingkungan.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(35, 2, 'Hidroponik Modern', 'Komunitas pecinta hidroponik yang membahas sistem tanam tanpa tanah menggunakan air dan nutrisi. Cocok untuk lahan terbatas.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(36, 2, 'Petani Muda Mandiri', 'Wadah generasi muda yang tertarik di bidang pertanian modern. Sharing tips agribisnis dan pemasaran hasil panen.', NULL, 0, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(37, 3, 'Peternak Ayam Kampung', 'Komunitas peternak ayam kampung yang berbagi tips pemeliharaan dan pemasaran. Fokus pada kualitas telur dan daging ayam organik.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(38, 3, 'Komunitas Peternak Sapi', 'Wadah peternak sapi untuk sharing pengalaman breeding, kesehatan hewan, dan manajemen kandang yang baik.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(39, 3, 'Peternak Kambing Etawa', 'Kelompok peternak kambing etawa yang fokus pada produksi susu berkualitas tinggi dan pengembangbiakan.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(40, 4, 'Nelayan Tradisional', 'Komunitas nelayan yang mempertahankan metode penangkapan ikan tradisional dan berkelanjutan.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(41, 4, 'Budidaya Ikan Lele', 'Kelompok pembudidaya ikan lele dengan sistem bioflok dan kolam terpal. Berbagi tips panen maksimal.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(42, 4, 'Komunitas Pembudidaya Udang', 'Wadah para pembudidaya udang vaname dan windu. Diskusi tentang kualitas air dan pakan optimal.', NULL, 0, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(43, 5, 'Perajin Batik Nusantara', 'Komunitas perajin batik tulis dan cap yang melestarikan motif tradisional Indonesia.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(44, 5, 'Kerajinan Anyaman Bambu', 'Kelompok pengrajin anyaman bambu yang membuat produk ramah lingkungan dan bernilai seni tinggi.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(45, 5, 'Pengrajin Gerabah', 'Komunitas pembuat gerabah dan keramik tradisional dengan teknik pembakaran khas daerah.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(46, 6, 'Komunitas Kue Tradisional', 'Wadah para pembuat kue tradisional Indonesia untuk berbagi resep turun temurun dan inovasi.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(47, 6, 'Warung Makan Lokal', 'Komunitas pemilik warung makan yang menyajikan masakan khas daerah dengan cita rasa autentik.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(48, 6, 'Jajanan Pasar Nusantara', 'Kelompok pedagang jajanan pasar tradisional yang mempertahankan resep dan kualitas original.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(49, 7, 'Pemandu Wisata Lokal', 'Komunitas pemandu wisata bersertifikat yang menguasai sejarah dan budaya lokal untuk pengalaman wisata terbaik.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(50, 7, 'Homestay Community', 'Kelompok penyedia homestay yang menawarkan pengalaman menginap otentik di rumah warga.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(51, 7, 'Desa Wisata Indonesia', 'Jaringan desa wisata yang mengembangkan pariwisata berbasis masyarakat dan budaya lokal.', NULL, 0, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(52, 8, 'Komunitas Sepeda Santai', 'Kelompok pesepeda yang rutin touring santai keliling desa sambil menikmati pemandangan.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(53, 8, 'Tim Futsal Kampung', 'Tim futsal warga yang aktif latihan dan mengikuti turnamen antar kampung.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(54, 8, 'Pecinta Olahraga Tradisional', 'Komunitas yang melestarikan permainan olahraga tradisional seperti egrang, gobak sodor, dan bakiak.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(55, 9, 'Sanggar Tari Tradisional', 'Sanggar yang mengajarkan tarian tradisional daerah kepada generasi muda untuk pelestarian budaya.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(56, 9, 'Kelompok Musik Gamelan', 'Kelompok pemain gamelan yang rutin berlatih dan pentas di acara-acara adat dan budaya.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(57, 9, 'Komunitas Pelukis Lokal', 'Wadah seniman lukis yang sering menggelar pameran dan workshop melukis untuk masyarakat.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(58, 10, 'Guru Mengaji Kampung', 'Kelompok guru ngaji yang mengajar Al-Quran dan pendidikan agama Islam di musholla kampung.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(59, 10, 'Bimbingan Belajar Gratis', 'Komunitas relawan yang memberikan bimbingan belajar gratis untuk anak-anak kurang mampu.', NULL, 1, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(60, 10, 'Perpustakaan Desa', 'Pengelola perpustakaan desa yang menyediakan koleksi buku dan ruang baca untuk warga.', NULL, 0, '2025-11-09 19:13:38', '2025-11-09 19:13:38'),
(61, 1, 'PT Mandiri Teknik Nusantara', 'PT Mandiri Teknik Nusantara fkasfkaposkfopaskfposakfopks', '/storage/community_images/7bteHHVycO4N79pP3TALFjNpm03Gmo0ODTxkJRWA.png', 1, '2025-11-09 19:18:57', '2025-11-09 19:18:57'),
(62, 8, 'PT Mandiri Teknik Nusantara', 'fwefwef', '/storage/community_images/icDoVUOOLN4zhrURFqKxdzWmwwNClIIrjgC8YXBa.png', 1, '2025-11-09 23:21:04', '2025-11-09 23:21:04'),
(63, 1, 'Komunitas Burung', 'Komunitas Burung', '/storage/community_images/KwkeKwbHlGvAW9jVkOh5FRO8sFhYIFf3QBoaEjH4.png', 1, '2025-11-10 22:06:01', '2025-11-10 22:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_community` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `community_channels`
--

CREATE TABLE `community_channels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_community` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_channels`
--

INSERT INTO `community_channels` (`id`, `name`, `img_community`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(2, 'Pertanian', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(3, 'Peternakan', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(4, 'Perikanan', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(5, 'Kerajinan', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(6, 'Kuliner', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(7, 'Pariwisata', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(8, 'Olahraga', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(9, 'Seni & Budaya', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13'),
(10, 'Pendidikan', NULL, '2025-11-09 05:19:13', '2025-11-09 05:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `community_members`
--

CREATE TABLE `community_members` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `community_id` bigint UNSIGNED NOT NULL,
  `role` enum('member','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_members`
--

INSERT INTO `community_members` (`id`, `user_id`, `community_id`, `role`, `is_blocked`, `created_at`, `updated_at`) VALUES
(424, 11, 31, 'admin', 1, '2025-11-09 19:13:54', '2025-12-03 02:15:01'),
(425, 26, 31, 'member', 1, '2025-11-09 19:13:54', '2025-11-10 00:13:29'),
(426, 23, 31, 'member', 0, '2025-11-09 19:13:54', '2025-12-03 02:15:08'),
(427, 21, 31, 'member', 1, '2025-11-09 19:13:54', '2025-11-10 22:06:34'),
(428, 4, 31, 'member', 1, '2025-11-09 19:13:54', '2025-11-17 07:24:45'),
(430, 3, 31, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(431, 6, 32, 'admin', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(432, 41, 32, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(433, 17, 32, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(434, 28, 32, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(435, 49, 32, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(436, 9, 32, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(437, 25, 32, 'member', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(438, 12, 33, 'admin', 0, '2025-11-09 19:13:54', '2025-11-09 19:13:54'),
(439, 6, 33, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(440, 18, 33, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(441, 11, 33, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(442, 29, 33, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(443, 39, 34, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(444, 4, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(445, 25, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(446, 37, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(447, 1, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(448, 11, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(449, 26, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(450, 48, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(451, 19, 34, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(452, 6, 35, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(453, 26, 35, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(454, 51, 35, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(455, 16, 35, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(456, 14, 35, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(457, 20, 35, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(458, 41, 35, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(460, 33, 36, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(461, 43, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(462, 23, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(463, 1, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(464, 6, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(465, 22, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(466, 36, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(467, 12, 36, 'member', 1, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(468, 45, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(470, 21, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(471, 5, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(472, 26, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(473, 41, 36, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(474, 34, 37, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(475, 41, 37, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(476, 13, 37, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(477, 32, 37, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(478, 30, 37, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(479, 33, 38, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(480, 43, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(481, 21, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(482, 38, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(483, 1, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(484, 35, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(485, 10, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(486, 13, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(487, 3, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(488, 40, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(490, 29, 38, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(491, 28, 39, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(492, 10, 39, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(493, 1, 39, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(495, 40, 39, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(496, 29, 39, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(497, 35, 40, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(498, 38, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(499, 50, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(500, 39, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(501, 31, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(502, 51, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(503, 5, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(504, 1, 40, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(505, 14, 41, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(506, 13, 41, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(507, 46, 41, 'member', 1, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(508, 24, 41, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(509, 49, 41, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(510, 18, 41, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(511, 34, 41, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(512, 6, 41, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(513, 31, 42, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(514, 2, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(515, 42, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(516, 26, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(517, 47, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(518, 3, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(519, 52, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(520, 33, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(522, 8, 42, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(523, 39, 43, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(524, 30, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(525, 7, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(526, 23, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(527, 51, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(528, 37, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(529, 47, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(530, 28, 43, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(531, 53, 44, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(532, 18, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(533, 5, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(534, 34, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(535, 25, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(536, 41, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(537, 2, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(538, 13, 44, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(539, 45, 45, 'admin', 1, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(540, 7, 45, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(541, 49, 45, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(542, 21, 45, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(543, 12, 45, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(544, 37, 46, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(545, 46, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(546, 42, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(547, 24, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(549, 2, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(550, 13, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(551, 19, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(552, 26, 46, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(553, 51, 47, 'admin', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(554, 53, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(555, 36, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(556, 20, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(557, 37, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(558, 12, 47, 'member', 1, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(559, 52, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(560, 21, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(561, 34, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(562, 22, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(563, 29, 47, 'member', 0, '2025-11-09 19:13:55', '2025-11-09 19:13:55'),
(564, 16, 47, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(565, 8, 47, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(566, 42, 47, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(567, 43, 47, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(568, 25, 48, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(569, 31, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(570, 52, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(571, 22, 48, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(572, 46, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(573, 29, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(574, 10, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(575, 32, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(576, 43, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(577, 28, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(578, 3, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(579, 9, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(581, 53, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(582, 33, 48, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(583, 37, 49, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(584, 17, 49, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(585, 25, 49, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(586, 10, 49, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(587, 24, 49, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(588, 4, 49, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(589, 28, 50, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(590, 33, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(591, 40, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(592, 39, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(593, 12, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(594, 34, 50, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(595, 46, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(596, 36, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(597, 47, 50, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(598, 22, 51, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(599, 33, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(600, 27, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(601, 51, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(602, 32, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(603, 48, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(604, 11, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(605, 14, 51, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(606, 18, 51, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(607, 4, 52, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(608, 11, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(609, 5, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(610, 22, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(612, 39, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(613, 7, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(614, 52, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(615, 31, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(616, 34, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(617, 10, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(618, 37, 52, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(619, 35, 53, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(620, 34, 53, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(621, 51, 53, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(623, 28, 53, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(624, 7, 53, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(625, 33, 54, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(626, 21, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(627, 27, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(628, 10, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(629, 43, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(630, 16, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(631, 9, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(632, 4, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(633, 39, 54, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(634, 4, 55, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(635, 44, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(636, 29, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(637, 19, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(638, 22, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(639, 8, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(640, 12, 55, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(641, 38, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(642, 47, 55, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(643, 52, 56, 'admin', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(644, 16, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(645, 43, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(646, 14, 56, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(647, 6, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(648, 51, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(649, 33, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(650, 44, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(651, 24, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(652, 34, 56, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(653, 40, 57, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(654, 41, 57, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(655, 1, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(656, 52, 57, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(657, 17, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(658, 44, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(659, 4, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(660, 34, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(661, 5, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(662, 6, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(663, 9, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(664, 53, 57, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(665, 22, 58, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(666, 49, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(667, 10, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(668, 30, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(669, 44, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(670, 45, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(671, 29, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(672, 1, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(673, 46, 58, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(674, 25, 59, 'admin', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(675, 5, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(676, 20, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(677, 41, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(678, 21, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(679, 42, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(680, 34, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(681, 37, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(682, 11, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(683, 14, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(684, 31, 59, 'member', 0, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(685, 29, 59, 'member', 1, '2025-11-09 19:13:56', '2025-11-09 19:13:56'),
(686, 40, 60, 'admin', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(687, 19, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(688, 24, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(689, 1, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(690, 13, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(691, 22, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(692, 12, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(693, 49, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(694, 18, 60, 'member', 0, '2025-11-09 19:13:57', '2025-11-09 19:13:57'),
(695, 28, 60, 'member', 1, '2025-11-09 19:13:57', '2025-11-09 19:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('terkirim','diproses','selesai','ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'terkirim',
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_maps` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `show_in_profile` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `photo_url`, `url_maps`, `description`, `is_active`, `show_in_profile`, `created_at`, `updated_at`) VALUES
(1, 'Danau toba', 'https://picsum.photos/seed/odit/400/300', 'https://maps.google.com', 'Danau Toba', 1, 0, '2025-10-29 10:05:21', '2025-12-01 06:05:43'),
(2, 'Lembah Gottlieb', 'https://picsum.photos/seed/animi/400/300', 'https://maps.google.com', 'Autem ut deleniti inventore fugit mollitia. Corrupti et quas in est quia. Non autem neque in et.', 1, 0, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(3, 'Pantai Wiegand', 'https://picsum.photos/seed/sed/400/300', 'https://maps.google.com', 'Molestiae aut provident non natus quis eveniet voluptas. Pariatur aut quae cupiditate temporibus ullam ullam omnis. Natus sed facere et nisi occaecati vel est numquam. Et non asperiores rerum officia occaecati.', 1, 0, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(4, 'Curug Hyatt', 'https://picsum.photos/seed/quia/400/300', 'https://maps.google.com', 'Perspiciatis et corporis dolores. Laborum est et nam qui a consequatur et. Dolor assumenda eaque et eaque vel alias iste.', 1, 0, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(6, 'PT Mandiri Teknik Nusantara', '/storage/destinations/1764594391_cropped-image.jpg', 'https://maps.app.goo.gl/9sysUCrTgaiYkQpXA', 'fwfwefwefwefwef', 1, 1, '2025-12-01 06:06:31', '2025-12-02 00:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_products`
--

INSERT INTO `featured_products` (`id`, `name`, `product_category`, `photo_url`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'rerum molestiae quia', 'Jasa', 'https://picsum.photos/seed/eum/400/300', 'Aut in ut inventore sequi dicta. Dignissimos debitis error quas eos aut recusandae et. Aliquam veniam aliquid asperiores consequuntur qui. Earum consequatur alias alias hic aperiam iusto at. Vero non asperiores et qui veritatis culpa ducimus.', 1, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(4, 'placeat quo amet', 'Kerajinan', 'https://picsum.photos/seed/est/400/300', 'Quae vel sunt mollitia omnis aut est. Est vel sunt voluptatem ut harum voluptate enim. Deleniti laboriosam veritatis facilis est rerum. Ullam qui nihil ut dicta facere. Dolor voluptates qui iure quo.', 1, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(5, 'non exercitationem dolorem', 'Kerajinan', 'https://picsum.photos/seed/impedit/400/300', 'Sunt et illum quia consequuntur esse aut. Dolor ea aut omnis. Et aut laborum vel dicta rem a ut. Aperiam at eaque molestiae aut. Voluptatem optio nihil consequatur et et.', 1, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(6, 'Muhammad Raihan Alfaiz', 'Kerjinan tangan', '/storage/featured-products/1764583836_cropped_1764583822846.jpg', 'fwefwefefwe', 1, '2025-12-01 03:10:36', '2025-12-01 03:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `community_id` bigint UNSIGNED NOT NULL,
  `img_forum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `forum_post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `parent_comment_id` bigint UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_likes`
--

CREATE TABLE `forum_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `forum_post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_members`
--

CREATE TABLE `forum_members` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_forum` bigint UNSIGNED NOT NULL,
  `forum_role` enum('member','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `forum_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` enum('image','video') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_reports`
--

CREATE TABLE `log_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `report_id` bigint UNSIGNED NOT NULL,
  `status` enum('Terkirim','Di Proses','Selesai','Di tolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Terkirim',
  `status_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_reports`
--

INSERT INTO `log_reports` (`id`, `report_id`, `status`, `status_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terkirim', 'Laporan berhasil dibuat dan menunggu diproses.', '2025-10-29 10:06:56', '2025-10-29 10:06:56'),
(2, 1, 'Di Proses', 'wkkwkwfkweopfkpowe', '2025-10-29 10:11:54', '2025-10-30 23:33:29'),
(3, 2, 'Terkirim', 'Laporan berhasil dibuat dan menunggu diproses.', '2025-10-29 22:53:28', '2025-10-29 22:53:28'),
(4, 2, 'Di Proses', 'proses bang', '2025-10-29 22:57:17', '2025-10-29 22:57:17'),
(7, 3, 'Terkirim', 'Laporan berhasil dibuat dan menunggu diproses.', '2025-10-30 01:33:37', '2025-10-30 01:33:37'),
(8, 4, 'Di Proses', 'Laporan berhasil dibuat dan menunggu diproses sabar ya', '2025-10-30 20:45:33', '2025-10-30 23:05:02'),
(9, 4, 'Selesai', 'local', '2025-10-30 23:05:20', '2025-10-30 23:05:20'),
(11, 6, 'Terkirim', 'Laporan berhasil dibuat dan menunggu diproses.', '2025-11-09 19:26:17', '2025-11-09 19:26:17'),
(13, 7, 'Terkirim', 'Laporan berhasil dibuat dan menunggu diproses.', '2025-11-10 21:10:15', '2025-11-10 21:10:15'),
(14, 7, 'Di Proses', 'Sabar ya', '2025-11-10 21:11:09', '2025-11-10 21:11:09'),
(15, 8, 'Terkirim', 'Laporan berhasil dibuat dan menunggu diproses.', '2025-11-10 22:04:00', '2025-11-10 22:04:00'),
(16, 8, 'Di Proses', 'Sedang di proses', '2025-11-10 22:04:51', '2025-11-10 22:04:51'),
(17, 8, 'Selesai', 'Selesai', '2025-11-10 22:07:18', '2025-11-10 22:07:18'),
(18, 8, 'Di Proses', 'proses cees', '2025-11-17 05:28:46', '2025-11-17 05:28:46'),
(19, 8, 'Selesai', 'woyyy', '2025-12-01 19:54:38', '2025-12-01 19:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `map_points`
--

CREATE TABLE `map_points` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_points`
--

INSERT INTO `map_points` (`id`, `name`, `description`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Mantap', 'fwefwef', -7.80140000, 110.36470000, '2025-12-01 06:15:27', '2025-12-01 06:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_17_035311_create_personal_access_tokens_table', 1),
(5, '2025_09_04_000015_create_settings_table', 1),
(6, '2025_09_04_000020_create_seller_profiles_table', 1),
(7, '2025_09_04_000030_create_user_reports_table', 1),
(8, '2025_09_04_000040_create_news_categories_table', 1),
(9, '2025_09_04_000050_create_news_table', 1),
(10, '2025_09_04_000060_create_village_officials_table', 1),
(11, '2025_09_04_000070_create_banners_table', 1),
(12, '2025_09_04_000110_create_map_points_table', 1),
(13, '2025_09_04_000140_create_complaints_table', 1),
(14, '2025_09_04_000150_create_community_table', 1),
(15, '2025_09_04_000160_create_forum_table', 1),
(16, '2025_09_04_000165_create_forum_members_table', 1),
(17, '2025_09_04_000170_create_forum_posts_table', 1),
(18, '2025_09_04_000180_create_forum_comments_table', 1),
(19, '2025_09_04_000190_create_forum_likes_table', 1),
(20, '2025_09_04_000200_create_bookmarks_table', 1),
(21, '2025_09_04_000210_create_product_categories_table', 1),
(22, '2025_09_04_000220_create_products_table', 1),
(23, '2025_09_04_000230_create_product_photos_table', 1),
(24, '2025_09_18_000001_create_roles_table', 1),
(25, '2025_09_18_000002_add_foreign_key_to_users_role_id', 1),
(26, '2025_10_09_082329_create_announcements_table', 1),
(27, '2025_10_10_125817_add_slug_to_new_categories_table', 1),
(28, '2025_10_10_125842_add_slug_to_news_table', 1),
(29, '2025_10_10_160512_add_location_to_news_table', 1),
(30, '2025_10_16_080704_add_homepage_fields_to_news_table', 1),
(31, '2025_10_17_032424_create_featured_products_table', 1),
(32, '2025_10_17_033232_create_destinations_table', 1),
(33, '2025_10_17_033345_create_resources_table', 1),
(34, '2025_10_18_142412_add_show_in_profile_to_destinations_table', 1),
(35, '2025_10_22_114540_create_categories_table', 1),
(36, '2025_10_22_114541_create_variable_categories_table', 1),
(37, '2025_10_22_114542_create_annual_category_data_table', 1),
(38, '2025_10_23_000001_move_description_and_logo_to_settings', 1),
(39, '2025_10_29_064217_create_report_categories_table', 1),
(40, '2025_10_29_064223_create_reports_table', 1),
(41, '2025_10_29_064229_create_log_reports_table', 1),
(42, '2025_11_05_134552_create_community_channels_table', 2),
(43, '2025_11_05_134557_create_communities_table', 2),
(44, '2025_11_05_134601_create_community_members_table', 2),
(45, '2025_11_05_134605_create_posts_table', 2),
(46, '2025_11_05_134610_create_post_images_table', 2),
(47, '2025_11_05_134614_create_post_comments_table', 2),
(48, '2025_11_05_134625_create_post_likes_table', 2),
(49, '2025_11_05_134630_create_post_bookmarks_table', 2),
(50, '2025_11_05_134634_create_post_reports_table', 2),
(51, '2025_11_07_121317_create_post_comment_images_table', 3),
(52, '2025_11_10_021247_add_description_to_communities_table', 3),
(53, '2025_11_10_074549_create_notifications_table', 4),
(54, '2025_11_11_144013_create_post_not_interesteds_table', 5),
(55, '2025_11_14_074900_remove_status_from_post_reports_table', 6),
(57, '2025_11_25_000001_create_app_themes_table', 7),
(58, '2025_12_01_000001_add_performance_indexes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `new_category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `photo_url`, `author_name`, `location`, `status`, `new_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Pembukaan Program Bantuan Sosial Tahun 2024', 'pembukaan-program-bantuan-sosial-tahun-2024', '<div>Pemerintah desa mengumumkan pembukaan program bantuan sosial untuk masyarakat kurang mampu. Program ini akan menyasar 150 keluarga penerima bantuan dengan total dana sebesar Rp 500 juta. Pendaftaran dibuka mulai tanggal 15 Januari hingga 31 Januari 2024.</div>', '/storage/news-photos/1764580154_6a5afbf6-bb43-4449-8447-ac104493b674.jpg', 'Admin Smart Village', 'depok', 'published', 1, '2025-10-29 10:05:20', '2025-12-01 02:09:14'),
(2, 'Gotong Royong Pembersihan Sungai Desa', 'gotong-royong-pembersihan-sungai-desa', 'Kegiatan gotong royong pembersihan sungai desa dilaksanakan setiap hari Minggu pagi. Seluruh warga diharapkan berpartisipasi aktif dalam menjaga kebersihan lingkungan. Kegiatan ini merupakan bagian dari program desa bersih dan sehat.', NULL, 'Admin Smart Village', NULL, 'draft', 2, '2025-10-29 10:05:20', '2025-12-01 01:55:39'),
(3, 'Pembangunan Jalan Desa Tahap II Dimulai', 'pembangunan-jalan-desa-tahap-ii-dimulai', 'Proyek pembangunan jalan desa tahap II telah dimulai minggu ini. Pekerjaan meliputi perbaikan jalan sepanjang 2 km dengan dana dari APBD sebesar Rp 1,2 miliar. Diharapkan proyek selesai dalam 3 bulan ke depan.', NULL, 'Admin Smart Village', NULL, 'draft', 3, '2025-10-29 10:05:20', '2025-12-01 01:52:22'),
(4, 'Pelatihan UMKM untuk Ibu-ibu PKK', 'pelatihan-umkm-untuk-ibu-ibu-pkk', 'Dinas Koperasi dan UKM akan mengadakan pelatihan pembuatan kerajinan tangan dan manajemen usaha untuk ibu-ibu PKK. Pelatihan akan dilaksanakan selama 5 hari dengan peserta maksimal 30 orang.', NULL, 'Admin Smart Village', NULL, 'published', 4, '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(7, 'daas', 'daas', '<div>wefweffwefwef</div>', '/storage/news-photos/1764580200_JUL.jpg', 'Raihan', 'fwefwe', 'published', 2, '2025-12-01 02:10:00', '2025-12-01 02:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `new_categories`
--

CREATE TABLE `new_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_categories`
--

INSERT INTO `new_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Berita Umum', 'berita-umum', '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(2, 'Pengumuman', 'pengumuman', '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(3, 'Kegiatan Desa', 'kegiatan-desa', '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(4, 'Pembangunan', 'pembangunan', '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(5, 'Ekonomi', 'ekonomi', '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(6, 'Sosial', 'sosial', '2025-10-29 10:05:20', '2025-10-29 10:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(12, 'App\\Models\\User', 1, 'auth-token', '344507cb3c26374e44695009d589f92ee40ca6ad7018960745ed64725a1e379d', '[\"*\"]', '2025-12-03 00:39:41', NULL, '2025-12-01 01:16:29', '2025-12-03 00:39:41'),
(13, 'App\\Models\\User', 1, 'auth-token', 'd5aed2d8e1ee8cd98a336750854da0cbfd057d60cc658e55f00664e9d19c6de3', '[\"*\"]', '2025-12-02 00:28:22', NULL, '2025-12-01 01:48:31', '2025-12-02 00:28:22'),
(14, 'App\\Models\\User', 1, 'auth-token', 'ad5b23f86710a857bc0922183e5ccecfb29d8f0bdba902b59fa28b489d501a82', '[\"*\"]', '2025-12-03 02:09:49', NULL, '2025-12-03 01:21:23', '2025-12-03 02:09:49'),
(15, 'App\\Models\\User', 1, 'auth-token', '7c67c462fc696382f86cc5c3932c4c6089c7ef4cd8662ac6978f5ad5e5a77ba1', '[\"*\"]', '2025-12-03 02:15:19', NULL, '2025-12-03 02:11:20', '2025-12-03 02:15:19'),
(16, 'App\\Models\\User', 1, 'auth-token', 'e45878e810d5f0d26b71766a568c52c02de96aa1050caea907f16e4538c7c3ca', '[\"*\"]', '2025-12-03 19:43:28', NULL, '2025-12-03 19:10:07', '2025-12-03 19:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `community_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_bookmarks`
--

CREATE TABLE `post_bookmarks` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comment_images`
--

CREATE TABLE `post_comment_images` (
  `id` bigint UNSIGNED NOT NULL,
  `post_comment_id` bigint UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_not_interesteds`
--

CREATE TABLE `post_not_interesteds` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_reports`
--

CREATE TABLE `post_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `reporter_user_id` bigint UNSIGNED NOT NULL,
  `reported_user_id` bigint UNSIGNED DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `status` enum('tersedia','terjual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tersedia',
  `condition_product` enum('baru','bekas') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'baru',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `category_id`, `name`, `description`, `price`, `status`, `condition_product`, `location`, `created_at`, `updated_at`) VALUES
(1, 54, 1, 'Honda CRV 2020 Turbo Prestige', 'Honda CRV tahun 2020 kondisi sangat terawat, full original, kilometer rendah, service record lengkap di Honda resmi.', 421000000.00, 'tersedia', 'bekas', 'Jakarta Selatan', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(2, 55, 1, 'Yamaha Mio Karburator 2007', 'Motor Mio tahun 2007, mesin sehat, surat lengkap, pajak hidup, siap pakai.', 2300000.00, 'tersedia', 'bekas', 'Tangerang', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(3, 56, 3, 'Furniture Kursi Jati Minimalis Set', 'Set kursi tamu minimalis dari kayu jati asli, finishing natural, sangat kokoh dan tahan lama.', 8000000.00, 'tersedia', 'baru', 'Bogor', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(4, 57, 1, 'Mercedes Benz G-Class 2023', 'Mercedes Benz G-Class tahun 2023, full spec, kilometer masih rendah, kondisi seperti baru, STNK tangan pertama.', 931000000.00, 'tersedia', 'bekas', 'Jakarta Pusat', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(5, 54, 2, 'iPhone 14 Pro 256GB Deep Purple', 'iPhone 14 Pro 256GB warna Deep Purple, fullset dus, charger, kondisi mulus 99%, garansi resmi iBox Indonesia masih aktif.', 18500000.00, 'tersedia', 'bekas', 'Jakarta', '2025-11-19 00:37:02', '2025-11-19 00:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Otomotif', 'Kendaraan bermotor dan aksesori otomotif', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(2, 'Elektronik', 'Barang-barang elektronik seperti handphone, laptop, TV', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(3, 'Kerajinan Tangan', 'Produk hasil kerajinan tangan lokal', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(4, 'Fashion', 'Pakaian, sepatu, dan aksesori fashion', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(5, 'Kuliner', 'Makanan dan minuman lokal', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(6, 'mantap', 'mantap', '2025-11-19 00:39:36', '2025-11-19 00:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

CREATE TABLE `product_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_photos`
--

INSERT INTO `product_photos` (`id`, `product_id`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+1', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(2, 1, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+2', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(3, 1, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+3', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(4, 2, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+1', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(5, 2, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+2', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(6, 3, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+1', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(7, 3, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+2', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(8, 4, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+1', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(9, 4, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+2', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(10, 5, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+1', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(11, 5, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+2', '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(12, 5, 'https://placehold.co/800x600/4ade80/ffffff?text=Product+Photo+3', '2025-11-19 00:37:02', '2025-11-19 00:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photos` json DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `category_id`, `name`, `email`, `title`, `description`, `photos`, `location`, `location_detail`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Raihan alfaiz', 'raihanalfaiz80@gmail.com', 'Ada maling di rumah saya', 'Ada maling di rumah saya', '[\"reports/1761757615_0_WhatsApp Image 2025-10-21 at 09.37.43.jpeg\", \"reports/1761757616_1_Frame 1000002192 1.png\", \"reports/1761757616_2_6a5afbf6-bb43-4449-8447-ac104493b674.jpg\"]', 'Rumah saya', 'Rumah saya', '2025-10-29 10:06:56', '2025-10-29 10:06:56'),
(2, NULL, 7, 'Raihan alfaiz', 'raihanalfaiz80@gmail.com', 'Ada maling di rumah saya', 'Tolong tangkap maling dirumah saya', '[\"reports/1761803606_0_6a5afbf6-bb43-4449-8447-ac104493b674.jpg\"]', 'Rumah saya', 'Jln Kemang 1 rt 04 rw 10', '2025-10-29 22:53:28', '2025-10-29 22:53:28'),
(3, NULL, 2, 'Raihan alfaiz', '092022090057@student.jgu.ac.id', 'Pencurian Di Kantor Citiasia', 'Pencurian Di Kantor Citiasia', '[\"reports/1761813216_0_WhatsApp Image 2025-10-21 at 09.37.43.jpeg\"]', 'Kantor Citiasia', 'Kantor Citiasia', '2025-10-30 01:33:37', '2025-10-30 01:33:37'),
(4, NULL, 3, 'Raihan alfaiz', 'raihanalfaiz80@gmail.com', 'fwefwef', 'ewfwe', '[\"reports/1761882333_0_WhatsApp Image 2025-10-21 at 09.37.43.jpeg\"]', 'fwefewf', 'wefew', '2025-10-30 20:45:33', '2025-10-30 20:45:33'),
(6, NULL, 2, 'Cynthia Cantik', 'raihanalfaiz80@gmail.com', 'Tes lagi', 'Tes lagi', '[\"reports/1762741577_0_Rectangle 95.png\"]', 'Tes lagi', 'Tes lagi', '2025-11-09 19:26:17', '2025-11-09 19:26:17'),
(7, NULL, 3, 'Raihan alfaiz', 'raihanalfaiz80@gmail.com', 'Ada maling di rumah saya', 'Maling dirumah saya', '[\"reports/1762834214_0_mandiri.png\"]', 'Rumah saya', 'Depok', '2025-11-10 21:10:15', '2025-11-10 21:10:15'),
(8, NULL, 4, 'Raihan alfaiz', 'raihanalfaiz80@gmail.com', 'Ada maling di rumah saya', 'Maling', '[\"reports/1762837440_0_bni.png\"]', 'Kantor Citiasia', 'Jakarta', '2025-11-10 22:04:00', '2025-11-10 22:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `report_categories`
--

CREATE TABLE `report_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_categories`
--

INSERT INTO `report_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(2, 'Lingkungan', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(3, 'Sosial', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(4, 'Keamanan', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(5, 'Kesehatan', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(6, 'Pendidikan', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(7, 'Ekonomi', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(8, 'Pelayanan Publik', '2025-10-29 10:06:22', '2025-10-29 10:06:22'),
(9, 'Infrastruktur admin', '2025-12-01 19:54:14', '2025-12-01 19:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_maps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `photo_url`, `url_maps`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sumber Air Panas Alam sutra', 'https://picsum.photos/seed/sint/400/300', 'https://maps.google.com', 'Aut assumenda et architecto blanditiis qui voluptates ut corrupti ratione asperiores.', 0, '2025-10-29 10:05:21', '2025-12-01 06:07:32'),
(2, 'Area Pertanian Padi Organik', 'https://picsum.photos/seed/quaerat/400/300', 'https://maps.google.com', 'Officia odit error dolorem delectus perferendis tempora similique aspernatur maiores alias necessitatibus corporis esse.', 1, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(3, 'Tambang Batubara Lokal', 'https://picsum.photos/seed/neque/400/300', 'https://maps.google.com', 'Numquam rem est odit fugiat laboriosam consectetur tenetur corporis aliquam quas quam.', 1, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(4, 'Perkebunan Kelapa Sawit', 'https://picsum.photos/seed/illum/400/300', 'https://maps.google.com', 'Sapiente labore et ut et ut totam error minus deserunt dignissimos nesciunt.', 1, '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(6, 'Muhammad Raihan Alfaiz', '/storage/resources/1764594486_cropped-image.jpg', 'https://maps.app.goo.gl/9sysUCrTgaiYkQpXAfweffwef', 'fewefwefwef', 1, '2025-12-01 06:08:06', '2025-12-01 06:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `seller_profiles`
--

CREATE TABLE `seller_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `ktp_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_profiles`
--

INSERT INTO `seller_profiles` (`id`, `users_id`, `ktp_photo`, `nik`, `created_at`, `updated_at`) VALUES
(1, 54, 'ktp/sample.jpg', '3172003042003001', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(2, 55, 'ktp/sample.jpg', '3172003042003002', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(3, 56, 'ktp/sample.jpg', '3172003042003003', '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(4, 57, 'ktp/sample.jpg', '3172003042003004', '2025-11-19 00:37:02', '2025-11-19 00:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `notes`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'village_description', '<div>dqwd</div>', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 02:43:01'),
(2, 'visi', '<div>qwdqwdqwd</div>', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 02:43:01'),
(3, 'misi', '<div>dwqdqwd</div>', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 02:43:01'),
(4, 'selected_provinsi_kode', '51', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(5, 'selected_provinsi_nama', 'Bali', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(6, 'selected_kota_kode', '51.06', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(7, 'selected_kota_nama', 'Kabupaten Bangli', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(8, 'selected_kecamatan_kode', '51.06.02', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(9, 'selected_kecamatan_nama', 'Bangli', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(10, 'selected_kelurahan_kode', '51.06.02.1003', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(11, 'selected_kelurahan_nama', 'Bebalang', NULL, 1, '2025-10-30 20:34:15', '2025-11-28 03:27:42'),
(12, 'featured_news_ids', '[7]', NULL, 1, '2025-10-30 20:34:15', '2025-12-01 23:40:40'),
(13, 'logo_desa', 'settings/sF39KvBNAGGKxvkYxqdAsdCLmSfsq4egXw1FxDgF.png', NULL, 1, '2025-11-05 23:54:24', '2025-12-01 06:13:06'),
(14, 'photo', 'settings/0z8CADpb1TPIQN9v3PX9CuOvn0g4P5eciyjYhfm8.jpg', NULL, 1, '2025-12-01 06:12:25', '2025-12-01 06:12:25'),
(15, 'photo_kepala_desa', 'settings/oPwvhiNrJRCvGU8iZt7iTaPSLYskOs1tYYolYuj6.jpg', NULL, 1, '2025-12-01 06:12:26', '2025-12-01 06:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `verification_status` enum('unverified','verified') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unverified',
  `status` enum('active','blocked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_provider` enum('local','google') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_number`, `role_id`, `verification_status`, `status`, `google_id`, `avatar_url`, `photo`, `auth_provider`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Smart Village', 'admin@smartvillage.com', '2025-10-29 10:05:19', '$2y$12$.pKf3dZ6zxm6rkH5/onKluEX21pw7w745RSmoQT8LaQ/TxkiETmvi', '081234567890', 1, 'verified', 'active', NULL, NULL, NULL, 'local', 'khapf2AYrDJHppbb5oEW7izDG25Ecs0ZGs6rEzt5my7Gg6LiQIWQEmQ7KeUb', '2025-10-29 10:05:19', '2025-10-29 10:05:19'),
(2, 'Test User', 'test@smartvillage.com', '2025-10-29 10:05:19', '$2y$12$0zj27Wz6jk8l6vY4lvIIl.OiRzmnyKgObw347jl4O4MwhfogXsqWG', '081234567891', 2, 'verified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-10-29 10:05:19', '2025-10-29 10:05:19'),
(3, 'Kepala Desa Citimun', 'kades@smartvillage.com', '2025-10-29 10:05:20', '$2y$12$1Rehpad4DoTbOXM7a12BGOS8qpTrqzWD3ZE20PhxythUEYSDU6bEy', '081234567892', 1, 'verified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-10-29 10:05:20', '2025-10-29 10:05:20'),
(4, 'Nur Ramadhan kali', 'nurramadhan1@test.com', '2025-11-09 19:03:44', '$2y$12$snpcWTKNjEjkhXEN7C1PkeBrnLNp/NWGQlvmp6sa9bGWEnmXMrvym', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:44', '2025-12-01 06:09:11'),
(5, 'Cindy Hidayat', 'cindyhidayat2@test.com', '2025-11-09 19:03:45', '$2y$12$qtk0jv0kIC4lr/STuwUzr.a544JLYs0Yy3CNySGfKzu4JSX3.AFKS', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:45', '2025-11-09 19:03:45'),
(6, 'Ulfa Kurniawan', 'ulfakurniawan3@test.com', '2025-11-09 19:03:45', '$2y$12$QmlY.51cfEeLx4mjj42j6OoRZltOWUUqWL5QOX6436PpE1RYIE5YS', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:45', '2025-11-09 19:03:45'),
(7, 'Citra Utomo', 'citrautomo4@test.com', '2025-11-09 19:03:45', '$2y$12$u2SLW93IeBj9DeBFjuLmcejqfcvD7VexVDX7FdiZ8fC1JBpNEPhaS', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:45', '2025-11-09 19:03:45'),
(8, 'Omar Saputra', 'omarsaputra5@test.com', '2025-11-09 19:03:46', '$2y$12$l3VX5XSGef9Ql7PWMmx9oO0.4fEjQNMp/c7rUbPSgNoN.XucJAauu', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:46', '2025-11-09 19:03:46'),
(9, 'Gilang Hidayat', 'gilanghidayat6@test.com', '2025-11-09 19:03:46', '$2y$12$jZkJdwi1hY9hTRA.jw1oNeEKnNPQccDuAdXSajhq8VAsvIbZh4vUG', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:46', '2025-11-09 19:03:46'),
(10, 'Nur Fadillah', 'nurfadillah7@test.com', '2025-11-09 19:03:46', '$2y$12$MgegloKqY4qg7O8FnO8p9OkoUBfS/HIW3xbywSak0KVCfU3790cqe', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:46', '2025-11-09 19:03:46'),
(11, 'Lina Santoso', 'linasantoso8@test.com', '2025-11-09 19:03:47', '$2y$12$eHDYPFit/FPeSwa/YBireOg/fD8OcwTRxHdOIvH6zp78GmZ9C7iZO', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:47', '2025-11-09 19:03:47'),
(12, 'Qori Hakim', 'qorihakim9@test.com', '2025-11-09 19:03:47', '$2y$12$CrKkkyWzLIOioDzUhTGcb.elOV4DEVVUBcmrbYIzNVp4d8j17.iqe', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:47', '2025-11-09 19:03:47'),
(13, 'Hadi Gunawan', 'hadigunawan10@test.com', '2025-11-09 19:03:47', '$2y$12$H9RLBc0VTzZwbY8O49Q1nODRL8.1KKlbNcRxIYV9PuDHZk.kXX6IO', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:47', '2025-11-09 19:03:47'),
(14, 'Kiki Hidayat', 'kikihidayat11@test.com', '2025-11-09 19:03:48', '$2y$12$h8/H315cYD0yqeEyBTg1ceANeErTERBsxu6W8lqzYAnNI/gRQ/u.a', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:48', '2025-11-09 19:03:48'),
(16, 'Joko Wijaya', 'jokowijaya13@test.com', '2025-11-09 19:03:48', '$2y$12$JIIEk/lu2vnMf29NkIEMaenGZDc1ssNopXEVIPeNMomLXHX9dMmCu', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:48', '2025-11-09 19:03:48'),
(17, 'Zahra Wijaya', 'zahrawijaya14@test.com', '2025-11-09 19:03:49', '$2y$12$cjk6GmtGPkg4vUClwsNdR.k9w1Aw7O1FSrf/kBOvUxINXa9zzr8hu', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:49', '2025-11-09 19:03:49'),
(18, 'Oki Saputra', 'okisaputra15@test.com', '2025-11-09 19:03:49', '$2y$12$Ufp7aY8qmleVrAUl39MUUeapFFZ62hnPe0A3mAkdqy1Ef76bNb8pC', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:49', '2025-11-09 19:03:49'),
(19, 'Ayu Kurniawan', 'ayukurniawan16@test.com', '2025-11-09 19:03:49', '$2y$12$XJ.1EGx8KF79fRtAruIfz.9jaEXZvtiklqK.qxPidoAxsRY8vHJoO', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:49', '2025-11-09 19:03:49'),
(20, 'Ulfa Santoso', 'ulfasantoso17@test.com', '2025-11-09 19:03:50', '$2y$12$pATAs53851WYtUhOFEGHteKJusVCvUilwGaqxXlRZz9TTj9DGcHpu', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:50', '2025-11-09 19:03:50'),
(21, 'Wawan Purnomo', 'wawanpurnomo18@test.com', '2025-11-09 19:03:50', '$2y$12$v4IjiaXduE6FZwvIYgBpTueCnuKN2CyfZ7YmvCBdP2YBXAsf49HhO', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:50', '2025-11-09 19:03:50'),
(22, 'Fitri Putra', 'fitriputra19@test.com', '2025-11-09 19:03:50', '$2y$12$./X9Zz63/Irc1Ul/PCIGzO4fzBfTsnk.asQRALgUqyTcHM30OSbXq', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:50', '2025-11-09 19:03:50'),
(23, 'Oki Kurniawan', 'okikurniawan20@test.com', '2025-11-09 19:03:51', '$2y$12$zTpaYyq6MRug4pf7PQlTze/eo7bCH3n3LJGPiDETjiQoZJfIcxv0m', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:51', '2025-11-09 19:03:51'),
(24, 'Vita Hidayat', 'vitahidayat21@test.com', '2025-11-09 19:03:51', '$2y$12$aNS038an5h7MnDDHuBXbCetzcGBI/osbNBJfcIy4cnrQqjRn7qRWm', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:51', '2025-11-09 19:03:51'),
(25, 'Dewi Nugroho', 'dewinugroho22@test.com', '2025-11-09 19:03:51', '$2y$12$k2B.7pv8I/7s05HNNRKEF.aFeKdd9Y88/sCK1oNjitXcz53USkVfu', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:51', '2025-11-09 19:03:51'),
(26, 'Prima Gunawan', 'primagunawan23@test.com', '2025-11-09 19:03:52', '$2y$12$SyZ8bAeYbXAyauMxcHOKBehczUcCkZc6qhg3s7RaP2U5nucHj51Cq', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:52', '2025-11-09 19:03:52'),
(27, 'Vera Wibowo', 'verawibowo24@test.com', '2025-11-09 19:03:52', '$2y$12$0C/HG6/hCbMW4lF0u1jrA.d8M6SskJoL9bjwerltj3oGoSJMZk2je', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:52', '2025-11-09 19:03:52'),
(28, 'Johan Susanto', 'johansusanto25@test.com', '2025-11-09 19:03:52', '$2y$12$e6KNDg/H2/Gdv3WN.b8akOQvfOFxh5XC79byjH9FHLNAy1IycRbte', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:52', '2025-11-09 19:03:52'),
(29, 'Wawan Wijaya', 'wawanwijaya26@test.com', '2025-11-09 19:03:53', '$2y$12$pO5Z/R4MmVPculiz2tr37eK560Wz1FgaP5dKyHClpQPgPw/FsPOlC', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:53', '2025-11-09 19:03:53'),
(30, 'Zahra Permana', 'zahrapermana27@test.com', '2025-11-09 19:03:53', '$2y$12$nhuZVVyf/Fx7hyixV4EIiuyylBtlkyJwGt0jze0VGHNbTIVxyeyVe', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:53', '2025-11-09 19:03:53'),
(31, 'Ayu Saputra', 'ayusaputra28@test.com', '2025-11-09 19:03:53', '$2y$12$YVAyhwKcTFUd.eev0UrpZOLbKvnM5ZJgasC9zPYtie.GLVFHE3dAq', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:53', '2025-11-09 19:03:53'),
(32, 'Raden Susanto', 'radensusanto29@test.com', '2025-11-09 19:03:54', '$2y$12$dOgNkJTcx6LCXJUkBOwM1uPM9AMiA2kgc/c5G.MnFbKyVXHENk2ve', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:54', '2025-11-09 19:03:54'),
(33, 'Dewi Pratama', 'dewipratama30@test.com', '2025-11-09 19:03:54', '$2y$12$5NE5.qGwiwVFW1hVm4jTT.8HJsnLeeIcPM34adxTRY1rYRHp06VCq', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:54', '2025-11-09 19:03:54'),
(34, 'Johan Raharjo', 'johanraharjo31@test.com', '2025-11-09 19:03:54', '$2y$12$TpNwlJi6/.uXypNR528Tkurntlr2wsskiPKequATPa9lpKyec3qp6', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:54', '2025-11-09 19:03:54'),
(35, 'Dani Nugroho', 'daninugroho32@test.com', '2025-11-09 19:03:55', '$2y$12$/OVAXZuHC//riorGpXwgw.aUx58/cNXX6URsCdwleA07TgWtdVuLe', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:55', '2025-11-09 19:03:55'),
(36, 'Dewi Pratama', 'dewipratama33@test.com', '2025-11-09 19:03:55', '$2y$12$BtINiPQc/YZLBbmPJyJe..KwNmgxd5g3sfU5xb4IJMMd/NjskiVn.', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:55', '2025-11-09 19:03:55'),
(37, 'Andi Santoso', 'andisantoso34@test.com', '2025-11-09 19:03:55', '$2y$12$ASWIw.XP1dQ14sOIBZdw0ur45e6p5CKCLdLUpM0LBK/YQ6Ra/G08a', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:55', '2025-11-09 19:03:55'),
(38, 'Prima Purnomo', 'primapurnomo35@test.com', '2025-11-09 19:03:56', '$2y$12$AWFnTNueqofPMNspmR7Po.TKpSiS0/12PZkDgIhXf5ea8Q3xRXQx.', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:56', '2025-11-09 19:03:56'),
(39, 'Hadi Santoso', 'hadisantoso36@test.com', '2025-11-09 19:03:56', '$2y$12$rGB9oGBB8BXQ5hVbxTPAH.u7oGk.Mo4XK82ogqq306b9v2nogT65W', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:56', '2025-11-09 19:03:56'),
(40, 'Wawan Gunawan', 'wawangunawan37@test.com', '2025-11-09 19:03:56', '$2y$12$GyZGvLxB.cnJv41CJmtbmezGDYHw1OxfG2LLwX5abKDhebGI5COW6', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:56', '2025-11-09 19:03:56'),
(41, 'Omar Kusuma', 'omarkusuma38@test.com', '2025-11-09 19:03:57', '$2y$12$38NWzrQ.hMtE4xEX.VGvS.PdG/h.c40cMu8KJHWpwFlBWtsAKMT8e', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:57', '2025-11-09 19:03:57'),
(42, 'Prima Ramadhan', 'primaramadhan39@test.com', '2025-11-09 19:03:57', '$2y$12$uzTukmUzUiZc8115o59hF.WC41/hw6/PfzlgoYZSb5RNHwsq2EVs6', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:57', '2025-11-09 19:03:57'),
(43, 'Zahra Kurniawan', 'zahrakurniawan40@test.com', '2025-11-09 19:03:57', '$2y$12$OBTaV9Rx8wx31Qx6GjDhaOJPqloWKOqdsUEUtI9W.tpBFZM0k9mMW', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:57', '2025-11-09 19:03:57'),
(44, 'Dani Putra', 'daniputra41@test.com', '2025-11-09 19:03:58', '$2y$12$Uh2QsLCI3VCNCGh1WEe/P.bmlTVXKRXKwEnZZ51rswf4tO.R26BQ.', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:58', '2025-11-09 19:03:58'),
(45, 'Dani Wijaya', 'daniwijaya42@test.com', '2025-11-09 19:03:58', '$2y$12$nx/5VY2BD3bW9uRXER8OeucZl.Nd3f1h4cPamGH/UD76a/T3rUwyO', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:58', '2025-11-09 19:03:58'),
(46, 'Yudi Wijaya', 'yudiwijaya43@test.com', '2025-11-09 19:03:58', '$2y$12$EdosXw4jyTTCqA21ujUpxOB/hzlTBmnvQK2EXQEXrK4AwdzNLRvda', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:58', '2025-11-09 19:03:58'),
(47, 'Yanti Pratama', 'yantipratama44@test.com', '2025-11-09 19:03:59', '$2y$12$xZFu6i2Wo.91kfntcbL.IejV/K5hDWpoiVa9EmXfT6BS.RUtNf8N.', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:59', '2025-11-09 19:03:59'),
(48, 'Ika Pratama', 'ikapratama45@test.com', '2025-11-09 19:03:59', '$2y$12$MAjRyCnoNu4SMHbqqzZSOeyEDQQjVttPsdjnZflltoJHsZXd6kz.S', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:59', '2025-11-09 19:03:59'),
(49, 'Bima Raharjo', 'bimaraharjo46@test.com', '2025-11-09 19:03:59', '$2y$12$9xpGBwNv9PjKrXNLHJYajeuLUOIEz6wkYp7MZ2oq2XysWIc4ITc6W', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:03:59', '2025-11-09 19:03:59'),
(50, 'Joko Hakim', 'jokohakim47@test.com', '2025-11-09 19:04:00', '$2y$12$OwvsBte4NiycXSkd63JRbOiLGxklH81Mj9aSv.21AM12pNXGSMnHK', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:04:00', '2025-11-09 19:04:00'),
(51, 'Omar Nugroho', 'omarnugroho48@test.com', '2025-11-09 19:04:00', '$2y$12$vK9B9eOmvJIpUmbL8E0TlOeq2LbYAYuR1L1bkca2/9NZvZzVAuG7W', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:04:00', '2025-11-09 19:04:00'),
(52, 'Indra Hakim', 'indrahakim49@test.com', '2025-11-09 19:04:00', '$2y$12$3rxh42gL.oaqf1bm3eQXo.vq6RDmm2AQPaQdX4VNVEPnFATkwpxcq', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:04:00', '2025-11-09 19:04:00'),
(53, 'Gita Wijaya', 'gitawijaya50@test.com', '2025-11-09 19:04:01', '$2y$12$48OlLBUOByahCChLIhnymO4o/G6555OGCa4fiSQZbcTRskdDA0Z4C', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-09 19:04:01', '2025-11-09 19:04:01'),
(54, 'Raihan JGU', 'raihan@example.com', NULL, '$2y$12$p0P73VJp.AmS20mwofJX5OktlbXmoUIpH.Bzea0VW4GYC/oCXJNxq', '081234567890', NULL, 'verified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(55, 'Rio Fernandes', 'rio@example.com', NULL, '$2y$12$8oMhQLgjLwyDgE2rdujSqulvGPZwma3KfXW9mocbay0mjuHCZsEQy', '081234567891', NULL, 'verified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(56, 'Solihunsir', 'solih@example.com', NULL, '$2y$12$LrXr1A4exbS2NjXF1/xd3unkhdFQLc5BbBEwTUFrCIsdq6KYA6Osi', '081234567892', NULL, 'verified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-19 00:37:01', '2025-11-19 00:37:01'),
(57, 'Raka Syamputra', 'raka@example.com', NULL, '$2y$12$iusKIZEHjqi7Mt3LHj3Dluhna4QN7rz3BDkvcw6SLdhTUlwCPnbEa', '081234567893', NULL, 'verified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-19 00:37:02', '2025-11-19 00:37:02'),
(58, 'Muhammad Raihan Alfaiz', 'raihanalfaiz80@gmail.com', '2025-11-19 01:05:45', '$2y$12$gtt7u1te1zwrV3MczwD44OlJIE/3rh9agQfLQXw2UUNUlwyh8CNvi', NULL, 2, 'unverified', 'active', NULL, NULL, NULL, 'local', NULL, '2025-11-19 01:05:45', '2025-11-19 01:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `reporter_id` bigint UNSIGNED NOT NULL,
  `reported_id` bigint UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variable_categories`
--

CREATE TABLE `variable_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `no_variable` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_categories`
--

INSERT INTO `variable_categories` (`id`, `category_id`, `no_variable`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'D-1', 'Demografi - Variabel 1', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(2, 1, 'D-2', 'Demografi - Variabel 2', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(3, 2, 'E-1', 'Ekonomi - Variabel 1', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(4, 2, 'E-2', 'Ekonomi - Variabel 2', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(5, 3, 'L-1', 'Lingkungan - Variabel 1', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(6, 3, 'L-2', 'Lingkungan - Variabel 2', '2025-10-29 10:05:21', '2025-10-29 10:05:21'),
(7, 7, '101', 'Nexlim pod', '2025-12-01 19:47:50', '2025-12-01 19:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `village_officials`
--

CREATE TABLE `village_officials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `village_officials`
--

INSERT INTO `village_officials` (`id`, `name`, `position`, `photo_url`, `period_start`, `period_end`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Adelia Puspita', 'Kepala Desa', '/storage/village/officials/AEo5U853BldvcSss8FhD1KtteHAwRWMVcK3qermH.jpg', '2020-01-01', '2025-12-31', 1, '2025-12-01 06:18:32', '2025-12-01 06:34:16'),
(3, 'rahka faturahman', 'skeretearis 1', '/storage/village/officials/FCKhjVR2z6Wr75ELEnJsC2vpzZM9gqcjpi47QiKh.jpg', '2020-01-01', '2025-12-31', 0, '2025-12-01 06:30:21', '2025-12-01 06:41:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_category_data`
--
ALTER TABLE `annual_category_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annual_category_data_variable_category_id_foreign` (`variable_category_id`);

--
-- Indexes for table `app_themes`
--
ALTER TABLE `app_themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_themes_is_active_index` (`is_active`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookmarks_user_id_forum_post_id_unique` (`user_id`,`forum_post_id`),
  ADD KEY `bookmarks_forum_post_id_foreign` (`forum_post_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communities_community_channel_id_foreign` (`community_channel_id`),
  ADD KEY `communities_is_active_index` (`is_active`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_channels`
--
ALTER TABLE `community_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_members`
--
ALTER TABLE `community_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `community_members_user_id_community_id_unique` (`user_id`,`community_id`),
  ADD KEY `community_members_user_community_index` (`user_id`,`community_id`),
  ADD KEY `community_members_community_user_blocked_index` (`community_id`,`user_id`,`is_blocked`),
  ADD KEY `community_members_community_role_index` (`community_id`,`role`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_user_id_index` (`user_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_community_id_index` (`community_id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_comments_user_id_foreign` (`user_id`),
  ADD KEY `forum_comments_parent_comment_id_foreign` (`parent_comment_id`),
  ADD KEY `forum_comments_forum_post_id_user_id_index` (`forum_post_id`,`user_id`);

--
-- Indexes for table `forum_likes`
--
ALTER TABLE `forum_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_likes_user_id_forum_post_id_unique` (`user_id`,`forum_post_id`),
  ADD KEY `forum_likes_forum_post_id_foreign` (`forum_post_id`);

--
-- Indexes for table `forum_members`
--
ALTER TABLE `forum_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_members_id_user_id_forum_unique` (`id_user`,`id_forum`),
  ADD KEY `forum_members_id_forum_foreign` (`id_forum`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_posts_user_id_foreign` (`user_id`),
  ADD KEY `forum_posts_forum_id_user_id_index` (`forum_id`,`user_id`);

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
-- Indexes for table `log_reports`
--
ALTER TABLE `log_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_reports_report_id_foreign` (`report_id`);

--
-- Indexes for table `map_points`
--
ALTER TABLE `map_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_new_category_id_index` (`new_category_id`),
  ADD KEY `news_status_created_index` (`status`,`created_at`),
  ADD KEY `news_category_status_index` (`new_category_id`,`status`);

--
-- Indexes for table `new_categories`
--
ALTER TABLE `new_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `new_categories_slug_unique` (`slug`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_feed_index` (`community_id`,`is_hidden`,`created_at`),
  ADD KEY `posts_user_index` (`user_id`,`created_at`);

--
-- Indexes for table `post_bookmarks`
--
ALTER TABLE `post_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_bookmarks_post_id_user_id_unique` (`post_id`,`user_id`),
  ADD KEY `post_bookmarks_post_user_index` (`post_id`,`user_id`),
  ADD KEY `post_bookmarks_user_post_index` (`user_id`,`post_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_created_index` (`post_id`,`created_at`);

--
-- Indexes for table `post_comment_images`
--
ALTER TABLE `post_comment_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comment_images_post_comment_id_index` (`post_comment_id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_images_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_likes_post_id_user_id_unique` (`post_id`,`user_id`),
  ADD KEY `post_likes_post_user_index` (`post_id`,`user_id`),
  ADD KEY `post_likes_user_post_index` (`user_id`,`post_id`);

--
-- Indexes for table `post_not_interesteds`
--
ALTER TABLE `post_not_interesteds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_not_interesteds_post_id_user_id_unique` (`post_id`,`user_id`),
  ADD KEY `post_not_interesteds_user_post_index` (`user_id`,`post_id`);

--
-- Indexes for table `post_reports`
--
ALTER TABLE `post_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_reports_post_id_foreign` (`post_id`),
  ADD KEY `post_reports_reporter_user_id_foreign` (`reporter_user_id`),
  ADD KEY `post_reports_reported_user_id_foreign` (`reported_user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_seller_id_category_id_index` (`seller_id`,`category_id`),
  ADD KEY `products_status_created_index` (`status`,`created_at`),
  ADD KEY `products_category_status_index` (`category_id`,`status`),
  ADD KEY `products_seller_created_index` (`seller_id`,`created_at`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_index` (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_category_id_foreign` (`category_id`);

--
-- Indexes for table `report_categories`
--
ALTER TABLE `report_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `seller_profiles`
--
ALTER TABLE `seller_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_profiles_users_id_index` (`users_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_status_verification_index` (`status`,`verification_status`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reports_reported_id_foreign` (`reported_id`),
  ADD KEY `user_reports_reporter_id_reported_id_index` (`reporter_id`,`reported_id`);

--
-- Indexes for table `variable_categories`
--
ALTER TABLE `variable_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variable_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `village_officials`
--
ALTER TABLE `village_officials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `annual_category_data`
--
ALTER TABLE `annual_category_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `app_themes`
--
ALTER TABLE `app_themes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `community_channels`
--
ALTER TABLE `community_channels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `community_members`
--
ALTER TABLE `community_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_likes`
--
ALTER TABLE `forum_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_members`
--
ALTER TABLE `forum_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_reports`
--
ALTER TABLE `log_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `map_points`
--
ALTER TABLE `map_points`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `new_categories`
--
ALTER TABLE `new_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_bookmarks`
--
ALTER TABLE `post_bookmarks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comment_images`
--
ALTER TABLE `post_comment_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_not_interesteds`
--
ALTER TABLE `post_not_interesteds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_reports`
--
ALTER TABLE `post_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report_categories`
--
ALTER TABLE `report_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller_profiles`
--
ALTER TABLE `seller_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variable_categories`
--
ALTER TABLE `variable_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `village_officials`
--
ALTER TABLE `village_officials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annual_category_data`
--
ALTER TABLE `annual_category_data`
  ADD CONSTRAINT `annual_category_data_variable_category_id_foreign` FOREIGN KEY (`variable_category_id`) REFERENCES `variable_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_forum_post_id_foreign` FOREIGN KEY (`forum_post_id`) REFERENCES `forum_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `communities`
--
ALTER TABLE `communities`
  ADD CONSTRAINT `communities_community_channel_id_foreign` FOREIGN KEY (`community_channel_id`) REFERENCES `community_channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `community_members`
--
ALTER TABLE `community_members`
  ADD CONSTRAINT `community_members_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `community_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD CONSTRAINT `forum_comments_forum_post_id_foreign` FOREIGN KEY (`forum_post_id`) REFERENCES `forum_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_comments_parent_comment_id_foreign` FOREIGN KEY (`parent_comment_id`) REFERENCES `forum_comments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `forum_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_likes`
--
ALTER TABLE `forum_likes`
  ADD CONSTRAINT `forum_likes_forum_post_id_foreign` FOREIGN KEY (`forum_post_id`) REFERENCES `forum_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_members`
--
ALTER TABLE `forum_members`
  ADD CONSTRAINT `forum_members_id_forum_foreign` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_members_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `log_reports`
--
ALTER TABLE `log_reports`
  ADD CONSTRAINT `log_reports_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_new_category_id_foreign` FOREIGN KEY (`new_category_id`) REFERENCES `new_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_bookmarks`
--
ALTER TABLE `post_bookmarks`
  ADD CONSTRAINT `post_bookmarks_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comment_images`
--
ALTER TABLE `post_comment_images`
  ADD CONSTRAINT `post_comment_images_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_images`
--
ALTER TABLE `post_images`
  ADD CONSTRAINT `post_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_not_interesteds`
--
ALTER TABLE `post_not_interesteds`
  ADD CONSTRAINT `post_not_interesteds_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_not_interesteds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_reports`
--
ALTER TABLE `post_reports`
  ADD CONSTRAINT `post_reports_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_reports_reported_user_id_foreign` FOREIGN KEY (`reported_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_reports_reporter_user_id_foreign` FOREIGN KEY (`reporter_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `report_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `seller_profiles`
--
ALTER TABLE `seller_profiles`
  ADD CONSTRAINT `seller_profiles_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD CONSTRAINT `user_reports_reported_id_foreign` FOREIGN KEY (`reported_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_reports_reporter_id_foreign` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variable_categories`
--
ALTER TABLE `variable_categories`
  ADD CONSTRAINT `variable_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
