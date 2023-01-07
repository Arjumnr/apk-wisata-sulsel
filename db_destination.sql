-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2023 pada 03.52
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
-- Database: `db_destination`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `destination_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `comment`, `destination_id`, `user_id`) VALUES
(8, 'Tempat Wisata yang bagus', 8, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contents`
--

CREATE TABLE `contents` (
  `id` int(1) NOT NULL,
  `setting` enum('profile','help') NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contents`
--

INSERT INTO `contents` (`id`, `setting`, `content`) VALUES
(11, 'help', '<h2>NFT Bidding Terms & Condition of Nuron</h2>\n                    <p>It could be a house, or a painting such as the Mona Lisa, which is one of a kind. You can\n                        take a photo of the painting or buy a print but there will only ever be one original\n                        painting.\n\n                        NFTs are \"one-of-a-kind\" assets in the digital world that can be bought and sold like any\n                        other piece of property, but which have no tangible form of their own.It could be a house,\n                        or a painting such as the Mona Lisa, which is one of a kind. You can take a photo of the\n                        painting or buy a print but there will only ever be one original painting.\n\n                        NFTs are \"one-of-a-kind\" assets in the digital world that can be bought and sold like any\n                        other piece of property, but which have no tangible form of their own.</p>\n                    <p>Poised to radically reconfigure the crypto-asset market, non-fungible tokens, or NFTs, are\n                        revolutionizing our conception of money and value, creating not just entirely new markets\n                        but even new economies that are able to scale globally and to discover value in undreamt\n                        places, relegating to oblivion fiat currencies and old ways of doing business..</p>\n                    <p>Because a Terms and Conditions agreement is the agreement where you inform the users of your\n                        website about the rules, terms and guidelines that they need to follow in order to use and\n                        access your website, a Terms and Conditions agreement has become extremely important.Because\n                        a Terms and Conditions agreement is the agreement where you inform the users of your website\n                        about the rules, terms and guidelines that they need to follow in order to use and access\n                        your website, a Terms and Conditions agreement has become extremely important.</p>\n\n                    <h2>Selling Condition Tearms & Condition of Nuron</h2>\n                    <p>Just kidding. The previous paragraph is a parody (if such is possible) of the hype that in\n                        the first half of has come to surround non-fungible tokens. Indeed, the hype has become\n                        so overpowering that it may even defy parody. Non-fungible tokens can have legitimacy, and\n                        I’ll discuss how that can be at the end of this article. But for now the overwhelming\n                        majority of what passes for NFTs is delusion, fueled by the hope of a quick return and the\n                        belief that something can be gotten for nothing (or virtually nothing).</p>\n                    <p>This is where I can explain and emphasize the “non-fungibility” property of NFTs. The main\n                        difference between NFTs and Bitcoins is the fact that Bitcoins are limited, and fungible\n                        (you can trade one Bitcoin with another and both have the same value and price). NFTs are\n                        unique but unlimited, and non-fungible (no two artworks are the same). While NFTs can\n                        appreciate in value (just like real estate), they cannot be interchanged for another NFT.\n                    </p>\n\n                    <h2>NFT Bidding Terms & Condition of Nuron</h2>\n                    <p>Warren Buffett famously remarked in 2018 that Bitcoin (and by implication all\n                        cryptocurrencies) were “probably rat poison squared.” That seems unduly pessimistic given\n                        that cryptocurrencies provide a way of securely moving around things that at least look like\n                        currency and that in some locales are actually being used like currency. In Venezuela, for\n                        instance, Bitcoin provides one way around the country’s corrupt central bank and the\n                        hyperinflation it has created. And in early June of , the El Salvador government even\n                        approved Bitcoin as legal tender.</p>\n                    <p>While not directly related to NFTs, it’s important to mention some properties of money. Among\n                        many properties, money has to be fungible (one unit is viewed as interchangeable as\n                        another), and divisible (can be divided into smaller units of value). NFTs are not fungible\n                        nor (easily) divisible.\n\n                        For example, a single dollar is easily convertible into four quarters or ten dimes, but\n                        currently you cannot divide one NFT (although the blockchain technology behind may allow it\n                        in future). </p>\n                    <p>Because a Terms and Conditions agreement is the agreement where you inform the users of your\n                        website about the rules, terms and guidelines that they need to follow in order to use and\n                        access your website, a Terms and Conditions agreement has become extremely important.Because\n                        a Terms and Conditions agreement is the agreement where you inform the users of your website\n                        about the rules, terms and guidelines that they need to follow in order to use and access\n                        your website, a Terms and Conditions agreement has become extremely important.</p>\n\n                    <h2>Buying NFT\'s Terms & Condition of Nuron</h2>\n                    <p>The importance of NFTs lies in providing the ability to securely value, purchase and exchange\n                        digital art using a digital ledger. NFTs started in online gaming, later with Nike’s\n                        patenting of its authenticity (CryptoKicks) and then by the famous Christie’s auction\n                        embracing NFT valuation of a digital art piece.\n\n                        NFTs are commonly created by uploading files, such as digital artwork, to an auction market.\n                        Just like any other form of art, NFTs are not mutually interchangeable, making them more\n                        like “collectible” items.</p>\n                    <p>Because a Terms and Conditions agreement is the agreement where you inform the users of your\n                        website about the rules, terms and guidelines that they need to follow in order to use and\n                        access your website, a Terms and Conditions agreement has become extremely important.</p>\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `open_hour` time DEFAULT NULL,
  `close_hour` time DEFAULT NULL,
  `open_day` varchar(50) DEFAULT NULL,
  `entry_fee` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `slug`, `description`, `address`, `type_id`, `open_hour`, `close_hour`, `open_day`, `entry_fee`) VALUES
(1, 'Pantai Losari', 'pantai-losari', 'Nama Pantai Losari sendiri tidak hanya dikenal oleh masyarakat Sulawesi saja, banyak orang di pulau lain pun juga telah mengetahui keindahan dari pantai ini. Di area pantai yang ada terdapat tulisan Pantai Losari yang juga dijadikan sebagai spot foto favorit para pengunjung yang datang. Namun pantai ini sendiri cenderung berbeda dengan pantai yang lainnya. Di bagian pinggir pantai tidak terdapat pasir, melainkan terdapat lantai beton yang dibuat khusus.', 'Jl. Penghibur No.289, Losari, Kec. Ujung Pandang, Kota Makassar.', '1', NULL, NULL, NULL, 0),
(3, 'Pulau Samalona', 'pulau-samalona', 'Salah satu destinasi wisata yang tidak boleh dilewatkan begitu saja saat berada di Sulawesi Selatan adalah Pulau Samalona. Di area pulau tersebut, Anda bisa mencoba untuk menyelam dan menikmati keindahan bawah lautnya. Berbagai jenis karang laut dan ikan tropis dapat Anda temui saat melakukan aktivitas ini. Untuk sampai ke pulau ini, para pengunjung dapat menggunakan speed boat terlebih dahulu.\r\n\r\n', 'Lae-Lae, Kec. Ujung Pandang, Kota Makassar.', '1', NULL, NULL, NULL, 0),
(4, 'Pulau Gusung', 'pulau-gusung', 'Selain Pulau Samalona, masih terdapat pulau lain yang masuk di wilayah Sulawesi Selatan. Pulau yang dimaksud disini ialah Pulau Gusung. Selagi berada disana, Anda dapat melakukan Beragam aktivitas dengan sanak saudara yang turut serta. Mulai dari menyelam, snorkeling, dan juga bermain air di pinggir pantai pada pulau tersebut.\r\n\r\nKeindahan laut yang ada berpadu dengan pasir putih di pulau Gusung dapat memanjakan mata saipapun yang memandangnya.', 'Bontolebang, Kec. Bontoharu, Kepulauan Selayar.', '1', NULL, NULL, NULL, 0),
(5, 'Taman Laut Taka Bonerate', 'taman-taut-taka-bonerate', 'Taman Laut Taka Bonerate adalah salah satu destinasi wisata yang terbaik di daerah Sulawesi Selatan. Bagi Anda yang menyukai kegiatan menyelam, maka taman laut ini merupakan sebuah tempat wisata yang tepat untuk dikunjungi. Terdapat banyak jenis ikan, kura-kura, dan juga penyu yang hidup di area ini. Untuk kegiatan menyelam yang akan dilakukan juga telah tersedia peralatan memadai untuk di sewa para pengunjungnya.', 'Jl. S. Parman No.40, Benteng Selatan, Kec. Benteng, Kepulauan Selayar.', '1', NULL, NULL, NULL, 0),
(6, 'Taman Nasional Bantimurung', 'taman-nasional-bantimurung', 'Jika Taman Laut Taka Bonerate terkenal akan kehidupan satwa lautnya, maka Taman Nasional Bantimurung terkenal akan kupu-kupu. Terdapat setidaknya 250 jenis kupu-kupu di tempat tersebut. Luas dari taman ini sendiri bahkan mencapai 43.750 ha.\r\n\r\nDi dalam taman nasional tersebut memiliki air terjun, bukit kapur, dan juga gua yang memiliki keindahan alam yang luar biasa. Anda berminat untuk berkunjung ke destinasi wisata yang satu ini?\r\n\r\n', 'Jl. Poros Maros-Bone Km.12, Kalabbirang, Kec. Bantimurung, Kab. Maros.', '2', NULL, NULL, NULL, 0),
(7, 'Wisata Malino', 'wisata-malino', 'Tidak hanya memiliki alam bawah laut yang indah, daerah Sulawesi Selatan juga memiliki hamparan pegunungan dengan pemandangan yang memukau. Seperti misalnya tempat wisata bernama Malino yang menyajikan keindahan alam yang sejuk dan menyegarkan mata.\r\n\r\nTempat wisata ini telah terkenal sejak zaman Belanda bertahun tahun silam. Anda juga bisa mengunjungi perkebunan teh, air terjun, hutan pinus dan masih banyak lagi di Kawasan wisata ini.', 'Malino, Kec. Tinggimoncong, Kab. Gowa.', '2', NULL, NULL, NULL, 0),
(8, 'Benteng Somba Opu', 'benteng-somba-opu', 'Pada zaman dahulu benteng ini digunakan untuk pusat perdagangan dan juga pelabuhan bagi produk rempah-rempah. Hingga akhirnya di tahun 1990 an, Benteng Somba Opu tersebut mengalami rekonstruksi sehingga memiliki tampilan yang lebih baik.\r\n\r\nBagi Anda yang hendak berwisata sejarah, maka benteng ini merupakan sebuah pilihan yang tepat. Di dalam benteng yang ada, Anda juga dapat menemukan rumah adat khas dari daerah tersebut.', 'Jl. Daeng Tata No.Kelurahan, Benteng Somba Opu, Kec. Barombong, Kab. Gowa.', '1,2', '07:00:00', '21:00:00', 'Senin,Selasa,Rabu', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `destination_log`
--

CREATE TABLE `destination_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `destination_log`
--

INSERT INTO `destination_log` (`id`, `user_id`, `destination_id`, `created_at`) VALUES
(68, 6, 3, '2022-06-04 05:26:28'),
(69, 6, 3, '2022-06-04 05:27:37'),
(70, 6, 3, '2022-06-04 05:27:49'),
(71, 6, 3, '2022-06-04 05:27:57'),
(72, 6, 3, '2022-06-04 05:28:26'),
(73, 6, 3, '2022-06-04 05:28:48'),
(74, 6, 3, '2022-06-04 05:29:02'),
(75, 6, 3, '2022-06-04 05:29:29'),
(76, 6, 3, '2022-06-04 05:29:58'),
(77, 6, 3, '2022-06-04 05:30:58'),
(78, 6, 3, '2022-06-04 05:31:06'),
(79, 6, 3, '2022-06-04 05:31:12'),
(80, 6, 3, '2022-06-04 05:31:21'),
(81, 6, 3, '2022-06-04 05:32:26'),
(82, 6, 3, '2022-06-04 05:35:38'),
(83, 6, 3, '2022-06-04 05:35:56'),
(84, 6, 3, '2022-06-04 05:36:44'),
(85, 6, 3, '2022-06-04 05:37:14'),
(86, 6, 3, '2022-06-04 05:37:56'),
(87, 6, 3, '2022-06-04 05:38:51'),
(88, 6, 3, '2022-06-04 05:39:49'),
(89, 6, 3, '2022-06-04 05:39:59'),
(90, 6, 3, '2022-06-04 05:40:29'),
(91, 6, 3, '2022-06-04 05:40:42'),
(92, 6, 3, '2022-06-04 05:41:00'),
(93, 6, 3, '2022-06-04 05:41:10'),
(94, 6, 3, '2022-06-04 05:41:14'),
(95, 6, 3, '2022-06-04 05:41:26'),
(96, 6, 3, '2022-06-04 05:42:29'),
(97, 6, 3, '2022-06-04 05:43:21'),
(98, 6, 3, '2022-06-04 05:43:59'),
(99, 6, 3, '2022-06-04 05:44:12'),
(100, 6, 3, '2022-06-04 05:44:42'),
(101, 6, 3, '2022-06-04 05:44:52'),
(102, 6, 3, '2022-06-04 05:45:15'),
(103, 6, 3, '2022-06-04 05:46:54'),
(104, 6, 3, '2022-06-04 05:47:02'),
(105, 6, 3, '2022-06-04 05:47:09'),
(106, 6, 3, '2022-06-04 05:47:38'),
(107, 6, 3, '2022-06-04 05:47:49'),
(108, 6, 3, '2022-06-04 05:48:57'),
(109, 6, 4, '2022-06-04 05:52:11'),
(110, 6, 5, '2022-06-04 05:53:34'),
(111, 1, 4, '2022-06-04 06:12:16'),
(112, 1, 1, '2022-06-04 06:15:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `image`, `destination_id`) VALUES
(1, 'Pantai-Losari-Makassar.jpg', 1),
(2, 'Pulau-Samalona-Makassar.jpg', 3),
(3, 'Taman-Laut-Taka-Bonerate-Kep.-Selayar.jpg', 5),
(4, 'Pulau-Gusung-Kep.-Selayar.jpg\r\n', 4),
(5, 'Taman-Nasional-Bantimurung-Maros.jpg', 6),
(6, 'Wisata-Malino-Gowa.jpg', 7),
(7, 'Benteng-Somba-Opu-Gowa.jpg', 8),
(8, '629a9f902cc6c-logo - Copy (1).png', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `pertanyaan`) VALUES
(6, 'Saya berpikir akan menggunakan sistem ini lagi'),
(7, 'Saya merasa sistem ini rumit untuk digunakan'),
(8, '	Saya merasa sistem ini mudah digunakan'),
(9, '	Saya membutuhkan bantuan dari orang lain atau teknisi dalam menggunakan sistem ini'),
(10, '	Saya merasa fitur-fitur sistem ini berjalan dengan semestinya'),
(11, '	Saya merasa ada banyak hal yang tidak konsisten (tidak serasi pada sistem ini)'),
(12, '	Saya merasa orang lain akan memahami cara menggunakan sistem ini dengan cepat'),
(13, 'Saya merasa sistem ini membingungkan'),
(14, '	Saya merasa tidak ada hambatan dalam menggunakan sistem ini'),
(15, '	Saya perlu membiasakan diri terlebih dahulu sebelum menggunakan sistem ini');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recommendations`
--

CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `recommendations`
--

INSERT INTO `recommendations` (`id`, `user_id`, `destination_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `responden`
--

CREATE TABLE `responden` (
  `id` int(11) NOT NULL,
  `Q1` varchar(11) NOT NULL,
  `Q2` varchar(11) NOT NULL,
  `Q3` varchar(11) NOT NULL,
  `Q4` varchar(11) NOT NULL,
  `Q5` varchar(11) NOT NULL,
  `Q6` varchar(11) NOT NULL,
  `Q7` varchar(11) NOT NULL,
  `Q8` varchar(11) NOT NULL,
  `Q9` varchar(11) NOT NULL,
  `Q10` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `responden`
--

INSERT INTO `responden` (`id`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`) VALUES
(1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(2, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(3, '5', '4', '3', '2', '1', '5', '4', '3', '2', '1'),
(4, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2'),
(5, '5', '4', '4', '3', '3', '3', '2', '2', '3', '3'),
(6, '5', '4', '3', '3', '2', '2', '2', '2', '2', '3'),
(7, '5', '4', '4', '3', '2', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'Alam'),
(2, 'Wahana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(6, 'users', '21232f297a57a5a743894a0e4a801fc3', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destionation_id` (`destination_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting` (`setting`);

--
-- Indeks untuk tabel `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `destination_log`
--
ALTER TABLE `destination_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indeks untuk tabel `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `destination_log`
--
ALTER TABLE `destination_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `destination_log`
--
ALTER TABLE `destination_log`
  ADD CONSTRAINT `destination_log_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);

--
-- Ketidakleluasaan untuk tabel `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `recommendations_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
