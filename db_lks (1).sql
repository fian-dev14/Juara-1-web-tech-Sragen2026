-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2026 at 10:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lks`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Alam', 'alam', '2026-02-10 19:44:45', '2026-02-10 19:44:45'),
(2, 'Sejarah', 'sejarah', '2026-02-10 19:44:45', '2026-02-10 19:44:45'),
(3, 'Religi', 'religi', '2026-02-10 19:44:45', '2026-02-10 19:44:45'),
(4, 'Kuliner', 'kuliner', '2026-02-10 19:44:45', '2026-02-10 19:44:45'),
(9, 'Taman', 'taman', '2026-02-10 19:54:08', '2026-02-10 19:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `location_link` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `category_id`, `name`, `image_url`, `rating`, `location_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 'Taman Sukowati', '1770780609.webp', '4,9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.390577705641!2d111.00454241062695!3d-7.421954392557613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a035b81f1bb5d%3A0x5f66140bd5a738d9!2sTaman%20Sukowati%20Sragen!5e0!3m2!1sid!2sid!4v1770697950035!5m2!1sid!2sid', 'Taman Sukowati di Sragen adalah ruang terbuka hijau (RTH) populer yang dikelola Disperkimtaru, sering menjadi tempat rekreasi keluarga yang teduh. Berita terkini mencakup pemeliharaan rutin, kegiatan tebar benih ikan di embung pada Mei 2024, serta keluhan pengunjung mengenai rusaknya beberapa fasilitas taman. \r\n\r\nHarga Tiket : Gratis\r\nJam Operasional : 08,00-17,00\r\nLokasi : Sine, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57213', '2026-02-10 19:46:03', '2026-02-11 00:51:38'),
(2, 9, 'Alun Alun Sragen', '1770779019.jpg', '4,6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.338756156617!2d111.02088877500138!3d-7.427713192582954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a0336a04b023f%3A0x18b6c335158b6b45!2sAlun%20Alun%20Sragen!5e0!3m2!1sid!2sid!4v1770698179672!5m2!1sid!2sid', 'Alun-Alun Sasana Langen Putra Sragen, yang terletak di pusat kota berseberangan dengan kantor Bupati, telah bertransformasi menjadi ruang publik modern dan destinasi favorit warga. Direnovasi dengan fasilitas kursi taman, air mancur kembar, dan tata cahaya menawan, alun-alun ini menjadi pusat keramaian, kuliner, serta perayaan hari besar. \r\n\r\nHarga Tiket : Gratis\r\nJam Operasional : 24 Jam\r\nLokasi : Jl. Sukowati No.2, Mageru, Sragen Tengah, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57211', '2026-02-10 20:03:39', '2026-02-10 20:03:39'),
(3, 2, 'Obyek Wisata Bayanan', '1770780754.png', '4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3955.5891268148275!2d111.12002791062771!3d-7.510526492470841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e79f675c45e4f41%3A0x4bbe74625c8e6630!2sPemandian%20Air%20Panas%20Bayanan!5e0!3m2!1sid!2sid!4v1770697552915!5m2!1sid!2sid', 'Pemandian Air Panas Bayanan di Sambirejo, Sragen, adalah destinasi wisata populer yang terkenal dengan kandungan belerang alaminya, dipercaya berkhasiat meredakan rematik dan penyakit kulit. Pasca-revitalisasi senilai Rp8 miliar, tempat ini menawarkan fasilitas modern seperti kolam renang anak dan kamar rendam privat, menjadikannya rujukan terapi kesehatan, terutama saat libur Nataru. \r\n\r\nHarga Tiket : 6,000-10,000/orang\r\nJam Operasional : 08.00 - 17.00\r\nLokasi : F4RC+H8, Gamping, Jambeyan, Kec. Sambirejo, Kabupaten Sragen, Jawa Tengah 57293', '2026-02-10 20:32:34', '2026-02-10 20:34:17'),
(5, 9, 'Taman Krido Anggo Sragen', '1770781398.png', '4,5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.354595530744!2d111.02324004401137!3d-7.425953473523077!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a03374b869a1b%3A0x5ee3a3a8dd607196!2sTaman%20Kridoanggo%20Sragen!5e0!3m2!1sid!2sid!4v1770696810692!5m2!1sid!2sid', 'Wisata publik di Sragen satu ini mengusung konsep ruang terbuka yang hijau dan murah meriah. Wisata ini sangat nyaman dan cocok buat kamu untuk liburan di akhir bulan. Secara gitu kan tanggal tua ya, beberapa kantong orang mulai menipis tapi hasrat untuk berlibur selalu hadir hihihi.\r\n\r\nWisata ini juga recommended kok buat kamu yang pengen ngajak anak-anak bermain di luar ruangan. Lokasinya ada di pusat kota, tepatnya di Jl. Sukowati, Dusun Kebayanan Krajoyok, Sragen Wetan, Kecamatan Sragen, Kabupaten Sragen, Jawa Tengah. Sangat dekat dengan kantor Bupati Sragen, cuma sekitar 8 menit saja jika berjalan kaki. Kalau dari alun-alun Sragen kamu hanya perlu berjalan sekitar 7 menit saja dengan melalui Jl. Raya Ngawi – Solo menuju lokasi wisata tersebut.\r\n\r\nHarga Tiket : Gratis\r\nJam Operasional : 24 Jam\r\nLokasi : Jl. Sukowati No.488, Dusun Kebayanan Krajoyok, Sragen Wetan, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57211', '2026-02-10 20:43:18', '2026-02-10 20:43:18'),
(6, 1, 'Sendang Kun Gerit', '1770781626.png', '4,7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.447374547457!2d110.85170677500125!3d-7.4156375925947104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a0f0e4de2c921%3A0xb3e808e6b680b3a!2sWisata%20Sendang%20Kun%20Gerit!5e0!3m2!1sid!2sid!4v1770693831893!5m2!1sid!2sid', 'Kolam renang di sini mengusung konsep sendang atau pemandian dari mata air. Oleh karena itu, tidak heran jika kualitas airnya sangat segar. Tentunya lengkap dengan wahana, seperti ember tumpah, kolam busa, dan perosotan.\r\n\r\nDestinasi wisata ini juga menyediakan penginanan dan glamping yang bisa dibooking oleh wisatawan jika ingin menghabiskan waktu lebih lama. Apalagi harga menginap per malamnya juga sangat murah, yakni mulai dari Rp25.000 saja, sudah termasuk sarapan dan kamar mandi pribadi.\r\n\r\nTak hanya berenang, di Sendang Kun Gerit, wisatawan juga bisa mencicipi aneka kuliner yang tersedia. Sudah pasti harganya juga sangat terjangkau dengan pilihan kuliner yang bervariasi.\r\n\r\nHarga camilan dan minuman mulai dari Rp5.000, sedangkan harga makanan berat mulai dari Rp10.000. Selain itu, ada juga paket reservasi yang dapat disesuaikan dengan jumlah tamu dan kebutuhan para wisatawan.\r\n\r\nHarga Tiket : 5,000 (umum), 15,000 (akses semua wahana)\r\nJam Operasional : 07,00-23,00\r\nLokasi : Jl. Raya Gemolong - Plupuh KM 3.5, Dukuh Sidorejo RT 02, Desa Jatibatur, Kecamatan Gemolong, Kabupaten Sragen, Jawa Tengah 57274.', '2026-02-10 20:47:06', '2026-02-10 20:48:06'),
(7, 2, 'Museum Sangiran', '1770781663.jpg', '4.8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31648.519413088958!2d110.81950510637083!3d-7.458069773400269!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a11d3e57214d9%3A0xb8e15b773c8a3976!2sMuseum%20Manusia%20Purba%20Sangiran!5e0!3m2!1sid!2sid!4v1770691989475!5m2!1sid!2sid', 'Museum Manusia Purba Sangiran atau Museum Sangiran adalah museum arkeologi yang terletak di dua kabupaten, yaitu Sragen dan Karanganyar. Memiliki lima klaster, empat di antaranya terletak di Kabupaten Sragen, sedangkan satu klaster terletak di Kabupaten Karanganyar.\r\n\r\nSaat ini, lima klaster museum di kawasan Museum Manusia Purba Sangiran dikelola oleh Museum dan Cagar Budaya, Kementerian Kebudayaan Republik Indonesia.\r\n\r\nMuseum Sangiran berawal dari Museum Plestosen yang dibangun pada 1974, yang digunakan sebagai tempat menampung temuan fosil di kawasan Sangiran. Pada 1983, dibangun museum yang lebih luas karena ukuran Museum Plestosen yang kecil tidak sanggup lagi menampung temuan-temuan yang makin melimpah. Museum tersebut dinamakan Museum Situs Sangiran yang dibangun di Dusun Ngampon, Desa Krikilan, Kecamatan Kalijambe, Kabupaten Sragen.\r\n\r\nHarga Tiket : 8,000 (domestik), 15,000 (mancanegara)', '2026-02-10 20:47:43', '2026-02-10 20:47:43'),
(8, 3, 'Masjid Al Falah', '1770781943.jpg', '5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.3301999772657!2d111.01472811062696!3d-7.428663592551054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a034923ec44eb%3A0x2ba32535af52053b!2sMasjid%20Raya%20Al%20Falah%20Sragen!5e0!3m2!1sid!2sid!4v1770781866440!5m2!1sid!2sid', 'Masjid Raya Al Falah Sragen bukan sekadar tempat ibadah biasa, melainkan pusat pelayanan umat yang mengusung konsep \"Masjid Ramah Segalanya\". Berlokasi strategis di pusat kota, tepat di seberang Stasiun Kereta Api Sragen, masjid ini menjadi oase bagi jemaah dan musafir selama 24 jam penuh. \r\n\r\nDidirikan sejak tahun 1956, masjid ini telah melalui berbagai periode kepengurusan hingga mencapai puncaknya pada transformasi manajemen profesional mulai tahun 2016. Di bawah kepemimpinan Ustaz Ir. Khusnadi Ikwani, masjid ini menerapkan filosofi \"Saldo Nol\" (atau bahkan pernah mencapai minus), di mana seluruh dana infak dan sedekah segera disalurkan kembali dalam bentuk fasilitas dan layanan nyata bagi jemaah, alih-alih ditimbun di rekening. \r\n\r\nHarga Tiket : Gratis\r\nJam Operasional : 24 Jam\r\nLokasi : Jl. Sukowati, Kebayan 3, Sragen Tengah, Kec. Sragen, Kabupaten Sragen, Jawa Tengah 57212', '2026-02-10 20:52:03', '2026-02-10 20:52:23'),
(10, 3, 'Taman Doa Santa Maria', '1770782643.webp', '5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.12276295292!2d110.98770211062612!3d-7.340108292637894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a06b6debb825f%3A0xefdf665e9c9e936d!2sTaman%20Doa%20Santa%20Perawan%20Maria%20di%20Fatima%2C%20Ngrawoh%2C%20Sragen!5e0!3m2!1sid!2sid!4v1770782058848!5m2!1sid!2sid', 'Taman Doa Ngrawoh merupakan salah satu destinasi wisata rohani Katolik di Kabupaten Sragen yang mulai berdiri sejak tahun 2017. Terletak sekitar 12 kilometer dari pusat kota, taman doa ini memiliki luas sekitar 1,4 hektare. Cikal bakal keberadaan taman doa ini bermula pada tahun 1967, ketika Lingkungan Ngrawoh terbentuk dan pemerintah desa setempat menyerahkan sebidang tanah untuk pembangunan tempat ibadah.\r\n\r\nPada tahun 1967 tersebut, terbentuk komunitas awal sebanyak 126 umat dari 35 keluarga. Pemerintah desa kemudian memberikan lahan seluas kurang lebih 7.500 meter persegi untuk pendirian kapel atau gereja. Pada tahun 1975, pemerintah desa juga memberikan dana sebesar Rp75.000.000,- untuk pembangunan Kapel Ngrawoh, yang kemudian diberkati oleh R.D. St. Suhartono pada tanggal 21 Juni 1976.\r\n\r\nGagasan untuk membangun tempat ziarah di lokasi ini mulai muncul pada tahun 2010. Setahun kemudian, dibentuklah panitia pembangunan tahap pertama, yang ditandai dengan pemberkatan peletakan batu pertama oleh Uskup Agung Semarang, Johannes Pujasumarta. Taman doa ini menjalani empat tahap proses pembangunan.\r\n\r\nTahap pertama (2011–2014) mencakup pembangunan Kapel Adorasi, tempat devosi, dan elemen taman pendukung. Selanjutnya, tahap kedua dimulai pada tahun 2015 dengan konsentrasi pekerjaan pada penataan lahan, galian, tanah urug, pasang, dan plester beton. Tahap ketiga dimulai tahun 2016 dengan fokus kerja pada ruang persiapan transit, Kapel Santa Maria dan Santo Yosef, Makam Yesus, MCK, dan ruangan lainya.\r\n\r\nTahap akhir adalah tahap keempat yang dimulai pada tahun 2017. Beberapa pekerjaan pada tahap ini antara lain halaman parkir, kolam pertobatan, gerbang Alfa dan Omega, taman, dan finishing. Taman doa ini mampu menarik wisatawan dan menciptakan lapangan kerja seperti pedagang di pasar sekitar.\r\n\r\nHarga Tiket : Gratis \r\nJam Operasional : 24 Jam\r\nLokasi : Ngrawoh, Pilangsari, Kec. Gesi, Kabupaten Sragen, Jawa Tengah 57262', '2026-02-10 20:56:09', '2026-02-10 21:04:03'),
(11, 2, 'Gunung Kemungkus', '1770782590.jpg', '4,4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.090430263135!2d110.82683031062626!3d-7.343741692634313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a094056d678c3%3A0x3c78733bd8e6de17!2sGunung%20Kemukus!5e0!3m2!1sid!2sid!4v1770782311060!5m2!1sid!2sid', 'Gunung Kemukus adalah objek wisata religi dan rekreasi keluarga yang terletak di Desa Pendem, Kecamatan Sumberlawang, Kabupaten Sragen, Jawa Tengah. Meskipun disebut \"gunung\", tempat ini sebenarnya merupakan sebuah bukit setinggi sekitar 300 meter di atas permukaan laut yang berada di tepi aliran Waduk Kedung Ombo.\r\n\r\nTerdapat makam Pangeran Samudro, putra dari raja terakhir Majapahit, yang dikenal sebagai salah satu penyebar agama Islam di Jawa. Peziarah biasanya memadati lokasi ini pada malam Jumat Pon dan Jumat Kliwon.\r\n\r\nHarga Tiket : 5,000-10,000\r\nJam Operasional : 24 Jam\r\nLokasi : Soko, Kebayanan II, Pendem, Kec. Sumberlawang, Kabupaten Sragen, Jawa Tengah 57272', '2026-02-10 21:03:10', '2026-02-10 21:03:10'),
(12, 1, 'Kedung Grujug', '1770782888.png', '4,1', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.9699117244086!2d110.82220847477468!3d-7.357269292651719!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a0e8cb3b61179%3A0x4bf83681579c213!2sKedung%20Grujug!5e0!3m2!1sid!2sid!4v1770782763021!5m2!1sid!2sid', 'Kedung Grujug adalah destinasi wisata air terjun tersembunyi yang terletak di Desa Doyong, Kecamatan Miri, Kabupaten Sragen, Jawa Tengah. Tempat ini dikenal sebagai \"surga tersembunyi\" bagi para pemancing dan wisatawan yang mencari suasana alam yang tenang.\r\n\r\n Air terjun mini setinggi kurang lebih 3 meter dengan tebing batu yang memiliki pola unik, menyerupai situs purbakala atau jejak pantai purba. Aliran airnya merupakan bagian dari hulu Kedung Cumpleng yang bermuara di Waduk Kedung Ombo.\r\n\r\nHarga Tiket : 5,000\r\nJam Operasional : 07,00-18,00\r\nLokasi : Sendang boto, Soko, Kec. Miri, Kabupaten Sragen, Jawa Tengah 57276', '2026-02-10 21:08:08', '2026-02-10 21:08:08'),
(13, 9, 'Gemolong Edupark', '1770783460.webp', '3,5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.6385512874886!2d110.82693657748918!3d-7.394335973575107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a0ef2af2a8a4d%3A0x85024d844d389e54!2sTaman%20Edupark!5e0!3m2!1sid!2sid!4v1770783263234!5m2!1sid!2sid', 'Gemolong Edupark adalah ruang terbuka hijau (RTH) berbasis edukasi dan rekreasi yang terletak di pusat Kecamatan Gemolong, Kabupaten Sragen. Taman seluas 1,6 hektar ini menjadi destinasi wisata keluarga populer karena aksesnya yang gratis dan fasilitasnya yang cukup lengkap.\r\n\r\nHarga Tiket : Gratis\r\nJam Operasional : 24 Jam \r\nLokasi : Dusun 2, Gemolong, Kec. Gemolong, Kabupaten Sragen, Jawa Tengah 57274', '2026-02-10 21:17:40', '2026-02-10 21:17:40'),
(14, 3, 'Makam Joko Tingkir', '1770783658.jpg', '3,4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.0543887503172!2d110.89730872477577!3d-7.459235542552173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a100a36eea75b%3A0x5db5fbd65ed2e9a0!2sMakam%20Sultan%20Hadiwijaya%20-%20Jaka%20Tingkir!5e0!3m2!1sid!2sid!4v1770783588423!5m2!1sid!2sid', 'Makam Joko Tingkir (Sultan Hadiwijaya), pendiri Kesultanan Pajang, diyakini berada di beberapa lokasi, namun situs yang paling utama dan telah ditetapkan sebagai cagar budaya terletak di Kabupaten Sragen\r\n\r\nHarga Tiket : Gratis\r\nJam Operasional : 24 Jam \r\nLokasi : Butuh, RT.07/RW.02, Gedongan, Kec. Plupuh, Kabupaten Sragen, Jawa Tengah 57283', '2026-02-10 21:20:58', '2026-02-11 00:51:14');

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
(4, '200_02_11_020702_create_categories_table', 1),
(5, '2026_02_09_102850_create_destinations_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$6uF2rdGVosNBf216Qet7yOaS02q9Q/S2dpHQub6mzsDof5pmOiX3q', NULL, '2026-02-10 19:45:27', '2026-02-10 19:45:27'),
(2, 'Admin', 'test@test', NULL, '$2y$12$m/yGcdlrlsht3pBn3CeZoeeeSs4acn/CuIkFcXrfyShgoDJzDOwtK', NULL, '2026-02-10 21:24:23', '2026-02-10 21:24:23'),
(3, 'Admin', 'admin1@gmail.com', NULL, '$2y$12$wNX2aTsITh2xNrjAWrE5tu9659crduf1wnLWBkSE7plUYstdeVc1a', NULL, '2026-02-10 23:53:19', '2026-02-10 23:53:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinations_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
