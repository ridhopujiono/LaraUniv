-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 23 Jul 2022 pada 06.21
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `univ`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `keterangan`, `created_at`, `updated_at`, `foto`) VALUES
(1, 'Teknik Informatika', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(2, 'Teknik Industri', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(3, 'Matematika', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(4, 'Bahasa Inggris', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(5, 'Biologi', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(6, 'Fisika', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(7, 'Bahasa Indonesia', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(8, 'Sastra', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(9, 'Seni Rupa', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(10, 'Sistem Informasi', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', ''),
(11, 'Agrobisnis', '', '2022-07-21 09:07:51', '2022-07-21 09:07:51', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `npm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `jurusan_id`, `npm`, `nama`, `no_telp`, `alamat`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 3, '14122001', 'Tira Nurdiyanti S.E.', '0894 095 261', 'Jr. Samanhudi No. 180, Banjarmasin 51582, Kalsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(2, 1, '14122002', 'Ghaliyati Zelda Pertiwi', '0877 0279 1967', 'Psr. Dr. Junjunan No. 291, Jambi 64910, Sulbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(3, 7, '14122003', 'Unjani Winarsih M.Kom.', '(+62) 734 8177 109', 'Jln. Wahidin Sudirohusodo No. 701, Madiun 27783, Kaltim', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(4, 11, '14122004', 'Wadi Januar', '(+62) 672 6238 5923', 'Jr. Gotong Royong No. 674, Subulussalam 85654, Sulteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(5, 3, '14122005', 'Sakura Unjani Wastuti M.M.', '(+62) 915 9170 288', 'Jr. Wahid Hasyim No. 629, Probolinggo 91817, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(6, 8, '14122006', 'Hesti Vicky Nurdiyanti', '(+62) 410 5584 0722', 'Jln. Sampangan No. 392, Blitar 64379, Bali', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(7, 2, '14122007', 'Syahrini Hana Hartati', '(+62) 429 9804 0159', 'Ds. Pasteur No. 242, Administrasi Jakarta Selatan 42870, Jabar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(8, 4, '14122008', 'Enteng Rendy Waskita', '(+62) 785 9490 613', 'Dk. Basoka Raya No. 786, Makassar 65248, Sultra', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(9, 11, '14122009', 'Elisa Raina Nurdiyanti S.H.', '0248 2710 3612', 'Ds. Gotong Royong No. 421, Makassar 77517, Aceh', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(10, 4, '14122010', 'Cakrawangsa Ardianto', '0722 2817 5135', 'Jr. Sutarjo No. 48, Pangkal Pinang 32612, Babel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(11, 9, '14122011', 'Amalia Rahmawati', '028 9922 6573', 'Psr. Baik No. 188, Langsa 51940, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(12, 3, '14122012', 'Paris Aisyah Hartati', '(+62) 269 4383 982', 'Kpg. Ekonomi No. 897, Pangkal Pinang 92478, Maluku', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(13, 6, '14122013', 'Tirtayasa Jarwadi Irawan', '0854 9970 305', 'Ds. Baranang No. 33, Tasikmalaya 11159, Kaltara', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(14, 11, '14122014', 'Ajeng Usada S.T.', '0497 3084 4223', 'Ds. Bakti No. 559, Tidore Kepulauan 46974, Sumbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(15, 10, '14122015', 'Kani Hastuti', '(+62) 454 8698 742', 'Dk. Rumah Sakit No. 162, Administrasi Jakarta Pusat 73591, Kalsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(16, 4, '14122016', 'Kanda Daryani Sinaga S.Ked', '0694 3707 327', 'Ki. Bahagia No. 390, Ternate 28408, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(17, 11, '14122017', 'Jamalia Ina Utami S.Ked', '0945 2049 550', 'Jr. Madiun No. 663, Pekanbaru 19627, Maluku', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(18, 2, '14122018', 'Siti Najwa Pudjiastuti', '0351 8751 170', 'Kpg. Soekarno Hatta No. 813, Pariaman 99386, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(19, 3, '14122019', 'Langgeng Wadi Sinaga', '(+62) 990 9466 022', 'Psr. Badak No. 437, Salatiga 21106, Sumbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(20, 9, '14122020', 'Edi Gunawan', '0329 5078 456', 'Dk. Kali No. 922, Padang 17474, Kaltara', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(21, 10, '14122021', 'Baktiono Gamanto Maulana', '0238 5713 0075', 'Ds. Labu No. 936, Pagar Alam 56244, Bengkulu', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(22, 11, '14122022', 'Cahyono Ardianto', '(+62) 606 9644 0869', 'Jr. Bakti No. 75, Tual 77499, Sulteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(23, 7, '14122023', 'Farah Shania Hariyah', '0316 3708 190', 'Jln. Dago No. 855, Kupang 77678, Kepri', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(24, 7, '14122024', 'Dina Ida Oktaviani M.M.', '0884 6517 3896', 'Dk. Baja No. 596, Bau-Bau 26041, Papua', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(25, 10, '14122025', 'Ratih Zamira Yulianti', '0212 3054 5889', 'Dk. Laksamana No. 693, Batu 46515, Pabar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(26, 11, '14122026', 'Ozy Adriansyah M.Pd', '0770 0556 970', 'Jr. Gambang No. 697, Palangka Raya 63827, Sulut', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(27, 4, '14122027', 'Vinsen Maryadi', '(+62) 971 3790 6363', 'Jr. Abdul Rahmat No. 963, Manado 43718, Sulut', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(28, 11, '14122028', 'Damar Emas Simbolon S.Pt', '(+62) 247 2772 9627', 'Ds. Honggowongso No. 964, Pematangsiantar 93789, Sumsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(29, 4, '14122029', 'Uli Halimah', '(+62) 644 4769 6464', 'Dk. Lada No. 459, Binjai 36617, Sulsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(30, 5, '14122030', 'Gara Tarihoran', '(+62) 440 6326 6002', 'Ds. Tubagus Ismail No. 67, Padangpanjang 73505, Malut', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(31, 11, '14122031', 'Irfan Cakrawala Firgantoro', '(+62) 505 6796 8820', 'Gg. Banda No. 855, Pariaman 28560, Kepri', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(32, 3, '14122032', 'Halima Riyanti', '(+62) 879 6757 989', 'Ds. Untung Suropati No. 91, Depok 90987, NTB', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(33, 9, '14122033', 'Taswir Saputra', '(+62) 27 8800 815', 'Kpg. K.H. Maskur No. 784, Pekanbaru 79403, Sultra', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(34, 2, '14122034', 'Indah Ifa Farida', '(+62) 903 3280 584', 'Jr. Baranang Siang Indah No. 908, Palu 91514, Sulbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(35, 5, '14122035', 'Kamal Luhung Sihombing M.Ak', '0907 7536 6208', 'Jr. Sampangan No. 846, Langsa 49373, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(36, 5, '14122036', 'Yunita Yuliarti', '(+62) 872 3298 858', 'Jr. Cihampelas No. 355, Bima 38663, DKI', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(37, 6, '14122037', 'Rini Andriani S.Gz', '(+62) 865 291 645', 'Dk. Industri No. 832, Banjarbaru 68870, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(38, 8, '14122038', 'Keisha Tina Nasyiah', '0333 8505 778', 'Jln. Kalimalang No. 968, Banjarmasin 43194, Jatim', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(39, 2, '14122039', 'Ghani Aswani Nugroho S.H.', '(+62) 652 5074 1054', 'Ds. Gajah No. 948, Bogor 44765, Papua', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(40, 7, '14122040', 'Danuja Nainggolan', '(+62) 739 9886 482', 'Ds. Siliwangi No. 456, Sibolga 97074, Jatim', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(41, 9, '14122041', 'Ajimin Kemba Hardiansyah S.Farm', '(+62) 469 7266 180', 'Ki. BKR No. 739, Tasikmalaya 34717, Malut', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(42, 5, '14122042', 'Mila Safitri', '(+62) 557 8922 0578', 'Jln. S. Parman No. 588, Tidore Kepulauan 38854, Aceh', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(43, 7, '14122043', 'Ajeng Intan Handayani M.TI.', '(+62) 850 1023 7390', 'Kpg. Bata Putih No. 85, Bima 97696, Kaltara', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(44, 10, '14122044', 'Febi Ira Safitri S.E.I', '(+62) 424 8926 621', 'Ki. Setiabudhi No. 153, Lubuklinggau 57643, DKI', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(45, 5, '14122045', 'Gawati Widya Puspasari', '(+62) 234 9228 8055', 'Jr. Ters. Kiaracondong No. 757, Jambi 31392, Bali', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(46, 9, '14122046', 'Cinthia Jessica Andriani', '0731 3169 183', 'Ki. M.T. Haryono No. 927, Cimahi 34004, Lampung', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(47, 7, '14122047', 'Maida Ella Puspasari', '025 4800 5974', 'Gg. Bak Mandi No. 319, Ternate 16852, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(48, 10, '14122048', 'Talia Eka Melani S.E.I', '0890 3588 7119', 'Jln. Rajawali Barat No. 238, Tual 17852, Lampung', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(49, 9, '14122049', 'Hamima Mayasari S.Kom', '0728 0207 6465', 'Jln. Salatiga No. 120, Banjarmasin 94923, Pabar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(50, 3, '14122050', 'Ira Lestari', '0558 6118 877', 'Dk. Sutarto No. 499, Banda Aceh 10617, Jatim', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(51, 5, '14122051', 'Karja Adinata Maryadi M.Farm', '(+62) 313 5373 7450', 'Kpg. Bank Dagang Negara No. 154, Palu 30097, Sulbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(52, 5, '14122052', 'Salsabila Sudiati S.Farm', '0876 8057 1630', 'Jr. Raden No. 87, Pagar Alam 36879, Sumut', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(53, 1, '14122053', 'Rockhim', '023 0308 480', 'Gg. Sam Ratulangi No. 89, Administrasi Jakarta Pusat 30478, Babel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 99),
(54, 4, '14122054', 'Latika Icha Halimah', '020 7385 3653', 'Jln. Sutarto No. 893, Magelang 47532, Sulbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(55, 6, '14122055', 'Natalia Kiandra Yolanda S.T.', '(+62) 485 8140 688', 'Ki. Jaksa No. 526, Denpasar 88549, Kepri', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(56, 2, '14122056', 'Ella Shania Yuliarti S.E.', '0985 3645 3236', 'Gg. Flores No. 884, Banda Aceh 42877, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(57, 3, '14122057', 'Bakiman Maheswara', '(+62) 388 1088 0363', 'Ki. Sutan Syahrir No. 542, Binjai 37806, Sumbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(58, 9, '14122058', 'Wani Victoria Purwanti S.T.', '0208 4435 512', 'Ki. Jend. A. Yani No. 821, Bandar Lampung 56701, DKI', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(59, 8, '14122059', 'Wasis Wibowo', '(+62) 218 5496 0130', 'Jr. Kyai Gede No. 546, Mataram 33951, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(60, 5, '14122060', 'Drajat Prasetyo', '(+62) 730 0830 192', 'Psr. Rajawali No. 584, Administrasi Jakarta Utara 11127, Gorontalo', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(61, 7, '14122061', 'Ulva Hastuti', '0873 5792 1412', 'Ki. Cut Nyak Dien No. 552, Payakumbuh 32418, Gorontalo', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(62, 1, '14122062', 'Septi Rahmawati S.Ked', '0702 4092 476', 'Dk. Bappenas No. 231, Tidore Kepulauan 45852, NTB', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(63, 6, '14122063', 'Ade Irma Mandasari', '(+62) 367 7925 6545', 'Jr. Abdullah No. 802, Serang 49698, Bali', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(64, 1, '14122064', 'Mala Anggraini', '(+62) 20 0735 4762', 'Dk. Eka No. 386, Bogor 40490, Kalsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(65, 3, '14122065', 'Viktor Uwais S.Gz', '0912 0727 728', 'Ds. Kali No. 525, Palangka Raya 12123, Kalteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(66, 3, '14122066', 'Nasrullah Kusumo', '(+62) 28 5213 4106', 'Ki. Casablanca No. 420, Samarinda 53789, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(67, 6, '14122067', 'Baktianto Halim S.I.Kom', '(+62) 384 8631 804', 'Ds. Jamika No. 314, Palu 81667, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(68, 7, '14122068', 'Luluh Lanjar Siregar', '(+62) 734 4004 153', 'Jr. Cikutra Timur No. 402, Manado 77303, Jatim', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(69, 8, '14122069', 'Gatot Pradana S.Ked', '020 3764 4983', 'Kpg. Pacuan Kuda No. 382, Yogyakarta 77858, Bengkulu', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(70, 10, '14122070', 'Amelia Riyanti', '0348 4478 3987', 'Ki. Padma No. 626, Tebing Tinggi 12801, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(71, 7, '14122071', 'Hasim Gatot Hidayanto', '(+62) 807 977 853', 'Kpg. Sugiyopranoto No. 720, Banda Aceh 54556, Lampung', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(72, 8, '14122072', 'Prasetya Prabowo', '(+62) 28 7611 674', 'Kpg. Sumpah Pemuda No. 430, Medan 60228, Sulbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(73, 11, '14122073', 'Cindy Mulyani M.TI.', '0201 7813 5309', 'Gg. Merdeka No. 512, Sungai Penuh 23836, NTT', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(74, 9, '14122074', 'Karsana Candrakanta Nashiruddin', '0286 5333 2718', 'Jln. Casablanca No. 539, Administrasi Jakarta Selatan 18939, Kalsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(75, 3, '14122075', 'Aris Oskar Iswahyudi', '(+62) 801 8374 085', 'Ds. Basmol Raya No. 229, Probolinggo 28053, Maluku', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(76, 9, '14122076', 'Kartika Suartini', '0489 7361 514', 'Gg. Kiaracondong No. 668, Salatiga 43752, Sulteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(77, 1, '14122077', 'Ghaliyati Novitasari', '0881 395 253', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 876, Cilegon 70229, DKI', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(78, 8, '14122078', 'Rahmat Dadi Tampubolon S.T.', '0816 1936 771', 'Ds. Dahlia No. 531, Sawahlunto 49296, Aceh', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(79, 11, '14122079', 'Yulia Pertiwi', '(+62) 527 7149 580', 'Ds. Reksoninten No. 270, Jambi 80796, Kalbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(80, 1, '14122080', 'Nrima Kuswoyo', '0377 1334 9072', 'Gg. Asia Afrika No. 661, Depok 46626, Gorontalo', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(81, 6, '14122081', 'Ajeng Lailasari M.Farm', '(+62) 21 9539 2958', 'Dk. Babadak No. 561, Mataram 49172, Sumut', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(82, 2, '14122082', 'Estiono Marpaung', '0780 8869 5355', 'Psr. Pasteur No. 628, Salatiga 25896, Jatim', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(83, 1, '14122083', 'Vicky Hafshah Rahimah M.M.', '(+62) 324 6235 5626', 'Ds. Untung Suropati No. 864, Subulussalam 20880, Babel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(84, 8, '14122084', 'Empluk Mustofa', '0592 7667 4459', 'Ds. Kiaracondong No. 456, Administrasi Jakarta Utara 18750, Bengkulu', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(85, 8, '14122085', 'Qori Hilda Lailasari', '0530 8987 5248', 'Jln. Sutoyo No. 941, Tangerang Selatan 24065, NTT', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(86, 3, '14122086', 'Lili Hasanah', '(+62) 20 5421 6657', 'Jr. Umalas No. 890, Administrasi Jakarta Barat 17264, Sumbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(87, 11, '14122087', 'Legawa Adriansyah', '0430 7232 001', 'Jln. Basudewo No. 851, Banjar 10163, Kalbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(88, 6, '14122088', 'Safina Agnes Oktaviani S.E.I', '0788 5090 5068', 'Kpg. Agus Salim No. 204, Kotamobagu 59587, Jateng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(89, 3, '14122089', 'Kenzie Suwarno', '(+62) 277 0249 4892', 'Kpg. Sutan Syahrir No. 20, Sukabumi 30542, Kepri', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(90, 11, '14122090', 'Emil Cawuk Prakasa', '0293 8926 433', 'Psr. Cikapayang No. 386, Binjai 22417, Sulsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(91, 8, '14122091', 'Gina Intan Sudiati M.M.', '(+62) 291 2621 1183', 'Gg. Banceng Pondok No. 837, Administrasi Jakarta Utara 44900, Sulbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(92, 11, '14122092', 'Waluyo Widodo', '(+62) 21 4656 455', 'Dk. Basoka Raya No. 980, Sorong 19718, Aceh', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(93, 1, '14122093', 'Bahuwarna Hidayat', '0641 7943 7260', 'Psr. Basudewo No. 351, Padang 36409, Sumbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(94, 8, '14122094', 'Zulaikha Yulianti', '(+62) 29 9333 600', 'Ds. Umalas No. 508, Palembang 33925, Lampung', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(95, 6, '14122095', 'Tiara Permata', '(+62) 888 720 224', 'Jln. Dago No. 553, Sibolga 24861, DKI', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(96, 2, '14122096', 'Gambira Prasetya S.E.I', '(+62) 377 9281 155', 'Ds. Kebonjati No. 862, Lhokseumawe 10761, Sulteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(97, 2, '14122097', 'Silvia Silvia Novitasari', '0656 4248 9868', 'Psr. Warga No. 699, Pekalongan 18362, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(98, 4, '14122098', 'Anggabaya Zulkarnain', '0811 0548 922', 'Kpg. Sugiono No. 107, Bontang 61443, Jabar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(99, 7, '14122099', 'Artawan Aslijan Sirait M.Farm', '(+62) 799 2935 491', 'Jln. Pasirkoja No. 585, Manado 31785, Kalteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(100, 8, '14122100', 'Purwa Sihombing M.Kom.', '0485 1972 467', 'Ki. Baiduri No. 142, Batu 79217, Sulteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(101, 5, '14122101', 'Lalita Mardhiyah S.Kom', '0566 7581 436', 'Kpg. Wora Wari No. 164, Yogyakarta 66089, Kalteng', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(102, 5, '14122102', 'Paulin Dinda Yuniar S.Kom', '0519 1135 6263', 'Jln. Jamika No. 303, Gunungsitoli 94600, Banten', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(103, 8, '14122103', 'Ajiman Mahendra S.E.', '(+62) 261 0320 410', 'Jln. Achmad No. 162, Bengkulu 62819, Kalsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(104, 5, '14122104', 'Bagas Latupono', '020 5636 895', 'Psr. Moch. Ramdan No. 390, Sawahlunto 51916, Kalsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(105, 11, '14122105', 'Purwadi Situmorang', '(+62) 594 1742 134', 'Ds. Kalimalang No. 908, Binjai 73802, Gorontalo', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(106, 4, '14122106', 'Tantri Namaga', '(+62) 28 1751 670', 'Dk. Yos No. 853, Bengkulu 66581, Papua', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(107, 4, '14122107', 'Latif Sinaga', '(+62) 985 2273 8425', 'Jr. Bahagia  No. 803, Tangerang 50875, Jambi', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(108, 6, '14122108', 'Gaman Gadang Napitupulu', '0397 9159 765', 'Jln. Bambu No. 122, Administrasi Jakarta Barat 24790, Sumbar', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(109, 4, '14122109', 'Xanana Saptono', '(+62) 622 4059 483', 'Jr. Supono No. 652, Bogor 94524, Sultra', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(110, 3, '14122110', 'Prabowo Najmudin S.Psi', '0512 9041 752', 'Jln. Imam Bonjol No. 843, Palembang 35175, Sulsel', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(111, 11, '14122111', 'Ilyas Mumpuni Hutapea S.Pd', '0534 4903 6995', 'Jr. Moch. Ramdan No. 466, Banjar 39826, Riau', '2022-07-21 09:07:51', '2022-07-21 09:07:51', 100),
(112, 6, '14122112', 'Ikin Gambira Maheswara S.Gz', '0956 2304 9327', 'Kpg. R.M. Said No. 21, Sibolga 76953, Kepri', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(113, 3, '14122113', 'Zamira Maya Riyanti M.Kom.', '0809 7816 722', 'Ds. Eka No. 551, Padang 95205, Bali', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(114, 10, '14122114', 'Lulut Marpaung', '(+62) 694 5420 466', 'Gg. Yos No. 112, Magelang 63978, Pabar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(115, 2, '14122115', 'Baktiadi Hidayanto S.T.', '(+62) 521 9763 0772', 'Ds. Baabur Royan No. 118, Salatiga 24903, Sulut', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(116, 6, '14122116', 'Jagaraga Prabowo M.M.', '0755 3840 7048', 'Ki. Yosodipuro No. 963, Sawahlunto 97738, NTT', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(117, 5, '14122117', 'Hasan Najmudin', '0904 1027 764', 'Psr. Baranang No. 466, Metro 97011, DIY', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(118, 9, '14122118', 'Zahra Winarsih', '0675 1548 4823', 'Kpg. Baha No. 397, Kupang 22379, Gorontalo', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(119, 6, '14122119', 'Ajeng Widiastuti M.M.', '(+62) 714 5649 298', 'Ds. Baranang No. 241, Jambi 21786, DIY', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(120, 1, '14122120', 'Shakila Yunita Rahayu', '0614 1013 5223', 'Psr. S. Parman No. 625, Pariaman 11169, Sultra', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(121, 1, '14122121', 'Cengkir Mahfud Saputra', '(+62) 274 1770 097', 'Kpg. Achmad No. 83, Administrasi Jakarta Utara 45086, Jambi', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(122, 5, '14122122', 'Nasrullah Laksana Hardiansyah', '0319 2818 4943', 'Ds. Adisucipto No. 809, Tual 85768, Sulbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(123, 5, '14122123', 'Wisnu Cayadi Sinaga', '0581 0714 207', 'Dk. Jend. A. Yani No. 952, Bitung 49607, Kalsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(124, 4, '14122124', 'Harjaya Kusumo', '(+62) 257 4962 184', 'Dk. Otista No. 719, Probolinggo 35172, Jateng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(125, 5, '14122125', 'Daliono Dongoran', '0920 6888 930', 'Dk. Sutan Syahrir No. 350, Samarinda 27100, Sulsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(126, 3, '14122126', 'Karen Melani M.Ak', '(+62) 764 3241 568', 'Kpg. Baya Kali Bungur No. 159, Salatiga 20752, Malut', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(127, 5, '14122127', 'Ega Wibowo', '0288 7109 8457', 'Psr. Sam Ratulangi No. 306, Metro 90159, Jabar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(128, 11, '14122128', 'Lasmono Pangestu S.Gz', '(+62) 358 6793 803', 'Kpg. Jend. A. Yani No. 122, Tomohon 84605, Jateng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(129, 10, '14122129', 'Elon Saka Hakim S.Ked', '(+62) 947 5355 3811', 'Psr. Warga No. 428, Administrasi Jakarta Pusat 28477, Kalbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(130, 6, '14122130', 'Gatot Gunarto', '(+62) 21 3089 3074', 'Kpg. Sutarjo No. 807, Bengkulu 75929, Sulteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(131, 8, '14122131', 'Among Narpati S.H.', '0270 1928 4434', 'Ki. Suniaraja No. 43, Tangerang 32490, Maluku', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(132, 5, '14122132', 'Betania Wulandari S.Pd', '0455 4985 731', 'Jln. Bakau No. 461, Palu 60792, Gorontalo', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(133, 8, '14122133', 'Gasti Novitasari S.I.Kom', '(+62) 741 0699 433', 'Dk. Bank Dagang Negara No. 905, Pasuruan 56181, Kalteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(134, 4, '14122134', 'Dimaz Panca Lazuardi', '0901 0500 033', 'Gg. Ronggowarsito No. 342, Cimahi 87891, Papua', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(135, 11, '14122135', 'Artanto Januar', '(+62) 951 9860 452', 'Jln. Camar No. 265, Tanjung Pinang 32175, Bali', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(136, 6, '14122136', 'Janet Rahmawati', '(+62) 277 8577 0655', 'Ds. Sudirman No. 5, Palangka Raya 85059, DIY', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(137, 3, '14122137', 'Nurul Utami', '0825 7700 0310', 'Ki. Suprapto No. 417, Bandar Lampung 89862, Sulbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(138, 3, '14122138', 'Cawisono Widodo S.Sos', '0600 9232 126', 'Gg. Pasteur No. 582, Manado 16867, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(139, 7, '14122139', 'Farah Prastuti', '(+62) 714 2329 534', 'Jln. Dahlia No. 877, Yogyakarta 27962, Kepri', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(140, 9, '14122140', 'Cakrajiya Sinaga S.Farm', '(+62) 28 3983 9565', 'Jr. Bakaru No. 889, Tanjungbalai 65448, Sultra', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(141, 2, '14122141', 'Mumpuni Mandala M.Farm', '(+62) 868 4738 7100', 'Dk. Supono No. 813, Subulussalam 38554, Kalsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(142, 3, '14122142', 'Kiandra Widiastuti', '(+62) 867 5181 3169', 'Ki. Bacang No. 672, Kupang 30362, NTT', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(143, 1, '14122143', 'Ifa Ifa Wulandari S.IP', '025 8760 1102', 'Jr. Cokroaminoto No. 302, Sungai Penuh 22528, Sumsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(144, 9, '14122144', 'Padmi Cici Novitasari', '(+62) 793 3160 0099', 'Ds. Sam Ratulangi No. 144, Lubuklinggau 55168, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(145, 11, '14122145', 'Dewi Lestari', '0870 221 413', 'Ki. Baiduri No. 876, Tangerang Selatan 51688, Sulbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(146, 9, '14122146', 'Kezia Mayasari', '0341 4960 7064', 'Dk. Madiun No. 268, Dumai 20723, Kalbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(147, 4, '14122147', 'Malik Narpati', '(+62) 28 1420 1178', 'Jr. Pahlawan No. 838, Balikpapan 69801, Sulteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(148, 8, '14122148', 'Bakda Caraka Hidayanto', '0614 4051 4981', 'Ki. Basuki No. 594, Tarakan 83418, Babel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(149, 10, '14122149', 'Zaenab Maryati S.E.I', '(+62) 709 3716 418', 'Kpg. Warga No. 828, Sungai Penuh 41752, Sulut', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(150, 5, '14122150', 'Karimah Patricia Yuliarti M.Pd', '(+62) 440 2239 5267', 'Ds. Ketandan No. 614, Pangkal Pinang 76079, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(151, 10, '14122151', 'Hendra Suryono S.Psi', '0935 5670 4559', 'Psr. Juanda No. 469, Administrasi Jakarta Selatan 14702, Aceh', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(152, 5, '14122152', 'Gading Salman Gunawan S.Kom', '0229 6192 329', 'Ds. Yohanes No. 514, Bogor 78692, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(153, 1, '14122153', 'Putri Prastuti', '(+62) 326 5608 568', 'Dk. Cut Nyak Dien No. 698, Jayapura 20490, Sultra', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(154, 8, '14122154', 'Kenes Hidayanto', '(+62) 429 5605 737', 'Jln. Surapati No. 810, Pariaman 98434, Kaltara', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(155, 3, '14122155', 'Bella Zaenab Mardhiyah S.Kom', '(+62) 970 6156 262', 'Jln. Dipatiukur No. 652, Bima 21264, Sulteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(156, 9, '14122156', 'Wardaya Gaman Sihotang', '(+62) 816 6113 715', 'Gg. Salam No. 418, Padangsidempuan 55924, Kaltara', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(157, 5, '14122157', 'Irma Cindy Agustina M.TI.', '(+62) 977 6697 817', 'Ds. B.Agam Dlm No. 985, Langsa 95963, Riau', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(158, 5, '14122158', 'Estiono Kuswoyo', '(+62) 235 2870 8102', 'Ds. Reksoninten No. 720, Tanjung Pinang 40936, Kalsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(159, 8, '14122159', 'Raditya Leo Putra', '(+62) 491 8223 7968', 'Ki. Wahidin No. 700, Palopo 69748, Sumsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(160, 3, '14122160', 'Drajat Harsanto Budiman', '(+62) 480 3391 7395', 'Dk. Supomo No. 698, Tangerang 30883, Kalbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(161, 4, '14122161', 'Cahyo Wahyudin', '(+62) 462 5540 264', 'Jln. Banceng Pondok No. 881, Mojokerto 67943, Kalteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(162, 5, '14122162', 'Kanda Prabowo', '(+62) 889 2765 487', 'Jln. Sunaryo No. 701, Tidore Kepulauan 46027, Kalsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(163, 7, '14122163', 'Kayun Kawaca Sihombing', '0463 8565 017', 'Kpg. Gedebage Selatan No. 217, Surabaya 92060, Sumbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(164, 5, '14122164', 'Kasiyah Yolanda', '0315 9314 7139', 'Jr. Jambu No. 421, Sungai Penuh 12313, Aceh', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(165, 8, '14122165', 'Hamima Handayani', '0790 3147 4154', 'Ki. Jagakarsa No. 907, Bontang 61766, Jambi', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(166, 9, '14122166', 'Maman Jailani M.TI.', '0205 2613 9878', 'Psr. Sutarto No. 246, Pagar Alam 94485, Maluku', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(167, 2, '14122167', 'Dian Melani', '0937 1563 568', 'Ds. PHH. Mustofa No. 204, Palangka Raya 54634, Jateng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(168, 10, '14122168', 'Cawisono Gilang Hutapea', '0232 1878 460', 'Jln. Bakau No. 878, Jambi 89613, Bengkulu', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(169, 2, '14122169', 'Jaya Sitorus S.Farm', '(+62) 896 761 527', 'Jln. Suniaraja No. 682, Binjai 85201, Bengkulu', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(170, 8, '14122170', 'Adinata Irsad Prasetyo', '(+62) 26 7181 589', 'Gg. Gegerkalong Hilir No. 753, Malang 99722, Gorontalo', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(171, 1, '14122171', 'Kasiran Harjaya Sihotang S.Farm', '(+62) 207 4867 3798', 'Kpg. Raden No. 561, Surabaya 73326, Kalbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(172, 5, '14122172', 'Asirwada Situmorang', '0834 2714 661', 'Gg. Gegerkalong Hilir No. 687, Bekasi 54851, Aceh', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(173, 7, '14122173', 'Teddy Pardi Wibowo', '0820 7026 7787', 'Ds. Monginsidi No. 129, Bukittinggi 46863, Kaltara', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(174, 5, '14122174', 'Elma Laras Widiastuti', '(+62) 465 5727 4190', 'Gg. Rajawali No. 541, Sungai Penuh 28517, Sulsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(175, 8, '14122175', 'Salsabila Wijayanti S.Pd', '0485 4112 1653', 'Jr. Bata Putih No. 876, Administrasi Jakarta Timur 89282, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(176, 3, '14122176', 'Irsad Hendra Najmudin S.Gz', '0896 854 512', 'Dk. Halim No. 142, Tomohon 52132, Gorontalo', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(177, 1, '14122177', 'Azalea Yolanda S.Pt', '0328 8330 668', 'Jln. Aceh No. 44, Pasuruan 66544, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(178, 8, '14122178', 'Irma Yulianti', '028 9546 871', 'Jr. Achmad Yani No. 94, Samarinda 40816, NTB', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(179, 10, '14122179', 'Harjaya Mahmud Kurniawan', '0801 0514 900', 'Ds. Ciwastra No. 580, Banjarmasin 60915, Sumsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(180, 7, '14122180', 'Balidin Habibi S.Pt', '0624 0749 671', 'Ds. Sudiarto No. 725, Payakumbuh 29246, Sumbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(181, 3, '14122181', 'Asmadi Dongoran S.T.', '0742 4051 657', 'Ds. Baladewa No. 26, Samarinda 22055, Kepri', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(182, 7, '14122182', 'Sari Nasyidah', '0468 7804 562', 'Dk. R.M. Said No. 560, Pagar Alam 87804, Babel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(183, 10, '14122183', 'Salman Januar S.Ked', '(+62) 29 6689 4021', 'Psr. Kiaracondong No. 396, Bengkulu 73255, Pabar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(184, 10, '14122184', 'Laras Wulan Laksita S.H.', '0301 7850 8358', 'Jr. Raden Saleh No. 297, Sungai Penuh 13550, Sulsel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(185, 4, '14122185', 'Lidya Sarah Hariyah', '(+62) 975 0262 0426', 'Dk. Bambu No. 985, Metro 54586, Babel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(186, 7, '14122186', 'Dariati Kusumo', '(+62) 423 5316 607', 'Jln. Bappenas No. 771, Yogyakarta 75853, Jatim', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(187, 1, '14122187', 'Puji Haryanti', '0907 5048 436', 'Jr. Dr. Junjunan No. 754, Tidore Kepulauan 41838, Lampung', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(188, 11, '14122188', 'Raina Rahmawati', '0936 3011 1823', 'Psr. Bakti No. 576, Sawahlunto 35349, Sumbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(189, 6, '14122189', 'Ajeng Ami Halimah M.M.', '(+62) 588 9427 7293', 'Jr. Flores No. 250, Tanjung Pinang 45522, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(190, 5, '14122190', 'Banawi Siregar M.M.', '(+62) 851 874 416', 'Jln. Achmad Yani No. 325, Batam 10242, Aceh', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(191, 10, '14122191', 'Karimah Yolanda S.Gz', '(+62) 997 2432 406', 'Gg. Baja Raya No. 913, Samarinda 60084, NTT', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(192, 4, '14122192', 'Aslijan Dodo Rajasa', '0937 9252 4859', 'Ki. Wahidin Sudirohusodo No. 793, Serang 93475, Sumbar', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(193, 6, '14122193', 'Gawati Mardhiyah S.Farm', '0253 0517 0504', 'Dk. Abang No. 77, Langsa 10438, Banten', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(194, 2, '14122194', 'Paulin Lailasari', '026 2855 0254', 'Dk. Otista No. 339, Pariaman 43291, Kalteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(195, 5, '14122195', 'Latika Hassanah', '028 7713 6590', 'Psr. Jaksa No. 36, Tarakan 24002, Gorontalo', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(196, 4, '14122196', 'Bancar Sinaga', '(+62) 465 6977 8366', 'Jr. Yos No. 470, Lubuklinggau 56662, Sulteng', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(197, 3, '14122197', 'Belinda Syahrini Yuniar S.Ked', '(+62) 504 5117 675', 'Jr. Wahidin Sudirohusodo No. 142, Prabumulih 49049, DKI', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(198, 11, '14122198', 'Pangeran Napitupulu', '0760 6661 578', 'Kpg. Samanhudi No. 596, Manado 62806, Babel', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(199, 11, '14122199', 'Daliono Dongoran', '(+62) 636 9508 1751', 'Psr. Orang No. 522, Padangsidempuan 44999, Jambi', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100),
(200, 4, '14122200', 'Galur Widodo S.I.Kom', '(+62) 816 6220 450', 'Gg. Baranang Siang No. 675, Palopo 24245, Aceh', '2022-07-21 09:07:52', '2022-07-21 09:07:52', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_21_154607_create_jurusans_table', 1),
(6, '2022_07_21_154910_create_mahasiswas_table', 1),
(7, '2022_07_22_022140_add_column_level_to_user', 2),
(8, '2022_07_22_023721_add_foreign_to_mahasiswa', 3),
(9, '2022_07_22_024800_add_foreign_to_mahasiswas_1', 3),
(10, '2022_07_22_040751_add_column_jurusans', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(99, '1412200053', 'rokhim@mail.com', NULL, '$2y$10$FHOAMHKyyk0EQQ11ulOgyus4stJBiTJ14WRoEeuBzr/L3pSBgBijK', '1', NULL, NULL, NULL),
(100, 'Mahasiswa', 'mahasiswa@mail.com', NULL, '$2y$10$FHOAMHKyyk0EQQ11ulOgyus4stJBiTJ14WRoEeuBzr/L3pSBgBijK', '1', NULL, NULL, NULL),
(101, 'Admin', 'admin@mail.com', NULL, '$2y$10$FHOAMHKyyk0EQQ11ulOgyus4stJBiTJ14WRoEeuBzr/L3pSBgBijK', '2', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswas_jurusan_id_foreign` (`jurusan_id`),
  ADD KEY `mahasiswas_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD CONSTRAINT `mahasiswas_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`),
  ADD CONSTRAINT `mahasiswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
