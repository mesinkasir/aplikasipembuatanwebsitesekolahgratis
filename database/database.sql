-- phpMyAdmin SQL Dump
-- version 5.0.0-alpha1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 10:50 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive, 1 = Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `status`) VALUES
(2, 'Profile', 'Profile mengenai sekolah\r\nSejarah , Visi Misi , Kepala Sekolah , Staff Guru , dll', 1),
(3, 'Info', 'Informasi mengenai sekolah contoh : PPDB , kurikulum , fasilitas , pengumuman , agenda dan berita sekolah', 1),
(4, 'Sadasd', '', 0),
(5, 'Update', 'Artikel dan post bebas untuk update informasi pada website sekolahan.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `post` longtext NOT NULL,
  `category_id` int(30) NOT NULL,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= for review, 1= published',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_published` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `category_id`, `img_path`, `status`, `date_updated`, `date_published`) VALUES
(4, 'Berita Sekolah', '&lt;p&gt;&lt;/p&gt;&lt;h1&gt;&lt;b&gt;Berita Sekolah&lt;/b&gt;&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Update informasi berita sekolah pada page ini.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 3, '1606470600_pembuatan website sekolahan.jpg', 1, '2020-11-29 10:36:22', '2020-11-29 10:36:00'),
(5, 'Visi Misi', '&lt;h2&gt;&lt;b&gt;Visi Misi Sekolah&lt;/b&gt;&lt;/h2&gt;&lt;p&gt;masukan visi misi sekolah disini.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 2, '1606470480_daring belajar online metode terbaik.jpg', 1, '2020-11-29 10:42:50', '2020-11-29 10:42:00'),
(7, 'Profile Guru', '&lt;p&gt;&lt;h3&gt;&lt;b&gt;Profile Guru&lt;/b&gt;&lt;/h3&gt;&lt;/p&gt;&lt;p&gt;Masukan Profile Guru pada menu ini.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 2, '1606470420_pembuatan website sekolah lengkap PPDB online.jpg', 1, '2020-11-29 10:43:36', '2020-11-29 10:43:00'),
(8, 'Kepala Sekolah', '&lt;p&gt;&lt;/p&gt;&lt;h1&gt;&lt;b&gt;Kepala Sekolah&lt;/b&gt;&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Fitur untuk penjelasan mengenai kepala sekolah.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 2, '1606470840_img-3_0.png', 1, '2020-11-29 10:44:25', '2020-11-29 10:44:00'),
(9, 'Sejarah', '&lt;p&gt;&lt;/p&gt;&lt;h1&gt;&lt;b&gt;Sejarah Sekolah&lt;/b&gt;&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Ini adalah fitur untuk penjelasan sejarah sekolah.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 2, '1606470900_web sekolah.jpg', 1, '2020-11-29 10:43:03', '2020-11-29 10:43:00'),
(10, 'Fasilitsas', '&lt;p&gt;&lt;/p&gt;&lt;h1&gt;&lt;b&gt;Fasilitas Sekolah&lt;/b&gt;&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Ini adalah menu untuk fasilitas sekolah di isi pada halaman ini.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 3, '1606471140_pembayaran sekolah SPP.jpg', 1, '2020-11-29 10:41:42', '2020-11-29 10:41:00'),
(11, 'PPDB Online', '&lt;p&gt;&lt;/p&gt;&lt;h1&gt;&lt;b&gt;PPDB Online&lt;/b&gt;&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Fitur untuk penjelasan mengenai PPDB online sekolah.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 3, '1606471200_schools.jpg', 1, '2020-11-29 10:43:59', '2020-11-29 10:43:00'),
(12, 'Kurikulum', '&lt;p&gt;&lt;/p&gt;&lt;h1&gt;&lt;b&gt;Kurikulum Sekolah&lt;/b&gt;&lt;/h1&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Menu untuk penjelasan informasi kurikulum sekolah.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;', 3, '1606471260_img-3_0.png', 1, '2020-11-29 10:44:11', '2020-11-29 10:44:00'),
(13, 'Goes to Jogja', '&lt;h3&gt;&lt;b&gt;Rekreasi Perpisahan Kelas 9&lt;/b&gt;&lt;/h3&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;p&gt;Ini adalah update menu untuk berita sekolah.&lt;/p&gt;&lt;p&gt;&lt;i&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/i&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;', 5, '1606471320_go online.jpg', 1, '2020-11-29 10:44:40', '2020-11-29 10:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_img`
--

CREATE TABLE `post_img` (
  `id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `fname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `about` longtext NOT NULL,
  `blog_name` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `contact`, `email`, `address`, `about`, `blog_name`, `date_updated`) VALUES
(1, '+62856461047478', 'creativebydre@gmail.com', '', '&lt;p align=&quot;center&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:28px;&quot;&gt;About us&lt;/span&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;br&gt;&lt;b&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;CMS Sekolah Axcora&lt;/span&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;adalah aplikasi untuk membuat website sekolah, dedikasi kami untuk dunia pendidikan indonesia, dengan develope menggunakan php dan mysql database memudahkan pihak admin web sekolah dalam kebutuhan untuk membuat website sekolah via CMS content management atau software aplikasi pembuatan website sekolah gratis ini. Walau gratis anda juga mendapatkan fitur yang lengkap dalam kebutuhan membuat website sekolah anda, tersedia fitur grup kategori untuk pengelompokan konten dan informasi mengenai sekolah , dan post untuk update dan mengisi informasi sekolah anda secara detail pada fitur ini. dan tentunya dilengkapi dengan login menu fitur dalam kebutuhan web admin untuk proteksi data.&lt;br&gt;&lt;br&gt;Gunakan CMS Sekolah axcora technology untuk kebutuhan pengembangan website sekolah anda, dan dapat didownload secara gratis hingga dikembangkan lagi sesuai kebutuhan anda, karean software aplikasi pembuatan website sekolah gratis ini bersifat open source code dan anda dapat dengan bebas melakukan penambahan dan customise koding sesuai pengembangan dan kebutuhan website untuk sekolah.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;b&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;About Axcora school apps&lt;/span&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;&lt;p&gt;Solusi terbaik dalam kebutuhan applikasi dan teknologi sekolah khusus nya pada digital system informasi, dengan axcora technology memudahkan dalam kebutuhan sekolahan untuk membuat website dengan mudah, selain itu kami menyediakan aplikasi sekolah dan pembuatan website sekolah tentunya dengan modern desain untuk kebutuhan elegan dan mewah nya sebuah website sekolah dan sekaligus sangat informatif dengan hadirnya web app sekolah ini. Gunakan layanan kami untuk kebutuhan sekolah anda.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;Daftar Aplikasi Axcora Apps Technology&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Aplikasi pelajaran online dengan kebutuhan untuk melakukan E-learn secara online .&lt;/li&gt;&lt;li&gt;Aplikasi absensi online untuk kebutuhan absensi siswa.&lt;/li&gt;&lt;li&gt;Aplikasi penilaian rapot online untuk kebutuhan penilaian rapot siswa include dengan proteksi password&lt;/li&gt;&lt;li&gt;Aplikasi website all in one : desain landing page dan dengan fitur yang lengkap serta area siswa untuk upload nilai dan hingga pembayaran spp dengan password proteksi dan tentunya PPDB online yang memungkinkan peserta mengisi form dan upload file plus backend dan frontend APK android, aplikasi CMS CMF untuk web admin dalam kebutuhan update informasi dan upload file ke website secara langsung.&lt;/li&gt;&lt;li&gt;Website modern dengan singe page application atau progresive web apps semakin modern dan tentunya dengan technology terbaru untuk pembuatan website informasi sekolah dengan develope menggunakan angular maupun gatsby js dan jekyll untuk modern technology.&lt;/li&gt;&lt;li&gt;Aplikasi sekolah online lengkap fitur dengan kebutuhan untuk absensi siswa, pelajaran , kelas , kenaikan kelas, penerimaan dan pendaftaran siswa baru , pembayaran sekolah mulai dari SPP dan pembayaran lain, dilengkapi dengan multi login untuk admin , akuntansi atau tata usaha , staff guru , murid, dengan berbagai kelengkapan fitur aplikasi untuk sekolah online.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Axcora technology berusaha memberikan yang terbaik untuk dunia pendidikan, saat nya revolusi digital sekolah anda bersama kami.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;Dokumentasi Penggunaan Axcora School Web Apps&lt;br style=&quot;font-size:24px;&quot;&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;blockquote&gt;&lt;p&gt;Untuk menggunakan nya pastikan anda sudah melakukan installasi pada localhost maupun hosting anda, dan untuk memulai akses halaman login terlebih dahulu, masukan user dan password anda, selanjutnya anda akan mengakses aplikasi pembuatan website ini.&lt;br&gt; &lt;/p&gt;&lt;p&gt;&lt;b&gt;ALUR DAN SKEMA&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;System dan alur schema yang sudah kami buat ini sudah kami pikirkan akan kemudahan anda sebagai pengguna menggunakan aplikasi pembuatan website axcora school technology ini, oleh karena itu kami hanya memberikan dua kategori grup yang sudah terskema agar website lebih informatif , agar memudahkan untuk update informasi saja. dan team developer kami membagi dua kategori untuk kemudahan update data, dan jika anda ingin menambahkan tinggal klik pada kategori dan tambahkan jika anda ingin menambahkan kategori post. selanjutnya untuk kebutuhan di luar skema anda dapat mengelompokan pada kategori update , grup ini berfungsi untuk menampilkan blog update atau artikel umum diluar skema yang kami buat.&lt;br&gt;Jika menggunakan standard kategori kami maka anda tinggal masuk dan pilih post fitur untuk melakukan update data, pada post fitur sudah kami buat yang tinggal anda edit saja untuk kemudahan dalam kecepatan pembuatan website sekolah dalam penerpan nya. berikut adalah alur dari kategori.&lt;/p&gt;&lt;p&gt;&lt;b&gt;GRUP KATEGORI&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Profile : berisi mengenai profile sekolah seperti sejarah, visi misi, kepala sekolah, dan guru staff serta kebutuhan profile untuk sekolah lain nya bisa anda kelompokan pada fitur kategori ini&lt;br&gt;Informasi / Info : adalah grup untuk update mengenai informasi sekolah seperti fasilitas, kurikulum , PPDB , pengumuman agenda dan berita sekolah.&lt;br&gt;Update : artinya ini adalah grup bebas untuk update mengenai berbagai kebutuhan layaknya sebuah blog untuk memberikan informasi ke pengunjung website sekolah anda.&lt;/p&gt;&lt;p&gt;&lt;b&gt;POST ARTIKEL&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Setelah informasi mengenai kategori kini anda dapat memasukan dan udate atau edit post yang sudah kami sediakan untuk kemudahan dalam membuat website sekolah anda, caranya masuk pada fitur post terlebih dahulu , selanjutnya klik buat post baru dan masukan judul dari post, kemudian isi post sesuai kebutuhan untuk melakukan update informasi, dan jangan lupa untuk mengelompokan berdasarkan kategori sesuai kebutuhan anda, dan agar website sekolah semakin menarik anda dapat upload foto pada gallery foto file yang berada di bawah grup kategori post. setelah selesai lakukan penyimpanan data dengan klik save, maka post akan tersimpan tetapi belum tampil pada halaman website untuk filter anda, untuk memunculkan post artikel cari post anda dan klik tombol publish now, maka data secara otomatis akan melakukan update.&lt;/p&gt;&lt;p&gt;&lt;b&gt;KONFIGURASI&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Langkah selanjutnya masuk pada menu pengaturan konfigurasi - ubah nama sekolah axcora school dengan nama sekolah anda dan juga untuk email serta contact nya. dan halaman about adalah halaman yang menampilkan display ini, untuk terbaik copy text ini dan pastekan ke text editor anda untuk pegangan dokumentasi, atau cek video kami. Fungsi mengganti fitur konfigurasi untuk mengganti navbar atas yang secara stadnard masih menggunakan nama aplikasi serta kontak kami untuk di rubah sesuai dengan kontak dari sekolah anda.&lt;/p&gt;&lt;p&gt;&lt;b&gt;MENGGANTI DISPLAY HALAMAN UTAMA&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Untuk kebutuhan mengganti tema pada halaman utama pastikan anda memiliki skill kodding untuk melakukan perubahan tema , atau anda yang belum memiliki basic koding bisa mengikuti petunjuk dari kami untuk melakukan tema pada halaman homepage website sekolah. buka file source code aplikasi pembuatan website sekolah gratis ini kemudian cari file dengan nama axcora.php dan kemudian edit dengan text editor atau notepad , cara nya klik kanan dan open with spesifict program dan pilih notepad, selanjutnya file akan terbuka, dan kini anda dapat melakukan editing dan menghapus bahkan mengganti gambar sesuai dengan source anda. pada halaman tema sudah tersedia keterangan untuk menghapus berbagai bidang.atau untuk kemudahan bisa edit text sesuai kebutuhan, untuk mengganti gambar, maka pastikan sudah melakukan upload gambar pada website atau ambil url dari web lain, caranya pada fitur &amp;lt;img src=&quot;isikan url gambar disini&quot; &amp;gt; cukup lakukan seperti itu maka gambar otomatis akan dirubah ke gambar sesuai keinginan anda.&lt;/p&gt;&lt;p&gt;&lt;b&gt;KONFIGURASI SEO GOOGLE&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Selanjutnya untuk kebutuhan akan search engine optimization agar website dapat dirayapi dengan cepat oleh google maka langkah awal, wajib mendaftarkan ke google web master dan insert kode html file ke area header.php pada source code file dan ubah &amp;lt;meta content=&quot; isi dengan deskripsi informasi keterangan dari website sekolah anda disini &quot; name=&quot;description&quot;&amp;gt; serta &amp;lt;title&amp;gt;SMP Favorit atau isikan dengan judul ketika diakses google&amp;lt;/title&amp;gt; setelah selesai simpan.&lt;/p&gt;&lt;p&gt;&lt;b&gt;SELESAI&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;small class=&quot;text-muted-3&quot;&gt;&lt;i&gt;Dan jangan lupa jika aplikasi ini sangat berguna bagi anda, sebarkan dan bagikan secara luas agar sekolah lain nya dapat menggunakan dan membuat website secara gratis dengan mudah nya, kami juga menerima donasi jika anda memberikan apresiasi akan kinerja dan dukungan anda untuk developer kami via &lt;b&gt;bank BCA No rek : 0181884109 Atas nama Suci Chanifah&lt;/b&gt; , dukungan anda ini sangat berguna bagi kami untuk membantu mengembangkan berbagai project aplikasi kami lain nya dan tentunya bersifat gratis serta open source code untuk memudahkan customise sesuai kebutuhan sekolah.&lt;/i&gt;&lt;/small&gt;&lt;/p&gt;&lt;p&gt;&lt;small class=&quot;text-muted-3&quot;&gt;&lt;br&gt;&lt;/small&gt;&lt;/p&gt;&lt;p&gt;&lt;small class=&quot;text-muted-3&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;Terima kasih telah menggunakan axcora school apps untuk kebutuhan pembuatan website sekolah gratis anda.&lt;/span&gt;&lt;br&gt;&lt;/small&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;&lt;/blockquote&gt;', 'Axcora School', '2020-11-29 10:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = admin',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(4, 'Axcora School Admin', 1, 'admin', '123456', 1, '2020-11-29 10:32:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_img`
--
ALTER TABLE `post_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_img`
--
ALTER TABLE `post_img`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

