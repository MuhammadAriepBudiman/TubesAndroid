-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 03:08 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `nama` varchar(20) NOT NULL,
  `slogan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`nama`, `slogan`) VALUES
('Tech Today', 'Update Everydaym');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tgl_dibuat` datetime NOT NULL,
  `foto` text NOT NULL,
  `foto_thumbnail` text NOT NULL,
  `sumber` text NOT NULL,
  `id_kategori` int(2) NOT NULL,
  `tampil` char(1) NOT NULL DEFAULT '1',
  `klik` int(11) NOT NULL DEFAULT '0',
  `kategori` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `tgl_dibuat`, `foto`, `foto_thumbnail`, `sumber`, `id_kategori`, `tampil`, `klik`, `kategori`) VALUES
(166567645, 'Reuni Inzaghi-Gattuso di Duel Bologna Vs Milan', '<p>Duel Bologna versus&nbsp;<a href="https://www.detik.com/tag/ac-milan">AC Milan</a>&nbsp;jadi reuni&nbsp;<a href="https://www.detik.com/tag/filippo-inzaghi">Filippo Inzaghi</a>&nbsp;dan&nbsp;<a href="https://www.detik.com/tag/gennaro-gattuso">Gennaro Gattuso</a>. Dua mantan teman satu tim itu kini sama-sama jadi pelatih.<br /><br />Milan tandang ke markas Bologna di pekan ke-16 Liga Italia. Dalam pertandingan di Stadio Renato Dall''Ara, Rabu (19/12) dini hari WIB, kedua tim bermain imbang 0-0.<br /><br />Ada pemandangan menarik di pinggir lapangan sebelum pertandingan. Inzaghi dan Gattuso, yang dulu bahu-membahu membela Milan, kini bertemu sebagai lawan.</p>', '2018-12-19 05:06:56', '166567645.jpeg', 'thumbnail_166567645.jpeg', 'https://sport.detik.com/sepakbola/liga-italia/d-4350209/reuni-inzaghi-gattuso-di-duel-bologna-vs-milan', 37, '1', 0, 'Sport'),
(201331163, 'Hati-Hati Barcelona, City Saja Kerepotan Hadapi Lyon', '<p>Di atas kertas,&nbsp;<a href="https://www.detik.com/tag/barcelona">Barcelona</a>&nbsp;lebih diunggulkan ketimbang Lyon di 16 besar Liga Champions. Namun Barcelona diingatkan kalau Lyon tampil bagus selama fase grup.<br /><br /></p>\r\n<div id="vibeInjectorDiv">\r\n<div>&nbsp;</div>\r\n<div id="_forkInArticleAdContainer"><ins>\r\n<div id="beacon_e76cce2581"><img src="https://wtf2.forkcdn.com/www/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=4563&amp;loc=https%3A%2F%2Fsport.detik.com%2Fsepakbola%2Fuefa%2Fd-4350298%2Fhati-hati-barcelona-city-saja-kerepotan-hadapi-lyon&amp;referer=https%3A%2F%2Fsport.detik.com%2F&amp;cb=e76cce2581" alt="" width="0" height="0" /></div>\r\n</ins></div>\r\n</div>\r\n<p>Undian babak 16 besar&nbsp;<a href="https://www.detik.com/tag/liga-champions">Liga Champions</a>&nbsp;mempertemukan Barcelona dengan Lyon. Barcelona akan lebih dulu tandang ke markas Lyon di leg pertama pada 20 Februari sebelum gantian jadi tuan rumah di leg kedua tiga pekan kemudian.<br /><br />Secara&nbsp;<em>head-to-head</em>, Barcelona superior atas Lyon. Enam kali berduel di kompetisi Eropa,&nbsp;<em>Blaugrana&nbsp;</em>mencatat empat kemenangan dan dua hasil imbang.<br /><br />Meski demikian,&nbsp;<a href="https://www.detik.com/tag/lionel-messi">Lionel Messi</a>&nbsp;memperingatkan Barcelona agar tak memandang sebelah mata wakil Ligue 1 itu. Kapten Barcelona itu merujuk pada performa Lyon saat fase grup.</p>', '2018-12-19 05:12:17', '201331163.jpeg', 'thumbnail_201331163.jpeg', 'https://sport.detik.com/sepakbola/uefa/d-4350298/hati-hati-barcelona-city-saja-kerepotan-hadapi-lyon', 37, '1', 0, 'Sport'),
(231703547, 'Begini Hasil Jepretan Tiga Kamera "Leica" Huawei Mate 20 Pro', '<p><a class="inner-link-tag" href="https://indeks.kompas.com/tag/huawei" target="_self">Huawei</a>&nbsp;membenamkan tiga&nbsp;<a class="inner-link-tag" href="https://indeks.kompas.com/tag/kamera" target="_self">kamera</a>&nbsp;utama hasil racikan bersama dengan&nbsp;<a class="inner-link-tag" href="https://indeks.kompas.com/tag/leica" target="_self">Leica</a>&nbsp;pada ponsel&nbsp;<em>flagship</em>&nbsp;terbarunya, yakni&nbsp;<a class="inner-link-tag" href="https://indeks.kompas.com/tag/Mate-20-Pro" target="_self">Mate 20 Pro</a>.&nbsp;</p>\r\n<p>Masing-masing kamera utama memiliki sensor dan lensa dengan sudut pandang (<em>focal length</em>) berbeda, yakni&nbsp;<em>ultra wide</em>&nbsp;(20 megapiksel, lensa f/2.2 setara 16mm&nbsp;<em>full-frame</em>), wide (40 megapiksel, lensa f/1.8 setara 27mm) dan&nbsp;<em>telephoto</em>&nbsp;(8 megapiksel, lensa f/2.4 setara 80mm).</p>\r\n<p>Mate 20 Pro pun diklaim memiliki rentang "zoom optis" hingga 5x dari 16mm ke 80mm. Meski sebenarnya secara teknis bukan lensa&nbsp;<em>zoom&nbsp;</em>yang tertanam, melainkan tiga lensa&nbsp;<em>fixed</em>&nbsp;dengan&nbsp;<em>focal length</em>&nbsp;berbeda.</p>', '2018-12-20 11:15:50', '231703547.jpg', 'thumbnail_231703547.jpg', 'https://tekno.kompas.com/read/2018/12/20/08270077/begini-hasil-jepretan-tiga-kamera-leica-huawei-mate-20-pro', 31, '1', 0, NULL),
(1417431796, 'Elon Musk Uji Coba ''Jalan Tol Bawah Tanah''', '<p><br />Terowongan ini adalah basis dari sistem&nbsp;<em>loop</em>&nbsp;yang merupakan alat transportasi canggih berkecepatan tinggi rekaan Musk. Pembangunan terowongan dikerjakan perusahaan teknik modern Boring Company milik Musk.</p>', '2018-12-20 11:47:11', '1417431796.jpg', 'thumbnail_1417431796.jpg', 'https://www.cnnindonesia.com/teknologi/20181220104550-384-355140/elon-musk-uji-coba-jalan-tol-bawah-tanah', 31, '1', 0, 'Tekno'),
(2096591322, 'Mourinho Manajer Ketiga yang Gagal Ikuti Kesuksesan Ferguson', '<p><strong><a href="https://www.cnnindonesia.com/tag/jose-mourinho" target="_blank" rel="noopener">Jose Mourinho</a></strong>&nbsp;jadi manajer ketiga yang jadi korban pemecatan di&nbsp;<strong><a href="https://www.cnnindonesia.com/tag/manchester-united" target="_blank" rel="noopener">Manchester United</a></strong>&nbsp;lantaran gagal mengikuti kesuksesan Sir Alex Ferguson.<br /><br />Man United masih belum bisa mencari pengganti Ferguson yang memilih pensiun di akhir musim 2012/13. David Moyes, Louis van Gaal, dan kini Mourinho jadi sederet pelatih kaliber yang berakhir tragis.</p>\r\n<p>Manajemen MU sempat membuat keputusan mengejutkan dengan menunjuk Moyes sesaat setelah Fergie memutuskan pensiun dari kursi pelatih di Old Trafford.<br /><br /><br />Sempat bersinar saat memimpin Everton, Moyes akhirnya resmi dipecat MU pada 22 April 2014. Pemecatan Moyes pun dikonfirmasi lewat akun Twitter resmi klub @ManUtd.<br /><br />Moyes tercatat hanya bertahan 10 bulan setelah menggantikan legenda Old Trafford, Sir Alex Ferguson. Pria asal Skotlandia itu didepak setelah MU kalah 0-2 dari mantan klub arahannya, Everton, di Goodison Park.</p>\r\n<p>Klub berjulukan Setan Merah itu pun harus membayar kompensasi sebesar &pound;10 juta atas pemutusan kontrak sepihak.<br /><br />Pihak klub sempat menunjuk Ryan Giggs sebagai pelatih sementara hingga akhir musim sebelum akhirnya merekrut pelatih sarat pengalaman, Louis van Gaal, pada 16 Juli 2014.<br /><br />Mantan pelatih timnas Belanda itu pun hanya mampu bertahan selama dua musim sebelum akhirnya dipecat pada 23 Mei 2016. Bedanya, Van Gaal diputus kontrak di akhir musim atau setelah mempersembahkan gelar Piala FA untuk MU.</p>\r\n<p>Van Gaal dilengserkan dari kursi manajer setelah dinilai tidak cakap dalam menunaikan tugasnya. Ia hanya menuntaskan dua dari tiga tahun kontraknya bersama kubu Setan Merah. Setali tiga uang, pihak klub pun harus memberikan kompensasi tak sedikit untuk mantan manajer Barcelona tersebut.<br /><br />Pada 27 Mei 2017, MU mengumumkan Jose Mourinho sebagai manajer anyar mereka dengan durasi kontrak selama tiga tahun. Manajer asal Portugal itu sukses mempersembahkan tiga gelar di musim pertamanya termasuk Liga Europa dan Piala Liga Inggris 2016/2017.<br /><br />Di musim keduanya (2017/18), Mourinho malah gagal meraih gelar. Performa negatif Mou bersama Man United berlanjut di awal musim 2018/19. Paul Pogba dan kawan-kawan tercecer di peringkat keenam hingga pekan 17 Liga Inggris atau terpaut 19 poin dari Liverpool yang berada di puncak klasemen.</p>\r\n<p>Kesabaran manajemen habis setelah Man United ditaklukkan Liverpool 3-1 di Stadion Anfield, Minggu (16/12). Dua hari berselang Mou pun dipecat dari jabatannya.<br /><br />Sederet prestasi yang dikoleksi Mourinho, termasuk tiga trofi Liga Champions, tak bisa ditularkan kala melatih Manchester United. Ia menjadi pelatih ketiga yang dipecat MU setelah gagal mengikuti&nbsp;masa kejayaan&nbsp;Ferguson.</p>', '2018-12-18 22:39:46', '2096591322.jpg', 'thumbnail_2096591322.jpg', 'https://www.cnnindonesia.com/olahraga/20181218180144-142-354638/mourinho-manajer-ketiga-yang-gagal-ikuti-kesuksesan-ferguson', 37, '1', 0, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`) VALUES
(31, 'Tekno'),
(37, 'Sports'),
(38, 'Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `fk_id_artikel` varchar(100) NOT NULL,
  `komentar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `fk_id_artikel`, `komentar`) VALUES
(1, '1323861062', 'Iyaaa'),
(2, '812213432', 'ok'),
(3, '392165393', 'good'),
(4, '812213432', 'bagus sekali artikelnya'),
(5, '812213432', 'iya'),
(6, '2096591322', 'OKe\n'),
(7, '1739315379', 'bagus sekali kontennya'),
(8, '1739315379', 'bagus sekali kontennya'),
(9, '1739315379', 'bagus sekali kontennya'),
(10, '1739315379', 'bagus sekali kontennya'),
(11, '1739315379', 'bagus sekali kontennya'),
(12, '1739315379', 'bagus sekali kontennya'),
(13, '1739315379', 'bagus sekali kontennya'),
(14, '1739315379', 'bagus sekali kontennya'),
(15, '166567645', 'hay'),
(16, '166567645', 'oke'),
(17, '201331163', 'bagus kontennya'),
(18, '201331163', 'iya');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `pass`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
