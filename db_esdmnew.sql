-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2021 pada 11.55
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_esdm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '73d4b9d272e921ec5abc0a545820a55b', '2021-12-19 18:00:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(3, 'admin', ''),
(4, 'user', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(3, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(43, '::1', 'admin@admin.com', 12, '2021-12-21 01:44:20', 1),
(44, '::1', 'dewa', NULL, '2021-12-21 01:46:32', 0),
(45, '::1', 'dewa', NULL, '2021-12-21 01:49:21', 0),
(46, '::1', '1@pnm.co.id', 13, '2021-12-21 01:50:34', 1),
(47, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 03:53:47', 1),
(48, '::1', '1@pnm.co.id', 13, '2021-12-21 04:08:56', 1),
(49, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 04:10:08', 1),
(50, '::1', '1@pnm.co.id', 13, '2021-12-21 04:17:04', 1),
(51, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 05:37:39', 1),
(52, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 09:04:06', 1),
(53, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 09:06:39', 1),
(54, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 20:22:35', 1),
(55, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 21:21:30', 1),
(56, '::1', '1@pnm.co.id', 13, '2021-12-21 21:31:47', 1),
(57, '::1', 'sumardipt@gmail.com', 7, '2021-12-21 21:33:10', 1),
(58, '::1', '1@pnm.co.id', 13, '2021-12-21 22:29:23', 1),
(59, '::1', '1@pnm.co.id', 13, '2021-12-21 22:31:28', 1),
(60, '::1', 'MKR7649.02.17', NULL, '2021-12-21 22:59:01', 0),
(61, '::1', 'MKR41317.01.18', 19, '2021-12-21 23:01:19', 0),
(62, '::1', 'MKR41317.01.18', NULL, '2021-12-21 23:05:40', 0),
(63, '::1', 'MKR41317.01.18', NULL, '2021-12-21 23:05:53', 0),
(64, '::1', 'sumardipt@gmail.com', 7, '2021-12-22 00:50:47', 1),
(65, '::1', 'sumardipt@gmail.com', 7, '2021-12-22 04:01:11', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-user', ''),
(2, 'manage-profile', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1639933341, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `nama` varchar(100) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `id_session` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`nama`, `nip`, `posisi`, `unit_kerja`, `tgl_lahir`, `id_session`) VALUES
('Dewi Aprillia', 'MKR41317.01.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '99afe222a8f30d77bfd226f824ca2fa8\r\n', NULL),
('Muhammad Herdi Fauzi', 'MKR26033.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '01031996', NULL),
('Resti Allia Putri', 'MKR28523.09.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '03061998', NULL),
('Widya Riza Rizqiah', 'MKR102306.05.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '28011995', NULL),
('Zahra Nabila Pratomo', 'MKR81950.11.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '26072000', NULL),
('Muhamad Achrifan', 'MKR21155.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cililitan', '25041996', NULL),
('Novera Damara', 'MKR52792.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cililitan', '16111996', NULL),
('Nurul Aini', 'MKR53358.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cililitan', '24081998', NULL),
('Della Hamidah', 'MKR118347.07.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '24012001', NULL),
('Irfan Maulana', 'MKR19729.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '07081998', NULL),
('Marina', 'MKR72983.09.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '23091996', NULL),
('Rahayu Chandrawati', 'MKR7649.02.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '26061998', NULL),
('Sindi Pratiwi', 'MKR109700.06.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '13092001', NULL),
('Syafira Salsabila', 'MKR47649.03.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '03101999', NULL),
('Kartika Dwi Lestari', 'MKR42976.01.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '23101999', NULL),
('Kholifah Dwi Nurani', 'MKR15260.06.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '15101999', NULL),
('Putri Khairunnisa', 'MKR75776.10.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '27071998', NULL),
('Zainudin', 'MKR16618.05.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '01071996', NULL),
('Ahmad Solikhin', 'MKR24636.08.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '04051995', NULL),
('Ayu Ariani', 'MKR33940.11.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '18091999', NULL),
('Dewi Safitri', 'MKR71036.08.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '26012000', NULL),
('Evatul Janna', 'MKR70909.08.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '10051998', NULL),
('Fitri Melinia', 'MKR46175.03.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '13012000', NULL),
('Winadya Saras Mitha', 'MKR0004.10.15', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '26061996', NULL),
('Ita Krisniawati', 'MKR110047.06.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Gede', '02061998', NULL),
('Yanti Nopitasari', 'MKR35174.11.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Gede', '04111999', NULL),
('Annisa Rahmahyanti', 'MKR51466.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Labu', '21111998', NULL),
('Vivi Oktaviani', 'MKR67046.07.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Labu', '05101999', NULL),
('Imam Suyuti', 'MKR0047.12.15', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '16091995', NULL),
('Lisda Nur Arianti', 'MKR70877.08.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '07121998', NULL),
('Selvy Oktaviani', 'MKR15155.06.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '23101998', NULL),
('Suci Damayanti', 'MKR99406.05.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '04051997', NULL),
('Vina Viola Natha Linda', 'MKR85813.01.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '25121998', NULL),
('Chandra Apriliana', 'MKR52372.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '12041999', NULL),
('Dhea Monica Suhardi', 'MKR50147.03.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '13051998', NULL),
('Indah Febriyanti', 'MKR66037.07.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '06022000', NULL),
('Jodie Citah Astary', 'MKR50260.02.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '10091997', NULL),
('Novi Yulianingsih', 'MKR17489.06.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '10051996', NULL),
('Rini Anjani', 'MKR109435.06.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '05052001', NULL),
('Yaribson Nomleni', 'MKR6608.01.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '07101996', NULL),
('Atikah Lia Anggraeni', 'MKR36863.12.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '02021999', NULL),
('Azizah Eka Putri', 'MKR135870.10.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '24092001', NULL),
('Eva Luki Lintang', 'MKR19760.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '01071995', NULL),
('Gustinah Aryanti', 'MKR28463.08.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '15081998', NULL),
('Vicky Mustikawidiana', 'MKR58364.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '07081996', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `password`, `id_session`) VALUES
('MKR413170118', '99afe222a8f30d77bfd226f824ca2fa8', 'kj2m9cb5f7vk4hmvlc0fqpffgv'),
('admin', '21232f297a57a5a743894a0e4a801fc3', '8uu8odb9sg1ap9gtlm36rg9giq'),
('MKR28523.09.17', '03061998', ''),
('MKR102306.05.19', '28011995', ''),
('MKR81950.11.18', '26072000', ''),
('MKR21155.07.17', '25041996', ''),
('MKR52792.04.18', '16111996', ''),
('MKR53358.04.18', '24081998', ''),
('MKR118347.07.19', '24012001', ''),
('MKR19729.07.17', '07081998', ''),
('MKR72983.09.18', '23091996', ''),
('MKR7649.02.17', '26061998', ''),
('MKR109700.06.19', '13092001', ''),
('MKR47649.03.18', '03101999', ''),
('MKR42976.01.18', '23101999', ''),
('MKR15260.06.17', '15101999', ''),
('MKR75776.10.18', '27071998', ''),
('MKR16618.05.17', '01071996', ''),
('MKR24636.08.17', '04051995', ''),
('MKR33940.11.17', '18091999', ''),
('MKR71036.08.18', '26012000', ''),
('MKR70909.08.18', '10051998', ''),
('MKR46175.03.18', '13012000', ''),
('MKR0004.10.15', '26061996', ''),
('MKR110047.06.19', '02061998', ''),
('MKR35174.11.17', '04111999', ''),
('MKR51466.04.18', '21111998', ''),
('MKR67046.07.18', '05101999', ''),
('MKR0047.12.15', '16091995', ''),
('MKR70877.08.18', '07121998', ''),
('MKR15155.06.17', '23101998', ''),
('MKR99406.05.19', '04051997', ''),
('MKR85813.01.19', '25121998', ''),
('MKR52372.04.18', '12041999', ''),
('MKR50147.03.18', '13051998', ''),
('MKR66037.07.18', '06022000', ''),
('MKR50260.02.18', '10091997', ''),
('MKR17489.06.17', '10051996', ''),
('MKR109435.06.19', '05052001', ''),
('MKR6608.01.17', '07101996', ''),
('MKR36863.12.17', '02021999', ''),
('MKR135870.10.19', '24092001', ''),
('MKR19760.07.17', '01071995', ''),
('MKR28463.08.17', '15081998', ''),
('MKR58364.04.18', '07081996', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `nama`, `nip`, `jabatan`, `unit_kerja`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'sumardipt@gmail.com', 'sumardiputra', 'Sumardi Putra Tama', '15768.03.18', 'Staf IT Wilayah 4 - Jakarta', 'Divisi Teknologi Informasi - Wilayah', '$2y$10$1BDCSRPFwB9isNnLxQZmpe5qYzBKgGNFkpHgpORgWXABVA701zQw6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-12-19 17:59:16', '2021-12-19 18:00:33', NULL),
(12, 'admin@admin.com', 'admin', '', '', '', '', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-12-21 01:43:55', '2021-12-21 01:43:55', NULL),
(13, '1@pnm.co.id', 'dewa', 'USER DEWA', '', 'JABATAN USER DEWA', 'UNIT KERJA DEWA', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-12-21 08:45:18', '2021-12-21 08:45:18', NULL),
(113, '', 'MKR41317.01.18', 'Dewi Aprillia', 'MKR41317.01.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(114, '', 'MKR26033.07.17', 'Muhammad Herdi Fauzi', 'MKR26033.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(115, '', 'MKR28523.09.17', 'Resti Allia Putri', 'MKR28523.09.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(116, '', 'MKR102306.05.19', 'Widya Riza Rizqiah', 'MKR102306.05.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(117, '', 'MKR81950.11.18', 'Zahra Nabila Pratomo', 'MKR81950.11.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cakung (Syariah)', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(118, '', 'MKR21155.07.17', 'Muhamad Achrifan', 'MKR21155.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cililitan', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(119, '', 'MKR52792.04.18', 'Novera Damara', 'MKR52792.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cililitan', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(120, '', 'MKR53358.04.18', 'Nurul Aini', 'MKR53358.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Cililitan', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(121, '', 'MKR118347.07.19', 'Della Hamidah', 'MKR118347.07.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(122, '', 'MKR19729.07.17', 'Irfan Maulana', 'MKR19729.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(123, '', 'MKR72983.09.18', 'Marina', 'MKR72983.09.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(124, '', 'MKR7649.02.17', 'Rahayu Chandrawati', 'MKR7649.02.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(125, '', 'MKR109700.06.19', 'Sindi Pratiwi', 'MKR109700.06.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(126, '', 'MKR47649.03.18', 'Syafira Salsabila', 'MKR47649.03.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Ciracas', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(127, '', 'MKR42976.01.18', 'Kartika Dwi Lestari', 'MKR42976.01.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(128, '', 'MKR15260.06.17', 'Kholifah Dwi Nurani', 'MKR15260.06.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(129, '', 'MKR75776.10.18', 'Putri Khairunnisa', 'MKR75776.10.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(130, '', 'MKR16618.05.17', 'Zainudin', 'MKR16618.05.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pasar Minggu', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(131, '', 'MKR24636.08.17', 'Ahmad Solikhin', 'MKR24636.08.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(132, '', 'MKR33940.11.17', 'Ayu Ariani', 'MKR33940.11.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(133, '', 'MKR71036.08.18', 'Dewi Safitri', 'MKR71036.08.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(134, '', 'MKR70909.08.18', 'Evatul Janna', 'MKR70909.08.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(135, '', 'MKR46175.03.18', 'Fitri Melinia', 'MKR46175.03.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(136, '', 'MKR0004.10.15', 'Winadya Saras Mitha', 'MKR0004.10.15', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pluit', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(137, '', 'MKR110047.06.19', 'Ita Krisniawati', 'MKR110047.06.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Gede', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(138, '', 'MKR35174.11.17', 'Yanti Nopitasari', 'MKR35174.11.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Gede', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(139, '', 'MKR51466.04.18', 'Annisa Rahmahyanti', 'MKR51466.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Labu', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(140, '', 'MKR67046.07.18', 'Vivi Oktaviani', 'MKR67046.07.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Pondok Labu', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(141, '', 'MKR0047.12.15', 'Imam Suyuti', 'MKR0047.12.15', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(142, '', 'MKR70877.08.18', 'Lisda Nur Arianti', 'MKR70877.08.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(143, '', 'MKR15155.06.17', 'Selvy Oktaviani', 'MKR15155.06.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(144, '', 'MKR99406.05.19', 'Suci Damayanti', 'MKR99406.05.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(145, '', 'MKR85813.01.19', 'Vina Viola Natha Linda', 'MKR85813.01.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Sawah Besar', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(146, '', 'MKR52372.04.18', 'Chandra Apriliana', 'MKR52372.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(147, '', 'MKR50147.03.18', 'Dhea Monica Suhardi', 'MKR50147.03.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(148, '', 'MKR66037.07.18', 'Indah Febriyanti', 'MKR66037.07.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(149, '', 'MKR50260.02.18', 'Jodie Citah Astary', 'MKR50260.02.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(150, '', 'MKR17489.06.17', 'Novi Yulianingsih', 'MKR17489.06.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(151, '', 'MKR109435.06.19', 'Rini Anjani', 'MKR109435.06.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(152, '', 'MKR6608.01.17', 'Yaribson Nomleni', 'MKR6608.01.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Senen', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(153, '', 'MKR36863.12.17', 'Atikah Lia Anggraeni', 'MKR36863.12.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(154, '', 'MKR135870.10.19', 'Azizah Eka Putri', 'MKR135870.10.19', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(155, '', 'MKR19760.07.17', 'Eva Luki Lintang', 'MKR19760.07.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(156, '', 'MKR28463.08.17', 'Gustinah Aryanti', 'MKR28463.08.17', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(157, '', 'MKR58364.04.18', 'Vicky Mustikawidiana', 'MKR58364.04.18', 'Account Officer Mikro PANTAS', 'Cabang Jakarta - ULaMM Tanah Abang', '$2y$10$cTfYKq8Wdyv1q0tEXH.UYOXkg6luLBQRRkD1V0htlVyUUHdRrsn4W', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
