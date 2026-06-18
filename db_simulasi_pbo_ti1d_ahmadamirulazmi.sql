-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2026 at 06:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_ti1d_ahmadamirulazmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(150) NOT NULL,
  `asal_sekolah` varchar(150) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzi', 'SMAN 1 Jakarta', '85.50', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Budi Utomo', 'SMAN 3 Bandung', '78.40', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMAN 2 Surabaya', '92.10', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(4, 'Dewi Sartika', 'SMAN 1 Yogyakarta', '88.00', '250000.00', 'Reguler', 'Manajemen', 'Kampus II', NULL, NULL, NULL, NULL),
(5, 'Eko Prasetyo', 'SMAN 5 Semarang', '81.25', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus Utama', NULL, NULL, NULL, NULL),
(6, 'Fitriani', 'SMAN 1 Medan', '84.75', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(7, 'Guntur Wibowo', 'SMAN 3 Makassar', '79.90', '250000.00', 'Reguler', 'Psikologi', 'Kampus II', NULL, NULL, NULL, NULL),
(8, 'Hendra Wijaya', 'SMAN 2 Palembang', '86.30', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(9, 'Indah Permata', 'SMAN 1 Denpasar', '90.50', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(10, 'Joko Susilo', 'SMAN 4 Balikpapan', '76.80', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus II', NULL, NULL, NULL, NULL),
(11, 'Kartika Putri', 'SMAN 1 Malang', '89.40', '250000.00', 'Reguler', 'Manajemen', 'Kampus Utama', NULL, NULL, NULL, NULL),
(12, 'Lukman Hakim', 'SMAN 1 Solo', '83.15', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus II', NULL, NULL, NULL, NULL),
(13, 'Mega Utami', 'SMAN 2 Bogor', '87.60', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(14, 'Nurhasanah', 'SMAN 1 Tangerang', '82.45', '250000.00', 'Reguler', 'Psikologi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(15, 'Onny Wijaya', 'SMAN 3 Bekasi', '80.00', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus II', NULL, NULL, NULL, NULL),
(16, 'Putu Gede', 'SMAN 2 Denpasar', '91.20', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(17, 'Qori Amanda', 'SMAN 1 Padang', '85.00', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(18, 'Rizky Ramadhan', 'SMAN 1 Pekanbaru', '84.10', '250000.00', 'Reguler', 'Manajemen', 'Kampus II', NULL, NULL, NULL, NULL),
(19, 'Siti Rahma', 'SMAN 2 Banjarmasin', '77.50', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus Kota', NULL, NULL, NULL, NULL),
(20, 'Taufik Hidayat', 'SMAN 1 Cimahi', '88.70', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(21, 'Utari Mandasari', 'SMAN 1 Depok', '83.90', '250000.00', 'Reguler', 'Psikologi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(22, 'Vina Amelia', 'SMAN 8 Jakarta', '93.40', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(23, 'Wahyu Hidayat', 'SMAN 1 Cirebon', '81.50', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus II', NULL, NULL, NULL, NULL),
(24, 'Xena Putri', 'SMAN 2 Purwokerto', '79.20', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(25, 'Yayan Setiawan', 'SMAN 1 Tasikmalaya', '82.60', '250000.00', 'Reguler', 'Manajemen', 'Kampus Utama', NULL, NULL, NULL, NULL),
(26, 'Zulkifli Mansur', 'SMAN 1 Makassar', '86.80', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus II', NULL, NULL, NULL, NULL),
(27, 'Adi Nugroho', 'SMAN 3 Yogyakarta', '89.10', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(28, 'Bambang Tri', 'SMAN 1 Surakarta', '80.45', '250000.00', 'Reguler', 'Psikologi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(29, 'Cici Handayani', 'SMAN 4 Medan', '84.20', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus II', NULL, NULL, NULL, NULL),
(30, 'Dedi Kusnandar', 'SMAN 2 Bandung', '85.90', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus Kota', NULL, NULL, NULL, NULL),
(31, 'Edi Sitorus', 'SMAN 1 Ambon', '78.10', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(32, 'Fajar Nugraha', 'SMAN 5 Surabaya', '87.30', '250000.00', 'Reguler', 'Manajemen', 'Kampus II', NULL, NULL, NULL, NULL),
(33, 'Gita Saraswati', 'SMAN 1 Jayapura', '83.50', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus Kota', NULL, NULL, NULL, NULL),
(34, 'Hari Mukti', 'SMAN 3 Semarang', '82.00', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(35, 'Iis Dahliani', 'SMAN 1 Pontianak', '80.90', '250000.00', 'Reguler', 'Psikologi', 'Kampus II', NULL, NULL, NULL, NULL),
(36, 'Jajang Mulyana', 'SMAN 1 Garut', '88.00', '250000.00', 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(37, 'Kevin Wijaya', 'SMAN 1 Kudus', '91.50', '250000.00', 'Prestasi', NULL, NULL, 'Bulutangkis Tunggal', 'Internasional', NULL, NULL),
(38, 'Lesti Andryani', 'SMAN 2 Cianjur', '85.20', '250000.00', 'Prestasi', NULL, NULL, 'Menyanyi Solo', 'Provinsi', NULL, NULL),
(39, 'Muhammad Rizki', 'SMAN 1 Palu', '89.00', '250000.00', 'Prestasi', NULL, NULL, 'Olimpiade Fisika', 'Nasional', NULL, NULL),
(40, 'Nabila Putri', 'SMAN 3 Banda Aceh', '87.40', '250000.00', 'Prestasi', NULL, NULL, 'Tahfidz 10 Juz', 'Provinsi', NULL, NULL),
(41, 'Oki Saputra', 'SMAN 1 Lampung', '83.60', '250000.00', 'Prestasi', NULL, NULL, 'Pencak Silat', 'Kabupaten/Kota', NULL, NULL),
(42, 'Panji Pradana', 'SMAN 2 Jember', '86.10', '250000.00', 'Prestasi', NULL, NULL, 'Karya Ilmiah Remaja', 'Nasional', NULL, NULL),
(43, 'Qonita Az-Zahra', 'SMAN 1 Mataram', '92.30', '250000.00', 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Nasional', NULL, NULL),
(44, 'Raffi Pratama', 'SMAN 5 Bandung', '84.50', '250000.00', 'Prestasi', NULL, NULL, 'Fotografi', 'Kabupaten/Kota', NULL, NULL),
(45, 'Sutisna Wijaya', 'SMAN 1 Cimahi', '80.10', '250000.00', 'Prestasi', NULL, NULL, 'Stand Up Comedy', 'Provinsi', NULL, NULL),
(46, 'Tarra Syahputra', 'SMAN 2 Jakarta', '85.80', '250000.00', 'Prestasi', NULL, NULL, 'Basket Putra', 'Provinsi', NULL, NULL),
(47, 'Ujang Sumarna', 'SMAN 1 Tasikmalaya', '82.90', '250000.00', 'Prestasi', NULL, NULL, 'Catur Kilat', 'Kabupaten/Kota', NULL, NULL),
(48, 'Verrell Mahardika', 'SMAN 7 Jakarta', '90.00', '250000.00', 'Prestasi', NULL, NULL, 'Model Remaja', 'Nasional', NULL, NULL),
(49, 'Wulan Dari', 'SMAN 1 Kendari', '86.40', '250000.00', 'Prestasi', NULL, NULL, 'Tari Tradisional', 'Provinsi', NULL, NULL),
(50, 'Yeni Rahmawati', 'SMAN 1 Sragen', '88.15', '250000.00', 'Prestasi', NULL, NULL, 'Olimpiade Kimia', 'Kabupaten/Kota', NULL, NULL),
(51, 'Zacky Ahmad', 'SMAN 3 Surabaya', '84.90', '250000.00', 'Prestasi', NULL, NULL, 'Robotik', 'Internasional', NULL, NULL),
(52, 'Anang Prasetya', 'SMAN 1 Jember', '83.20', '250000.00', 'Prestasi', NULL, NULL, 'Cipta Puisi', 'Kabupaten/Kota', NULL, NULL),
(53, 'Ashanty Siddik', 'SMAN 2 Jakarta', '89.70', '250000.00', 'Prestasi', NULL, NULL, 'Paduan Suara', 'Nasional', NULL, NULL),
(54, 'Atta Pratama', 'SMAN 11 Jakarta', '81.60', '250000.00', 'Prestasi', NULL, NULL, 'E-Sports Mobile Legends', 'Nasional', NULL, NULL),
(55, 'Aurel Putri', 'SMAN 4 Jakarta', '85.00', '250000.00', 'Prestasi', NULL, NULL, 'Desain Grafis', 'Provinsi', NULL, NULL),
(56, 'Azriel Akbar', 'SMAN 4 Jakarta', '82.30', '250000.00', 'Prestasi', NULL, NULL, 'Sinematografi', 'Kabupaten/Kota', NULL, NULL),
(57, 'Arsy Hermansyah', 'SMAN 8 Jakarta', '94.00', '250000.00', 'Prestasi', NULL, NULL, 'Piano Klasik', 'Internasional', NULL, NULL),
(58, 'Arsya Wijaya', 'SMAN 8 Jakarta', '91.10', '250000.00', 'Prestasi', NULL, NULL, 'Taekwondo', 'Nasional', NULL, NULL),
(59, 'Thariq Halilintar', 'SMAN 11 Jakarta', '83.40', '250000.00', 'Prestasi', NULL, NULL, 'Panahan', 'Provinsi', NULL, NULL),
(60, 'Fujianti Utami', 'SMAN 12 Jakarta', '86.00', '250000.00', 'Prestasi', NULL, NULL, 'Modern Dance', 'Provinsi', NULL, NULL),
(61, 'Fadly Faisal', 'SMAN 12 Jakarta', '85.50', '250000.00', 'Prestasi', NULL, NULL, 'Futsal', 'Kabupaten/Kota', NULL, NULL),
(62, 'Frans Faisal', 'SMAN 12 Jakarta', '84.20', '250000.00', 'Prestasi', NULL, NULL, 'Paskibraka', 'Nasional', NULL, NULL),
(63, 'Gala Sky', 'SMAN 2 Jakarta', '95.00', '250000.00', 'Prestasi', NULL, NULL, 'Matematika Kumon', 'Internasional', NULL, NULL),
(64, 'Vanessa Angelia', 'SMAN 1 Surabaya', '88.90', '250000.00', 'Prestasi', NULL, NULL, 'Akting Teater', 'Nasional', NULL, NULL),
(65, 'Bibi Ardiansyah', 'SMAN 2 Padang', '87.10', '250000.00', 'Prestasi', NULL, NULL, 'Sains Terapan', 'Provinsi', NULL, NULL),
(66, 'Doddy Sudrajat', 'SMAN 5 Jakarta', '79.50', '250000.00', 'Prestasi', NULL, NULL, 'Tenis Meja', 'Kabupaten/Kota', NULL, NULL),
(67, 'Mayang Lucyana', 'SMAN 5 Jakarta', '81.00', '250000.00', 'Prestasi', NULL, NULL, 'Vokal Grup', 'Kabupaten/Kota', NULL, NULL),
(68, 'Chika Shenaz', 'SMAN 6 Jakarta', '82.50', '250000.00', 'Prestasi', NULL, NULL, 'Seni Lukis', 'Provinsi', NULL, NULL),
(69, 'Agus Sutrisno', 'SMKN 1 Purwokerto', '85.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-101/IK/2026', 'Kementerian Perhubungan'),
(70, 'Bambang Hermawan', 'SMKN 2 Cilacap', '84.50', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-102/IK/2026', 'Kementerian Keuangan'),
(71, 'Candra Wijaya', 'SMAN 1 Kebumen', '88.20', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-103/IK/2026', 'Pemerintah Daerah Prov. Jateng'),
(72, 'Diki Wahyudi', 'SMAN 1 Banyumas', '86.75', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-104/IK/2026', 'Badan Pusat Statistik'),
(73, 'Endah Sulistyo', 'SMAN 2 Purbalingga', '89.10', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-105/IK/2026', 'Kementerian Dalam Negeri'),
(74, 'Farhan Saputra', 'SMKN 1 Tegal', '83.40', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-106/IK/2026', 'Kementerian Perhubungan'),
(75, 'Gilang Ramadhan', 'SMAN 1 Brebes', '82.90', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-107/IK/2026', 'Pemerintah Daerah Prov. Jabar'),
(76, 'Hafiz Ansari', 'SMKN 3 Pekalongan', '85.60', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-108/IK/2026', 'Badan Siber dan Sandi Negara'),
(77, 'Irfan Bachdim', 'SMAN 1 Salatiga', '87.30', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-109/IK/2026', 'Kementerian Pemuda dan Olahraga'),
(78, 'Joni Iskandar', 'SMAN 2 Kudus', '81.20', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-110/IK/2026', 'Pemerintah Daerah Kota Semarang'),
(79, 'Kurniawan Dwi', 'SMAN 1 Magelang', '86.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-111/IK/2026', 'Kementerian BUMN'),
(80, 'Lutfi Hakim', 'SMAN 1 Boyolali', '84.15', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-112/IK/2026', 'Badan Meteorologi Klimatologi Geofisika'),
(81, 'Maman Abdurrahman', 'SMAN 3 Klaten', '83.80', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-113/IK/2026', 'Kementerian Pertahanan'),
(82, 'Nugroho Adi', 'SMKN 1 Wonogiri', '85.90', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-114/IK/2026', 'Kementerian Perindustrian'),
(83, 'Oman Rachman', 'SMAN 1 Sragen', '82.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-115/IK/2026', 'Pemerintah Daerah DIY'),
(84, 'Pratama Arhan', 'SMAN 1 Blora', '88.50', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-116/IK/2026', 'Kementerian Pemuda dan Olahraga'),
(85, 'Qomaruddin', 'SMAN 2 Rembang', '80.50', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-117/IK/2026', 'Kementerian Agama'),
(86, 'Rizky Ridho', 'SMAN 1 Surabaya', '91.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-118/IK/2026', 'Pemerintah Daerah Prov. Jatim'),
(87, 'Sadill Ramdani', 'SMAN 1 Malang', '86.40', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-119/IK/2026', 'Kementerian Perhubungan'),
(88, 'Teuku Umar', 'SMAN 3 Banda Aceh', '85.10', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-120/IK/2026', 'Pemerintah Daerah Prov. Aceh'),
(89, 'Umar Khattab', 'SMAN 1 Riau', '87.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-121/IK/2026', 'Kementerian Hukum dan HAM'),
(90, 'Vicky Nitinegoro', 'SMAN 2 Medan', '83.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-122/IK/2026', 'Pemerintah Daerah Kota Medan'),
(91, 'Wawan Hermawan', 'SMAN 1 Palembang', '84.80', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-123/IK/2026', 'Kementerian Sosial'),
(92, 'Xander Cage', 'SMAN 1 Batam', '89.90', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-124/IK/2026', 'Badan Pengawas Obat dan Makanan'),
(93, 'Yuda Pratama', 'SMAN 3 Bandar Lampung', '85.25', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-125/IK/2026', 'Kementerian ESDM'),
(94, 'Zainuddin MZ', 'SMAN 4 Jakarta', '86.60', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-126/IK/2026', 'Kementerian Agama'),
(95, 'Asep Sunandar', 'SMAN 1 Bandung', '87.80', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-127/IK/2026', 'Pemerintah Daerah Prov. Jabar'),
(96, 'Cecep Gorbachev', 'SMAN 2 Garut', '84.10', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-128/IK/2026', 'Kementerian Dalam Negeri'),
(97, 'Dadang Konelo', 'SMAN 3 Tasikmalaya', '82.30', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-129/IK/2026', 'Badan Pusat Statistik'),
(98, 'Entis Sutisna', 'SMAN 1 Ciamis', '85.50', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-130/IK/2026', 'Kementerian Komunikasi dan Digital'),
(99, 'Gogon Margono', 'SMAN 1 Solo', '81.90', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-131/IK/2026', 'Kementerian Ketenagakerjaan'),
(100, 'Hendrik Ceper', 'SMAN 2 Bogor', '83.00', '250000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-132/IK/2026', 'Kementerian Kesehatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
