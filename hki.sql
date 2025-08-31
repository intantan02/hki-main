-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2025 at 06:21 PM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hki`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pribadi_dosen`
--

CREATE TABLE `data_pribadi_dosen` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dataid` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pribadi_dosen`
--

INSERT INTO `data_pribadi_dosen` (`id`, `nama`, `alamat`, `kode_pos`, `nomor_telepon`, `fakultas`, `email`, `dataid`, `user_id`) VALUES
(1, 'aw', 'banguntapan', '55128', '123112111', 'Fakultas Ekonomi dan Bisnis', 'Dosen@upnyk.ac.id', NULL, NULL),
(3, 'aa', 'Depok Sleman', '55281', '123', 'Fakultas Pertanian', 'aa@gmail.com', 26, NULL),
(4, 'bb', 'Depok Sleman', '55281', '234', 'Fakultas Pertanian', 'bb@gmail.com', 26, NULL),
(5, 'abc', 'abc', '55281', '234', 'Fakultas Ekonomi dan Bisnis', 'abc@gmail.com', 26, NULL),
(6, 'aba', 'depok', '555', '089', 'Fakultas Teknologi Mineral dan Energi', 'aba@gmail.com', 1744183930123, NULL),
(7, 'aba', 'depok', '555', '089', 'Fakultas Teknologi Mineral dan Energi', 'aba@gmail.com', 1744184629239, NULL),
(8, 'aba', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'kaka@gmail.com', 29, NULL),
(9, 'kaka', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'ababa@gmail.com', 1744187659410, NULL),
(10, 'kaka', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'ababa@gmail.com', 0, NULL),
(13, 'kaka', 'depok', '555', '089', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'aba@gmail.com', 1745208101396, NULL),
(14, 'aba', 'depok', '555', '089', 'Fakultas Teknologi Mineral dan Energi', 'aba@gmail.com', 68070, NULL),
(15, 'naynay', 'depok', '555', '089', 'Fakultas Ekonomi dan Bisnis', 'aba@gmail.com', 680, NULL),
(16, 'naynay', 'depok', '555', '089', 'Fakultas Teknik Industri', 'aba@gmail.com', 0, NULL),
(17, 'kaka', 'depok', '555', '088', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'aba@gmail.com', 0, NULL),
(18, 'naynay', 'depok', '555', '085', 'Fakultas Teknologi Mineral dan Energi', 'abata@gmail.com', 0, NULL),
(21, 'asd', 'asd', '123', '123123123123', 'Fakultas Ekonomi dan Bisnis', 'wqwqwqwq@gmail.com', 1756043287771, 1),
(22, 'asd', 'asdasd', '123', '123123123123', 'Fakultas Pertanian', 'wqwqwqwq@gmail.com', 1756152814, 1),
(23, 'asd', 'asdasd', '123', '123123123123', 'Fakultas Ekonomi dan Bisnis', 'wqwqwqwq@gmail.com', 1756655879, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_pribadi_mahasiswa`
--

CREATE TABLE `data_pribadi_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dataid` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pribadi_mahasiswa`
--

INSERT INTO `data_pribadi_mahasiswa` (`id`, `nama`, `alamat`, `kode_pos`, `nomor_telepon`, `fakultas`, `email`, `dataid`, `user_id`) VALUES
(1, 'aira', 'rara', '55128', '088987005432', 'Fakultas Ekonomi dan Bisnis', 'rarara@gmail.com', NULL, NULL),
(2, 'cc', 'Depok Sleman', '55281', '345', 'Fakultas Pertanian', 'cc@gmail.com', 26, NULL),
(3, 'ab', 'ab', '55281', '123', 'Fakultas Ekonomi dan Bisnis', 'abab@gmail.com', 26, NULL),
(4, 'kaka', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'kaka@gmail.com', 1744183930123, NULL),
(5, 'kaka', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'kaka@gmail.com', 1744184629239, NULL),
(6, 'kaka', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'kaka@gmail.com', 29, NULL),
(7, 'aba', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'kaka@gmail.com', 1744187659410, NULL),
(8, 'kaka', 'sleman', '2222', '123', 'Fakultas Teknologi Mineral dan Energi', 'ababa@gmail.com', 0, NULL),
(9, 'naynay', 'sleman', '2222', '123', 'Fakultas Ekonomi dan Bisnis', 'ababa@gmail.com', 0, NULL),
(13, 'aba', 'depok', '555', '089', 'Fakultas Teknologi Mineral dan Energi', 'aba@gmail.com', 1745208101396, NULL),
(14, 'DEVI INTAN NURISMA PUTRI', 'depok', '555', '089', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'aba@gmail.com', 68070, NULL),
(15, 'kaka', 'depok', '555', '089', 'Fakultas Ilmu Sosial dan Ilmu Politik', 'aba@gmail.com', 680, NULL),
(16, 'test1', 'asdasd', '123', '123123123123', 'Fakultas Ekonomi dan Bisnis', 'wqwqwqwq@gmail.com', 1754310139757, 1),
(17, 'sa', 'asd', '123', '123123123123', 'Fakultas Teknologi Mineral dan Energi', 'wqwqwqwq@gmail.com', 1754588859469, 1),
(18, 'asd', 'asdasd', '123', '123123123123', 'Fakultas Pertanian', 'wqwqwqwq@gmail.com', 1754589152422, 1),
(19, 'asd', 'asd', '123', '123123123123', 'Fakultas Ekonomi dan Bisnis', 'wqwqwqwq@gmail.com', 1755516829493, 1),
(20, 'sa', 'asdasd', '123', '123123123123', 'Fakultas Teknologi Mineral dan Energi', 'wqwqwqwq@gmail.com', 1756052097589, 1),
(21, 'asd', 'asdasd', '123', '123123123123', 'Fakultas Teknik Industri', 'wqwqwqwq@gmail.com', 1755690727453, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_permohonan`
--

CREATE TABLE `detail_permohonan` (
  `id` int(11) NOT NULL,
  `jenis_permohonan` varchar(255) NOT NULL,
  `jenis_ciptaan` varchar(255) NOT NULL,
  `sub_jenis_ciptaan` varchar(255) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `uraian_singkat` text NOT NULL,
  `tanggal_pertama_kali_diumumkan` date NOT NULL,
  `negara_pertama_kali_diumumkan` varchar(255) DEFAULT NULL,
  `kota_pertama_kali_diumumkan` varchar(255) DEFAULT NULL,
  `jenis_pendanaan` varchar(255) NOT NULL,
  `jenis_hibah` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `dataid` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `sertifikat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_permohonan`
--

INSERT INTO `detail_permohonan` (`id`, `jenis_permohonan`, `jenis_ciptaan`, `sub_jenis_ciptaan`, `judul`, `uraian_singkat`, `tanggal_pertama_kali_diumumkan`, `negara_pertama_kali_diumumkan`, `kota_pertama_kali_diumumkan`, `jenis_pendanaan`, `jenis_hibah`, `created_at`, `dataid`, `user_id`, `status`, `sertifikat`) VALUES
(16, 'Umum', 'Karya Tulis', 'Puisi', 'pertama', 'Dalam hal kepemilikan Hak Cipta yang dimohonkan secara elektronik sedang dalam perkara dan/atau sedang dalam gugatan di Pengadilan maka status kepemilikan surat pencatatan elektronik tersebut ditangguhkan menunggu putusan Pengadilan yang berkekuatan hukum tetap.', '2025-03-08', 'ind', 'yogyakarta', 'hibah penelitian dasar', 'internal', '2025-03-03 04:19:36', NULL, NULL, '', ''),
(17, 'UMK', 'Karya Seni', 'Arsitektur', 'dwdwdwd', 'wdwdwd', '2025-03-14', 'dwdwd', 'wdwd', 'hibah penelitian dasar', 'internal', '2025-03-05 17:06:57', NULL, NULL, '', ''),
(20, 'UMK', 'Karya Seni', 'Arsitektur', 'coba', 'martabak enak', '2025-03-15', 'ind', 'diy', 'hibah penelitian dosen pemula', 'internal', '2025-03-05 19:02:34', NULL, NULL, '', ''),
(21, 'UMK', 'Karya Seni', 'Alat Peraga', 'holahop', 'senam ygy', '2025-04-08', 'Indonesia', 'Sleman', '', 'internal', '2025-04-08 12:29:51', NULL, NULL, '', ''),
(27, 'UMK', 'Karya Tulis', 'Dongeng', 'sang kancil', 'kancil kecil', '2025-04-09', 'Indonesia', 'Sleman', '', 'internal', '2025-04-09 03:06:26', 1744184629239, NULL, '', ''),
(42, 'UMK', 'Karya Tulis', 'E-book', 'hki', 'coba', '2025-04-21', 'Indonesia', 'Sleman', '', 'internal', '2025-04-20 23:50:05', 1745208101396, NULL, '', ''),
(43, 'UMK', 'Karya Tulis', 'Cerita bergambar', 'apapa', 'coba', '2025-04-22', 'Indonesia', 'Sleman', '', 'internal', '2025-04-21 22:41:09', 68070, NULL, '', ''),
(44, '', '', '', '', '', '0000-00-00', '', '', '', '', '2025-04-21 22:43:36', 68070, NULL, '', ''),
(45, 'UMK', 'Karya Lainnya', 'Program Komputer', 'mari coba', 'if till i die', '2025-04-22', 'Indonesia', 'Sleman', '', 'internal', '2025-04-21 22:49:58', 68070, NULL, '', ''),
(46, 'UMK', 'Karya Tulis', 'Dongeng', 'coba2', 'kancil kecil', '2025-04-22', 'Indonesia', 'Sleman', '', 'internal', '2025-04-21 22:52:51', 68070, NULL, '', ''),
(47, 'UMK', 'Karya Seni', 'Motif sasirangan', 'axwax', 'kancil kecil', '2025-04-25', 'Indonesia', 'Sleman', '', 'eksternal', '2025-04-25 01:54:28', 680, NULL, '', ''),
(48, '', '', '', '', '', '0000-00-00', '', '', '', '', '2025-04-28 00:05:32', 680, NULL, '', ''),
(49, '', '', '', '', '', '0000-00-00', '', '', '', '', '2025-04-28 00:14:04', 680, NULL, '', ''),
(50, '', '', '', '', '', '0000-00-00', '', '', '', '', '2025-04-28 00:15:59', 680, NULL, '', ''),
(51, '', '', '', '', '', '0000-00-00', '', '', '', '', '2025-04-28 00:22:08', 680, NULL, '', ''),
(52, 'UMK', 'Karya Tulis', 'Dongeng', 'anthem informatika', 'if till i die', '2025-04-28', 'INDONESIA', 'Sleman', '', 'internal', '2025-04-28 00:29:59', 680, NULL, '', ''),
(54, 'UMK', 'Karya Tulis', 'Diktat', 'mumet heh', 'if till i die', '2025-04-28', 'INDONESIA', 'Sleman', '', 'eksternal', '2025-04-28 01:02:26', 680, NULL, '', ''),
(55, 'UMK', 'Karya Tulis', 'E-book', 'aaaaa', 'aaaaaaaaaaaaaaaaaaa', '2025-04-28', 'INDONESIA', 'Sleman', '', 'internal', '2025-04-28 01:09:34', 680, NULL, '', ''),
(56, 'UMK', 'Karya Seni', 'Leaflet', 'axwax', 'aaaaaaaaaaaaaaaaaaa', '2025-04-28', 'INDONESIA', 'Sleman', '', 'eksternal', '2025-04-28 01:14:12', 680, NULL, '', ''),
(57, 'Umum', 'Karya Tulis', 'Dongeng', 'sang kancil', 'kancil kecil', '2025-04-28', 'INDONESIA', 'Sleman', '', 'internal', '2025-04-28 01:16:17', 680, NULL, '', ''),
(58, 'UMK', 'Komposisi Musik', 'Musik Funk', 'axwax', 'aaaaaaaaaaaaaaaaaaa', '2025-04-28', 'INDONESIA', 'Sleman', '', 'eksternal', '2025-04-28 01:18:10', 680, NULL, '', ''),
(59, 'UMK', 'Karya Tulis', 'Diktat', 'axwax', 'aaaaaaaaaaaaaaaaaaa', '2025-04-28', 'INDONESIA', 'Sleman', '', 'eksternal', '2025-04-28 01:24:48', 680, NULL, '', ''),
(60, 'UMK', 'Karya Tulis', 'Diktat', 'axwax', 'dswA', '2025-04-28', 'INDONESIA', 'Sleman', '', 'internal', '2025-04-28 01:26:02', 680, NULL, '', ''),
(64, 'UMK', '', NULL, 'biru', '', '0000-00-00', NULL, NULL, '', '', '2025-04-28 16:02:18', NULL, NULL, '', ''),
(65, 'UMK', '', NULL, 'biru', '', '0000-00-00', NULL, NULL, '', '', '2025-04-28 16:14:00', NULL, NULL, '', ''),
(66, 'UMK', 'Karya Tulis', NULL, 'asdasd', 'adsdsadsad', '2025-08-05', NULL, 'Jogja', 'internal', 'hibah penelitian dasar', '2025-08-06 07:14:47', 1754464487400, NULL, '', ''),
(67, 'UMK', 'Karya Seni', NULL, 'asdasd', 'adsdsadsad', '2025-08-08', NULL, 'Jogja', 'eksternal', 'grant riset sawit bpdpks', '2025-08-07 17:47:39', 1754588859469, NULL, '', ''),
(68, 'UMK', 'Karya Tulis', NULL, 'asdasd', 'adsdsadsad', '2025-08-08', NULL, 'Jogja', 'internal', 'hibah penelitian kelembagaan', '2025-08-07 17:52:32', 1754589152422, NULL, 'Revisi', ''),
(69, 'UMK', 'Karya Tulis', NULL, 'asdasd', 'adsdsadsad', '2025-08-08', NULL, 'Jogja', 'internal', '', '2025-08-07 19:08:38', 1754589152422, NULL, '', ''),
(70, 'UMK', 'Karya Tulis', NULL, 'asdasd', 'adsdsadsad', '2025-08-18', NULL, 'Jogja', 'internal', 'hibah penelitian terapan', '2025-08-18 11:33:49', 1755516829493, NULL, '', ''),
(71, 'UMK', 'Karya Tulis', NULL, 'asdasd', 'adsdsadsad', '2025-08-18', NULL, 'Jogja', 'internal', '', '2025-08-18 13:04:24', 1755516829493, NULL, '', ''),
(73, 'UMK', 'Karya Seni', NULL, 'asdasd1', 'adsdsadsad', '2025-08-20', NULL, 'Jogja', 'internal', 'hibah penelitian dasar', '2025-08-20 11:59:27', 1755690727453, NULL, '', ''),
(74, 'UMK', 'Karya Seni', NULL, 'asdasd', 'adsdsadsad', '2025-08-20', NULL, 'Jogja', 'internal', '', '2025-08-20 12:02:15', 1755690727453, NULL, '', ''),
(108, 'UMK', 'Karya Audio Visual', NULL, 'asdasd', 'asd', '2025-08-26', NULL, 'Jogja', 'internal', '', '2025-08-25 20:12:29', 1756152814, NULL, 'Revisi', ''),
(109, 'UMK', 'Karya Tulis', NULL, 'asdass2', 'asdsdadsasd', '2025-08-31', NULL, 'Jogja', 'eksternal', 'grant riset sawit bpdpks', '2025-08-31 16:09:12', 1756655879, NULL, 'Revisi', '');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `SP` varchar(255) DEFAULT NULL,
  `SPH` varchar(255) DEFAULT NULL,
  `Contoh_karya` varchar(255) DEFAULT NULL,
  `Scan_ktp` varchar(255) DEFAULT NULL,
  `Contoh_ciptaan_link` varchar(255) NOT NULL,
  `Akta_pendirian` varchar(255) DEFAULT NULL,
  `Npwp` varchar(255) DEFAULT NULL,
  `Bukti_pembayaran` varchar(255) DEFAULT NULL,
  `detailpermohonan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `SP`, `SPH`, `Contoh_karya`, `Scan_ktp`, `Contoh_ciptaan_link`, `Akta_pendirian`, `Npwp`, `Bukti_pembayaran`, `detailpermohonan_id`) VALUES
(1, '????\\0JFIF\\0\\0H\\0H\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\034\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0', '????\\0JFIF\\0\\0H\\0H\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\0N4\\\"\\0??\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0\\0', '????\\0JFIF\\0\\0H\\0H\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\0w3\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0\\Z\\0', '????\\0JFIF\\0\\0H\\0H\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\0?\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0\\Z\\0', 'coba', '????\\0JFIF\\0\\0H\\0H\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\034\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0', '????\\0JFIF\\0\\0H\\0H\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\0?\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0\\Z\\0', '????\\0JFIF\\0\\0\\0\\0\\0\\0??\\0C\\0\\n\\n\\n		\\n\\Z%\\Z# , #&\\\')*)-0-(0%()(??\\0C\\n\\n\\n\\n(\\Z\\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\\04\\\"\\0??\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0??\\0', NULL),
(2, '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??wx???????@B?M?t?!`A???WE??\\\"?Xh\\nWQ?\\nX@?????ȕ*P?.5Ho!u?;????;?$??Fx??3?????3e\\\'a?=???]&\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"r޳YDDDDDDDDDDDDDD???\\0XD', '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??{?L????י??Z?e?]?XJ?n?Q??ۏP???V?$ɽ????\\r?Tߒ\\\"?\\Zٯ???X?n?Z֮?͜?gf̜?ٝٝ?z???`?93s??????|ޟ??<?\\\"?B!?B!?B!???3?W!?B!?B!?B!?(?$\\0,?B!?B!?', '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??wx???????@B?M?t?!`A???WE??\\\"?Xh\\nWQ?\\nX@?????ȕ*P?.5Ho!u?;????;?$??Fx??3?????3e\\\'a?=???]&\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"r޳YDDDDDDDDDDDDDD???\\0XD', '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??{?L????י??Z?e?]?XJ?n?Q??ۏP???V?$ɽ????\\r?Tߒ\\\"?\\Zٯ???X?n?Z֮?͜?gf̜?ٝٝ?z???`?93s??????|ޟ??<?\\\"?B!?B!?B!???3?W!?B!?B!?B!?(?$\\0,?B!?B!?', 'https://code.visualstudio.com/docs/?dv=win64user ', '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??w|u?????&?Jz?)???+6??S??z??x*X???)?{??)\\\"?\\\"?ȩA靄?????m??cK??M?B?~>?\\0??ݙ?|?;??|???Z??[\\rDDDDDDDDDDDDDD??g5?????\\\"\\\"\\\"\\\"\\\"\\\"', '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??w|TU???WzB\\n!???P\\\"AD?\\\"?? ???+?OPDQtwm?e???+??\\\"6XE)?IU!?PC??I??1%37?d????q?s?=sn?;?????????#\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"\\\"???1ADDDDDDDDDDDDDDj', '?PNG\\r\\n\\Z\\n\\0\\0\\0\\rIHDR\\0\\0?\\0\\08\\0\\0\\0???C\\0\\0\\0sRGB\\0???\\0\\0\\0gAMA\\0\\0???a\\0\\0??IDATx^??y?L?????93wq7????K?Z?,?E%?B%B**$E??hCH?_?B%?Z?J???Ŗ-;W???u??????1s?̙?{gz????~>?9s??̙??|>E?DC!?B!?B!?B!D??\\Z?B!?B!?B!?BL\\0B!?B!?B', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token`, `expires_at`, `used`, `created_at`) VALUES
(1, 1, '61bc0d649430da84fb4cd1ad258fb4e676ac753ed8796ef7c4f23aaaeb0889a8', '2025-08-18 16:58:18', 0, '2025-08-18 13:58:18'),
(2, 1, '54e464eea9650030ac238c3e980d7248f0cff32c0e43a30e4db3889e69d026d9', '2025-08-18 16:58:26', 0, '2025-08-18 13:58:26'),
(3, 1, '9218e13531e50add019f3613c33f32937baa27562bb173ad46896e21c5efff67', '2025-08-18 17:01:08', 0, '2025-08-18 14:01:08'),
(4, 1, 'f1312f289c58a8a78d960b6a1ceb4b7b3f76a90c11d41f111faaf24559009ff4', '2025-08-18 17:04:44', 0, '2025-08-18 14:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `pencipta`
--

CREATE TABLE `pencipta` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(100) NOT NULL DEFAULT 'Indonesia',
  `alamat` text NOT NULL,
  `negara` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `pemegang_hakcipta` enum('IYA','TIDAK') NOT NULL DEFAULT 'IYA',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pencipta`
--

INSERT INTO `pencipta` (`id`, `nama`, `email`, `no_telp`, `kewarganegaraan`, `alamat`, `negara`, `provinsi`, `kabupaten_kota`, `kecamatan`, `kode_pos`, `pemegang_hakcipta`, `created_at`, `user_id`) VALUES
(1, 'UPN VETERAN YGYAKARTA', 'lppm@upnyk.ac.id', '0274-486889', 'Indonesia', 'Jl. SWK 104 (Ringroad Utara) Condong Catur Yogyakarta', 'Indonesia', 'DIY', 'Sleman', 'Condongcatur', '55283', 'IYA', '2025-03-04 08:57:25', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pengusul`
--

CREATE TABLE `pengusul` (
  `id_pengusul` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_telpon` varchar(20) DEFAULT NULL,
  `program_studi` varchar(100) DEFAULT NULL,
  `fakultas` varchar(100) DEFAULT NULL,
  `alamat_email` varchar(100) DEFAULT NULL,
  `kategori_pekerjaan` enum('Dosen','Mahasiswa','Peneliti') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_ad`
--

CREATE TABLE `review_ad` (
  `id` int(11) NOT NULL,
  `detailpermohonan_id` int(11) NOT NULL,
  `status` enum('Diajukan','Revisi','Terdaftar') DEFAULT 'Diajukan',
  `sertifikat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_ad`
--

INSERT INTO `review_ad` (`id`, `detailpermohonan_id`, `status`, `sertifikat`) VALUES
(2, 16, 'Diajukan', 'uploads/sertifikat_1744713187.png'),
(3, 17, 'Diajukan', NULL),
(21, 20, 'Diajukan', NULL),
(22, 44, 'Diajukan', NULL),
(23, 43, 'Terdaftar', NULL),
(24, 42, 'Revisi', NULL),
(25, 47, 'Terdaftar', 'uploads/sertifikat_47.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `file_sp` varchar(255) NOT NULL,
  `file_sph` varchar(255) NOT NULL,
  `file_contoh_karya` varchar(255) NOT NULL,
  `file_ktp` varchar(255) NOT NULL,
  `contoh_ciptaan_link` text DEFAULT NULL,
  `file_npwp` varchar(255) DEFAULT NULL,
  `file_akta_pendirian` varchar(255) DEFAULT NULL,
  `file_bukti_pembayaran` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `dataid` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `session_id`, `file_sp`, `file_sph`, `file_contoh_karya`, `file_ktp`, `contoh_ciptaan_link`, `file_npwp`, `file_akta_pendirian`, `file_bukti_pembayaran`, `uploaded_at`, `dataid`, `user_id`) VALUES
(1, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:07:24', NULL, NULL),
(2, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:10:40', NULL, NULL),
(3, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:11:07', NULL, NULL),
(4, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:11:24', NULL, NULL),
(5, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:12:30', NULL, NULL),
(6, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:15:25', NULL, NULL),
(7, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 12:23:27', NULL, NULL),
(8, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 13:08:41', NULL, NULL),
(9, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 13:28:29', NULL, NULL),
(10, 'sess_67f509fcd9dac0.00127244', 'sess_67f509fcd9dac0.00127244_file_sp.jpg', 'sess_67f509fcd9dac0.00127244_file_sph.jpg', 'sess_67f509fcd9dac0.00127244_file_contoh_karya.jpg', 'sess_67f509fcd9dac0.00127244_file_ktp.jpg', '', NULL, NULL, 'sess_67f509fcd9dac0.00127244_file_bukti_pembayaran.jpg', '2025-04-08 13:34:00', NULL, NULL),
(11, 'sess_67f62476958909.24354663', 'sess_67f62476958909.24354663_file_sp.png', 'sess_67f62476958909.24354663_file_sph.png', 'sess_67f62476958909.24354663_file_contoh_karya.png', 'sess_67f62476958909.24354663_file_ktp.png', '', NULL, NULL, 'sess_67f62476958909.24354663_file_bukti_pembayaran.png', '2025-04-09 07:41:51', NULL, NULL),
(12, 'sess_67f62476958909.24354663', 'sess_67f62476958909.24354663_file_sp.png', 'sess_67f62476958909.24354663_file_sph.png', 'sess_67f62476958909.24354663_file_contoh_karya.png', 'sess_67f62476958909.24354663_file_ktp.png', '', NULL, NULL, 'sess_67f62476958909.24354663_file_bukti_pembayaran.png', '2025-04-09 08:10:32', NULL, NULL),
(13, 'sess_67f62476958909.24354663', 'sess_67f62476958909.24354663_file_sp.png', 'sess_67f62476958909.24354663_file_sph.png', 'sess_67f62476958909.24354663_file_contoh_karya.png', 'sess_67f62476958909.24354663_file_ktp.png', '', NULL, NULL, 'sess_67f62476958909.24354663_file_bukti_pembayaran.png', '2025-04-09 08:24:14', NULL, NULL),
(14, 'sess_67f62476958909.24354663', 'sess_67f62476958909.24354663_file_sp.png', 'sess_67f62476958909.24354663_file_sph.png', 'sess_67f62476958909.24354663_file_contoh_karya.png', 'sess_67f62476958909.24354663_file_ktp.png', '', NULL, NULL, 'sess_67f62476958909.24354663_file_bukti_pembayaran.png', '2025-04-09 08:39:27', 1744187659410, NULL),
(15, 'sess_67f62476958909.24354663', 'sess_67f62476958909.24354663_file_sp.png', 'sess_67f62476958909.24354663_file_sph.png', 'sess_67f62476958909.24354663_file_contoh_karya.png', 'sess_67f62476958909.24354663_file_ktp.png', '', NULL, NULL, 'sess_67f62476958909.24354663_file_bukti_pembayaran.png', '2025-04-09 08:50:01', 0, NULL),
(16, 'sess_67fc87bfae9f36.03745220', 'sess_67fc87bfae9f36.03745220_file_sp.png', 'sess_67fc87bfae9f36.03745220_file_sph.png', 'sess_67fc87bfae9f36.03745220_file_contoh_karya.png', 'sess_67fc87bfae9f36.03745220_file_ktp.png', '', NULL, NULL, 'sess_67fc87bfae9f36.03745220_file_bukti_pembayaran.png', '2025-04-14 03:57:51', 67, NULL),
(17, 'sess_67fc87bfae9f36.03745220', 'sess_67fc87bfae9f36.03745220_file_sp.png', 'sess_67fc87bfae9f36.03745220_file_sph.png', 'sess_67fc87bfae9f36.03745220_file_contoh_karya.png', 'sess_67fc87bfae9f36.03745220_file_ktp.png', '', NULL, NULL, 'sess_67fc87bfae9f36.03745220_file_bukti_pembayaran.png', '2025-04-14 06:04:53', 67, NULL),
(18, 'sess_67fc87bfae9f36.03745220', 'sess_67fc87bfae9f36.03745220_file_sp.png', 'sess_67fc87bfae9f36.03745220_file_sph.png', 'sess_67fc87bfae9f36.03745220_file_contoh_karya.png', 'sess_67fc87bfae9f36.03745220_file_ktp.png', '', NULL, NULL, 'sess_67fc87bfae9f36.03745220_file_bukti_pembayaran.png', '2025-04-14 07:01:30', 67, NULL),
(19, 'sess_6805ce9b5cc938.06490421', 'sess_6805ce9b5cc938.06490421_file_sp.png', 'sess_6805ce9b5cc938.06490421_file_sph.png', 'sess_6805ce9b5cc938.06490421_file_contoh_karya.png', 'sess_6805ce9b5cc938.06490421_file_ktp.png', '', NULL, NULL, 'sess_6805ce9b5cc938.06490421_file_bukti_pembayaran.png', '2025-04-21 04:50:53', 1745208101396, NULL),
(20, 'sess_6807104ce3eb43.84469977', 'sess_6807104ce3eb43.84469977_file_sp.png', 'sess_6807104ce3eb43.84469977_file_sph.png', 'sess_6807104ce3eb43.84469977_file_contoh_karya.png', 'sess_6807104ce3eb43.84469977_file_ktp.png', '', NULL, NULL, 'sess_6807104ce3eb43.84469977_file_bukti_pembayaran.png', '2025-04-22 03:43:08', 68070, NULL),
(21, 'sess_6807104ce3eb43.84469977', 'sess_6807104ce3eb43.84469977_file_sp.png', 'sess_6807104ce3eb43.84469977_file_sph.png', 'sess_6807104ce3eb43.84469977_file_contoh_karya.png', 'sess_6807104ce3eb43.84469977_file_ktp.png', '', NULL, NULL, 'sess_6807104ce3eb43.84469977_file_bukti_pembayaran.png', '2025-04-22 03:51:17', 68070, NULL),
(22, 'sess_6807104ce3eb43.84469977', 'sess_6807104ce3eb43.84469977_file_sp.pdf', 'sess_6807104ce3eb43.84469977_file_sph.pdf', 'sess_6807104ce3eb43.84469977_file_contoh_karya.pdf', 'sess_6807104ce3eb43.84469977_file_ktp.pdf', '', NULL, NULL, 'sess_6807104ce3eb43.84469977_file_bukti_pembayaran.pdf', '2025-04-22 03:53:17', 68070, NULL),
(23, 'sess_680b31cd9e38e0.56362099', 'sess_680b31cd9e38e0.56362099_file_sp.pdf', 'sess_680b31cd9e38e0.56362099_file_sph.pdf', 'sess_680b31cd9e38e0.56362099_file_contoh_karya.pdf', 'sess_680b31cd9e38e0.56362099_file_ktp.pdf', '', NULL, NULL, 'sess_680b31cd9e38e0.56362099_file_bukti_pembayaran.pdf', '2025-04-25 06:55:26', 680, NULL),
(24, NULL, 'uploads/123220184_Devi Intan_PR slide 24&25.pdf', 'uploads/123220184_PR1&4.pdf', 'uploads/Community-Consideration_Centrality_a_Case_Study_of_Lung_Cancer_Proteins.pdf', 'uploads/jurnal.pdf', NULL, NULL, NULL, 'uploads/PR Python.pdf', '2025-04-28 05:32:00', 680, 3),
(25, NULL, 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', NULL, NULL, NULL, 'PR Python.pdf', '2025-04-28 05:46:20', 0, NULL),
(26, NULL, 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', NULL, NULL, NULL, 'PR Python.pdf', '2025-04-28 05:51:19', 0, NULL),
(27, NULL, 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', NULL, NULL, NULL, 'PR Python.pdf', '2025-04-28 05:52:56', 0, NULL),
(28, NULL, 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', NULL, NULL, NULL, 'PR Python.pdf', '2025-04-28 05:58:25', 0, NULL),
(29, NULL, 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', NULL, NULL, NULL, 'PR Python.pdf', '2025-04-28 05:59:15', 0, NULL),
(30, NULL, 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', 'PR Python.pdf', NULL, NULL, NULL, 'PR Python.pdf', '2025-04-28 05:59:37', 0, NULL),
(31, NULL, 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', NULL, NULL, NULL, 'jurnal.pdf', '2025-04-28 06:02:43', 680, NULL),
(32, NULL, 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', NULL, NULL, NULL, 'jurnal.pdf', '2025-04-28 06:09:51', 680, NULL),
(33, NULL, 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', NULL, NULL, NULL, 'jurnal.pdf', '2025-04-28 06:14:32', 680, NULL),
(34, NULL, 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', NULL, NULL, NULL, 'jurnal.pdf', '2025-04-28 06:17:43', 680, NULL),
(35, NULL, 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', NULL, NULL, NULL, 'jurnal.pdf', '2025-04-28 06:18:27', 680, NULL),
(36, NULL, 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', 'jurnal.pdf', NULL, NULL, NULL, 'jurnal.pdf', '2025-04-28 06:25:07', 680, NULL),
(37, NULL, '680f1f68e94de_file_sp.pdf', '680f1f68e94de_file_sph.pdf', '680f1f68e94de_file_contoh_karya.pdf', '680f1f68e94de_file_ktp.pdf', NULL, NULL, NULL, '680f1f68e94de_file_bukti_pembayaran.pdf', '2025-04-28 06:32:50', 680, NULL),
(38, NULL, 'data_680f2112171cd5.84261864_file_sp.pdf', 'data_680f2112171cd5.84261864_file_sph.pdf', 'data_680f2112171cd5.84261864_file_contoh_karya.pdf', 'data_680f2112171cd5.84261864_file_ktp.pdf', NULL, NULL, NULL, 'data_680f2112171cd5.84261864_file_bukti_pembayaran.pdf', '2025-04-28 06:33:03', 0, NULL),
(39, 'sess_680f217027e948.94266579', 'sess_680f217027e948.94266579_file_sp.pdf', 'sess_680f217027e948.94266579_file_sph.pdf', 'sess_680f217027e948.94266579_file_contoh_karya.pdf', 'sess_680f217027e948.94266579_file_ktp.pdf', NULL, NULL, NULL, 'sess_680f217027e948.94266579_file_bukti_pembayaran.pdf', '2025-04-28 06:34:24', 0, NULL),
(40, 'sess_680f217027e948.94266579', 'sess_680f217027e948.94266579_file_sp.pdf', 'sess_680f217027e948.94266579_file_sph.pdf', 'sess_680f217027e948.94266579_file_contoh_karya.pdf', 'sess_680f217027e948.94266579_file_ktp.pdf', '', NULL, NULL, 'sess_680f217027e948.94266579_file_bukti_pembayaran.pdf', '2025-04-28 06:37:46', 0, NULL),
(41, 'sess_680f217027e948.94266579', 'sess_680f217027e948.94266579_file_sp.pdf', 'sess_680f217027e948.94266579_file_sph.pdf', 'sess_680f217027e948.94266579_file_contoh_karya.pdf', 'sess_680f217027e948.94266579_file_ktp.pdf', NULL, NULL, NULL, 'sess_680f217027e948.94266579_file_bukti_pembayaran.pdf', '2025-04-28 06:53:58', 0, 1),
(42, NULL, 'uploads/file_sp_680f9f2f581fb.pdf', 'uploads/file_sph_680f9f2f581fb.pdf', 'uploads/file_contoh_karya_680f9f2f581fb.pdf', 'uploads/file_ktp_680f9f2f581fb.pdf', NULL, NULL, NULL, 'uploads/file_bukti_pembayaran_680f9f2f581fb.pdf', '2025-04-28 17:20:02', 680, NULL),
(43, NULL, 'uploads/file_sp_1755516829493.JPG', '', '', '', NULL, NULL, NULL, '', '2025-08-18 11:34:18', 1755516829493, NULL),
(44, NULL, '', '', '', '', NULL, NULL, NULL, '', '2025-08-18 11:34:48', 1755516829493, NULL),
(45, NULL, '', '', '', '', NULL, NULL, NULL, '', '2025-08-18 11:37:57', 1755516829493, NULL),
(46, NULL, 'uploads/file_sp_1755516829493.pdf', 'uploads/file_sph_1755516829493.pdf', 'uploads/file_contoh_karya_1755516829493.pdf', 'uploads/file_ktp_1755516829493.pdf', NULL, NULL, NULL, 'uploads/file_bukti_pembayaran_1755516829493.pdf', '2025-08-18 11:38:24', 1755516829493, NULL),
(47, NULL, 'file_175552224768a324c713c59.pdf', 'file_175552224768a324c71402d.pdf', 'file_175552224768a324c714124.pdf', 'file_175552224768a324c71421e.pdf', NULL, NULL, NULL, 'file_175552224768a324c7142e9.pdf', '2025-08-18 13:04:07', 1755516829493, 1),
(48, NULL, 'file_175552228668a324ee80169.pdf', 'file_175552228668a324ee80346.pdf', 'file_175552228668a324ee8049f.pdf', 'file_175552228668a324ee805d6.pdf', NULL, NULL, NULL, 'file_175552228668a324ee806ff.pdf', '2025-08-18 13:04:46', 1755516829493, 1),
(49, NULL, 'file_175569077468a5b716b9aa3.pdf', 'file_175569077468a5b716bbb77.pdf', 'file_175569077468a5b716bbcb9.pdf', 'file_175569077468a5b716bbd81.pdf', NULL, NULL, NULL, 'file_175569077468a5b716bbe30.pdf', '2025-08-20 11:52:54', 1755690727453, 1),
(50, NULL, 'file_175569119368a5b8b9232ba.pdf', 'file_175569119368a5b8b92346a.pdf', 'file_175569119368a5b8b923581.pdf', 'file_175569119368a5b8b923643.pdf', NULL, NULL, NULL, 'file_175569119368a5b8b92373f.pdf', '2025-08-20 11:59:53', 1755690727453, 1),
(51, NULL, 'file_175604332068ab18383fc1a.pdf', 'file_175604332068ab18383ff44.pdf', 'file_175604332068ab1838400a5.pdf', 'file_175604332068ab1838401b2.pdf', NULL, NULL, NULL, 'file_175604332068ab183840291.pdf', '2025-08-24 13:48:40', 1756043287771, 1),
(52, NULL, 'file_175604532068ab200813d71.pdf', 'file_175604532068ab20081469a.pdf', 'file_175604532068ab200814d5e.pdf', 'file_175604532068ab20081500f.pdf', NULL, NULL, NULL, 'file_175604532068ab20081521b.pdf', '2025-08-24 14:22:00', 1756043287771, 1),
(53, NULL, 'file_175604696468ab26747a639.pdf', 'file_175604696468ab26747a7e1.pdf', 'file_175604696468ab26747a926.pdf', 'file_175604696468ab26747a9fd.pdf', NULL, NULL, NULL, 'file_175604696468ab26747ab20.pdf', '2025-08-24 14:49:24', 1756043287771, 1),
(54, NULL, 'file_175604811868ab2af68f102.pdf', 'file_175604811868ab2af68f23c.pdf', 'file_175604811868ab2af68f30c.pdf', 'file_175604811868ab2af68f3dd.pdf', NULL, NULL, NULL, 'file_175604811868ab2af68f48e.pdf', '2025-08-24 15:08:38', 1756043287771, 1),
(55, NULL, 'file_175604831168ab2bb714aa3.pdf', 'file_175604831168ab2bb714d27.pdf', 'file_175604831168ab2bb714e26.pdf', 'file_175604831168ab2bb714f44.pdf', NULL, NULL, NULL, 'file_175604831168ab2bb715047.pdf', '2025-08-24 15:11:51', 1756043287771, 1),
(56, NULL, 'file_175605213068ab3aa2496c6.pdf', 'file_175605213068ab3aa24981e.pdf', 'file_175605213068ab3aa2499fa.pdf', 'file_175605213068ab3aa249b44.pdf', NULL, NULL, NULL, 'file_175605213068ab3aa249ceb.pdf', '2025-08-24 16:15:30', 1756052097589, 1),
(57, NULL, 'file_175605215968ab3abf0c5d3.pdf', 'file_175605215968ab3abf0c6e9.pdf', 'file_175605215968ab3abf0c7ff.pdf', 'file_175605215968ab3abf0c900.pdf', NULL, NULL, NULL, 'file_175605215968ab3abf0c9e6.pdf', '2025-08-24 16:15:59', 1756052097589, 1),
(58, NULL, 'file_175605291168ab3dafc1932.pdf', 'file_175605291168ab3dafc1a75.pdf', 'file_175605291168ab3dafc1b5e.pdf', 'file_175605291168ab3dafc1c72.pdf', NULL, NULL, NULL, 'file_175605291168ab3dafc1dbc.pdf', '2025-08-24 16:28:31', 1756052097589, 1),
(59, NULL, 'file_175605352168ab401133069.pdf', 'file_175605352168ab40113316c.pdf', 'file_175605352168ab40113329a.pdf', 'file_175605352168ab4011349f3.pdf', NULL, NULL, NULL, 'file_175605352168ab401134b39.pdf', '2025-08-24 16:38:41', 1755690727453, 1),
(60, NULL, 'file_175605369768ab40c1490df.pdf', 'file_175605369768ab40c149234.pdf', 'file_175605369768ab40c14931c.pdf', 'file_175605369768ab40c14cd12.pdf', NULL, NULL, NULL, 'file_175605369768ab40c14d057.pdf', '2025-08-24 16:41:37', 1755690727453, 1),
(61, NULL, 'file_175605372068ab40d800b39.pdf', 'file_175605372068ab40d800c5d.pdf', 'file_175605372068ab40d800d8b.pdf', 'file_175605372068ab40d800e79.pdf', NULL, NULL, NULL, 'file_175605372068ab40d800f6c.pdf', '2025-08-24 16:42:00', 1755690727453, 1),
(62, NULL, 'file_sp_1755690727453_68ac9d2b223349.55935001.pdf', 'file_sph_1755690727453_68ac9d2b226141.66456344.pdf', 'file_contoh_karya_1755690727453_68ac9d2b227179.35544784.pdf', 'file_ktp_1755690727453_68ac9d2b227ed6.86051093.pdf', NULL, NULL, NULL, 'file_bukti_pembayaran_1755690727453_68ac9d2b228ae1.87873498.pdf', '2025-08-25 16:11:24', 1755690727453, 1),
(63, NULL, 'file_68b473c9b559d7.15105892.pdf', 'file_68b473c9b5aba7.28765052.pdf', 'file_68b473c9b9b609.06345742.pdf', 'file_68b473c9b9cd20.34607490.pdf', NULL, NULL, NULL, 'file_68b473c9b9de80.27764879.pdf', '2025-08-31 16:09:45', 1756655879, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `dataid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `dataid`) VALUES
(1, 'air@gmail.com', '111', 'user', 2),
(2, 'admin@gmail.com', '222', 'admin', 3),
(3, 'intan@gmail.com', '123456', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pribadi_dosen`
--
ALTER TABLE `data_pribadi_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pribadi_mahasiswa`
--
ALTER TABLE `data_pribadi_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_permohonan`
--
ALTER TABLE `detail_permohonan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dokumen_detail` (`detailpermohonan_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pencipta`
--
ALTER TABLE `pencipta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pengusul`
--
ALTER TABLE `pengusul`
  ADD PRIMARY KEY (`id_pengusul`);

--
-- Indexes for table `review_ad`
--
ALTER TABLE `review_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detailpermohonan_id` (`detailpermohonan_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id` (`id`,`username`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pribadi_dosen`
--
ALTER TABLE `data_pribadi_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `data_pribadi_mahasiswa`
--
ALTER TABLE `data_pribadi_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `detail_permohonan`
--
ALTER TABLE `detail_permohonan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pencipta`
--
ALTER TABLE `pencipta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengusul`
--
ALTER TABLE `pengusul`
  MODIFY `id_pengusul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_ad`
--
ALTER TABLE `review_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `fk_dokumen_detail` FOREIGN KEY (`detailpermohonan_id`) REFERENCES `detail_permohonan` (`id`);

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `review_ad`
--
ALTER TABLE `review_ad`
  ADD CONSTRAINT `review_ad_ibfk_1` FOREIGN KEY (`detailpermohonan_id`) REFERENCES `detail_permohonan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
